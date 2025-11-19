unint64_t sub_2140C824C(char a1)
{
  result = 0x4872656B63697473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x426E6F6F6C6C6162;
      break;
    case 5:
      result = 0x6E6F697469736F70;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x4F72656B63697473;
      break;
    case 9:
      result = 0x5372656B63697473;
      break;
    case 10:
      result = 0x5272656B63697473;
      break;
    case 11:
      result = 0x6974636165527369;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2140C8414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435C19C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140C843C(uint64_t a1)
{
  v2 = sub_2142E351C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140C8478(uint64_t a1)
{
  v2 = sub_2142E351C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140C84B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905888, &qword_2146F3E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v198 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E351C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v198);
  }

  v111 = a2;
  v112 = v6;
  LOBYTE(v114) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v110 = v12;
  LOBYTE(v114) = 1;
  v15 = sub_2146DA168();
  v17 = v16;
  v109 = v15;
  LOBYTE(v114) = 2;
  v105 = sub_2146DA168();
  v106 = v18;
  v107 = v14;
  v108 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v113[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v19 = v114;
  v104 = v115;
  LOBYTE(v113[0]) = 4;
  sub_2146DA1C8();
  v102 = v114;
  v103 = v19;
  v21 = v115;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v113[0]) = 5;
  v23 = sub_2142E3570();
  sub_2146DA1C8();
  v100 = v114;
  v101 = v21;
  LODWORD(v21) = v115;
  LOBYTE(v113[0]) = 6;
  sub_2146DA1C8();
  *&v98 = v23;
  v99 = v22;
  v97 = v21;
  v24 = v114;
  v96 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v113[0]) = 7;
  sub_2142E35EC();
  sub_2146DA1C8();
  v94 = v114;
  v95 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A8, &qword_2146F3E50);
  LOBYTE(v113[0]) = 8;
  sub_2142E3668();
  sub_2146DA1C8();
  v91 = v114;
  v92 = v115;
  v93 = v24;
  v25 = v116;
  LOBYTE(v113[0]) = 9;
  v26 = v5;
  sub_2146DA1C8();
  v89 = v114;
  v90 = v115;
  LOBYTE(v113[0]) = 10;
  sub_2146DA1C8();
  v87 = v114;
  v88 = v115;
  LOBYTE(v114) = 11;
  LODWORD(v86) = sub_2146DA178();
  v183 = 12;
  sub_2146DA1C8();
  v61 = v184;
  v85 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v27 = swift_allocObject();
  v98 = xmmword_2146E9BF0;
  *(v27 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2140676DC;
  *(v28 + 24) = 0;
  *(v27 + 32) = v28;
  sub_214042B80(v27, &v114);
  v83 = v114;
  v99 = v115;
  v59 = v116;
  v29 = v117;
  v84 = v118;
  v30 = swift_allocObject();
  *(v30 + 16) = v98;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2140676DC;
  *(v31 + 24) = 0;
  *(v30 + 32) = v31;
  sub_214042B80(v30, v113);
  v79 = v113[0];
  v73 = v113[2];
  v81 = v113[1];
  v82 = v113[3];
  v80 = LOBYTE(v113[4]);
  v32 = swift_allocObject();
  *(v32 + 16) = v98;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2140676DC;
  *(v33 + 24) = 0;
  *(v32 + 32) = v33;
  sub_214042B80(v32, &v171);
  v74 = v171;
  v67 = v173;
  v76 = v172;
  v77 = v174;
  v75 = v175;
  sub_214472B70(v169);
  v68 = v169[0];
  v72 = v169[2];
  v70 = v169[1];
  v71 = v169[3];
  v69 = v170;
  sub_214472BA4(v167);
  v62 = v167[0];
  v64 = v167[2];
  v65 = v167[3];
  v66 = v167[1];
  v63 = v168;
  v182 = v97;
  v181 = v96;
  v180 = v95;
  v179 = v25;
  v178 = v90;
  v177 = v88;
  v60 = v86 & 1;
  v176 = v85;
  v113[0] = v110;
  v113[1] = v107;
  LOBYTE(v171) = v84;
  v114 = 0xD000000000000027;
  v78 = 0x800000021478CA90;
  v115 = 0x800000021478CA90;
  v116 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;
  v117 = 0x800000021478A360;
  *&v98 = v29;

  if (v83(v113, &v171, &v114))
  {
    v34 = v86;

    v113[0] = v109;
    v113[1] = v108;
    LOBYTE(v171) = v80;
    v114 = 0xD00000000000002BLL;
    v115 = 0x800000021478CAC0;
    v116 = 0xD00000000000001CLL;
    v117 = v34;

    if (v79(v113, &v171, &v114))
    {
      v35 = v86;

      v113[0] = v105;
      v113[1] = v106;
      LOBYTE(v171) = v75;
      v114 = 0xD000000000000021;
      v115 = 0x800000021478CAF0;
      v116 = 0xD00000000000001CLL;
      v117 = v35;

      if (v74(v113, &v171, &v114))
      {
        v41 = v86;

        v113[0] = v103;
        v113[1] = v104;
        LOBYTE(v171) = v69;
        v114 = 0xD000000000000028;
        v115 = 0x800000021478CB20;
        v116 = 0xD00000000000001CLL;
        v117 = v41;

        sub_213FDC9D0(v72, v71);
        if (v68(v113, &v171, &v114))
        {
          v45 = v71;
          v44 = v72;
          sub_213FDC6D0(v72, v71);
          v46 = v86;

          sub_213FDC6D0(v44, v45);
          v171 = v102;
          v172 = v101;
          LOBYTE(v113[0]) = v63;
          v114 = 0xD000000000000025;
          v115 = 0x800000021478CB50;
          v116 = 0xD00000000000001CLL;
          v117 = v46;

          sub_213FDC9D0(v64, v65);
          if (v62(&v171, v113, &v114))
          {
            v49 = v64;
            v50 = v65;
            sub_213FDC6D0(v64, v65);

            (*(v112 + 8))(v9, v26);

            sub_213FDC6D0(v49, v50);
            *(&v113[19] + 1) = *v194;
            HIDWORD(v113[24]) = *&v193[3];
            *(&v113[24] + 1) = *v193;
            HIDWORD(v113[26]) = *&v192[3];
            *(&v113[26] + 1) = *v192;
            HIDWORD(v113[28]) = *&v191[3];
            *(&v113[28] + 1) = *v191;
            HIDWORD(v113[30]) = *&v190[3];
            *(&v113[30] + 1) = *v190;
            *(&v113[33] + 1) = *v189;
            *(&v113[35] + 1) = *v188;
            *(&v113[37] + 2) = v186;
            *(&v113[4] + 1) = v197[0];
            HIDWORD(v113[4]) = *(v197 + 3);
            *(&v113[9] + 1) = *v196;
            HIDWORD(v113[9]) = *&v196[3];
            *(&v113[14] + 1) = *v195;
            HIDWORD(v113[14]) = *&v195[3];
            HIDWORD(v113[19]) = *&v194[3];
            HIDWORD(v113[33]) = *&v189[3];
            HIDWORD(v113[35]) = *&v188[3];
            HIWORD(v113[37]) = v187;
            v113[0] = v83;
            v113[1] = v99;
            v51 = v110;
            v52 = v108;
            v113[2] = v110;
            v113[3] = v107;
            LOBYTE(v113[4]) = v84;
            v113[5] = v79;
            v113[6] = v81;
            v113[7] = v109;
            v113[8] = v108;
            LOBYTE(v113[9]) = v80;
            v113[10] = v74;
            v53 = v76;
            v113[11] = v76;
            v113[12] = v105;
            v113[13] = v106;
            LOBYTE(v113[14]) = v75;
            v113[15] = v68;
            v113[16] = v70;
            v54 = v103;
            v113[17] = v103;
            v113[18] = v104;
            LOBYTE(v113[19]) = v69;
            v113[20] = v62;
            v113[21] = v66;
            v113[22] = v102;
            v113[23] = v101;
            LOBYTE(v113[24]) = v63;
            v113[25] = v100;
            LOBYTE(v113[26]) = v97;
            v113[27] = v93;
            v55 = v96;
            LOBYTE(v113[28]) = v96;
            v113[29] = v94;
            LOBYTE(v113[30]) = v95;
            v113[31] = v91;
            v113[32] = v92;
            LOBYTE(v113[33]) = v25;
            v113[34] = v89;
            LOBYTE(v113[35]) = v90;
            v113[36] = v87;
            LOBYTE(v113[37]) = v88;
            BYTE1(v113[37]) = v60;
            v113[38] = v61;
            LOBYTE(v113[39]) = v85;
            memcpy(v111, v113, 0x139uLL);
            sub_2142E371C(v113, &v114);
            __swift_destroy_boxed_opaque_existential_1(v198);
            v114 = v83;
            v115 = v99;
            v116 = v51;
            v117 = v107;
            v118 = v84;
            v120 = v79;
            v121 = v81;
            v122 = v109;
            v123 = v52;
            v124 = v80;
            v126 = v74;
            v127 = v53;
            v128 = v105;
            v129 = v106;
            *v119 = v197[0];
            *&v119[3] = *(v197 + 3);
            *v125 = *v196;
            *&v125[3] = *&v196[3];
            v130 = v75;
            *v131 = *v195;
            *&v131[3] = *&v195[3];
            v132 = v68;
            v133 = v70;
            v134 = v54;
            v135 = v104;
            v136 = v69;
            *v137 = *v194;
            *&v137[3] = *&v194[3];
            v138 = v62;
            v139 = v66;
            v140 = v102;
            v141 = v101;
            v142 = v63;
            *&v143[3] = *&v193[3];
            *v143 = *v193;
            v144 = v100;
            v145 = v97;
            *&v146[3] = *&v192[3];
            *v146 = *v192;
            v147 = v93;
            v148 = v55;
            *&v149[3] = *&v191[3];
            *v149 = *v191;
            v150 = v94;
            v151 = v95;
            *&v152[3] = *&v190[3];
            *v152 = *v190;
            v153 = v91;
            v154 = v92;
            v155 = v25;
            *v156 = *v189;
            *&v156[3] = *&v189[3];
            v157 = v89;
            v158 = v90;
            *v159 = *v188;
            *&v159[3] = *&v188[3];
            v160 = v87;
            v161 = v88;
            v162 = v60;
            goto LABEL_9;
          }

          sub_214031C4C();
          swift_allocError();
          *v56 = 0xD000000000000025;
          v56[1] = 0x800000021478CB50;
          v57 = v86;
          v56[2] = 0xD00000000000001CLL;
          v56[3] = v57;
          swift_willThrow();

          (*(v112 + 8))(v9, v26);

          sub_213FDC6D0(v64, v65);
          *&v98 = v107;
          v82 = v108;
          v67 = v105;
          v77 = v106;
          v72 = v103;
          v73 = v109;
          v71 = v104;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v47 = 0xD000000000000028;
          v47[1] = 0x800000021478CB20;
          v48 = v86;
          v47[2] = 0xD00000000000001CLL;
          v47[3] = v48;
          swift_willThrow();

          (*(v112 + 8))(v9, v26);

          sub_213FDC6D0(v72, v71);
          *&v98 = v107;
          v73 = v109;
          v82 = v108;
          v67 = v105;
          v77 = v106;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v42 = 0xD000000000000021;
        v42[1] = 0x800000021478CAF0;
        v43 = v86;
        v42[2] = 0xD00000000000001CLL;
        v42[3] = v43;
        swift_willThrow();

        (*(v112 + 8))(v9, v26);

        *&v98 = v107;
        v73 = v109;
        v82 = v108;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD00000000000002BLL;
      v39[1] = 0x800000021478CAC0;
      v40 = v86;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v40;
      swift_willThrow();

      (*(v112 + 8))(v9, v26);

      *&v98 = v107;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v36 = v78;
    *v37 = 0xD000000000000027;
    v37[1] = v36;
    v38 = v86;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    (*(v112 + 8))(v9, v26);

    v110 = v59;
  }

  __swift_destroy_boxed_opaque_existential_1(v198);
  v114 = v83;
  v115 = v99;
  v116 = v110;
  v117 = v98;
  v118 = v84;
  v120 = v79;
  v121 = v81;
  v122 = v73;
  v123 = v82;
  v124 = v80;
  v126 = v74;
  v127 = v76;
  *v119 = v197[0];
  *&v119[3] = *(v197 + 3);
  *v125 = *v196;
  *&v125[3] = *&v196[3];
  v128 = v67;
  v129 = v77;
  v130 = v75;
  *&v131[3] = *&v195[3];
  *v131 = *v195;
  v132 = v68;
  v133 = v70;
  v134 = v72;
  v135 = v71;
  v136 = v69;
  *&v137[3] = *&v194[3];
  *v137 = *v194;
  v138 = v62;
  v139 = v66;
  v140 = v64;
  v141 = v65;
  v142 = v63;
  *&v143[3] = *&v193[3];
  *v143 = *v193;
  v144 = v100;
  v145 = v97;
  *&v146[3] = *&v192[3];
  *v146 = *v192;
  v147 = v93;
  v148 = v96;
  *&v149[3] = *&v191[3];
  *v149 = *v191;
  v150 = v94;
  v151 = v95;
  *&v152[3] = *&v190[3];
  *v152 = *v190;
  v153 = v91;
  v154 = v92;
  v155 = v25;
  *v156 = *v189;
  *&v156[3] = *&v189[3];
  v157 = v89;
  v158 = v90;
  *v159 = *v188;
  *&v159[3] = *&v188[3];
  v160 = v87;
  v161 = v88;
  v162 = v60;
LABEL_9:
  v163 = v186;
  v164 = v187;
  v165 = v61;
  v166 = v85;
  return sub_2142E34C8(&v114);
}

uint64_t sub_2140C9A08(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058C0, &qword_2146F3E58);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 96);
  v41 = *(v1 + 104);
  v42 = v8;
  v11 = *(v1 + 144);
  v39 = *(v1 + 136);
  v40 = v10;
  v38 = v11;
  v12 = *(v1 + 176);
  v36 = *(v1 + 184);
  v37 = v12;
  v13 = *(v1 + 200);
  v47 = *(v1 + 208);
  v34 = *(v1 + 216);
  v35 = v13;
  v33 = *(v1 + 224);
  v32 = *(v1 + 232);
  v31 = *(v1 + 240);
  v14 = *(v1 + 248);
  v29 = *(v1 + 256);
  v30 = v14;
  v28 = *(v1 + 264);
  v27 = *(v1 + 272);
  v26 = *(v1 + 280);
  v25 = *(v1 + 288);
  v24 = *(v1 + 296);
  v23 = *(v1 + 297);
  v22 = *(v1 + 304);
  HIDWORD(v21) = *(v1 + 312);
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = &v21 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_2142E351C();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_10;
  }

  LOBYTE(v44) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v43 + 8))(v19, v4);
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  LOBYTE(v44) = 1;

  sub_2146DA328();

  if (!v41)
  {
    goto LABEL_10;
  }

  LOBYTE(v44) = 2;

  sub_2146DA328();

  if (v38 == 1)
  {
    goto LABEL_10;
  }

  v44 = v39;
  v45 = v38;
  v48 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v36 != 1)
  {
    v44 = v37;
    v45 = v36;
    v48 = 4;
    sub_2146DA388();
    v44 = v35;
    LOBYTE(v45) = v47;
    v48 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
    sub_2142E3778();
    sub_2146DA388();
    v44 = v34;
    LOBYTE(v45) = v33;
    v48 = 6;
    sub_2146DA388();
    v44 = v32;
    LOBYTE(v45) = v31;
    v48 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v44 = v30;
    v45 = v29;
    v46 = v28;
    v48 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A8, &qword_2146F3E50);
    sub_2142E3870();
    sub_2146DA388();
    v44 = v27;
    LOBYTE(v45) = v26;
    v48 = 9;
    sub_2146DA388();
    v44 = v25;
    LOBYTE(v45) = v24;
    v48 = 10;
    sub_2146DA388();
    LOBYTE(v44) = 11;
    sub_2146DA338();
    v44 = v22;
    LOBYTE(v45) = BYTE4(v21);
    v48 = 12;
    sub_2146DA388();
    return (*(v43 + 8))(v19, v4);
  }

  else
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140CA080@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2140CA08C()
{
  if (*v0)
  {
    result = 0x676E69727473;
  }

  else
  {
    result = 0x7475626972747461;
  }

  *v0;
  return result;
}

uint64_t sub_2140CA0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140CA1A8(uint64_t a1)
{
  v2 = sub_2142E3924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140CA1E4(uint64_t a1)
{
  v2 = sub_2142E3924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140CA220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058D8, &qword_2146F3E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v135 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E3924();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v143[0]) = 0;
    sub_2146DA0A8();
    v136 = a2;
    __swift_project_boxed_opaque_existential_1(v146, v147);
    v11 = sub_2146DA488();
    v12 = MEMORY[0x277D84F90];
    if ((v11 & 1) == 0)
    {
      v137 = v6;
      v138 = v5;
      v149 = v9;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
        sub_2142E39C8();
        sub_2146DA478();
        switch(LOBYTE(v143[0]))
        {
          case 1:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for MessagePartAttribute;
            *&v135 = sub_2142E4328();
            v145 = v135;
            sub_2142E437C();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v23 = v12[2];
            v91 = v12[3];
            v24 = v23 + 1;
            if (v23 >= v91 >> 1)
            {
              v12 = sub_21409562C((v91 > 1), v23 + 1, 1, v12);
            }

            v92 = v144;
            v93 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v94 = *(v92[-1].Description + 8);
            MEMORY[0x28223BE20](v93);
            v96 = &v135 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v97 + 16))(v96);
            v74 = *(v96 + 2);
            v142 = v135;
            v139 = *v96;
            v75 = &type metadata for MessagePartAttribute;
            goto LABEL_55;
          case 2:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for BreadcrumbTextOptionFlagsAttribute;
            *&v135 = sub_2142E4280();
            v145 = v135;
            sub_2142E42D4();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v23 = v12[2];
            v67 = v12[3];
            v24 = v23 + 1;
            if (v23 >= v67 >> 1)
            {
              v12 = sub_21409562C((v67 > 1), v23 + 1, 1, v12);
            }

            v68 = v144;
            v69 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v70 = *(v68[-1].Description + 8);
            MEMORY[0x28223BE20](v69);
            v72 = &v135 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v73 + 16))(v72);
            v74 = *(v72 + 2);
            v142 = v135;
            v139 = *v72;
            v75 = &type metadata for BreadcrumbTextOptionFlagsAttribute;
LABEL_55:
            v140 = v74;
            v141 = v75;
            goto LABEL_56;
          case 3:
            *&v135 = v148;
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for BreadcrumbTextMarkerAttribute;
            v76 = sub_2142E41D8();
            v145 = v76;
            v143[0] = swift_allocObject();
            sub_2142E422C();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v38 = v12[2];
            v77 = v12[3];
            v39 = v38 + 1;
            if (v38 >= v77 >> 1)
            {
              v12 = sub_21409562C((v77 > 1), v38 + 1, 1, v12);
            }

            v78 = v144;
            v79 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v80 = *(v78[-1].Description + 8);
            MEMORY[0x28223BE20](v79);
            v82 = &v135 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v83 + 16))(v82);
            v135 = *v82;
            v46 = *(v82 + 2);
            v47 = *(v82 + 3);
            v141 = &type metadata for BreadcrumbTextMarkerAttribute;
            v142 = v76;
            goto LABEL_44;
          case 4:
            *&v135 = v148;
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for MentionAttribute;
            v36 = sub_2142E4130();
            v145 = v36;
            v143[0] = swift_allocObject();
            sub_2142E4184();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v38 = v12[2];
            v37 = v12[3];
            v39 = v38 + 1;
            if (v38 >= v37 >> 1)
            {
              v12 = sub_21409562C((v37 > 1), v38 + 1, 1, v12);
            }

            v40 = v144;
            v41 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v42 = *(v40[-1].Description + 8);
            MEMORY[0x28223BE20](v41);
            v44 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v45 + 16))(v44);
            v135 = *v44;
            v46 = *(v44 + 2);
            v47 = *(v44 + 3);
            v141 = &type metadata for MentionAttribute;
            v142 = v36;
LABEL_44:
            v84 = swift_allocObject();
            *&v139 = v84;
            *(v84 + 16) = v135;
            *(v84 + 32) = v46;
            *(v84 + 40) = v47;
            v20 = &v12[5 * v38];
            v12[2] = v39;
            goto LABEL_7;
          case 5:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for TextEffectAttribute;
            v98 = sub_2142E4088();
            v145 = v98;
            sub_2142E40DC();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v58 = v12[2];
            v99 = v12[3];
            v59 = v58 + 1;
            if (v58 >= v99 >> 1)
            {
              v12 = sub_21409562C((v99 > 1), v58 + 1, 1, v12);
            }

            v100 = v144;
            v101 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v102 = *(v100[-1].Description + 8);
            MEMORY[0x28223BE20](v101);
            v104 = &v135 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v105 + 16))(v104);
            v106 = v104[16];
            v141 = &type metadata for TextEffectAttribute;
            v142 = v98;
            v139 = *v104;
            LOBYTE(v140) = v106;
            goto LABEL_78;
          case 6:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for TextBoldAttribute;
            v56 = sub_2142E3FE0();
            v145 = v56;
            sub_2142E4034();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v58 = v12[2];
            v107 = v12[3];
            v59 = v58 + 1;
            if (v58 >= v107 >> 1)
            {
              v12 = sub_21409562C((v107 > 1), v58 + 1, 1, v12);
            }

            v108 = v144;
            v109 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v110 = *(v108[-1].Description + 8);
            MEMORY[0x28223BE20](v109);
            v64 = (&v135 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v112 + 16))(v64);
            v66 = &type metadata for TextBoldAttribute;
            goto LABEL_77;
          case 7:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for TextItalicAttribute;
            v56 = sub_2142E3F38();
            v145 = v56;
            sub_2142E3F8C();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v58 = v12[2];
            v85 = v12[3];
            v59 = v58 + 1;
            if (v58 >= v85 >> 1)
            {
              v12 = sub_21409562C((v85 > 1), v58 + 1, 1, v12);
            }

            v86 = v144;
            v87 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v88 = *(v86[-1].Description + 8);
            MEMORY[0x28223BE20](v87);
            v64 = (&v135 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v90 + 16))(v64);
            v66 = &type metadata for TextItalicAttribute;
            goto LABEL_77;
          case 8:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for TextUnderlineAttribute;
            v56 = sub_2142E3E90();
            v145 = v56;
            sub_2142E3EE4();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v58 = v12[2];
            v124 = v12[3];
            v59 = v58 + 1;
            if (v58 >= v124 >> 1)
            {
              v12 = sub_21409562C((v124 > 1), v58 + 1, 1, v12);
            }

            v125 = v144;
            v126 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v127 = *(v125[-1].Description + 8);
            MEMORY[0x28223BE20](v126);
            v64 = (&v135 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v129 + 16))(v64);
            v66 = &type metadata for TextUnderlineAttribute;
            goto LABEL_77;
          case 9:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for TextStrikethroughAttribute;
            v56 = sub_2142E3DE8();
            v145 = v56;
            sub_2142E3E3C();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v58 = v12[2];
            v57 = v12[3];
            v59 = v58 + 1;
            if (v58 >= v57 >> 1)
            {
              v12 = sub_21409562C((v57 > 1), v58 + 1, 1, v12);
            }

            v60 = v144;
            v61 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v62 = *(v60[-1].Description + 8);
            MEMORY[0x28223BE20](v61);
            v64 = (&v135 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v65 + 16))(v64);
            v66 = &type metadata for TextStrikethroughAttribute;
LABEL_77:
            v141 = v66;
            v142 = v56;
            v139 = *v64;
LABEL_78:
            v12[2] = v59;
            v20 = &v12[5 * v58];
            goto LABEL_7;
          case 0xA:
            v113 = type metadata accessor for LinkAttribute(0);
            *&v135 = v148;
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = v113;
            v114 = sub_214328930(&qword_280B309B0, type metadata accessor for LinkAttribute);
            v145 = v114;
            __swift_allocate_boxed_opaque_existential_0(v143);
            sub_214328930(&qword_280B309B8, type metadata accessor for LinkAttribute);
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v116 = v12[2];
            v115 = v12[3];
            *&v135 = v116 + 1;
            if (v116 >= v115 >> 1)
            {
              v12 = sub_21409562C((v115 > 1), v116 + 1, 1, v12);
            }

            v117 = v144;
            v118 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v119 = *(v117[-1].Description + 8);
            MEMORY[0x28223BE20](v118);
            v121 = &v135 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v122 + 16))(v121);
            v141 = v113;
            v142 = v114;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v139);
            sub_214328704(v121, boxed_opaque_existential_0, type metadata accessor for LinkAttribute);
            v12[2] = v135;
            sub_213FB77C8(&v139, &v12[5 * v116 + 4]);
            __swift_destroy_boxed_opaque_existential_1(v143);
            break;
          case 0xB:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for LinkIsRichLinkAttribute;
            v32 = sub_2142E3D40();
            v145 = v32;
            sub_2142E3D94();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v34 = v12[2];
            v33 = v12[3];
            v35 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              v12 = sub_21409562C((v33 > 1), v34 + 1, 1, v12);
            }

            v13 = v144;
            v14 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v15 = *(v13[-1].Description + 8);
            MEMORY[0x28223BE20](v14);
            v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v18 + 16))(v17);
            v19 = v17[16];
            v141 = &type metadata for LinkIsRichLinkAttribute;
            v142 = v32;
            v139 = *v17;
            LOBYTE(v140) = v19;
            goto LABEL_6;
          case 0xC:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for FileTransferAttribute;
            v48 = sub_2142E3A1C();
            v145 = v48;
            v143[0] = swift_allocObject();
            sub_2142E3C9C();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v34 = v12[2];
            v49 = v12[3];
            v35 = v34 + 1;
            if (v34 >= v49 >> 1)
            {
              v12 = sub_21409562C((v49 > 1), v34 + 1, 1, v12);
            }

            v50 = v144;
            v51 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v52 = *(v50[-1].Description + 8);
            MEMORY[0x28223BE20](v51);
            v54 = &v135 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v55 + 16))(v54);
            v141 = &type metadata for FileTransferAttribute;
            v142 = v48;
            *&v139 = swift_allocObject();
            memcpy((v139 + 16), v54, 0x1E1uLL);
LABEL_6:
            v12[2] = v35;
            v20 = &v12[5 * v34];
LABEL_7:
            sub_213FB77C8(&v139, (v20 + 4));
            __swift_destroy_boxed_opaque_existential_1(v143);
            break;
          default:
            __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
            v144 = &type metadata for BaseWritingDirectionAttribute;
            *&v135 = sub_2142E43D0();
            v145 = v135;
            sub_2142E4424();
            sub_2146DA478();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_21409562C(0, v12[2] + 1, 1, v12);
            }

            v23 = v12[2];
            v22 = v12[3];
            v24 = v23 + 1;
            if (v23 >= v22 >> 1)
            {
              v12 = sub_21409562C((v22 > 1), v23 + 1, 1, v12);
            }

            v25 = v144;
            v26 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
            v27 = *(v25[-1].Description + 8);
            MEMORY[0x28223BE20](v26);
            v29 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v30 + 16))(v29);
            v31 = v29[16];
            v141 = &type metadata for BaseWritingDirectionAttribute;
            v142 = v135;
            v139 = *v29;
            LOBYTE(v140) = v31;
LABEL_56:
            v12[2] = v24;
            sub_213FB77C8(&v139, &v12[5 * v23 + 4]);
            __swift_destroy_boxed_opaque_existential_1(v143);
            break;
        }

        __swift_project_boxed_opaque_existential_1(v146, v147);
        v21 = sub_2146DA488();
        v6 = v137;
        v5 = v138;
        v9 = v149;
      }

      while ((v21 & 1) == 0);
    }

    LOBYTE(v143[0]) = 1;
    v130 = sub_2146DA168();
    v132 = v131;
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v146);
    v133 = v136;
    *v136 = v12;
    v133[1] = v130;
    v133[2] = v132;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140CB9B8(void *a1)
{
  v69 = type metadata accessor for LinkAttribute(0);
  v3 = *(*(v69 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v69);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058E0, &unk_2146F3E68);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - v10;
  v13 = *v1;
  v12 = v1[1];
  v70 = v1[2];
  v71 = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E3924();
  v15 = v13;
  sub_2146DAA28();
  LOBYTE(v81[0]) = 0;
  v72 = v11;
  v73 = v8;
  sub_2146DA278();
  v77 = *(v13 + 16);
  if (v77)
  {
    v16 = 0;
    v17 = v13 + 32;
    v75 = v15;
    v76 = v6;
    v18 = v78;
    v19 = v6;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
LABEL_57:
        sub_21432887C(v19, type metadata accessor for LinkAttribute);
LABEL_51:
        (*(v74 + 8))(v72, v73);
LABEL_52:
        __swift_destroy_boxed_opaque_existential_1(v82);
        return __swift_destroy_boxed_opaque_existential_1(v83);
      }

      sub_214053840(v17, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905210, &qword_2146F1900);
      if (swift_dynamicCast())
      {
        break;
      }

      if (swift_dynamicCast())
      {
        v20 = v17;
        v25 = v81[0];
        v26 = v81[1];
        v27 = v81[2];
        LOBYTE(v80[0]) = 1;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v28 = v86;
        sub_2146DA538();
        if (v28)
        {
          goto LABEL_51;
        }

        v80[0] = v25;
        v80[1] = v26;
        v80[2] = v27;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4868();
        goto LABEL_13;
      }

      if (swift_dynamicCast())
      {
        v20 = v17;
        v29 = v81[0];
        v30 = v81[1];
        v31 = v81[2];
        LOBYTE(v80[0]) = 2;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v32 = v86;
        sub_2146DA538();
        if (v32)
        {
          goto LABEL_51;
        }

        v80[0] = v29;
        v80[1] = v30;
        v80[2] = v31;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4814();
        goto LABEL_13;
      }

      if (swift_dynamicCast())
      {
        v33 = v81[0];
        v34 = v81[1];
        v35 = v81[2];
        v36 = v81[3];
        LOBYTE(v80[0]) = 3;
        v68 = v85;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v37 = v86;
        sub_2146DA538();
        if (v37)
        {
          goto LABEL_54;
        }

        v80[0] = v33;
        v80[1] = v34;
        v80[2] = v35;
        v80[3] = v36;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E47C0();
LABEL_22:
        sub_2146DA538();
        v86 = 0;

        goto LABEL_23;
      }

      if (swift_dynamicCast())
      {
        v38 = v81[0];
        v39 = v81[1];
        v40 = v81[2];
        v68 = v81[3];
        LOBYTE(v80[0]) = 4;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v41 = v86;
        sub_2146DA538();
        if (v41)
        {
LABEL_54:
          (*(v74 + 8))(v72, v73);

          goto LABEL_52;
        }

        v80[0] = v38;
        v80[1] = v39;
        v80[2] = v40;
        v80[3] = v68;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E476C();
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        v68 = v17;
        v42 = v81[0];
        v43 = v81[1];
        v44 = v81[2];
        LOBYTE(v80[0]) = 5;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v45 = v86;
        sub_2146DA538();
        if (v45)
        {
          goto LABEL_51;
        }

        v80[0] = v42;
        v80[1] = v43;
        LOBYTE(v80[2]) = v44;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4718();
        sub_2146DA538();
        v86 = 0;
LABEL_27:
        v15 = v75;
        v19 = v76;
        v18 = v78;
        v17 = v68;
        goto LABEL_14;
      }

      if (swift_dynamicCast())
      {
        v46 = v81[0];
        v47 = v81[1];
        LOBYTE(v80[0]) = 6;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v48 = v86;
        sub_2146DA538();
        if (v48)
        {
          goto LABEL_51;
        }

        v80[0] = v46;
        v80[1] = v47;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E46C4();
        goto LABEL_40;
      }

      if (swift_dynamicCast())
      {
        v49 = v81[0];
        v50 = v81[1];
        LOBYTE(v80[0]) = 7;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v51 = v86;
        sub_2146DA538();
        if (v51)
        {
          goto LABEL_51;
        }

        v80[0] = v49;
        v80[1] = v50;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4670();
        goto LABEL_40;
      }

      if (swift_dynamicCast())
      {
        v52 = v81[0];
        v53 = v81[1];
        LOBYTE(v80[0]) = 8;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v54 = v86;
        sub_2146DA538();
        if (v54)
        {
          goto LABEL_51;
        }

        v80[0] = v52;
        v80[1] = v53;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E461C();
        goto LABEL_40;
      }

      if (swift_dynamicCast())
      {
        v55 = v81[0];
        v56 = v81[1];
        LOBYTE(v80[0]) = 9;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v57 = v86;
        sub_2146DA538();
        if (v57)
        {
          goto LABEL_51;
        }

        v80[0] = v55;
        v80[1] = v56;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E45C8();
LABEL_40:
        sub_2146DA538();
        v86 = 0;
LABEL_23:
        v18 = v78;
        v15 = v75;
        v19 = v76;
        goto LABEL_14;
      }

      if (swift_dynamicCast())
      {
        sub_214328704(v18, v19, type metadata accessor for LinkAttribute);
        LOBYTE(v81[0]) = 10;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v58 = v86;
        sub_2146DA538();
        if (v58)
        {
          goto LABEL_57;
        }

        v86 = v85;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_214328930(&qword_280B309C0, type metadata accessor for LinkAttribute);
        sub_2146DA538();
        v86 = 0;
        sub_21432887C(v19, type metadata accessor for LinkAttribute);
      }

      else
      {
        if (swift_dynamicCast())
        {
          v68 = v17;
          v59 = v81[0];
          v60 = v81[1];
          v61 = v81[2];
          LOBYTE(v80[0]) = 11;
          __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
          sub_2142E4478();
          v62 = v86;
          sub_2146DA538();
          if (v62)
          {
            goto LABEL_51;
          }

          v80[0] = v59;
          v80[1] = v60;
          LOBYTE(v80[2]) = v61;
          __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
          sub_2142E4574();
          sub_2146DA538();
          v86 = 0;
          goto LABEL_27;
        }

        if (!swift_dynamicCast())
        {
          result = sub_2146DA018();
          __break(1u);
          return result;
        }

        memcpy(v80, v81, 0x1E1uLL);
        v79[0] = 12;
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4478();
        v63 = v86;
        sub_2146DA538();
        if (v63)
        {
          (*(v74 + 8))(v72, v73);
          sub_2142E44CC(v80);
          goto LABEL_52;
        }

        memcpy(v79, v80, sizeof(v79));
        __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
        sub_2142E4520();
        sub_2146DA538();
        v86 = 0;
        sub_2142E44CC(v80);
        v19 = v76;
      }

LABEL_14:
      ++v16;
      __swift_destroy_boxed_opaque_existential_1(v82);
      v17 += 40;
      if (v77 == v16)
      {
        goto LABEL_50;
      }
    }

    v20 = v17;
    v21 = v81[0];
    v22 = v81[1];
    v23 = v81[2];
    LOBYTE(v80[0]) = 0;
    __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    sub_2142E4478();
    v24 = v86;
    sub_2146DA538();
    if (v24)
    {
      goto LABEL_51;
    }

    v80[0] = v21;
    v80[1] = v22;
    LOBYTE(v80[2]) = v23;
    __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    sub_2142E48BC();
LABEL_13:
    sub_2146DA538();
    v86 = 0;
    v15 = v75;
    v19 = v76;
    v18 = v78;
    v17 = v20;
    goto LABEL_14;
  }

LABEL_50:
  LOBYTE(v81[0]) = 1;
  v64 = v72;
  v65 = v73;
  sub_2146DA328();
  (*(v74 + 8))(v64, v65);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_2140CC804@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, _OWORD *a14)
{
  v63 = a6;
  sub_2143C9460(&v36);
  v17 = a14[1];
  *&v59[7] = *a14;
  v19 = v36;
  v18 = v37;
  v21 = v38;
  v20 = v39;
  LOBYTE(v58[0]) = a11 & 1;
  v60[0] = a13 & 1;
  *&v59[23] = v17;
  *&v59[39] = a14[2];
  *&v59[49] = *(a14 + 42);
  v58[0] = a5;
  v58[1] = v63;
  v30 = v40;
  v60[0] = v40;
  v36 = 0xD000000000000018;
  v37 = 0x800000021478CBF0;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  sub_213FDC9D0(v21, v20);
  v22 = v19(v58, v60, &v36);
  if (v29)
  {
  }

  else
  {
    if (v22)
    {
      sub_213FDC6D0(v21, v20);

      result = sub_213FDC6D0(v21, v20);
      *a9 = a1;
      *(a9 + 8) = a2 & 1;
      *(a9 + 16) = a3;
      *(a9 + 24) = a4;
      *(a9 + 32) = v19;
      *(a9 + 40) = v18;
      v24 = v63;
      *(a9 + 48) = a5;
      *(a9 + 56) = v24;
      *(a9 + 64) = v30;
      *(a9 + 72) = a7;
      *(a9 + 80) = a8;
      *(a9 + 88) = a10;
      *(a9 + 96) = a11 & 1;
      *(a9 + 104) = a12;
      *(a9 + 112) = a13 & 1;
      *(a9 + 113) = *v59;
      v25 = *&v59[16];
      v26 = *&v59[32];
      v27 = *&v59[48];
      *(a9 + 177) = v59[64];
      *(a9 + 161) = v27;
      *(a9 + 145) = v26;
      *(a9 + 129) = v25;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000018;
    v28[1] = 0x800000021478CBF0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v21, v20);
  v36 = a1;
  LOBYTE(v37) = a2 & 1;
  v38 = a3;
  v39 = a4;
  v40 = v19;
  v41 = v18;
  v42 = v21;
  v43 = v20;
  v44 = v30;
  *v45 = v62[0];
  *&v45[3] = *(v62 + 3);
  v46 = a7;
  v47 = a8;
  v48 = a10;
  v49 = a11 & 1;
  *&v50[3] = *(v61 + 3);
  *v50 = v61[0];
  v51 = a12;
  v52 = a13 & 1;
  v53 = *v59;
  v57 = v59[64];
  v56 = *&v59[48];
  v55 = *&v59[32];
  v54 = *&v59[16];
  return sub_2142E4910(&v36);
}

uint64_t sub_2140CCB4C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000018;
    if (v1 != 1)
    {
      v5 = 0x4449656C646E7562;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x44496D616461;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD00000000000001BLL;
    if (v1 == 3)
    {
      v3 = 0x656D614E6B636170;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2140CCC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435C630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140CCC58(uint64_t a1)
{
  v2 = sub_2142E4964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140CCC94(uint64_t a1)
{
  v2 = sub_2142E4964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140CCCD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058E8, &qword_2146F3E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E4964();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v54 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v55) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v12 = v63;
  v53 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v55) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v51 = v12;
  v52 = v63;
  v14 = v64;
  LOBYTE(v55) = 2;
  sub_2146DA1C8();
  v49 = v14;
  v15 = v63;
  v50 = v64;
  LOBYTE(v55) = 3;
  sub_2146DA1C8();
  v47 = v63;
  v48 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v55) = 4;
  sub_2142E35EC();
  sub_2146DA1C8();
  v45 = v15;
  v46 = v63;
  LODWORD(v15) = v64;
  LOBYTE(v55) = 5;
  sub_2146DA1C8();
  v44 = v15;
  v16 = v63;
  v43 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058F0, &qword_2146F3E80);
  v90 = 6;
  sub_2142E49B8();
  sub_2146DA1C8();
  v41 = v16;
  v87 = v91;
  v88 = v92;
  *v89 = *v93;
  *&v89[10] = *&v93[10];
  sub_2143C9460(&v63);
  *(v86 + 7) = v87;
  v17 = v64;
  v42 = v63;
  v18 = v65;
  *(&v86[1] + 7) = v88;
  *(&v86[2] + 7) = *v89;
  *(&v86[3] + 1) = *&v89[10];
  v19 = v66;
  v85[0] = v45;
  v85[1] = v50;
  v40 = v67;
  LOBYTE(v55) = v67;
  v63 = 0xD000000000000018;
  v64 = 0x800000021478CBF0;
  v65 = 0xD00000000000001CLL;
  v66 = 0x800000021478A360;

  v37 = v18;
  v38 = v19;
  sub_213FDC9D0(v18, v19);
  v39 = v17;
  if (v42(v85, &v55, &v63))
  {
    v21 = v37;
    v20 = v38;
    sub_213FDC6D0(v37, v38);

    (*(v54 + 8))(v9, v5);
    v22 = v39;

    sub_213FDC6D0(v21, v20);
    v23 = v51;
    *&v55 = v51;
    v24 = v53;
    BYTE8(v55) = v53;
    *&v56 = v52;
    *(&v56 + 1) = v49;
    *&v57 = v42;
    *(&v57 + 1) = v22;
    v25 = v45;
    *&v58 = v45;
    *(&v58 + 1) = v50;
    LOBYTE(v59) = v40;
    *(&v59 + 1) = v47;
    *&v60 = v48;
    *(&v60 + 1) = v46;
    LOBYTE(v21) = v43;
    LOBYTE(v61) = v44;
    *(&v61 + 1) = *v94;
    DWORD1(v61) = *&v94[3];
    *(&v61 + 1) = v41;
    v62[0] = v43;
    *&v62[1] = v86[0];
    *&v62[17] = v86[1];
    *&v62[33] = v86[2];
    *&v62[49] = v86[3];
    v62[65] = v86[4];
    v26 = v56;
    *a2 = v55;
    *(a2 + 16) = v26;
    v27 = v58;
    *(a2 + 32) = v57;
    *(a2 + 48) = v27;
    v28 = *&v62[32];
    *(a2 + 128) = *&v62[16];
    *(a2 + 144) = v28;
    *(a2 + 160) = *&v62[48];
    *(a2 + 176) = *&v62[64];
    v29 = v59;
    v30 = v60;
    v31 = *v62;
    *(a2 + 96) = v61;
    *(a2 + 112) = v31;
    *(a2 + 64) = v29;
    *(a2 + 80) = v30;
    sub_2142E4A90(&v55, &v63);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v81 = v86[1];
    v82 = v86[2];
    v83 = v86[3];
    v63 = v23;
    LOBYTE(v64) = v24;
    *(&v64 + 1) = v96[0];
    HIDWORD(v64) = *(v96 + 3);
    v65 = v52;
    v66 = v49;
    v67 = v42;
    v68 = v22;
    v69 = v25;
    v70 = v50;
    v71 = v40;
    *v72 = *v95;
    *&v72[3] = *&v95[3];
    v73 = v47;
    v74 = v48;
    v75 = v46;
    v76 = v44;
    *v77 = *v94;
    *&v77[3] = *&v94[3];
    v78 = v41;
    v79 = v21;
    v84 = v86[4];
    v80 = v86[0];
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000018;
    v32[1] = 0x800000021478CBF0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v54 + 8))(v9, v5);
    v33 = v39;

    v34 = v37;
    v35 = v38;
    sub_213FDC6D0(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v80 = v86[0];
    v83 = v86[3];
    v82 = v86[2];
    v63 = v51;
    LOBYTE(v64) = v53;
    *(&v64 + 1) = v96[0];
    HIDWORD(v64) = *(v96 + 3);
    v65 = v52;
    v66 = v49;
    v67 = v42;
    v68 = v33;
    v69 = v34;
    v70 = v35;
    v71 = v40;
    *v72 = *v95;
    *&v72[3] = *&v95[3];
    v73 = v47;
    v74 = v48;
    v75 = v46;
    v76 = v44;
    *&v77[3] = *&v94[3];
    *v77 = *v94;
    v78 = v41;
    v79 = v43;
    v84 = v86[4];
    v81 = v86[1];
  }

  return sub_2142E4910(&v63);
}

uint64_t sub_2140CD538(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058F8, &qword_2146F3E88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = v2[2];
  v28 = v2[3];
  v29 = v11;
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[10];
  v24 = v2[9];
  v25 = v12;
  v23 = v14;
  v22 = v2[11];
  v34 = *(v2 + 96);
  v26 = v2[13];
  v27 = v13;
  HIDWORD(v21) = *(v2 + 112);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E4964();
  sub_2146DAA28();
  *&v31 = v9;
  BYTE8(v31) = v10;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v16 = v30;
  sub_2146DA388();
  if (v16)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = v27;
  *&v31 = v29;
  *(&v31 + 1) = v28;
  v35 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v17 != 1)
  {
    *&v31 = v25;
    *(&v31 + 1) = v17;
    v35 = 2;
    sub_2146DA388();
    v18 = v26;
    *&v31 = v24;
    *(&v31 + 1) = v23;
    v35 = 3;
    sub_2146DA388();
    *&v31 = v22;
    BYTE8(v31) = v34;
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    *&v31 = v18;
    BYTE8(v31) = BYTE4(v21);
    v35 = 5;
    sub_2146DA388();
    v19 = *(v2 + 17);
    v31 = *(v2 + 15);
    v32 = v19;
    v33[0] = *(v2 + 19);
    *(v33 + 10) = *(v2 + 162);
    v35 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058F0, &qword_2146F3E80);
    sub_2142E4AEC();
    sub_2146DA388();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140CD938@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  LOWORD(v49[0]) = 0;
  sub_2140615D0(v49);
  v11 = v49[8];
  v12 = v49[10];
  v13 = v49[11];
  *(a5 + 392) = v49[9];
  *(a5 + 408) = v12;
  *(a5 + 424) = v13;
  v14 = v49[4];
  v15 = v49[6];
  v16 = v49[7];
  *(a5 + 328) = v49[5];
  *(a5 + 344) = v15;
  *(a5 + 360) = v16;
  *(a5 + 376) = v11;
  v17 = v49[1];
  *(a5 + 248) = v49[0];
  v18 = v49[2];
  v19 = v49[3];
  *(a5 + 264) = v17;
  *(a5 + 280) = v18;
  *(a5 + 296) = v19;
  *(a5 + 312) = v14;
  *(a5 + 240) = 0;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146F21C0;
  *(v21 + 16) = sub_2142E4D84;
  *(v21 + 24) = v22;
  *(inited + 32) = v21;
  sub_2140442CC(inited, &v42);
  v24 = v42;
  v23 = v43;
  v25 = v44;
  v26 = v45;
  v27 = BYTE1(v45);
  *(a5 + 440) = v42;
  *(a5 + 448) = v23;
  *(a5 + 456) = v25;
  *(a5 + 464) = v26;
  *(a5 + 465) = v27;
  *(a5 + 466) = a2;
  *(a5 + 472) = a3;
  *(a5 + 480) = a4;
  v48 = v26;
  v47 = a6;
  v46 = v27;
  v42 = 0xD000000000000019;
  v43 = 0x800000021478CC10;
  v44 = 0xD00000000000001CLL;
  v45 = 0x800000021478A360;

  v28 = v24(&v47, &v46, &v42);
  if (v40)
  {
    sub_21406D2CC(a1);
  }

  else
  {
    if (v28)
    {

      v29 = *(a5 + 448);

      *(a5 + 440) = v24;
      *(a5 + 448) = v23;
      *(a5 + 456) = a6;
      *(a5 + 464) = 0;
      *(a5 + 465) = v27;
      result = sub_213FB2DF4(a5, &qword_27C904858, &qword_214736F00);
      v31 = *(a1 + 208);
      *(a5 + 192) = *(a1 + 192);
      *(a5 + 208) = v31;
      *(a5 + 224) = *(a1 + 224);
      *(a5 + 240) = *(a1 + 240);
      v32 = *(a1 + 144);
      *(a5 + 128) = *(a1 + 128);
      *(a5 + 144) = v32;
      v33 = *(a1 + 176);
      *(a5 + 160) = *(a1 + 160);
      *(a5 + 176) = v33;
      v34 = *(a1 + 80);
      *(a5 + 64) = *(a1 + 64);
      *(a5 + 80) = v34;
      v35 = *(a1 + 112);
      *(a5 + 96) = *(a1 + 96);
      *(a5 + 112) = v35;
      v36 = *(a1 + 16);
      *a5 = *a1;
      *(a5 + 16) = v36;
      v37 = *(a1 + 48);
      *(a5 + 32) = *(a1 + 32);
      *(a5 + 48) = v37;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000019;
    v38[1] = 0x800000021478CC10;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21406D2CC(a1);
    v26 = v48;
  }

  v39 = *(a5 + 448);

  *(a5 + 440) = v24;
  *(a5 + 448) = v23;
  *(a5 + 456) = v25;
  *(a5 + 464) = v26;
  *(a5 + 465) = v27;
  return sub_2142E4DA0(a5);
}

unint64_t sub_2140CDC70()
{
  v1 = 0x756F72676B636162;
  v2 = 0x654B686769487369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x636E616E696D756CLL;
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

uint64_t sub_2140CDD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435C878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140CDD30(uint64_t a1)
{
  v2 = sub_2142E4DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140CDD6C(uint64_t a1)
{
  v2 = sub_2142E4DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140CDDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905900, &unk_2146F3EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E4DF4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  LOBYTE(v33[0]) = 0;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA1C8();
  LOBYTE(v33[0]) = 1;
  sub_2146DA188();
  v12 = v6;
  v14 = v13;
  LOBYTE(v33[0]) = 2;
  v30 = sub_2146DA178();
  v38 = 3;
  v16 = sub_2146DA168();
  v18 = v17;
  v29 = v5;
  LOWORD(v37[0]) = 0;
  sub_2140615D0(v37);
  *(&v40[24] + 8) = v37[9];
  *(&v40[25] + 8) = v37[10];
  *(&v40[26] + 8) = v37[11];
  *(&v40[20] + 8) = v37[5];
  *(&v40[21] + 8) = v37[6];
  *(&v40[22] + 8) = v37[7];
  *(&v40[23] + 8) = v37[8];
  *(&v40[16] + 8) = v37[1];
  *(&v40[17] + 8) = v37[2];
  *(&v40[18] + 8) = v37[3];
  *(&v40[19] + 8) = v37[4];
  *(&v40[15] + 8) = v37[0];
  memset(v40, 0, 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146F21C0;
  *(v20 + 16) = sub_21438F53C;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  sub_2140442CC(v19, v33);
  v22 = v33[1];
  *(&v40[27] + 1) = v33[0];
  v40[28] = *&v33[1];
  v28 = v33[2];
  LOWORD(v40[29]) = v33[3];
  BYTE2(v40[29]) = v30 & 1;
  *(&v40[29] + 1) = v16;
  *&v40[30] = v18;
  v36 = v33[3];
  v35 = v14;
  v30 = BYTE1(v33[3]);
  v34 = BYTE1(v33[3]);
  v33[0] = 0xD000000000000019;
  v33[1] = 0x800000021478CC10;
  v23 = *(&v40[27] + 1);
  v33[2] = 0xD00000000000001CLL;
  v33[3] = 0x800000021478A360;

  v24 = v23(&v35, &v34, v33);
  if (v24)
  {

    (*(v12 + 8))(v9, v29);

    *(&v40[27] + 1) = v23;
    *&v40[28] = v22;
    *(&v40[28] + 1) = v14;
    LOBYTE(v40[29]) = 0;
    BYTE1(v40[29]) = v30;
    memcpy(v33, v39, sizeof(v33));
    sub_213FB2DF4(v40, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v40, v33, 0x1B8uLL);
    memcpy(v31, v40, 0x1E8uLL);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  sub_214031C4C();
  swift_allocError();
  *v25 = 0xD000000000000019;
  v25[1] = 0x800000021478CC10;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v39, &qword_27C905500, &qword_2146F2BE0);
  (*(v12 + 8))(v9, v29);
  v26 = v36;

  *(&v40[27] + 1) = v23;
  *&v40[28] = v22;
  *(&v40[28] + 1) = v28;
  LOBYTE(v40[29]) = v26;
  BYTE1(v40[29]) = v30;
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_2142E4DA0(v40);
}

uint64_t sub_2140CE384(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905910, &qword_2146F3EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E4DF4();
  sub_2146DAA28();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  if (*(v3 + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v11 = *(v3 + 456);
    v16[14] = 1;
    sub_2146DA348();
    v12 = *(v3 + 466);
    v16[13] = 2;
    sub_2146DA338();
    v14 = *(v3 + 472);
    v15 = *(v3 + 480);
    v16[12] = 3;
    sub_2146DA328();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double BalloonPlugin.init(with:payload:bundleID:isExpirable:attributionInfo:plainTextBody:content:participantDestinationIdentifiers:associatedMessageGUID:associatedMessageRange:associatedMessageType:attachments:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t *a18)
{
  v119 = a4;
  v78 = *a1;
  v85 = *a10;
  v84 = *(a10 + 2);
  v93 = *a18;
  sub_2143287C0(a2, a9, type metadata accessor for BalloonPlugin.Payload);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2140676DC;
  *(v20 + 24) = 0;
  *(inited + 32) = v20;
  sub_214042B80(inited, &v115);
  v21 = v117;
  v83 = v116;
  v22 = v118;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  *(v23 + 32) = sub_2142E0AD0();
  sub_2140433DC(v23, &v112);
  v24 = v113;
  v25 = v114;
  sub_2140668B4(&v108);
  v27 = v109;
  v26 = v110;
  v28 = v111;
  sub_2140669D4(&v103);
  v82 = v104;
  v80 = v106;
  v81 = v105;
  v79 = v107;
  v29 = type metadata accessor for BalloonPlugin(0);
  v30 = a9 + v29[5];
  *v30 = v115;
  *(v30 + 16) = v83;
  *(v30 + 24) = v21;
  *(v30 + 32) = v22;
  *(a9 + v29[6]) = a5;
  *(a9 + v29[7]) = a6;
  v31 = (a9 + v29[8]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[9];
  *v32 = v85;
  *(v32 + 16) = v84;
  v33 = a9 + v29[10];
  *v33 = v112;
  *(v33 + 16) = v24;
  *(v33 + 24) = v25;
  v34 = a9 + v29[11];
  *v34 = v108;
  *(v34 + 16) = v27;
  *(v34 + 24) = v26;
  *(v34 + 32) = v28;
  v35 = a9 + v29[12];
  *v35 = a13;
  *(v35 + 8) = a14;
  *(v35 + 16) = a15 & 1;
  v36 = a9 + v29[13];
  *v36 = v103;
  *(v36 + 16) = v82;
  *(v36 + 24) = v81;
  *(v36 + 25) = v80;
  *(v36 + 26) = v79;
  v92 = a9;
  *(a9 + v29[14]) = v93;
  v38 = *v30;
  v37 = *(v30 + 8);
  v39 = *(v30 + 24);
  v91 = *(v30 + 16);
  v40 = *(v30 + 32);
  *&v108 = a3;
  *(&v108 + 1) = v119;
  v95 = v40;
  LOBYTE(v103) = v40;
  *&v115 = 0xD000000000000016;
  *(&v115 + 1) = 0x800000021478CC30;
  v116 = 0xD00000000000001CLL;
  v117 = 0x800000021478A360;
  v94 = v39;

  v41 = v38(&v108, &v103, &v115);
  if (v97)
  {

LABEL_6:

    sub_21432887C(a2, type metadata accessor for BalloonPlugin.Payload);
    v53 = *(v30 + 8);
    v54 = *(v30 + 24);

    *v30 = v38;
    *(v30 + 8) = v37;
    *(v30 + 16) = v91;
    *(v30 + 24) = v94;
    *(v30 + 32) = v95;
LABEL_7:
    sub_21432887C(v92, type metadata accessor for BalloonPlugin);
    return result;
  }

  v88 = v36;
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000016;
    v52[1] = 0x800000021478CC30;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v42 = *(v30 + 8);
  v43 = *(v30 + 24);

  *v30 = v38;
  *(v30 + 8) = v37;
  v44 = v119;
  *(v30 + 16) = a3;
  *(v30 + 24) = v44;
  *(v30 + 32) = v95;
  v45 = *v34;
  v46 = *(v34 + 8);
  v48 = *(v34 + 16);
  v47 = *(v34 + 24);
  v49 = *(v34 + 32);
  v108 = a12;
  LOBYTE(v103) = v49;
  *&v115 = 0xD000000000000023;
  *(&v115 + 1) = 0x800000021478CC50;
  v116 = 0xD00000000000001CLL;
  v117 = 0x800000021478A360;

  v98 = v48;
  sub_213FDC9D0(v48, v47);
  v50 = v46;
  v119 = v45;
  v51 = v45(&v108, &v103, &v115);
  if ((v51 & 1) == 0)
  {
    v96 = v49;
    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD000000000000023;
    v64[1] = 0x800000021478CC50;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(a2, type metadata accessor for BalloonPlugin.Payload);
    v65 = *(v34 + 8);
    v66 = *(v34 + 16);
    v67 = *(v34 + 24);

    sub_213FDC6D0(v66, v67);
    *v34 = v119;
    *(v34 + 8) = v46;
    *(v34 + 16) = v98;
    *(v34 + 24) = v47;
    *(v34 + 32) = v96;
    goto LABEL_7;
  }

  sub_213FDC6D0(v98, v47);

  v56 = *(v34 + 8);
  v57 = *(v34 + 16);
  v58 = *(v34 + 24);

  sub_213FDC6D0(v57, v58);
  *v34 = v119;
  *(v34 + 8) = v50;
  *(v34 + 16) = a12;
  *(v34 + 32) = v49;
  v60 = *v88;
  v59 = *(v88 + 8);
  v102 = *(v88 + 16);
  LODWORD(v119) = *(v88 + 24);
  v100 = *(v88 + 25);
  v61 = *(v88 + 26);
  *&v108 = a16;
  v62 = v61;
  BYTE8(v108) = a17 & 1;
  LOBYTE(v103) = v61;
  *&v115 = 0xD000000000000023;
  *(&v115 + 1) = 0x800000021478CC80;
  v116 = 0xD00000000000001CLL;
  v117 = 0x800000021478A360;

  v63 = v60(&v108, &v103, &v115);
  if ((v63 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v76 = 0xD000000000000023;
    v76[1] = 0x800000021478CC80;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(a2, type metadata accessor for BalloonPlugin.Payload);
    v77 = *(v88 + 8);

    *v88 = v60;
    *(v88 + 8) = v59;
    *(v88 + 16) = v102;
    *(v88 + 24) = v119;
    *(v88 + 25) = v100;
    *(v88 + 26) = v62;
    goto LABEL_7;
  }

  v68 = *(v88 + 8);

  *v88 = v60;
  *(v88 + 8) = v59;
  *(v88 + 16) = a16;
  *(v88 + 24) = a17 & 1;
  *(v88 + 25) = 0;
  *(v88 + 26) = v62;
  v69 = *(v33 + 8);
  v70 = *(v33 + 16);
  v71 = *(v33 + 24);
  *&v115 = *v33;
  *(&v115 + 1) = v69;
  v116 = v70;
  LOBYTE(v117) = v71;

  sub_2140325F8(a11, v78, 0xD00000000000002FLL, 0x800000021478CCB0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_21432887C(a2, type metadata accessor for BalloonPlugin.Payload);
  v72 = v116;
  v73 = v117;
  v74 = *(v33 + 8);
  v75 = *(v33 + 16);

  result = *&v115;
  *v33 = v115;
  *(v33 + 16) = v72;
  *(v33 + 24) = v73;
  return result;
}

unint64_t sub_2140CEEAC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656D686361747461;
    if (a1 == 10)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 == 9)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD000000000000032;
    if (a1 != 7)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 == 6)
    {
      v8 = 0xD000000000000021;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x64616F6C796170;
    v2 = 0x7475626972747461;
    v3 = 0x7865546E69616C70;
    if (a1 != 4)
    {
      v3 = 0x746E65746E6F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4449656C646E7562;
    if (a1 != 1)
    {
      v4 = 0x6172697078457369;
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

uint64_t sub_2140CF064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435C9F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140CF08C(uint64_t a1)
{
  v2 = sub_2142E4E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140CF0C8(uint64_t a1)
{
  v2 = sub_2142E4E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BalloonPlugin.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v148 = type metadata accessor for BalloonPlugin.Payload(0);
  v3 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v5 = &v122[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905918, &qword_2146F3EB8);
  v149 = *(v6 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v122[-v8];
  v10 = type metadata accessor for BalloonPlugin(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v122[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E4E48();
  v15 = v166;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v144 = 0;
  v143 = v13;
  v145 = v5;
  v146 = v9;
  v166 = v6;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v18 = sub_2146DA008();
  v19 = __swift_project_value_buffer(v18, qword_27CA19EC8);
  v20 = v149;
  v21 = v166;
  v22 = v146;
  if (*(v17 + 16) && (v23 = sub_21408C508(v19), (v24 & 1) != 0))
  {
    sub_2140537E4(*(v17 + 56) + 32 * v23, &v162);

    if (swift_dynamicCast())
    {
      v25 = v155;
    }

    else
    {
      v25 = 2;
    }
  }

  else
  {

    v25 = 2;
  }

  LOBYTE(v162) = 0;
  sub_214328930(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload);
  v26 = v144;
  sub_2146DA1C8();
  if (v26)
  {
    (*(v20 + 8))(v22, v21);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v162) = 1;
  v27 = sub_2146DA168();
  v29 = v28;
  v148 = v27;
  LOBYTE(v162) = 2;
  LODWORD(v144) = sub_2146DA178();
  v142 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
  LOBYTE(v155) = 3;
  sub_2142E4E9C();
  sub_2146DA1C8();
  v141 = v162;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v155) = 4;
  v140 = sub_2142E12FC();
  sub_2146DA1C8();
  v138 = v30;
  v137 = v25;
  v139 = *(&v162 + 1);
  v32 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v155) = 5;
  sub_2142E4F74();
  sub_2146DA1C8();
  v135 = v32;
  v136 = v162;
  v33 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v155) = 6;
  sub_2142E15CC();
  sub_2146DA1C8();
  v134 = v33;
  v34 = v162;
  LOBYTE(v155) = 8;
  sub_2146DA1C8();
  v140 = v34;
  v35 = *(&v162 + 1);
  v138 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905938, &unk_2146F3ED0);
  LOBYTE(v155) = 9;
  sub_2142E504C();
  sub_2146DA1C8();
  v36 = v35;
  v133 = *(&v162 + 1);
  v37 = v162;
  v132 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v155) = 10;
  sub_2142E11FC();
  sub_2146DA1C8();
  v131 = v162;
  v130 = BYTE8(v162);
  LOBYTE(v155) = 11;
  sub_2142E514C();
  sub_2146DA1C8();
  v38 = v162;
  v39 = v143;
  sub_2143287C0(v145, v143, type metadata accessor for BalloonPlugin.Payload);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v126 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_2140676DC;
  *(v41 + 24) = 0;
  *(inited + 32) = v41;
  sub_214042B80(inited, &v162);
  v129 = v163;
  v128 = v164;
  v127 = v165;
  v42 = swift_initStackObject();
  *(v42 + 16) = v126;
  *(v42 + 32) = sub_2142E0AD0();
  sub_2140433DC(v42, &v159);
  *&v126 = v160;
  v125 = v161;
  sub_2140668B4(&v155);
  v43 = v156;
  v124 = v157;
  v123 = v158;
  sub_2140669D4(&v150);
  v44 = v151;
  v45 = v152;
  v46 = v153;
  v47 = v39 + v10[5];
  *v47 = v162;
  *(v47 + 16) = v129;
  *(v47 + 24) = v128;
  *(v47 + 32) = v127;
  *(v39 + v10[6]) = v144 & 1;
  *(v39 + v10[7]) = v141;
  v48 = v154;
  v49 = (v39 + v10[8]);
  v50 = v139;
  *v49 = v135;
  v49[1] = v50;
  v51 = (v39 + v10[9]);
  v52 = *(&v136 + 1);
  *v51 = v136;
  v51[1] = v52;
  v51[2] = v134;
  v53 = v39 + v10[10];
  *v53 = v159;
  *(v53 + 16) = v126;
  v134 = v53;
  *(v53 + 24) = v125;
  v54 = v39 + v10[11];
  *v54 = v155;
  v55 = v124;
  *(v54 + 16) = v43;
  *(v54 + 24) = v55;
  *&v136 = v54;
  *(v54 + 32) = v123;
  v56 = v39 + v10[12];
  v57 = v133;
  *v56 = v37;
  *(v56 + 8) = v57;
  *(v56 + 16) = v132;
  v58 = v39 + v10[13];
  *v58 = v150;
  *(v58 + 16) = v44;
  *(v58 + 24) = v45;
  *(v58 + 25) = v46;
  v135 = v58;
  *(v58 + 26) = v48;
  *(v39 + v10[14]) = v38;
  v60 = *v47;
  v59 = *(v47 + 8);
  v61 = *(v47 + 24);
  *(&v136 + 1) = *(v47 + 16);
  v62 = *(v47 + 32);
  *&v155 = v148;
  *(&v155 + 1) = v142;
  LODWORD(v139) = v62;
  LOBYTE(v150) = v62;
  *&v162 = 0xD000000000000016;
  *(&v162 + 1) = 0x800000021478CC30;
  v163 = 0xD00000000000001CLL;
  v164 = 0x800000021478A360;
  v141 = 0x800000021478A360;
  v63 = v61;

  v64 = v60(&v155, &v150, &v162);
  v144 = 0;
  if ((v64 & 1) == 0)
  {
    sub_214031C4C();
    v76 = swift_allocError();
    *v77 = 0xD000000000000016;
    v77[1] = 0x800000021478CC30;
    v77[2] = 0xD00000000000001CLL;
    v77[3] = v141;
    v144 = v76;
    swift_willThrow();

    sub_21432887C(v145, type metadata accessor for BalloonPlugin.Payload);
    (*(v149 + 8))(v146, v166);
    v78 = *(v47 + 8);
    v79 = *(v47 + 24);

    *v47 = v60;
    *(v47 + 8) = v59;
    *(v47 + 16) = *(&v136 + 1);
    *(v47 + 24) = v63;
    *(v47 + 32) = v139;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21432887C(v143, type metadata accessor for BalloonPlugin);
  }

  v65 = v141;

  v66 = *(v47 + 8);
  v67 = *(v47 + 24);

  *v47 = v60;
  *(v47 + 8) = v59;
  v68 = v142;
  *(v47 + 16) = v148;
  *(v47 + 24) = v68;
  *(v47 + 32) = v139;
  v70 = *v136;
  v69 = *(v136 + 8);
  v72 = *(v136 + 16);
  v71 = *(v136 + 24);
  v73 = *(v136 + 32);
  *&v155 = v138;
  *(&v155 + 1) = v36;
  LODWORD(v148) = v73;
  LOBYTE(v150) = v73;
  *&v162 = 0xD000000000000023;
  *(&v162 + 1) = 0x800000021478CC50;
  v163 = 0xD00000000000001CLL;
  v164 = v65;

  v142 = v71;
  sub_213FDC9D0(v72, v71);
  v74 = v144;
  v75 = v70(&v155, &v150, &v162);
  v144 = v74;
  if (v74)
  {

LABEL_23:

    sub_21432887C(v145, type metadata accessor for BalloonPlugin.Payload);
    (*(v149 + 8))(v146, v166);
    v95 = v136;
    v96 = *(v136 + 8);
    v97 = *(v136 + 16);
    v98 = *(v136 + 24);

    sub_213FDC6D0(v97, v98);
    *v95 = v70;
    *(v95 + 8) = v69;
    v99 = v142;
    *(v95 + 16) = v72;
    *(v95 + 24) = v99;
    *(v95 + 32) = v148;
    goto LABEL_18;
  }

  if ((v75 & 1) == 0)
  {
    sub_214031C4C();
    v92 = swift_allocError();
    *v93 = 0xD000000000000023;
    v93[1] = 0x800000021478CC50;
    v94 = v141;
    v93[2] = 0xD00000000000001CLL;
    v93[3] = v94;
    v144 = v92;
    swift_willThrow();
    goto LABEL_23;
  }

  sub_213FDC6D0(v72, v142);
  v80 = v141;

  v81 = v136;
  v82 = *(v136 + 8);
  v83 = *(v136 + 16);
  v84 = *(v136 + 24);

  sub_213FDC6D0(v83, v84);
  *v81 = v70;
  *(v81 + 8) = v69;
  *(v81 + 16) = v138;
  *(v81 + 24) = v36;
  *(v81 + 32) = v148;
  v86 = *v135;
  v85 = *(v135 + 8);
  v87 = *(v135 + 16);
  v88 = *(v135 + 24);
  LODWORD(v148) = *(v135 + 25);
  v89 = *(v135 + 26);
  *&v155 = v131;
  BYTE8(v155) = v130;
  LOBYTE(v150) = v89;
  *&v162 = 0xD000000000000023;
  *(&v162 + 1) = 0x800000021478CC80;
  v163 = 0xD00000000000001CLL;
  v164 = v80;

  v90 = v144;
  v91 = v86(&v155, &v150, &v162);
  v144 = v90;
  if (v90)
  {

    sub_21432887C(v145, type metadata accessor for BalloonPlugin.Payload);
    (*(v149 + 8))(v146, v166);

LABEL_28:
    v115 = v135;
    v116 = *(v135 + 8);

    *v115 = v86;
    *(v115 + 8) = v85;
    *(v115 + 16) = v87;
    *(v115 + 24) = v88;
    *(v115 + 25) = v148;
    *(v115 + 26) = v89;
    goto LABEL_18;
  }

  if ((v91 & 1) == 0)
  {

    sub_214031C4C();
    v112 = swift_allocError();
    *v113 = 0xD000000000000023;
    v113[1] = 0x800000021478CC80;
    v114 = v141;
    v113[2] = 0xD00000000000001CLL;
    v113[3] = v114;
    v144 = v112;
    swift_willThrow();
    sub_21432887C(v145, type metadata accessor for BalloonPlugin.Payload);
    (*(v149 + 8))(v146, v166);
    goto LABEL_28;
  }

  v100 = v141;

  v101 = v135;
  v102 = *(v135 + 8);

  *v101 = v86;
  *(v101 + 8) = v85;
  *(v101 + 16) = v131;
  *(v101 + 24) = v130;
  *(v101 + 25) = 0;
  *(v101 + 26) = v89;
  v103 = *(v134 + 8);
  v104 = *(v134 + 16);
  v105 = *(v134 + 24);
  *&v162 = *v134;
  *(&v162 + 1) = v103;
  v163 = v104;
  LOBYTE(v164) = v105;

  v106 = v144;
  sub_2140325F8(v140, v137, 0xD00000000000002FLL, 0x800000021478CCB0, 0xD00000000000001CLL, v100);
  v144 = v106;
  if (v106)
  {

    sub_21432887C(v145, type metadata accessor for BalloonPlugin.Payload);
    (*(v149 + 8))(v146, v166);
    v107 = v163;
    v108 = v164;
    v109 = v134;
    v110 = *(v134 + 8);
    v111 = *(v134 + 16);

    *v109 = v162;
    *(v109 + 16) = v107;
    *(v109 + 24) = v108;
    goto LABEL_18;
  }

  sub_21432887C(v145, type metadata accessor for BalloonPlugin.Payload);
  (*(v149 + 8))(v146, v166);
  v117 = v163;
  v118 = v164;
  v119 = v134;
  v120 = *(v134 + 8);
  v121 = *(v134 + 16);

  *v119 = v162;
  *(v119 + 16) = v117;
  *(v119 + 24) = v118;
  sub_214328704(v143, v147, type metadata accessor for BalloonPlugin);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BalloonPlugin.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905950, &qword_2146F3EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E4E48();
  sub_2146DAA28();
  LOBYTE(v26) = 0;
  type metadata accessor for BalloonPlugin.Payload(0);
  sub_214328930(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = type metadata accessor for BalloonPlugin(0);
  v13 = v3 + *(v12 + 20);
  if (*(v13 + 24))
  {
    v14 = v12;
    v15 = *(v13 + 16);
    LOBYTE(v26) = 1;

    sub_2146DA328();

    v16 = *(v3 + v14[6]);
    LOBYTE(v26) = 2;
    sub_2146DA338();
    *&v26 = *(v3 + v14[7]);
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
    sub_2142E51A0();
    sub_2146DA388();
    v26 = *(v3 + v14[8]);
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v17 = (v3 + v14[9]);
    v18 = v17[1];
    v19 = v17[2];
    *&v26 = *v17;
    *(&v26 + 1) = v18;
    v27 = v19;
    v28 = 5;
    sub_214031CA0(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v26);
    if (*(v3 + v14[10] + 16))
    {
      *&v26 = *(v3 + v14[10] + 16);
      v28 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
      sub_2142E1F00();
      sub_2146DA388();
      v20 = v3 + v14[11];
      v21 = *(v20 + 24);
      if (v21 != 1)
      {
        *&v26 = *(v20 + 16);
        *(&v26 + 1) = v21;
        v28 = 8;
        sub_2146DA388();
        v22 = (v3 + v14[12]);
        v23 = *(v22 + 16);
        v26 = *v22;
        LOBYTE(v27) = v23;
        v28 = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905938, &unk_2146F3ED0);
        sub_2142E5350();
        sub_2146DA388();
        v24 = v3 + v14[13];
        if ((*(v24 + 25) & 1) == 0)
        {
          v25 = *(v24 + 24);
          *&v26 = *(v24 + 16);
          BYTE8(v26) = v25 & 1;
          v28 = 10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
          sub_2142E1C30();
          sub_2146DA388();
          *&v26 = *(v3 + v14[14]);
          v28 = 11;
          sub_2142E5450();

          sub_2146DA388();

          return (*(v6 + 8))(v9, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140D0B1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  sub_2145B86A4(&v19);
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v28 = a2;
  v30 = v22;
  v19 = 0xD000000000000033;
  v20 = 0x800000021478CCE0;
  v21 = 0xD00000000000001CLL;
  v22 = 0x800000021478A360;
  v11 = v7;

  v12 = v11(&v28, &v30, &v19);
  if (v4)
  {
  }

  else
  {
    if (v12)
    {

      result = swift_bridgeObjectRelease_n();
      *a4 = v15;
      *(a4 + 8) = v16;
      *(a4 + 16) = v17;
      *(a4 + 24) = v11;
      *(a4 + 32) = v8;
      *(a4 + 40) = a2;
      *(a4 + 48) = v10;
      *(a4 + 56) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000033;
    v14[1] = 0x800000021478CCE0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v11;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  *v26 = *v29;
  *&v26[3] = *&v29[3];
  v27 = a3;
  return sub_2142E54A4(&v19);
}

uint64_t sub_2140D0CEC()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_2140D0D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435CDF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140D0D7C(uint64_t a1)
{
  v2 = sub_2142E54F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D0DB8(uint64_t a1)
{
  v2 = sub_2142E54F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140D0DF4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905968, &qword_2146F3EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E54F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v47) = 0;
  sub_2142E4F74();
  sub_2146DA1C8();
  v64 = a2;
  v12 = v51;
  v11 = v52;
  v13 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v47) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v44 = v12;
  v46 = v11;
  v45 = v13;
  v14 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
  v61 = 2;
  sub_2142E554C();
  sub_2146DA1C8();
  v43 = v62;
  sub_2145B86A4(&v51);
  v17 = v51;
  v16 = v52;
  v18 = v53;
  v60 = v14;
  v42 = v54;
  LOBYTE(v47) = v54;
  v51 = 0xD000000000000033;
  v52 = 0x800000021478CCE0;
  v38 = 0x800000021478CCE0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;
  v40 = v18;

  v39 = v16;
  v41 = v17;
  v19 = v17(&v60, &v47, &v51);
  v20 = v46;
  v37 = v14;
  v21 = v38;
  if (v19)
  {

    v22 = v20;

    (*(v6 + 8))(v9, v5);

    v23 = v39;

    v24 = v44;
    *&v47 = v44;
    *(&v47 + 1) = v22;
    v25 = v45;
    v26 = v41;
    *&v48 = v45;
    *(&v48 + 1) = v41;
    v27 = v37;
    *&v49 = v23;
    *(&v49 + 1) = v37;
    v28 = v42;
    LOBYTE(v50) = v42;
    v29 = v43;
    *(&v50 + 1) = v43;
    v30 = v48;
    v31 = v64;
    *v64 = v47;
    v31[1] = v30;
    v32 = v50;
    v31[2] = v49;
    v31[3] = v32;
    sub_2142E55D0(&v47, &v51);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v51 = v24;
    v52 = v46;
    v53 = v25;
    v54 = v26;
    v55 = v23;
    v56 = v27;
    v57 = v28;
    v59 = v29;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000033;
    v33[1] = v21;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
    v34 = v40;

    v35 = v39;

    __swift_destroy_boxed_opaque_existential_1(a1);
    v51 = v44;
    v52 = v20;
    v53 = v45;
    v54 = v41;
    v55 = v35;
    v56 = v34;
    v57 = v42;
    *v58 = v63[0];
    *&v58[3] = *(v63 + 3);
    v59 = v43;
  }

  return sub_2142E54A4(&v51);
}

uint64_t sub_2140D1350(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905988, &qword_2146F3EF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[5];
  v20 = v1[7];
  v21 = v11;
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_2142E54F8();
  sub_2146DAA28();
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = 0;
  sub_214031CA0(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  sub_2142E5278();
  v17 = v22;
  sub_2146DA388();
  sub_214031CE0(v23);
  if (v17)
  {
    return (*(v4 + 8))(v7, v16);
  }

  v18 = v20;
  if (v21)
  {
    v23 = v21;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v23 = v18;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140D160C@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t (*a11)(void, void, void), uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v76 = *a1;
  v39 = *a12;
  v40 = a12[1];
  v41 = a12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  *(v16 + 16) = sub_2142E56B0;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v45);
  v19 = v45;
  v18 = v46;
  v20 = v47;
  v21 = v48;
  v22 = v49;
  sub_2143BF69C(&v69);
  v43 = v70;
  v44 = v69;
  v42 = v71;
  v77 = v72;
  v69 = a8;
  v70 = a10;
  v68 = v22;
  v45 = 0xD000000000000028;
  v46 = 0x800000021478CD20;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v23 = v31;
  v32 = v19;
  v24 = v19(&v69, &v68, &v45);
  if (v23)
  {

LABEL_6:

    v27 = v20;
LABEL_7:

    LOBYTE(v45) = v76;
    *(&v45 + 1) = v75[0];
    HIDWORD(v45) = *(v75 + 3);
    v46 = a2;
    v47 = a3;
    v48 = a4;
    v49 = a5;
    v50 = a6;
    v51 = a7;
    v52 = v32;
    v53 = v18;
    v54 = v27;
    v55 = v21;
    v56 = v22;
    *&v57[3] = *&v74[3];
    *v57 = *v74;
    v58 = v44;
    v59 = v43;
    v60 = v42;
    v61 = v77;
    *&v62[3] = *(v73 + 3);
    *v62 = v73[0];
    v63 = v39;
    v64 = v40;
    v65 = v41;
    v66 = a13;
    v67 = a14;
    return sub_2142E56E4(&v45);
  }

  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000028;
    v26[1] = 0x800000021478CD20;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v69 = a11;
  v68 = v77;
  v45 = 0xD000000000000033;
  v46 = 0x800000021478CD50;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v25 = v44(&v69, &v68, &v45);
  v27 = a8;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000033;
    v29[1] = 0x800000021478CD50;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = a10;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a9 = v76;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v32;
  *(a9 + 64) = v18;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = v22;
  *(a9 + 96) = v44;
  *(a9 + 104) = v43;
  *(a9 + 112) = a11;
  *(a9 + 120) = v77;
  *(a9 + 128) = v39;
  *(a9 + 136) = v40;
  *(a9 + 144) = v41;
  *(a9 + 152) = a13;
  *(a9 + 160) = a14;
  return result;
}

unint64_t sub_2140D1AB4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x7865546E69616C70;
    if (v1 == 6)
    {
      v4 = 0xD000000000000012;
    }

    if (v1 == 4)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    *v0;
    if (*v0 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2140D1BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435CF14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140D1BF4(uint64_t a1)
{
  v2 = sub_2142E5738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D1C30(uint64_t a1)
{
  v2 = sub_2142E5738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140D1C6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905998, &qword_2146F3F00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E5738();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v120);
  }

  v80 = v6;
  LOBYTE(v81) = 0;
  sub_2142E578C();
  sub_2146DA1C8();
  v12 = v93;
  LOBYTE(v93) = 1;
  v13 = sub_2146DA168();
  v16 = v15;
  v79 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v81) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v78 = v16;
  v77 = v12;
  v17 = v93;
  v18 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v81) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v75 = v17;
  v76 = v18;
  v19 = v93;
  v20 = v94;
  LOBYTE(v93) = 4;
  v21 = sub_2146DA168();
  v23 = v22;
  v73 = v19;
  v74 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v81) = 5;
  sub_2142E15CC();
  sub_2146DA1C8();
  v24 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059B0, &qword_2146F3F08);
  LOBYTE(v81) = 6;
  sub_2142E57E0();
  sub_2146DA1C8();
  v71 = v24;
  v72 = v23;
  v25 = v94;
  v70 = v93;
  v26 = v95;
  v116 = 7;
  v61 = sub_2146DA168();
  v62 = v26;
  v58 = v25;
  v59 = v27;
  v63 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = 1;
  *(v29 + 16) = sub_21438F758;
  *(v29 + 24) = v30;
  *(v28 + 32) = v29;
  sub_214042B80(v28, &v93);
  v31 = v94;
  v69 = v93;
  v57 = v95;
  v55 = v96;
  LODWORD(v26) = v97;
  sub_2143BF69C(&v81);
  v68 = *(&v81 + 1);
  v66 = v81;
  v67 = v82;
  v64 = BYTE8(v82);
  *&v81 = v74;
  *(&v81 + 1) = v72;
  v60 = v26;
  LOBYTE(v92) = v26;
  v32 = v55;
  v93 = 0xD000000000000028;
  v94 = 0x800000021478CD20;
  v56 = 0x800000021478CD20;
  v95 = 0xD00000000000001CLL;
  v96 = 0x800000021478A360;

  v65 = v31;
  v33 = v69(&v81, &v92, &v93);
  v34 = v56;
  v35 = v57;
  if (v33)
  {

    LOBYTE(v81) = v64;
    v92 = v71;
    v93 = 0xD000000000000033;
    v94 = 0x800000021478CD50;
    v95 = 0xD00000000000001CLL;
    v96 = 0x800000021478A360;

    if (v66(&v92, &v81, &v93))
    {

      (*(v80 + 8))(v9, v5);

      v40 = v68;

      LOBYTE(v81) = v77;
      *(&v81 + 1) = v119[0];
      DWORD1(v81) = *(v119 + 3);
      *(&v81 + 1) = v79;
      *&v82 = v78;
      v41 = v75;
      *(&v82 + 1) = v75;
      *&v83 = v76;
      *(&v83 + 1) = v73;
      *&v84 = v63;
      *(&v84 + 1) = v69;
      *&v85 = v65;
      *(&v85 + 1) = v74;
      *&v86 = v72;
      BYTE8(v86) = v60;
      HIDWORD(v86) = *&v118[3];
      *(&v86 + 9) = *v118;
      *&v87 = v66;
      *(&v87 + 1) = v40;
      *&v88 = v71;
      v42 = v64;
      BYTE8(v88) = v64;
      *(&v88 + 9) = *v117;
      HIDWORD(v88) = *&v117[3];
      v44 = v58;
      v43 = v59;
      *&v89 = v70;
      *(&v89 + 1) = v58;
      *&v90 = v62;
      *(&v90 + 1) = v61;
      v91 = v59;
      v45 = v82;
      *a2 = v81;
      *(a2 + 16) = v45;
      v46 = v83;
      v47 = v84;
      v48 = v86;
      *(a2 + 64) = v85;
      *(a2 + 80) = v48;
      *(a2 + 32) = v46;
      *(a2 + 48) = v47;
      v49 = v87;
      v50 = v88;
      v51 = v89;
      v52 = v90;
      *(a2 + 160) = v43;
      *(a2 + 128) = v51;
      *(a2 + 144) = v52;
      *(a2 + 96) = v49;
      *(a2 + 112) = v50;
      sub_2142E58CC(&v81, &v93);
      __swift_destroy_boxed_opaque_existential_1(v120);
      LOBYTE(v93) = v77;
      *(&v93 + 1) = v119[0];
      HIDWORD(v93) = *(v119 + 3);
      v94 = v79;
      v95 = v78;
      v96 = v41;
      v97 = v76;
      v98 = v73;
      v99 = v63;
      v100 = v69;
      v101 = v65;
      v102 = v74;
      v103 = v72;
      v104 = v60;
      *&v105[3] = *&v118[3];
      *v105 = *v118;
      v106 = v66;
      v107 = v40;
      v108 = v71;
      v109 = v42;
      *&v110[3] = *&v117[3];
      *v110 = *v117;
      v111 = v70;
      v112 = v44;
      v113 = v62;
      v114 = v61;
      v115 = v43;
      return sub_2142E56E4(&v93);
    }

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000033;
    v53[1] = 0x800000021478CD50;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();

    v71 = v68;
    v32 = v72;
    v39 = v77;
    v38 = v74;
    v37 = v65;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000028;
    v36[1] = v34;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    v37 = v65;
    v71 = v65;
    v38 = v35;
    v39 = v77;
  }

  (*(v80 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v120);
  LOBYTE(v93) = v39;
  *(&v93 + 1) = v119[0];
  HIDWORD(v93) = *(v119 + 3);
  v94 = v79;
  v95 = v78;
  v96 = v75;
  v97 = v76;
  v98 = v73;
  v99 = v63;
  v100 = v69;
  v101 = v37;
  v102 = v38;
  v103 = v32;
  v104 = v60;
  *&v105[3] = *&v118[3];
  *v105 = *v118;
  v106 = v66;
  v107 = v68;
  v108 = v67;
  v109 = v64;
  *&v110[3] = *&v117[3];
  *v110 = *v117;
  v111 = v70;
  v112 = v58;
  v113 = v62;
  v114 = v61;
  v115 = v59;
  return sub_2142E56E4(&v93);
}

uint64_t sub_2140D2710(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059C8, &qword_2146F3F10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v37 = *(v1 + 2);
  v38 = v9;
  v10 = *(v1 + 3);
  v35 = *(v1 + 4);
  v36 = v10;
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  v13 = *(v1 + 10);
  v31 = *(v1 + 9);
  v32 = v12;
  v30 = v13;
  v14 = *(v1 + 14);
  v15 = *(v1 + 16);
  v28 = *(v1 + 17);
  v29 = v15;
  v17 = *(v1 + 18);
  v16 = *(v1 + 19);
  v26 = v14;
  v27 = v17;
  v33 = v16;
  v34 = v11;
  v18 = *(v1 + 20);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5738();
  sub_2146DAA28();
  LOBYTE(v40) = v8;
  v43 = 0;
  sub_2142E5928();
  v20 = v39;
  sub_2146DA388();
  if (v20)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v22 = v35;
  v21 = v36;
  v39 = v18;
  v23 = v34;
  LOBYTE(v40) = 1;
  sub_2146DA328();
  v40 = v21;
  v41 = v22;
  v43 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v40 = v23;
  v41 = v32;
  v43 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v30)
  {
    LOBYTE(v40) = 4;

    sub_2146DA328();

    if (v26)
    {
      v40 = v26;
      v43 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
      sub_2142E1F00();
      sub_2146DA388();
      v40 = v29;
      v41 = v28;
      v42 = v27;
      v43 = 6;
      sub_2142E597C(v29, v28, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059B0, &qword_2146F3F08);
      sub_2142E5990();
      sub_2146DA388();
      sub_2142E58B8(v40, v41, v42);
      LOBYTE(v40) = 7;
      sub_2146DA328();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t BasicMessage.init(with:plainTextSubject:content:participantDestinationIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a4;
  *(&v39 + 1) = a2;
  *&v39 = a1;
  v27 = a5[1];
  v29 = *a5;
  v7 = a5[2];
  sub_2145EC8C4(&v42);
  v8 = v42;
  v9 = v43;
  v10 = v44;
  v11 = v45;
  v12 = BYTE8(v45);
  sub_2145ECA68(v55);
  v32 = v55[1];
  v33 = v55[2];
  v34 = v55[0];
  v31 = v56;
  v42 = v8;
  v43 = v9;
  v44 = v10;
  *&v45 = v11;
  BYTE8(v45) = v12;

  sub_2142E5A68(v9);
  sub_21403220C(v29, v27, v7, 2, 0xD000000000000014, 0x800000021478CD90, 0xD00000000000001CLL, 0x800000021478A360);
  sub_214031CE0(v29);

  if (v36)
  {

    v37 = v42;
    v13 = v43;
    v14 = v45;
    v15 = BYTE8(v45);
    v16 = v44;

    sub_214032578(v9);
    v17 = v37;
    v19 = v33;
    v18 = v34;
    v20 = v32;
    v21 = v31;
  }

  else
  {
    v38 = v42;
    v28 = v44;
    v30 = v43;
    v25 = v45;
    v15 = BYTE8(v45);

    sub_214032578(v9);
    v55[0] = a6;
    v41 = v31;
    *&v42 = 0xD00000000000002ELL;
    *(&v42 + 1) = 0x800000021478CDB0;
    v43 = 0xD00000000000001CLL;
    v44 = 0x800000021478A360;
    v19 = v33;

    v18 = v34;
    v20 = v32;
    v21 = v31;
    if (v34(v55, &v41, &v42))
    {

      result = swift_bridgeObjectRelease_n();
      *a7 = v39;
      v23 = v58;
      *(a7 + 16) = a3;
      *(a7 + 24) = v23;
      *(a7 + 32) = v38;
      *(a7 + 48) = v30;
      *(a7 + 56) = v28;
      *(a7 + 64) = v25;
      *(a7 + 72) = v15;
      *(a7 + 80) = v34;
      *(a7 + 88) = v32;
      *(a7 + 96) = a6;
      *(a7 + 104) = v31;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000002ELL;
    v24[1] = 0x800000021478CDB0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = v25;

    v16 = v28;
    v13 = v30;
    v17 = v38;
  }

  v42 = v39;
  v43 = a3;
  v44 = v58;
  v45 = v17;
  v46 = v13;
  v47 = v16;
  v48 = v14;
  v49 = v15;
  *v50 = v57[0];
  *&v50[3] = *(v57 + 3);
  v51 = v18;
  v52 = v20;
  v53 = v19;
  v54 = v21;
  return sub_2142E5A78(&v42);
}

unint64_t sub_2140D2EE4()
{
  v1 = 0x7865546E69616C70;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2140D2F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435D1B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140D2FA0(uint64_t a1)
{
  v2 = sub_2142E5ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D2FDC(uint64_t a1)
{
  v2 = sub_2142E5ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BasicMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059E8, &qword_2146F3F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5ACC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v87 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v64) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = *(&v71 + 1);
  v63 = v71;
  LOBYTE(v64) = 1;
  sub_2146DA1C8();
  v62 = v11;
  v12 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v64) = 2;
  sub_2142E4F74();
  sub_2146DA1C8();
  v59 = __PAIR128__(*(&v71 + 1), v12);
  *&v61 = v71;
  v60 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v84 = 3;
  sub_2142E15CC();
  sub_2146DA1C8();
  v51 = *(&v12 + 1);
  v55 = v85;
  sub_2145EC8C4(&v71);
  v14 = *(&v71 + 1);
  v50 = v71;
  v15 = v72;
  v16 = v73;
  v17 = v74;
  LODWORD(v49) = BYTE8(v74);
  sub_2145ECA68(&v64);
  v53 = *(&v64 + 1);
  v54 = v64;
  v52 = v65;
  v56 = BYTE8(v65);
  v57 = "tinationIdentifiers";
  v58 = 0x800000021478A360;
  *&v71 = v50;
  *(&v71 + 1) = v14;
  v72 = v15;
  v73 = v16;
  *&v74 = v17;
  BYTE8(v74) = v49;
  v48[1] = v14;

  v50 = v15;
  v49 = v16;
  v48[2] = v17;
  sub_2142E5A68(v15);
  v18 = v61;
  sub_21403220C(v61, *(&v59 + 1), v60, 2, 0xD000000000000014, v57 | 0x8000000000000000, 0xD00000000000001CLL, v58);
  sub_214031CE0(v18);
  v19 = v58;

  v61 = v71;
  v60 = v72;
  *(&v59 + 1) = v73;
  v48[0] = v74;
  LODWORD(v57) = BYTE8(v74);

  sub_214032578(v50);
  LOBYTE(v64) = v56;
  v70 = v55;
  *&v71 = 0xD00000000000002ELL;
  *(&v71 + 1) = 0x800000021478CDB0;
  v72 = 0xD00000000000001CLL;
  v73 = v19;

  v20 = v54;
  v21 = v54(&v70, &v64, &v71);
  v22 = v20;
  v23 = v19;
  v24 = v57;
  if (v21)
  {
    v25 = v59;

    (*(v6 + 8))(v9, v5);

    v26 = v53;

    v27 = v25;
    v28 = v63;
    *&v64 = v63;
    v29 = v62;
    *(&v64 + 1) = v62;
    *&v65 = v27;
    v30 = v22;
    v31 = v51;
    *(&v65 + 1) = v51;
    v66 = v61;
    v32 = v60;
    *&v67 = v60;
    v33 = v24;
    v34 = *(&v59 + 1);
    *(&v67 + 1) = *(&v59 + 1);
    v35 = v48[0];
    *&v68 = v48[0];
    BYTE8(v68) = v33;
    *v69 = v30;
    *&v69[8] = v26;
    *&v69[16] = v55;
    v69[24] = v56;
    v36 = *v69;
    v37 = v87;
    v87[4] = v68;
    v37[5] = v36;
    *(v37 + 89) = *&v69[9];
    v38 = v65;
    *v37 = v64;
    v37[1] = v38;
    v39 = v67;
    v37[2] = v66;
    v37[3] = v39;
    sub_2142E5B20(&v64, &v71);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v71 = v28;
    *(&v71 + 1) = v29;
    v72 = v59;
    v73 = v31;
    v74 = v61;
    v75 = v32;
    v76 = v34;
    v77 = v35;
    v78 = v57;
    *v79 = *v86;
    *&v79[3] = *&v86[3];
    v80 = v54;
    v81 = v26;
    v82 = v55;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000002ELL;
    v40[1] = 0x800000021478CDB0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v23;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
    v41 = v52;

    v42 = v53;

    v43 = v51;
    v44 = v63;
    v45 = v62;
    v46 = v57;
    v47 = v48[0];
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v71 = v44;
    *(&v71 + 1) = v45;
    v72 = v59;
    v73 = v43;
    v74 = v61;
    v75 = v60;
    v76 = *(&v59 + 1);
    v77 = v47;
    v78 = v46;
    *v79 = *v86;
    *&v79[3] = *&v86[3];
    v80 = v54;
    v81 = v42;
    v82 = v41;
  }

  v83 = v56;
  return sub_2142E5A78(&v71);
}

uint64_t BasicMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059F8, &qword_2146F3F20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[6];
  v20 = v1[7];
  v21 = v11;
  v12 = v1[8];
  v18 = v1[12];
  v19 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5ACC();
  sub_2146DAA28();
  v25 = v8;
  v26 = v9;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v24;
  sub_2146DA388();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = v20;
  v15 = v21;
  v25 = v23;
  v26 = v22;
  v28 = 1;
  sub_2146DA388();
  if (v15 != 1)
  {
    v25 = v15;
    v26 = v16;
    v27 = v19;
    v28 = 2;
    sub_214031CA0(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v25);
    if (v18)
    {
      v25 = v18;
      v28 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
      sub_2142E1F00();
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t BasicTapBack.init(with:associatedMessageGUID:associatedMessageFallbackHash:associatedMessageRange:participantDestinationIdentifiers:messageSummaryInfo:plainTextBody:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v23 = *a1;
  v30 = *a10;
  v31 = a10[1];
  v32 = a10[2];
  sub_2143C9F2C(&v33);
  v15 = v33;
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v50 = a8;
  v52 = v36;
  v33 = 0xD00000000000002ELL;
  v34 = 0x800000021478CDE0;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;
  v19 = v15;

  v20 = v19(&v50, &v52, &v33);
  if (v12)
  {
  }

  else
  {
    if (v20)
    {

      result = swift_bridgeObjectRelease_n();
      *a9 = v23;
      *(a9 + 8) = a2;
      *(a9 + 16) = a3;
      *(a9 + 24) = a4;
      *(a9 + 32) = a5;
      *(a9 + 40) = a6;
      *(a9 + 48) = a7;
      *(a9 + 56) = v19;
      *(a9 + 64) = v16;
      *(a9 + 72) = a8;
      *(a9 + 80) = v18;
      *(a9 + 88) = v30;
      *(a9 + 96) = v31;
      *(a9 + 104) = v32;
      *(a9 + 112) = a11;
      *(a9 + 120) = a12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD00000000000002ELL;
    v22[1] = 0x800000021478CDE0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }

  LOBYTE(v33) = v23;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = v19;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  *v44 = *v51;
  *&v44[3] = *&v51[3];
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = a11;
  v49 = a12;
  return sub_2142E5B7C(&v33);
}

unint64_t sub_2140D3F1C()
{
  v1 = *v0;
  v2 = 0x7865546E69616C70;
  if (v1 == 5)
  {
    v2 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000021;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2140D4010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435D32C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140D4038(uint64_t a1)
{
  v2 = sub_2142E5BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D4074(uint64_t a1)
{
  v2 = sub_2142E5BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BasicTapBack.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A00, &qword_2146F3F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E5BD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }

  v12 = v6;
  LOBYTE(v63) = 0;
  sub_2142E5C24();
  sub_2146DA1C8();
  v13 = v71;
  LOBYTE(v71) = 1;
  v14 = sub_2146DA168();
  v62 = v15;
  v60 = v14;
  v61 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v63) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v16 = v71;
  v17 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v63) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v57 = v16;
  v18 = v71;
  v58 = v72;
  v59 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v63) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v19 = v5;
  v56 = v18;
  v20 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059B0, &qword_2146F3F08);
  LOBYTE(v63) = 5;
  sub_2142E57E0();
  sub_2146DA1C8();
  v55 = v20;
  v22 = v71;
  v23 = v72;
  v54 = v73;
  v88 = 6;
  *&v53 = sub_2146DA168();
  *(&v53 + 1) = v24;
  v51 = v22;
  v52 = v23;
  sub_2143C9F2C(&v71);
  v26 = v71;
  v25 = v72;
  v27 = v73;
  v87 = v55;
  v50 = v74;
  LOBYTE(v63) = v74;
  v71 = 0xD00000000000002ELL;
  v72 = 0x800000021478CDE0;
  v46 = 0x800000021478CDE0;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;
  v48 = v27;

  v47 = v25;
  v49 = v26;
  v28 = v26(&v87, &v63, &v71);
  v29 = v46;
  v30 = v61;
  if (v28)
  {

    (*(v12 + 8))(v9, v19);

    v31 = v47;

    LOBYTE(v63) = v30;
    v32 = v60;
    *(&v63 + 1) = v60;
    *&v64 = v62;
    v33 = v56;
    v34 = v57;
    *(&v64 + 1) = v57;
    *&v65 = v59;
    *(&v65 + 1) = v56;
    *&v66 = v58;
    v35 = v49;
    *(&v66 + 1) = v49;
    *&v67 = v31;
    v36 = v55;
    *(&v67 + 1) = v55;
    LOBYTE(v68) = v50;
    *(&v68 + 1) = v51;
    *&v69 = v52;
    *(&v69 + 1) = v54;
    v70 = v53;
    v37 = v63;
    v38 = v64;
    v39 = v66;
    a2[2] = v65;
    a2[3] = v39;
    *a2 = v37;
    a2[1] = v38;
    v40 = v67;
    v41 = v68;
    v42 = v70;
    a2[6] = v69;
    a2[7] = v42;
    a2[4] = v40;
    a2[5] = v41;
    sub_2142E5C78(&v63, &v71);
    __swift_destroy_boxed_opaque_existential_1(v91);
    LOBYTE(v71) = v61;
    v72 = v32;
    v73 = v62;
    v74 = v34;
    v75 = v59;
    v76 = v33;
    v77 = v58;
    v78 = v35;
    v79 = v31;
    v80 = v36;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002ELL;
    v43[1] = v29;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v12 + 8))(v9, v19);
    v44 = v48;

    v45 = v47;

    __swift_destroy_boxed_opaque_existential_1(v91);
    LOBYTE(v71) = v30;
    *(&v71 + 1) = v90[0];
    HIDWORD(v71) = *(v90 + 3);
    v72 = v60;
    v73 = v62;
    v74 = v57;
    v75 = v59;
    v76 = v56;
    v77 = v58;
    v78 = v49;
    v79 = v45;
    v80 = v44;
  }

  v81 = v50;
  *v82 = *v89;
  *&v82[3] = *&v89[3];
  v83 = v51;
  v84 = v52;
  v85 = v54;
  v86 = v53;
  return sub_2142E5B7C(&v71);
}

uint64_t BasicTapBack.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A18, &qword_2146F3F30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v32 = *(v1 + 2);
  v33 = v9;
  v10 = *(v1 + 3);
  v30 = *(v1 + 4);
  v31 = v10;
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  v26 = *(v1 + 9);
  v27 = v12;
  v13 = *(v1 + 11);
  v24 = *(v1 + 12);
  v25 = v13;
  v14 = *(v1 + 14);
  v23 = *(v1 + 13);
  v28 = v14;
  v29 = v11;
  v15 = *(v1 + 15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5BD0();
  sub_2146DAA28();
  LOBYTE(v35) = v8;
  v38 = 0;
  sub_2142E5CD4();
  v17 = v34;
  sub_2146DA388();
  if (v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v30;
  v19 = v31;
  v34 = v15;
  v20 = v29;
  LOBYTE(v35) = 1;
  sub_2146DA328();
  v35 = v19;
  v36 = v18;
  v38 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v35 = v20;
  v36 = v27;
  v38 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v26)
  {
    v35 = v26;
    v38 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = 5;
    sub_2142E597C(v25, v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9059B0, &qword_2146F3F08);
    sub_2142E5990();
    sub_2146DA388();
    sub_2142E58B8(v35, v36, v37);
    LOBYTE(v35) = 6;
    sub_2146DA328();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140D4B90@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v133 = a4;
  sub_2143287C0(a1, a9, type metadata accessor for Metadata);
  sub_21409E80C(&v129);
  v21 = v130;
  v22 = v131;
  v106 = v132;
  sub_21409E840(&v125);
  v104 = v127;
  v105 = v126;
  v103 = v128;
  sub_21409E874(&v121);
  v101 = v123;
  v102 = v122;
  v23 = v124;
  sub_21409E8A8(&v117);
  v24 = v118;
  v25 = v119;
  v26 = v120;
  v27 = type metadata accessor for BasicTextMessage();
  v28 = (a9 + v27[5]);
  v29 = a2[1];
  *v28 = *a2;
  v28[1] = v29;
  v30 = a2[5];
  v28[4] = a2[4];
  v28[5] = v30;
  v31 = a2[3];
  v28[2] = a2[2];
  v28[3] = v31;
  *(v28 + 153) = *(a2 + 153);
  v32 = a2[9];
  v28[8] = a2[8];
  v28[9] = v32;
  v33 = a2[7];
  v28[6] = a2[6];
  v28[7] = v33;
  v34 = a9 + v27[6];
  *v34 = v129;
  *(v34 + 16) = v21;
  *(v34 + 24) = v22;
  *(v34 + 32) = v106;
  v35 = a9 + v27[7];
  *v35 = v125;
  *(v35 + 16) = v105;
  *(v35 + 24) = v104;
  *(v35 + 32) = v103;
  v36 = a9 + v27[8];
  *v36 = v121;
  *(v36 + 16) = v102;
  *(v36 + 24) = v101;
  *(v36 + 32) = v23;
  v37 = a9 + v27[9];
  *v37 = v117;
  *(v37 + 16) = v24;
  *(v37 + 24) = v25;
  *(v37 + 32) = v26;
  v38 = a9 + v27[10];
  *v38 = a11;
  *(v38 + 8) = a12 & 1;
  v39 = a9 + v27[11];
  *v39 = a13;
  *(v39 + 8) = a14 & 1;
  v40 = a9 + v27[12];
  *v40 = a15;
  *(v40 + 8) = a16 & 1;
  *(a9 + v27[13]) = a17;
  v109 = a9;
  v41 = a9 + v27[14];
  *v41 = a18;
  *(v41 + 8) = a19 & 1;
  v42 = *v34;
  v43 = *(v34 + 8);
  v44 = *(v34 + 16);
  v45 = *(v34 + 24);
  v46 = *(v34 + 32);
  *&v125 = a3;
  *(&v125 + 1) = v133;
  v110 = v46;
  LOBYTE(v121) = v46;
  *&v129 = 0xD000000000000025;
  *(&v129 + 1) = 0x800000021478CE10;
  v130 = 0xD00000000000001CLL;
  v131 = 0x800000021478A360;

  sub_213FDC9D0(v44, v45);
  v47 = v42(&v125, &v121, &v129);
  if (v111)
  {

LABEL_6:

    sub_21432887C(a1, type metadata accessor for Metadata);
    v59 = *(v34 + 8);
    v60 = *(v34 + 16);
    v61 = *(v34 + 24);

    sub_213FDC6D0(v60, v61);
    *v34 = v42;
    *(v34 + 8) = v43;
    *(v34 + 16) = v44;
    *(v34 + 24) = v45;
    *(v34 + 32) = v110;
    return sub_21432887C(v109, type metadata accessor for BasicTextMessage);
  }

  v108 = v36;
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000025;
    v58[1] = 0x800000021478CE10;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v107 = v37;
  sub_213FDC6D0(v44, v45);

  v48 = *(v34 + 8);
  v49 = *(v34 + 16);
  v50 = *(v34 + 24);

  sub_213FDC6D0(v49, v50);
  *v34 = v42;
  *(v34 + 8) = v43;
  v51 = v133;
  *(v34 + 16) = a3;
  *(v34 + 24) = v51;
  *(v34 + 32) = v110;
  v52 = *v35;
  v53 = *(v35 + 8);
  v54 = *(v35 + 16);
  v55 = *(v35 + 24);
  v56 = *(v35 + 32);
  *&v125 = a5;
  *(&v125 + 1) = a6;
  LODWORD(v133) = v56;
  LOBYTE(v121) = v56;
  *&v129 = 0xD00000000000002DLL;
  *(&v129 + 1) = 0x800000021478CE40;
  v130 = 0xD00000000000001CLL;
  v131 = 0x800000021478A360;

  sub_213FDC9D0(v54, v55);
  v57 = v52(&v125, &v121, &v129);
  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD00000000000002DLL;
    v72[1] = 0x800000021478CE40;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(a1, type metadata accessor for Metadata);
    v73 = *(v35 + 8);
    v74 = *(v35 + 16);
    v75 = *(v35 + 24);

    sub_213FDC6D0(v74, v75);
    *v35 = v52;
    *(v35 + 8) = v53;
    *(v35 + 16) = v54;
    *(v35 + 24) = v55;
    *(v35 + 32) = v133;
    return sub_21432887C(v109, type metadata accessor for BasicTextMessage);
  }

  sub_213FDC6D0(v54, v55);

  v63 = *(v35 + 8);
  v64 = *(v35 + 16);
  v65 = *(v35 + 24);

  sub_213FDC6D0(v64, v65);
  *v35 = v52;
  *(v35 + 8) = v53;
  *(v35 + 16) = a5;
  *(v35 + 24) = a6;
  *(v35 + 32) = v133;
  v67 = *v36;
  v66 = *(v108 + 8);
  v68 = *(v108 + 16);
  v69 = *(v108 + 24);
  v70 = *(v108 + 32);
  *&v125 = a7;
  *(&v125 + 1) = a8;
  v116 = v70;
  LOBYTE(v121) = v70;
  *&v129 = 0xD000000000000018;
  *(&v129 + 1) = 0x800000021478CE70;
  v130 = 0xD00000000000001CLL;
  v131 = 0x800000021478A360;

  sub_213FDC9D0(v68, v69);
  v133 = v67;
  v71 = v67(&v125, &v121, &v129);
  if ((v71 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD000000000000018;
    v86[1] = 0x800000021478CE70;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(a1, type metadata accessor for Metadata);
    v87 = v108;
    v88 = *(v108 + 8);
    v89 = *(v108 + 16);
    v90 = *(v108 + 24);

    sub_213FDC6D0(v89, v90);
    *v108 = v133;
    *(v108 + 8) = v66;
    *(v108 + 16) = v68;
    *(v108 + 24) = v69;
    v91 = v116;
LABEL_14:
    *(v87 + 32) = v91;
    return sub_21432887C(v109, type metadata accessor for BasicTextMessage);
  }

  sub_213FDC6D0(v68, v69);

  v76 = *(v108 + 8);
  v77 = *(v108 + 16);
  v78 = *(v108 + 24);

  sub_213FDC6D0(v77, v78);
  *v108 = v133;
  *(v108 + 8) = v66;
  *(v108 + 16) = a7;
  *(v108 + 24) = a8;
  *(v108 + 32) = v116;
  v80 = *v37;
  v79 = *(v37 + 8);
  v81 = *(v37 + 16);
  v82 = *(v37 + 24);
  v83 = *(v37 + 32);
  v125 = a10;
  LODWORD(v133) = v83;
  LOBYTE(v121) = v83;
  *&v129 = 0xD000000000000021;
  *(&v129 + 1) = 0x800000021478CE90;
  v130 = 0xD00000000000001CLL;
  v131 = 0x800000021478A360;

  sub_213FDC9D0(v81, v82);
  v84 = v80;
  v85 = v80(&v125, &v121, &v129);
  if ((v85 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v95 = 0xD000000000000021;
    v95[1] = 0x800000021478CE90;
    v95[2] = 0xD00000000000001CLL;
    v95[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(a1, type metadata accessor for Metadata);
    v87 = v37;
    v96 = *(v37 + 8);
    v97 = *(v37 + 16);
    v98 = v107[3];

    sub_213FDC6D0(v97, v98);
    *v107 = v84;
    v107[1] = v79;
    v107[2] = v81;
    v107[3] = v82;
    v91 = v133;
    goto LABEL_14;
  }

  sub_213FDC6D0(v81, v82);

  sub_21432887C(a1, type metadata accessor for Metadata);
  v92 = *(v37 + 8);
  v93 = *(v37 + 16);
  v94 = *(v37 + 24);

  result = sub_213FDC6D0(v93, v94);
  *v37 = v80;
  *(v37 + 8) = v79;
  *(v37 + 16) = a10;
  *(v37 + 32) = v133;
  return result;
}

uint64_t sub_2140D5464(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x617461646174656DLL;
    v5 = 0xD000000000000014;
    v6 = 0xD00000000000001CLL;
    if (a1 != 3)
    {
      v6 = 0x444970756F7267;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x536567617373656DLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v1 = 0xD000000000000013;
      v2 = 0xD00000000000001BLL;
      if (a1 == 9)
      {
        v2 = 0xD000000000000017;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD000000000000010;
      v2 = 0xD000000000000017;
      if (a1 != 6)
      {
        v2 = 0xD000000000000014;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2140D55E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435D580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140D560C(uint64_t a1)
{
  v2 = sub_2142E5D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D5648(uint64_t a1)
{
  v2 = sub_2142E5D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140D5684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v142 = type metadata accessor for Metadata();
  v3 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v5 = &v117[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A28, &qword_2146F3F38);
  v143 = *(v6 - 8);
  v7 = *(v143 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v117[-v8];
  v10 = type metadata accessor for BasicTextMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v117[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[3];
  v14 = a1[4];
  v180 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142E5D28();
  v16 = v144;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v180);
  }

  v17 = v10;
  v144 = v13;
  LOBYTE(v170) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
  sub_2146DA1C8();
  v169 = 1;
  sub_21409EB94();
  sub_2146DA1C8();
  v167 = v178;
  *v168 = v179[0];
  *&v168[9] = *(v179 + 9);
  v163 = v174;
  v164 = v175;
  v165 = v176;
  v166 = v177;
  v159 = v170;
  v160 = v171;
  v161 = v172;
  v162 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v151) = 2;
  v142 = sub_2142E12FC();
  sub_2146DA1C8();
  v140 = v155;
  LOBYTE(v151) = 3;
  sub_2146DA1C8();
  v19 = *(&v155 + 1);
  v139 = v155;
  LOBYTE(v151) = 4;
  sub_2146DA1C8();
  v137 = v155;
  v138 = v19;
  v20 = *(&v155 + 1);
  LOBYTE(v151) = 5;
  sub_2146DA1C8();
  v142 = v20;
  v21 = *(&v155 + 1);
  v135 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v151) = 6;
  v136 = sub_2142E3570();
  sub_2146DA1C8();
  v134 = v21;
  v22 = v155;
  v133 = BYTE8(v155);
  LOBYTE(v151) = 7;
  sub_2146DA1C8();
  v23 = v155;
  LODWORD(v136) = BYTE8(v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v151) = 8;
  sub_2142E11FC();
  sub_2146DA1C8();
  v130 = v5;
  v24 = v155;
  v129 = BYTE8(v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v151) = 9;
  sub_2142E1548();
  v131 = v9;
  v132 = v6;
  sub_2146DA1C8();
  v128 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v151) = 10;
  sub_2142E18D0();
  sub_2146DA1C8();
  v127 = v155;
  v126 = BYTE8(v155);
  v25 = v144;
  sub_2143287C0(v130, v144, type metadata accessor for Metadata);
  sub_21409E80C(&v155);
  v124 = v157;
  v125 = v156;
  LODWORD(v123) = v158;
  sub_21409E840(&v151);
  v121 = v153;
  v122 = v152;
  v120 = v154;
  sub_21409E874(&v147);
  v26 = v148;
  v119 = v149;
  v118 = v150;
  sub_21409E8A8(v145);
  v27 = v146;
  v28 = (v25 + v17[5]);
  v29 = v164;
  v28[4] = v163;
  v28[5] = v29;
  *(v28 + 153) = *&v168[9];
  v30 = *v168;
  v28[8] = v167;
  v28[9] = v30;
  v31 = v166;
  v28[6] = v165;
  v28[7] = v31;
  v32 = v160;
  *v28 = v159;
  v28[1] = v32;
  v33 = v162;
  v28[2] = v161;
  v28[3] = v33;
  v34 = v25 + v17[6];
  *v34 = v155;
  v35 = v124;
  *(v34 + 16) = v125;
  *(v34 + 24) = v35;
  *(v34 + 32) = v123;
  v36 = v25 + v17[7];
  *v36 = v151;
  v37 = v121;
  *(v36 + 16) = v122;
  *(v36 + 24) = v37;
  v125 = v36;
  *(v36 + 32) = v120;
  v38 = v25 + v17[8];
  *v38 = v147;
  v39 = v119;
  *(v38 + 16) = v26;
  *(v38 + 24) = v39;
  v124 = v38;
  *(v38 + 32) = v118;
  v40 = v25 + v17[9];
  v41 = v145[1];
  *v40 = v145[0];
  *(v40 + 16) = v41;
  v123 = v40;
  *(v40 + 32) = v27;
  v42 = v25 + v17[10];
  *v42 = v22;
  *(v42 + 8) = v133;
  v43 = v25 + v17[11];
  *v43 = v23;
  *(v43 + 8) = v136;
  v44 = v25 + v17[12];
  *v44 = v24;
  *(v44 + 8) = v129;
  v45 = v127;
  *(v25 + v17[13]) = v128;
  v46 = v25 + v17[14];
  *v46 = v45;
  *(v46 + 8) = v126;
  v48 = *v34;
  v47 = *(v34 + 8);
  v50 = *(v34 + 16);
  v49 = *(v34 + 24);
  LODWORD(v39) = *(v34 + 32);
  v151 = v140;
  v133 = v39;
  LOBYTE(v147) = v39;
  *&v155 = 0xD000000000000025;
  *(&v155 + 1) = 0x800000021478CE10;
  v156 = 0xD00000000000001CLL;
  v157 = 0x800000021478A360;

  sub_213FDC9D0(v50, v49);
  v51 = v48(&v151, &v147, &v155);
  v136 = 0;
  if ((v51 & 1) == 0)
  {
    sub_214031C4C();
    v63 = swift_allocError();
    *v64 = 0xD000000000000025;
    v64[1] = 0x800000021478CE10;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    v136 = v63;
    swift_willThrow();

    sub_21432887C(v130, type metadata accessor for Metadata);
    (*(v143 + 8))(v131, v132);
    v65 = *(v34 + 8);
    v66 = *(v34 + 16);
    v67 = *(v34 + 24);

    sub_213FDC6D0(v66, v67);
    *v34 = v48;
    *(v34 + 8) = v47;
    *(v34 + 16) = v50;
    *(v34 + 24) = v49;
    *(v34 + 32) = v133;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v180);
    return sub_21432887C(v144, type metadata accessor for BasicTextMessage);
  }

  sub_213FDC6D0(v50, v49);

  v52 = *(v34 + 8);
  v53 = *(v34 + 16);
  v54 = *(v34 + 24);

  sub_213FDC6D0(v53, v54);
  *v34 = v48;
  *(v34 + 8) = v47;
  v55 = *(&v140 + 1);
  *(v34 + 16) = v140;
  *(v34 + 24) = v55;
  *(v34 + 32) = v133;
  v57 = *v125;
  v56 = *(v125 + 8);
  v59 = *(v125 + 16);
  v58 = *(v125 + 24);
  v60 = *(v125 + 32);
  *&v151 = v139;
  *(&v151 + 1) = v138;
  DWORD2(v140) = v60;
  LOBYTE(v147) = v60;
  *&v155 = 0xD00000000000002DLL;
  *(&v155 + 1) = 0x800000021478CE40;
  v156 = 0xD00000000000001CLL;
  v157 = 0x800000021478A360;

  *&v140 = v58;
  sub_213FDC9D0(v59, v58);
  v61 = v136;
  v62 = v57(&v151, &v147, &v155);
  v136 = v61;
  if (v61)
  {

LABEL_13:

    sub_21432887C(v130, type metadata accessor for Metadata);
    (*(v143 + 8))(v131, v132);
    v83 = v125;
    v84 = *(v125 + 8);
    v85 = *(v125 + 16);
    v86 = *(v125 + 24);

    sub_213FDC6D0(v85, v86);
    *v83 = v57;
    *(v83 + 8) = v56;
    v87 = v140;
    *(v83 + 16) = v59;
    *(v83 + 24) = v87;
LABEL_14:
    *(v83 + 32) = BYTE8(v140);
    goto LABEL_8;
  }

  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD00000000000002DLL;
    v82[1] = 0x800000021478CE40;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = 0x800000021478A360;
    v136 = v81;
    swift_willThrow();
    goto LABEL_13;
  }

  sub_213FDC6D0(v59, v140);

  v68 = v125;
  v69 = *(v125 + 8);
  v70 = *(v125 + 16);
  v71 = *(v125 + 24);

  sub_213FDC6D0(v70, v71);
  *v68 = v57;
  *(v68 + 8) = v56;
  v72 = v138;
  *(v68 + 16) = v139;
  *(v68 + 24) = v72;
  *(v68 + 32) = BYTE8(v140);
  v74 = *v124;
  v73 = *(v124 + 8);
  v76 = *(v124 + 16);
  v75 = *(v124 + 24);
  v77 = *(v124 + 32);
  *&v151 = v137;
  *(&v151 + 1) = v142;
  DWORD2(v140) = v77;
  LOBYTE(v147) = v77;
  *&v155 = 0xD000000000000018;
  *(&v155 + 1) = 0x800000021478CE70;
  v156 = 0xD00000000000001CLL;
  v157 = 0x800000021478A360;

  v78 = v75;
  sub_213FDC9D0(v76, v75);
  v79 = v136;
  v80 = v74(&v151, &v147, &v155);
  v136 = v79;
  if (v79)
  {

LABEL_19:

    sub_21432887C(v130, type metadata accessor for Metadata);
    (*(v143 + 8))(v131, v132);
    v83 = v124;
    v102 = *(v124 + 8);
    v103 = *(v124 + 16);
    v104 = *(v124 + 24);

    sub_213FDC6D0(v103, v104);
    *v83 = v74;
    *(v83 + 8) = v73;
    *(v83 + 16) = v76;
    *(v83 + 24) = v78;
    goto LABEL_14;
  }

  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    v100 = swift_allocError();
    *v101 = 0xD000000000000018;
    v101[1] = 0x800000021478CE70;
    v101[2] = 0xD00000000000001CLL;
    v101[3] = 0x800000021478A360;
    v136 = v100;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_213FDC6D0(v76, v78);

  v88 = v124;
  v89 = *(v124 + 8);
  v90 = *(v124 + 16);
  v91 = *(v124 + 24);

  sub_213FDC6D0(v90, v91);
  *v88 = v74;
  *(v88 + 8) = v73;
  v92 = v142;
  *(v88 + 16) = v137;
  *(v88 + 24) = v92;
  *(v88 + 32) = BYTE8(v140);
  v94 = *v123;
  v93 = *(v123 + 8);
  v96 = *(v123 + 16);
  v95 = *(v123 + 24);
  v97 = *(v123 + 32);
  *&v151 = v135;
  *(&v151 + 1) = v134;
  LOBYTE(v147) = v97;
  *&v155 = 0xD000000000000021;
  *(&v155 + 1) = 0x800000021478CE90;
  v156 = 0xD00000000000001CLL;
  v157 = 0x800000021478A360;

  v142 = v95;
  sub_213FDC9D0(v96, v95);
  v98 = v136;
  v99 = v94(&v151, &v147, &v155);
  v136 = v98;
  if (v98)
  {

LABEL_23:

    sub_21432887C(v130, type metadata accessor for Metadata);
    (*(v143 + 8))(v131, v132);
    v112 = v123;
    v113 = *(v123 + 8);
    v114 = *(v123 + 16);
    v115 = *(v123 + 24);

    sub_213FDC6D0(v114, v115);
    *v112 = v94;
    *(v112 + 8) = v93;
    v116 = v142;
    *(v112 + 16) = v96;
    *(v112 + 24) = v116;
    *(v112 + 32) = v97;
    goto LABEL_8;
  }

  if ((v99 & 1) == 0)
  {
    sub_214031C4C();
    v110 = swift_allocError();
    *v111 = 0xD000000000000021;
    v111[1] = 0x800000021478CE90;
    v111[2] = 0xD00000000000001CLL;
    v111[3] = 0x800000021478A360;
    v136 = v110;
    swift_willThrow();
    goto LABEL_23;
  }

  sub_213FDC6D0(v96, v142);

  sub_21432887C(v130, type metadata accessor for Metadata);
  (*(v143 + 8))(v131, v132);
  v105 = v123;
  v106 = *(v123 + 8);
  v107 = *(v123 + 16);
  v108 = *(v123 + 24);

  sub_213FDC6D0(v107, v108);
  *v105 = v94;
  *(v105 + 8) = v93;
  v109 = v134;
  *(v105 + 16) = v135;
  *(v105 + 24) = v109;
  *(v105 + 32) = v97;
  sub_214328704(v144, v141, type metadata accessor for BasicTextMessage);
  return __swift_destroy_boxed_opaque_existential_1(v180);
}

uint64_t sub_2140D6618(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A38, &qword_2146F3F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5D28();
  sub_2146DAA28();
  v72 = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for BasicTextMessage();
  v12 = v3;
  v13 = v11;
  v14 = *(v11 + 20);
  v73 = v12;
  v15 = (v12 + v14);
  v16 = v15[8];
  v17 = v15[6];
  v69 = v15[7];
  v70 = v16;
  v18 = v15[8];
  *v71 = v15[9];
  *&v71[9] = *(v15 + 153);
  v19 = v15[3];
  v20 = v15[5];
  v66 = v15[4];
  v67 = v20;
  v21 = v15[5];
  v68 = v15[6];
  v22 = v15[1];
  v23 = v15[3];
  v64 = v15[2];
  v65 = v23;
  v24 = v15[1];
  v63[0] = *v15;
  v63[1] = v24;
  v60 = v69;
  v61 = v18;
  v62[0] = v15[9];
  *(v62 + 9) = *(v15 + 153);
  v57 = v66;
  v58 = v21;
  v59 = v17;
  v53 = v63[0];
  v54 = v22;
  v55 = v64;
  v56 = v19;
  v52 = 1;
  sub_21409C7E8(v63, v50);
  sub_21409EBE8();
  sub_2146DA388();
  v50[7] = v60;
  v50[8] = v61;
  *v51 = v62[0];
  *&v51[9] = *(v62 + 9);
  v50[4] = v57;
  v50[5] = v58;
  v50[6] = v59;
  v50[0] = v53;
  v50[1] = v54;
  v50[2] = v55;
  v50[3] = v56;
  sub_21409C8C0(v50);
  v46 = v13;
  v25 = v13[6];
  v26 = v73;
  v27 = v73 + v25;
  v28 = *(v73 + v25 + 24);
  if (v28 != 1)
  {
    v48 = *(v27 + 16);
    v49 = v28;
    v47 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v29 = v26 + v46[7];
    v30 = *(v29 + 24);
    if (v30 != 1)
    {
      v48 = *(v29 + 16);
      v49 = v30;
      v47 = 3;
      sub_2146DA388();
      v31 = v26 + v46[8];
      v32 = *(v31 + 24);
      if (v32 != 1)
      {
        v48 = *(v31 + 16);
        v49 = v32;
        v47 = 4;
        sub_2146DA388();
        v33 = v26 + v46[9];
        v34 = *(v33 + 24);
        if (v34 != 1)
        {
          v48 = *(v33 + 16);
          v49 = v34;
          v47 = 5;
          sub_2146DA388();
          v35 = v26;
          v36 = v46;
          v37 = (v35 + v46[10]);
          v38 = *v37;
          LOBYTE(v37) = *(v37 + 8);
          v48 = v38;
          LOBYTE(v49) = v37;
          v47 = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
          sub_2142E3778();
          sub_2146DA388();
          v39 = (v73 + v36[11]);
          v40 = *v39;
          LOBYTE(v39) = *(v39 + 8);
          v48 = v40;
          LOBYTE(v49) = v39;
          v47 = 7;
          sub_2146DA388();
          v41 = (v73 + v36[12]);
          v42 = *v41;
          LOBYTE(v41) = *(v41 + 8);
          v48 = v42;
          LOBYTE(v49) = v41;
          v47 = 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
          sub_2142E1C30();
          sub_2146DA388();
          v48 = *(v73 + v36[13]);
          v47 = 9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
          sub_2140459AC();
          sub_2146DA388();
          v43 = (v73 + v36[14]);
          v44 = *v43;
          LOBYTE(v43) = *(v43 + 8);
          v48 = v44;
          LOBYTE(v49) = v43;
          v47 = 10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
          sub_2142E2204();
          sub_2146DA388();
          return (*(v6 + 8))(v9, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140D6CBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_2140D6CC8()
{
  if (*v0)
  {
    result = 0xD000000000000021;
  }

  else
  {
    result = 0x6873696E69467369;
  }

  *v0;
  return result;
}

uint64_t sub_2140D6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873696E69467369 && a2 == 0xEA00000000006465;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000214793E80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140D6DF8(uint64_t a1)
{
  v2 = sub_2142E5D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D6E34(uint64_t a1)
{
  v2 = sub_2142E5D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140D6E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A40, &qword_2146F3F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5D7C();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_2146DA178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v15 = 1;
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11 & 1;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140D7048(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A50, &qword_2146F3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5D7C();
  sub_2146DAA28();
  v14 = 0;
  sub_2146DA338();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2140D7218(char a1)
{
  result = 0x495255646E617262;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x6966697265567369;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6465696669726576;
      break;
    case 9:
      result = 0x65746973626577;
      break;
    case 10:
      result = 0x4E6567617373656DLL;
      break;
    case 11:
      result = 0x6464416C69616D65;
      break;
    case 12:
      result = 0x73736572646461;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x676F4C646E617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140D7420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435D908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140D7448(uint64_t a1)
{
  v2 = sub_2142E5DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D7484(uint64_t a1)
{
  v2 = sub_2142E5DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDBrandInfo.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A58, &qword_2146F3F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v87 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v279 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E5DD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v279);
  }

  v171 = v6;
  v170 = a2;
  LOBYTE(v173) = 0;
  v12 = sub_2146DA168();
  v169 = v13;
  LOBYTE(v173) = 1;
  v14 = sub_2146DA168();
  v16 = v15;
  v168 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v172[0]) = 2;
  sub_2142E1548();
  sub_2146DA1C8();
  v167 = v16;
  v166 = v12;
  v17 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v172[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v165 = v17;
  v18 = v173;
  v19 = v174;
  LOBYTE(v172[0]) = 4;
  sub_2146DA1C8();
  v163 = v18;
  v164 = v19;
  v21 = v173;
  v22 = v174;
  LOBYTE(v172[0]) = 5;
  sub_2146DA1C8();
  v161 = v21;
  v23 = v173;
  v162 = v174;
  LOBYTE(v173) = 6;
  LODWORD(v159) = sub_2146DA178();
  v158 = v23;
  v160 = v22;
  LOBYTE(v172[0]) = 7;
  sub_2146DA1C8();
  v157 = v173;
  v24 = v174;
  LOBYTE(v172[0]) = 8;
  sub_2146DA1C8();
  v25 = v159;
  v156 = v24;
  v154 = v173;
  v155 = v174;
  LOBYTE(v172[0]) = 9;
  v26 = v5;
  sub_2146DA1C8();
  v152 = v173;
  v153 = v174;
  LOBYTE(v172[0]) = 10;
  sub_2146DA1C8();
  v150 = v173;
  v151 = v174;
  LOBYTE(v172[0]) = 11;
  sub_2146DA1C8();
  v148 = v173;
  v149 = v174;
  LOBYTE(v172[0]) = 12;
  sub_2146DA1C8();
  v146 = v173;
  v147 = v174;
  LOBYTE(v172[0]) = 13;
  sub_2146DA1C8();
  v144 = v173;
  v145 = v174;
  LOBYTE(v172[0]) = 14;
  sub_2146DA1C8();
  v142 = v173;
  v143 = v174;
  LOBYTE(v172[0]) = 15;
  sub_2146DA1C8();
  v139 = v173;
  v141 = v174;
  v265 = 16;
  sub_2146DA1C8();
  v91 = v266;
  v92 = v267;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v28 = swift_allocObject();
  LOBYTE(v173) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 100;
  *(v29 + 24) = v173;
  *(v28 + 16) = sub_21438F518;
  *(v28 + 24) = v29;
  *(v27 + 32) = v28;
  sub_214042B80(v27, &v173);
  v30 = v173;
  v31 = v174;
  v87 = v175;
  v32 = v176;
  LODWORD(v28) = v177;
  sub_21449E824(v172);
  v133 = v172[0];
  v137 = v172[2];
  v135 = v172[1];
  v136 = v172[3];
  v134 = LOBYTE(v172[4]);
  sub_21449E858(&v260);
  v128 = v260;
  v132 = v262;
  v130 = v261;
  v131 = v263;
  v129 = v264;
  sub_21449E9A4(v258);
  v123 = v258[0];
  v127 = v258[2];
  v125 = v258[1];
  v126 = v258[3];
  v124 = v259;
  sub_21449EAF0(v256);
  v118 = v256[0];
  v122 = v256[2];
  v120 = v256[1];
  v121 = v256[3];
  v119 = v257;
  sub_21449EC44(v254);
  v113 = v254[0];
  v117 = v254[2];
  v115 = v254[1];
  v116 = v254[3];
  v114 = v255;
  sub_21449F000(v252);
  v108 = v252[0];
  v112 = v252[2];
  v110 = v252[1];
  v111 = v252[3];
  v109 = v253;
  sub_21449F034(v250);
  v103 = v250[0];
  v107 = v250[2];
  v105 = v250[1];
  v106 = v250[3];
  v104 = v251;
  sub_21449F180(v248);
  v98 = v248[0];
  v102 = v248[2];
  v100 = v248[1];
  v101 = v248[3];
  v99 = v249;
  sub_21449F2D4(v246);
  v93 = v246[0];
  v95 = v246[2];
  v96 = v246[3];
  v97 = v246[1];
  v94 = v247;
  v88 = v25 & 1;
  v172[0] = v168;
  v172[1] = v167;
  v90 = v28;
  LOBYTE(v260) = v28;
  v173 = 0xD000000000000011;
  v174 = 0x800000021478A940;
  v175 = 0xD00000000000001CLL;
  v138 = 0x800000021478A360;
  v176 = 0x800000021478A360;
  v159 = v32;

  v140 = v31;
  v89 = v30;
  if (v30(v172, &v260, &v173))
  {
    v33 = v138;

    v172[0] = v163;
    v172[1] = v164;
    LOBYTE(v260) = v134;
    v173 = 0xD00000000000001FLL;
    v174 = 0x800000021478A960;
    v175 = 0xD00000000000001CLL;
    v176 = v33;

    sub_213FDC9D0(v137, v136);
    if (v133(v172, &v260, &v173))
    {
      v35 = v136;
      v34 = v137;
      sub_213FDC6D0(v137, v136);
      v36 = v138;

      sub_213FDC6D0(v34, v35);
      v172[0] = v157;
      v172[1] = v156;
      LOBYTE(v260) = v129;
      v173 = 0xD000000000000021;
      v174 = 0x800000021478A980;
      v175 = 0xD00000000000001CLL;
      v176 = v36;

      sub_213FDC9D0(v132, v131);
      if (v128(v172, &v260, &v173))
      {
        v38 = v131;
        v37 = v132;
        sub_213FDC6D0(v132, v131);
        v39 = v138;

        sub_213FDC6D0(v37, v38);
        v172[0] = v154;
        v172[1] = v155;
        LOBYTE(v260) = v124;
        v173 = 0xD000000000000017;
        v174 = 0x800000021478A9B0;
        v175 = 0xD00000000000001CLL;
        v176 = v39;

        sub_213FDC9D0(v127, v126);
        if (v123(v172, &v260, &v173))
        {
          v40 = v126;
          v41 = v127;
          sub_213FDC6D0(v127, v126);
          v42 = v138;

          sub_213FDC6D0(v41, v40);
          v172[0] = v152;
          v172[1] = v153;
          LOBYTE(v260) = v119;
          v173 = 0xD000000000000014;
          v174 = 0x800000021478A9D0;
          v175 = 0xD00000000000001CLL;
          v176 = v42;

          sub_213FDC9D0(v122, v121);
          if (v118(v172, &v260, &v173))
          {
            v44 = v121;
            v43 = v122;
            sub_213FDC6D0(v122, v121);
            v45 = v138;

            sub_213FDC6D0(v43, v44);
            v172[0] = v150;
            v172[1] = v151;
            LOBYTE(v260) = v114;
            v173 = 0xD00000000000001ALL;
            v174 = 0x800000021478A9F0;
            v175 = 0xD00000000000001CLL;
            v176 = v45;

            sub_213FDC9D0(v117, v116);
            if (v113(v172, &v260, &v173))
            {
              v47 = v116;
              v46 = v117;
              sub_213FDC6D0(v117, v116);
              v48 = v138;

              sub_213FDC6D0(v46, v47);
              v172[0] = v148;
              v172[1] = v149;
              LOBYTE(v260) = v109;
              v173 = 0xD000000000000019;
              v174 = 0x800000021478AA10;
              v175 = 0xD00000000000001CLL;
              v176 = v48;

              sub_213FDC9D0(v112, v111);
              if (v108(v172, &v260, &v173))
              {
                v50 = v111;
                v49 = v112;
                sub_213FDC6D0(v112, v111);
                v51 = v138;

                sub_213FDC6D0(v49, v50);
                v172[0] = v146;
                v172[1] = v147;
                LOBYTE(v260) = v104;
                v173 = 0xD000000000000014;
                v174 = 0x800000021478AA30;
                v175 = 0xD00000000000001CLL;
                v176 = v51;

                sub_213FDC9D0(v107, v106);
                if (v103(v172, &v260, &v173))
                {
                  v69 = v106;
                  v68 = v107;
                  sub_213FDC6D0(v107, v106);
                  v70 = v138;

                  sub_213FDC6D0(v68, v69);
                  v172[0] = v144;
                  v172[1] = v145;
                  LOBYTE(v260) = v99;
                  v173 = 0xD000000000000022;
                  v174 = 0x800000021478AA50;
                  v175 = 0xD00000000000001CLL;
                  v176 = v70;

                  sub_213FDC9D0(v102, v101);
                  if (v98(v172, &v260, &v173))
                  {
                    v73 = v101;
                    v72 = v102;
                    sub_213FDC6D0(v102, v101);
                    v74 = v138;

                    sub_213FDC6D0(v72, v73);
                    v260 = v139;
                    v261 = v141;
                    LOBYTE(v172[0]) = v94;
                    v173 = 0xD000000000000022;
                    v174 = 0x800000021478AA80;
                    v175 = 0xD00000000000001CLL;
                    v176 = v74;

                    sub_213FDC9D0(v95, v96);
                    if (v93(&v260, v172, &v173))
                    {
                      v78 = v95;
                      v77 = v96;
                      sub_213FDC6D0(v95, v96);

                      (*(v171 + 8))(v9, v26);

                      sub_213FDC6D0(v78, v77);
                      *(&v172[17] + 1) = *v276;
                      HIDWORD(v172[22]) = *&v275[3];
                      *(&v172[22] + 1) = *v275;
                      HIDWORD(v172[27]) = *&v274[3];
                      *(&v172[27] + 1) = *v274;
                      *(&v172[32] + 1) = *v273;
                      *(&v172[37] + 1) = *v272;
                      *(&v172[42] + 1) = *v271;
                      *(&v172[47] + 1) = *v270;
                      *(&v172[52] + 1) = *v269;
                      *(&v172[59] + 1) = *v268;
                      *(&v172[6] + 1) = v278[0];
                      HIDWORD(v172[6]) = *(v278 + 3);
                      HIDWORD(v172[12]) = *&v277[3];
                      *(&v172[12] + 1) = *v277;
                      HIDWORD(v172[17]) = *&v276[3];
                      HIDWORD(v172[32]) = *&v273[3];
                      HIDWORD(v172[37]) = *&v272[3];
                      HIDWORD(v172[42]) = *&v271[3];
                      HIDWORD(v172[47]) = *&v270[3];
                      HIDWORD(v172[52]) = *&v269[3];
                      HIDWORD(v172[59]) = *&v268[3];
                      v172[0] = v166;
                      v79 = v169;
                      v172[1] = v169;
                      v172[2] = v89;
                      v172[3] = v140;
                      v172[4] = v168;
                      v172[5] = v167;
                      LOBYTE(v172[6]) = v90;
                      v80 = v165;
                      v172[7] = v165;
                      v172[8] = v133;
                      v172[9] = v135;
                      v172[10] = v163;
                      v172[11] = v164;
                      LOBYTE(v172[12]) = v134;
                      v172[13] = v161;
                      v81 = v160;
                      v172[14] = v160;
                      v172[15] = v158;
                      v172[16] = v162;
                      LOBYTE(v172[17]) = v88;
                      v172[18] = v128;
                      v172[19] = v130;
                      v172[20] = v157;
                      v172[21] = v156;
                      LOBYTE(v172[22]) = v129;
                      v172[23] = v123;
                      v172[24] = v125;
                      v172[25] = v154;
                      v82 = v155;
                      v172[26] = v155;
                      LOBYTE(v172[27]) = v124;
                      v172[28] = v118;
                      v172[29] = v120;
                      v172[30] = v152;
                      v172[31] = v153;
                      LOBYTE(v172[32]) = v119;
                      v83 = v113;
                      v172[33] = v113;
                      v84 = v115;
                      v172[34] = v115;
                      v172[35] = v150;
                      v172[36] = v151;
                      LOBYTE(v172[37]) = v114;
                      v172[38] = v108;
                      v172[39] = v110;
                      v172[40] = v148;
                      v172[41] = v149;
                      LOBYTE(v172[42]) = v109;
                      v172[43] = v103;
                      v172[44] = v105;
                      v172[45] = v146;
                      v172[46] = v147;
                      LOBYTE(v172[47]) = v104;
                      v172[48] = v98;
                      v172[49] = v100;
                      v172[50] = v144;
                      v172[51] = v145;
                      LOBYTE(v172[52]) = v99;
                      v172[53] = v142;
                      v172[54] = v143;
                      v172[55] = v93;
                      v172[56] = v97;
                      v172[57] = v139;
                      v172[58] = v141;
                      LOBYTE(v172[59]) = v94;
                      v172[60] = v91;
                      v172[61] = v92;
                      memcpy(v170, v172, 0x1F0uLL);
                      sub_2142E5E24(v172, &v173);
                      __swift_destroy_boxed_opaque_existential_1(v279);
                      v173 = v166;
                      v174 = v79;
                      v175 = v89;
                      v176 = v140;
                      v177 = v168;
                      v178 = v167;
                      v179 = v90;
                      v181 = v80;
                      v182 = v133;
                      v183 = v135;
                      v184 = v163;
                      v185 = v164;
                      v186 = v134;
                      v188 = v161;
                      v189 = v81;
                      v190 = v158;
                      v191 = v162;
                      v192 = v88;
                      v194 = v128;
                      v195 = v130;
                      v196 = v157;
                      v197 = v156;
                      v198 = v129;
                      v200 = v123;
                      v201 = v125;
                      v202 = v154;
                      v203 = v82;
                      v204 = v124;
                      v206 = v118;
                      v207 = v120;
                      v208 = v152;
                      v209 = v153;
                      v210 = v119;
                      v212 = v83;
                      v213 = v84;
                      *v180 = v278[0];
                      *&v180[3] = *(v278 + 3);
                      *&v187[3] = *&v277[3];
                      *v187 = *v277;
                      *v193 = *v276;
                      *&v193[3] = *&v276[3];
                      *&v199[3] = *&v275[3];
                      *v199 = *v275;
                      *&v205[3] = *&v274[3];
                      *v205 = *v274;
                      *v211 = *v273;
                      *&v211[3] = *&v273[3];
                      v214 = v150;
                      v215 = v151;
                      v216 = v114;
                      *v217 = *v272;
                      *&v217[3] = *&v272[3];
                      v218 = v108;
                      v219 = v110;
                      v220 = v148;
                      v221 = v149;
                      v222 = v109;
                      *v223 = *v271;
                      *&v223[3] = *&v271[3];
                      v224 = v103;
                      v225 = v105;
                      v226 = v146;
                      v227 = v147;
                      v228 = v104;
                      *v229 = *v270;
                      *&v229[3] = *&v270[3];
                      v230 = v98;
                      v231 = v100;
                      v232 = v144;
                      v233 = v145;
                      v234 = v99;
                      *v235 = *v269;
                      *&v235[3] = *&v269[3];
                      v236 = v142;
                      v237 = v143;
                      v238 = v93;
                      v239 = v97;
                      v240 = v139;
                      v241 = v141;
                      v242 = v94;
                      v54 = *&v268[3];
                      v55 = *v268;
                      goto LABEL_14;
                    }

                    sub_214031C4C();
                    swift_allocError();
                    *v85 = 0xD000000000000022;
                    v85[1] = 0x800000021478AA80;
                    v86 = v138;
                    v85[2] = 0xD00000000000001CLL;
                    v85[3] = v86;
                    swift_willThrow();

                    (*(v171 + 8))(v9, v26);

                    sub_213FDC6D0(v95, v96);
                    v159 = v167;
                    v136 = v164;
                    v137 = v163;
                    v131 = v156;
                    v132 = v157;
                    v126 = v155;
                    v127 = v154;
                    v121 = v153;
                    v122 = v152;
                    v116 = v151;
                    v117 = v150;
                    v111 = v149;
                    v112 = v148;
                    v106 = v147;
                    v107 = v146;
                    v101 = v145;
                    v102 = v144;
                  }

                  else
                  {
                    sub_214031C4C();
                    swift_allocError();
                    *v75 = 0xD000000000000022;
                    v75[1] = 0x800000021478AA50;
                    v76 = v138;
                    v75[2] = 0xD00000000000001CLL;
                    v75[3] = v76;
                    swift_willThrow();

                    (*(v171 + 8))(v9, v26);

                    sub_213FDC6D0(v102, v101);
                    v159 = v167;
                    v136 = v164;
                    v137 = v163;
                    v131 = v156;
                    v132 = v157;
                    v126 = v155;
                    v127 = v154;
                    v121 = v153;
                    v122 = v152;
                    v116 = v151;
                    v117 = v150;
                    v111 = v149;
                    v112 = v148;
                    v106 = v147;
                    v107 = v146;
                  }
                }

                else
                {
                  sub_214031C4C();
                  swift_allocError();
                  *v71 = 0xD000000000000014;
                  v71[1] = 0x800000021478AA30;
                  v71[2] = 0xD00000000000001CLL;
                  v71[3] = v138;
                  swift_willThrow();

                  (*(v171 + 8))(v9, v26);

                  sub_213FDC6D0(v107, v106);
                  v159 = v167;
                  v136 = v164;
                  v137 = v163;
                  v131 = v156;
                  v132 = v157;
                  v126 = v155;
                  v127 = v154;
                  v121 = v153;
                  v122 = v152;
                  v116 = v151;
                  v117 = v150;
                  v111 = v149;
                  v112 = v148;
                }
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v66 = 0xD000000000000019;
                v66[1] = 0x800000021478AA10;
                v67 = v138;
                v66[2] = 0xD00000000000001CLL;
                v66[3] = v67;
                swift_willThrow();

                (*(v171 + 8))(v9, v26);

                sub_213FDC6D0(v112, v111);
                v159 = v167;
                v136 = v164;
                v137 = v163;
                v131 = v156;
                v132 = v157;
                v126 = v155;
                v127 = v154;
                v121 = v153;
                v122 = v152;
                v116 = v151;
                v117 = v150;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v64 = 0xD00000000000001ALL;
              v64[1] = 0x800000021478A9F0;
              v65 = v138;
              v64[2] = 0xD00000000000001CLL;
              v64[3] = v65;
              swift_willThrow();

              (*(v171 + 8))(v9, v26);

              sub_213FDC6D0(v117, v116);
              v159 = v167;
              v136 = v164;
              v137 = v163;
              v131 = v156;
              v132 = v157;
              v126 = v155;
              v127 = v154;
              v121 = v153;
              v122 = v152;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v62 = 0xD000000000000014;
            v62[1] = 0x800000021478A9D0;
            v63 = v138;
            v62[2] = 0xD00000000000001CLL;
            v62[3] = v63;
            swift_willThrow();

            (*(v171 + 8))(v9, v26);

            sub_213FDC6D0(v122, v121);
            v159 = v167;
            v136 = v164;
            v137 = v163;
            v131 = v156;
            v132 = v157;
            v126 = v155;
            v127 = v154;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v60 = 0xD000000000000017;
          v60[1] = 0x800000021478A9B0;
          v61 = v138;
          v60[2] = 0xD00000000000001CLL;
          v60[3] = v61;
          swift_willThrow();

          (*(v171 + 8))(v9, v26);

          sub_213FDC6D0(v127, v126);
          v159 = v167;
          v136 = v164;
          v137 = v163;
          v131 = v156;
          v132 = v157;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v58 = 0xD000000000000021;
        v58[1] = 0x800000021478A980;
        v59 = v138;
        v58[2] = 0xD00000000000001CLL;
        v58[3] = v59;
        swift_willThrow();

        (*(v171 + 8))(v9, v26);

        sub_213FDC6D0(v132, v131);
        v159 = v167;
        v136 = v164;
        v137 = v163;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v56 = 0xD00000000000001FLL;
      v56[1] = 0x800000021478A960;
      v57 = v138;
      v56[2] = 0xD00000000000001CLL;
      v56[3] = v57;
      swift_willThrow();

      (*(v171 + 8))(v9, v26);

      sub_213FDC6D0(v137, v136);
      v159 = v167;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000011;
    v52[1] = 0x800000021478A940;
    v53 = v138;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = v53;
    swift_willThrow();

    (*(v171 + 8))(v9, v26);

    v168 = v87;
  }

  __swift_destroy_boxed_opaque_existential_1(v279);
  v173 = v166;
  v174 = v169;
  v175 = v89;
  v176 = v140;
  v177 = v168;
  v178 = v159;
  v179 = v90;
  v181 = v165;
  v182 = v133;
  v183 = v135;
  v184 = v137;
  v185 = v136;
  v186 = v134;
  v188 = v161;
  v189 = v160;
  v190 = v158;
  v191 = v162;
  v192 = v88;
  v194 = v128;
  v195 = v130;
  v196 = v132;
  v197 = v131;
  v198 = v129;
  v200 = v123;
  v201 = v125;
  v202 = v127;
  v203 = v126;
  v204 = v124;
  v206 = v118;
  v207 = v120;
  v208 = v122;
  v209 = v121;
  v210 = v119;
  *v180 = v278[0];
  *&v187[3] = *&v277[3];
  *v187 = *v277;
  *&v193[3] = *&v276[3];
  *v193 = *v276;
  *&v199[3] = *&v275[3];
  *v199 = *v275;
  *&v205[3] = *&v274[3];
  *v205 = *v274;
  *v211 = *v273;
  *&v180[3] = *(v278 + 3);
  *&v211[3] = *&v273[3];
  v212 = v113;
  v213 = v115;
  v214 = v117;
  v215 = v116;
  v216 = v114;
  *v217 = *v272;
  *&v217[3] = *&v272[3];
  v218 = v108;
  v219 = v110;
  v220 = v112;
  v221 = v111;
  v222 = v109;
  *v223 = *v271;
  *&v223[3] = *&v271[3];
  v224 = v103;
  v225 = v105;
  v226 = v107;
  v227 = v106;
  v228 = v104;
  *v229 = *v270;
  *&v229[3] = *&v270[3];
  v230 = v98;
  v231 = v100;
  v232 = v102;
  v233 = v101;
  v234 = v99;
  *v235 = *v269;
  *&v235[3] = *&v269[3];
  v236 = v142;
  v237 = v143;
  v238 = v93;
  v239 = v97;
  v240 = v95;
  v241 = v96;
  v242 = v94;
  v54 = *&v268[3];
  v55 = *v268;
LABEL_14:
  *v243 = v55;
  *&v243[3] = v54;
  v244 = v91;
  v245 = v92;
  return sub_214045958(&v173);
}

uint64_t MBDBrandInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A68, &qword_2146F3F60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[5];
  v61 = v1[4];
  v62 = v10;
  v11 = v1[7];
  v12 = v1[10];
  v59 = v1[11];
  v60 = v11;
  v13 = v1[13];
  v57 = v1[14];
  v58 = v12;
  v14 = v1[15];
  v55 = v1[16];
  v56 = v13;
  v66 = *(v1 + 136);
  v15 = v1[20];
  v50 = v1[21];
  v51 = v15;
  v16 = v1[26];
  v53 = v1[25];
  v54 = v14;
  v17 = v1[31];
  v52 = v1[30];
  v48 = v17;
  v49 = v16;
  v18 = v1[36];
  v46 = v1[35];
  v47 = v18;
  v19 = v1[41];
  v44 = v1[40];
  v45 = v19;
  v20 = v1[46];
  v42 = v1[45];
  v43 = v20;
  v21 = v1[51];
  v40 = v1[50];
  v41 = v21;
  v22 = v1[54];
  v38 = v1[53];
  v39 = v22;
  v23 = v1[58];
  v36 = v1[57];
  v37 = v23;
  v24 = v1[61];
  v35 = v1[60];
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1;
  v29 = v28;
  __swift_project_boxed_opaque_existential_1(v27, v25);
  sub_2142E5DD0();
  sub_2146DAA28();
  LOBYTE(v64) = 0;
  v30 = v63;
  sub_2146DA328();
  if (v30)
  {
    return (*(v4 + 8))(v7, v29);
  }

  v32 = v60;
  v33 = v59;
  v63 = v24;
  if (!v62)
  {
    goto LABEL_14;
  }

  LOBYTE(v64) = 1;

  sub_2146DA328();

  v64 = v32;
  v67 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();
  if (v33 == 1)
  {
    goto LABEL_14;
  }

  v64 = v58;
  v65 = v33;
  v67 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v64 = v56;
  v65 = v57;
  v67 = 4;
  sub_2146DA388();
  v64 = v54;
  v65 = v55;
  v67 = 5;
  sub_2146DA388();
  LOBYTE(v64) = 6;
  sub_2146DA338();
  if (v50 == 1)
  {
    goto LABEL_14;
  }

  v64 = v51;
  v65 = v50;
  v67 = 7;
  sub_2146DA388();
  v34 = v52;
  if (v49 == 1)
  {
    goto LABEL_14;
  }

  v64 = v53;
  v65 = v49;
  v67 = 8;
  sub_2146DA388();
  if (v48 == 1)
  {
    goto LABEL_14;
  }

  v64 = v34;
  v65 = v48;
  v67 = 9;
  sub_2146DA388();
  if (v47 == 1)
  {
    goto LABEL_14;
  }

  v64 = v46;
  v65 = v47;
  v67 = 10;
  sub_2146DA388();
  if (v45 == 1)
  {
    goto LABEL_14;
  }

  v64 = v44;
  v65 = v45;
  v67 = 11;
  sub_2146DA388();
  if (v43 == 1)
  {
    goto LABEL_14;
  }

  v64 = v42;
  v65 = v43;
  v67 = 12;
  sub_2146DA388();
  if (v41 == 1)
  {
    goto LABEL_14;
  }

  v64 = v40;
  v65 = v41;
  v67 = 13;
  sub_2146DA388();
  v64 = v38;
  v65 = v39;
  v67 = 14;
  sub_2146DA388();
  if (v37 == 1)
  {
LABEL_14:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v64 = v36;
    v65 = v37;
    v67 = 15;
    sub_2146DA388();
    v64 = v35;
    v65 = v63;
    v67 = 16;
    sub_2146DA388();
    return (*(v4 + 8))(v7, v29);
  }

  return result;
}

uint64_t sub_2140DA16C(uint64_t a1)
{
  v2 = sub_2142E5E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DA1A8(uint64_t a1)
{
  v2 = sub_2142E5E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CSDMHandle.init(with:genericHandle:phoneNumber:emailAddress:isoCountryCode:siriDisplayName:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = *a1;
  sub_214650EB4(&v68);
  v15 = v68;
  v14 = v69;
  v17 = v70;
  v16 = v71;
  v18 = v72;
  sub_214651000(&v104);
  v64 = v104;
  v66 = v105;
  v114 = v106;
  v67 = v107;
  v65 = v108;
  sub_214651034(v102);
  v58 = v102[0];
  v63 = v102[2];
  v61 = v102[1];
  v62 = v102[3];
  v59 = v103;
  sub_214651068(v100);
  v54 = v100[0];
  v52 = v100[2];
  v56 = v100[1];
  v57 = v100[3];
  v55 = v101;
  sub_2146511B4(v98);
  v49 = v98[1];
  v50 = v98[0];
  v51 = v98[2];
  v45 = v98[3];
  v44 = v99;
  v104 = a2;
  v105 = a3;
  v47 = v18;
  LOBYTE(v102[0]) = v18;
  v68 = 0xD000000000000018;
  v69 = 0x800000021478CEC0;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v17, v16);
  v19 = v14;
  v20 = v15(&v104, v102, &v68);
  if (v48)
  {

    v21 = v50;
LABEL_6:

    sub_213FDC6D0(v17, v16);
    v24 = v44;
    v25 = v49;
    v26 = v45;
LABEL_7:
    v27 = v52;
LABEL_8:
    LOBYTE(v68) = v46;
    *(&v68 + 1) = v113[0];
    HIDWORD(v68) = *(v113 + 3);
    v69 = v15;
    v70 = v19;
    v71 = v17;
    v72 = v16;
    v73 = v47;
    *v74 = *v112;
    *&v74[3] = *&v112[3];
    v75 = v64;
    v76 = v66;
    v77 = v114;
    v78 = v67;
    v79 = v65;
    *&v80[3] = *&v111[3];
    *v80 = *v111;
    v81 = v58;
    v82 = v61;
    v83 = v63;
    v84 = v62;
    v85 = v59;
    *&v86[3] = *&v110[3];
    *v86 = *v110;
    v87 = v54;
    v88 = v56;
    v89 = v27;
    v90 = v57;
    v91 = v55;
    *&v92[3] = *&v109[3];
    *v92 = *v109;
    v93 = v21;
    v94 = v25;
    v95 = v51;
    v96 = v26;
    v97 = v24;
    return sub_2142E5ED4(&v68);
  }

  v38 = a2;
  v39 = a3;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000018;
    v23[1] = 0x800000021478CEC0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v50;
    goto LABEL_6;
  }

  sub_213FDC6D0(v17, v16);

  sub_213FDC6D0(v17, v16);
  v104 = a4;
  v105 = a5;
  LOBYTE(v102[0]) = v65;
  v68 = 0xD000000000000016;
  v69 = 0x800000021478CEE0;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v114, v67);
  v22 = v64(&v104, v102, &v68);
  v24 = v44;
  v26 = v45;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000016;
    v31[1] = 0x800000021478CEE0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v49;
    v21 = v50;

    sub_213FDC6D0(v114, v67);
    v17 = v38;
    v16 = v39;
    goto LABEL_7;
  }

  v29 = v114;
  sub_213FDC6D0(v114, v67);

  sub_213FDC6D0(v29, v67);
  v104 = a6;
  v105 = a7;
  LOBYTE(v102[0]) = v59;
  v68 = 0xD000000000000017;
  v69 = 0x800000021478CF00;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v63, v62);
  v25 = v49;
  if ((v58(&v104, v102, &v68) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000017;
    v32[1] = 0x800000021478CF00;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v50;

    sub_213FDC6D0(v63, v62);
    v17 = v38;
    v16 = v39;
    v114 = a4;
    v67 = a5;
    goto LABEL_7;
  }

  sub_213FDC6D0(v63, v62);

  sub_213FDC6D0(v63, v62);
  v104 = a8;
  v105 = a10;
  LOBYTE(v102[0]) = v55;
  v114 = 0xD000000000000019;
  v68 = 0xD000000000000019;
  v69 = 0x800000021478CF20;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v52, v57);
  v30 = v54(&v104, v102, &v68);
  v33 = v114;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = v33;
    v35[1] = 0x800000021478CF20;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v50;
    v17 = v38;

    v27 = v52;
    sub_213FDC6D0(v52, v57);
    v16 = v39;
    v114 = a4;
    v67 = a5;
    v62 = a7;
    v63 = a6;
    goto LABEL_8;
  }

  v114 = a11;
  sub_213FDC6D0(v52, v57);

  sub_213FDC6D0(v52, v57);
  v104 = v114;
  v105 = a12;
  LOBYTE(v102[0]) = v44;
  v68 = 0xD00000000000001ALL;
  v69 = 0x800000021478CF40;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v51, v45);
  v34 = v50(&v104, v102, &v68);
  v21 = v50;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001ALL;
    v37[1] = 0x800000021478CF40;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v51, v45);
    v17 = v38;
    v16 = v39;
    v114 = a4;
    v67 = a5;
    v27 = a8;
    v62 = a7;
    v63 = a6;
    v57 = a10;
    goto LABEL_8;
  }

  sub_213FDC6D0(v51, v45);

  result = sub_213FDC6D0(v51, v45);
  *a9 = v46;
  *(a9 + 1) = v113[0];
  *(a9 + 4) = *(v113 + 3);
  *(a9 + 8) = v15;
  *(a9 + 16) = v19;
  *(a9 + 24) = v38;
  *(a9 + 32) = v39;
  *(a9 + 40) = v47;
  *(a9 + 41) = *v112;
  *(a9 + 44) = *&v112[3];
  *(a9 + 48) = v64;
  *(a9 + 56) = v66;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = v65;
  *(a9 + 84) = *&v111[3];
  *(a9 + 81) = *v111;
  *(a9 + 88) = v58;
  *(a9 + 96) = v61;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v59;
  *(a9 + 124) = *&v110[3];
  *(a9 + 121) = *v110;
  *(a9 + 128) = v54;
  *(a9 + 136) = v56;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  *(a9 + 160) = v55;
  v36 = *v109;
  *(a9 + 164) = *&v109[3];
  *(a9 + 161) = v36;
  *(a9 + 168) = v50;
  *(a9 + 176) = v49;
  *(a9 + 184) = v114;
  *(a9 + 192) = a12;
  *(a9 + 200) = v44;
  return result;
}

uint64_t sub_2140DACEC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6464416C69616D65;
  v4 = 0x746E756F436F7369;
  if (v1 != 4)
  {
    v4 = 0x7073694469726973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x48636972656E6567;
  if (v1 != 1)
  {
    v5 = 0x6D754E656E6F6870;
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

uint64_t sub_2140DADD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435DE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140DADFC(uint64_t a1)
{
  v2 = sub_2142E5F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DAE38(uint64_t a1)
{
  v2 = sub_2142E5F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CSDMHandle.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A88, &qword_2146F3F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v74 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E5F28();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v172);
  }

  v112 = a2;
  LOBYTE(v113) = 0;
  sub_2142E5F7C();
  sub_2146DA1C8();
  v111 = v6;
  v12 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v113) = 1;
  sub_2142E12FC();
  v13 = v5;
  sub_2146DA1C8();
  v110 = v12;
  v14 = v125;
  v15 = v126;
  LOBYTE(v113) = 2;
  sub_2146DA1C8();
  v108 = v14;
  v16 = v125;
  v109 = v126;
  LOBYTE(v113) = 3;
  sub_2146DA1C8();
  v106 = v125;
  v107 = v16;
  v17 = v126;
  LOBYTE(v113) = 4;
  sub_2146DA1C8();
  v105 = v17;
  v18 = v125;
  v104 = v126;
  v164 = 5;
  sub_2146DA1C8();
  v78 = v13;
  v20 = v15;
  v75 = v18;
  v76 = v165;
  v83 = v166;
  sub_214650EB4(&v125);
  v21 = v125;
  v22 = v126;
  v23 = v127;
  v24 = v128;
  LODWORD(v13) = v129;
  sub_214651000(&v113);
  v97 = v114;
  v101 = *(&v113 + 1);
  v98 = v113;
  v102 = *(&v114 + 1);
  v99 = v115;
  sub_214651034(&v159);
  v96 = v160;
  v93 = v161;
  v94 = v159;
  v92 = v162;
  v95 = v163;
  sub_214651068(v157);
  v90 = v157[1];
  v91 = v157[2];
  v87 = v157[3];
  v88 = v157[0];
  v89 = v158;
  sub_2146511B4(v155);
  v81 = v155[0];
  v84 = v155[2];
  v85 = v155[3];
  v86 = v155[1];
  v82 = v156;
  *&v113 = v108;
  *(&v113 + 1) = v20;
  v79 = v20;
  v80 = v13;
  LOBYTE(v159) = v13;
  v125 = 0xD000000000000018;
  v126 = 0x800000021478CEC0;
  v127 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;
  v128 = 0x800000021478A360;

  sub_213FDC9D0(v23, v24);
  v100 = v22;
  v77 = v21;
  v25 = v21(&v113, &v159, &v125);
  v26 = v109;
  if (v25)
  {
    sub_213FDC6D0(v23, v24);
    v27 = v103;

    sub_213FDC6D0(v23, v24);
    *&v113 = v107;
    *(&v113 + 1) = v26;
    LOBYTE(v159) = v99;
    v125 = 0xD000000000000016;
    v126 = 0x800000021478CEE0;
    v127 = 0xD00000000000001CLL;
    v128 = v27;

    sub_213FDC9D0(v97, v102);
    v28 = v98(&v113, &v159, &v125);
    v36 = v76;
    if (v28)
    {
      v37 = v97;
      v38 = v102;
      sub_213FDC6D0(v97, v102);
      v39 = v103;

      sub_213FDC6D0(v37, v38);
      *&v113 = v106;
      *(&v113 + 1) = v105;
      LOBYTE(v159) = v95;
      v125 = 0xD000000000000017;
      v126 = 0x800000021478CF00;
      v127 = 0xD00000000000001CLL;
      v128 = v39;

      sub_213FDC9D0(v93, v92);
      v40 = v94(&v113, &v159, &v125);
      if (v40)
      {
        v44 = v92;
        v43 = v93;
        sub_213FDC6D0(v93, v92);
        v45 = v103;

        sub_213FDC6D0(v43, v44);
        *&v113 = v75;
        *(&v113 + 1) = v104;
        LOBYTE(v159) = v89;
        v125 = 0xD000000000000019;
        v126 = 0x800000021478CF20;
        v127 = 0xD00000000000001CLL;
        v128 = v45;

        sub_213FDC9D0(v91, v87);
        v46 = v88(&v113, &v159, &v125);
        if (v46)
        {
          v49 = v91;
          v50 = v87;
          sub_213FDC6D0(v91, v87);
          v51 = v103;

          sub_213FDC6D0(v49, v50);
          v159 = v36;
          v160 = v83;
          LOBYTE(v113) = v82;
          v125 = 0xD00000000000001ALL;
          v126 = 0x800000021478CF40;
          v127 = 0xD00000000000001CLL;
          v128 = v51;

          sub_213FDC9D0(v84, v85);
          v52 = v81(&v159, &v113, &v125);
          if (v52)
          {
            v56 = v84;
            v55 = v85;
            sub_213FDC6D0(v84, v85);

            (*(v111 + 8))(v9, v78);
            v57 = v86;

            sub_213FDC6D0(v56, v55);
            LOBYTE(v113) = v110;
            *(&v113 + 1) = v171[0];
            DWORD1(v113) = *(v171 + 3);
            v58 = v77;
            *(&v113 + 1) = v77;
            *&v114 = v100;
            v59 = v79;
            *(&v114 + 1) = v108;
            *&v115 = v79;
            BYTE8(v115) = v80;
            *(&v115 + 9) = *v170;
            HIDWORD(v115) = *&v170[3];
            *&v116 = v98;
            *(&v116 + 1) = v101;
            *&v117 = v107;
            *(&v117 + 1) = v109;
            LOBYTE(v118) = v99;
            *(&v118 + 1) = *v169;
            DWORD1(v118) = *&v169[3];
            *(&v118 + 1) = v94;
            *&v119 = v96;
            *(&v119 + 1) = v106;
            *&v120 = v105;
            BYTE8(v120) = v95;
            *(&v120 + 9) = *v168;
            HIDWORD(v120) = *&v168[3];
            *&v121 = v88;
            *(&v121 + 1) = v90;
            v60 = v75;
            *&v122 = v75;
            *(&v122 + 1) = v104;
            LOBYTE(v123) = v89;
            DWORD1(v123) = *&v167[3];
            *(&v123 + 1) = *v167;
            v61 = v81;
            *(&v123 + 1) = v81;
            *&v124[0] = v57;
            *(&v124[0] + 1) = v36;
            *&v124[1] = v83;
            LOBYTE(v57) = v82;
            BYTE8(v124[1]) = v82;
            v62 = v113;
            v63 = v114;
            v64 = v116;
            v65 = v112;
            v112[2] = v115;
            v65[3] = v64;
            *v65 = v62;
            v65[1] = v63;
            v66 = v117;
            v67 = v118;
            v68 = v120;
            v65[6] = v119;
            v65[7] = v68;
            v65[4] = v66;
            v65[5] = v67;
            v69 = v121;
            v70 = v122;
            *(v65 + 185) = *(v124 + 9);
            v71 = v124[0];
            v65[10] = v123;
            v65[11] = v71;
            v65[8] = v69;
            v65[9] = v70;
            sub_2142E5FD0(&v113, &v125);
            __swift_destroy_boxed_opaque_existential_1(v172);
            LOBYTE(v125) = v110;
            *(&v125 + 1) = v171[0];
            HIDWORD(v125) = *(v171 + 3);
            v126 = v58;
            v127 = v100;
            v128 = v108;
            v129 = v59;
            v130 = v80;
            *v131 = *v170;
            *&v131[3] = *&v170[3];
            v132 = v98;
            v133 = v101;
            v134 = v107;
            v135 = v109;
            v136 = v99;
            *v137 = *v169;
            *&v137[3] = *&v169[3];
            v138 = v94;
            v139 = v96;
            v140 = v106;
            v141 = v105;
            v142 = v95;
            *v143 = *v168;
            *&v143[3] = *&v168[3];
            v144 = v88;
            v145 = v90;
            v146 = v60;
            v147 = v104;
            v148 = v89;
            *&v149[3] = *&v167[3];
            *v149 = *v167;
            v150 = v61;
            v151 = v86;
            v152 = v76;
            v153 = v83;
            v154 = v57;
            return sub_2142E5ED4(&v125);
          }

          sub_214031C4C();
          swift_allocError();
          *v72 = 0xD00000000000001ALL;
          v72[1] = 0x800000021478CF40;
          v73 = v103;
          v72[2] = 0xD00000000000001CLL;
          v72[3] = v73;
          swift_willThrow();

          (*(v111 + 8))(v9, v78);

          sub_213FDC6D0(v84, v85);
          v35 = v107;
          v31 = v108;
          v24 = v79;
          v102 = v109;
          v34 = v105;
          v33 = v106;
          v91 = v75;
          v32 = v104;
          v30 = v100;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v53 = 0xD000000000000019;
          v53[1] = 0x800000021478CF20;
          v54 = v103;
          v53[2] = 0xD00000000000001CLL;
          v53[3] = v54;
          swift_willThrow();

          (*(v111 + 8))(v9, v78);

          v32 = v87;
          sub_213FDC6D0(v91, v87);
          v35 = v107;
          v31 = v108;
          v24 = v79;
          v102 = v109;
          v34 = v105;
          v33 = v106;
          v30 = v100;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v47 = 0xD000000000000017;
        v47[1] = 0x800000021478CF00;
        v48 = v103;
        v47[2] = 0xD00000000000001CLL;
        v47[3] = v48;
        swift_willThrow();

        (*(v111 + 8))(v9, v78);

        v34 = v92;
        v33 = v93;
        sub_213FDC6D0(v93, v92);
        v35 = v107;
        v31 = v108;
        v24 = v79;
        v102 = v109;
        v30 = v100;
        v32 = v87;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD000000000000016;
      v41[1] = 0x800000021478CEE0;
      v42 = v103;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v42;
      swift_willThrow();

      (*(v111 + 8))(v9, v78);

      v35 = v97;
      sub_213FDC6D0(v97, v102);
      v31 = v108;
      v24 = v79;
      v32 = v87;
      v34 = v92;
      v33 = v93;
      v30 = v100;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000018;
    v29[1] = 0x800000021478CEC0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v103;
    swift_willThrow();

    v30 = v100;
    v31 = v23;

    (*(v111 + 8))(v9, v78);

    sub_213FDC6D0(v23, v24);
    v32 = v87;
    v34 = v92;
    v33 = v93;
    v35 = v97;
  }

  __swift_destroy_boxed_opaque_existential_1(v172);
  LOBYTE(v125) = v110;
  *(&v125 + 1) = v171[0];
  HIDWORD(v125) = *(v171 + 3);
  v126 = v77;
  v127 = v30;
  v128 = v31;
  v129 = v24;
  v130 = v80;
  *v131 = *v170;
  *&v131[3] = *&v170[3];
  v132 = v98;
  v133 = v101;
  v134 = v35;
  v135 = v102;
  v136 = v99;
  *&v137[3] = *&v169[3];
  *v137 = *v169;
  v138 = v94;
  v139 = v96;
  v140 = v33;
  v141 = v34;
  v142 = v95;
  *&v143[3] = *&v168[3];
  *v143 = *v168;
  v144 = v88;
  v145 = v90;
  v146 = v91;
  v147 = v32;
  v148 = v89;
  *&v149[3] = *&v167[3];
  *v149 = *v167;
  v150 = v81;
  v151 = v86;
  v152 = v84;
  v153 = v85;
  v154 = v82;
  return sub_2142E5ED4(&v125);
}

uint64_t CSDMHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AA0, &qword_2146F3F80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v11 = *(v1 + 9);
  v29 = *(v1 + 8);
  v30 = v9;
  v12 = *(v1 + 13);
  v24 = *(v1 + 14);
  v25 = v12;
  v13 = *(v1 + 19);
  v26 = *(v1 + 18);
  v14 = *(v1 + 24);
  v27 = *(v1 + 23);
  v28 = v11;
  v22 = v14;
  v23 = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5F28();
  sub_2146DAA28();
  LOBYTE(v32) = v8;
  v34 = 0;
  sub_2142E602C();
  v16 = v31;
  sub_2146DA388();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v29;
  v19 = v28;
  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v32 = v30;
  v33 = v10;
  v34 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v19 == 1)
  {
    goto LABEL_15;
  }

  v32 = v18;
  v33 = v19;
  v34 = 2;
  sub_2146DA388();
  v21 = v26;
  v20 = v27;
  if (v24 == 1)
  {
    goto LABEL_15;
  }

  v32 = v25;
  v33 = v24;
  v34 = 3;
  sub_2146DA388();
  if (v23 == 1 || (v32 = v21, v33 = v23, v34 = 4, sub_2146DA388(), v22 == 1))
  {
LABEL_15:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v20;
    v33 = v22;
    v34 = 5;
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_2140DC200@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void, char *, _BYTE *)@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v101 = a8;
  sub_214651940(&v79);
  v16 = a2[8];
  *&v85[147] = a2[9];
  v17 = a2[11];
  *&v85[163] = a2[10];
  *&v85[179] = v17;
  *&v85[188] = *(a2 + 185);
  v18 = a2[4];
  *&v85[83] = a2[5];
  v19 = a2[7];
  *&v85[99] = a2[6];
  *&v85[115] = v19;
  *&v85[131] = v16;
  v20 = *a2;
  *&v85[19] = a2[1];
  v21 = a2[3];
  *&v85[35] = a2[2];
  *&v85[51] = v21;
  *&v85[67] = v18;
  *&v85[3] = v20;
  v22 = a5[8];
  *&v55[151] = a5[9];
  v23 = a5[11];
  *&v55[167] = a5[10];
  *&v55[183] = v23;
  *&v55[192] = *(a5 + 185);
  v24 = a5[4];
  *&v55[87] = a5[5];
  v25 = a5[7];
  *&v55[103] = a5[6];
  *&v55[119] = v25;
  *&v55[135] = v22;
  v26 = *a5;
  *&v55[23] = a5[1];
  v27 = a5[3];
  *&v55[39] = a5[2];
  *&v55[55] = v27;
  v28 = v79;
  v29 = v80;
  v30 = v81;
  v31 = v82;
  *&v55[71] = v24;
  *&v55[7] = v26;
  v84 = a7 & 1;
  v98 = *&v55[160];
  v99 = *&v55[176];
  v100[0] = *&v55[192];
  v94 = *&v55[96];
  v95 = *&v55[112];
  v96 = *&v55[128];
  v97 = *&v55[144];
  v90 = *&v55[32];
  v91 = *&v55[48];
  v92 = *&v55[64];
  v93 = *&v55[80];
  v88 = *v55;
  v89 = *&v55[16];
  v79 = a3;
  v80 = a4;
  v53 = v83;
  v86[0] = v83;
  *v55 = 0xD00000000000001FLL;
  *&v55[8] = 0x800000021478CF60;
  *&v55[16] = 0xD00000000000001CLL;
  *&v55[24] = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v32 = v28(&v79, v86, v55);
  if (v52)
  {
  }

  else
  {
    if (v32)
    {
      sub_213FDC6D0(v30, v31);

      result = sub_213FDC6D0(v30, v31);
      v34 = *&v85[128];
      *(a9 + 149) = *&v85[144];
      v35 = *&v85[176];
      *(a9 + 165) = *&v85[160];
      *(a9 + 181) = v35;
      *(a9 + 193) = *&v85[188];
      v36 = *&v85[64];
      *(a9 + 85) = *&v85[80];
      v37 = *&v85[112];
      *(a9 + 101) = *&v85[96];
      *(a9 + 117) = v37;
      *(a9 + 133) = v34;
      v38 = *v85;
      *(a9 + 21) = *&v85[16];
      v39 = *&v85[48];
      *(a9 + 37) = *&v85[32];
      *(a9 + 53) = v39;
      *(a9 + 69) = v36;
      *(a9 + 5) = v38;
      v40 = v98;
      v41 = v100[0];
      *(a9 + 425) = v99;
      *(a9 + 441) = v41;
      v42 = v94;
      v43 = v96;
      v44 = v97;
      *(a9 + 361) = v95;
      *(a9 + 377) = v43;
      *(a9 + 393) = v44;
      *(a9 + 409) = v40;
      v45 = v90;
      v46 = v92;
      v47 = v93;
      *(a9 + 297) = v91;
      *(a9 + 313) = v46;
      *(a9 + 329) = v47;
      *(a9 + 345) = v42;
      v48 = v89;
      *(a9 + 249) = v88;
      *a9 = a1;
      *(a9 + 4) = BYTE4(a1) & 1;
      *(a9 + 216) = v28;
      *(a9 + 224) = v29;
      *(a9 + 232) = a3;
      *(a9 + 240) = a4;
      *(a9 + 248) = v53;
      v49 = *(v100 + 15);
      *(a9 + 265) = v48;
      *(a9 + 281) = v45;
      *(a9 + 456) = v49;
      *(a9 + 464) = a6;
      *(a9 + 472) = a7 & 1;
      *(a9 + 480) = v101;
      *(a9 + 488) = a10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD00000000000001FLL;
    v50[1] = 0x800000021478CF60;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v30, v31);
  *&v55[149] = *&v85[144];
  *&v55[165] = *&v85[160];
  *&v55[181] = *&v85[176];
  *&v55[193] = *&v85[188];
  *&v55[85] = *&v85[80];
  *&v55[101] = *&v85[96];
  *&v55[117] = *&v85[112];
  *&v55[133] = *&v85[128];
  *&v55[21] = *&v85[16];
  *&v55[37] = *&v85[32];
  *&v55[53] = *&v85[48];
  *&v55[69] = *&v85[64];
  *&v55[5] = *v85;
  v72 = v99;
  *v73 = v100[0];
  v68 = v95;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v64 = v91;
  v65 = v92;
  v66 = v93;
  v67 = v94;
  v62 = v89;
  v63 = v90;
  *v55 = a1;
  v55[4] = BYTE4(a1) & 1;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v59 = v31;
  v60 = v53;
  v61 = v88;
  *&v73[15] = *(v100 + 15);
  v74 = a6;
  v75 = a7 & 1;
  *v76 = v87[0];
  *&v76[3] = *(v87 + 3);
  v77 = v101;
  v78 = a10;
  return sub_2142E6080(v55);
}

unint64_t sub_2140DC76C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD000000000000012;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0x656D616E6B63696ELL;
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

uint64_t sub_2140DC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435E084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140DC854(uint64_t a1)
{
  v2 = sub_2142E60D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DC890(uint64_t a1)
{
  v2 = sub_2142E60D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140DC8CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AB0, &qword_2146F3F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v145 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E60D4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v145);
  }

  v12 = v6;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v49[0]) = 0;
  sub_2142E6128();
  sub_2146DA1C8();
  v47 = *v50;
  v13 = v50[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  v129 = 1;
  v14 = sub_2142E61A4();
  sub_2146DA1C8();
  v46 = v14;
  v45 = v13;
  v127 = v140;
  *v128 = *v141;
  *&v128[9] = *&v141[9];
  v123 = v136;
  v124 = v137;
  v126 = v139;
  v125 = v138;
  v119 = v132;
  v120 = v133;
  v122 = v135;
  v121 = v134;
  v118 = v131;
  v117 = v130;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v49[0]) = 2;
  v17 = sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v17;
  v44 = v16;
  v18 = *v50;
  v19 = *&v50[8];
  v104 = 3;
  sub_2146DA1C8();
  v102 = v115;
  *v103 = v116[0];
  *&v103[9] = *(v116 + 9);
  v98 = v111;
  v99 = v112;
  v101 = v114;
  v100 = v113;
  v94 = v107;
  v95 = v108;
  v97 = v110;
  v96 = v109;
  v93 = v106;
  v92 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v49[0]) = 4;
  sub_2142E18D0();
  sub_2146DA1C8();
  v42 = v18;
  v46 = v19;
  v20 = *v50;
  v21 = v50[8];
  v89 = 5;
  sub_2146DA1C8();
  v37 = v5;
  v39 = v20;
  v41 = v90;
  v43 = v91;
  LODWORD(v44) = v21;
  sub_213FB2E54(&v117, v50, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v92, v50, &qword_27C905AD0, &unk_214759900);
  sub_214651940(v50);
  *&v88[147] = v126;
  *&v88[163] = v127;
  *&v88[179] = *v128;
  *&v88[188] = *&v128[9];
  *&v88[83] = v122;
  *&v88[99] = v123;
  *&v88[115] = v124;
  *&v88[131] = v125;
  *&v88[19] = v118;
  *&v88[35] = v119;
  *&v88[51] = v120;
  *&v88[67] = v121;
  *&v88[3] = v117;
  *(&v87[9] + 7) = v101;
  *(&v87[10] + 7) = v102;
  *(&v87[11] + 7) = *v103;
  v87[12] = *&v103[9];
  *(&v87[5] + 7) = v97;
  *(&v87[6] + 7) = v98;
  *(&v87[7] + 7) = v99;
  *(&v87[8] + 7) = v100;
  *(&v87[1] + 7) = v93;
  *(&v87[2] + 7) = v94;
  *(&v87[3] + 7) = v95;
  *(&v87[4] + 7) = v96;
  v22 = *v50;
  v23 = *&v50[8];
  v24 = *&v50[16];
  v25 = *&v50[24];
  *(v87 + 7) = v92;
  v36 = v45;
  v86[0] = v42;
  v86[1] = v46;
  v45 = v50[32];
  LOBYTE(v49[0]) = v50[32];
  *v50 = 0xD00000000000001FLL;
  *&v50[8] = 0x800000021478CF60;
  *&v50[16] = 0xD00000000000001CLL;
  *&v50[24] = 0x800000021478A360;

  v40 = v24;
  sub_213FDC9D0(v24, v25);
  v38 = v22;
  v26 = v22(v86, v49, v50);
  if (v26)
  {
    sub_213FDC6D0(v40, v25);

    sub_213FB2DF4(&v117, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v92, &qword_27C905AD0, &unk_214759900);
    (*(v12 + 8))(v9, v37);

    sub_213FDC6D0(v40, v25);
    *(&v49[18] + 5) = *&v88[144];
    *(&v49[20] + 5) = *&v88[160];
    *(&v49[22] + 5) = *&v88[176];
    *(&v49[24] + 1) = *&v88[188];
    *(&v49[10] + 5) = *&v88[80];
    *(&v49[12] + 5) = *&v88[96];
    *(&v49[14] + 5) = *&v88[112];
    *(&v49[16] + 5) = *&v88[128];
    *(&v49[2] + 5) = *&v88[16];
    *(&v49[4] + 5) = *&v88[32];
    *(&v49[6] + 5) = *&v88[48];
    *(&v49[8] + 5) = *&v88[64];
    *(v49 + 5) = *v88;
    *(&v49[49] + 1) = v87[9];
    *(&v49[51] + 1) = v87[10];
    *(&v49[53] + 1) = v87[11];
    *(&v49[55] + 1) = v87[12];
    *(&v49[41] + 1) = v87[5];
    *(&v49[43] + 1) = v87[6];
    *(&v49[45] + 1) = v87[7];
    *(&v49[47] + 1) = v87[8];
    *(&v49[33] + 1) = v87[1];
    *(&v49[35] + 1) = v87[2];
    *(&v49[37] + 1) = v87[3];
    *(&v49[39] + 1) = v87[4];
    v27 = v47;
    LODWORD(v49[0]) = v47;
    v28 = v36;
    BYTE4(v49[0]) = v36;
    v30 = v38;
    v29 = v39;
    v49[27] = v38;
    v49[28] = v23;
    v31 = v42;
    v32 = v46;
    v49[29] = v42;
    v49[30] = v46;
    LOBYTE(v49[31]) = v45;
    *(&v49[31] + 1) = v87[0];
    v49[58] = v39;
    LOBYTE(v49[59]) = v44;
    v49[60] = v41;
    v49[61] = v43;
    memcpy(v48, v49, 0x1F0uLL);
    sub_2142E627C(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v145);
    v58 = *&v88[144];
    v59 = *&v88[160];
    *v60 = *&v88[176];
    *&v60[12] = *&v88[188];
    v54 = *&v88[80];
    v55 = *&v88[96];
    v56 = *&v88[112];
    v57 = *&v88[128];
    *&v50[21] = *&v88[16];
    v51 = *&v88[32];
    v52 = *&v88[48];
    v53 = *&v88[64];
    *&v50[5] = *v88;
    v76 = v87[9];
    v77 = v87[10];
    v78 = v87[11];
    v79 = v87[12];
    v72 = v87[5];
    v73 = v87[6];
    v74 = v87[7];
    v75 = v87[8];
    v68 = v87[1];
    v69 = v87[2];
    v70 = v87[3];
    v71 = v87[4];
    *v50 = v27;
    v50[4] = v28;
    *v61 = v144[0];
    *&v61[3] = *(v144 + 3);
    v62 = v30;
    v63 = v23;
    v64 = v31;
    v65 = v32;
    v66 = v45;
    v67 = v87[0];
    *v80 = *v143;
    *&v80[3] = *&v143[3];
    v81 = v29;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    v33[1] = 0x800000021478CF60;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v117, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v92, &qword_27C905AD0, &unk_214759900);
    (*(v12 + 8))(v9, v37);

    v34 = v40;
    sub_213FDC6D0(v40, v25);
    __swift_destroy_boxed_opaque_existential_1(v145);
    v58 = *&v88[144];
    v59 = *&v88[160];
    *v60 = *&v88[176];
    *&v60[12] = *&v88[188];
    v54 = *&v88[80];
    v55 = *&v88[96];
    v56 = *&v88[112];
    v57 = *&v88[128];
    *&v50[21] = *&v88[16];
    v51 = *&v88[32];
    v52 = *&v88[48];
    v53 = *&v88[64];
    *&v50[5] = *v88;
    v76 = v87[9];
    v77 = v87[10];
    v78 = v87[11];
    v79 = v87[12];
    v72 = v87[5];
    v73 = v87[6];
    v74 = v87[7];
    v75 = v87[8];
    v68 = v87[1];
    v69 = v87[2];
    v70 = v87[3];
    v71 = v87[4];
    *v50 = v47;
    v50[4] = v36;
    *v61 = v144[0];
    *&v61[3] = *(v144 + 3);
    v62 = v38;
    v63 = v23;
    v64 = v34;
    v65 = v25;
    v66 = v45;
    v67 = v87[0];
    *v80 = *v143;
    *&v80[3] = *&v143[3];
    v81 = v39;
  }

  v82 = v44;
  *v83 = *v142;
  *&v83[3] = *&v142[3];
  v84 = v41;
  v85 = v43;
  return sub_2142E6080(v50);
}

uint64_t sub_2140DD4D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AE8, &qword_2146F3FA0);
  v93 = *(v3 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = *v1;
  v33 = *(v1 + 4);
  v34 = v7;
  v8 = *(v1 + 42);
  v78 = *(v1 + 38);
  v79 = v8;
  v80[0] = *(v1 + 46);
  *(v80 + 9) = *(v1 + 193);
  v9 = *(v1 + 22);
  v10 = *(v1 + 30);
  v75 = *(v1 + 26);
  v76 = v10;
  v77 = *(v1 + 34);
  v11 = *(v1 + 6);
  v12 = *(v1 + 14);
  v71 = *(v1 + 10);
  v72 = v12;
  v73 = *(v1 + 18);
  v74 = v9;
  v69 = *(v1 + 2);
  v70 = v11;
  v13 = *(v1 + 30);
  *&v32 = *(v1 + 29);
  *(&v32 + 1) = v13;
  v14 = *(v1 + 26);
  v15 = *(v1 + 27);
  v16 = *(v1 + 24);
  v90 = *(v1 + 25);
  v91 = v14;
  v92[0] = v15;
  *(v92 + 9) = *(v1 + 441);
  v17 = *(v1 + 23);
  v87 = *(v1 + 22);
  v88 = v17;
  v89 = v16;
  v18 = *(v1 + 19);
  v83 = *(v1 + 18);
  v84 = v18;
  v19 = *(v1 + 21);
  v85 = *(v1 + 20);
  v86 = v19;
  v20 = *(v1 + 17);
  v81 = *(v1 + 16);
  v82 = v20;
  v31 = *(v1 + 58);
  v30 = *(v1 + 472);
  v21 = *(v1 + 60);
  v28 = *(v1 + 61);
  v29 = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E60D4();
  sub_2146DAA28();
  LODWORD(v57) = v34;
  BYTE4(v57) = v33;
  LOBYTE(v54[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v23 = v35;
  sub_2146DA388();
  if (v23)
  {
    return (*(v93 + 8))(v6, v3);
  }

  v66 = v78;
  v67 = v79;
  v68[0] = v80[0];
  *(v68 + 9) = *(v80 + 9);
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v59 = v71;
  v60 = v72;
  v61 = v73;
  v62 = v74;
  v57 = v69;
  v58 = v70;
  v56 = 1;
  sub_213FB2E54(&v69, v54, &qword_27C905AD0, &unk_214759900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  sub_2142E6354();
  sub_2146DA388();
  v54[9] = v66;
  v54[10] = v67;
  *v55 = v68[0];
  *&v55[9] = *(v68 + 9);
  v54[6] = v63;
  v54[7] = v64;
  v54[8] = v65;
  v54[2] = v59;
  v54[3] = v60;
  v54[4] = v61;
  v54[5] = v62;
  v54[0] = v57;
  v54[1] = v58;
  sub_213FB2DF4(v54, &qword_27C905AD0, &unk_214759900);
  if (*(&v32 + 1) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v42 = v32;
    LOBYTE(v39[0]) = 2;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v35 = v25;
    v51 = v90;
    v52 = v91;
    v53[0] = v92[0];
    *(v53 + 9) = *(v92 + 9);
    v48 = v87;
    v49 = v88;
    v50 = v89;
    v44 = v83;
    v45 = v84;
    v46 = v85;
    v47 = v86;
    v42 = v81;
    v43 = v82;
    v41 = 3;
    sub_213FB2E54(&v81, v39, &qword_27C905AD0, &unk_214759900);
    sub_2146DA388();
    v39[9] = v51;
    v39[10] = v52;
    *v40 = v53[0];
    *&v40[9] = *(v53 + 9);
    v39[7] = v49;
    v39[8] = v50;
    v39[2] = v44;
    v39[3] = v45;
    v39[5] = v47;
    v39[6] = v48;
    v39[4] = v46;
    v39[0] = v42;
    v39[1] = v43;
    sub_213FB2DF4(v39, &qword_27C905AD0, &unk_214759900);
    v36 = v31;
    LOBYTE(v37) = v30;
    v38 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    v26 = v93;
    v36 = v29;
    v37 = v28;
    v38 = 5;
    sub_2146DA388();
    return (*(v26 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2140DDB3C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a6;
  sub_214651BCC(&v46);
  v10 = v46;
  v11 = v47;
  v13 = v48;
  v12 = v49;
  v14 = v50;
  sub_214651C00(&v60);
  v44 = v61;
  v37 = v60;
  v38 = v62;
  v40 = v63;
  v41 = v14;
  v42 = v64;
  v39 = a4 & 1;
  v35 = a1;
  v60 = a1;
  v61 = a2;
  v65[0] = v14;
  v15 = v11;
  v46 = 0xD000000000000025;
  v47 = 0x800000021478CF80;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;

  v16 = v13;
  v17 = v13;
  v18 = v12;
  sub_213FDC9D0(v17, v12);
  v19 = v10(&v60, v65, &v46);
  if (v43)
  {

LABEL_6:

    v24 = v37;
    v22 = v38;
    v23 = v40;
    v27 = v16;

    v28 = v16;
    v29 = v18;
    sub_213FDC6D0(v28, v18);
    v20 = v42;
    v21 = v44;
LABEL_7:
    v46 = v10;
    v47 = v15;
    v48 = v27;
    v49 = v29;
    v50 = v41;
    *v51 = v67[0];
    *&v51[3] = *(v67 + 3);
    v52 = a3;
    v53 = v39;
    *v54 = v66[0];
    *&v54[3] = *(v66 + 3);
    v55 = v24;
    v56 = v21;
    v57 = v22;
    v58 = v23;
    v59 = v20;
    return sub_2142E642C(&v46);
  }

  v33 = a2;
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000025;
    v26[1] = 0x800000021478CF80;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v16, v12);

  sub_213FDC6D0(v16, v12);
  v60 = a5;
  v61 = v68;
  v20 = v42;
  v65[0] = v42;
  v46 = 0xD00000000000002CLL;
  v47 = 0x800000021478CFB0;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;
  v21 = v44;

  v22 = v38;
  v23 = v40;
  sub_213FDC9D0(v38, v40);
  v24 = v37;
  v25 = v37(&v60, v65, &v46);
  v29 = v33;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000002CLL;
    v32[1] = 0x800000021478CFB0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v38, v40);
    v27 = v35;
    goto LABEL_7;
  }

  sub_213FDC6D0(v38, v40);

  result = sub_213FDC6D0(v38, v40);
  *a7 = v10;
  *(a7 + 8) = v15;
  *(a7 + 16) = v35;
  *(a7 + 24) = v33;
  *(a7 + 32) = v41;
  *(a7 + 40) = a3;
  *(a7 + 48) = v39;
  *(a7 + 56) = v37;
  *(a7 + 64) = v44;
  v31 = v68;
  *(a7 + 72) = a5;
  *(a7 + 80) = v31;
  *(a7 + 88) = v42;
  return result;
}

uint64_t sub_2140DDF30()
{
  v1 = 0x65736162656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_2140DDF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435E284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140DDFC4(uint64_t a1)
{
  v2 = sub_2142E6480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DE000(uint64_t a1)
{
  v2 = sub_2142E6480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140DE03C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B08, &qword_2146F3FA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6480();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v87 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v62) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = v69;
  v61 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v62) = 1;
  sub_2142E35EC();
  sub_2146DA1C8();
  v60 = v11;
  v12 = v68;
  v59 = v69;
  v82 = 2;
  sub_2146DA1C8();
  v50 = v12;
  v46 = v83;
  v51 = v84;
  sub_214651BCC(&v68);
  v14 = v69;
  v58 = v68;
  v15 = v71;
  v57 = v70;
  v16 = v72;
  sub_214651C00(&v62);
  v55 = *(&v62 + 1);
  v52 = v62;
  v54 = *(&v63 + 1);
  v56 = v63;
  v53 = v64;
  *&v62 = v61;
  *(&v62 + 1) = v60;
  v48 = v16;
  LOBYTE(v67[0]) = v16;
  v68 = 0xD000000000000025;
  v69 = 0x800000021478CF80;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  v47 = v15;
  sub_213FDC9D0(v57, v15);
  v49 = v14;
  v17 = v58(&v62, v67, &v68);
  v44 = 0x800000021478CF80;
  v45 = 0x800000021478A360;
  if (v17)
  {
    v18 = v57;
    v19 = v47;
    sub_213FDC6D0(v57, v47);
    v20 = v45;

    v21 = v49;

    sub_213FDC6D0(v18, v19);
    v67[0] = v46;
    v67[1] = v51;
    LOBYTE(v62) = v53;
    v68 = 0xD00000000000002CLL;
    v69 = 0x800000021478CFB0;
    v70 = 0xD00000000000001CLL;
    v71 = v20;

    sub_213FDC9D0(v56, v54);
    v22 = v52(v67, &v62, &v68);
    v26 = v59;
    if (v22)
    {
      v31 = v54;
      sub_213FDC6D0(v56, v54);

      (*(v6 + 8))(v9, v5);
      v32 = v55;

      sub_213FDC6D0(v56, v31);
      v33 = v21;
      v34 = v58;
      *&v62 = v58;
      *(&v62 + 1) = v21;
      v35 = v61;
      *&v63 = v61;
      v36 = v60;
      *(&v63 + 1) = v60;
      v37 = v48;
      LOBYTE(v64) = v48;
      *(&v64 + 1) = v50;
      LOBYTE(v65) = v26;
      *(&v65 + 1) = v52;
      *v66 = v32;
      *&v66[8] = v46;
      *&v66[16] = v51;
      v66[24] = v53;
      v38 = v65;
      v39 = v87;
      v87[2] = v64;
      v39[3] = v38;
      v39[4] = *v66;
      *(v39 + 73) = *&v66[9];
      v40 = v63;
      *v39 = v62;
      v39[1] = v40;
      sub_2142E64D4(&v62, &v68);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v68 = v34;
      v69 = v33;
      v70 = v35;
      v71 = v36;
      v72 = v37;
      *v73 = *v86;
      *&v73[3] = *&v86[3];
      v74 = v50;
      v75 = v26;
      *v76 = *v85;
      *&v76[3] = *&v85[3];
      v77 = v52;
      v78 = v32;
      v79 = v46;
      v30 = &v77;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD00000000000002CLL;
    v41[1] = 0x800000021478CFB0;
    v42 = v45;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = v42;
    swift_willThrow();

    v27 = v60;
    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v56, v54);
    v28 = v61;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v23 = v44;
    *v24 = 0xD000000000000025;
    v24[1] = v23;
    v25 = v45;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v26 = v59;
    v21 = v49;
    v27 = v47;
    (*(v6 + 8))(v9, v5);

    v28 = v57;
    sub_213FDC6D0(v57, v27);
  }

  v29 = v50;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v68 = v58;
  v69 = v21;
  v70 = v28;
  v71 = v27;
  v72 = v48;
  *v73 = *v86;
  *&v73[3] = *&v86[3];
  v74 = v29;
  v75 = v26;
  *v76 = *v85;
  *&v76[3] = *&v85[3];
  v77 = v52;
  v78 = v55;
  v79 = v56;
  v30 = &v80;
LABEL_8:
  v80 = *(v30 - 32);
  v81 = v53;
  return sub_2142E642C(&v68);
}

uint64_t sub_2140DE8F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B18, &qword_2146F3FB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v21 = *(v1 + 48);
  v11 = *(v1 + 80);
  v16 = *(v1 + 72);
  v17 = v10;
  v15 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6480();
  sub_2146DAA28();
  if (v9 != 1)
  {
    v19 = v8;
    v20 = v9;
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v13 = v18;
    sub_2146DA388();
    if (v13)
    {
      return (*(v4 + 8))(v7, v3);
    }

    v19 = v17;
    LOBYTE(v20) = v21;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    if (v15 != 1)
    {
      v19 = v16;
      v20 = v15;
      v22 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140DEB9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, int a13, int a14, char a15, int a16, char a17, __int16 a18, char a19, char a20, char a21, char *a22, char a23, char a24, uint64_t a25, unint64_t a26, char a27, char a28, int a29, int a30, char a31, int a32, char a33, __int16 a34, char a35, char a36, int a37, int a38, char a39, __int16 a40, char a41, char *a42, uint64_t a43, uint64_t a44, char a45)
{
  v81 = *a22;
  v82 = *a42;
  v166 = a6;
  sub_213FDCA18(a5, a6);
  sub_213FDCA18(a25, a26);
  sub_214651EB4(&v83);
  v48 = a4[8];
  *(&v151[9] + 7) = a4[9];
  v49 = a4[11];
  *(&v151[10] + 7) = a4[10];
  *(&v151[11] + 7) = v49;
  v151[12] = *(a4 + 185);
  v50 = a4[4];
  *(&v151[5] + 7) = a4[5];
  v51 = a4[7];
  *(&v151[6] + 7) = a4[6];
  *(&v151[7] + 7) = v51;
  *(&v151[8] + 7) = v48;
  v52 = *a4;
  *(&v151[1] + 7) = a4[1];
  v53 = a4[3];
  *(&v151[2] + 7) = a4[2];
  *(&v151[3] + 7) = v53;
  *(&v151[4] + 7) = v50;
  v54 = v83;
  v55 = v84;
  v56 = *v85;
  *(v151 + 7) = v52;
  v150 = a15 & 1;
  v149 = a17 & 1;
  v148 = a31 & 1;
  v147 = a33 & 1;
  v146 = a39 & 1;
  v145[0] = a43;
  v145[1] = a44;
  v75 = v85[16];
  v152[0] = v85[16];
  v83 = 0xD000000000000032;
  v84 = 0x800000021478CFE0;
  *v85 = 0xD00000000000001CLL;
  *&v85[8] = 0x800000021478A360;

  sub_213FDC9D0(v56, *(&v56 + 1));
  v72 = v55;
  v57 = v79;
  v80 = v54;
  v58 = v54(v145, v152, &v83);
  if (v57)
  {

    v59 = a25;
    v60 = a26;
    sub_213FDC6BC(a25, a26);
    v61 = a5;
    v62 = a5;
  }

  else
  {
    v59 = a25;
    if (v58)
    {
      sub_213FDC6D0(v56, *(&v56 + 1));
      sub_213FDC6BC(a25, a26);
      v63 = v166;
      sub_213FDC6BC(a5, v166);

      result = sub_213FDC6D0(v56, *(&v56 + 1));
      *a9 = a1;
      *(a9 + 4) = BYTE4(a1) & 1;
      *(a9 + 8) = a2;
      *(a9 + 16) = a3 & 1;
      *(a9 + 232) = a5;
      *(a9 + 240) = v63;
      *(a9 + 248) = a7;
      *(a9 + 249) = a8;
      *(a9 + 250) = a10;
      *(a9 + 251) = a11;
      *(a9 + 252) = a12;
      v65 = v151[8];
      *(a9 + 161) = v151[9];
      v66 = v151[11];
      *(a9 + 177) = v151[10];
      *(a9 + 193) = v66;
      *(a9 + 209) = v151[12];
      v67 = v151[4];
      *(a9 + 97) = v151[5];
      v68 = v151[7];
      *(a9 + 113) = v151[6];
      *(a9 + 129) = v68;
      *(a9 + 145) = v65;
      v69 = v151[0];
      *(a9 + 33) = v151[1];
      v70 = v151[3];
      *(a9 + 49) = v151[2];
      *(a9 + 65) = v70;
      *(a9 + 81) = v67;
      *(a9 + 17) = v69;
      *(a9 + 256) = a14;
      *(a9 + 260) = a15 & 1;
      *(a9 + 264) = a16;
      *(a9 + 268) = a17 & 1;
      *(a9 + 269) = a19;
      *(a9 + 270) = a20;
      *(a9 + 271) = a21;
      *(a9 + 272) = v81;
      *(a9 + 273) = a23;
      *(a9 + 274) = a24;
      *(a9 + 280) = a25;
      *(a9 + 288) = a26;
      *(a9 + 296) = a27;
      *(a9 + 297) = a28;
      *(a9 + 300) = a30;
      *(a9 + 304) = a31 & 1;
      *(a9 + 308) = a32;
      *(a9 + 312) = a33 & 1;
      *(a9 + 313) = a35;
      *(a9 + 314) = a36;
      *(a9 + 316) = a38;
      *(a9 + 320) = a39 & 1;
      *(a9 + 321) = a41;
      *(a9 + 322) = v82;
      *(a9 + 328) = v80;
      *(a9 + 336) = v55;
      *(a9 + 344) = a43;
      *(a9 + 352) = a44;
      *(a9 + 360) = v75;
      *(a9 + 361) = a45;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v71 = 0xD000000000000032;
    v71[1] = 0x800000021478CFE0;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = 0x800000021478A360;
    swift_willThrow();

    v60 = a26;
    sub_213FDC6BC(a25, a26);
    v62 = a5;
    v61 = a5;
  }

  sub_213FDC6BC(v62, v166);

  sub_213FDC6D0(v56, *(&v56 + 1));
  LODWORD(v83) = a1;
  BYTE4(v83) = BYTE4(a1) & 1;
  v84 = a2;
  v85[0] = a3 & 1;
  v99 = v61;
  v100 = v166;
  v101 = a7;
  v102 = a8;
  v103 = a10;
  v104 = a11;
  v105 = a12;
  v108 = a14;
  v110 = v159;
  *(&v83 + 5) = v164;
  HIBYTE(v83) = v165;
  *v98 = *v163;
  v106 = v161;
  v94 = v151[9];
  v95 = v151[10];
  v96 = v151[11];
  v97 = v151[12];
  v92 = v151[7];
  v93 = v151[8];
  *&v98[3] = *&v163[3];
  v107 = v162;
  v90 = v151[5];
  v91 = v151[6];
  v86 = v151[1];
  v87 = v151[2];
  v88 = v151[3];
  v89 = v151[4];
  *&v85[1] = v151[0];
  v109 = a15 & 1;
  v111 = v160;
  v112 = a16;
  v113 = a17 & 1;
  v114 = a19;
  v115 = a20;
  v116 = a21;
  v117 = v81;
  v118 = a23;
  v119 = a24;
  v120 = v157;
  v121 = v158;
  v122 = v59;
  v123 = v60;
  v124 = a27;
  v125 = a28;
  v126 = a30;
  v127 = a31 & 1;
  v128 = v155;
  v129 = v156;
  v130 = a32;
  v131 = a33 & 1;
  v132 = a35;
  v133 = a36;
  v134 = a38;
  v135 = a39 & 1;
  v136 = a41;
  v137 = v82;
  v138 = v153;
  v139 = v154;
  v140 = v54;
  v141 = v72;
  v142 = v56;
  v143 = v75;
  v144 = a45;
  return sub_2142E6530(&v83);
}

unint64_t sub_2140DF3B4(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x656C646E6168;
      break;
    case 3:
      result = 0x61746144637661;
      break;
    case 4:
    case 7:
      result = 0xD000000000000012;
      break;
    case 5:
    case 9:
      result = 0xD000000000000018;
      break;
    case 6:
    case 19:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x77746867694C7369;
      break;
    case 10:
      result = 0x736E6F6974706FLL;
      break;
    case 11:
    case 22:
      result = 0xD000000000000021;
      break;
    case 12:
    case 26:
      result = 0xD000000000000010;
      break;
    case 13:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x65646F4D7661;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000020;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      v3 = 10;
      goto LABEL_15;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 24:
      v3 = 11;
LABEL_15:
      result = v3 | 0xD000000000000014;
      break;
    case 27:
    case 28:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140DF69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21435E3AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140DF6D0(uint64_t a1)
{
  v2 = sub_2142E6584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DF70C(uint64_t a1)
{
  v2 = sub_2142E6584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140DF748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B20, &qword_2146F3FB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v197 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E6584();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v197);
  }

  v84 = a2;
  v85 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v86[0]) = 0;
  v12 = sub_2142E6128();
  sub_2146DA1C8();
  v13 = v87;
  v14 = BYTE4(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v86[0]) = 1;
  sub_2142E18D0();
  sub_2146DA1C8();
  v83 = v12;
  v82 = v13;
  v15 = v87;
  v16 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  v171 = 2;
  sub_2142E61A4();
  sub_2146DA1C8();
  v80 = v15;
  LODWORD(v81) = v16;
  v169 = v182;
  v170[0] = *v183;
  *(v170 + 9) = *&v183[9];
  v165 = v178;
  v166 = v179;
  v167 = v180;
  v168 = v181;
  v161 = v174;
  v162 = v175;
  v163 = v176;
  v164 = v177;
  v159 = v172;
  v160 = v173;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v86[0]) = 3;
  v19 = sub_2142E1278();
  sub_2146DA1C8();
  v76 = v19;
  v77 = v18;
  v78 = v87;
  v79 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v86[0]) = 4;
  sub_2142E1378();
  sub_2146DA1C8();
  v75 = v14;
  v20 = v87;
  LOBYTE(v86[0]) = 5;
  sub_2146DA1C8();
  v74 = v87;
  LOBYTE(v86[0]) = 6;
  sub_2146DA1C8();
  v73 = v87;
  LOBYTE(v86[0]) = 7;
  sub_2146DA1C8();
  v71 = v87;
  v72 = v20;
  LOBYTE(v86[0]) = 8;
  sub_2146DA1C8();
  v70 = v87;
  LOBYTE(v86[0]) = 9;
  v21 = v5;
  sub_2146DA1C8();
  v22 = v87;
  v69 = BYTE4(v87);
  LOBYTE(v86[0]) = 10;
  sub_2146DA1C8();
  v67 = v87;
  v68 = BYTE4(v87);
  LOBYTE(v86[0]) = 11;
  sub_2146DA1C8();
  v66 = v87;
  LOBYTE(v86[0]) = 12;
  sub_2146DA1C8();
  v65 = v87;
  LOBYTE(v86[0]) = 13;
  sub_2146DA1C8();
  v64 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B30, &qword_2146F3FC0);
  LOBYTE(v86[0]) = 14;
  sub_2142E65D8();
  sub_2146DA1C8();
  v63 = v87;
  LOBYTE(v86[0]) = 15;
  sub_2146DA1C8();
  v62 = v87;
  LOBYTE(v86[0]) = 16;
  sub_2146DA1C8();
  v61 = v87;
  LOBYTE(v86[0]) = 17;
  sub_2146DA1C8();
  v76 = v87;
  v77 = v88;
  LOBYTE(v86[0]) = 18;
  sub_2146DA1C8();
  v60 = v87;
  LOBYTE(v86[0]) = 19;
  sub_2146DA1C8();
  v59 = v87;
  LOBYTE(v86[0]) = 20;
  sub_2146DA1C8();
  v57 = v87;
  v58 = BYTE4(v87);
  LOBYTE(v86[0]) = 21;
  sub_2146DA1C8();
  v55 = v87;
  v56 = BYTE4(v87);
  LOBYTE(v86[0]) = 22;
  sub_2146DA1C8();
  v54 = v87;
  LOBYTE(v86[0]) = 23;
  sub_2146DA1C8();
  v53 = v87;
  LOBYTE(v86[0]) = 24;
  sub_2146DA1C8();
  LODWORD(v83) = v87;
  v23 = BYTE4(v87);
  LOBYTE(v86[0]) = 25;
  sub_2146DA1C8();
  v52 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B48, &qword_2146F3FC8);
  LOBYTE(v86[0]) = 26;
  sub_2142E66B0();
  sub_2146DA1C8();
  v51 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v86[0]) = 27;
  sub_2142E12FC();
  sub_2146DA1C8();
  v49 = v87;
  v50 = v88;
  v157 = 28;
  sub_2146DA1C8();
  v47 = v158;
  sub_213FB2E54(&v159, &v87, &qword_27C905AD0, &unk_214759900);
  sub_213FDCA18(v78, v79);
  sub_213FDCA18(v76, v77);
  sub_214651EB4(&v87);
  *(&v156[9] + 7) = v168;
  *(&v156[10] + 7) = v169;
  *(&v156[11] + 7) = v170[0];
  v156[12] = *(v170 + 9);
  *(&v156[5] + 7) = v164;
  *(&v156[6] + 7) = v165;
  *(&v156[7] + 7) = v166;
  *(&v156[8] + 7) = v167;
  *(&v156[1] + 7) = v160;
  *(&v156[2] + 7) = v161;
  *(&v156[3] + 7) = v162;
  *(&v156[4] + 7) = v163;
  v48 = v87;
  v24 = v88;
  v25 = *v89;
  v26 = *&v89[8];
  *(v156 + 7) = v159;
  v155 = v69;
  v154 = v68;
  v153 = v58;
  v152 = v56;
  v151 = v23;
  v45 = v81;
  v46 = v75;
  v150[0] = v49;
  v150[1] = v50;
  v75 = v89[16];
  LOBYTE(v86[0]) = v89[16];
  v87 = 0xD000000000000032;
  v42 = 0x800000021478A360;
  v43 = 0x800000021478CFE0;
  v88 = 0x800000021478CFE0;
  *v89 = 0xD00000000000001CLL;
  *&v89[8] = 0x800000021478A360;

  v44 = v25;
  sub_213FDC9D0(v25, v26);
  v81 = v24;
  v27 = v48(v150, v86, &v87);
  if (v27)
  {
    v28 = v44;
    sub_213FDC6D0(v44, v26);

    sub_213FDC6BC(v76, v77);
    sub_213FDC6BC(v78, v79);
    sub_213FB2DF4(&v159, &qword_27C905AD0, &unk_214759900);
    (*(v85 + 8))(v9, v21);

    sub_213FDC6D0(v28, v26);
    *(&v86[32] + 5) = v190;
    *(&v86[34] + 3) = v188;
    *(&v86[38] + 1) = v186;
    *(&v86[40] + 3) = v184;
    *(v86 + 5) = v195;
    HIBYTE(v86[0]) = v196;
    *(&v86[28] + 1) = *v194;
    *(&v86[31] + 5) = v192;
    *(&v86[20] + 1) = v156[9];
    *(&v86[22] + 1) = v156[10];
    *(&v86[24] + 1) = v156[11];
    *(&v86[26] + 1) = v156[12];
    *(&v86[16] + 1) = v156[7];
    *(&v86[18] + 1) = v156[8];
    HIDWORD(v86[28]) = *&v194[3];
    HIBYTE(v86[31]) = v193;
    HIBYTE(v86[32]) = v191;
    HIBYTE(v86[34]) = v189;
    BYTE3(v86[38]) = v187;
    HIBYTE(v86[40]) = v185;
    *(&v86[12] + 1) = v156[5];
    *(&v86[14] + 1) = v156[6];
    *(&v86[4] + 1) = v156[1];
    *(&v86[6] + 1) = v156[2];
    *(&v86[8] + 1) = v156[3];
    *(&v86[10] + 1) = v156[4];
    LODWORD(v86[0]) = v82;
    v29 = v45;
    BYTE4(v86[0]) = v46;
    v86[1] = v80;
    LOBYTE(v86[2]) = v45;
    *(&v86[2] + 1) = v156[0];
    v86[29] = v78;
    v86[30] = v79;
    v30 = v72;
    LOBYTE(v28) = v73;
    LOBYTE(v86[31]) = v72;
    v31 = v74;
    BYTE1(v86[31]) = v74;
    BYTE2(v86[31]) = v73;
    v32 = v70;
    BYTE3(v86[31]) = v71;
    BYTE4(v86[31]) = v70;
    v41 = v22;
    LODWORD(v86[32]) = v22;
    v33 = v69;
    BYTE4(v86[32]) = v69;
    LODWORD(v86[33]) = v67;
    BYTE4(v86[33]) = v68;
    BYTE5(v86[33]) = v66;
    BYTE6(v86[33]) = v65;
    HIBYTE(v86[33]) = v64;
    LOBYTE(v86[34]) = v63;
    BYTE1(v86[34]) = v62;
    BYTE2(v86[34]) = v61;
    v86[35] = v76;
    v86[36] = v77;
    LOBYTE(v86[37]) = v60;
    BYTE1(v86[37]) = v59;
    HIDWORD(v86[37]) = v57;
    LOBYTE(v86[38]) = v58;
    HIDWORD(v86[38]) = v55;
    LOBYTE(v86[39]) = v56;
    BYTE1(v86[39]) = v54;
    BYTE2(v86[39]) = v53;
    HIDWORD(v86[39]) = v83;
    LOBYTE(v86[40]) = v23;
    BYTE1(v86[40]) = v52;
    BYTE2(v86[40]) = v51;
    v86[41] = v48;
    v86[42] = v81;
    v86[43] = v49;
    v86[44] = v50;
    LOBYTE(v86[45]) = v75;
    BYTE1(v86[45]) = v47;
    memcpy(v84, v86, 0x16AuLL);
    sub_2142E6788(v86, &v87);
    __swift_destroy_boxed_opaque_existential_1(v197);
    LODWORD(v87) = v82;
    BYTE4(v87) = v46;
    v88 = v80;
    v89[0] = v29;
    v103 = v78;
    v104 = v79;
    v105 = v30;
    v106 = v31;
    v107 = v28;
    v108 = v71;
    v109 = v32;
    v112 = v41;
    v113 = v33;
    v114 = v190;
    *(&v87 + 5) = v195;
    HIBYTE(v87) = v196;
    *v102 = *v194;
    v110 = v192;
    v98 = v156[9];
    v99 = v156[10];
    v100 = v156[11];
    v101 = v156[12];
    v94 = v156[5];
    v95 = v156[6];
    v96 = v156[7];
    v97 = v156[8];
    v90 = v156[1];
    v91 = v156[2];
    v92 = v156[3];
    v93 = v156[4];
    *&v89[1] = v156[0];
    *&v102[3] = *&v194[3];
    v111 = v193;
    v115 = v191;
    v116 = v67;
    v117 = v68;
    v118 = v66;
    v119 = v65;
    v120 = v64;
    v121 = v63;
    v122 = v62;
    v123 = v61;
    v124 = v188;
    v125 = v189;
    v126 = v76;
    v127 = v77;
    v128 = v60;
    v129 = v59;
    v130 = v57;
    v131 = v58;
    v132 = v186;
    v133 = v187;
    v134 = v55;
    v135 = v56;
    v136 = v54;
    v137 = v53;
    v138 = v83;
    v139 = v23;
    v140 = v52;
    v141 = v51;
    v142 = v184;
    v143 = v185;
    v144 = v48;
    v145 = v81;
    v146 = v49;
    v147 = v50;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v34 = v42;
    v35 = v43;
    *v36 = 0xD000000000000032;
    v36[1] = v35;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v34;
    swift_willThrow();

    sub_213FDC6BC(v76, v77);
    v38 = v78;
    v37 = v79;
    sub_213FDC6BC(v78, v79);
    sub_213FB2DF4(&v159, &qword_27C905AD0, &unk_214759900);
    (*(v85 + 8))(v9, v21);

    v39 = v44;
    sub_213FDC6D0(v44, v26);
    __swift_destroy_boxed_opaque_existential_1(v197);
    LODWORD(v87) = v82;
    BYTE4(v87) = v46;
    v88 = v80;
    v89[0] = v45;
    v103 = v38;
    v104 = v37;
    v105 = v72;
    v106 = v74;
    v107 = v73;
    v108 = v71;
    v109 = v70;
    v112 = v22;
    v114 = v190;
    *(&v87 + 5) = v195;
    HIBYTE(v87) = v196;
    *v102 = *v194;
    v110 = v192;
    v98 = v156[9];
    v99 = v156[10];
    v100 = v156[11];
    v101 = v156[12];
    v94 = v156[5];
    v95 = v156[6];
    v96 = v156[7];
    v97 = v156[8];
    v90 = v156[1];
    v91 = v156[2];
    v92 = v156[3];
    v93 = v156[4];
    *&v89[1] = v156[0];
    *&v102[3] = *&v194[3];
    v111 = v193;
    v113 = v69;
    v115 = v191;
    v116 = v67;
    v117 = v68;
    v118 = v66;
    v119 = v65;
    v120 = v64;
    v121 = v63;
    v122 = v62;
    v123 = v61;
    v124 = v188;
    v125 = v189;
    v126 = v76;
    v127 = v77;
    v128 = v60;
    v129 = v59;
    v130 = v57;
    v131 = v58;
    v132 = v186;
    v133 = v187;
    v134 = v55;
    v135 = v56;
    v136 = v54;
    v137 = v53;
    v138 = v83;
    v139 = v23;
    v140 = v52;
    v141 = v51;
    v142 = v184;
    v143 = v185;
    v144 = v48;
    v145 = v81;
    v146 = v39;
    v147 = v26;
  }

  v148 = v75;
  v149 = v47;
  return sub_2142E6530(&v87);
}