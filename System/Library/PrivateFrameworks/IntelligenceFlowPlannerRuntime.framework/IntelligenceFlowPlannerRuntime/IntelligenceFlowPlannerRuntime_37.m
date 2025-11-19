uint64_t sub_22C689C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[23];
  v14 = v12[21];
  v15 = v12[18];
  v17 = v12[14];
  v16 = v12[15];
  v18 = v12[13];
  v20 = v12[10];
  v19 = v12[11];
  v21 = v12[7];
  sub_22C37F460();
  sub_22C6A438C();

  sub_22C369A24();
  v22 = v12[26];
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C689D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v78 = a2;
  v2 = sub_22C9083DC();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C906CDC();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9071EC();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90734C();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C906B3C();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906AFC();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19);
  v60 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C9072EC();
  v73 = *(v22 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C906F5C();
  v63 = *(v26 - 8);
  v27 = *(v63 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C90654C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34, v77, v30);
  v35 = (*(v31 + 88))(v34, v30);
  if (v35 == *MEMORY[0x277D1DA50])
  {
    (*(v31 + 96))(v34, v30);
    v37 = v75;
    v36 = v76;
    v38 = (*(v75 + 32))(v5, v34, v76);
    v39 = v78;
    MEMORY[0x2318B5880](v38);
    (*(v37 + 8))(v5, v36);
    goto LABEL_3;
  }

  v42 = v78;
  if (v35 == *MEMORY[0x277D1DA88])
  {
    (*(v31 + 96))(v34, v30);
    v43 = v74;
    v44 = (*(v74 + 32))(v18, v34, v15);
    MEMORY[0x2318B3FE0](v44);
    (*(v43 + 8))(v18, v15);
LABEL_8:
    v40 = sub_22C901FAC();
    v41 = v42;
    return sub_22C36C640(v41, 0, 1, v40);
  }

  if (v35 == *MEMORY[0x277D1DAD8])
  {
    (*(v31 + 96))(v34, v30);
    v45 = v73;
    v46 = (*(v73 + 32))(v25, v34, v22);
    MEMORY[0x2318B47A0](v46);
    (*(v45 + 8))(v25, v22);
    goto LABEL_8;
  }

  v39 = v78;
  if (v35 == *MEMORY[0x277D1DAE8])
  {
    (*(v31 + 96))(v34, v30);
    v48 = v70;
    v49 = v71;
    v50 = v72;
    v51 = (*(v71 + 32))(v70, v34, v72);
    MEMORY[0x2318B4800](v51);
  }

  else
  {
    if (v35 == *MEMORY[0x277D1DA90])
    {
      (*(v31 + 96))(v34, v30);
      v52 = v67;
      v53 = v68;
      v54 = v69;
      (*(v68 + 32))(v67, v34, v69);
      sub_22C906CBC();
      return (*(v53 + 8))(v52, v54);
    }

    if (v35 == *MEMORY[0x277D1DAC8])
    {
      (*(v31 + 96))(v34, v30);
      v48 = v64;
      v49 = v65;
      v50 = v66;
      v55 = (*(v65 + 32))(v64, v34, v66);
      MEMORY[0x2318B46A0](v55);
    }

    else
    {
      if (v35 == *MEMORY[0x277D1DAB0])
      {
        (*(v31 + 96))(v34, v30);
        v56 = v63;
        v57 = (*(v63 + 32))(v29, v34, v26);
        MEMORY[0x2318B4410](v57);
        (*(v56 + 8))(v29, v26);
        goto LABEL_3;
      }

      if (v35 != *MEMORY[0x277D1DA80])
      {
        v59 = sub_22C901FAC();
        sub_22C36C640(v42, 1, 1, v59);
        return (*(v31 + 8))(v34, v30);
      }

      (*(v31 + 96))(v34, v30);
      v48 = v60;
      v49 = v61;
      v50 = v62;
      v58 = (*(v61 + 32))(v60, v34, v62);
      MEMORY[0x2318B3FB0](v58);
    }
  }

  (*(v49 + 8))(v48, v50);
LABEL_3:
  v40 = sub_22C901FAC();
  v41 = v39;
  return sub_22C36C640(v41, 0, 1, v40);
}

uint64_t sub_22C68A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v88 = a3;
  v87 = sub_22C901FAC();
  v81 = *(v87 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v87);
  v80 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v77 - v10;
  v86 = sub_22C906ECC();
  v84 = *(v86 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22C90654C();
  v90 = *(v13 - 8);
  v14 = *(v90 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v82 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v77 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  v21 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v79 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - v25;
  v27 = sub_22C9070DC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v78 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v77 - v32;
  sub_22C646D68(a1, v34, v35, v36, v37, v38, v39, v40, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  if (sub_22C370B74(v26, 1, v27) == 1)
  {
    v41 = v91;
    sub_22C36DD28(v26, &qword_27D9BAA18, &qword_22C911C40);
    v42 = v89;
    v43 = v92;
    result = sub_22C68D3A0(a1, v89);
    if (v43)
    {
      return result;
    }

    v45 = v86;
    if (sub_22C370B74(v42, 1, v86) != 1)
    {
      (*(v84 + 32))(v83, v42, v45);
      v63 = v80;
      sub_22C906DFC();
      v64 = v79;
      sub_22C646D68(v63, v65, v66, v67, v68, v69, v70, v71, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      v72 = v64;
      v73 = v63;
      v74 = v87;
      (*(v81 + 8))(v73, v87);
      if (sub_22C370B74(v64, 1, v27) == 1)
      {
        sub_22C36DD28(v64, &qword_27D9BAA18, &qword_22C911C40);
        v75 = v83;
        sub_22C906DFC();
        (*(v84 + 8))(v75, v86);
      }

      else
      {
        v76 = v78;
        (*(v28 + 32))(v78, v72, v27);
        Interpreter.findOriginTaskStatementId(statement:transcript:actionParameterContext:)(v76, a2, v88);
        (*(v28 + 8))(v76, v27);
        (*(v84 + 8))(v83, v86);
      }

      v46 = 0;
      return sub_22C36C640(v41, v46, 1, v74);
    }

    sub_22C36DD28(v42, &qword_27D9BC0A0, &unk_22C922F30);
    v46 = 1;
  }

  else
  {
    v84 = a2;
    v86 = v28;
    v47 = *(v28 + 32);
    v89 = v27;
    v47(v33, v26, v27);
    sub_22C90702C();
    v48 = v90;
    v83 = *(v90 + 88);
    v49 = (v83)(v20, v13);
    v50 = *MEMORY[0x277D1DA50];
    v51 = *MEMORY[0x277D1DA78];
    v52 = *(v48 + 8);
    v52(v20, v13);
    if (v49 == v50 || v49 == v51)
    {
      goto LABEL_14;
    }

    v54 = v85;
    sub_22C90702C();
    v55 = (v83)(v54, v13);
    v56 = *MEMORY[0x277D1DAD0];
    v57 = *MEMORY[0x277D1DA48];
    v52(v54, v13);
    v58 = v55 == v56 || v55 == v57;
    if (v58 || (v59 = v82, sub_22C90702C(), v60 = (v83)(v59, v13), v61 = *MEMORY[0x277D1DAE8], v52(v59, v13), v60 == v61))
    {
LABEL_14:
      v41 = v91;
      v62 = v92;
      Interpreter.findOriginTaskStatementId(statement:transcript:actionParameterContext:)(v33, v84, v88);
      if (v62)
      {
        return (*(v86 + 8))(v33, v89);
      }

      (*(v86 + 8))(v33, v89);
      v46 = 0;
    }

    else
    {
      (*(v86 + 8))(v33, v89);
      v46 = 1;
      v41 = v91;
    }
  }

  v74 = v87;
  return sub_22C36C640(v41, v46, 1, v74);
}

void sub_22C68AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v652 = v20;
  v653 = v21;
  v654 = v25;
  v655 = v24;
  v651 = v26;
  v27 = sub_22C906AFC();
  v28 = sub_22C36A7A4(v27, &v619);
  v602 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v32);
  v33 = sub_22C906FBC();
  v34 = sub_22C36A7A4(v33, v613);
  v597 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C3698F8(v38);
  v39 = sub_22C90731C();
  v40 = sub_22C36A7A4(v39, v616);
  v599 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v44);
  v45 = sub_22C908A7C();
  v46 = sub_22C36A7A4(v45, v629);
  v607 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  sub_22C3698F8(v51);
  v52 = sub_22C908DAC();
  v53 = sub_22C36A7A4(v52, v627);
  v606 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698A8();
  sub_22C3698F8(v57);
  v58 = sub_22C908EAC();
  v59 = sub_22C36A7A4(v58, &v631);
  v610 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA64();
  sub_22C3698F8(v64);
  v65 = sub_22C90769C();
  v66 = sub_22C36A7A4(v65, &v634);
  v613[0] = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C3698A8();
  sub_22C36D234(v70);
  v71 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v72 = sub_22C369914(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA64();
  sub_22C3698F8(v76);
  v77 = sub_22C908ABC();
  v78 = sub_22C36A7A4(v77, &v638);
  v616[0] = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C36BA64();
  sub_22C3698F8(v83);
  v84 = sub_22C906ACC();
  v85 = sub_22C36A7A4(v84, &v647);
  v620 = v86;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22C3698A8();
  sub_22C3698F8(v89);
  v90 = sub_22C9083DC();
  v91 = sub_22C36A7A4(v90, &v646);
  v624 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22C3698A8();
  sub_22C3698F8(v95);
  v96 = sub_22C906D7C();
  v97 = sub_22C36A7A4(v96, &a9);
  v632 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  sub_22C3698A8();
  sub_22C3698F8(v101);
  v102 = sub_22C906DDC();
  v103 = sub_22C36A7A4(v102, &a18);
  v639 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22C3698A8();
  v641 = v107;
  sub_22C36BA0C();
  v108 = sub_22C906FFC();
  v109 = sub_22C369824(v108);
  v643 = v110;
  v644 = v109;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  sub_22C3698A8();
  v646 = v113;
  v114 = sub_22C36BA0C();
  v647 = type metadata accessor for DependencyId(v114);
  v115 = sub_22C369824(v647);
  v645 = v116;
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA58();
  v640 = v120;
  sub_22C369930();
  MEMORY[0x28223BE20](v121);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v122);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v123);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v124);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v125);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v126);
  sub_22C36BA64();
  sub_22C3698F8(v127);
  v128 = sub_22C901FAC();
  v648 = sub_22C369824(v128);
  v649 = v129;
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v648);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v132);
  sub_22C36BA58();
  v650 = v133;
  sub_22C369930();
  MEMORY[0x28223BE20](v134);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v135);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v136);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v137);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v138);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v139);
  sub_22C36BA64();
  sub_22C36D234(v140);
  v141 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v142 = sub_22C369914(v141);
  v144 = *(v143 + 64);
  MEMORY[0x28223BE20](v142);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v145);
  sub_22C36BA58();
  v642 = v146;
  sub_22C369930();
  MEMORY[0x28223BE20](v147);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v148);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v149);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v150);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v151);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v152);
  sub_22C36BA64();
  sub_22C3698F8(v153);
  v154 = sub_22C90734C();
  v155 = sub_22C36A7A4(v154, v626);
  v605 = v156;
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v155);
  sub_22C3698A8();
  sub_22C3698F8(v159);
  v160 = sub_22C906F2C();
  v161 = sub_22C369824(v160);
  v163 = v162;
  v165 = *(v164 + 64);
  MEMORY[0x28223BE20](v161);
  sub_22C369838();
  sub_22C382784();
  v166 = sub_22C90654C();
  v167 = sub_22C369824(v166);
  v169 = v168;
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v167);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v172);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v173);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v174);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v175);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v176);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v177);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v178);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v179);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v180);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v181);
  sub_22C49CA04();
  MEMORY[0x28223BE20](v182);
  sub_22C36BA58();
  sub_22C3698D4();
  v184 = MEMORY[0x28223BE20](v183);
  v186 = &v595[-v185];
  v187 = MEMORY[0x28223BE20](v184);
  v189 = &v595[-v188];
  MEMORY[0x28223BE20](v187);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v190);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v191);
  v193 = &v595[-v192];
  v194 = v169[2];
  v195 = sub_22C6AF5D4();
  v196(v195);
  sub_22C6B0328();
  v197 = sub_22C36FCCC();
  v199 = v198(v197);
  if (v199 == *MEMORY[0x277D1DAA8])
  {
    v200 = v169[12];
    v201 = sub_22C36FCCC();
    v202(v201);
    v203 = sub_22C36CB30(v163);
    v204(v203, v193, v160);
    v205 = v653;
    sub_22C6A1E68(v655, v651, v654);
    if (v205)
    {
      v206 = *(v163 + 8);
    }

    else
    {
      v236 = *(v163 + 8);
    }

    v207 = sub_22C372FA4();
    v208(v207);
    goto LABEL_92;
  }

  v652 = v166;
  v209 = v655;
  if (v199 == *MEMORY[0x277D1D9F8])
  {
    v210 = v169;
    v211 = sub_22C375D3C();
    v212 = v652;
    v213(v211, v652);
    v215 = v649;
    v214 = v650;
    v216 = sub_22C36CB30(v649);
    v217 = v193;
    v218 = v648;
    v219(v216, v217, v648);
    a10 = MEMORY[0x277D84F90];
    v220 = v214;
    v221 = v642;
    v222 = v654;
    sub_22C60539C(v220, v654);
    v223 = sub_22C9070DC();
    v224 = sub_22C3707B4();
    sub_22C36D0A8(v224, v225, v223);
    if (v436)
    {
      sub_22C36DD28(v221, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C370208(&a13);
      sub_22C90702C();
      sub_22C36BBA8(v223);
      v238 = *(v237 + 8);
      v239 = sub_22C37B9B0();
      v240(v239);
      v241 = v210[4];
      v242 = sub_22C372FA4();
      v243(v242);
      v244 = sub_22C6B03DC();
      v245 = v653;
      v247 = sub_22C68AD24(v244, v246, v222);
      v248 = v210 + 1;
      if (v245)
      {
        v249 = *v248;
        v250 = sub_22C377B94();
        v251(v250);
        v252 = *(v215 + 8);
        v253 = v650;
        v254 = v218;
LABEL_16:
        v252(v253, v254);
LABEL_92:
        sub_22C36FB20();
        return;
      }

      sub_22C3CC528(v247);
      v286 = *v248;
      v287 = sub_22C377B94();
      v288(v287);
    }

    v289 = v640;
    (*(v215 + 16))(v640 + *(v647 + 20), v650, v218);
    *v289 = v209;
    v189 = a10;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C6AEE8C();
      v189 = v476;
    }

    sub_22C6AEFA8();
    if (v291)
    {
      sub_22C37090C(v290);
      sub_22C590550();
      v189 = v477;
    }

    (*(v215 + 8))(v650, v218);
    goto LABEL_45;
  }

  if (v199 == *MEMORY[0x277D1DAC0])
  {
    v226 = sub_22C375D3C();
    v227(v226, v652);
    v228 = *(v643 + 32);
    v229 = v646;
    v230 = sub_22C38644C();
    v231(v230);
    a10 = MEMORY[0x277D84F90];
    sub_22C36D818(&a16);
    sub_22C906FDC();
    v232 = sub_22C6AF174(&a15);
    v233 = v654;
    sub_22C60539C(v232, v654);
    v234 = sub_22C6AF724();
    v235(v234);
    v212 = sub_22C9070DC();
    sub_22C382D88();
    if (v436)
    {
      sub_22C36DD28(v229, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C90702C();
      sub_22C6AEE1C();
      v264 = *(v263 + 8);
      v265 = sub_22C36BBCC();
      v266(v265);
      v267 = v169[4];
      v268 = sub_22C36FBFC();
      v269(v268);
      v270 = sub_22C6B03DC();
      v271 = v653;
      v273 = sub_22C68AD24(v270, v272, v233);
      v212 = v169 + 1;
      if (v271)
      {
        v274 = *v212;
        v275 = sub_22C36FBFC();
        v276(v275);
        (*(v643 + 8))(v646, v644);
        goto LABEL_92;
      }

      sub_22C3CC528(v273);
      v321 = *v212;
      v322 = sub_22C36FBFC();
      v323(v322);
    }

    sub_22C6AF960();

    v289 = v634;
    sub_22C906FDC();
    *v289 = v209;
    if ((sub_22C6B0044() & 1) == 0)
    {
      sub_22C6AEE8C();
      v189 = v481;
    }

    sub_22C6AEFA8();
    if (v291)
    {
      sub_22C37090C(v324);
      sub_22C590550();
      v189 = v482;
    }

    (*(v643 + 8))(v646, v644);
LABEL_45:
    *(v189 + 2) = v212;
    sub_22C37054C();
    sub_22C6AFD44(v325);
LABEL_46:
    sub_22C6AECA0();
    v327 = v289;
LABEL_47:
    sub_22C6A43E0(v327, v326);
    goto LABEL_92;
  }

  if (v199 == *MEMORY[0x277D1DAA0])
  {
    v255 = sub_22C375D3C();
    v256(v255, v652);
    sub_22C3722F4(&a17);
    v257 = v641;
    v258 = sub_22C38644C();
    v259(v258);
    a10 = MEMORY[0x277D84F90];
    sub_22C36D818(&v658);
    sub_22C906DAC();
    v260 = sub_22C6AF174(&v657 + 8);
    v261 = v654;
    sub_22C60539C(v260, v654);
    v262 = sub_22C6B0214();
    v186(v262);
    sub_22C9070DC();
    sub_22C382D88();
    if (v436)
    {
      sub_22C36DD28(v257, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C90702C();
      sub_22C6AEE1C();
      v293 = *(v292 + 8);
      v294 = sub_22C36BBCC();
      v295(v294);
      v296 = v169[4];
      v297 = sub_22C377C4C();
      v298(v297);
      v21 = v653;
      v299 = sub_22C68AD24(v655, v651, v261);
      v300 = v169 + 1;
      if (v21)
      {
        v301 = *v300;
        v302 = sub_22C374C34();
        v303(v302);
        sub_22C6AEF98();
        v305 = v641;
        v306 = &a18;
        goto LABEL_50;
      }

      sub_22C3CC528(v299);
      v359 = *v300;
      v360 = sub_22C374C34();
      v361(v360);
    }

    sub_22C6AF960();
    v362 = v655;

    v363 = v635;
    sub_22C906DAC();
    *v363 = v362;
    if ((sub_22C6B0044() & 1) == 0)
    {
      sub_22C6AEE8C();
      v362 = v493;
    }

    v365 = *(v362 + 16);
    v364 = *(v362 + 24);
    if (v365 >= v364 >> 1)
    {
      sub_22C369AB0(v364);
      sub_22C590550();
      v362 = v494;
    }

    *(v362 + 16) = v365 + 1;
    sub_22C37054C();
    v653 = v366;
    v368 = *(v367 + 72);
    sub_22C6AECA0();
    sub_22C6A43E0(v635, v369);
    a10 = v362;
    sub_22C370208(&v656 + 8);
    sub_22C906DBC();
    v370 = v629[1];
    v371 = sub_22C6AFB84();
    sub_22C60539C(v371, v654);
    (v186)(v363, v648);
    sub_22C382D88();
    if (v436)
    {
      sub_22C36DD28(v370, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C36D2E8(&v648);
      sub_22C90702C();
      sub_22C6AEE1C();
      v373 = *(v372 + 8);
      v374 = sub_22C36BBCC();
      v375(v374);
      v376 = v169[4];
      v377 = sub_22C3806B8();
      v378(v377);
      v379 = sub_22C6B0020();
      v380 = v169 + 1;
      if (v21)
      {
        v381 = *v380;
        v382 = sub_22C3806B8();
        v383(v382);
        sub_22C6AEF98();
        v385 = v641;
        v386 = &a18;
LABEL_90:
        v384(v385, *(v386 - 32));
        goto LABEL_91;
      }

      sub_22C3CC528(v379);
      v387 = *v380;
      v388 = sub_22C3806B8();
      v389(v388);
    }

    sub_22C6AF960();
    v390 = v655;

    v289 = v627[1];
    sub_22C906DBC();
    *v289 = v390;
    if ((sub_22C6B0044() & 1) == 0)
    {
      sub_22C6AEE8C();
      v362 = v502;
    }

    sub_22C6AEFA8();
    if (v291)
    {
      sub_22C37090C(v391);
      sub_22C590550();
      v362 = v503;
    }

    sub_22C6AEF98();
    v393 = v641;
    v394 = &a18;
    goto LABEL_99;
  }

  v277 = v653;
  if (v199 == *MEMORY[0x277D1DA98])
  {
    v278 = sub_22C375D3C();
    v279(v278, v652);
    sub_22C3722F4(&v659);
    v280 = v636;
    v281 = sub_22C38644C();
    v282(v281);
    a10 = MEMORY[0x277D84F90];
    sub_22C36D818(&v655);
    MEMORY[0x2318B4220]();
    v283 = sub_22C6AF174(&v654);
    v284 = v654;
    sub_22C60539C(v283, v654);
    v285 = sub_22C6B0214();
    v186(v285);
    sub_22C9070DC();
    sub_22C382D88();
    if (v436)
    {
      sub_22C36DD28(v280, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      v650 = v186;
      sub_22C36D2E8(&v642);
      sub_22C90702C();
      sub_22C6AEE1C();
      v329 = *(v328 + 8);
      v330 = sub_22C36BBCC();
      v331(v330);
      v332 = v169[4];
      v333 = sub_22C3819EC();
      v334(v333);
      v21 = v277;
      v335 = sub_22C68AD24(v655, v651, v284);
      v336 = v169 + 1;
      if (v277)
      {
        v337 = *v336;
        v338 = sub_22C36FC2C();
        v339(v338);
        v305 = sub_22C38018C();
        goto LABEL_50;
      }

      sub_22C3CC528(v335);
      v400 = *v336;
      v401 = sub_22C36FC2C();
      v402(v401);
      v186 = v650;
    }

    sub_22C6AF960();
    v362 = v655;

    v404 = v630;
    MEMORY[0x2318B4220](v403);
    *v404 = v362;
    if ((sub_22C6B0044() & 1) == 0)
    {
      sub_22C6AEE8C();
      v362 = v504;
    }

    v406 = *(v362 + 16);
    v405 = *(v362 + 24);
    if (v406 >= v405 >> 1)
    {
      sub_22C369AB0(v405);
      sub_22C590550();
      v362 = v505;
    }

    *(v362 + 16) = v406 + 1;
    sub_22C37054C();
    v653 = v407;
    v409 = *(v408 + 72);
    sub_22C6AECA0();
    sub_22C6A43E0(v630, v410);
    a10 = v362;
    sub_22C370208(&v651);
    sub_22C906D6C();
    v411 = v626[3];
    v412 = sub_22C6AFB84();
    sub_22C60539C(v412, v654);
    (v186)(v404, v648);
    sub_22C382D88();
    if (v436)
    {
      sub_22C36DD28(v411, &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C36D2E8(&v639);
      sub_22C90702C();
      sub_22C6AEE1C();
      v414 = *(v413 + 8);
      v415 = sub_22C36BBCC();
      v416(v415);
      v417 = v169[4];
      v418 = sub_22C3806B8();
      v419(v418);
      v420 = sub_22C6B0020();
      v421 = v169 + 1;
      if (v21)
      {
        v422 = *v421;
        v423 = sub_22C3806B8();
        v424(v423);
        v385 = sub_22C38018C();
        goto LABEL_90;
      }

      sub_22C3CC528(v420);
      v425 = *v421;
      v426 = sub_22C3806B8();
      v427(v426);
    }

    sub_22C6AF960();
    v390 = v655;

    v289 = v621;
    sub_22C906D6C();
    *v289 = v390;
    if ((sub_22C6B0044() & 1) == 0)
    {
      sub_22C6AEE8C();
      v362 = v519;
    }

    sub_22C6AEFA8();
    if (v291)
    {
      sub_22C37090C(v428);
      sub_22C590550();
      v362 = v520;
    }

    v393 = sub_22C38018C();
LABEL_99:
    v392(v393, *(v394 - 32));
    *(v362 + 16) = v390;
    goto LABEL_46;
  }

  v307 = v655;
  if (v199 == *MEMORY[0x277D1DA50])
  {
    v308 = v169[12];
    v309 = sub_22C6AF5D4();
    v310(v309);
    sub_22C5CA7E8();
    sub_22C370114();
    sub_22C6B0458();
    v311();
    a10 = MEMORY[0x277D84F90];
    sub_22C9083CC();
    sub_22C6AFD54();
    MEMORY[0x28223BE20](v312);
    sub_22C6AF7B4();
    *(v313 - 32) = v654;
    *(v313 - 24) = v314;
    v315 = v651;
    *(v313 - 16) = v307;
    *(v313 - 8) = v315;
    v316 = sub_22C6AFFA4();
    sub_22C7E6FD0(v316, v317, v318);
    if (!v277)
    {
      v398 = sub_22C6AFB78();
      v399(v398, v189);
      goto LABEL_91;
    }

    v319 = sub_22C6AFB78();
    v320(v319, v189);
LABEL_38:

LABEL_91:

    goto LABEL_92;
  }

  if (v199 != *MEMORY[0x277D1DA78])
  {
    if (v199 == *MEMORY[0x277D1DA30] || v199 == *MEMORY[0x277D1DA08] || v199 == *MEMORY[0x277D1DA10] || v199 == *MEMORY[0x277D1DA70] || v199 == *MEMORY[0x277D1DA88] || v199 == *MEMORY[0x277D1DAD8] || v199 == *MEMORY[0x277D1DAD0])
    {
      v395 = v169[1];
      v396 = sub_22C6AF5D4();
      v397(v396);
      goto LABEL_92;
    }

    if (v199 != *MEMORY[0x277D1DA48])
    {
      if (v199 == *MEMORY[0x277D1DAE8])
      {
        v483 = sub_22C375D3C();
        v484(v483, v652);
        sub_22C3722F4(&v625);
        v485 = sub_22C38644C();
        v486(v485);
        sub_22C36D818(&v623);
        MEMORY[0x2318B4800]();
        v487 = sub_22C6AF174(&v624);
        sub_22C60539C(v487, v654);
        v488 = sub_22C6AF724();
        v489(v488);
        sub_22C9070DC();
        sub_22C382D88();
        if (v436)
        {
          sub_22C36DD28(v604, &qword_27D9BAA18, &qword_22C911C40);
          v490 = sub_22C37D9C8();
          v492(v490, *(v491 - 256));
          goto LABEL_92;
        }

        sub_22C37205C(&v622);
        sub_22C90702C();
        sub_22C6AEE1C();
        v507 = *(v506 + 8);
        v508 = sub_22C36BBCC();
        v509(v508);
        sub_22C6AF96C();
        v510 = sub_22C37B9B0();
        v511(v510);
        v512 = sub_22C6B03DC();
        v513 = v653;
        v515 = sub_22C68AD24(v512, v514, v654);
        if (!v513)
        {
          v521 = v515;
          sub_22C6AF960();

          v523 = v603;
          MEMORY[0x2318B4800](v522);
          *v523 = v209;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C6AEE8C();
            v521 = v591;
          }

          sub_22C6AEFA8();
          if (v291)
          {
            sub_22C37090C(v524);
            sub_22C590550();
            v521 = v592;
          }

          v525 = v169[1];
          v526 = sub_22C6B013C();
          v527(v526);
          v528 = sub_22C37D9C8();
          v530(v528, *(v529 - 256));
          *(v521 + 16) = v523;
          sub_22C37054C();
          sub_22C6AFD44(v531);
          sub_22C6AECA0();
          v327 = v603;
          goto LABEL_47;
        }

        v516 = v169[1];
        v517 = sub_22C6B013C();
        v518(v517);
        v305 = sub_22C37D9C8();
LABEL_50:
        v304(v305, *(v306 - 32));
        goto LABEL_92;
      }

      if (v199 != *MEMORY[0x277D1D9F0] && v199 != *MEMORY[0x277D1DA90] && v199 != *MEMORY[0x277D1DAC8] && v199 != *MEMORY[0x277D1DAB0])
      {
        if (v199 == *MEMORY[0x277D1DA80])
        {
          v495 = sub_22C375D3C();
          v496(v495, v652);
          sub_22C3722F4(&v618);
          v497 = sub_22C38644C();
          v498(v497);
          a10 = MEMORY[0x277D84F90];
          sub_22C36D818(&v614);
          MEMORY[0x2318B3FB0]();
          v499 = sub_22C6AF174(&v617);
          sub_22C60539C(v499, v654);
          v500 = sub_22C6AF724();
          v501(v500);
          sub_22C9070DC();
          sub_22C382D88();
          if (v436)
          {
            sub_22C36DD28(v601, &qword_27D9BAA18, &qword_22C911C40);
          }

          else
          {
            sub_22C37205C(v611);
            sub_22C90702C();
            sub_22C6AEE1C();
            v547 = *(v546 + 8);
            v548 = sub_22C36BBCC();
            v549(v548);
            v550 = v169[4];
            v551 = sub_22C37B9B0();
            v552(v551);
            v553 = sub_22C6B03DC();
            v554 = v653;
            v556 = sub_22C68AD24(v553, v555, v654);
            v557 = v169 + 1;
            v653 = v554;
            if (v554)
            {
              v558 = *v557;
              v559 = sub_22C6B013C();
              v560(v559);
              sub_22C36FB04(&v618);
              v561 = sub_22C6B028C();
              v562(v561);
              goto LABEL_92;
            }

            sub_22C3CC528(v556);
            v581 = *v557;
            v582 = sub_22C6B013C();
            v583(v582);
          }

          sub_22C6AF960();

          v585 = v600;
          MEMORY[0x2318B3FB0](v584);
          *v585 = v209;
          if ((sub_22C6B0044() & 1) == 0)
          {
            sub_22C6AEE8C();
            v189 = v593;
          }

          sub_22C6AEFA8();
          if (v291)
          {
            sub_22C37090C(v586);
            sub_22C590550();
            v189 = v594;
          }

          sub_22C36FB04(&v618);
          v587 = sub_22C6B028C();
          v588(v587);
          *(v189 + 2) = v585;
          sub_22C37054C();
          sub_22C6AFD44(v589);
          sub_22C6AECA0();
          sub_22C6A43E0(v600, v590);
          goto LABEL_92;
        }

        if (v199 == *MEMORY[0x277D1DAE0])
        {
          v532 = v169[12];
          v533 = sub_22C6AF5D4();
          v534(v533);
          sub_22C3722F4(&v615);
          v535 = sub_22C38644C();
          v537 = v536(v535);
          a10 = MEMORY[0x277D84F90];
          MEMORY[0x2318B47E0](v537);
          sub_22C6AFD54();
          MEMORY[0x28223BE20](v538);
          sub_22C6AF7B4();
          sub_22C6B0264(v539);
          v540 = sub_22C6AFFA4();
          sub_22C7E7028(v540, v541, v542);
          if (!v21)
          {
            sub_22C36FB04(&v615);
            v385 = v598;
            v386 = v616;
            goto LABEL_90;
          }

          sub_22C36FB04(&v615);
          v544 = v598;
          v545 = v616;
          goto LABEL_146;
        }

        if (v199 == *MEMORY[0x277D1DAB8])
        {
          v563 = v169[12];
          v564 = sub_22C6AF5D4();
          v565(v564);
          sub_22C3722F4(&v612);
          v566 = sub_22C38644C();
          v568 = v567(v566);
          a10 = MEMORY[0x277D84F90];
          MEMORY[0x2318B4480](v568);
          sub_22C6AFD54();
          MEMORY[0x28223BE20](v569);
          sub_22C6AF7B4();
          sub_22C6B0264(v570);
          v571 = sub_22C6AFFA4();
          sub_22C7E7028(v571, v572, v573);
          if (!v21)
          {
            sub_22C36FB04(&v612);
            v385 = v596;
            v386 = v613;
            goto LABEL_90;
          }

          sub_22C36FB04(&v612);
          v544 = v596;
          v545 = v613;
LABEL_146:
          v543(v544, *(v545 - 32));
          goto LABEL_38;
        }

        if (v199 != *MEMORY[0x277D1DA18] && v199 != *MEMORY[0x277D1DA00] && v199 != *MEMORY[0x277D1DA28])
        {
          if (v199 == *MEMORY[0x277D1DA40] || v199 == *MEMORY[0x277D1DA20] || v199 == *MEMORY[0x277D1DA38] || v199 == *MEMORY[0x277D1DAF0] || v199 == *MEMORY[0x277D1DA68])
          {
            goto LABEL_92;
          }

          type metadata accessor for InterpreterError();
          sub_22C371B74();
          sub_22C6A4290(v578, v579);
          sub_22C375F84();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v580 = v169[1];
          v253 = sub_22C6AF5D4();
          goto LABEL_16;
        }
      }
    }

    v478 = v169[1];
    v479 = sub_22C6AF5D4();
    v480(v479);
    goto LABEL_92;
  }

  v340 = v169[12];
  v341 = sub_22C6AF5D4();
  v342(v341);
  v343 = v620;
  sub_22C6AF96C();
  v344 = v616[1];
  v345 = sub_22C370114();
  v346(v345);
  sub_22C36D818(&v632);
  sub_22C906ABC();
  sub_22C370208(&v636);
  sub_22C908ADC();
  sub_22C36FB04(&v633);
  v347(v166, v613[1]);
  sub_22C6AEA50(v160, v614, &qword_27D9BC0B0, &unk_22C912AD0);
  v348 = sub_22C36E638();
  v349 = v617;
  sub_22C36D0A8(v348, v350, v617);
  if (v436)
  {
    sub_22C37A060();
    sub_22C36DD28(v351, v352, v353);
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    swift_allocError();
    v354 = v658;
    v355 = v657;
    *v356 = v656;
    *(v356 + 16) = v355;
    *(v356 + 32) = v354;
    swift_willThrow();
    v357 = sub_22C372280();
    sub_22C36DD28(v357, v358, &unk_22C912AD0);
    (*(v343 + 8))(v344, v626[0]);
    goto LABEL_92;
  }

  sub_22C36DD28(v160, &qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C36D818(v637);
  v430 = *(v429 + 32);
  v431 = sub_22C37B9B0();
  v432(v431);
  sub_22C6AF8F4();
  v433 = v611[1];
  sub_22C6AFBC4();
  v434();
  v435 = (*(v166 + 88))(v433, v349);
  v436 = v435 == *MEMORY[0x277D1E8E0] || v435 == *MEMORY[0x277D1E8C8];
  if (v436)
  {
    v437 = sub_22C6AF69C();
    v438(v437);
    v439 = v610;
    sub_22C5CA7E8();
    sub_22C37B9B0();
    sub_22C6B0458();
    v440();
    sub_22C908DCC();
    v441 = *(v439 + 8);
    v442 = sub_22C37B9B0();
    v444 = v443(v442);
LABEL_111:
    v445 = v654;
    goto LABEL_112;
  }

  v445 = v654;
  if (v435 == *MEMORY[0x277D1E8D0])
  {
    v446 = sub_22C6AF69C();
    v447(v446);
    v448 = v606;
    sub_22C5CA7E8();
    sub_22C37B9B0();
    sub_22C6B0458();
    v449();
    sub_22C908D8C();
    v450 = *(v448 + 8);
    v451 = sub_22C37B9B0();
    v444 = v452(v451);
LABEL_112:
    a10 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](v444);
    *&v595[-48] = v344;
    *&v595[-40] = v445;
    *&v595[-32] = &a10;
    *&v595[-24] = v307;
    *&v595[-16] = v651;
    v467 = sub_22C6AFFA4();
    sub_22C7E6FFC(v467, v468, v469);
    v470 = v620;
    sub_22C36FB04(v637);
    v471(v615, v349);

    if (v277)
    {

      v472 = *(v470 + 8);
    }

    else
    {
      v475 = *(v470 + 8);
    }

    v473 = sub_22C51E290();
    v474(v473);
    goto LABEL_92;
  }

  if (v435 == *MEMORY[0x277D1E8D8])
  {
    v453 = sub_22C6AF69C();
    v454(v453);
    sub_22C36D818(&v628);
    v456 = v608;
    (*(v455 + 32))(v609, v433, v608);
    sub_22C6AF8F4();
    v457 = sub_22C372FA4();
    v458(v457);
    v459 = *(v166 + 88);
    v460 = sub_22C380120();
    if (v461(v460) == *MEMORY[0x277D1E8B8])
    {
      v462 = sub_22C37EBDC(v166);
      v463(v462, v456);
      sub_22C5CA7E8();
      sub_22C6B0458();
      v464();
      sub_22C908DCC();
      v465 = sub_22C6AF6F8();
      v466(v465, v433);
      v444 = (*(v166 + 8))(v609, v456);
      v349 = v617;
      goto LABEL_111;
    }
  }

  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C68D3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v4 = sub_22C901FAC();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C9089DC();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C906ECC();
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v54);
  v43 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908A0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v53 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C9087DC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v34[0] = a2;
    v34[1] = v2;
    v51 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v49 = v14 + 8;
    v50 = v14 + 16;
    v48 = (v7 + 88);
    v47 = *MEMORY[0x277D1E798];
    v41 = (v7 + 96);
    v42 = (v7 + 8);
    v46 = (v10 + 32);
    v37 = (v10 + 8);
    v38 = v13;
    a2 = v35;
    v19 = v36;
    v21 = v44;
    v20 = v45;
    v39 = v14;
    v40 += 8;
    v52 = v17;
    while (v18 <= *(v17 + 16))
    {
      --v18;
      v22 = v53;
      (*(v14 + 16))(v53, v51 + *(v14 + 72) * v18, v13);
      sub_22C9089EC();
      (*(v14 + 8))(v22, v13);
      v23 = (*v48)(v21, v20);
      if (v23 == v47)
      {
        (*v41)(v21, v20);
        v24 = *v46;
        v25 = v43;
        (*v46)(v43, v21, v54);
        sub_22C906E1C();
        v26 = sub_22C901F6C();
        v27 = v19;
        v28 = *v40;
        (*v40)(a2, v4);
        if (v26 & 1) != 0 || (sub_22C906DFC(), v29 = sub_22C901F6C(), v28(a2, v4), (v29))
        {

          a2 = v34[0];
          v32 = v25;
          v31 = v54;
          v24(v34[0], v32, v54);
          v30 = 0;
          return sub_22C36C640(a2, v30, 1, v31);
        }

        (*v37)(v25, v54);
        v19 = v27;
        v21 = v44;
        v20 = v45;
        v13 = v38;
        v14 = v39;
      }

      else
      {
        (*v42)(v21, v20);
      }

      v17 = v52;
      if (!v18)
      {

        v30 = 1;
        a2 = v34[0];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v30 = 1;
LABEL_11:
  v31 = v54;
  return sub_22C36C640(a2, v30, 1, v31);
}

uint64_t sub_22C68D84C(uint64_t a1, uint64_t a2)
{
  v257 = a1;
  v222 = sub_22C906CAC();
  v3 = *(v222 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v222);
  v213 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22C906A3C();
  v6 = *(v207 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v207);
  v200 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_22C3A5908(&qword_27D9BD7D8, &qword_22C9192E8);
  v9 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v244 = &v182 - v10;
  v11 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v235 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v182 - v16;
  MEMORY[0x28223BE20](v15);
  v253 = &v182 - v18;
  v254 = sub_22C9073AC();
  v252 = *(v254 - 8);
  v19 = *(v252 + 64);
  MEMORY[0x28223BE20](v254);
  v246 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_22C90775C();
  v248 = *(v206 - 8);
  v21 = *(v248 + 64);
  MEMORY[0x28223BE20](v206);
  v205 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C90693C();
  v247 = *(v23 - 8);
  v24 = *(v247 + 64);
  MEMORY[0x28223BE20](v23);
  v243 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_22C90711C();
  v241 = *(v228 - 8);
  v26 = *(v241 + 64);
  MEMORY[0x28223BE20](v228);
  v234 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22C9063DC();
  v215 = *(v214 - 8);
  v28 = *(v215 + 64);
  v29 = MEMORY[0x28223BE20](v214);
  v185 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v188 = &v182 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v183 = &v182 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v208 = &v182 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v184 = &v182 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v199 = &v182 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v195 = &v182 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v187 = &v182 - v44;
  MEMORY[0x28223BE20](v43);
  v186 = &v182 - v45;
  v194 = sub_22C9026BC();
  v193 = *(v194 - 8);
  v46 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v192 = &v182 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_22C907DEC();
  v190 = *(v191 - 8);
  v48 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v189 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22C901FAC();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v255 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_22C906ECC();
  v54 = *(v221 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v221);
  v220 = &v182 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_22C9089DC();
  v57 = *(v259 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v259);
  v212 = &v182 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v198 = &v182 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v242 = &v182 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v204 = &v182 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v233 = &v182 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v227 = &v182 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v219 = &v182 - v72;
  MEMORY[0x28223BE20](v71);
  v258 = &v182 - v73;
  v74 = *(a2 + 16);
  if (!v74)
  {
LABEL_56:
    v170 = v185;
    sub_22C903F8C();
    v171 = sub_22C9063CC();
    v172 = sub_22C90AACC();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      *v173 = 0;
      _os_log_impl(&dword_22C366000, v171, v172, "isComplete false", v173, 2u);
      MEMORY[0x2318B9880](v173, -1, -1);
    }

    (*(v215 + 8))(v170, v214);
    return 0;
  }

  v75 = *(sub_22C908A0C() - 8);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v77 = v6;
  v78 = (v57 + 88);
  v251 = *MEMORY[0x277D1E728];
  v240 = *MEMORY[0x277D1E708];
  v250 = (v57 + 16);
  v249 = (v57 + 96);
  v196 = (v77 + 32);
  v256 = (v51 + 8);
  v197 = (v77 + 8);
  v202 = (v248 + 32);
  v203 = (v248 + 8);
  v210 = (v3 + 32);
  v211 = (v3 + 8);
  v217 = (v54 + 32);
  v218 = (v54 + 8);
  v225 = (v241 + 32);
  v226 = (v241 + 8);
  v231 = (v247 + 32);
  v232 = (v247 + 8);
  v239 = (v252 + 32);
  v79 = *(v75 + 72);
  v230 = *MEMORY[0x277D1E748];
  v224 = *MEMORY[0x277D1E798];
  v216 = *MEMORY[0x277D1E738];
  v209 = *MEMORY[0x277D1E7D8];
  v238 = (v51 + 16);
  v223 = (v51 + 32);
  v241 = v252 + 8;
  v252 = v57 + 8;
  v80 = a2 + v76 + v79 * (v74 - 1);
  v248 = -v79;
  v201 = *MEMORY[0x277D1E720];
  v81 = &unk_22C911CC0;
  v237 = v23;
  v247 = v50;
  v236 = (v57 + 88);
  while (1)
  {
    v82 = v81;
    v83 = v258;
    sub_22C9089EC();
    v84 = (*v78)(v83, v259);
    if (v84 == v251)
    {
      v85 = v242;
      v86 = v259;
      (*v250)(v242, v258, v259);
      (*v249)(v85, v86);
      v87 = v246;
      (*v239)(v246, v85, v254);
      v88 = v253;
      sub_22C90738C();
      (*v238)(v17, v257, v50);
      sub_22C36C640(v17, 0, 1, v50);
      v89 = *(v245 + 48);
      v90 = v50;
      v91 = v244;
      sub_22C6AEA50(v88, v244, &qword_27D9BC030, v82);
      sub_22C6AEA50(v17, v91 + v89, &qword_27D9BC030, v82);
      if (sub_22C370B74(v91, 1, v90) != 1)
      {
        v98 = v235;
        sub_22C6AEA50(v91, v235, &qword_27D9BC030, v82);
        if (sub_22C370B74(v91 + v89, 1, v90) != 1)
        {
          v109 = v255;
          (*v223)(v255, v91 + v89, v90);
          sub_22C6A4290(&qword_27D9BAA28, MEMORY[0x277D1C338]);
          v229 = sub_22C90A0BC();
          v110 = *v256;
          (*v256)(v109, v90);
          sub_22C36DD28(v17, &qword_27D9BC030, v82);
          sub_22C36DD28(v253, &qword_27D9BC030, v82);
          v110(v235, v90);
          v87 = v246;
          sub_22C36DD28(v91, &qword_27D9BC030, v82);
          v50 = v90;
          v78 = v236;
          v81 = v82;
          if (v229)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

        sub_22C36DD28(v17, &qword_27D9BC030, v82);
        sub_22C36DD28(v253, &qword_27D9BC030, v82);
        (*v256)(v98, v90);
        v93 = v91;
        v78 = v236;
        v81 = v82;
LABEL_14:
        sub_22C36DD28(v93, &qword_27D9BD7D8, &qword_22C9192E8);
        v50 = v247;
LABEL_20:
        v111 = v255;
        sub_22C90736C();
        v112 = sub_22C901F6C();
        (*v256)(v111, v50);
        if (v112)
        {
          goto LABEL_36;
        }

        (*v241)(v87, v254);
        v23 = v237;
        goto LABEL_22;
      }

      sub_22C36DD28(v17, &qword_27D9BC030, v82);
      sub_22C36DD28(v253, &qword_27D9BC030, v82);
      v92 = sub_22C370B74(v91 + v89, 1, v90) == 1;
      v93 = v91;
      v81 = v82;
      if (!v92)
      {
        goto LABEL_14;
      }

      sub_22C36DD28(v91, &qword_27D9BC030, &unk_22C911CC0);
LABEL_36:
      v138 = v208;
      sub_22C903F8C();
      v139 = sub_22C9063CC();
      v140 = sub_22C90AACC();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_22C366000, v139, v140, "isComplete true: actionCanceled", v141, 2u);
        MEMORY[0x2318B9880](v141, -1, -1);
      }

      (*(v215 + 8))(v138, v214);
      (*v241)(v87, v254);
LABEL_45:
      (*v252)(v258, v259);
      return 1;
    }

    if (v84 == v240)
    {
      v94 = v233;
      v95 = v259;
      (*v250)(v233, v258, v259);
      (*v249)(v94, v95);
      (*v231)(v243, v94, v23);
      v96 = v23;
      v97 = v255;
      sub_22C9068FC();
      LOBYTE(v95) = sub_22C901F6C();
      (*v256)(v97, v50);
      if ((v95 & 1) == 0)
      {
        v81 = v82;
        (*v232)(v243, v96);
LABEL_11:
        v23 = v96;
        goto LABEL_22;
      }

      v142 = v199;
      sub_22C903F8C();
      v143 = sub_22C9063CC();
      v144 = sub_22C90AACC();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&dword_22C366000, v143, v144, "isComplete true: variablesSet", v145, 2u);
        MEMORY[0x2318B9880](v145, -1, -1);
      }

      (*(v215 + 8))(v142, v214);
      (*v232)(v243, v96);
      goto LABEL_45;
    }

    v99 = v234;
    v81 = v82;
    if (v84 == v230)
    {
      v100 = v23;
      v101 = v227;
      v102 = v259;
      (*v250)(v227, v258, v259);
      (*v249)(v101, v102);
      v103 = v101;
      v104 = v228;
      (*v225)(v99, v103, v228);
      v105 = v255;
      sub_22C90710C();
      v106 = sub_22C901F6C();
      v107 = v50;
      v108 = v106;
      (*v256)(v105, v107);
      if ((v108 & 1) == 0)
      {
        (*v226)(v99, v104);
        v50 = v247;
LABEL_18:
        v23 = v100;
        v78 = v236;
        goto LABEL_22;
      }

      v146 = v195;
      sub_22C903F8C();
      v147 = sub_22C9063CC();
      v148 = sub_22C90AACC();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_22C366000, v147, v148, "isComplete true: queriesExecuted", v149, 2u);
        MEMORY[0x2318B9880](v149, -1, -1);
      }

      (*(v215 + 8))(v146, v214);
      (*v226)(v234, v104);
      goto LABEL_45;
    }

    if (v84 == v224)
    {
      break;
    }

    v118 = v222;
    if (v84 == v216)
    {
      v119 = v212;
      v120 = v259;
      (*v250)(v212, v258, v259);
      (*v249)(v119, v120);
      v121 = v213;
      (*v210)(v213, v119, v118);
      v122 = v255;
      sub_22C906C5C();
      v123 = sub_22C901F6C();
      v124 = v122;
      v50 = v247;
      (*v256)(v124, v247);
      if (v123)
      {
        v166 = v188;
        sub_22C903F8C();
        v167 = sub_22C9063CC();
        v168 = sub_22C90AACC();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&dword_22C366000, v167, v168, "isComplete true: toolResolution", v169, 2u);
          MEMORY[0x2318B9880](v169, -1, -1);
        }

        (*(v215 + 8))(v166, v214);
        (*v211)(v213, v222);
        goto LABEL_45;
      }

      (*v211)(v121, v118);
    }

    else
    {
      if (v84 != v209)
      {
        v131 = v207;
        v50 = v247;
        if (v84 != v201)
        {
          goto LABEL_22;
        }

        v100 = v23;
        v132 = v198;
        v133 = v259;
        (*v250)(v198, v258, v259);
        (*v249)(v132, v133);
        v134 = v200;
        (*v196)(v200, v132, v131);
        v135 = v255;
        sub_22C9068FC();
        v136 = v131;
        v137 = sub_22C901F6C();
        (*v256)(v135, v50);
        if (v137)
        {
          v178 = v183;
          sub_22C903F8C();
          v179 = sub_22C9063CC();
          v180 = sub_22C90AACC();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            *v181 = 0;
            _os_log_impl(&dword_22C366000, v179, v180, "isComplete true: skipStatement", v181, 2u);
            MEMORY[0x2318B9880](v181, -1, -1);
          }

          (*(v215 + 8))(v178, v214);
          (*v197)(v200, v136);
          goto LABEL_45;
        }

        (*v197)(v134, v136);
        goto LABEL_18;
      }

      v125 = v204;
      v126 = v259;
      (*v250)(v204, v258, v259);
      (*v249)(v125, v126);
      v127 = v205;
      v128 = v125;
      v129 = v206;
      (*v202)(v205, v128, v206);
      v130 = v255;
      sub_22C90773C();
      LOBYTE(v126) = sub_22C901F6C();
      (*v256)(v130, v247);
      if (v126)
      {
        v174 = v184;
        sub_22C903F8C();
        v175 = sub_22C9063CC();
        v176 = sub_22C90AACC();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          *v177 = 0;
          _os_log_impl(&dword_22C366000, v175, v176, "isComplete true: typeConversionResult", v177, 2u);
          MEMORY[0x2318B9880](v177, -1, -1);
        }

        (*(v215 + 8))(v174, v214);
        (*v203)(v127, v129);
        goto LABEL_45;
      }

      (*v203)(v127, v129);
      v23 = v237;
      v50 = v247;
    }

LABEL_22:
    --v74;
    (*v252)(v258, v259);
    v80 += v248;
    if (!v74)
    {
      goto LABEL_56;
    }
  }

  v96 = v23;
  v113 = v219;
  v114 = v259;
  (*v250)(v219, v258, v259);
  (*v249)(v113, v114);
  v115 = v220;
  v116 = v221;
  (*v217)(v220, v113, v221);
  v117 = v255;
  sub_22C906DFC();
  LOBYTE(v114) = sub_22C901F6C();
  (*v256)(v117, v247);
  if ((v114 & 1) == 0)
  {
    (*v218)(v115, v116);
    v50 = v247;
    goto LABEL_11;
  }

  v151 = v116;
  v152 = v189;
  sub_22C906EBC();
  v153 = v192;
  sub_22C907DAC();
  (*(v190 + 8))(v152, v191);
  v154 = v193;
  v155 = v194;
  LODWORD(v152) = (*(v193 + 88))(v153, v194);
  v156 = *MEMORY[0x277D1CBF0];
  (*(v154 + 8))(v153, v155);
  v157 = v115;
  if (v152 == v156)
  {
    v158 = v186;
    sub_22C903F8C();
    v159 = sub_22C9063CC();
    v160 = sub_22C90AACC();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_22C366000, v159, v160, "isComplete true: statementEvaluated", v161, 2u);
      MEMORY[0x2318B9880](v161, -1, -1);
    }

    (*(v215 + 8))(v158, v214);
    (*v218)(v157, v151);
    goto LABEL_45;
  }

  v162 = v187;
  sub_22C903F8C();
  v163 = sub_22C9063CC();
  v164 = sub_22C90AACC();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_22C366000, v163, v164, "isComplete false: statementEvaluated", v165, 2u);
    MEMORY[0x2318B9880](v165, -1, -1);
  }

  (*(v215 + 8))(v162, v214);
  (*v218)(v157, v151);
  (*v252)(v258, v259);
  return 0;
}

void sub_22C68F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v22 = sub_22C901FAC();
  v23 = sub_22C369824(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  sub_22C37B6BC();
  v26 = sub_22C9070DC();
  v27 = sub_22C36A7A4(v26, &a14);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C382E94();
  v33 = sub_22C9089DC();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C9088CC();
  v41 = sub_22C36A7A4(v40, &a15);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C377578();
  v102 = sub_22C908A0C();
  v46 = sub_22C369824(v102);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  v101 = v51;
  if (*(sub_22C9087DC() + 16))
  {
    v52 = *(v48 + 80);
    sub_22C36BA94();
    v98 = v53 + v54;
    v97 = *MEMORY[0x277D1E6F8];
    sub_22C5E7AA0(v43 + 32);
    sub_22C6AFF74();
    v96 = v29;
    v95 = v33;
    v99 = v55;
    v100 = v48;
    v94 = v57;
    v104 = v58;
    while (v56 <= *(v55 + 16))
    {
      v103 = v56 - 1;
      (*(v48 + 16))(v101, v98 + *(v48 + 72) * (v56 - 1), v102);
      sub_22C9089EC();
      v59 = *(v48 + 8);
      v60 = sub_22C379FC8();
      v61(v60);
      v62 = v36[11];
      v63 = sub_22C36FC08();
      if (v64(v63) == v97)
      {
        v65 = v36[12];
        v66 = sub_22C36FC08();
        v67(v66);
        sub_22C36BA4C(&a18);
        v68 = sub_22C372280();
        v69(v68);
        v70 = *(sub_22C90887C() + 16);
        if (v70)
        {
          v71 = *(v29 + 80);
          sub_22C36BA94();
          v74 = v72 + v73;
          v105 = *(v29 + 72);
          v106 = *(v29 + 16);
          do
          {
            v75 = sub_22C37FF30();
            v106(v75);
            sub_22C6B031C();
            sub_22C9068FC();
            v76 = sub_22C36D264();
            v106(v76);
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C6AFCA4();
            v77 = sub_22C634768();
            sub_22C62C0FC(v77, v78, v79, v80, v81, v82, v83, v84, v93, v94, v95, v96);
            v85 = sub_22C37A27C();
            v86(v85);
            v87 = *v104;
            v88 = sub_22C36EBF0();
            v89(v88);
            v74 += v105;
            --v70;
          }

          while (v70);

          v29 = v96;
          sub_22C6AFF74();
        }

        else
        {
        }

        sub_22C36BA4C(&a17);
        v91 = sub_22C372FCC();
      }

      else
      {
        v90 = v36[1];
        v91 = sub_22C36FC08();
      }

      v92(v91);
      v55 = v99;
      v48 = v100;
      v56 = v103;
      if (!v103)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

LABEL_13:

  sub_22C36CC48();
}

uint64_t sub_22C68F9C8(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = sub_22C901FAC();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9089DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9086FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D1E710])
  {
    (*(v7 + 96))(v10, v6);
    (*(v12 + 32))(v15, v10, v11);
    sub_22C9068FC();
    v16 = sub_22C901F6C();
    (*(v2 + 8))(v5, v19);
    (*(v12 + 8))(v15, v11);
    if (v16)
    {
      return 1;
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

void sub_22C68FC68()
{
  sub_22C36BA7C();
  v3 = v2;
  v53 = sub_22C90069C();
  v4 = sub_22C369824(v53);
  v49 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v52 = v8;
  sub_22C36BA0C();
  v9 = sub_22C9089DC();
  v10 = sub_22C369824(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C36D0FC();
  v13 = sub_22C908CEC();
  v14 = sub_22C369824(v13);
  v46 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C38B638();
  v18 = sub_22C908A0C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  v55 = v24;
  v25 = sub_22C9087DC();
  v26 = *(v25 + 16);
  if (v26)
  {
    v54 = v13;
    v45 = v3;
    v27 = *(v21 + 80);
    sub_22C36BA94();
    v13 = v25 + v28;
    v57 = *MEMORY[0x277D1E730];
    v56 = (v46 + 32);
    v48 = v18;
    v50 = (v49 + 8);
    v47 = v25 + v28;
    v3 = v55;
    v51 = v25;
    while (v26 <= *(v25 + 16))
    {
      --v26;
      (*(v21 + 16))(v3, v13 + *(v21 + 72) * v26, v18);
      sub_22C9089EC();
      v29 = sub_22C385558();
      if (v30(v29, v9) == v57)
      {
        v31 = sub_22C385558();
        v32 = v9;
        v33(v31, v9);
        v34 = *v56;
        v13 = v54;
        (*v56)(v1, v0, v54);
        sub_22C9087FC();
        v35 = sub_22C90067C();
        (*v50)(v52, v53);
        sub_22C6AF460();
        v36(v3);
        if (v35)
        {

          v3 = v45;
          v44 = sub_22C377C4C();
          v34(v44);
          v43 = 0;
          goto LABEL_11;
        }

        v37 = sub_22C385558();
        v38(v37, v54);
        v9 = v32;
        v18 = v48;
        v25 = v51;
        v3 = v55;
        v13 = v47;
        if (!v26)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22C6AF460();
        v39 = sub_22C372280();
        v40(v39);
        v41 = sub_22C385558();
        v42(v41, v9);
        if (!v26)
        {
LABEL_9:

          v43 = 1;
          v3 = v45;
          v13 = v54;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  v43 = 1;
LABEL_11:
  sub_22C36C640(v3, v43, 1, v13);
  sub_22C36CC48();
}

void sub_22C690080(uint64_t a1, uint64_t a2)
{
  sub_22C6AF984(a1, a2);

  if (!*(sub_22C6ADF80(v3, a2) + 16))
  {

    sub_22C3A5908(&qword_27D9BF6C0, &qword_22C922DE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    sub_22C901FAC();
    sub_22C369A48();
    sub_22C908C5C();
    sub_22C6AEB50();
    sub_22C6A4290(v5, v6);
    sub_22C38399C();
    *(inited + 32) = sub_22C909F0C();
    sub_22C5EAED8(inited, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, vars0, vars8);
  }
}

uint64_t sub_22C69015C(uint64_t *a1, uint64_t a2)
{
  v49 = sub_22C9093BC();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22C908C5C();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C3A5908(&qword_27D9BF728, &qword_22C922F28);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v35 - v11;
  v45 = *a1;
  v13 = *(a2 + 64);
  v36 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v44 = v4 + 16;
  v41 = v7;
  v38 = v7 + 8;
  v39 = v7 + 16;
  v47 = v4;
  v48 = a2;
  v37 = (v4 + 8);

  v19 = 0;
  while (v16)
  {
    v20 = v49;
LABEL_10:
    v22 = __clz(__rbit64(v16)) | (v19 << 6);
    v23 = v48;
    v24 = *(v48 + 48);
    v25 = sub_22C901FAC();
    (*(*(v25 - 8) + 16))(v12, v24 + *(*(v25 - 8) + 72) * v22, v25);
    v26 = *(v46 + 48);
    (*(v47 + 16))(&v12[v26], *(v23 + 56) + *(v47 + 72) * v22, v20);
    v27 = v45;
    if (!*(v45 + 16) || (sub_22C628274(), (v29 & 1) == 0))
    {
      sub_22C36DD28(v12, &qword_27D9BF728, &qword_22C922F28);
LABEL_16:

      return 0;
    }

    v16 &= v16 - 1;
    v30 = *(v27 + 56);
    v31 = v40;
    v32 = v41;
    v33 = v42;
    (*(v41 + 16))(v40, v30 + *(v41 + 72) * v28, v42);
    v34 = v43;
    sub_22C90774C();
    (*(v32 + 8))(v31, v33);
    LOBYTE(v31) = sub_22C3AC31C(&v12[v26]);
    (*v37)(v34, v49);
    result = sub_22C36DD28(v12, &qword_27D9BF728, &qword_22C922F28);
    if ((v31 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return 1;
    }

    v16 = *(v36 + 8 * v21);
    ++v19;
    if (v16)
    {
      v20 = v49;
      v19 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C690520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v95 = a3;
  v100 = a2;
  v79[4] = a4;
  v5 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v79[3] = v79 - v7;
  v8 = sub_22C9093BC();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = *(v90 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v99 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79[2] = v79 - v12;
  v97 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
  v13 = *(*(v97 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v97);
  v96 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v101 = v79 - v17;
  MEMORY[0x28223BE20](v16);
  v98 = v79 - v18;
  v19 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v79 - v24;
  v26 = sub_22C9025EC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptValueFetcher(0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v35 = *a1;
  v36 = v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  *&v36[*(v32 + 28)] = v35;

  sub_22C729D78(v100, v25);
  sub_22C6AEA50(v25, v23, &qword_27D9BF610, &qword_22C922B50);
  if (sub_22C370B74(v23, 1, v26) == 1)
  {
    sub_22C36DD28(v23, &qword_27D9BF610, &qword_22C922B50);
    sub_22C90735C();
    sub_22C3A5F00();
    v37 = swift_allocError();
    v38 = v104;
    v39 = v103;
    *v40 = v102;
    *(v40 + 16) = v39;
    *(v40 + 32) = v38;
    swift_willThrow();
    sub_22C36DD28(v25, &qword_27D9BF610, &qword_22C922B50);
    result = sub_22C6A438C();
    *v95 = v37;
  }

  else
  {
    v79[1] = v36;
    sub_22C36DD28(v25, &qword_27D9BF610, &qword_22C922B50);
    v42 = v27;
    v43 = v30;
    (*(v27 + 32))(v30, v23, v26);
    v44 = sub_22C901FAC();
    sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338]);
    v95 = sub_22C909F0C();
    v45 = v35 + 64;
    v46 = 1 << *(v35 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v35 + 64);
    v86 = (v46 + 63) >> 6;
    v100 = v44;
    v85 = v44 - 8;
    v79[7] = v90 + 32;
    v79[6] = v90 + 40;

    v49 = 0;
    v84 = v26;
    v83 = v42;
    v82 = v30;
    v80 = v35 + 64;
    v81 = v35;
    while (v48)
    {
LABEL_11:
      v51 = __clz(__rbit64(v48)) | (v49 << 6);
      v52 = *(v35 + 48);
      v94 = *(v100 - 8);
      v87 = v94[9];
      v53 = v94[2];
      v54 = v98;
      v88 = v94 + 2;
      v89 = v53;
      (v53)(v98, v52 + v87 * v51);
      v55 = *(v35 + 56);
      v56 = sub_22C908C5C();
      v57 = *(v56 - 8);
      v58 = v55 + *(v57 + 72) * v51;
      v59 = v97;
      (*(v57 + 16))(v54 + *(v97 + 48), v58, v56);
      sub_22C6AEA50(v54, v101, &qword_27D9BF100, &qword_22C922FE0);
      v60 = v54;
      v61 = v96;
      sub_22C6AEA50(v60, v96, &qword_27D9BF100, &qword_22C922FE0);
      v62 = *(v59 + 48);
      sub_22C90774C();
      v92 = *(v57 + 8);
      v93 = v56;
      v92(v61 + v62, v56);
      v63 = v95;
      swift_isUniquelyReferenced_nonNull_native();
      v105 = v63;
      sub_22C628274();
      if (__OFADD__(v63[2], (v65 & 1) == 0))
      {
        goto LABEL_24;
      }

      v66 = v64;
      v67 = v65;
      sub_22C3A5908(&qword_27D9BF768, &qword_22C923000);
      if (sub_22C90B15C())
      {
        sub_22C628274();
        v70 = v90;
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_26;
        }

        v66 = v68;
      }

      else
      {
        v70 = v90;
      }

      v71 = v105;
      v95 = v105;
      if (v67)
      {
        (*(v70 + 40))(v105[7] + *(v70 + 72) * v66, v99, v91);
        sub_22C36DD28(v98, &qword_27D9BF100, &qword_22C922FE0);
      }

      else
      {
        v105[(v66 >> 6) + 8] |= 1 << v66;
        v89(v71[6] + v66 * v87, v101, v100);
        (*(v70 + 32))(v71[7] + *(v70 + 72) * v66, v99, v91);
        sub_22C36DD28(v98, &qword_27D9BF100, &qword_22C922FE0);
        v72 = v71[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_25;
        }

        v71[2] = v74;
      }

      v48 &= v48 - 1;
      v75 = *(v97 + 48);
      v76 = v94[1];
      v77 = v100;
      v78 = v101;
      v76(v101, v100);
      v76(v96, v77);
      v92(v78 + v75, v93);
      v26 = v84;
      v42 = v83;
      v43 = v82;
      v35 = v81;
      v45 = v80;
    }

    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v50 >= v86)
      {

        sub_22C90207C();
        sub_22C9025BC();
        sub_22C906CFC();
        (*(v42 + 8))(v43, v26);
        return sub_22C6A438C();
      }

      v48 = *(v45 + 8 * v50);
      ++v49;
      if (v48)
      {
        v49 = v50;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_22C90B54C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C690F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v115 = a4;
  v112 = a3;
  v136 = a2;
  v127 = a5;
  v6 = sub_22C9063DC();
  v132 = *(v6 - 1);
  v133 = v6;
  v7 = *(v132 + 64);
  MEMORY[0x28223BE20](v6);
  v131 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22C902D4C();
  v119 = *(v129 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v129);
  v117 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v111 = &v108 - v13;
  v110 = sub_22C90769C();
  v109 = *(v110 - 8);
  v14 = v109[8];
  MEMORY[0x28223BE20](v110);
  v108 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90654C();
  v124 = *(v16 - 8);
  v125 = v16;
  v17 = *(v124 + 64);
  MEMORY[0x28223BE20](v16);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906ACC();
  v121 = *(v19 - 8);
  v122 = v19;
  v20 = *(v121 + 64);
  MEMORY[0x28223BE20](v19);
  v120 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22C9070DC();
  v130 = *(v134 - 8);
  v22 = *(v130 + 64);
  MEMORY[0x28223BE20](v134);
  v126 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C901FAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C90880C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v108 - v39;
  v113 = a1;
  v41 = sub_22C90878C();
  MEMORY[0x2318B5880](v41);
  sub_22C646D68(v28, v42, v43, v44, v45, v46, v47, v48, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  v118 = v25;
  v49 = *(v25 + 8);
  v128 = v28;
  v116 = v24;
  v49(v28, v24);
  (*(v30 + 8))(v33, v29);
  v50 = v134;
  sub_22C6AEA50(v40, v38, &qword_27D9BAA18, &qword_22C911C40);
  if (sub_22C370B74(v38, 1, v50) == 1)
  {
    sub_22C36DD28(v38, &qword_27D9BAA18, &qword_22C911C40);
LABEL_7:
    v68 = v131;
    sub_22C903F8C();
    v69 = sub_22C9063CC();
    v70 = sub_22C90AADC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_22C366000, v69, v70, "Expected a call statement ID in update expression", v71, 2u);
      MEMORY[0x2318B9880](v71, -1, -1);
    }

    (*(v132 + 8))(v68, v133);
    type metadata accessor for InterpreterError();
    sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_10:
    v72 = v40;
    return sub_22C36DD28(v72, &qword_27D9BAA18, &qword_22C911C40);
  }

  v51 = v130;
  v52 = v126;
  (*(v130 + 32))(v126, v38, v50);
  v53 = v123;
  sub_22C90702C();
  v55 = v124;
  v54 = v125;
  if ((*(v124 + 88))(v53, v125) != *MEMORY[0x277D1DA78])
  {
    (*(v51 + 8))(v52, v50);
    (*(v55 + 8))(v53, v54);
    goto LABEL_7;
  }

  (*(v55 + 96))(v53, v54);
  (*(v121 + 32))(v120, v53, v122);
  v133 = sub_22C906A8C();
  v56 = v128;
  MEMORY[0x2318B5880]();
  v57 = v109[2];
  v58 = v110;
  (v57)(v108, v112, v110);
  sub_22C909F0C();
  MEMORY[0x2318B4D00]();
  sub_22C9077EC();
  v59 = v111;
  v57();
  sub_22C36C640(v59, 0, 1, v58);
  v60 = v114;
  Interpreter.worlds(stmt:sessionState:globalToolId:)(v52, v113, v59, v61, v62, v63, v64, v65, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  if (v60)
  {

    sub_22C36DD28(v59, &qword_27D9BF330, &unk_22C923250);
    v67 = sub_22C9078FC();
    (*(*(v67 - 8) + 8))(v127, v67);
    (*(v121 + 8))(v120, v122);
    (*(v130 + 8))(v52, v134);
    goto LABEL_10;
  }

  v74 = v66;
  v112 = 0;
  v113 = v40;
  sub_22C36DD28(v59, &qword_27D9BF330, &unk_22C923250);
  v75 = v133;
  sub_22C688DF8(v133, v74, 0);

  sub_22C9078AC();
  sub_22C3A5908(&qword_27D9BF780, &qword_22C923040);
  v76 = sub_22C90B1CC();
  v77 = v76;
  v78 = 0;
  v79 = v75 + 8;
  v80 = 1 << *(v75 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & v75[8];
  v83 = (v80 + 63) >> 6;
  v124 = v118 + 32;
  v125 = v118 + 16;
  LODWORD(v132) = *MEMORY[0x277D1D830];
  v123 = (v119 + 104);
  v115 = v76 + 64;
  v114 = v119 + 32;
  result = v75;
  v131 = v77;
  if (v82)
  {
    while (1)
    {
      v84 = __clz(__rbit64(v82));
      v133 = ((v82 - 1) & v82);
LABEL_21:
      v87 = v84 | (v78 << 6);
      v88 = *(result + 56);
      v89 = result;
      v90 = (*(result + 48) + 16 * v87);
      v91 = v90[1];
      v136 = *v90;
      v92 = v118;
      v93 = v56;
      v94 = v56;
      v95 = v116;
      (*(v118 + 16))(v93, v88 + *(v118 + 72) * v87, v116);
      v96 = *(v92 + 32);
      v97 = v117;
      v96(v117, v94, v95);
      v98 = v119;
      v99 = v129;
      (*(v119 + 104))(v97, v132, v129);
      *(v115 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v100 = v131;
      v101 = (*(v131 + 6) + 16 * v87);
      *v101 = v136;
      v101[1] = v91;
      v102 = v97;
      v77 = v100;
      result = (*(v98 + 32))(*(v100 + 7) + *(v98 + 72) * v87, v102, v99);
      v103 = *(v77 + 16);
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        break;
      }

      *(v77 + 16) = v105;

      v56 = v128;
      result = v89;
      v82 = v133;
      if (!v133)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v85 = v78;
    while (1)
    {
      v78 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v78 >= v83)
      {

        v106 = sub_22C9078BC();
        sub_22C6AC78C(v77, sub_22C6AC71C, 0, v107);
        v106(v135, 0);
        (*(v121 + 8))(v120, v122);
        (*(v130 + 8))(v126, v134);
        v72 = v113;
        return sub_22C36DD28(v72, &qword_27D9BAA18, &qword_22C911C40);
      }

      v86 = v79[v78];
      ++v85;
      if (v86)
      {
        v84 = __clz(__rbit64(v86));
        v133 = ((v86 - 1) & v86);
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C691BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v168 = a3;
  v175 = a2;
  v6 = sub_22C901FAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22C908BBC();
  v140 = *(v141 - 8);
  v9 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v142 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22C908C3C();
  v137 = *(v138 - 8);
  v11 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v139 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22C9093BC();
  v134 = *(v135 - 8);
  v13 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v136 = (&v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v133 = &v131 - v17;
  v148 = sub_22C908EAC();
  v151 = *(v148 - 8);
  v18 = *(v151 + 64);
  v19 = MEMORY[0x28223BE20](v148);
  v146 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v131 - v21;
  v153 = sub_22C9063DC();
  v152 = *(v153 - 8);
  v22 = *(v152 + 64);
  v23 = MEMORY[0x28223BE20](v153);
  v150 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v147 = &v131 - v26;
  MEMORY[0x28223BE20](v25);
  v145 = &v131 - v27;
  v28 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v154 = &v131 - v30;
  v157 = sub_22C90069C();
  v156 = *(v157 - 8);
  v31 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v164 = &v131 - v35;
  v169 = sub_22C90880C();
  v165 = *(v169 - 8);
  v36 = *(v165 + 64);
  v37 = MEMORY[0x28223BE20](v169);
  v149 = &v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v163 = &v131 - v39;
  v166 = sub_22C908A0C();
  v158 = *(v166 - 8);
  v40 = *(v158 + 64);
  MEMORY[0x28223BE20](v166);
  v167 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22C908D6C();
  v171 = *(v42 - 8);
  v172 = v42;
  v43 = *(v171 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v132 = &v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v162 = &v131 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v131 - v52;
  v54 = sub_22C9069BC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v159 = &v131 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v131 - v59;
  v61 = sub_22C9078FC();
  v160 = *(v61 - 8);
  v161 = v61;
  (*(v160 + 16))(a4, a1);
  v62 = 1;
  sub_22C90699C();
  v170 = a4;
  v63 = sub_22C90786C();
  sub_22C605C04(v60, v63);

  v64 = *(v55 + 8);
  v64(v60, v54);
  v65 = sub_22C908C5C();
  LODWORD(a1) = sub_22C370B74(v53, 1, v65);
  sub_22C36DD28(v53, &qword_27D9BB628, &unk_22C920580);
  if (a1 == 1)
  {
    v66 = sub_22C90789C();
    v67 = sub_22C58B5C4(v66);

    if (v67)
    {
      v68 = v159;
      sub_22C90699C();
      v69 = v162;
      sub_22C605C04(v68, v67);

      v64(v68, v54);
      v62 = sub_22C370B74(v69, 1, v65) != 1;
    }

    else
    {
      v69 = v162;
      sub_22C36C640(v162, 1, 1, v65);
      v62 = 0;
    }

    sub_22C36DD28(v69, &qword_27D9BB628, &unk_22C920580);
  }

  v70 = sub_22C908DEC();
  v72 = v171;
  v71 = v172;
  v73 = (*(v171 + 104))(v45, *MEMORY[0x277D72170], v172);
  MEMORY[0x28223BE20](v73);
  *(&v131 - 2) = v45;
  v74 = v173;
  v75 = sub_22C5EC62C(sub_22C50AFAC, (&v131 - 4), v70);

  result = (*(v72 + 8))(v45, v71);
  if (!v62 && v75)
  {
    v77 = v163;
    sub_22C90878C();
    v78 = sub_22C9087DC();
    v79 = *(v165 + 8);
    v79(v77, v169);
    v80 = v164;
    sub_22C3A5950(v78);

    v81 = v166;
    if (sub_22C370B74(v80, 1, v166) == 1)
    {
      sub_22C36DD28(v80, &qword_27D9BA808, &qword_22C90C6E0);
      type metadata accessor for InterpreterError();
      sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v160 + 8))(v170, v161);
    }

    v173 = v65;
    v82 = v158;
    (*(v158 + 32))(v167, v80, v81);
    v83 = v154;
    sub_22C9088DC();
    v84 = v157;
    if (sub_22C370B74(v83, 1, v157) == 1)
    {
      sub_22C36DD28(v83, &qword_27D9BB190, qword_22C90DD90);
      v85 = v150;
      sub_22C903F8C();
      v86 = sub_22C9063CC();
      v87 = sub_22C90AADC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_22C366000, v86, v87, "Missing query event ID when resolving system framework intent app parameter", v88, 2u);
        MEMORY[0x2318B9880](v88, -1, -1);
      }

      (*(v152 + 8))(v85, v153);
      type metadata accessor for InterpreterError();
      sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v82 + 8))(v167, v81);
      return (*(v160 + 8))(v170, v161);
    }

    v172 = v74;
    (*(v156 + 32))(v155, v83, v84);
    v89 = v149;
    sub_22C90878C();
    v90 = sub_22C9087DC();
    v79(v89, v169);
    v174 = v90;
    sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
    v91 = sub_22C907E6C();

    v92 = *(v91 + 16);
    if (v92 == 1)
    {
      sub_22C58AF88(v91);
      v93 = v151;
      if (v105)
      {

        sub_22C90699C();
        v106 = sub_22C90931C();
        v107 = swift_allocBox();
        v109 = v108;
        v110 = sub_22C90993C();
        sub_22C36C640(v133, 1, 1, v110);
        sub_22C90923C();
        (*(*(v106 - 8) + 104))(v109, *MEMORY[0x277D72970], v106);
        v111 = v136;
        *v136 = v107;
        (*(v134 + 104))(v111, *MEMORY[0x277D72A58], v135);
        (*(v137 + 104))(v139, *MEMORY[0x277D1E938], v138);
        (*(v140 + 104))(v142, *MEMORY[0x277D1E900], v141);
        sub_22C9087AC();
        sub_22C90882C();

        v112 = v132;
        sub_22C908C1C();
        sub_22C36C640(v112, 0, 1, v173);
        v113 = sub_22C90785C();
        sub_22C603A20(v112, v159);
        v113(&v174, 0);
        goto LABEL_26;
      }
    }

    else
    {
      v93 = v151;
      if (!v92)
      {

        v94 = v145;
        sub_22C903F8C();
        v95 = v144;
        v96 = v148;
        (*(v93 + 16))(v144, v175, v148);
        v97 = sub_22C9063CC();
        v98 = sub_22C90AADC();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v174 = v175;
          *v99 = 136315138;
          LODWORD(v173) = v98;
          v100 = sub_22C908E7C();
          v102 = v101;
          (*(v93 + 8))(v95, v148);
          v103 = sub_22C36F9F4(v100, v102, &v174);

          *(v99 + 4) = v103;
          _os_log_impl(&dword_22C366000, v97, v173, "Unable to set the foreground app for system framework intent %s due to no app being in focus", v99, 0xCu);
          v104 = v175;
          sub_22C36FF94(v175);
          MEMORY[0x2318B9880](v104, -1, -1);
          MEMORY[0x2318B9880](v99, -1, -1);

          (*(v152 + 8))(v94, v153);
          (*(v156 + 8))(v155, v157);
          return (*(v82 + 8))(v167, v81);
        }

        (*(v93 + 8))(v95, v96);
        (*(v152 + 8))(v94, v153);
LABEL_26:
        (*(v156 + 8))(v155, v84);
        return (*(v82 + 8))(v167, v81);
      }
    }

    v114 = v147;
    sub_22C903F8C();
    v115 = v146;
    v116 = v148;
    (*(v93 + 16))(v146, v175, v148);

    v117 = sub_22C9063CC();
    v118 = sub_22C90AADC();

    LODWORD(v175) = v118;
    if (os_log_type_enabled(v117, v118))
    {
      v119 = v115;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v174 = v121;
      *v120 = 136315394;
      v122 = sub_22C908E7C();
      v173 = v117;
      v124 = v123;
      (*(v93 + 8))(v119, v116);
      v125 = sub_22C36F9F4(v122, v124, &v174);

      *(v120 + 4) = v125;
      *(v120 + 12) = 2080;
      v126 = sub_22C90A8CC();
      v128 = v127;

      v129 = sub_22C36F9F4(v126, v128, &v174);

      *(v120 + 14) = v129;
      v130 = v173;
      _os_log_impl(&dword_22C366000, v173, v175, "Unable to set the foreground app for system framework intent %s due to more than one app in focus: %s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v121, -1, -1);
      MEMORY[0x2318B9880](v120, -1, -1);

      (*(v152 + 8))(v147, v153);
      (*(v156 + 8))(v155, v157);
    }

    else
    {

      (*(v93 + 8))(v115, v116);
      (*(v152 + 8))(v114, v153);
      (*(v156 + 8))(v155, v84);
    }

    return (*(v158 + 8))(v167, v81);
  }

  return result;
}

uint64_t sub_22C693044(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a5;
  v95 = a6;
  v77 = a4;
  v76 = a1;
  v89 = sub_22C9069BC();
  v8 = *(v89 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - v13;
  v92 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v72 = *(v92 - 8);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](v92);
  v86 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v70 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = &v70 - v20;
  v21 = a3 + 56;
  v22 = *a2;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a3 + 56);
  v26 = (v23 + 63) >> 6;
  v83 = v8;
  v84 = (v8 + 8);

  v28 = 0;
  v75 = v22;
  v74 = v26;
  v73 = a3;
  v87 = v14;
  v71 = a3 + 56;
  if (v25)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
    }

    v25 = *(v21 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
      do
      {
LABEL_8:
        v30 = *(a3 + 48);
        v81 = v28;
        v31 = *(v30 + ((v28 << 9) | (8 * __clz(__rbit64(v25)))));

        v33 = sub_22C69374C(v32, v94, v95);
        v34 = *(v33 + 16);
        if (v34)
        {
          v79 = v31;
          v80 = v25;
          v91 = *(v92 + 48);
          v35 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v78 = v33;
          v36 = v33 + v35;
          v90 = *(v72 + 72);
          v98 = v22;
          v37 = v93;
          do
          {
            v99 = v36;
            v100 = v34;
            v38 = v85;
            sub_22C6AEA50(v36, v85, &qword_27D9BA910, &unk_22C90C960);
            v39 = v92;
            v40 = *(v92 + 48);
            *v37 = *v38;
            v41 = sub_22C908C5C();
            v42 = *(v41 - 8);
            v96 = *(v42 + 32);
            v97 = v42 + 32;
            v96(&v37[v40], &v38[v91], v41);
            v43 = sub_22C90A0EC();
            v44 = [v43 key];

            sub_22C90A11C();
            v45 = v37;
            v46 = v86;
            v47 = v41;
            v48 = v42;
            sub_22C6AEA50(v45, v86, &qword_27D9BA910, &unk_22C90C960);
            v49 = *v46;
            v50 = *(v39 + 48);
            v51 = v88;
            sub_22C90699C();
            (*(v48 + 8))(&v46[v50], v47);
            v52 = v98;
            sub_22C628D18();
            if (v54)
            {
              v55 = v53;
              swift_isUniquelyReferenced_nonNull_native();
              v101 = v52;
              v56 = v51;
              v57 = *(v52 + 24);
              sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
              sub_22C90B15C();
              v58 = v101;
              v59 = *(v83 + 8);
              v60 = v89;
              v59(*(v101 + 48) + *(v83 + 72) * v55, v89);
              v61 = v87;
              v96(v87, (*(v58 + 56) + *(v48 + 72) * v55), v47);
              sub_22C6A4290(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
              v98 = v58;
              sub_22C90B17C();
              v59(v56, v60);
              v37 = v93;
              sub_22C36DD28(v93, &qword_27D9BA910, &unk_22C90C960);
              v62 = 0;
            }

            else
            {
              (*v84)(v51, v89);
              v37 = v93;
              sub_22C36DD28(v93, &qword_27D9BA910, &unk_22C90C960);
              v62 = 1;
              v61 = v87;
            }

            sub_22C36C640(v61, v62, 1, v47);
            sub_22C36DD28(v61, &qword_27D9BB628, &unk_22C920580);
            v36 = v99 + v90;
            v34 = v100 - 1;
          }

          while (v100 != 1);

          a3 = v73;
          v63 = v82;
          v21 = v71;
          v25 = v80;
          v31 = v79;
          v64 = v98;
        }

        else
        {

          v64 = v22;
          v63 = v82;
        }

        v65 = sub_22C6476A4(v31, v64);
        v66 = sub_22C6AD280(v65);
        v82 = v63;

        v25 &= v25 - 1;

        sub_22C6A6244(&v101, v66, sub_22C7F3AA8, sub_22C6A900C, sub_22C74B664, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);

        v22 = v75;
        v26 = v74;
        v28 = v81;
      }

      while (v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C69374C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v89 = sub_22C908C5C();
  v5 = *(v89 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v8 = *(*(v90 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v90);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v80 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v79 = (v5 + 16);
  v88 = (v5 + 8);
  v71 = (v5 + 32);
  v81 = v5;
  v70 = (v5 + 40);
  v84 = a1;

  v23 = 0;
  v74 = MEMORY[0x277D84F98];
  v75 = v13;
  v83 = a3;
  v77 = v22;
  v78 = a1 + 64;
LABEL_4:
  v24 = v23;
  if (!v21)
  {
    goto LABEL_6;
  }

  do
  {
    v23 = v24;
LABEL_9:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v23 << 6);
    v27 = v84;
    v28 = *(v84 + 48);
    v29 = sub_22C9069BC();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v17, v28 + *(v30 + 72) * v26, v29);
    v31 = *(v27 + 56);
    v76 = *(v81 + 72);
    v32 = v31 + v76 * v26;
    v34 = v89;
    v33 = v90;
    (*(v81 + 16))(&v17[*(v90 + 48)], v32, v89);
    v35 = v17;
    v36 = v17;
    v37 = v80;
    sub_22C6AEA50(v36, v80, &qword_27D9BF110, &unk_22C922580);
    v5 = *(v33 + 48);
    v38 = sub_22C9069AC();
    v40 = v39;
    v41 = *(v30 + 8);
    v86 = v30 + 8;
    v87 = v29;
    v85 = v41;
    v41(v37, v29);
    if (v38 == v82 && v40 == v83)
    {

      v44 = *v88;
      (*v88)((v37 + v5), v34);
    }

    else
    {
      v43 = sub_22C90B4FC();

      v44 = *v88;
      (*v88)((v37 + v5), v34);
      if ((v43 & 1) == 0)
      {
        v17 = v35;
        sub_22C36DD28(v35, &qword_27D9BF110, &unk_22C922580);
        goto LABEL_18;
      }
    }

    v17 = v35;
    v45 = v35;
    v46 = v75;
    sub_22C6AEA50(v45, v75, &qword_27D9BF110, &unk_22C922580);
    v5 = *(v90 + 48);
    v47 = sub_22C90697C();
    if ((v48 & 1) == 0)
    {
      v49 = v47;
      v85(v46, v87);
      v50 = (v46 + v5);
      v5 = v89;
      v44(v50, v89);
      v51 = v72;
      sub_22C6AEA50(v17, v72, &qword_27D9BF110, &unk_22C922580);
      v52 = v51 + *(v90 + 48);
      v69 = *v71;
      v69(v73, v52, v5);
      v53 = v74;
      swift_isUniquelyReferenced_nonNull_native();
      v91 = v53;
      v68 = sub_22C628CD4(v49);
      v55 = *(v53 + 16);
      v56 = (v54 & 1) == 0;
      v74 = (v55 + v56);
      if (__OFADD__(v55, v56))
      {
        goto LABEL_32;
      }

      v5 = v54;
      sub_22C3A5908(&qword_27D9BF7D8, &unk_22C9230A8);
      if (sub_22C90B15C())
      {
        v57 = sub_22C628CD4(v49);
        if ((v5 & 1) != (v58 & 1))
        {
          goto LABEL_34;
        }

        v59 = v76;
      }

      else
      {
        v59 = v76;
        v57 = v68;
      }

      v60 = v89;
      v61 = v91;
      v74 = v91;
      if (v5)
      {
        (*v70)(v91[7] + v57 * v59, v73, v89);
        sub_22C36DD28(v17, &qword_27D9BF110, &unk_22C922580);
      }

      else
      {
        v91[(v57 >> 6) + 8] |= 1 << v57;
        *(v61[6] + 8 * v57) = v49;
        v69((v61[7] + v57 * v59), v73, v60);
        sub_22C36DD28(v17, &qword_27D9BF110, &unk_22C922580);
        v62 = v61[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_33;
        }

        v61[2] = v64;
      }

      v22 = v77;
      v18 = v78;
      v85(v72, v87);
      goto LABEL_4;
    }

    sub_22C36DD28(v17, &qword_27D9BF110, &unk_22C922580);
    v85(v46, v87);
    v44((v46 + v5), v89);
LABEL_18:
    v24 = v23;
    v22 = v77;
    v18 = v78;
  }

  while (v21);
LABEL_6:
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      v91 = sub_22C47039C(v74);
      sub_22C6AB298(&v91);

      sub_22C8D5C44();
      v66 = v65;

      return v66;
    }

    v21 = *(v18 + 8 * v23);
    ++v24;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_22C90B54C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C693E34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v59 = a1;
  v9 = sub_22C908C5C();
  v76 = *(v9 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v80 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9069BC();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v81 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v79 = (&v58 - v20);
  MEMORY[0x28223BE20](v19);
  v70 = (&v58 - v21);
  v22 = sub_22C3A5908(&qword_27D9BF7D0, &qword_22C923098);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v58 - v24);
  v26 = *a2;
  sub_22C6A4290(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  v69 = v12;
  v75 = v9;
  v27 = sub_22C909F0C();
  v72 = a4;
  v73 = a5;
  v28 = sub_22C69374C(v26, a4, a5);
  if (!*(v28 + 16))
  {
    goto LABEL_19;
  }

  sub_22C3A5DAC(v82);
  if (sub_22C370B74(v25, 1, v15) == 1)
  {

    sub_22C36DD28(v25, &qword_27D9BF7D0, &qword_22C923098);
LABEL_20:
    sub_22C6A6244(&v83, v27, sub_22C7F3AA8, sub_22C6A900C, sub_22C74B664, v29, v30, v31, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  }

  v32 = v15;
  v33 = *v25;
  v34 = v25 + *(v15 + 48);
  v35 = v75;
  (*(v76 + 8))(v34, v75);
  v82 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    v68 = *(v28 + 16);
    if (v68)
    {
      v36 = 0;
      v67 = v28 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v66 = *(v15 + 48);
      v77 = (v76 + 32);
      v62 = v63 + 16;
      v65 = (v63 + 8);
      v61 = v76 + 40;
      v64 = v28;
      while (v36 < *(v28 + 16))
      {
        v37 = *(v74 + 72);
        v78 = v36;
        v38 = v70;
        sub_22C6AEA50(v67 + v37 * v36, v70, &qword_27D9BA910, &unk_22C90C960);
        v39 = *(v32 + 48);
        v40 = v79;
        *v79 = *v38;
        v41 = *v77;
        (*v77)(v40 + v39, v38 + v66, v35);

        sub_22C90699C();
        v42 = v40;
        v43 = v71;
        sub_22C6AEA50(v42, v71, &qword_27D9BA910, &unk_22C90C960);
        v41(v80, v43 + *(v32 + 48), v35);
        swift_isUniquelyReferenced_nonNull_native();
        v83 = v27;
        sub_22C628D18();
        if (__OFADD__(v27[2], (v45 & 1) == 0))
        {
          goto LABEL_22;
        }

        v46 = v44;
        v47 = v45;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          sub_22C628D18();
          if ((v47 & 1) != (v49 & 1))
          {
            goto LABEL_26;
          }

          v46 = v48;
          v35 = v75;
        }

        else
        {
          v35 = v75;
        }

        v27 = v83;
        if (v47)
        {
          (*(v76 + 40))(v83[7] + *(v76 + 72) * v46, v80, v35);
          (*v65)(v81, v69);
          sub_22C36DD28(v79, &qword_27D9BA910, &unk_22C90C960);
        }

        else
        {
          v50 = v32;
          v83[(v46 >> 6) + 8] |= 1 << v46;
          v51 = v63;
          v52 = v81;
          v53 = v69;
          (*(v63 + 16))(v27[6] + *(v63 + 72) * v46, v81, v69);
          v41(v27[7] + *(v76 + 72) * v46, v80, v35);
          (*(v51 + 8))(v52, v53);
          sub_22C36DD28(v79, &qword_27D9BA910, &unk_22C90C960);
          v54 = v27[2];
          v55 = __OFADD__(v54, 1);
          v56 = v54 + 1;
          if (v55)
          {
            goto LABEL_24;
          }

          v27[2] = v56;
          v32 = v50;
        }

        v55 = __OFADD__(v82++, 1);
        v28 = v64;
        if (v55)
        {
          goto LABEL_23;
        }

        v36 = v78 + 1;
        if (v68 == v78 + 1)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C694568(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v118 = a5;
  v126 = a4;
  v109 = a1;
  v7 = sub_22C908C5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v155 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v144 = *(v148 - 8);
  v11 = *(v144 + 64);
  v12 = MEMORY[0x28223BE20](v148);
  v140 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v154 = (&v108 - v15);
  MEMORY[0x28223BE20](v14);
  v139 = (&v108 - v16);
  v17 = sub_22C3A5908(&qword_27D9BF7D0, &qword_22C923098);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v117 = (&v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = (&v108 - v21);
  v150 = sub_22C9069BC();
  v23 = *(v150 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v150);
  v156 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v149 = &v108 - v27;
  v123 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v28 = *(*(v123 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v131 = &v108 - v32;
  MEMORY[0x28223BE20](v31);
  v121 = &v108 - v33;
  v34 = *a3;
  v35 = *(*a3 + 56);
  v113 = *a3 + 56;
  v36 = 1 << *(v34 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = *a2;
  v115 = v37 & v35;
  v112 = (v36 + 63) >> 6;
  v137 = v23 + 16;
  v120 = v8 + 16;
  v119 = v23 + 32;
  v152 = v8 + 32;
  v129 = v8 + 8;
  v124 = v23;
  v147 = (v23 + 8);
  v125 = v8;
  v134 = (v8 + 40);

  v111 = v34;

  v39 = 0;
  v116 = xmmword_22C90F870;
  v138 = v22;
  while (1)
  {
    v40 = v115;
    if (v115)
    {
      v41 = v39;
    }

    else
    {
      do
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_57;
        }

        if (v41 >= v112)
        {

          sub_22C6A6244(&v158, v38, sub_22C7F3AA8, sub_22C6A900C, sub_22C74B664, v104, v105, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
        }

        v40 = *(v113 + 8 * v41);
        ++v39;
      }

      while (!v40);
    }

    v42 = *(v111 + 48);
    v114 = v41;
    v43 = *(v42 + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    v115 = (v40 - 1) & v40;
    v44 = v43 + 64;
    v45 = 1 << *(v43 + 32);
    v46 = v45 < 64 ? ~(-1 << v45) : -1;
    v47 = v46 & *(v43 + 64);
    v48 = (v45 + 63) >> 6;
    v133 = v43;
    swift_bridgeObjectRetain_n();
    v49 = 0;
    v128 = v44;
    v127 = v48;
    if (v47)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_55;
      }

      if (v50 >= v48)
      {
        break;
      }

      v47 = *(v44 + 8 * v50);
      ++v49;
      if (v47)
      {
        v157 = v38;
        v49 = v50;
        goto LABEL_19;
      }
    }

    v39 = v114;
  }

  while (1)
  {
    v157 = v38;
LABEL_19:
    v132 = v47;
    v130 = v49;
    v51 = __clz(__rbit64(v47)) | (v49 << 6);
    v52 = *(v133 + 48);
    v53 = v133;
    v54 = v124;
    v136 = *(v124 + 72);
    v55 = v121;
    v135 = *(v124 + 16);
    v135(v121, v52 + v136 * v51, v150);
    v56 = *(v53 + 56);
    v57 = v125;
    v146 = *(v125 + 72);
    v58 = v56 + v146 * v51;
    v59 = v123;
    v60 = *(v123 + 48);
    (*(v125 + 16))(v55 + v60, v58, v7);
    v153 = *(v59 + 48);
    v61 = *(v54 + 32);
    v62 = v131;
    v61(v131, v55, v150);
    v151 = *(v57 + 32);
    v151(v62 + v153, v55 + v60, v7);
    v63 = v122;
    sub_22C6AEA50(v62, v122, &qword_27D9BF110, &unk_22C922580);
    v64 = *(v59 + 48);
    v61(v149, v63, v150);
    v65 = *(v57 + 8);
    v65(v63 + v64, v7);
    v66 = sub_22C9069AC();
    v68 = sub_22C69374C(v157, v66, v67);

    v69 = sub_22C9069AC();
    v71 = sub_22C69374C(v133, v69, v70);

    if (*(v71 + 16))
    {
      break;
    }

    v77 = *v147;
    v38 = v157;
LABEL_46:
    v78 = v132;
LABEL_48:
    v47 = (v78 - 1) & v78;
    v77(v149, v150);
    sub_22C36DD28(v131, &qword_27D9BF110, &unk_22C922580);
    v44 = v128;
    v48 = v127;
    v49 = v130;
    if (!v47)
    {
      goto LABEL_15;
    }
  }

  sub_22C3A5908(&qword_27D9BAB98, &qword_22C9230A0);
  inited = swift_initStackObject();
  *(inited + 16) = v116;
  sub_22C3A5DAC(v68);

  v73 = v148;
  v74 = sub_22C370B74(v22, 1, v148);
  v75 = v117;
  v153 = v65;
  if (v74 == 1)
  {
    sub_22C36DD28(v22, &qword_27D9BF7D0, &qword_22C923098);
    v76 = -1;
  }

  else
  {
    v76 = *v22;
    v65(v22 + *(v73 + 48), v7);
  }

  v38 = v157;
  v78 = v132;
  *(inited + 32) = v76;
  sub_22C3A5DAC(v118);
  if (sub_22C370B74(v75, 1, v73) == 1)
  {
    sub_22C36DD28(v75, &qword_27D9BF7D0, &qword_22C923098);
    v79 = -1;
  }

  else
  {
    v79 = *v75;
    (v153)(v75 + *(v73 + 48), v7);
  }

  *(inited + 40) = v79;
  v80 = sub_22C3D0D14(inited);
  v82 = v81;
  swift_setDeallocating();
  if (v82)
  {
    v83 = -1;
  }

  else
  {
    v83 = v80;
  }

  v157 = (v83 + 1);
  if (__OFADD__(v83, 1))
  {
    goto LABEL_58;
  }

  v145 = *(v71 + 16);
  if (!v145)
  {

    v77 = *v147;
    goto LABEL_48;
  }

  v84 = 0;
  v143 = *(v148 + 48);
  v142 = v71 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
  v141 = v71;
  while (v84 < *(v71 + 16))
  {
    v85 = *(v144 + 72);
    v153 = v84;
    v86 = v139;
    sub_22C6AEA50(v142 + v85 * v84, v139, &qword_27D9BA910, &unk_22C90C960);
    v87 = v148;
    v88 = *(v148 + 48);
    v89 = v154;
    *v154 = *v86;
    v90 = v151;
    v151(v89 + v88, v86 + v143, v7);
    sub_22C9069AC();
    sub_22C90699C();
    v91 = v140;
    sub_22C6AEA50(v89, v140, &qword_27D9BA910, &unk_22C90C960);
    v92 = v7;
    v90(v155, v91 + *(v87 + 48), v7);
    swift_isUniquelyReferenced_nonNull_native();
    v158 = v38;
    sub_22C628D18();
    if (__OFADD__(v38[2], (v94 & 1) == 0))
    {
      goto LABEL_53;
    }

    v95 = v93;
    v96 = v94;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v71 = v141;
      if ((v96 & 1) != (v98 & 1))
      {
        goto LABEL_59;
      }

      v95 = v97;
    }

    else
    {
      v71 = v141;
    }

    v38 = v158;
    if (v96)
    {
      v7 = v92;
      (*v134)(v158[7] + v95 * v146, v155, v92);
      v77 = *v147;
      (*v147)(v156, v150);
      sub_22C36DD28(v154, &qword_27D9BA910, &unk_22C90C960);
    }

    else
    {
      v158[(v95 >> 6) + 8] |= 1 << v95;
      v99 = v156;
      v100 = v150;
      v135(v38[6] + v95 * v136, v156, v150);
      v151(v38[7] + v95 * v146, v155, v92);
      v77 = *v147;
      (*v147)(v99, v100);
      sub_22C36DD28(v154, &qword_27D9BA910, &unk_22C90C960);
      v101 = v38[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_56;
      }

      v38[2] = v103;
      v7 = v92;
    }

    v102 = __OFADD__(v157, 1);
    v157 = (v157 + 1);
    v22 = v138;
    if (v102)
    {
      goto LABEL_54;
    }

    v84 = v153 + 1;
    if (v145 == (v153 + 1))
    {

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C69527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = sub_22C902D4C();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v12 = sub_22C90769C();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v15 = sub_22C901FAC();
  v8[20] = v15;
  v16 = *(v15 - 8);
  v8[21] = v16;
  v17 = *(v16 + 64) + 15;
  v8[22] = swift_task_alloc();
  v18 = *(*(sub_22C3A5908(&qword_27D9BF778, &qword_22C923030) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v19 = sub_22C9078FC();
  v8[24] = v19;
  v20 = *(v19 - 8);
  v8[25] = v20;
  v21 = *(v20 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v22 = sub_22C908EAC();
  v8[28] = v22;
  v23 = *(v22 - 8);
  v8[29] = v23;
  v24 = *(v23 + 64) + 15;
  v8[30] = swift_task_alloc();
  v25 = sub_22C90880C();
  v8[31] = v25;
  v26 = *(v25 - 8);
  v8[32] = v26;
  v27 = *(v26 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v28 = sub_22C9063DC();
  v8[35] = v28;
  v29 = *(v28 - 8);
  v8[36] = v29;
  v30 = *(v29 + 64) + 15;
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6955D8, 0, 0);
}

uint64_t sub_22C6955D8()
{
  v27 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 104);
  v3 = sub_22C688DF8(*(v0 + 80), *(v0 + 88), 0);
  *(v0 + 320) = v3;
  sub_22C903F8C();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  if (v6)
  {
    sub_22C36BED8();
    v25 = v7;
    v10 = swift_slowAlloc();
    sub_22C370220();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6AE694();
    sub_22C36FC08();
    v12 = sub_22C90A8CC();
    v14 = sub_22C36F9F4(v12, v13, &v26);

    *(v10 + 4) = v14;
    sub_22C37B250(&dword_22C366000, v15, v16, "parameter value sets %s");
    sub_22C36FF94(v11);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v17 = *(v8 + 8);
    v17(v25, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  *(v0 + 328) = v17;
  v18 = *(v0 + 272);
  v19 = *(v0 + 96);
  sub_22C90878C();
  v20 = swift_task_alloc();
  *(v0 + 336) = v20;
  *v20 = v0;
  v20[1] = sub_22C6957D4;
  v21 = *(v0 + 272);
  v22 = *(v0 + 104);
  v23 = *(v0 + 72);

  return sub_22C696320(v3, v23);
}

uint64_t sub_22C6957D4()
{
  sub_22C36D5EC();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[42];
  v6 = *v1;
  sub_22C36D994();
  *v7 = v6;
  v3[43] = v8;
  v3[44] = v0;

  v9 = v2[40];
  v10 = v2[34];
  v11 = v2[32];
  v12 = v2[31];
  v15 = *(v11 + 8);
  v13 = v11 + 8;
  v14 = v15;
  if (!v0)
  {
    v3[45] = v14;
    v3[46] = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v14(v10, v12);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C695970()
{
  v172 = v0;
  v1 = v0[43];
  v2 = v0[38];
  sub_22C903F8C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  v168 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v163 = v0[41];
    v6 = v0[38];
    v7 = v0[36];
    v8 = v0[35];
    sub_22C36BED8();
    v9 = swift_slowAlloc();
    sub_22C370220();
    v10 = swift_slowAlloc();
    v171[0] = v10;
    *v9 = 136315138;
    sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6AE694();
    sub_22C3726C4();
    v11 = sub_22C90A8CC();
    v13 = sub_22C36F9F4(v11, v12, v171);

    *(v9 + 4) = v13;
    sub_22C374ED0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_22C36FF94(v10);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v19 = sub_22C36BAFC();
    v163(v19);
  }

  else
  {
    v20 = v0[41];
    v21 = v0[38];
    v22 = v0[35];
    v23 = v0[36];

    v24 = sub_22C36BAFC();
    v20(v24);
  }

  v25 = v0[37];
  v27 = v0[29];
  v26 = v0[30];
  v28 = v0[28];
  v29 = v0[9];
  sub_22C903F8C();
  v30 = *(v27 + 16);
  v31 = sub_22C36D39C();
  v32(v31);
  v33 = sub_22C9063CC();
  v34 = sub_22C90AABC();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[41];
  v38 = v0[36];
  v37 = v0[37];
  v39 = v0[35];
  v41 = v0[29];
  v40 = v0[30];
  v42 = v0[28];
  if (v35)
  {
    sub_22C36BED8();
    v164 = v37;
    v43 = swift_slowAlloc();
    sub_22C370220();
    v159 = v39;
    v44 = swift_slowAlloc();
    v171[0] = v44;
    *v43 = 136315138;
    v157 = v36;
    v45 = sub_22C908E7C();
    v47 = v46;
    v48 = *(v41 + 8);
    v49 = sub_22C379FC8();
    v50(v49);
    v51 = sub_22C36F9F4(v45, v47, v171);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_22C366000, v33, v34, "Resolving app intent %s", v43, 0xCu);
    sub_22C36FF94(v44);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v157(v164, v159);
  }

  else
  {

    v52 = *(v41 + 8);
    v53 = sub_22C379FC8();
    v54(v53);
    v55 = sub_22C50B578();
    (v36)(v55);
  }

  v148 = v0 + 2;
  v56 = v0[45];
  v57 = v0[46];
  v58 = v0[33];
  v59 = v0[31];
  v61 = v0[23];
  v60 = v0[24];
  v62 = v0[12];
  v63 = v0[7];
  sub_22C90878C();
  sub_22C6AF9CC();
  sub_22C6B03BC();
  sub_22C6A3CF0();
  v64 = sub_22C36D264();
  v56(v64);
  v65 = sub_22C36C8A8();
  v67 = sub_22C370B74(v65, v66, v60);
  v68 = v0[27];
  if (v67 == 1)
  {
    v70 = v0[23];
    v69 = v0[24];
    v71 = v0[19];
    v73 = v0[17];
    v72 = v0[18];
    v74 = v0[14];
    v75 = v0[8];
    (*(v0[21] + 16))(v0[22], v0[7], v0[20]);
    v76 = *(v72 + 16);
    v77 = sub_22C36BE34();
    v78(v77);
    sub_22C909F0C();
    MEMORY[0x2318B4D00]();
    sub_22C36CA88();
    sub_22C9077EC();
    sub_22C376738(v70);
    if (!v79)
    {
      sub_22C36DD28(v0[23], &qword_27D9BF778, &qword_22C923030);
    }
  }

  else
  {
    v80 = v0[24];
    v81 = v0[23];
    v82 = sub_22C36CB30(v0[25]);
    v83(v82);
  }

  v84 = v0[43];
  v85 = v0[27];
  v86 = v0[21];
  v87 = v0[15];
  v88 = v0[10];
  sub_22C9078AC();
  sub_22C3A5908(&qword_27D9BF780, &qword_22C923040);
  result = sub_22C90B1CC();
  v90 = result;
  v91 = 0;
  v92 = v88 + 64;
  v151 = v88;
  v93 = 1 << *(v88 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v88 + 64);
  v96 = (v93 + 63) >> 6;
  v150 = *MEMORY[0x277D1D830];
  v149 = result + 64;
  v153 = result;
  v155 = v87;
  if (v95)
  {
    while (1)
    {
      v97 = __clz(__rbit64(v95));
      v160 = (v95 - 1) & v95;
LABEL_20:
      v100 = v97 | (v91 << 6);
      v101 = v0[16];
      v102 = v0[14];
      v103 = (*(v151 + 48) + 16 * v100);
      v104 = v103[1];
      v165 = *v103;
      (*(v86 + 16))(v0[22], *(v151 + 56) + *(v86 + 72) * v100, v0[20]);
      v105 = *(v86 + 32);
      v106 = sub_22C38BD8C();
      v107(v106);
      (*(v155 + 104))(v101, v150, v102);
      *(v149 + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v100;
      v90 = v153;
      v108 = (v153[6] + 16 * v100);
      *v108 = v165;
      v108[1] = v104;
      result = (*(v155 + 32))(v153[7] + *(v155 + 72) * v100, v101, v102);
      v109 = v153[2];
      v110 = __OFADD__(v109, 1);
      v111 = v109 + 1;
      if (v110)
      {
        break;
      }

      v153[2] = v111;

      v0 = v168;
      v95 = v160;
      if (!v160)
      {
        goto LABEL_15;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_15:
    v98 = v91;
    while (1)
    {
      v91 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v91 >= v96)
      {
        break;
      }

      v99 = *(v92 + 8 * v91);
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v160 = (v99 - 1) & v99;
        goto LABEL_20;
      }
    }

    v112 = v0[44];
    v114 = v0[26];
    v113 = v0[27];
    v115 = v90;
    v117 = v0[12];
    v116 = v0[13];
    v118 = v0[9];
    v119 = sub_22C9078BC();
    sub_22C6AC78C(v115, sub_22C6AC71C, 0, v120);
    v119(v148, 0);
    v121 = sub_22C36EC8C();
    sub_22C691BA8(v121, v122, v117, v123);
    if (v112)
    {
      (*(v0[25] + 8))(v0[27], v0[24]);
      v125 = v0[38];
      v124 = v0[39];
      v126 = v0[37];
      v128 = v0[33];
      v127 = v0[34];
      v129 = v0[30];
      v131 = v0[26];
      v130 = v0[27];
      v132 = v0[23];
      v161 = v0[22];
      v166 = v0[19];
      v169 = v0[16];

      sub_22C369A24();
    }

    else
    {
      v134 = v0[38];
      v135 = v0[39];
      v136 = v0[37];
      v152 = v0[34];
      v154 = v0[33];
      v137 = v0[26];
      v138 = v0[27];
      v140 = v0[24];
      v139 = v0[25];
      v156 = v0[30];
      v158 = v0[23];
      v162 = v0[22];
      v167 = v0[19];
      v170 = v0[16];
      v141 = v0[6];
      v142 = *(v139 + 8);
      v143 = sub_22C3819EC();
      v144(v143);
      v145 = *(v139 + 32);
      v146 = sub_22C371510();
      v145(v146);
      v147 = sub_22C370114();
      v145(v147);
      type metadata accessor for StepResolution();
      sub_22C6AF8C8();
      swift_storeEnumTagMultiPayload();

      sub_22C369C50();
    }

    return v133();
  }

  return result;
}

uint64_t sub_22C696220()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[22];
  v10 = v0[23];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[44];

  sub_22C369A24();

  return v11();
}

uint64_t sub_22C696320(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C3A5908(&qword_27D9BB688, &unk_22C90FA60);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = *(*(sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v12 = sub_22C90665C();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = *(*(sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v16 = sub_22C90931C();
  v3[19] = v16;
  v17 = *(v16 - 8);
  v3[20] = v17;
  v18 = *(v17 + 64) + 15;
  v3[21] = swift_task_alloc();
  v19 = sub_22C9093BC();
  v3[22] = v19;
  v20 = *(v19 - 8);
  v3[23] = v20;
  v21 = *(v20 + 64) + 15;
  v3[24] = swift_task_alloc();
  v22 = sub_22C9092DC();
  v3[25] = v22;
  v23 = *(v22 - 8);
  v3[26] = v23;
  v24 = *(v23 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v25 = sub_22C908C5C();
  v3[29] = v25;
  v26 = *(v25 - 8);
  v3[30] = v26;
  v27 = *(v26 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v28 = sub_22C9069BC();
  v3[34] = v28;
  v29 = *(v28 - 8);
  v3[35] = v29;
  v30 = *(v29 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v31 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v3[38] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v33 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
  v3[45] = v33;
  v34 = *(v33 - 8);
  v3[46] = v34;
  v35 = *(v34 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C696844, 0, 0);
}

uint64_t sub_22C697838()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 424);
  *v4 = *v1;
  v3[54] = v7;
  v3[55] = v0;

  if (v0)
  {
    v8 = v3[52];
    v9 = v3[49];
    v10 = v3[3];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C697960()
{
  v288 = v0;
  v1 = v0[54];
  v2 = v0[12];
  sub_22C903F8C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[54];
    v6 = v0[22];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    sub_22C36BED8();
    v10 = swift_slowAlloc();
    sub_22C370220();
    v11 = swift_slowAlloc();
    v287[0] = v11;
    *v10 = 136315138;
    v12 = sub_22C36FC2C();
    v13 = MEMORY[0x2318B7AD0](v12);
    v15 = sub_22C36F9F4(v13, v14, v287);

    *(v10 + 4) = v15;
    sub_22C374ED0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_22C36FF94(v11);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v21 = *(v8 + 8);
    v22 = sub_22C36BAFC();
    v23(v22);
  }

  else
  {
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[10];

    v27 = sub_22C371810();
    v28(v27);
  }

  v261 = v0;
  v29 = v0[54];
  v30 = v0[55];
  v31 = v0[35];
  v268 = v0[34];
  v271 = v0[37];
  v32 = v0[33];
  v33 = v0[30];
  v276 = v0[29];
  v281 = v0[52];
  v34 = v0[9];
  v35 = v0[6];
  *(swift_task_alloc() + 16) = v32;
  sub_22C3B4774();
  v37 = v36;

  v38 = *(v35 + 48);
  v39 = *(v35 + 64);
  (*(v31 + 16))(v34, v271, v268);
  (*(v33 + 16))(v34 + v38, v32, v276);
  *(v34 + v39) = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v0[52];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_56:
    sub_22C377B6C(isUniquelyReferenced_nonNull_native, v41, v42, v43);
    sub_22C5955F4();
    v43 = v229;
  }

  v45 = *(v43 + 16);
  v44 = *(v43 + 24);
  if (v45 >= v44 >> 1)
  {
    sub_22C369AB0(v44);
    sub_22C5955F4();
    v248 = v230;
  }

  else
  {
    v248 = v43;
  }

  v46 = v261;
  v47 = v261[28];
  v48 = v261[25];
  v49 = v261[26];
  v51 = v261[16];
  v50 = v261[17];
  v52 = v261[15];
  v53 = v261[9];
  v54 = v261[7];
  sub_22C36DD28(v261[13], &qword_27D9BC0C0, &unk_22C911FA0);
  v56 = *(v51 + 8);
  v55 = v51 + 8;
  v57 = sub_22C5CA640();
  v58(v57);
  v60 = *(v49 + 8);
  v59 = v49 + 8;
  v61 = sub_22C36BAFC();
  v62(v61);
  *(v248 + 16) = v45 + 1;
  v63 = *(v54 + 80);
  sub_22C36BA94();
  sub_22C6AE8BC(v53, v65 + v64 + *(v54 + 72) * v45, &qword_27D9BB688, &unk_22C90FA60);
  while (1)
  {
    v66 = v46[50];
    v67 = v46[37];
    v68 = v46[34];
    v69 = v46[35];
    v70 = v46[51] + 1;
    (*(v46[30] + 8))(v46[33], v46[29]);
    v71 = sub_22C6AEDE8();
    isUniquelyReferenced_nonNull_native = v72(v71);
    if (v70 == v66)
    {
      break;
    }

    v73 = v46[51] + 1;
    v46[51] = v73;
    v46[52] = v248;
    if (v73 >= *(v46[49] + 16))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v74 = v46;
    v282 = *(v46 + 114);
    v75 = *(v46 + 452);
    v272 = *(v46 + 112);
    v76 = v46[46];
    v77 = v46[47];
    v55 = v46[37];
    v78 = v46[35];
    v79 = v74[33];
    v54 = v74[34];
    v81 = v74[29];
    v80 = v74[30];
    v82 = v74[23];
    v59 = v74[24];
    v277 = v74[22];
    v83 = sub_22C6AFA70(v73);
    sub_22C6AEA50(v83, v84, &qword_27D9BAD40, &qword_22C90D5E0);
    v85 = *(v78 + 32);
    v86 = sub_22C4F6088();
    v87(v86);
    (*(v80 + 32))(v79, v77 + v272, v81);
    sub_22C90774C();
    if ((*(v82 + 88))(v59, v277) != v282)
    {
      v118 = v74[23];
      v117 = v74[24];
      v119 = v74[22];
      goto LABEL_16;
    }

    v88 = *(v74 + 115);
    v89 = v74[24];
    v91 = v74[21];
    v90 = v74[22];
    v93 = v74[19];
    v92 = v74[20];
    v94 = sub_22C37EBDC(v74[23]);
    v95(v94);
    sub_22C6B005C();
    sub_22C37BBE4();
    v96 = sub_22C6AFF38();
    v97(v96);
    v98 = *(v92 + 88);
    v99 = sub_22C37B220();
    if (v100(v99) == v88)
    {
      v101 = v74[28];
      v103 = v74[25];
      v102 = v74[26];
      (*(v74[20] + 96))(v74[21], v74[19]);
      v104 = *(v102 + 32);
      v105 = sub_22C6AF3F0();
      v106(v105);

      v107 = sub_22C9092CC();
      v108 = sub_22C6AE3D4(v107);
      if (v109)
      {
        v54 = v108;
        v55 = v109;
        v110 = v74[33];
        v111 = v74[18];
        sub_22C908B8C();
        sub_22C901ECC();
        v112 = sub_22C36CCF8();
        sub_22C36D0A8(v112, v113, v114);
        v46 = v74;
        if (v115)
        {
LABEL_50:
          v206 = v46[27];
          v207 = v46[28];
          v209 = v46[25];
          v208 = v46[26];
          v210 = v46[17];
          v211 = v46[14];
          v275 = v46[13];
          v280 = v46[37];
          v212 = v46[4];
          v285 = v46[5];
          sub_22C36DD28(v46[18], &qword_27D9BF318, &qword_22C9225A0);
          v213 = *(v208 + 16);
          v214 = sub_22C634768();
          v215(v214);
          sub_22C9065FC();
          sub_22C90663C();
          sub_22C6AFB90();
          sub_22C36BECC();
          v220 = sub_22C36C640(v216, v217, v218, v219);
          MEMORY[0x2318B3AB0](v220);
          sub_22C9065CC();
          sub_22C908DCC();
          v221 = sub_22C4E78D0();
          sub_22C6AF20C(v221);
          sub_22C6B0844();

          v222 = type metadata accessor for Interpreter(0);
          sub_22C6B0564(*(v222 + 40));
          sub_22C369B5C();
          v286 = (v223 + *v223);
          v225 = *(v224 + 4);
          v226 = swift_task_alloc();
          v46[53] = v226;
          *v226 = v46;
          sub_22C6AF39C();
          v227 = v46[13];
          v228 = sub_22C373E44(v46[17]);

          return v286(v228);
        }

        v116 = v74[18];
        (*(v74[26] + 8))(v74[28], v74[25]);

        sub_22C36DD28(v116, &qword_27D9BF318, &qword_22C9225A0);
      }

      else
      {
        v117 = v74[28];
        v119 = v74[25];
        v118 = v74[26];
LABEL_16:
        (*(v118 + 8))(v117, v119);
        v46 = v74;
      }
    }

    else
    {
      (*(v74[20] + 8))(v74[21], v74[19]);

      v46 = v74;
    }
  }

  v120 = v46[49];

  v121 = v46;
  v233 = *(v248 + 16);
  if (!v233)
  {

    goto LABEL_46;
  }

  v243 = v46[30];
  v240 = v46[7];
  v241 = v46[8];
  v239 = *(v46[6] + 48);
  v122 = *(v240 + 80);
  sub_22C37BEE8();
  v235 = *(v124 + 64);
  v237 = isUniquelyReferenced_nonNull_native + v125;
  while (2)
  {
    if (v123 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_55;
    }

    v126 = v261;
    sub_22C6AFDC4();
    v128 = v127;
    sub_22C6AEA50(v237 + *(v240 + 72) * v127, v55, &qword_27D9BB688, &unk_22C90FA60);
    v129 = v241;
    v247 = *(v241 + v235);
    v130 = *(v59 + 32);
    v59 += 32;
    v131 = sub_22C36EC8C();
    v259 = v59;
    v255 = v132;
    v132(v131);
    v133 = *(v54 + 32);
    v54 += 32;
    v46 = (v128 + 1);
    v242 = v46;
    v134 = sub_22C6AFB9C();
    v257 = v54;
    v253 = v135;
    (v135)(v134);
    v136 = v261[2];
    v138 = *(v136 + 56);
    v137 = v136 + 56;
    v139 = *(v261[2] + 32);
    sub_22C36EC98();
    v142 = v141 & v140;
    sub_22C634720();
    v144 = v143 >> 6;
    v246 = v145;

    v146 = 0;
    v244 = v144;
    v245 = v137;
    if (!v142)
    {
      goto LABEL_24;
    }

LABEL_27:
    while (2)
    {
      sub_22C383840();
      v249 = v148;
      v251 = v142;
      v54 = *(*(v246 + 48) + ((v148 << 9) | (8 * v149)));
      v151 = *(v54 + 64);
      v150 = v54 + 64;
      v152 = *(v54 + 32);
      sub_22C36EC98();
      v59 = v154 & v153;
      sub_22C634720();
      v156 = v155 >> 6;
      swift_bridgeObjectRetain_n();
      v157 = 0;
      v264 = v54 + 64;
      v266 = v54;
      v262 = v156;
      if (v59)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v158 = v157 + 1;
        if (__OFADD__(v157, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v158 >= v156)
        {
          break;
        }

        v59 = *(v150 + 8 * v158);
        ++v157;
        if (v59)
        {
          v157 = v158;
          do
          {
LABEL_32:
            v160 = v126[39];
            v159 = v126[40];
            v161 = v126[38];
            v273 = v126[36];
            v46 = v126[34];
            v162 = v126[30];
            v269 = v126[29];
            sub_22C6B0108(v126[35]);
            v163 = sub_22C6AFF38();
            v164(v163);
            v165 = *(v162 + 16);
            v55 = v162 + 16;
            v278 = v165;
            v283 = *(v55 + 56);
            v166 = *(v129 + 56) + v283 * (__clz(__rbit64(v59)) | (v157 << 6));
            v167 = *(v161 + 48);
            v129 = v269;
            (v165)(v159 + v167, v166, v269);
            v168 = *(v161 + 48);
            v169 = sub_22C36BBCC();
            v255(v169);
            v253(v160 + v168, v159 + v167, v269);
            if (sub_22C90698C())
            {
              v126 = v261;
              v170 = v261[32];
              if (sub_22C908BEC())
              {
                sub_22C8C3880();

                v129 = *(v247 + 16);
                if (v129)
                {
                  v171 = *(v243 + 80);
                  sub_22C36BA94();
                  v174 = v173 + v172;
                  do
                  {
                    v175 = v126[36];
                    v46 = v126[31];
                    v176 = v126[29];
                    v177 = sub_22C3806B8();
                    v278(v177);
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_22C6AFCA4();
                    v178 = sub_22C372280();
                    sub_22C62E7EC(v178, v179, v180, v181, v182, v183, v184, v185, v231, v233, v235, v237);
                    v54 = v287[0];

                    sub_22C6AF418();
                    sub_22C6A6244(v287, v54, v186, sub_22C6A900C, sub_22C74B664, v187, v188, v189, v232, v234, v236, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v251, v253, v255, v257, v259, v261, v262, v264, v266);

                    v174 += v283;
                    --v129;
                  }

                  while (v129);
                }
              }
            }

            else
            {
              v126 = v261;
            }

            v59 &= v59 - 1;
            sub_22C36DD28(v126[39], &qword_27D9BF110, &unk_22C922580);
            v156 = v262;
            v150 = v264;
          }

          while (v59);
        }
      }

      v146 = v249;
      v142 = v251;
      v144 = v244;
      v137 = v245;
      if (v251)
      {
        continue;
      }

      break;
    }

    while (1)
    {
LABEL_24:
      v147 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v147 >= v144)
      {
        break;
      }

      v142 = *(v137 + 8 * v147);
      ++v146;
      if (v142)
      {
        goto LABEL_27;
      }
    }

    v190 = v126;
    v193 = v126 + 35;
    v192 = v126[35];
    v191 = v193[1];
    v194 = v190[34];
    v195 = v190[32];
    v196 = v190[29];
    v197 = v190[30];

    v198 = *(v197 + 8);
    v199 = sub_22C36D264();
    v200(v199);
    v201 = sub_22C381704();
    v202(v201);

    v123 = v242;
    isUniquelyReferenced_nonNull_native = v248;
    if (v242 != v233)
    {
      continue;
    }

    break;
  }

  v121 = v261;
LABEL_46:
  sub_22C6AFC70();
  v250 = v121[31];
  v252 = v121[28];
  v254 = v121[27];
  v256 = v121[24];
  v258 = v121[21];
  v260 = v121[18];
  v263 = v121[17];
  v265 = v121[14];
  v267 = v121[13];
  v270 = v121[12];
  v274 = v121[9];
  v279 = v121[8];
  v284 = v121[2];

  v203 = sub_22C6B03C8();

  return v204(v203);
}

uint64_t sub_22C6985C0()
{
  v21 = v0[48];
  v22 = v0[47];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[36];
  v1 = v0[35];
  v19 = v0[34];
  v20 = v0[37];
  v18 = v0[33];
  v2 = v0[30];
  v31 = v0[32];
  v32 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[25];
  v33 = v0[27];
  v34 = v0[24];
  v35 = v0[21];
  v36 = v0[18];
  v30 = v0[17];
  v7 = v0[15];
  v8 = v0[16];
  v37 = v0[14];
  v38 = v0[12];
  v39 = v0[9];
  v40 = v0[8];
  sub_22C36DD28(v0[13], &qword_27D9BC0C0, &unk_22C911FA0);
  v9 = *(v8 + 8);
  v10 = sub_22C372FA4();
  v11(v10);
  (*(v5 + 8))(v4, v6);
  v12 = *(v2 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  (*(v1 + 8))(v20, v19);

  sub_22C369A24();
  v16 = v0[55];

  return v15();
}

uint64_t sub_22C6987E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_22C9097DC();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    sub_22C36EBF0();
    v9 = sub_22C90B4FC();
  }

  return v9 & 1;
}

uint64_t sub_22C698884(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22C908C3C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22C9093BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_22C908C4C();
  sub_22C908BAC();
  return sub_22C908C0C();
}

uint64_t sub_22C698A0C()
{
  sub_22C369980();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v9 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[26] = sub_22C36D0D4();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[29] = sub_22C3699D4();
  v15 = sub_22C903B1C();
  v1[30] = v15;
  sub_22C3699B8(v15);
  v1[31] = v16;
  v18 = *(v17 + 64);
  v1[32] = sub_22C3699D4();
  v19 = sub_22C908AEC();
  v1[33] = v19;
  sub_22C3699B8(v19);
  v1[34] = v20;
  v22 = *(v21 + 64);
  v1[35] = sub_22C3699D4();
  Converter = type metadata accessor for StructuredQueryConverter(0);
  sub_22C369914(Converter);
  v25 = *(v24 + 64);
  v1[36] = sub_22C3699D4();
  v26 = sub_22C90069C();
  v1[37] = v26;
  sub_22C3699B8(v26);
  v1[38] = v27;
  v29 = *(v28 + 64);
  v1[39] = sub_22C3699D4();
  v30 = sub_22C900A4C();
  v1[40] = v30;
  sub_22C3699B8(v30);
  v1[41] = v31;
  v33 = *(v32 + 64);
  v1[42] = sub_22C36D0D4();
  v1[43] = swift_task_alloc();
  v34 = sub_22C90952C();
  v1[44] = v34;
  sub_22C3699B8(v34);
  v1[45] = v35;
  v37 = *(v36 + 64);
  v1[46] = sub_22C36D0D4();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v38 = sub_22C9039FC();
  v1[49] = v38;
  sub_22C3699B8(v38);
  v1[50] = v39;
  v41 = *(v40 + 64);
  v1[51] = sub_22C3699D4();
  v42 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v42);
  v44 = *(v43 + 64);
  v1[52] = sub_22C36D0D4();
  v1[53] = swift_task_alloc();
  v45 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  v1[54] = sub_22C36D0D4();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v48 = sub_22C9063DC();
  v1[57] = v48;
  sub_22C3699B8(v48);
  v1[58] = v49;
  v51 = *(v50 + 64);
  v1[59] = sub_22C36D0D4();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v52 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v52);
  v54 = *(v53 + 64);
  v1[62] = sub_22C36D0D4();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v55 = sub_22C901FAC();
  v1[65] = v55;
  sub_22C3699B8(v55);
  v1[66] = v56;
  v58 = *(v57 + 64);
  v1[67] = sub_22C36D0D4();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v59 = sub_22C90654C();
  v1[70] = v59;
  sub_22C3699B8(v59);
  v1[71] = v60;
  v62 = *(v61 + 64);
  v1[72] = sub_22C36D0D4();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v63 = sub_22C9070DC();
  v1[77] = v63;
  sub_22C3699B8(v63);
  v1[78] = v64;
  v66 = *(v65 + 64);
  v1[79] = sub_22C36D0D4();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v67 = sub_22C9093BC();
  v1[84] = v67;
  sub_22C3699B8(v67);
  v1[85] = v68;
  v70 = *(v69 + 64);
  v1[86] = sub_22C36D0D4();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v71 = sub_22C908A0C();
  v1[93] = v71;
  sub_22C3699B8(v71);
  v1[94] = v72;
  v74 = *(v73 + 64);
  v1[95] = sub_22C3699D4();
  v75 = sub_22C90880C();
  v1[96] = v75;
  sub_22C3699B8(v75);
  v1[97] = v76;
  v78 = *(v77 + 64);
  v1[98] = sub_22C36D0D4();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v79, v80, v81);
}

uint64_t sub_22C69AE14()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 896);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 904) = v0;

  if (v0)
  {
    v9 = *(v3 + 888);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C69AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 888);
  v14 = *(v12 + 880);
  v15 = *(v12 + 872);
  v16 = *(v12 + 736);
  v17 = *(v12 + 672);
  v18 = *(v12 + 288);
  sub_22C71BBF8(*(v12 + 696));
  v19 = sub_22C36D264();
  v15(v19);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = sub_22C6AFE00();
  sub_22C62EC0C(v20, v21, v22, v23, v24, v25, v26, v27, v251, v253, v256, v259, v262, v265);
  v28 = v13;
  v29 = sub_22C900CCC();
  sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
  sub_22C3704C4();
  v30 = sub_22C90098C();
  sub_22C369824(v30);
  v32 = v31;
  v34 = *(v33 + 72);
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22C90F800;
  (*(v32 + 104))(v36 + v35, *MEMORY[0x277D36E40], v30);
  if (v29)
  {
    sub_22C36BBCC();
    sub_22C46EC84();
    v38 = v37;

    swift_setDeallocating();
    sub_22C5900BC();
    if (v38)
    {
      v39 = *(v12 + 176);
      sub_22C907D6C();
      v40 = sub_22C3707B4();
      sub_22C36D0A8(v40, v41, v42);
      if (!v68)
      {
        v328 = *(v12 + 832);
        v330 = v28;
        v43 = *(v12 + 824);
        v44 = *(v12 + 816);
        v45 = *(v12 + 808);
        v46 = *(v12 + 784);
        v47 = *(v12 + 768);
        v49 = *(v12 + 232);
        v48 = *(v12 + 240);
        v50 = *(v12 + 160);
        sub_22C90878C();
        v51 = sub_22C9087DC();
        v52 = sub_22C36CA88();
        v45(v52);
        *(v12 + 144) = v51;
        sub_22C907EAC();
        sub_22C6AF978();
        sub_22C36D0A8(v53, v54, v55);
        if (v68)
        {
          sub_22C36DD28(*(v12 + 232), &qword_27D9BD760, &qword_22C922200);
        }

        else
        {
          v184 = *(v12 + 256);
          v185 = *(v12 + 232);
          v186 = *(v12 + 240);
          v187 = sub_22C36CB30(*(v12 + 248));
          v188(v187);

          v189 = sub_22C903A7C();
          if (v189 & 1) != 0 || (v198 = *(v12 + 256), v199 = sub_22C903A1C(), v199 != 2) && (v199)
          {
            sub_22C6AF2F8();
            type metadata accessor for InterpreterError();
            sub_22C371B74();
            sub_22C6A4290(v190, v191);
            sub_22C6AF8C8();
            sub_22C37A198();
            v192 = swift_allocError();
            sub_22C6AF828(v192, v193);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v194 = sub_22C6AF6E8();
            v195(v194);
            v196 = *(v43 + 8);
            v197 = sub_22C37FE24();
            v196(v197);
            sub_22C36FDE0();
            sub_22C6A438C();
            (v196)(v321, v47);
            sub_22C36DD28(v322, &qword_27D9BD798, &unk_22C919070);
            (*(v51 + 8))();
            goto LABEL_24;
          }

          (*(*(v12 + 248) + 8))(*(v12 + 256), *(v12 + 240));
        }

        v200 = *(v12 + 480);
        sub_22C903F8C();
        v201 = sub_22C9063CC();
        sub_22C90AAFC();
        sub_22C37E84C();
        if (os_log_type_enabled(v201, v202))
        {
          sub_22C3720F4();
          v203 = swift_slowAlloc();
          sub_22C36C890(v203);
          sub_22C36BB14(&dword_22C366000, v204, v205, "Forcing search to 1P photos to enable photo picker.");
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v206 = *(v12 + 480);
        v207 = *(v12 + 456);
        v208 = *(v12 + 464);
        v209 = *(v12 + 352);

        v210 = *(v208 + 8);
        v211 = sub_22C36BAFC();
        v212(v211);
        v213 = swift_allocBox();
        if (qword_27D9BA6F8 != -1)
        {
          swift_once();
        }

        v214 = *(v12 + 672);
        v215 = *(v12 + 360);
        v216 = *(v12 + 224);
        v217 = *(v12 + 200);
        v218 = *(v12 + 184);
        sub_22C37AA60(*(v12 + 352), qword_27D9E3FD0);
        v219 = *(v215 + 16);
        v220 = sub_22C6AFBEC();
        v221(v220);
        *v217 = v213;
        v222 = *MEMORY[0x277D72AD0];
        v223 = sub_22C90941C();
        sub_22C36985C(v223);
        (*(v224 + 104))(v217, v222, v223);
        sub_22C36BECC();
        sub_22C36C640(v225, v226, v227, v223);
        sub_22C69C564(v217, v216);
        sub_22C36DD28(v217, &qword_27D9BC028, &unk_22C9134B0);
        v228 = sub_22C36FD7C();
        sub_22C36D0A8(v228, v229, v214);
        if (!v68)
        {
          v241 = *(v12 + 864);
          (*(v12 + 856))(*(v12 + 736), *(v12 + 224), *(v12 + 672));
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C6AF718();
          sub_22C370018();
          sub_22C6B017C();
          sub_22C62EC0C(v242, v243, v244, v245, v246, v247, v248, v249, v252, v254, v257, v260, v263, v266);
          goto LABEL_22;
        }

        sub_22C36DD28(*(v12 + 224), &qword_27D9BB908, &qword_22C910960);
        v230 = sub_22C36E2BC(0x6E65644965707974, 0xEF73726569666974);
        if (v231)
        {
          v232 = v230;
          v233 = *(v12 + 864);
          v234 = *(v12 + 856);
          v235 = *(v12 + 680);
          v236 = *(v12 + 672);
          v237 = *(v12 + 216);
          swift_isUniquelyReferenced_nonNull_native();
          v238 = v330[3];
          sub_22C3A5908(&qword_27D9BF428, &qword_22C9226E8);
          sub_22C90B15C();
          v239 = *(v330[6] + 16 * v232 + 8);

          v234(v237, v330[7] + *(v235 + 72) * v232, v236);
          sub_22C36BA00();
          sub_22C90B17C();
          v240 = 0;
        }

        else
        {
          v240 = 1;
        }

        v250 = *(v12 + 216);
        sub_22C36C640(v250, v240, 1, *(v12 + 672));
        v61 = v250;
LABEL_11:
        sub_22C36DD28(v61, &qword_27D9BB908, &qword_22C910960);
        goto LABEL_22;
      }
    }
  }

  else
  {
    swift_setDeallocating();
    sub_22C5900BC();
  }

  v56 = *(v12 + 672);
  v58 = *(v12 + 200);
  v57 = *(v12 + 208);
  v59 = *(v12 + 184);
  v60 = *(v12 + 152);
  sub_22C9082FC();
  sub_22C69C564(v58, v57);
  sub_22C36DD28(v58, &qword_27D9BC028, &unk_22C9134B0);
  sub_22C369A54(v57);
  if (v68)
  {
    v61 = *(v12 + 208);
    goto LABEL_11;
  }

  v62 = *(v12 + 864);
  v63 = *(v12 + 192);
  v64 = *(v12 + 152);
  (*(v12 + 856))(*(v12 + 688), *(v12 + 208), *(v12 + 672));
  sub_22C9082FC();
  v65 = sub_22C90941C();
  v66 = sub_22C36CCF8();
  sub_22C36D0A8(v66, v67, v65);
  if (v68)
  {
    sub_22C36DD28(*(v12 + 192), &qword_27D9BC028, &unk_22C9134B0);
LABEL_21:
    v104 = *(v12 + 880);
    v105 = *(v12 + 872);
    v106 = *(v12 + 736);
    v107 = *(v12 + 688);
    v108 = *(v12 + 680);
    v109 = *(v12 + 672);
    v110 = sub_22C36BAFC();
    v111(v110);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6B017C();
    sub_22C62EC0C(v106, v112, v113, v114, v115, v116, v117, v118, v252, v254, v257, v260, v263, v266);
    v119 = *(v108 + 8);
    v120 = sub_22C36D264();
    v121(v120);
    goto LABEL_22;
  }

  v70 = *(v12 + 360);
  v69 = *(v12 + 368);
  v71 = *(v12 + 352);
  v72 = *(v12 + 192);
  sub_22C9093DC();
  sub_22C36BBA8(v65);
  v74 = *(v73 + 8);
  v75 = sub_22C372164();
  v76(v75);
  v77 = sub_22C9094EC();
  v78 = swift_allocBox();
  v79 = *MEMORY[0x277D72CC0];
  sub_22C36BBA8(v77);
  (*(v80 + 104))();
  *v69 = v78;
  (*(v70 + 104))(v69, *MEMORY[0x277D72D50], v71);
  sub_22C37B220();
  sub_22C5E94F0();
  v82 = v81;

  v83 = sub_22C6AEEC0();
  v84(v83);
  if ((v82 & 1) == 0)
  {
    goto LABEL_21;
  }

  v85 = *(v12 + 288);
  if (!sub_22C900CCC())
  {
    v86 = *(v12 + 288);
    if (!sub_22C900DAC())
    {
      goto LABEL_21;
    }
  }

  v87 = *(v12 + 472);

  sub_22C903F8C();
  v88 = sub_22C9063CC();
  v89 = sub_22C90AADC();
  v90 = os_log_type_enabled(v88, v89);
  v91 = *(v12 + 688);
  v92 = *(v12 + 680);
  v93 = *(v12 + 672);
  v95 = *(v12 + 464);
  v94 = *(v12 + 472);
  v96 = *(v12 + 456);
  if (v90)
  {
    sub_22C3720F4();
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_22C366000, v88, v89, "Ignoring required return type since this is a file search with filter/preferred type specified", v97, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v98 = *(v95 + 8);
  v99 = sub_22C36ECB4();
  v100(v99);
  v101 = *(v92 + 8);
  v102 = sub_22C36BBCC();
  v103(v102);
LABEL_22:
  v122 = *(v12 + 904);
  v123 = *(v12 + 152);
  v124 = *(v12 + 160);
  sub_22C9082EC();
  *(sub_22C4E78D0() + 16) = v124;
  sub_22C37A060();
  sub_22C7944D8();
  if (v122)
  {
    v326 = *(v12 + 760);
    v126 = *(v12 + 752);
    v324 = *(v12 + 744);
    v127 = *(v12 + 704);
    v128 = *(v12 + 696);
    v129 = *(v12 + 680);
    v130 = *(v12 + 672);
    v131 = *(v12 + 424);
    v132 = *(v12 + 288);

    v133 = *(v129 + 8);
    v134 = sub_22C36FC2C();
    v133(v134);
    sub_22C36FDE0();
    sub_22C6A438C();
    v135 = sub_22C374C34();
    v133(v135);
    sub_22C36DD28(v131, &qword_27D9BD798, &unk_22C919070);
    (*(v126 + 8))(v326, v324);

LABEL_24:
    sub_22C6AF3BC();
    v272 = *(v12 + 656);
    v274 = *(v12 + 648);
    v276 = *(v12 + 640);
    v278 = *(v12 + 632);
    v280 = *(v12 + 608);
    v282 = *(v12 + 600);
    sub_22C6B01A4();
    sub_22C6B0364();
    sub_22C6B01BC();
    v286 = *(v12 + 512);
    v287 = *(v12 + 504);
    v288 = *(v12 + 496);
    v290 = *(v12 + 488);
    v292 = *(v12 + 480);
    v294 = *(v12 + 472);
    v296 = *(v12 + 448);
    v298 = *(v12 + 440);
    v300 = *(v12 + 432);
    v302 = *(v12 + 424);
    v304 = *(v12 + 416);
    v306 = *(v12 + 408);
    v308 = *(v12 + 384);
    v310 = *(v12 + 376);
    v312 = *(v12 + 368);
    v314 = *(v12 + 344);
    v316 = *(v12 + 336);
    v318 = *(v12 + 312);
    v136 = *(v12 + 288);
    sub_22C6AEF40(*(v12 + 280));

    sub_22C369A24();
    sub_22C372034();

    return v138(v137, v138, v139, v140, v141, v142, v143, v144, a9, a10, a11, a12);
  }

  v146 = v125;

  if (*(v146 + 16))
  {
    v147 = *(v12 + 880);
    v148 = *(v12 + 872);
    v327 = *(v12 + 856);
    v329 = *(v12 + 864);
    v323 = *(v12 + 840);
    v325 = *(v12 + 848);
    v149 = *(v12 + 736);
    v150 = *(v12 + 728);
    v151 = *(v12 + 680);
    v152 = *(v12 + 672);
    v153 = *(v12 + 368);
    sub_22C90906C();
    v320 = swift_allocBox();
    v154 = *(v151 + 80);
    sub_22C36BA94();
    v155 = sub_22C6AFF38();
    v148(v155);
    sub_22C6B0310();
    sub_22C90935C();
    v156 = *(v151 + 8);
    v157 = sub_22C37B220();
    v285 = v158;
    v158(v157);
    sub_22C51E290();
    sub_22C90903C();
    *v149 = v320;
    v323(v149, *MEMORY[0x277D729E0], v152);
    v159 = sub_22C36BAFC();
    v327(v159);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    sub_22C62EC0C(v150, 0xD000000000000013, 0x800000022C9338B0, v160, v161, v162, v163, v164, v252, v254, v257, v260, v263, v266);
  }

  else
  {
    v165 = *(v12 + 680);

    v285 = *(v165 + 8);
  }

  v258 = *(v12 + 800);
  v261 = *(v12 + 792);
  v166 = *(v12 + 760);
  v167 = *(v12 + 752);
  v255 = *(v12 + 744);
  v264 = *(v12 + 784);
  v267 = *(v12 + 736);
  v268 = *(v12 + 728);
  v269 = *(v12 + 720);
  v168 = *(v12 + 704);
  v169 = *(v12 + 696);
  v270 = *(v12 + 712);
  v271 = *(v12 + 688);
  v170 = *(v12 + 672);
  v273 = *(v12 + 664);
  v275 = *(v12 + 656);
  v277 = *(v12 + 648);
  v279 = *(v12 + 640);
  v281 = *(v12 + 632);
  v283 = *(v12 + 608);
  v284 = *(v12 + 600);
  sub_22C6B01A4();
  sub_22C6B0364();
  sub_22C6B01BC();
  v289 = *(v12 + 512);
  v291 = *(v12 + 504);
  v293 = *(v12 + 496);
  v295 = *(v12 + 488);
  v297 = *(v12 + 480);
  v299 = *(v12 + 472);
  v301 = *(v12 + 448);
  v303 = *(v12 + 440);
  v171 = *(v12 + 424);
  v305 = *(v12 + 432);
  v307 = *(v12 + 416);
  v309 = *(v12 + 408);
  v311 = *(v12 + 384);
  v313 = *(v12 + 376);
  v315 = *(v12 + 368);
  v317 = *(v12 + 344);
  v319 = *(v12 + 336);
  v172 = *(v12 + 312);
  v173 = *(v12 + 288);
  sub_22C6AEF40(*(v12 + 280));
  v174 = sub_22C36FC08();
  v285(v174);
  sub_22C36FDE0();
  sub_22C6A438C();
  v175 = sub_22C36EC8C();
  v285(v175);
  sub_22C36DD28(v171, &qword_27D9BD798, &unk_22C919070);
  (*(v167 + 8))(v166, v255);

  sub_22C6B03C8();
  sub_22C372034();

  return v178(v176, v177, v178, v179, v180, v181, v182, v183, a9, a10, a11, a12);
}

uint64_t sub_22C69C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_22C6AFA14();
  sub_22C6AFDF4();
  v57 = v56[95];
  v58 = v56[94];
  v59 = v56[93];
  v60 = v56[53];
  (*(v56[85] + 8))(v56[88], v56[84]);
  sub_22C36DD28(v60, &qword_27D9BD798, &unk_22C919070);
  v61 = *(v58 + 8);
  v62 = sub_22C36BBCC();
  v63(v62);
  v122 = v56[113];
  sub_22C6AF3BC();
  v81 = v65;
  v82 = v64;
  v83 = v56[82];
  v84 = v56[81];
  v85 = v56[80];
  v86 = v56[79];
  v87 = v56[76];
  v88 = v56[75];
  sub_22C6B01A4();
  v89 = v67;
  v90 = v66;
  sub_22C6B0364();
  v91 = v69;
  v92 = v68;
  sub_22C6B01BC();
  v93 = v71;
  v94 = v70;
  v95 = v56[64];
  v96 = v56[63];
  v97 = v56[62];
  v98 = v56[61];
  v99 = v56[60];
  v100 = v56[59];
  v101 = v56[56];
  v102 = v56[55];
  v103 = v56[54];
  v104 = v56[53];
  v105 = v56[52];
  v106 = v56[51];
  v107 = v56[48];
  v108 = v56[47];
  v109 = v56[46];
  v110 = v56[43];
  v111 = v56[42];
  v112 = v56[39];
  v113 = v56[36];
  v114 = v56[35];
  v115 = v56[32];
  v116 = v56[29];
  v117 = v56[28];
  v118 = v56[27];
  v119 = v56[26];
  v120 = v56[25];
  v121 = v56[24];

  sub_22C375A9C();
  sub_22C6AF3FC();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, a53, a54, a55, a56);
}

void sub_22C69C310()
{
  sub_22C36BA7C();
  v1 = sub_22C9089DC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C37B6BC();
  v7 = sub_22C908A0C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C370654();
  v13 = sub_22C9087DC();
  v14 = 0;
  v34 = *(v13 + 16);
  v15 = (v4 + 88);
  v33 = *MEMORY[0x277D1E710];
  v31 = *MEMORY[0x277D1E730];
  v32 = *MEMORY[0x277D1E7A0];
  v30 = *MEMORY[0x277D1E7C0];
  v16 = (v4 + 8);
  while (1)
  {
    if (v34 == v14)
    {

      goto LABEL_11;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    v17 = *(v10 + 80);
    sub_22C36BA94();
    (*(v10 + 16))(v0, v13 + v18 + *(v10 + 72) * v14, v7);
    sub_22C6AF7EC();
    sub_22C9089EC();
    (*(v10 + 8))(v0, v7);
    v19 = *v15;
    v20 = sub_22C36A724();
    if (v21(v20) == v33 || (sub_22C6B01F4(), v23) || v22 == v31 || v22 == v30)
    {

      v27 = *v16;
      v28 = sub_22C36A724();
      v29(v28);
LABEL_11:
      sub_22C36CC48();
      return;
    }

    v24 = *v16;
    v25 = sub_22C36A724();
    v26(v25);
    ++v14;
  }

  __break(1u);
}

uint64_t sub_22C69C564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v34 = sub_22C9093BC();
  v31 = *(v34 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_22C90952C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_22C6AEA50(a1, v9, &qword_27D9BC028, &unk_22C9134B0);
  v20 = sub_22C90941C();
  if (sub_22C370B74(v9, 1, v20) == 1)
  {
    sub_22C36DD28(v9, &qword_27D9BC028, &unk_22C9134B0);
    sub_22C36C640(v13, 1, 1, v14);
LABEL_4:
    sub_22C36DD28(v13, &qword_27D9BB0C0, &qword_22C90D960);
    goto LABEL_5;
  }

  v21 = sub_22C9093DC();
  (*(*(v20 - 8) + 8))(v9, v20);
  sub_22C58B0F8(v21);

  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  (*(v15 + 32))(v19, v13, v14);
  v26 = sub_22C69E818();
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 16))
    {
      sub_22C90906C();
      v32 = swift_allocBox();
      v28 = v31;
      v29 = v34;
      (*(v31 + 16))(v5, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v34);
      sub_22C90935C();
      (*(v28 + 8))(v5, v29);
      sub_22C90903C();
      (*(v15 + 8))(v19, v14);
      v30 = v33;
      *v33 = v32;
      (*(v28 + 104))(v30, *MEMORY[0x277D729E0], v29);
      v22 = v30;
      v24 = 0;
      v23 = v29;
      return sub_22C36C640(v22, v24, 1, v23);
    }

    (*(v15 + 8))(v19, v14);
  }

  else
  {
    (*(v15 + 8))(v19, v14);
  }

LABEL_5:
  v22 = v33;
  v23 = v34;
  v24 = 1;
  return sub_22C36C640(v22, v24, 1, v23);
}

uint64_t sub_22C69C9AC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v281 = a3;
  v278 = a2;
  v282 = sub_22C90919C();
  v247 = *(v282 - 8);
  v4 = *(v247 + 64);
  MEMORY[0x28223BE20](v282);
  v246 = &v241 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BF810, &qword_22C923140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v259 = &v241 - v8;
  v256 = sub_22C900C1C();
  v255 = *(v256 - 8);
  v9 = *(v255 + 64);
  MEMORY[0x28223BE20](v256);
  v257 = &v241 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_22C900B1C();
  v11 = *(*(v261 - 8) + 64);
  MEMORY[0x28223BE20](v261);
  v260 = &v241 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90931C();
  v287 = *(v13 - 8);
  v14 = *(v287 + 64);
  MEMORY[0x28223BE20](v13);
  v251 = &v241 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v249 = &v241 - v18;
  v263 = sub_22C9063DC();
  v262 = *(v263 - 8);
  v19 = *(v262 + 64);
  v20 = MEMORY[0x28223BE20](v263);
  v252 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v244 = &v241 - v23;
  MEMORY[0x28223BE20](v22);
  v253 = &v241 - v24;
  v273 = sub_22C90906C();
  v272 = *(v273 - 8);
  v25 = *(v272 + 64);
  MEMORY[0x28223BE20](v273);
  v267 = &v241 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for TranscriptValueFetcher(0);
  v27 = *(*(v276 - 8) + 64);
  MEMORY[0x28223BE20](v276);
  v275 = &v241 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v277 = (&v241 - v31);
  v32 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v283 = (&v241 - v34);
  v35 = sub_22C901FAC();
  v289 = *(v35 - 8);
  v290 = v35;
  v36 = *(v289 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v245 = &v241 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v243 = &v241 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v248 = &v241 - v42;
  MEMORY[0x28223BE20](v41);
  v288 = &v241 - v43;
  v44 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v291 = &v241 - v46;
  v47 = sub_22C90952C();
  v292 = *(v47 - 8);
  v293 = v47;
  v48 = *(v292 + 64);
  MEMORY[0x28223BE20](v47);
  v294 = (&v241 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_22C9093BC();
  v51 = *(v50 - 8);
  v52 = v51[8];
  v53 = MEMORY[0x28223BE20](v50);
  v266 = &v241 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v265 = &v241 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v258 = (&v241 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v270 = &v241 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v269 = &v241 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v279 = &v241 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v241 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = (&v241 - v68);
  v70 = swift_allocBox();
  v72 = v71;
  *v71 = sub_22C90825C();
  v72[1] = v73;
  v74 = *(v287 + 104);
  v250 = *MEMORY[0x277D729B8];
  v271 = v13;
  v74(v72);
  *v69 = v70;
  v76 = v51 + 13;
  v75 = v51[13];
  v264 = *MEMORY[0x277D72A58];
  v295 = v75;
  v75(v69);
  v274 = v51;
  v78 = v51[4];
  v77 = v51 + 4;
  v296 = v50;
  v286 = v78;
  v78(v67, v69, v50);
  v79 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v297 = v79;
  sub_22C62EC0C(v67, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native, v81, v82, v83, v84, v241, v242, v243, v244, v245, v246);
  v85 = v297;
  v284 = a1;
  v86 = sub_22C90826C();
  v87 = MEMORY[0x277D72D28];
  v280 = v76;
  v254 = v67;
  if (v88)
  {
    v285 = v86;
    sub_22C9090BC();
    v268 = swift_allocBox();
    v89 = swift_allocObject();
    v89[2] = 0xD000000000000028;
    v89[3] = 0x800000022C92EB40;
    v89[4] = 0xD000000000000012;
    v89[5] = 0x800000022C933990;
    v90 = v293;
    v91 = v294;
    *v294 = v89;
    (*(v292 + 104))(v91, *v87, v90);
    v92 = sub_22C90993C();
    sub_22C36C640(v291, 1, 1, v92);
    v93 = v296;
    sub_22C90909C();
    *v69 = v268;
    v295(v69, *MEMORY[0x277D729E8], v93);
    v286(v67, v69, v93);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v297 = v85;
    sub_22C62EC0C(v67, 1701869940, 0xE400000000000000, v94, v95, v96, v97, v98, v241, v242, v243, v244, v245, v246);
    v285 = v297;
  }

  else
  {
    v285 = v85;
  }

  v99 = v283;
  sub_22C90823C();
  v100 = v290;
  v101 = sub_22C370B74(v99, 1, v290);
  v102 = v289;
  if (v101 == 1)
  {
    v103 = v99;
    v104 = &qword_27D9BC030;
    v105 = &unk_22C911CC0;
LABEL_8:
    sub_22C36DD28(v103, v104, v105);
    v111 = v291;
    v112 = v294;
    v113 = v281;
LABEL_9:
    v114 = swift_allocBox();
    v115 = swift_allocObject();
    v115[2] = 0xD000000000000028;
    v115[3] = 0x800000022C92EB40;
    v115[4] = 0xD000000000000015;
    v115[5] = 0x800000022C933910;
    *v112 = v115;
    (*(v292 + 104))(v112, *MEMORY[0x277D72D28], v293);
    v116 = sub_22C90993C();
    sub_22C36C640(v111, 1, 1, v116);
    sub_22C90917C();
    *v113 = v114;
    v117 = v296;
    v295(v113, *MEMORY[0x277D72A38], v296);
    return sub_22C36C640(v113, 0, 1, v117);
  }

  v284 = v77;
  v106 = v288;
  (*(v289 + 32))(v288, v99, v100);
  v107 = v275;
  sub_22C90878C();
  sub_22C908C5C();
  sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338]);
  *&v107[*(v276 + 20)] = sub_22C909F0C();
  v108 = v277;
  sub_22C729D78(v106, v277);
  sub_22C6A438C();
  v109 = v100;
  v110 = sub_22C9025EC();
  if (sub_22C370B74(v108, 1, v110) == 1)
  {
    (*(v102 + 8))(v288, v109);
    v104 = &qword_27D9BF610;
    v105 = &qword_22C922B50;
    v103 = v108;
    goto LABEL_8;
  }

  v242 = v69;
  v119 = v269;
  sub_22C90207C();
  (*(*(v110 - 8) + 8))(v108, v110);
  v120 = v279;
  v121 = v296;
  v286(v279, v119, v296);
  v122 = v274;
  v123 = v274 + 2;
  v124 = v270;
  v283 = v274[2];
  v283(v270, v120, v121);
  v125 = v122[11];
  if (v125(v124, v121) == *MEMORY[0x277D729E0])
  {
    (v122[12])(v124, v296);
    v126 = *v124;
    v127 = swift_projectBox();
    v128 = v267;
    (*(v272 + 16))(v267, v127, v273);

    v129 = *(sub_22C90905C() + 16);

    v130 = v271;
    if (v129 >= 2)
    {

      v131 = v253;
      sub_22C903F8C();
      v132 = v289;
      v133 = v248;
      v134 = v290;
      (*(v289 + 16))(v248, v288, v290);
      v135 = sub_22C9063CC();
      v136 = sub_22C90AADC();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v297 = v138;
        *v137 = 136315138;
        sub_22C6A4290(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v139 = sub_22C90B47C();
        v140 = v133;
        v142 = v141;
        v143 = *(v132 + 8);
        v143(v140, v134);
        v144 = sub_22C36F9F4(v139, v142, &v297);

        *(v137 + 4) = v144;
        _os_log_impl(&dword_22C366000, v135, v136, "Collection with multiple elements passed into search call as hydration context: %s", v137, 0xCu);
        sub_22C36FF94(v138);
        MEMORY[0x2318B9880](v138, -1, -1);
        MEMORY[0x2318B9880](v137, -1, -1);

        v145 = *(v262 + 8);
        v146 = &v284;
LABEL_23:
        v176 = *(v146 - 32);
LABEL_25:
        v145(v176, v263);
        type metadata accessor for InterpreterError();
        sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v272 + 8))(v267, v273);
        (v274[1])(v279, v296);
        return (v143)(v288, v134);
      }

      goto LABEL_24;
    }

    v278 = v123;
    v166 = sub_22C90905C();
    v167 = v249;
    sub_22C58B008(v166, v249);

    if (sub_22C370B74(v167, 1, v296) == 1)
    {

      sub_22C36DD28(v167, &qword_27D9BB908, &qword_22C910960);
      v131 = v244;
      sub_22C903F8C();
      v132 = v289;
      v133 = v243;
      v134 = v290;
      (*(v289 + 16))(v243, v288, v290);
      v135 = sub_22C9063CC();
      v168 = sub_22C90AADC();
      if (os_log_type_enabled(v135, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v297 = v170;
        *v169 = 136315138;
        sub_22C6A4290(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v171 = sub_22C90B47C();
        v172 = v133;
        v174 = v173;
        v143 = *(v132 + 8);
        v143(v172, v134);
        v175 = sub_22C36F9F4(v171, v174, &v297);

        *(v169 + 4) = v175;
        _os_log_impl(&dword_22C366000, v135, v168, "Empty collection passed into search call as hydration context: %s", v169, 0xCu);
        sub_22C36FF94(v170);
        MEMORY[0x2318B9880](v170, -1, -1);
        MEMORY[0x2318B9880](v169, -1, -1);

        v145 = *(v262 + 8);
        v146 = &v276;
        goto LABEL_23;
      }

LABEL_24:

      v177 = *(v132 + 8);
      v177(v133, v134);
      v143 = v177;
      v145 = *(v262 + 8);
      v176 = v131;
      goto LABEL_25;
    }

    (*(v272 + 8))(v128, v273);
    v122 = v274;
    v239 = v167;
    v240 = v296;
    v277 = v274[1];
    (v277)(v120, v296);
    v147 = v120;
    v286(v120, v239, v240);
  }

  else
  {
    v147 = v120;
    v277 = v122[1];
    v278 = v123;
    (v277)(v124, v296);
    v130 = v271;
  }

  v148 = v266;
  v149 = v265;
  v150 = v296;
  v283(v265, v147, v296);
  v151 = v125(v149, v150);
  if (v151 == v264)
  {
    (v122[12])(v149, v296);
    v152 = *v149;
    v153 = swift_projectBox();
    v154 = v287;
    v155 = v251;
    (*(v287 + 16))(v251, v153, v130);
    v156 = (*(v154 + 88))(v155, v130);
    if (v156 == v250)
    {
      (*(v154 + 96))(v155, v130);
      v157 = *v155;
      v158 = *(v155 + 1);

      v159 = swift_allocBox();
      (*(v255 + 104))(v257, *MEMORY[0x277D36F70], v256);
      v160 = sub_22C90084C();
      sub_22C36C640(v259, 1, 1, v160);
      sub_22C900B0C();
      v161 = 0x800000022C92EB40;
      sub_22C6A4290(&qword_27D9BF818, MEMORY[0x277D36F08]);
      sub_22C90916C();
      v162 = v258;
      *v258 = v159;
      LODWORD(v287) = *MEMORY[0x277D72A38];
      v111 = v291;
      v163 = v295;
LABEL_29:
      v196 = v296;
      v163(v162, v287, v296);
      v291 = "searchAnswerValue";
      v275 = swift_allocBox();
      v273 = v197;
      v198 = swift_allocObject();
      v198[2] = 0xD000000000000028;
      v198[3] = v161;
      v276 = 0xD000000000000010;
      v198[4] = 0xD000000000000010;
      v198[5] = 0x800000022C933970;
      v199 = v293;
      v200 = v294;
      *v294 = v198;
      (*(v292 + 104))(v200, *MEMORY[0x277D72D28], v199);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v201 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v202 = *(*v201 + 72);
      v203 = (*(*v201 + 80) + 32) & ~*(*v201 + 80);
      v204 = swift_allocObject();
      *(v204 + 16) = xmmword_22C90F800;
      v205 = (v204 + v203);
      v206 = v201[14];
      *v205 = 0x797469746E65;
      v205[1] = 0xE600000000000000;
      v283((v204 + v203 + v206), v162, v196);
      sub_22C909F0C();
      v207 = sub_22C90993C();
      sub_22C36C640(v111, 1, 1, v207);
      sub_22C90917C();
      v208 = v242;
      *v242 = v275;
      v295(v208, v287, v196);
      v209 = v254;
      v286(v254, v208, v196);
      v210 = v285;
      v211 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v210;
      sub_22C62EC0C(v209, v276, v291 | 0x8000000000000000, v211, v212, v213, v214, v215, v241, v242, v243, v244, v245, v246);
      v216 = v277;
      (v277)(v162, v196);
      v216(v279, v196);
      (*(v289 + 8))(v288, v290);
      v113 = v281;
      v112 = v294;
      goto LABEL_9;
    }

    (*(v154 + 8))(v155, v130);

    v147 = v279;
    v165 = v277;
    v148 = v266;
  }

  else
  {
    v164 = v149;
    v165 = v277;
    (v277)(v164, v296);
  }

  v178 = v296;
  v283(v148, v147, v296);
  v179 = v125(v148, v178);
  v180 = *MEMORY[0x277D72A38];
  v277 = v165;
  if (v179 == v180)
  {
    LODWORD(v287) = v179;
    v181 = v148;
    v182 = v296;
    (v165)(v181, v296);
    (*(v255 + 104))(v257, *MEMORY[0x277D36F68], v256);
    v183 = sub_22C90084C();
    sub_22C36C640(v259, 1, 1, v183);
    sub_22C900B0C();
    v276 = 0x800000022C92EB40;
    sub_22C6A4290(&qword_27D9BF818, MEMORY[0x277D36F08]);
    v184 = v246;
    sub_22C90916C();
    v185 = sub_22C90914C();
    v186 = v242;
    v283(v242, v147, v182);
    v187 = swift_isUniquelyReferenced_nonNull_native();
    v297 = v185;
    sub_22C62EC0C(v186, 0xD000000000000011, 0x800000022C933930, v187, v188, v189, v190, v191, v241, v242, v243, v244, v245, v246);
    v273 = v297;
    v192 = v282;
    v275 = swift_allocBox();
    sub_22C9090AC();
    sub_22C90908C();
    v193 = sub_22C90993C();
    v194 = v291;
    sub_22C36C640(v291, 1, 1, v193);
    v163 = v295;
    v111 = v194;
    sub_22C90917C();
    v195 = v184;
    v161 = v276;
    (*(v247 + 8))(v195, v192);
    v162 = v258;
    *v258 = v275;
    goto LABEL_29;
  }

  v217 = (v122 + 1);
  (v165)(v148, v296);
  v218 = v252;
  sub_22C903F8C();
  v219 = v289;
  v220 = v245;
  v221 = v290;
  (*(v289 + 16))(v245, v288, v290);
  v222 = sub_22C9063CC();
  v223 = sub_22C90AADC();
  if (os_log_type_enabled(v222, v223))
  {
    v224 = v220;
    v225 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    v295 = v217;
    v227 = v226;
    v297 = v226;
    *v225 = 136315138;
    sub_22C6A4290(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v228 = v224;
    v229 = sub_22C90B47C();
    v231 = v230;
    v232 = *(v219 + 8);
    v232(v228, v290);
    v233 = sub_22C36F9F4(v229, v231, &v297);
    v234 = v279;

    *(v225 + 4) = v233;
    _os_log_impl(&dword_22C366000, v222, v223, "Non-string and non-entity value passed into search call as hydration context: %s", v225, 0xCu);
    sub_22C36FF94(v227);
    v235 = v227;
    v221 = v290;
    MEMORY[0x2318B9880](v235, -1, -1);
    v236 = v225;
    v237 = v234;
    v238 = v277;
    MEMORY[0x2318B9880](v236, -1, -1);

    (*(v262 + 8))(v252, v263);
  }

  else
  {

    v232 = *(v219 + 8);
    v232(v220, v221);
    (*(v262 + 8))(v218, v263);
    v237 = v279;
    v238 = v277;
  }

  type metadata accessor for InterpreterError();
  sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v238(v237, v296);
  return (v232)(v288, v221);
}

uint64_t sub_22C69E818()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v124 = &v97[-v2];
  v3 = sub_22C9094EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v125 = &v97[-v9];
  v10 = sub_22C90952C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v97[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v97[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v97[-v19];
  v21 = swift_allocObject();
  v21[2] = 0xD000000000000028;
  v21[3] = 0x800000022C92EB40;
  v21[4] = 0xD00000000000001ALL;
  v21[5] = 0x800000022C9339B0;
  *v20 = v21;
  v22 = *MEMORY[0x277D72D28];
  (*(v11 + 104))(v20, *MEMORY[0x277D72D28], v10);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v18);
  v23 = (*(v11 + 88))(v18, v10);
  if (v23 != *MEMORY[0x277D72D50])
  {
    if (v23 == v22)
    {
      (*(v11 + 96))(v18, v10);
      v120 = *v18;
      v65 = v120[3];
      v112 = v120[2];
      v109 = v65;
      v66 = v120[4];
      v116 = v120[5];
      v117 = v66;
      sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
      v114 = sub_22C9093BC();
      v125 = *(v114 - 8);
      v67 = *(v125 + 9);
      v119 = (v125[80] + 32) & ~v125[80];
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_22C90F800;
      sub_22C90919C();
      v118 = swift_allocBox();
      v115 = v68;
      (*(v11 + 16))(v15, v20, v10);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v69 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v70 = *v69;
      v110 = *(*v69 + 72);
      v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v72 = swift_allocObject();
      v111 = v72;
      *(v72 + 16) = xmmword_22C90F870;
      v122 = v10;
      v73 = (v72 + v71);
      v74 = v69[14];
      *v73 = 0x6449656C646E7562;
      v73[1] = 0xE800000000000000;
      v75 = sub_22C90931C();
      v121 = v15;
      v76 = v75;
      v77 = swift_allocBox();
      v123 = v20;
      v78 = v77;
      *v79 = v112;
      v79[1] = v65;
      v80 = *MEMORY[0x277D729B8];
      v81 = *(v76 - 8);
      v112 = v11;
      v82 = *(v81 + 104);
      v82(v79, v80, v76);
      *(v73 + v74) = v78;
      v83 = *MEMORY[0x277D72A58];
      v84 = *(v125 + 13);
      v125 += 104;
      v108 = v84;
      v85 = v73 + v74;
      v86 = v114;
      v84(v85, v83, v114);
      v87 = (v73 + v110);
      v88 = v69[14];
      *v87 = 0x656D614E65707974;
      v87[1] = 0xE800000000000000;
      v89 = swift_allocBox();
      v90 = v116;
      *v91 = v117;
      v91[1] = v90;
      v82(v91, v80, v76);
      v46 = v113;
      *(v87 + v88) = v89;
      v92 = v108;
      v108(v87 + v88, v83, v86);

      sub_22C909F0C();
      v93 = sub_22C90993C();
      sub_22C36C640(v124, 1, 1, v93);
      sub_22C90917C();
      v94 = v119;
      *(v46 + v119) = v118;
      v92(v46 + v94, *MEMORY[0x277D72A38], v86);
      (*(v112 + 8))(v123, v122);
      goto LABEL_6;
    }

    v95 = *(v11 + 8);
    v95(v20, v10);
    v95(v18, v10);
    return 0;
  }

  (*(v11 + 96))(v18, v10);
  v120 = *v18;
  v24 = swift_projectBox();
  v25 = v4;
  v26 = *(v4 + 16);
  v27 = v125;
  v26(v125, v24, v3);
  v26(v8, v27, v3);
  v28 = (*(v25 + 88))(v8, v3);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v29 = v31;
  if (v28 != *MEMORY[0x277D72CC0])
  {
    v29(v125, v3);
    (*(v11 + 8))(v20, v10);
    v29(v8, v3);

    return 0;
  }

  v110 = 0x800000022C9339D0;
  v116 = 0x800000022C933A00;
  v29(v8, v3);
  sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
  v118 = v29;
  v119 = sub_22C9093BC();
  v102 = *(v119 - 8);
  v117 = *(v102 + 72);
  v32 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C90F870;
  v111 = (v33 + v32);
  v114 = sub_22C90919C();
  v34 = swift_allocBox();
  v108 = v35;
  v109 = v34;
  v36 = *(v11 + 16);
  v112 = v11 + 16;
  v113 = v36;
  v36(v15, v20, v10);
  v106 = sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
  v37 = sub_22C3A5908(&qword_27D9BF828, &unk_22C923150);
  v123 = v20;
  v38 = v37 - 8;
  v39 = *(v37 - 8);
  v107 = *(v39 + 72);
  v105 = *(v39 + 80);
  v40 = (v105 + 32) & ~v105;
  v103 = v40;
  v41 = swift_allocObject();
  v115 = v30;
  v104 = xmmword_22C90F800;
  *(v41 + 16) = xmmword_22C90F800;
  v42 = (v41 + v40);
  v122 = v10;
  v43 = *(v38 + 56);
  *v42 = 0x6449656C646E7562;
  *(v42 + 1) = 0xE800000000000000;
  v44 = sub_22C90931C();
  v45 = swift_allocBox();
  v121 = v15;
  v46 = v33;
  v47 = v45;
  v48 = v110;
  *v49 = 0xD00000000000002BLL;
  v49[1] = v48;
  v100 = *MEMORY[0x277D729B8];
  v50 = *(v44 - 8);
  v99 = *(v50 + 104);
  v110 = v3;
  v101 = v50 + 104;
  v99(v49);
  *&v42[v43] = v47;
  v98 = *MEMORY[0x277D72A58];
  v51 = *(v102 + 104);
  v51(&v42[v43]);
  sub_22C909F0C();
  v102 = sub_22C90993C();
  sub_22C36C640(v124, 1, 1, v102);
  v52 = v121;
  sub_22C90917C();
  v53 = v111;
  *v111 = v109;
  LODWORD(v109) = *MEMORY[0x277D72A38];
  v51(v53);
  v114 = swift_allocBox();
  v108 = v54;
  (v113)(v52, v123, v122);
  v55 = v103;
  v56 = swift_allocObject();
  *(v56 + 16) = v104;
  v57 = (v56 + v55);
  v58 = *(v38 + 56);
  *v57 = 0x6449656C646E7562;
  v57[1] = 0xE800000000000000;
  v59 = swift_allocBox();
  v60 = v116;
  *v61 = 0xD000000000000023;
  v61[1] = v60;
  (v99)(v61, v100, v44);
  *(v57 + v58) = v59;
  v62 = v57 + v58;
  v63 = v119;
  (v51)(v62, v98, v119);
  sub_22C909F0C();
  sub_22C36C640(v124, 1, 1, v102);
  sub_22C90917C();
  v64 = v117;
  *&v53[v117] = v114;
  (v51)(&v53[v64], v109, v63);
  v118(v125, v110);
  (*(v11 + 8))(v123, v122);
LABEL_6:

  return v46;
}

uint64_t sub_22C69F490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v42 = sub_22C901FAC();
  v37 = *(v42 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9089DC();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22C906A3C();
  v35 = *(v44 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908A0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C9087DC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v34[0] = a2;
    v34[1] = v2;
    v50 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v48 = v14 + 8;
    v49 = v14 + 16;
    v47 = (v45 + 88);
    v46 = *MEMORY[0x277D1E720];
    v38 = (v45 + 96);
    v39 = (v45 + 8);
    v45 = v35 + 32;
    v36 = v14;
    v37 += 8;
    v35 += 8;
    v19 = v12;
    a2 = v17;
    v40 = v17;
    while (v18 <= *(a2 + 16))
    {
      --v18;
      v20 = v51;
      (*(v14 + 16))(v51, v50 + *(v14 + 72) * v18, v13);
      sub_22C9089EC();
      (*(v14 + 8))(v20, v13);
      v21 = (*v47)(v9, v6);
      if (v21 == v46)
      {
        v22 = v13;
        v23 = v6;
        (*v38)(v9, v6);
        v24 = v19;
        v25 = *v45;
        v26 = v9;
        v27 = v9;
        v28 = v44;
        (*v45)(v24, v27, v44);
        v29 = v41;
        sub_22C9068FC();
        v30 = sub_22C901F6C();
        (*v37)(v29, v42);
        if (v30)
        {

          a2 = v34[0];
          v25(v34[0], v24, v28);
          v31 = 0;
          v32 = v28;
          return sub_22C36C640(a2, v31, 1, v32);
        }

        (*v35)(v24, v28);
        v6 = v23;
        v19 = v24;
        v9 = v26;
        v13 = v22;
        v14 = v36;
        a2 = v40;
        if (!v18)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v39)(v9, v6);
        if (!v18)
        {
LABEL_9:

          v31 = 1;
          a2 = v34[0];
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  v31 = 1;
LABEL_10:
  v32 = v44;
  return sub_22C36C640(a2, v31, 1, v32);
}

uint64_t sub_22C69F92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v115 = a3;
  v5 = sub_22C90769C();
  v6 = *(v5 - 8);
  v113 = v5;
  v114 = v6;
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v109 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v94 - v10;
  v12 = sub_22C908A7C();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v94 - v16;
  v17 = sub_22C9063DC();
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = *(v111 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v94 - v22;
  v105 = sub_22C9099FC();
  v98 = *(v105 - 8);
  v23 = *(v98 + 64);
  v24 = MEMORY[0x28223BE20](v105);
  v97 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v104 = &v94 - v26;
  v27 = sub_22C908DAC();
  v107 = *(v27 - 8);
  v108 = v27;
  v28 = *(v107 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v106 = &v94 - v31;
  v110 = sub_22C908EAC();
  v32 = *(v110 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v110);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v94 - v38;
  v40 = a1;
  v103 = a2;
  sub_22C908ADC();
  v41 = sub_22C908ABC();
  if (sub_22C370B74(v39, 1, v41) == 1)
  {
    sub_22C903F8C();
    v42 = v114[2];
    v42(v11, v40, v113);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AADC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v116 = v46;
      *v45 = 136315138;
      v47 = v11;
      v110 = v21;
      v48 = v11;
      v49 = v113;
      v42(v109, v47, v113);
      v50 = sub_22C90A1AC();
      v52 = v51;
      (v114[1])(v48, v49);
      v53 = sub_22C36F9F4(v50, v52, &v116);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_22C366000, v43, v44, "no tool found for %s", v45, 0xCu);
      sub_22C36FF94(v46);
      MEMORY[0x2318B9880](v46, -1, -1);
      MEMORY[0x2318B9880](v45, -1, -1);

      result = (*(v111 + 8))(v110, v112);
    }

    else
    {

      (v114[1])(v11, v113);
      result = (*(v111 + 8))(v21, v112);
    }

    v62 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v55 = *(v41 - 8);
  v56 = (*(v55 + 88))(v39, v41);
  if (v56 == *MEMORY[0x277D1E8E0] || v56 == *MEMORY[0x277D1E8C8])
  {
    (*(v55 + 96))(v39, v41);
    v58 = *(v32 + 32);
    v57 = v32 + 32;
    v59 = v110;
    v58(v35, v39, v110);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v60 = *(v57 + 40);
    v61 = (*(v57 + 48) + 32) & ~*(v57 + 48);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_22C90F800;
    result = (v58)(v62 + v61, v35, v59);
LABEL_9:
    *v115 = v62;
    return result;
  }

  if (v56 == *MEMORY[0x277D1E8D0])
  {
    (*(v55 + 96))(v39, v41);
    v63 = v106;
    (*(v107 + 32))(v106, v39, v108);
    v64 = v104;
    sub_22C908D7C();
    sub_22C9099DC();
    v65 = *(v98 + 8);
    v66 = v105;
    v65(v64, v105);
    v67 = v97;
    sub_22C908D7C();
    sub_22C9099EC();
    v65(v67, v66);
    v68 = v103;
    v69 = sub_22C908A9C();

    if (v69)
    {
      MEMORY[0x28223BE20](v70);
      *(&v94 - 2) = v68;
      v62 = sub_22C47B8F0(sub_22C6AE7D8, (&v94 - 4), v69);
      result = (*(v107 + 8))(v63, v108);
    }

    else
    {
      v80 = v96;
      sub_22C903F8C();
      v81 = v107;
      v82 = v108;
      v83 = v95;
      (*(v107 + 16))(v95, v63, v108);
      v84 = sub_22C9063CC();
      v85 = sub_22C90AADC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = v81;
        v87 = v83;
        v88 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v116 = v114;
        *v88 = 136315138;
        sub_22C908D7C();
        v113 = sub_22C90A1AC();
        v90 = v89;
        v91 = *(v86 + 8);
        v91(v87, v108);
        v92 = sub_22C36F9F4(v113, v90, &v116);
        v82 = v108;

        *(v88 + 4) = v92;
        _os_log_impl(&dword_22C366000, v84, v85, "no tools found for schema %s", v88, 0xCu);
        v93 = v114;
        sub_22C36FF94(v114);
        MEMORY[0x2318B9880](v93, -1, -1);
        MEMORY[0x2318B9880](v88, -1, -1);
      }

      else
      {

        v91 = *(v81 + 8);
        v91(v83, v82);
      }

      (*(v111 + 8))(v80, v112);
      result = (v91)(v106, v82);
      v62 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  if (v56 == *MEMORY[0x277D1E8D8])
  {
    (*(v55 + 96))(v39, v41);
    v72 = v100;
    v71 = v101;
    v73 = v102;
    (*(v101 + 32))(v100, v39, v102);
    v74 = v99;
    (*(v71 + 16))(v99, v72, v73);
    if ((*(v71 + 88))(v74, v73) == *MEMORY[0x277D1E8B8])
    {
      (*(v71 + 96))(v74, v73);
      v76 = *(v32 + 32);
      v75 = v32 + 32;
      v77 = v110;
      v76(v35, v74, v110);
      sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
      v78 = *(v75 + 40);
      v79 = (*(v75 + 48) + 32) & ~*(v75 + 48);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_22C90F800;
      v76((v62 + v79), v35, v77);
      result = (*(v71 + 8))(v72, v73);
      goto LABEL_9;
    }
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C6A04B0()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ToolResolver.run", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_22C6A0854()
{
  sub_22C36BA7C();
  v37 = v1;
  v43 = sub_22C901FAC();
  v2 = sub_22C369824(v43);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v38 = v7;
  sub_22C36BA0C();
  v41 = sub_22C90654C();
  v8 = sub_22C369824(v41);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C36D83C();
  v40 = sub_22C9070DC();
  v13 = sub_22C369824(v40);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C90887C();
  v22 = 0;
  v42 = *(v21 + 16);
  v39 = *MEMORY[0x277D1DA48];
  v23 = (v4 + 8);
  while (1)
  {
    if (v42 == v22)
    {
LABEL_6:

      v31 = 1;
      v32 = v37;
LABEL_8:
      sub_22C36C640(v32, v31, 1, v43);
      sub_22C36CC48();
      return;
    }

    if (v22 >= *(v21 + 16))
    {
      break;
    }

    v24 = *(v15 + 80);
    sub_22C36BA94();
    (*(v15 + 16))(v20, v21 + v25 + *(v15 + 72) * v22, v40);
    sub_22C6AFEF0();
    sub_22C90702C();
    if ((*(v10 + 88))(v0, v41) == v39)
    {

      v33 = sub_22C37A27C();
      v34(v33, v41);
      v32 = v37;
      sub_22C9068FC();
      v35 = sub_22C385558();
      v36(v35, v40);
      v31 = 0;
      goto LABEL_8;
    }

    ++v22;
    v26 = sub_22C37A27C();
    v27(v26, v41);
    sub_22C9068FC();
    v28 = sub_22C901F6C();
    (*v23)(v38, v43);
    v29 = sub_22C385558();
    v30(v29, v40);
    if (v28)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_22C6A0B4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C90880C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v7 = sub_22C9087DC();
  (*(v3 + 8))(v6, v2);
  v10[1] = v7;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  v8 = sub_22C907E6C();

  *a1 = v8;
  return result;
}

void sub_22C6A0CB0()
{
  sub_22C36BA7C();
  v45 = v2;
  v46 = v3;
  v44 = sub_22C901FAC();
  v4 = sub_22C369824(v44);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v43 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v42 = v11;
  v12 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C37F478();
  v16 = sub_22C901FBC();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C382784();
  v22 = sub_22C9026BC();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  sub_22C387210();
  v28 = sub_22C907DEC();
  v29 = sub_22C369914(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C37B6BC();
  v36 = sub_22C90069C();
  sub_22C6AEF78(v36);
  (*(v19 + 104))(v1, *MEMORY[0x277D1C3A0], v16);
  sub_22C36BD58();
  sub_22C901FFC();
  (*(v25 + 104))(v0, *MEMORY[0x277D1CBE8], v22);
  sub_22C9026AC();
  sub_22C6AFB90();
  sub_22C36A748();
  sub_22C36C640(v37, v38, v39, v40);
  sub_22C6AF3F0();
  sub_22C907DCC();
  v41 = *(v6 + 16);
  v41(v42, v45, v44);
  v41(v43, v46, v44);
  sub_22C36BB08();
  sub_22C906E4C();
  sub_22C36CC48();
}

uint64_t sub_22C6A0FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C90880C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  sub_22C68D3A0(a1, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22C6A10B0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v150) = a4;
  v151 = a3;
  v148 = a2;
  v144 = a1;
  v136 = sub_22C9069BC();
  v124 = *(v136 - 8);
  v4 = *(v124 + 64);
  v5 = MEMORY[0x28223BE20](v136);
  v149 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v154 = &v113 - v7;
  v8 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = &v113 - v10;
  v11 = sub_22C908C3C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v139 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22C3A5908(&qword_27D9BDCF0, qword_22C91B608);
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v123 = (&v113 - v15);
  v16 = sub_22C3A5908(&qword_27D9BF7B0, &unk_22C923060);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v141 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v113 - v20;
  v143 = sub_22C9093BC();
  v125 = *(v143 - 8);
  v22 = *(v125 + 64);
  v23 = MEMORY[0x28223BE20](v143);
  v138 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v113 - v25;
  v116 = sub_22C90906C();
  v115 = *(v116 - 8);
  v26 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v134 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v113 - v32;
  v34 = sub_22C908C5C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v153 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v152 = &v113 - v40;
  MEMORY[0x28223BE20](v39);
  v147 = &v113 - v41;
  v42 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v113 - v44;
  v46 = sub_22C901FAC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v137 = &v113 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &v113 - v51;
  v54 = v53;
  sub_22C6AEA50(v148, v45, &qword_27D9BAA30, &unk_22C911F70);
  v55 = *(v45 + 1);

  v145 = v42;
  v146 = v45;
  v56 = *(v42 + 48);
  v57 = v47;
  (*(v47 + 32))(v52, &v45[v56], v54);
  sub_22C605B74(v52, v151);
  if (sub_22C370B74(v33, 1, v34) == 1)
  {
    (*(v47 + 8))(v52, v54);
    return sub_22C36DD28(v33, &qword_27D9BB628, &unk_22C920580);
  }

  v135 = v52;
  v59 = *(v35 + 32);
  v60 = v147;
  v122 = v35 + 32;
  v121 = v59;
  v59(v147, v33, v34);
  if (v150)
  {
    goto LABEL_23;
  }

  v150 = v57;
  v151 = v34;
  v61 = v133;
  sub_22C90774C();
  v62 = v125;
  v63 = v143;
  if ((*(v125 + 88))(v61, v143) != *MEMORY[0x277D729E0])
  {
    (*(v62 + 8))(v61, v63);
    v57 = v150;
    v34 = v151;
LABEL_23:
    v106 = v146;
    sub_22C6AEA50(v148, v146, &qword_27D9BAA30, &unk_22C911F70);
    v107 = *v106;
    v108 = v106[1];
    v109 = *(v145 + 48);
    v110 = v149;
    sub_22C90699C();
    v111 = *(v57 + 8);
    v111(v106 + v109, v54);
    v112 = v134;
    (*(v35 + 16))(v134, v60, v34);
    sub_22C36C640(v112, 0, 1, v34);
    sub_22C603A20(v112, v110);
    (*(v35 + 8))(v60, v34);
    return (v111)(v135, v54);
  }

  v134 = v54;
  v64 = v62 + 96;
  (*(v62 + 96))(v61, v63);
  v65 = *v61;
  v66 = swift_projectBox();
  (*(v115 + 16))(v114, v66, v116);

  v67 = sub_22C90905C();
  v68 = 0;
  v120 = v67;
  v69 = *(v67 + 16);
  v119 = v64 - 80;
  v131 = (v64 - 64);
  v130 = (v150 + 16);
  v133 = (v150 + 8);
  v129 = (v35 + 16);
  v118 = v124 + 16;
  v126 = (v124 + 8);
  v132 = (v35 + 8);
  v117 = v35 + 40;
  v71 = v141;
  v70 = v142;
  v72 = v63;
  v128 = v35;
  v127 = v69;
  while (1)
  {
    if (v68 == v69)
    {
      v73 = 1;
      v150 = v69;
    }

    else
    {
      if ((v68 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v68 >= *(v120 + 16))
      {
        goto LABEL_28;
      }

      v74 = v68 + 1;
      v75 = v125;
      v76 = v120 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v68;
      v77 = *(v70 + 48);
      v78 = v123;
      *v123 = v68;
      (*(v75 + 16))(v78 + v77, v76, v72);
      sub_22C6AE8BC(v78, v71, &qword_27D9BDCF0, qword_22C91B608);
      v73 = 0;
      v150 = v74;
    }

    sub_22C36C640(v71, v73, 1, v70);
    sub_22C6AE8BC(v71, v21, &qword_27D9BF7B0, &unk_22C923060);
    if (sub_22C370B74(v21, 1, v70) == 1)
    {

      (*(v115 + 8))(v114, v116);
      (*v132)(v147, v151);
      return (*v133)(v135, v134);
    }

    v149 = *v21;
    (*v131)(v138, &v21[*(v70 + 48)], v72);
    sub_22C908C4C();
    v79 = v134;
    (*v130)(v137, v135, v134);
    sub_22C908B8C();
    v80 = v144;
    v81 = v152;
    sub_22C908BFC();
    v82 = v146;
    sub_22C6AEA50(v148, v146, &qword_27D9BAA30, &unk_22C911F70);
    v83 = *v82;
    v84 = *(v82 + 1);
    v85 = *(v145 + 48);
    sub_22C90699C();
    (*v133)(&v82[v85], v79);
    (*v129)(v153, v81, v151);
    v86 = *v80;
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v80;
    v155 = *v80;
    v88 = v155;
    sub_22C628D18();
    if (__OFADD__(v88[2], (v90 & 1) == 0))
    {
      break;
    }

    v91 = v89;
    v92 = v90;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v69 = v127;
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_30;
      }

      v91 = v93;
      v95 = v128;
    }

    else
    {
      v95 = v128;
      v69 = v127;
    }

    v96 = v155;
    if (v92)
    {
      v97 = v151;
      (*(v95 + 40))(v155[7] + *(v95 + 72) * v91, v153, v151);
      (*v126)(v154, v136);
      (*(v95 + 8))(v152, v97);
    }

    else
    {
      v155[(v91 >> 6) + 8] |= 1 << v91;
      v98 = v124;
      v99 = v154;
      v100 = v136;
      (*(v124 + 16))(v96[6] + *(v124 + 72) * v91, v154, v136);
      v101 = v96[7] + *(v95 + 72) * v91;
      v102 = v151;
      v121(v101, v153, v151);
      (*(v98 + 8))(v99, v100);
      (*(v95 + 8))(v152, v102);
      v103 = v96[2];
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_29;
      }

      v96[2] = v105;
    }

    *v87 = v96;
    v71 = v141;
    v70 = v142;
    v72 = v143;
    v68 = v150;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C6A1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v79 = a2;
  v95 = a1;
  v92 = type metadata accessor for DependencyId(0);
  v91 = *(v92 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22C9070DC();
  v8 = *(v85 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BD9E0, &qword_22C922F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v96 = &v76 - v13;
  v97 = sub_22C90654C();
  v14 = *(v97 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v97);
  v78 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22C3A5908(&qword_27D9BF730, &qword_22C9233A0);
  v17 = *(*(v103 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v103);
  v90 = (&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v76 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = (&v76 - v23);
  MEMORY[0x28223BE20](v22);
  v93 = &v76 - v24;
  v25 = sub_22C906F2C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = (&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v29, v3, v25);
  if ((*(v26 + 88))(v29, v25) == *MEMORY[0x277D1DEE8])
  {
    v83 = v4;
    result = (*(v26 + 96))(v29, v25);
    v31 = *v29;
    v32 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v89 = *(v31 + 16);
    v81 = v8 + 16;
    v82 = v8;
    v80 = v8 + 8;
    v33 = 0;
    v76 = (v14 + 32);
    v77 = (v14 + 8);
    v86 = xmmword_22C90F800;
    v34 = v98;
    v87 = v7;
    for (i = v31; ; v31 = i)
    {
      if (v89 == v33)
      {

        return v32;
      }

      if (v33 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      v35 = sub_22C901FAC();
      v36 = *(v35 - 8);
      v37 = v36;
      v38 = v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v36 + 72) * v33;
      v39 = v103;
      v40 = *(v103 + 48);
      v41 = v93;
      (*(v36 + 16))(&v93[v40], v38, v35);
      v42 = *(v39 + 48);
      v43 = v104;
      v102 = v33;
      *v104 = v33;
      v100 = *(v37 + 32);
      v100(v43 + v42, &v41[v40], v35);
      sub_22C6AEA50(v43, v34, &qword_27D9BF730, &qword_22C9233A0);
      v44 = *(v39 + 48);
      v45 = v94;
      v46 = *(v94 + 16);
      v101 = v37 + 32;
      v99 = v37;
      if (!v46)
      {
        break;
      }

      sub_22C628274();
      if ((v48 & 1) == 0)
      {
        break;
      }

      v49 = v82;
      v50 = v84;
      v51 = v85;
      (*(v82 + 16))(v84, *(v45 + 56) + *(v82 + 72) * v47, v85);
      sub_22C90702C();
      v52 = *(v49 + 8);
      v53 = v50;
      v54 = v37;
      v55 = v96;
      v56 = v97;
      v52(v53, v51);
      sub_22C36C640(v55, 0, 1, v56);
      v57 = v54;
      v58 = v45;
      v59 = *(v57 + 8);
      v59(&v98[v44], v35);
      if (sub_22C370B74(v55, 1, v56) == 1)
      {
        goto LABEL_11;
      }

      v60 = v78;
      (*v76)(v78, v55, v97);
      v61 = v83;
      v62 = sub_22C68AD24(v95, v79, v58);
      v83 = v61;
      if (v61)
      {

        (*v77)(v60, v97);
        sub_22C36DD28(v104, &qword_27D9BF730, &qword_22C9233A0);

        return v32;
      }

      sub_22C3CC528(v62);
      (*v77)(v60, v97);
LABEL_12:
      sub_22C3A5908(&qword_27D9BE3B0, &qword_22C91D960);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      v64 = v104;
      v65 = v90;
      sub_22C6AEA50(v104, v90, &qword_27D9BF730, &qword_22C9233A0);
      v66 = *v65;
      v67 = v103;
      v59(v65 + *(v103 + 48), v35);
      *(inited + 32) = 0;
      *(inited + 40) = 0;
      *(inited + 48) = v66;
      *(inited + 56) = 0;
      v105 = v95;

      sub_22C3CC554(inited);
      v68 = v105;
      sub_22C6AEA50(v64, v65, &qword_27D9BF730, &qword_22C9233A0);
      v69 = *(v67 + 48);
      v70 = v87;
      *v87 = v68;
      v100((v70 + *(v92 + 20)), v65 + v69, v35);
      v32 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = *(v32 + 16);
        sub_22C590550();
        v32 = v74;
      }

      v71 = v102;
      v72 = *(v32 + 16);
      v34 = v98;
      if (v72 >= *(v32 + 24) >> 1)
      {
        sub_22C590550();
        v32 = v75;
      }

      sub_22C36DD28(v104, &qword_27D9BF730, &qword_22C9233A0);
      *(v32 + 16) = v72 + 1;
      result = sub_22C6A43E0(v70, v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v72);
      v106 = v32;
      v33 = v71 + 1;
    }

    v59 = *(v37 + 8);
    v59((v34 + v44), v35);
    v55 = v96;
    sub_22C36C640(v96, 1, 1, v97);
LABEL_11:
    sub_22C36DD28(v55, &qword_27D9BD9E0, &qword_22C922F40);
    goto LABEL_12;
  }

  (*(v26 + 8))(v29, v25);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22C6A27E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v49 = a5;
  v55 = a3;
  v58 = a2;
  v51 = type metadata accessor for DependencyId(0);
  v54 = *(v51 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C901FAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - v15;
  v17 = sub_22C90654C();
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v52 = a1;
  sub_22C90838C();
  sub_22C60539C(v12, v58);
  (*(v9 + 8))(v12, v8);
  v27 = sub_22C9070DC();
  if (sub_22C370B74(v16, 1, v27) == 1)
  {
    sub_22C36DD28(v16, &qword_27D9BAA18, &qword_22C911C40);
    v28 = v56;
    v29 = v55;
LABEL_11:
    sub_22C3A5908(&qword_27D9BE3B0, &qword_22C91D960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v39 = sub_22C90825C();
    v41 = v40;
    v42 = sub_22C90836C();
    *(inited + 32) = v39;
    *(inited + 40) = v41;
    *(inited + 48) = v42;
    *(inited + 56) = v43 & 1;
    v59 = v28;

    sub_22C3CC554(inited);
    v44 = v59;
    v45 = v53;
    v46 = &v53[*(v51 + 20)];
    sub_22C90838C();
    *v45 = v44;
    sub_22C3D0F08();
    v47 = *(*v29 + 16);
    sub_22C3D10E4(v47);
    v48 = *v29;
    *(v48 + 16) = v47 + 1;
    return sub_22C6A43E0(v45, v48 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47);
  }

  sub_22C90702C();
  (*(*(v27 - 8) + 8))(v16, v27);
  v30 = v50;
  (*(v50 + 32))(v26, v24, v17);
  (*(v30 + 16))(v21, v26, v17);
  if ((*(v30 + 88))(v21, v17) == *MEMORY[0x277D1DAA8])
  {
    (*(v30 + 96))(v21, v17);
    v31 = sub_22C906F2C();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 88))(v21, v31);
    v28 = v56;
    v34 = v57;
    if (v33 == *MEMORY[0x277D1DEE0])
    {
      (*(v30 + 8))(v26, v17);
      return (*(v32 + 8))(v21, v31);
    }
  }

  else
  {
    v32 = v30;
    v31 = v17;
    v28 = v56;
    v34 = v57;
  }

  (*(v32 + 8))(v21, v31);
  v36 = sub_22C68AD24(v28, v49, v58);
  v37 = (v30 + 8);
  if (!v34)
  {
    v29 = v55;
    sub_22C3CC528(v36);
    (*v37)(v26, v17);
    goto LABEL_11;
  }

  return (*v37)(v26, v17);
}

uint64_t sub_22C6A2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v51 = a6;
  v57 = a4;
  v58 = a3;
  v54 = type metadata accessor for DependencyId(0);
  v56 = *(v54 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v52 = sub_22C90654C();
  v49 = *(v52 - 8);
  v13 = *(v49 + 64);
  v14 = MEMORY[0x28223BE20](v52);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - v17;
  v18 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v48 - v20;
  v22 = sub_22C901FAC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C906A8C();
  v53 = a1;
  sub_22C9097DC();
  sub_22C6053E0(v27, v21);

  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    return sub_22C36DD28(v21, &qword_27D9BC030, &unk_22C911CC0);
  }

  (*(v23 + 32))(v26, v21, v22);
  v29 = v58;
  sub_22C60539C(v26, v58);
  v30 = sub_22C9070DC();
  if (sub_22C370B74(v12, 1, v30) == 1)
  {
    sub_22C36DD28(v12, &qword_27D9BAA18, &qword_22C911C40);
    v31 = v59;
    v32 = v57;
  }

  else
  {
    sub_22C90702C();
    (*(*(v30 - 8) + 8))(v12, v30);
    v33 = v50;
    v34 = v49 + 32;
    v35 = v16;
    v36 = v52;
    (*(v49 + 32))(v50, v35, v52);
    v31 = v59;
    v37 = v60;
    v38 = sub_22C68AD24(v59, v51, v29);
    v39 = (v34 - 24);
    if (v37)
    {
      (*v39)(v33, v36);
      return (*(v23 + 8))(v26, v22);
    }

    v32 = v57;
    sub_22C3CC528(v38);
    (*v39)(v33, v52);
  }

  sub_22C3A5908(&qword_27D9BE3B0, &qword_22C91D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = sub_22C9097DC();
  *(inited + 40) = v41;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  v61 = v31;

  sub_22C3CC554(inited);
  v42 = v61;
  v43 = v23;
  v44 = *(v23 + 16);
  v45 = v55;
  v44(&v55[*(v54 + 20)], v26, v22);
  *v45 = v42;
  sub_22C3D0F08();
  v46 = *(*v32 + 16);
  sub_22C3D10E4(v46);
  (*(v43 + 8))(v26, v22);
  v47 = *v32;
  *(v47 + 16) = v46 + 1;
  return sub_22C6A43E0(v45, v47 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46);
}

void sub_22C6A32CC()
{
  sub_22C370030();
  v50 = v4;
  v54 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_22C3704C4();
  v51 = type metadata accessor for DependencyId(v10);
  v11 = sub_22C369824(v51);
  v53 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C377578();
  v15 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C382784();
  v19 = sub_22C90654C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v25);
  v52 = v0;
  sub_22C60539C(v0, v9);
  sub_22C9070DC();
  sub_22C382D88();
  if (v26)
  {
    v27 = v54;
    sub_22C36DD28(v1, &qword_27D9BAA18, &qword_22C911C40);
LABEL_7:
    v43 = *(v51 + 20);
    v44 = sub_22C901FAC();
    sub_22C369A9C(v44);
    (*(v45 + 16))(&v3[v43], v52);
    *v3 = v27;

    sub_22C3D0F08();
    v46 = *(*v7 + 16);
    sub_22C3D10E4(v46);
    *(*v7 + 16) = v46 + 1;
    v47 = *(v53 + 80);
    v48 = *(v53 + 72);
    sub_22C6AECA0();
    sub_22C6A43E0(v3, v49);
    goto LABEL_8;
  }

  sub_22C90702C();
  sub_22C6AEE1C();
  v29 = *(v28 + 8);
  v30 = sub_22C36BBCC();
  v31(v30);
  v32 = *(v22 + 32);
  v33 = sub_22C370114();
  v34(v33);
  v35 = sub_22C68AD24(v54, v50, v9);
  v36 = (v22 + 8);
  if (!v2)
  {
    v27 = v54;
    sub_22C3CC528(v35);
    v40 = *v36;
    v41 = sub_22C51E290();
    v42(v41);
    goto LABEL_7;
  }

  v37 = *v36;
  v38 = sub_22C51E290();
  v39(v38);
LABEL_8:
  sub_22C36FB20();
}

uint64_t sub_22C6A35B0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22C46EBB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for DependencyId(0) + 20);

  return sub_22C901F6C();
}

uint64_t sub_22C6A3618(uint64_t a1)
{
  sub_22C47102C(a1, *v1);
  v2 = *(type metadata accessor for DependencyId(0) + 20);
  sub_22C901FAC();
  sub_22C6AEB50();
  sub_22C6A4290(v3, v4);
  sub_22C36BAFC();
  return sub_22C909F8C();
}

uint64_t sub_22C6A3694()
{
  sub_22C90B62C();
  sub_22C47102C(v5, *v0);
  v1 = *(type metadata accessor for DependencyId(0) + 20);
  sub_22C901FAC();
  sub_22C6AEB50();
  sub_22C6A4290(v2, v3);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C6A3738(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C47102C(v6, *v2);
  v4 = *(a2 + 20);
  sub_22C901FAC();
  sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C6A37E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_22C6A3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    sub_22C90B64C();
    sub_22C372164();
    sub_22C909FFC();
    if (a5)
    {
      return sub_22C90B64C();
    }
  }

  else
  {
    sub_22C90B64C();
    if (a5)
    {
      return sub_22C90B64C();
    }
  }

  sub_22C90B64C();
  return MEMORY[0x2318B8B10](a4);
}

uint64_t sub_22C6A38EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_22C90B62C();
  sub_22C90B64C();
  if (a2)
  {
    sub_22C909FFC();
  }

  sub_22C90B64C();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x2318B8B10](a3);
  }

  return sub_22C90B66C();
}

uint64_t sub_22C6A39B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22C90B62C();
  sub_22C90B64C();
  if (v2)
  {
    sub_22C909FFC();
  }

  sub_22C90B64C();
  if (!v4)
  {
    MEMORY[0x2318B8B10](v3);
  }

  return sub_22C90B66C();
}

void sub_22C6A3A80()
{
  sub_22C370030();
  v36 = v0;
  v1 = sub_22C9089DC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C36D0FC();
  v7 = sub_22C9088CC();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C370654();
  sub_22C9089EC();
  v13 = v4[11];
  v14 = sub_22C372158();
  if (v15(v14) == *MEMORY[0x277D1E6F8])
  {
    v16 = v4[12];
    v17 = sub_22C372158();
    v18(v17);
    v19 = *(v10 + 32);
    v20 = sub_22C50B578();
    v19(v20);
    v21 = sub_22C90887C();
    MEMORY[0x28223BE20](v21);
    sub_22C369920();
    *(v22 - 16) = v36;
    v24 = sub_22C5EC5FC(sub_22C6AEB00, v23, v21);

    if (v24)
    {
      v25 = sub_22C38644C();
      v19(v25);
    }

    else
    {
      v29 = *(v10 + 8);
      v30 = sub_22C3819EC();
      v31(v30);
    }
  }

  else
  {
    v26 = v4[1];
    v27 = sub_22C372158();
    v28(v27);
  }

  sub_22C3D36A4();
  sub_22C36C640(v32, v33, v34, v35);
  sub_22C36FB20();
}

void sub_22C6A3CF0()
{
  sub_22C36BA7C();
  v59 = v2;
  v63 = v3;
  v5 = v4;
  v7 = v6;
  v58 = sub_22C901FAC();
  v8 = sub_22C369824(v58);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C36BA0C();
  v11 = sub_22C9089DC();
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v61 = v15;
  v16 = sub_22C36BA0C();
  v17 = v5(v16);
  sub_22C369824(v17);
  v54 = v18;
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C38B638();
  v22 = sub_22C908A0C();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  sub_22C37BDA4();
  v28 = sub_22C9087DC();
  v29 = *(v28 + 16);
  if (v29)
  {
    v60 = v17;
    v53 = v7;
    v30 = *(v25 + 80);
    sub_22C36BA94();
    v17 = v28 + v31;
    v7 = v61;
    v64 = *v63;
    v62 = (v54 + 32);
    v56 = v28 + v31;
    v55 = (v54 + 8);
    v57 = v28;
    while (v29 <= *(v28 + 16))
    {
      --v29;
      (*(v25 + 16))(v0, v17 + *(v25 + 72) * v29, v22);
      sub_22C9089EC();
      v32 = *(v25 + 8);
      v33 = sub_22C377B94();
      v34(v33);
      v35 = sub_22C6AF77C();
      v36(v35, v11);
      sub_22C6B01F4();
      if (v37)
      {
        v38 = sub_22C6AF77C();
        v39(v38, v11);
        v40 = v1;
        v41 = *v62;
        v42 = sub_22C37B9B0();
        v17 = v60;
        v43 = (v41)(v42);
        v59(v43);
        v44 = sub_22C901F6C();
        v45 = sub_22C37A27C();
        v46(v45, v58);
        if (v44)
        {

          v7 = v53;
          sub_22C6AFBC4();
          v41();
          v52 = 0;
          goto LABEL_12;
        }

        v47 = *v55;
        v48 = sub_22C38644C();
        v49(v48);
        v1 = v40;
        v7 = v61;
        v28 = v57;
        v17 = v56;
        if (!v29)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v50 = sub_22C6AF77C();
        v51(v50, v11);
        if (!v29)
        {
LABEL_10:

          v52 = 1;
          v7 = v53;
          v17 = v60;
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  v52 = 1;
LABEL_12:
  sub_22C36C640(v7, v52, 1, v17);
  sub_22C36CC48();
}

uint64_t sub_22C6A40E4()
{
  sub_22C369A48();
  v0 = sub_22C901FAC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C377578();
  sub_22C9068FC();
  v6 = sub_22C901F6C();
  v7 = *(v3 + 8);
  v8 = sub_22C3806B8();
  v9(v8);
  return v6 & 1;
}

uint64_t sub_22C6A41CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v8;
  *v8 = v9;
  v10 = sub_22C6AF0F4(v8);

  return sub_22C661CC8(v10, v11, v12, v4, v5, v7, v6);
}

uint64_t sub_22C6A4290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C6A42D8()
{
  sub_22C36FB38();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = sub_22C6AF0F4(v5);

  return sub_22C6619C8(v7, v8, v9, v4);
}

uint64_t sub_22C6A438C()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C6A43E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

void sub_22C6A4434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C3744F8();
  sub_22C6AFAEC();
  sub_22C909FFC();
  sub_22C90B66C();
  v16 = *(v15 + 32);
  sub_22C386A8C();
  while (1)
  {
    sub_22C6AFC2C(v17);
    if (v19)
    {
      break;
    }

    sub_22C6B0424();
    v19 = *v18 == v13 && v18[1] == v11;
    if (v19 || (sub_22C90B4FC() & 1) != 0)
    {

      sub_22C6B0424();
      v21 = v20[1];
      *v10 = *v20;
      v10[1] = v21;

      goto LABEL_11;
    }

    v17 = v14 + 1;
  }

  v22 = *v12;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22C6B04A4();
  v23 = sub_22C6AEF20();
  sub_22C6A6BCC(v23, v24, v25, v15, v26, v27, v28, v29);
  *v12 = a10;
  *v10 = v13;
  v10[1] = v11;
LABEL_11:
  sub_22C38C3F0();
}

void sub_22C6A4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C3744F8();
  sub_22C6AFAEC();
  sub_22C909FFC();
  sub_22C90B66C();
  v16 = *(v15 + 32);
  sub_22C386A8C();
  while (1)
  {
    sub_22C6AFC2C(v17);
    if (v19)
    {
      break;
    }

    sub_22C6B0424();
    v19 = *v18 == v13 && v18[1] == v11;
    if (v19 || (sub_22C90B4FC() & 1) != 0)
    {

      sub_22C6B0424();
      v21 = v20[1];
      *v10 = *v20;
      v10[1] = v21;

      goto LABEL_11;
    }

    v17 = v14 + 1;
  }

  v22 = *v12;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22C6B04A4();
  v23 = sub_22C6AEF20();
  sub_22C6A6D34(v23, v24, v25, v15, v26, v27, v28, v29);
  *v12 = a10;
  *v10 = v13;
  v10[1] = v11;
LABEL_11:
  sub_22C38C3F0();
}

void sub_22C6A45F4()
{
  sub_22C3744F8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 40);
  sub_22C90B62C();
  MEMORY[0x2318B8B30](v6 >> 14);
  MEMORY[0x2318B8B30](v4 >> 14);
  MEMORY[0x2318B8B10](v2);
  v11 = sub_22C90B66C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v9 + 48) + 24 * v13;
      v16 = v6 >> 14 == *v15 >> 14 && *(v15 + 8) >> 14 == v4 >> 14;
      if (v16 && *(v15 + 16) == v2)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v6 = *v15;
    v4 = *(v15 + 8);
  }

  else
  {
LABEL_10:
    v17 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *v0;
    v18 = sub_22C36EBF0();
    sub_22C6A6E9C(v18, v19, v2, v13, v20);
    *v0 = v21;
  }

  *v8 = v6;
  *(v8 + 8) = v4;
  *(v8 + 16) = v2;
  sub_22C38C3F0();
}

void sub_22C6A4738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v121 = v26;
  v118 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v27 = sub_22C36985C(v118);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C3698F8(v30);
  v31 = sub_22C90430C();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v39 = sub_22C3698F8(v38);
  v117 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v39);
  v40 = sub_22C36985C(v117);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v138 = v43;
  sub_22C36BA0C();
  v135 = sub_22C902D0C();
  v44 = sub_22C369824(v135);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C3698A8();
  sub_22C36D234(v49);
  v50 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  sub_22C36985C(v50);
  v52 = *(v51 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v53);
  v54 = sub_22C37B6BC();
  v144 = type metadata accessor for PromptTreeIdentifier.Label(v54);
  v55 = sub_22C369824(v144);
  v141 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  v60 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  v140 = v62;
  sub_22C369930();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  v134 = v64;
  sub_22C369930();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  v146 = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  sub_22C36D234(v68);
  v120 = v20;
  v69 = *v20;
  v70 = *(*v20 + 40);
  sub_22C90B62C();
  sub_22C48640C();
  sub_22C90B66C();
  v71 = *(v69 + 32);
  sub_22C386A8C();
  v74 = v73 & ~v72;
  v143 = v75;
  if (((*(v75 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
  {
LABEL_61:
    v113 = *v120;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AECD0();
    sub_22C6AAE30(v25, v119);
    v147 = *v120;
    sub_22C6A7048(v119, v74, isUniquelyReferenced_nonNull_native);
    *v120 = v147;
    sub_22C6A43E0(v25, v121);
LABEL_62:
    sub_22C36CC48();
    return;
  }

  v145 = v21;
  v127 = v31;
  v142 = *(v141 + 72);
  v129 = v34;
  v126 = (v34 + 8);
  v131 = (v46 + 8);
  v136 = v69;
  v137 = v50;
  v76 = ~v72;
  v139 = ~v72;
  v77 = v60;
  v123 = v25;
  v130 = v60;
  while (1)
  {
    v78 = v142 * v74;
    sub_22C6AAE30(*(v69 + 48) + v142 * v74, v146);
    v79 = *(v50 + 48);
    v80 = v145;
    sub_22C6AAE30(v146, v145);
    sub_22C6AAE30(v25, v145 + v79);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_22C6AECD0();
    sub_22C6AAE30(v145, v134);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C36BA4C(&a16);
      v98(v134, v135);
      v99 = v139;
      v80 = v145;
      goto LABEL_26;
    }

    sub_22C36BA4C(&v148);
    v103(v122, v145 + v79, v135);
    sub_22C3819EC();
    v133 = sub_22C902CFC();
    v104 = *v131;
    v105 = sub_22C3863FC();
    v104(v105);
    sub_22C6A438C();
    v106 = sub_22C36FC2C();
    v69 = v136;
    v104(v106);
    v50 = v137;
    sub_22C36D264();
    sub_22C6A438C();
    v99 = v139;
    if (v133)
    {
      v78 = v142 * v74;
      goto LABEL_63;
    }

LABEL_60:
    v76 = v99;
    v74 = (v74 + 1) & v99;
    if (((*(v143 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22C6AECD0();
    v100 = sub_22C372280();
    sub_22C6AAE30(v100, v101);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C6A438C();
LABEL_25:
      v99 = v76;
LABEL_26:
      sub_22C36DD28(v80, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_60;
    }

    sub_22C6A43E0(v145 + v79, v124);
    v102 = *v124;
    switch(*v77)
    {
      case 3u:
        if (v102 == 3)
        {
          goto LABEL_41;
        }

        goto LABEL_58;
      case 4u:
        if (v102 != 4)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      case 5u:
        if (v102 != 5)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      case 6u:
        if (v102 != 6)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      default:
        if (*v77 != v102 || (v102 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_58;
        }

LABEL_41:
        v108 = *(v77 + 1) == v124[1] && *(v77 + 2) == v124[2];
        if (v108 || (sub_22C90B4FC()) && (*(v77 + 3) == v124[3] ? (v109 = *(v77 + 4) == v124[4]) : (v109 = 0), (v109 || (sub_22C90B4FC()) && (*(v77 + 5) == v124[5] ? (v110 = *(v77 + 6) == v124[6]) : (v110 = 0), v110 || (sub_22C90B4FC())))
        {
          v111 = *(v118 + 32);
          v112 = sub_22C90067C();
          sub_22C36C140();
          sub_22C6A438C();
          if (v112)
          {
            sub_22C6AF580();
            sub_22C6A438C();
            sub_22C5CA640();
            sub_22C6A438C();
            sub_22C36C140();
            sub_22C6A438C();
            goto LABEL_63;
          }
        }

        else
        {
LABEL_58:
          sub_22C36C140();
          sub_22C6A438C();
        }

        sub_22C6AF580();
        sub_22C6A438C();
        sub_22C5CA640();
        sub_22C6A438C();
        sub_22C36C140();
        sub_22C6A438C();
        v99 = v139;
        break;
    }

    goto LABEL_60;
  }

  sub_22C6AECD0();
  sub_22C6AAE30(v145, v140);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C36C140();
    sub_22C6A438C();
    sub_22C6A438C();
    v77 = v130;
    goto LABEL_25;
  }

  sub_22C6A43E0(v145 + v79, v138);
  if ((sub_22C48819C(*v140, *v138) & 1) == 0 || (v82 = v140[1], v132 = *(v82 + 16), v132 != *(v138[1] + 16)))
  {
LABEL_27:
    sub_22C36C140();
    sub_22C6A438C();
    v77 = v130;
LABEL_28:
    sub_22C6AF598();
    sub_22C6A438C();
    sub_22C5CA640();
    sub_22C6A438C();
    sub_22C36C140();
    sub_22C6A438C();
    v25 = v123;
    v99 = v76;
    goto LABEL_60;
  }

  v83 = v129;
  if (!v132 || (sub_22C57A240(), v82 == v84))
  {
LABEL_15:
    v96 = *(v117 + 24);
    v97 = sub_22C90962C();
    sub_22C36C140();
    sub_22C6A438C();
    v77 = v130;
    if (v97)
    {
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C6AF598();
      sub_22C6A438C();
      sub_22C5CA640();
      sub_22C6A438C();
      v78 = v142 * v74;
LABEL_63:
      sub_22C36C140();
      sub_22C6A438C();
      v115 = *(v69 + 48);
      sub_22C6AECD0();
      sub_22C6AAE30(v116 + v78, v121);
      goto LABEL_62;
    }

    goto LABEL_28;
  }

  v85 = 0;
  v86 = *(v129 + 80);
  sub_22C36BA94();
  v125 = v82 + v87;
  while (v85 < *(v82 + 16))
  {
    v88 = *(v83 + 72) * v85;
    v89 = *(v83 + 16);
    v89(v128, v125 + v88, v127);
    sub_22C57A240();
    if (v85 >= *(v90 + 16))
    {
      goto LABEL_65;
    }

    v91 = sub_22C6B02E0();
    (v89)(v91);
    sub_22C6A4290(&qword_27D9BC808, MEMORY[0x277D85578]);
    sub_22C51E290();
    v92 = sub_22C90A0BC();
    v93 = *v126;
    v94 = sub_22C5CA640();
    v93(v94);
    v95 = sub_22C36A10C();
    v93(v95);
    v69 = v136;
    v50 = v137;
    if ((v92 & 1) == 0)
    {
      goto LABEL_27;
    }

    ++v85;
    v83 = v129;
    if (v132 == v85)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_22C6A521C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v4);
  v5 = sub_22C90952C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3708E8();
  sub_22C6AF568();
  sub_22C6A4290(v9, v10);
  sub_22C6AEDF8();
  sub_22C388858();
  while (1)
  {
    sub_22C389120(v11);
    if (v12)
    {
      sub_22C6AFC8C();
      v16 = sub_22C3723E0();
      v17(v16);
      v18 = sub_22C382830();
      sub_22C6A7CB4(v18, v19, v20);
      v21 = sub_22C37F950();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_22C6AEB68();
    v3(v13);
    sub_22C6AF568();
    sub_22C6A4290(&qword_28142FA78, v14);
    sub_22C383854();
    v15 = sub_22C375A84();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_22C37E5C0();
  v1(v23);
  v24 = sub_22C38574C();
  v3(v24);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A538C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v4);
  v5 = sub_22C902D0C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3708E8();
  sub_22C6AF52C();
  sub_22C6A4290(v9, v10);
  sub_22C6AEDF8();
  sub_22C388858();
  while (1)
  {
    sub_22C389120(v11);
    if (v12)
    {
      sub_22C6AFC8C();
      v16 = sub_22C3723E0();
      v17(v16);
      v18 = sub_22C382830();
      sub_22C6A7F40(v18, v19, v20);
      v21 = sub_22C37F950();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_22C6AEB68();
    v3(v13);
    sub_22C6AF52C();
    sub_22C6A4290(&qword_27D9BC488, v14);
    sub_22C383854();
    v15 = sub_22C375A84();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_22C37E5C0();
  v1(v23);
  v24 = sub_22C38574C();
  v3(v24);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A54FC()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v4);
  v5 = sub_22C901FAC();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3708E8();
  sub_22C6AEB50();
  sub_22C6A4290(v9, v10);
  sub_22C6AEDF8();
  sub_22C388858();
  while (1)
  {
    sub_22C389120(v11);
    if (v12)
    {
      sub_22C6AFC8C();
      v16 = sub_22C3723E0();
      v17(v16);
      v18 = sub_22C382830();
      sub_22C6A81CC(v18, v19, v20);
      v21 = sub_22C37F950();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_22C6AEB68();
    v3(v13);
    sub_22C6AEB50();
    sub_22C6A4290(&qword_27D9BAA28, v14);
    sub_22C383854();
    v15 = sub_22C375A84();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_22C37E5C0();
  v1(v23);
  v24 = sub_22C38574C();
  v3(v24);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A566C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v4);
  v5 = sub_22C90941C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3708E8();
  sub_22C6AF514();
  sub_22C6A4290(v9, v10);
  sub_22C6AEDF8();
  sub_22C388858();
  while (1)
  {
    sub_22C389120(v11);
    if (v12)
    {
      sub_22C6AFC8C();
      v16 = sub_22C3723E0();
      v17(v16);
      v18 = sub_22C382830();
      sub_22C6A8458(v18, v19, v20);
      v21 = sub_22C37F950();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_22C6AEB68();
    v3(v13);
    sub_22C6AF514();
    sub_22C6A4290(&qword_27D9BF510, v14);
    sub_22C383854();
    v15 = sub_22C375A84();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_22C37E5C0();
  v1(v23);
  v24 = sub_22C38574C();
  v3(v24);
LABEL_7:
  sub_22C36CC48();
}

BOOL sub_22C6A57DC(unsigned __int8 *a1, unsigned __int8 a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a2);
  v7 = sub_22C90B66C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_22C6A86E4(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_22C6A58CC()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v4);
  v5 = sub_22C908C5C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3708E8();
  sub_22C6AF4E4();
  sub_22C6A4290(v9, v10);
  sub_22C6AEDF8();
  sub_22C388858();
  while (1)
  {
    sub_22C389120(v11);
    if (v12)
    {
      sub_22C6AFC8C();
      v16 = sub_22C3723E0();
      v17(v16);
      v18 = sub_22C382830();
      sub_22C6A8AF4(v18, v19, v20);
      v21 = sub_22C37F950();
      v22(v21);
      goto LABEL_7;
    }

    v13 = sub_22C6AEB68();
    v3(v13);
    sub_22C6AF4E4();
    sub_22C6A4290(&qword_27D9BF838, v14);
    sub_22C383854();
    v15 = sub_22C375A84();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = sub_22C37E5C0();
  v1(v23);
  v24 = sub_22C38574C();
  v3(v24);
LABEL_7:
  sub_22C36CC48();
}