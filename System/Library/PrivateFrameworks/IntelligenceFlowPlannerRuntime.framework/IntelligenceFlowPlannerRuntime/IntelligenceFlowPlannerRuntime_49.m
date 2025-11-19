uint64_t sub_22C7A2EEC()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 1096);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v2 + 1104) = v0;

  if (v0)
  {
    v8 = *(v2 + 1072);
    sub_22C376988();

    v9 = sub_22C7A3FFC;
  }

  else
  {
    sub_22C376988();
    v9 = sub_22C7A300C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C7A300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v17 = v12[74];
  v18 = v12[71];
  v19 = sub_22C3707B4();
  v21 = sub_22C370B74(v19, v20, v17);
  v22 = v12[134];
  if (v21 == 1)
  {
    v23 = v12[93];
    sub_22C36DD28(v18, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F8C();

    v24 = sub_22C9063CC();
    v25 = sub_22C90AADC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v12[135];
    if (v26)
    {
      v13 = v12[134];
      v14 = v12[133];
      v146 = v12[93];
      v28 = v12[83];
      v29 = v12[82];
      v15 = sub_22C36FB44();
      v16 = sub_22C370060();
      *v15 = 136315138;
      v30 = sub_22C371510();
      *(v15 + 4) = sub_22C36F9F4(v30, v31, v32);
      sub_22C383C58(&dword_22C366000, v33, v34, "cannot convert %s to Date.");
      sub_22C36FF94(v16);
      sub_22C3699EC();
      sub_22C3699EC();

      v35 = v146;
    }

    else
    {
      v59 = v12[93];
      v25 = v12[83];
      v29 = v12[82];

      v35 = v59;
    }

    (v27)(v35, v29);
    v142 = v12[136];
    v60 = v12[134];
    v61 = v12[133];
    sub_22C375018();
    v62 = sub_22C36CCF8();
    sub_22C36C640(v62, v63, 1, v64);
    sub_22C907D5C();
    sub_22C36C640(v13, 0, 1, v29);
    sub_22C907D2C();
    v65 = sub_22C90931C();
    v66 = swift_allocBox();
    sub_22C7A724C(v66, v67, v68, v69, v70, v71, v72, v73, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
    v74 = *MEMORY[0x277D729B8];
    sub_22C36BBA8(v65);
    (*(v75 + 104))();
    *v27 = v15;
    (*(v25 + 104))(v27, *MEMORY[0x277D72A58]);
    sub_22C7A72A8();
    (*(v14 + 104))(v16, *MEMORY[0x277D1CBE0]);
    sub_22C9026AC();
    v76 = sub_22C36CCF8();
    sub_22C36C640(v76, v77, 1, v78);
    sub_22C385DE8();
    v79 = sub_22C7A71F0();
    v80(v79);
    sub_22C9068FC();
    sub_22C7A7184();
    v81 = sub_22C383E48();
    v133(v81);
    v82 = sub_22C7A7274();
    v83(v82);
    type metadata accessor for StepResolution();
    swift_storeEnumTagMultiPayload();

    (v133)(v139, v25 + 104);
    (*(v144 + 8))(v24, v146);
  }

  else
  {
    sub_22C7A7288();
    v36 = sub_22C37B0B8();
    v37(v36);

    sub_22C3838DC();
    v145 = v38;
    v147 = v39;
    v141 = v12[127];
    v143 = v40;
    v138 = v12[124];
    v140 = v12[123];
    sub_22C3813E0();
    v136 = v41;
    v137 = v42;
    sub_22C372D7C();
    sub_22C3828DC(v43);
    v44();
    sub_22C7A6FF0();
    sub_22C7A6F08(v45, v46);
    sub_22C909F0C();
    v47 = sub_22C7A7020();
    v48(v47);
    v49 = sub_22C901ECC();
    sub_22C7A7084(v49);
    sub_22C381BBC();
    v50 = sub_22C36CD64();
    v51(v50);
    sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v52 = sub_22C383450();
    v53 = sub_22C38AB54(v52, xmmword_22C90F800);
    v54(v53);
    sub_22C7A7208();
    v55 = sub_22C386DCC();
    v56(v55);
    (*(v13 + 8))(v134, v22);
    v135(v137, v136);
    v57 = sub_22C7A7174();
    v58(v57);
    type metadata accessor for StepResolution();
    sub_22C385FDC();
    (*(v143 + 8))(v147, v145);
  }

  sub_22C36C3C0();
  sub_22C382E00();
  sub_22C7A7148();
  sub_22C7A713C();
  sub_22C3883F4();
  sub_22C37BC2C();
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  v131 = v12[61];
  v132 = v12[60];
  sub_22C3739A0();

  sub_22C369A24();
  sub_22C372034();

  return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12);
}

uint64_t sub_22C7A3774()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 1136);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v2 + 1144) = v0;

  if (v0)
  {
    v8 = *(v2 + 1120);
    sub_22C7A703C();

    v9 = sub_22C7A439C;
  }

  else
  {
    sub_22C7A703C();
    v9 = sub_22C7A3894;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C7A3894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v18 = v12[74];
  v19 = v12[70];
  v20 = sub_22C3707B4();
  v22 = sub_22C370B74(v20, v21, v18);
  v23 = v12[140];
  if (v22 == 1)
  {
    v24 = v12[92];
    sub_22C36DD28(v19, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F8C();

    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();

    if (os_log_type_enabled(v25, v26))
    {
      v13 = v12[140];
      v14 = v12[139];
      v27 = v12[92];
      v28 = v12[83];
      v29 = v12[82];
      v15 = sub_22C36FB44();
      v16 = sub_22C370060();
      *v15 = 136315138;
      v30 = sub_22C371510();
      *(v15 + 4) = sub_22C36F9F4(v30, v31, v32);
      sub_22C383C58(&dword_22C366000, v33, v34, "cannot convert %s to DateComponents.");
      sub_22C36FF94(v16);
      sub_22C3699EC();
      sub_22C3699EC();

      v35 = *(v28 + 8);
      v17 = (v28 + 8);
    }

    else
    {
      v61 = v12[92];
      v62 = v12[83];
      v29 = v12[82];

      v63 = *(v62 + 8);
      v26 = v62 + 8;
    }

    v36 = sub_22C36BAFC();
    v37(v36);
    v146 = v12[141];
    v64 = v12[140];
    v65 = v12[139];
    sub_22C375018();
    v66 = sub_22C36CCF8();
    sub_22C36C640(v66, v67, 1, v68);
    sub_22C907D5C();
    sub_22C36C640(v13, 0, 1, v29);
    sub_22C907D2C();
    v69 = sub_22C90931C();
    v70 = swift_allocBox();
    sub_22C7A724C(v70, v71, v72, v73, v74, v75, v76, v77, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
    v78 = *MEMORY[0x277D729B8];
    sub_22C36BBA8(v69);
    (*(v79 + 104))();
    *v17 = v15;
    (*(v26 + 104))(v17, *MEMORY[0x277D72A58]);
    sub_22C7A72A8();
    (*(v14 + 104))(v16, *MEMORY[0x277D1CBE0]);
    sub_22C9026AC();
    v80 = sub_22C36CCF8();
    sub_22C36C640(v80, v81, 1, v82);
    sub_22C385DE8();
    v83 = sub_22C7A71F0();
    v84(v83);
    sub_22C9068FC();
    sub_22C7A7184();
    v85 = sub_22C383E48();
    v137(v85);
    v86 = sub_22C7A7274();
    v87(v86);
    type metadata accessor for StepResolution();
    swift_storeEnumTagMultiPayload();

    (v137)(v143, v26 + 104);
    (*(v148 + 8))(v25);
  }

  else
  {
    sub_22C7A7288();
    v38 = sub_22C37B0B8();
    v39(v38);

    sub_22C3838DC();
    v149 = v40;
    v150 = v41;
    v145 = v12[127];
    v147 = v42;
    v142 = v12[124];
    v144 = v12[123];
    sub_22C3813E0();
    v140 = v43;
    v141 = v44;
    sub_22C372D7C();
    sub_22C3828DC(v45);
    v46();
    sub_22C7A6FF0();
    sub_22C7A6F08(v47, v48);
    sub_22C909F0C();
    v49 = sub_22C7A7020();
    v50(v49);
    v51 = sub_22C901ECC();
    sub_22C7A7084(v51);
    sub_22C381BBC();
    v52 = sub_22C36CD64();
    v53(v52);
    sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v54 = sub_22C383450();
    v55 = sub_22C38AB54(v54, xmmword_22C90F800);
    v56(v55);
    sub_22C7A7208();
    v57 = sub_22C386DCC();
    v58(v57);
    (*(v13 + 8))(v138, v23);
    v139(v141, v140);
    v59 = sub_22C7A7174();
    v60(v59);
    type metadata accessor for StepResolution();
    sub_22C385FDC();
    (*(v147 + 8))(v150, v149);
  }

  sub_22C36C3C0();
  sub_22C382E00();
  sub_22C7A7148();
  sub_22C7A713C();
  sub_22C3883F4();
  sub_22C37BC2C();
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  v135 = v12[61];
  v136 = v12[60];
  sub_22C3739A0();

  sub_22C369A24();
  sub_22C372034();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12);
}

uint64_t sub_22C7A3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = v13[136];
  v16 = sub_22C37F524();
  v12(v16);
  v17 = sub_22C36ECB4();
  v15(v17);

  v18 = sub_22C370114();
  v12(v18);
  (*(v14 + 8))();
  v32 = v13[138];
  sub_22C387564();
  v19 = v13[120];
  v20 = v13[119];
  sub_22C7A7164();
  sub_22C382E00();
  sub_22C7A7148();
  sub_22C7A713C();
  sub_22C3883F4();
  sub_22C37BC2C();
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  v30 = v13[61];
  v31 = v13[60];
  sub_22C3739A0();

  sub_22C369A24();
  sub_22C372034();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_22C7A439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = v13[141];
  v16 = sub_22C37F524();
  v12(v16);
  v17 = sub_22C36ECB4();
  v15(v17);

  v18 = sub_22C370114();
  v12(v18);
  (*(v14 + 8))();
  v32 = v13[143];
  sub_22C387564();
  v19 = v13[120];
  v20 = v13[119];
  sub_22C7A7164();
  sub_22C382E00();
  sub_22C7A7148();
  sub_22C7A713C();
  sub_22C3883F4();
  sub_22C37BC2C();
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  v30 = v13[61];
  v31 = v13[60];
  sub_22C3739A0();

  sub_22C369A24();
  sub_22C372034();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_22C7A473C()
{
  sub_22C908AAC();
  sub_22C6B0844();
}

uint64_t sub_22C7A47BC()
{
  sub_22C369A48();
  v0 = sub_22C9070DC();
  v1 = sub_22C369824(v0);
  v164 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C3698E4();
  v136 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v126 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v135 = &v126 - v11;
  MEMORY[0x28223BE20](v10);
  sub_22C3698F8(&v126 - v12);
  v138 = sub_22C9088CC();
  v13 = sub_22C369824(v138);
  i = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C3698F8(v18 - v17);
  v167 = sub_22C901FAC();
  v19 = sub_22C369824(v167);
  v165 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v157 = v23;
  MEMORY[0x28223BE20](v24);
  v166 = &v126 - v25;
  v26 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v27 = sub_22C369914(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698F8(&v126 - v30);
  v132 = sub_22C906A3C();
  v31 = sub_22C369824(v132);
  v163 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  sub_22C3698F8(v36 - v35);
  v37 = sub_22C9089DC();
  v38 = sub_22C369824(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v45 = v44 - v43;
  v155 = sub_22C908A0C();
  v46 = sub_22C369824(v155);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v153 = v52 - v51;
  v53 = sub_22C90880C();
  v54 = sub_22C369824(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C369838();
  v61 = v60 - v59;

  sub_22C3ADC38();
  v169 = v62;
  sub_22C90878C();
  v63 = sub_22C9087DC();
  v64 = v61;
  v65 = v53;
  v66 = v45;
  v67 = v137;
  result = (*(v56 + 8))(v64, v65);
  v69 = v138;
  v127 = 0;
  v145 = 0;
  v70 = *(v63 + 16);
  v151 = v48 + 16;
  v149 = v40 + 88;
  v148 = *MEMORY[0x277D1E6F8];
  v152 = v48;
  v150 = (v48 + 8);
  v130 = v40 + 8;
  v146 = v40 + 96;
  v141 = *MEMORY[0x277D1E720];
  v129 = v163 + 32;
  ++v165;
  v128 = v163 + 8;
  v140 = i + 32;
  v163 = v164 + 16;
  v162 = (v164 + 8);
  v156 = (v164 + 32);
  v139 = i + 8;
  v158 = v9;
  v142 = v45;
  v143 = v37;
  v147 = v63;
  while (1)
  {
    if (!v70)
    {
      goto LABEL_27;
    }

    v71 = v70 - 1;
    if (v71 >= *(v63 + 16))
    {
      break;
    }

    v72 = v153;
    v73 = v63 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v74 = *(v152 + 72);
    v154 = v71;
    (*(v152 + 16))(v153, v73 + v74 * v71, v155);
    v75 = v169;
    if (!v169[2])
    {
      v124 = sub_22C3857CC();
      v125(v124);

      goto LABEL_25;
    }

    sub_22C9089EC();
    v76 = sub_22C370A40(&v173);
    v78 = v77(v76);
    if (v78 == v148)
    {
      v79 = sub_22C370A40(&v172);
      v80(v79);
      sub_22C36BA4C(&v171);
      v81(v67, v66, v69);
      v82 = sub_22C90887C();
      v83 = v82;
      v168 = *(v82 + 16);
      if (v168)
      {
        v144 = v75;
        v84 = v82 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
        v159 = *(v164 + 16);
        v160 = v84;
        v159(v9);
        v85 = 1;
        v86 = v136;
        for (i = v83; ; v83 = i)
        {
          if (v168 == v85)
          {

            v110 = *v156;
            v111 = v135;
            (*v156)(v135, v9, v0);
            v112 = v134;
            v110(v134, v111, v0);
            v113 = v166;
            v114 = sub_22C9068FC();
            MEMORY[0x28223BE20](v114);
            *(&v126 - 2) = v113;
            v115 = v144;

            v116 = v145;
            v117 = sub_22C806CDC(sub_22C7A6FC0, &v126 - 4, v115);
            v145 = v116;
            (*v162)(v112, v0);
            sub_22C36BA4C(v170);
            v67 = v137;
            v69 = v138;
            v118(v137, v138);
            (*v150)(v153, v155);

            v169 = v117;
            result = (*v165)(v113, v167);
            v66 = v142;
            goto LABEL_23;
          }

          if (v85 >= *(v83 + 16))
          {
            break;
          }

          v87 = v164;
          (v159)(v86, v160 + *(v164 + 72) * v85, v0);
          sub_22C9068FC();
          v88 = v157;
          sub_22C9068FC();
          sub_22C6AF3F0();
          v89 = sub_22C901F5C();
          v90 = v9;
          v91 = v0;
          v92 = *v165;
          (*v165)(v88, v167);
          v93 = sub_22C6AF3F0();
          (v92)(v93);
          v94 = *(v87 + 8);
          if (v89)
          {
            v94(v90, v91);
            (*v156)(v90, v86, v91);
          }

          else
          {
            v94(v86, v91);
          }

          v0 = v91;
          ++v85;
          v9 = v158;
        }

        __break(1u);
LABEL_27:

LABEL_25:

        return v127;
      }

      sub_22C36BA4C(v170);
      v123(v67, v69);
      v121 = sub_22C3857CC();
LABEL_22:
      result = v122(v121);
LABEL_23:
      v63 = v147;
      v70 = v154;
    }

    else
    {
      if (v78 != v141)
      {
        v119 = sub_22C3857CC();
        v120(v119);
        v121 = sub_22C370A40(&v162);
        goto LABEL_22;
      }

      v95 = sub_22C370A40(&v172);
      v96(v95);
      sub_22C36BA4C(&i);
      v97(v131, v66, v132);
      v98 = v166;
      sub_22C9068FC();
      v99 = v67;
      v100 = v69;
      v101 = v72;
      v102 = v133;
      sub_22C8C3990();
      v103 = v98;
      v66 = v142;
      v104 = v167;
      (*v165)(v103, v167);
      sub_22C36BA4C(&v160);
      v105 = sub_22C371510();
      v106(v105);
      v107 = v101;
      v69 = v100;
      v67 = v99;
      (*v150)(v107, v155);
      LODWORD(v104) = sub_22C370B74(v102, 1, v104);
      result = sub_22C36DD28(v102, &qword_27D9BC030, &unk_22C911CC0);
      v108 = v104 == 1;
      v63 = v147;
      v70 = v154;
      if (!v108 && __OFADD__(v127++, 1))
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_22C7A5284()
{
  v0 = sub_22C90880C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  sub_22C90878C();
  v15 = sub_22C9087DC();
  (*(v3 + 8))(v8, v0);
  v26[1] = v15;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EEC();

  v16 = sub_22C9079FC();
  v17 = sub_22C36CCF8();
  if (sub_22C370B74(v17, v18, v16) == 1)
  {
    sub_22C36DD28(v14, &qword_27D9BD798, &unk_22C919070);
    return 0;
  }

  else
  {
    v20 = sub_22C90797C();
    sub_22C36BBA8(v16);
    v22 = *(v21 + 8);
    v23 = sub_22C36BAFC();
    v24(v23);
    v19 = [v20 location];
  }

  return v19;
}

uint64_t sub_22C7A5464(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v44 = a3;
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v41 - v7;
  v8 = sub_22C90952C();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9093BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v41 - v20);
  v22 = sub_22C90906C();
  v42 = *(v22 - 8);
  v23 = *(v42 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  if (sub_22C5FB484())
  {
    v41 = a1;
    sub_22C90774C();
    if ((*(v13 + 88))(v21, v12) == *MEMORY[0x277D729E0])
    {
      (*(v13 + 96))(v21, v12);
      v26 = *v21;
      v27 = swift_projectBox();
      v28 = v42;
      (*(v42 + 16))(v25, v27, v22);

      v29 = sub_22C90905C();
      (*(v28 + 8))(v25, v22);
      v30 = *(v29 + 16);

      if (!v30)
      {
        v31 = 1;
        return v31 & 1;
      }
    }

    else
    {
      (*(v13 + 8))(v21, v12);
    }
  }

  sub_22C9093DC();
  sub_22C90774C();
  sub_22C90935C();
  v32 = *(v13 + 8);
  v32(v19, v12);
  sub_22C5E94F0();
  v34 = v33;

  (*(v46 + 8))(v11, v47);
  if ((v34 & 1) == 0)
  {
    v35 = v43;
    sub_22C90774C();
    v36 = v45;
    v37 = v49;
    sub_22C5F52EC(v44, v45);
    if (v37)
    {
      v32(v35, v12);
      return v31 & 1;
    }

    v32(v35, v12);
    v38 = sub_22C90941C();
    v39 = sub_22C370B74(v36, 1, v38);
    sub_22C36DD28(v36, &qword_27D9BC028, &unk_22C9134B0);
    if (v39 == 1)
    {
      v31 = 0;
      return v31 & 1;
    }
  }

  v31 = 1;
  return v31 & 1;
}

uint64_t sub_22C7A58D0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v181 = a5;
  v7 = v6;
  v195 = a4;
  v193 = a3;
  v165 = a6;
  v174 = sub_22C90941C();
  v173 = *(v174 - 8);
  v10 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_22C9063DC();
  v178 = *(v179 - 8);
  v12 = *(v178 + 64);
  v13 = MEMORY[0x28223BE20](v179);
  v175 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v180 = &v161 - v15;
  v16 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v170 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v171 = &v161 - v20;
  v176 = sub_22C90952C();
  v169 = *(v176 - 8);
  v21 = *(v169 + 64);
  v22 = MEMORY[0x28223BE20](v176);
  v162 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v163 = &v161 - v24;
  v188 = sub_22C9093BC();
  v25 = *(v188 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v188);
  v202 = (&v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v168 = &v161 - v30;
  MEMORY[0x28223BE20](v29);
  v164 = (&v161 - v31);
  v203 = sub_22C908C5C();
  v32 = *(v203 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v203);
  v167 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v166 = &v161 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v190 = &v161 - v39;
  MEMORY[0x28223BE20](v38);
  v207 = &v161 - v40;
  v206 = sub_22C901FAC();
  v41 = *(v206 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v206);
  v177 = &v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v205 = &v161 - v45;
  v46 = &qword_27D9BF318;
  v47 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v51 = &v161 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v186 = &v161 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v182 = &v161 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v161 - v56;
  v196 = *a1;
  v212 = MEMORY[0x277D84F98];
  v58 = sub_22C901ECC();
  v183 = v57;
  v185 = v58;
  sub_22C36C640(v57, 1, 1, v58);
  v198 = a2;
  v59 = *(a2 + 2);
  sub_22C5903C0();
  v204 = v60;
  sub_22C3A5908(&qword_27D9C0100, &qword_22C925F08);
  v200 = v59;
  sub_22C909EEC();
  v61 = 0;
  v201 = v41 + 16;
  v194 = v32 + 16;
  v189 = v32 + 32;
  v187 = v25;
  v184 = v25 + 32;
  v191 = v32;
  v192 = (v32 + 8);
  v197 = v41;
  v199 = (v41 + 8);
  while (1)
  {
    if (v200 == v61)
    {
      sub_22C90906C();
      v105 = swift_allocBox();
      v106 = sub_22C9093DC();
      v107 = v171;
      sub_22C58B0F8(v106);

      v108 = v170;
      sub_22C3E8FB4(v107, v170, &qword_27D9BB0C0, &qword_22C90D960);
      v109 = v176;
      if (sub_22C370B74(v108, 1, v176) != 1)
      {
        sub_22C36DD28(v107, &qword_27D9BB0C0, &qword_22C90D960);
        (*(v169 + 32))(v163, v108, v109);
        sub_22C90903C();
        v155 = v164;
        *v164 = v105;
        v156 = v187;
        v157 = v188;
        (*(v187 + 104))(v155, *MEMORY[0x277D729E0], v188);
        (*(v156 + 16))(v168, v155, v157);
        v158 = v183;
        sub_22C3E8FB4(v183, v182, &qword_27D9BF318, &qword_22C9225A0);
        sub_22C906CFC();
        (*(v156 + 8))(v155, v157);
        return sub_22C36DD28(v158, &qword_27D9BF318, &qword_22C9225A0);
      }

      sub_22C36DD28(v108, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C90735C();
      sub_22C3A5F00();
      v78 = swift_allocError();
      v110 = v211;
      v111 = v210;
      *v112 = v209;
      *(v112 + 16) = v111;
      *(v112 + 32) = v110;
      swift_willThrow();
      sub_22C36DD28(v107, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36DD28(v183, &qword_27D9BF318, &qword_22C9225A0);

      result = swift_deallocBox();
      goto LABEL_23;
    }

    v62 = v51;
    v63 = v203;
    v64 = v7;
    v65 = *(v197 + 16);
    v66 = v205;
    v65(v205, v198 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v61, v206);
    v67 = v196;
    if (!*(v196 + 16) || (sub_22C628274(), (v69 & 1) == 0))
    {

      v90 = v180;
      sub_22C903F8C();
      v91 = v177;
      v92 = v206;
      v65(v177, v66, v206);
      v93 = sub_22C9063CC();
      v94 = sub_22C90AADC();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = v91;
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v208 = v97;
        *v96 = 136315138;
        sub_22C7A6F08(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v98 = sub_22C90B47C();
        v100 = v99;
        v101 = v95;
        v102 = *v199;
        (*v199)(v101, v206);
        v103 = sub_22C36F9F4(v98, v100, &v208);
        v92 = v206;

        *(v96 + 4) = v103;
        _os_log_impl(&dword_22C366000, v93, v94, "cannot find array value for %s", v96, 0xCu);
        sub_22C36FF94(v97);
        v104 = v97;
        v66 = v205;
        MEMORY[0x2318B9880](v104, -1, -1);
        MEMORY[0x2318B9880](v96, -1, -1);

        (*(v178 + 8))(v180, v179);
      }

      else
      {

        v102 = *v199;
        (*v199)(v91, v92);
        (*(v178 + 8))(v90, v179);
      }

      v114 = v183;
      type metadata accessor for InterpreterError();
      sub_22C7A6F08(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      v115 = swift_allocError();
      v65(v116, v66, v92);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v117 = v66;
      v78 = v115;
      v102(v117, v92);
      result = sub_22C36DD28(v114, &qword_27D9BF318, &qword_22C9225A0);
      goto LABEL_23;
    }

    v70 = v46;
    v71 = v191;
    v72 = *(v191 + 16);
    v73 = v190;
    v72(v190, *(v67 + 56) + *(v191 + 72) * v68, v63);
    v74 = *(v71 + 32);
    v75 = v207;
    v74(v207, v73, v63);
    v76 = type metadata accessor for ValueResolver();
    v77 = sub_22C7A5464(v75, v195, (v193 + *(v76 + 20)));
    v78 = v64;
    if (v64)
    {
      (*v192)(v207, v63);
      (*v199)(v205, v206);
      sub_22C36DD28(v183, &qword_27D9BF318, &qword_22C9225A0);

LABEL_23:
      v118 = v181;
      goto LABEL_29;
    }

    if ((v77 & 1) == 0)
    {
      break;
    }

    sub_22C90774C();
    v79 = v204;
    v80 = *(v204 + 16);
    if (v80 >= *(v204 + 24) >> 1)
    {
      sub_22C5903C0();
      v79 = v89;
    }

    v46 = v70;
    v51 = v62;
    *(v79 + 16) = v80 + 1;
    v81 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v204 = v79;
    (*(v187 + 32))(v79 + v81 + *(v187 + 72) * v80, v202, v188);
    v82 = v186;
    v83 = v207;
    sub_22C908B8C();
    v84 = v185;
    if (sub_22C370B74(v82, 1, v185) == 1)
    {
      (*v192)(v83, v203);
      (*v199)(v205, v206);
      v85 = v82;
    }

    else
    {
      sub_22C36DD28(v82, v70, &qword_22C9225A0);
      v86 = v183;
      sub_22C3E8FB4(v183, v62, v70, &qword_22C9225A0);
      if (sub_22C370B74(v62, 1, v84) == 1)
      {
        sub_22C36DD28(v62, v70, &qword_22C9225A0);
        v87 = v182;
        sub_22C908B8C();
        (*v192)(v83, v203);
        (*v199)(v205, v206);
        sub_22C36DD28(v86, v70, &qword_22C9225A0);
        v88 = v87;
        v51 = v62;
        sub_22C7A6F50(v88, v86);
        goto LABEL_15;
      }

      (*v192)(v83, v203);
      (*v199)(v205, v206);
      v85 = v62;
    }

    sub_22C36DD28(v85, v70, &qword_22C9225A0);
LABEL_15:
    v7 = v64;
    v61 = (v61 + 1);
  }

  v119 = v175;
  sub_22C903F8C();
  v120 = v166;
  v121 = v207;
  v122 = v63;
  v72(v166, v207, v63);
  v123 = v167;
  v72(v167, v121, v63);
  v124 = v173;
  v125 = v172;
  v126 = v174;
  (*(v173 + 16))(v172, v195, v174);
  v127 = sub_22C9063CC();
  v128 = sub_22C90AADC();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v208 = v202;
    *v129 = 136315650;
    LODWORD(v201) = v128;
    v130 = v168;
    sub_22C90774C();
    v197 = sub_22C90938C();
    v132 = v131;
    v198 = *(v187 + 8);
    v198(v130, v188);
    v200 = v127;
    v133 = *v192;
    v204 = v192 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v133(v120, v122);
    v134 = sub_22C36F9F4(v197, v132, &v208);

    *(v129 + 4) = v134;
    *(v129 + 12) = 2080;
    sub_22C90774C();
    v135 = v123;
    v136 = v162;
    sub_22C90935C();
    v137 = v130;
    v138 = v133;
    v198(v137, v188);
    v139 = sub_22C9094FC();
    v141 = v140;
    (*(v169 + 8))(v136, v176);
    v142 = v135;
    v143 = v203;
    v133(v142, v203);
    v144 = sub_22C36F9F4(v139, v141, &v208);

    *(v129 + 14) = v144;
    *(v129 + 22) = 2080;
    v145 = v172;
    v146 = sub_22C9093EC();
    v148 = v147;
    (*(v173 + 8))(v145, v174);
    v149 = sub_22C36F9F4(v146, v148, &v208);

    *(v129 + 24) = v149;
    v150 = v200;
    _os_log_impl(&dword_22C366000, v200, v201, "value %s has type %s and cannot be stored in Array<%s>", v129, 0x20u);
    v151 = v202;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v151, -1, -1);
    MEMORY[0x2318B9880](v129, -1, -1);

    (*(v178 + 8))(v175, v179);
    v118 = v181;
    v152 = v183;
    v154 = v205;
    v153 = v206;
  }

  else
  {

    (*(v124 + 8))(v125, v126);
    v138 = *v192;
    v204 = v192 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v138(v123, v122);
    v138(v120, v122);
    (*(v178 + 8))(v119, v179);
    v118 = v181;
    v152 = v183;
    v154 = v205;
    v153 = v206;
    v143 = v122;
  }

  type metadata accessor for InterpreterError();
  sub_22C7A6F08(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  v159 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v138(v207, v143);
  v160 = v154;
  v78 = v159;
  (*v199)(v160, v153);
  result = sub_22C36DD28(v152, &qword_27D9BF318, &qword_22C9225A0);
LABEL_29:
  *v118 = v78;
  return result;
}

uint64_t sub_22C7A6D50(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v3 = sub_22C9093BC();
    v4 = sub_22C7A6F08(&qword_28142FA90, MEMORY[0x277D72A78]);
    v7 = MEMORY[0x2318B7DB0](v2, v3, v4);

    v1 = sub_22C79E7B0(v5, &v7);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22C7A6E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C7A6E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C7A6F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C7A6F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7A7008()
{
  v1 = v0[100];
  v2 = *(v0[101] + 96);
  return v0[102];
}

uint64_t sub_22C7A703C()
{
  v2 = *(v0 + 312);

  return sub_22C7A6E8C(v2, type metadata accessor for DateComponentsResolver);
}

void sub_22C7A7064()
{
  v3 = v1[124];
  v4 = v1[123];
  v5 = v1[116];
  v6 = v1[113];
  v7 = v1[112];
  v8 = v1[73];
  *(v2 - 120) = v0;
}

uint64_t sub_22C7A7084(uint64_t a1)
{

  return sub_22C36C640(v1, 1, 1, a1);
}

void sub_22C7A70A4()
{
  v2 = v0[124];
  v3 = v0[123];
  *(v1 - 168) = v0[116];
  *(v1 - 160) = v3;
  v4 = v0[113];
  v5 = v0[112];
}

uint64_t sub_22C7A7120()
{
  v3 = *(v1 + 8);
  *(v2 - 136) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v2 - 128) = v3;
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

void sub_22C7A7154()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
}

void sub_22C7A7164()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
}

uint64_t sub_22C7A7174()
{
  v1 = *(v0 - 128);
  v2 = *(*(v0 - 136) + 8);
  return *(v0 - 120);
}

uint64_t sub_22C7A7184()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 216);
  v4 = *(v0 - 248);

  return sub_22C906E7C();
}

uint64_t sub_22C7A71AC()
{
  v7 = (v2 + *(v0 + 20));
  *v7 = v3;
  v7[1] = v4;
  v8 = *(v5 - 160);

  return sub_22C776074(v1);
}

uint64_t sub_22C7A71F0()
{
  v1 = *(v0 - 200);
  v2 = *(*(v0 - 208) + 16);
  result = *(v0 - 192);
  v4 = *(v0 - 232);
  return result;
}

uint64_t sub_22C7A7208()
{

  return sub_22C90690C();
}

BOOL sub_22C7A7224(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_22C7A724C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  result = a2;
  *a2 = a45;
  a2[1] = a46;
  return result;
}

uint64_t sub_22C7A7260()
{
  v2 = *v1;
  v3 = v1[1];
  return v0;
}

uint64_t sub_22C7A7274()
{
  v1 = *(v0 - 144);
  v2 = *(v0 - 152) + 8;
  result = *(v0 - 136);
  v4 = *(v0 - 120);
  return result;
}

uint64_t sub_22C7A7288()
{
  v2 = v0[132];
  v3 = v0[81];
  v4 = v0[75];
}

uint64_t sub_22C7A72A8()
{

  return sub_22C902B8C();
}

uint64_t sub_22C7A72C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22C90B1BC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t PersonCandidateGenerator.search(personQuery:parameter:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_22C9093BC();
  v2[8] = v3;
  sub_22C3699B8(v3);
  v2[9] = v4;
  v6 = *(v5 + 64);
  v2[10] = sub_22C3699D4();
  v7 = sub_22C90173C();
  v2[11] = v7;
  sub_22C3699B8(v7);
  v2[12] = v8;
  v10 = *(v9 + 64);
  v2[13] = sub_22C3699D4();
  v11 = sub_22C90171C();
  v2[14] = v11;
  sub_22C3699B8(v11);
  v2[15] = v12;
  v14 = *(v13 + 64);
  v2[16] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9C0108, &qword_22C925F18);
  v2[17] = v15;
  sub_22C3699B8(v15);
  v2[18] = v16;
  v18 = *(v17 + 64);
  v2[19] = sub_22C3699D4();
  v19 = sub_22C90155C();
  v2[20] = v19;
  sub_22C3699B8(v19);
  v2[21] = v20;
  v22 = *(v21 + 64);
  v2[22] = sub_22C3699D4();
  v23 = sub_22C9063DC();
  v2[23] = v23;
  sub_22C3699B8(v23);
  v2[24] = v24;
  v26 = *(v25 + 64);
  v2[25] = sub_22C36D0D4();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v27 = sub_22C90158C();
  v2[31] = v27;
  sub_22C3699B8(v27);
  v2[32] = v28;
  v30 = *(v29 + 64);
  v2[33] = sub_22C3699D4();
  v31 = sub_22C90152C();
  v2[34] = v31;
  sub_22C3699B8(v31);
  v2[35] = v32;
  v34 = *(v33 + 64);
  v2[36] = sub_22C36D0D4();
  v2[37] = swift_task_alloc();
  v35 = sub_22C90159C();
  v2[38] = v35;
  sub_22C3699B8(v35);
  v2[39] = v36;
  v38 = *(v37 + 64);
  v2[40] = sub_22C3699D4();
  v39 = sub_22C90167C();
  v2[41] = v39;
  sub_22C3699B8(v39);
  v2[42] = v40;
  v42 = *(v41 + 64);
  v2[43] = sub_22C3699D4();
  v43 = sub_22C90162C();
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  v2[44] = sub_22C3699D4();
  v46 = sub_22C90077C();
  sub_22C369914(v46);
  v48 = *(v47 + 64);
  v2[45] = sub_22C3699D4();
  v49 = sub_22C3A5908(&qword_27D9C0110, &unk_22C925F20);
  sub_22C369914(v49);
  v51 = *(v50 + 64);
  v2[46] = sub_22C3699D4();
  v52 = sub_22C90160C();
  v2[47] = v52;
  sub_22C3699B8(v52);
  v2[48] = v53;
  v55 = *(v54 + 64);
  v2[49] = sub_22C36D0D4();
  v2[50] = swift_task_alloc();
  v56 = sub_22C90969C();
  v2[51] = v56;
  sub_22C3699B8(v56);
  v2[52] = v57;
  v59 = *(v58 + 64);
  v2[53] = sub_22C3699D4();
  v60 = sub_22C90941C();
  v2[54] = v60;
  sub_22C3699B8(v60);
  v2[55] = v61;
  v63 = *(v62 + 64);
  v2[56] = sub_22C3699D4();
  v64 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v64);
  v66 = *(v65 + 64);
  v2[57] = sub_22C36D0D4();
  v2[58] = swift_task_alloc();
  v67 = sub_22C90981C();
  v2[59] = v67;
  sub_22C3699B8(v67);
  v2[60] = v68;
  v70 = *(v69 + 64);
  v2[61] = sub_22C36D0D4();
  v2[62] = swift_task_alloc();
  v71 = sub_22C9016EC();
  v2[63] = v71;
  sub_22C3699B8(v71);
  v2[64] = v72;
  v74 = *(v73 + 64);
  v2[65] = sub_22C36D0D4();
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7A78E4, 0, 0);
}

uint64_t sub_22C7A78E4()
{
  v1 = v0[66];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[7];
  sub_22C9016BC();
  sub_22C7A9D18(v4, v2);
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C36DD28(v0[58], &qword_27D9BC0C0, &unk_22C911FA0);
    goto LABEL_9;
  }

  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[53];
  v8 = v0[54];
  v9 = v0[51];
  v10 = v0[52];
  v11 = (*(v0[60] + 32))(v0[62], v0[58], v0[59]);
  MEMORY[0x2318B6CE0](v11);
  v12 = sub_22C9093FC();
  v62 = *(v6 + 8);
  v62(v5, v8);
  v13 = *MEMORY[0x277D72F88];
  v14 = sub_22C90968C();
  sub_22C36985C(v14);
  v60 = *(v15 + 104);
  v60(v7, v13, v14);
  v58 = *MEMORY[0x277D72E80];
  v56 = *(v10 + 104);
  v56(v7);
  sub_22C5E9738();
  v17 = v16;

  v20 = *(v10 + 8);
  v19 = v10 + 8;
  v18 = v20;
  v21 = (v20)(v7, v9);
  if (v17)
  {
    sub_22C36C3F4();
    sub_22C9016CC();
LABEL_7:
    (*(v19 + 8))(v9, v18);
    (*(v17 + 8))(v12, v7);
    (*(v17 + 32))(v12, v14, v7);
    goto LABEL_9;
  }

  v22 = v0[62];
  v23 = v0[56];
  v17 = v0[53];
  v9 = v0[54];
  v54 = v0[51];
  MEMORY[0x2318B6CE0](v21);
  v12 = sub_22C9093FC();
  v62(v23, v9);
  v60(v17, *MEMORY[0x277D72F90], v14);
  v7 = v54;
  (v56)(v17, v58, v54);
  sub_22C5E9738();
  v14 = v24;

  v18(v17, v54);
  if (v14)
  {
    sub_22C36C3F4();
    sub_22C9016DC();
    goto LABEL_7;
  }

  (*(v0[60] + 8))(v0[62], v0[59]);
LABEL_9:
  v25 = v0[63];
  v57 = v0[50];
  v26 = v0[48];
  v61 = v0[49];
  v63 = v0[47];
  v27 = v0[46];
  v29 = v0[43];
  v28 = v0[44];
  v30 = v0[42];
  v31 = v0[39];
  v32 = v0[40];
  v51 = v0[41];
  v52 = v0[38];
  v55 = v0[37];
  v33 = v0[33];
  v59 = v0[30];
  v53 = v0[6];
  (*(v0[64] + 16))(v27, v0[66], v25);
  sub_22C36C640(v27, 0, 1, v25);
  sub_22C90073C();
  sub_22C90161C();
  (*(v30 + 104))(v29, *MEMORY[0x277D56148], v51);
  (*(v31 + 104))(v32, *MEMORY[0x277D560D0], v52);
  sub_22C9015FC();
  sub_22C7A92DC(v55);
  (*(v26 + 16))(v61, v57, v63);
  sub_22C90156C();
  sub_22C90409C();
  v34 = sub_22C9063CC();
  v35 = sub_22C90AACC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = sub_22C36D240();
    *v36 = 0;
    _os_log_impl(&dword_22C366000, v34, v35, "Running PersonCandidateGenerator", v36, 2u);
    sub_22C3699EC();
  }

  v38 = v0[36];
  v37 = v0[37];
  v39 = v0[34];
  v40 = v0[35];
  v41 = v0[30];
  v42 = v0[23];
  v43 = v0[24];
  v44 = v0[22];

  v45 = *(v43 + 8);
  v0[67] = v45;
  v45(v41, v42);
  (*(v40 + 16))(v38, v37, v39);
  sub_22C90154C();
  v46 = *(MEMORY[0x277D560A0] + 4);
  v47 = swift_task_alloc();
  v0[68] = v47;
  *v47 = v0;
  v47[1] = sub_22C7A7E2C;
  v48 = v0[33];
  v49 = v0[22];

  return MEMORY[0x2821B89B8](v49);
}

uint64_t sub_22C7A7E2C()
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v9 + 552) = v8;
  *(v9 + 560) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_22C7A908C;
  }

  else
  {
    v10 = sub_22C7A7F9C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

void sub_22C7A7F9C()
{
  v257 = v0;
  v1 = v0[69];
  v235 = *(v1 + 16);
  if (!v235)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_37:
    v246 = v5;
    if (!sub_22C7A72C8(v5))
    {
      v59 = v0[29];
      sub_22C90409C();
      v60 = sub_22C9063CC();
      v61 = sub_22C90AADC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = sub_22C36D240();
        *v62 = 0;
        _os_log_impl(&dword_22C366000, v60, v61, "ContactSearcher found no candidates", v62, 2u);
        sub_22C3699EC();
      }

      v218 = v0[67];
      v251 = v0[66];
      v63 = v60;
      v64 = v0[64];
      v236 = v0[50];
      v242 = v0[63];
      v65 = v0[48];
      v226 = v0[37];
      v231 = v0[47];
      v66 = v0[35];
      v222 = v0[34];
      v67 = v0[32];
      v68 = v0[33];
      v69 = v0[31];
      v70 = v0[29];
      v71 = v0[23];
      v72 = v0[24];

      v218(v70, v71);
      v73 = *(v67 + 8);
      v74 = sub_22C3726C4();
      v75(v74);
      (*(v66 + 8))(v226, v222);
      (*(v65 + 8))(v236, v231);
      (*(v64 + 8))(v251, v242);
      goto LABEL_97;
    }

    v40 = v0[28];
    sub_22C90409C();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AAFC();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[67];
    v45 = v0[28];
    v46 = v0[23];
    v47 = v0[24];
    if (v43)
    {
      v250 = v0[67];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v256 = v49;
      *v48 = 136315138;
      v50 = sub_22C7A9D88();

      v52 = MEMORY[0x2318B7AD0](v51, v50);
      v54 = v53;

      v55 = sub_22C36F9F4(v52, v54, &v256);

      *(v48 + 4) = v55;
      sub_22C37B250(&dword_22C366000, v56, v57, "ContactSearcher results: %s");
      sub_22C36FF94(v49);
      sub_22C3699EC();
      sub_22C3699EC();

      v58 = sub_22C378794();
      v250(v58);
    }

    else
    {

      v76 = sub_22C378794();
      v44(v76);
    }

    v77 = v241;
    v78 = v241[59];
    v79 = v241[57];
    sub_22C7A9D18(v241[7], v79);
    if (sub_22C370B74(v79, 1, v78) == 1)
    {
      sub_22C36DD28(v241[57], &qword_27D9BC0C0, &unk_22C911FA0);
LABEL_82:
      v114 = v246;
      goto LABEL_83;
    }

    v80 = v241[56];
    v81 = v241[54];
    v82 = v241[55];
    v84 = v241[52];
    v83 = v241[53];
    v85 = v241[51];
    v86 = (*(v241[60] + 32))(v241[61], v241[57], v241[59]);
    MEMORY[0x2318B6CE0](v86);
    sub_22C9093FC();
    v88 = *(v82 + 8);
    v87 = v82 + 8;
    v252 = v88;
    v88(v80, v81);
    v89 = *MEMORY[0x277D72F88];
    v90 = sub_22C90968C();
    sub_22C36985C(v90);
    v237 = *(v91 + 104);
    v237(v83, v89, v90);
    v227 = *MEMORY[0x277D72E80];
    v223 = *(v84 + 104);
    v223(v83);
    sub_22C5E9738();
    LOBYTE(v89) = v92;

    v93 = *(v84 + 8);
    v94 = v93(v83, v85);
    if (v89)
    {
      sub_22C7AA108(MEMORY[0x277D84F90]);
      for (i = 0; v90 != i; ++i)
      {
        if (v241)
        {
          v96 = MEMORY[0x2318B8460](i, v87);
        }

        else
        {
          if (i >= *(v85 + 16))
          {
            goto LABEL_108;
          }

          v96 = *(v87 + 8 * i + 32);
        }

        v97 = v96;
        if (__OFADD__(i, 1))
        {
          goto LABEL_107;
        }

        v98 = [v96 personHandle];
        if (v98 && (v99 = v98, v100 = [v98 type], v99, v100 == 1))
        {
          sub_22C90AFEC();
          v101 = *(v256 + 16);
          sub_22C90B02C();
          sub_22C90B03C();
          sub_22C90AFFC();
        }

        else
        {
        }
      }

      swift_bridgeObjectRelease_n();
      v114 = v256;
      if (!sub_22C7A72C8(v256))
      {
        v246 = v114;
        v115 = v241[27];
        sub_22C90409C();
        v116 = sub_22C9063CC();
        v117 = sub_22C90AADC();
        v118 = os_log_type_enabled(v116, v117);
        v119 = v241[67];
        v120 = v241[60];
        v121 = v241[61];
        v122 = v241[59];
        v123 = v241[27];
        v124 = v241[23];
        v125 = v241[24];
        if (v118)
        {
          v126 = sub_22C36D240();
          *v126 = 0;
          v127 = "No candidates had valid email addresses.";
LABEL_80:
          _os_log_impl(&dword_22C366000, v116, v117, v127, v126, 2u);
          sub_22C3699EC();
          goto LABEL_81;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v219 = v93;
      v102 = v241[61];
      v103 = v241[56];
      v104 = v241[53];
      v105 = v241[54];
      v215 = v241[51];
      MEMORY[0x2318B6CE0](v94);
      sub_22C9093FC();
      v252(v103, v105);
      v237(v104, *MEMORY[0x277D72F90], v90);
      (v223)(v104, v227, v215);
      sub_22C5E9738();
      LOBYTE(v103) = v106;

      v219(v104, v215);
      if ((v103 & 1) == 0)
      {
        (*(v241[60] + 8))(v241[61], v241[59]);
        v77 = v241;
        goto LABEL_82;
      }

      sub_22C7AA108(MEMORY[0x277D84F90]);
      for (j = 0; v215 != j; ++j)
      {
        if (v241)
        {
          v108 = MEMORY[0x2318B8460](j, v87);
        }

        else
        {
          if (j >= *(v105 + 16))
          {
            goto LABEL_110;
          }

          v108 = *(v87 + 8 * j + 32);
        }

        v109 = v108;
        if (__OFADD__(j, 1))
        {
          goto LABEL_109;
        }

        v110 = [v108 personHandle];
        if (v110 && (v111 = v110, v112 = [v110 type], v111, v112 == 2))
        {
          sub_22C90AFEC();
          v113 = *(v256 + 16);
          sub_22C90B02C();
          sub_22C90B03C();
          sub_22C90AFFC();
        }

        else
        {
        }
      }

      swift_bridgeObjectRelease_n();
      v114 = v256;
      if (!sub_22C7A72C8(v256))
      {
        v246 = v114;
        v128 = v241[26];
        sub_22C90409C();
        v116 = sub_22C9063CC();
        v117 = sub_22C90AADC();
        v129 = os_log_type_enabled(v116, v117);
        v119 = v241[67];
        v120 = v241[60];
        v121 = v241[61];
        v122 = v241[59];
        v123 = v241[26];
        v124 = v241[23];
        v130 = v241[24];
        if (v129)
        {
          v126 = sub_22C36D240();
          *v126 = 0;
          v127 = "No candidates had valid phone numbers.";
          goto LABEL_80;
        }

LABEL_81:

        v119(v123, v124);
        (*(v120 + 8))(v121, v122);
        v77 = v241;
        goto LABEL_82;
      }
    }

    v77 = v241;
    (*(v241[60] + 8))(v241[61], v241[59]);
LABEL_83:
    v131 = v77[25];
    sub_22C90409C();

    v132 = sub_22C9063CC();
    v133 = sub_22C90AAFC();
    v134 = os_log_type_enabled(v132, v133);
    v135 = v77[67];
    v136 = v77;
    v137 = v77[25];
    v138 = v136[23];
    v139 = v136[24];
    if (v134)
    {
      v140 = swift_slowAlloc();
      v253 = v135;
      v256 = swift_slowAlloc();
      v141 = v256;
      *v140 = 136315138;
      v142 = sub_22C7A9D88();
      v143 = MEMORY[0x2318B7AD0](v114, v142);
      v145 = v144;

      v146 = sub_22C36F9F4(v143, v145, &v256);

      *(v140 + 4) = v146;
      sub_22C37B250(&dword_22C366000, v147, v148, "ContactSearcher results post-filtering: %s");
      sub_22C36FF94(v141);
      sub_22C3699EC();
      sub_22C3699EC();

      v149 = sub_22C378794();
      v253(v149);
    }

    else
    {

      v150 = sub_22C378794();
      v135(v150);
    }

    v151 = sub_22C7A72C8(v114);
    v152 = v241;
    v247 = v114;
    if (v151)
    {
      v153 = v151;
      v256 = MEMORY[0x277D84F90];
      v154 = v151 & ~(v151 >> 63);

      sub_22C3B74E0(0, v154, 0);
      if (v153 < 0)
      {
        goto LABEL_111;
      }

      v155 = 0;
      v156 = v241[9];
      v157 = v256;
      v238 = v114 & 0xC000000000000001;
      v232 = *MEMORY[0x277D729B0];
      v228 = *MEMORY[0x277D72A58];
      do
      {
        if (v238)
        {
          MEMORY[0x2318B8460](v155, v247);
        }

        else
        {
          v158 = *(v247 + 8 * v155 + 32);
        }

        v159 = v152[10];
        v160 = v152[8];
        v161 = sub_22C90931C();
        v162 = swift_allocBox();
        v163 = v152;
        v165 = v164;
        sub_22C9092BC();
        (*(*(v161 - 8) + 104))(v165, v232, v161);
        *v159 = v162;
        (*(v156 + 104))(v159, v228, v160);
        v256 = v157;
        v167 = *(v157 + 16);
        v166 = *(v157 + 24);
        if (v167 >= v166 >> 1)
        {
          sub_22C3B74E0(v166 > 1, v167 + 1, 1);
          v157 = v256;
        }

        v168 = v163[10];
        v169 = v163[8];
        ++v155;
        *(v157 + 16) = v167 + 1;
        (*(v156 + 32))(v157 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v167, v168, v169);
        v152 = v163;
      }

      while (v153 != v155);
      v254 = v163[66];
      v170 = v163[64];
      v239 = v163[50];
      v243 = v163[63];
      v171 = v163[48];
      v229 = v163[37];
      v233 = v163[47];
      v173 = v163[34];
      v172 = v152[35];
      v0 = v152;
      v176 = v152 + 32;
      v174 = v152[32];
      v175 = v176[1];
      v177 = v0[31];

      v178 = *(v174 + 8);
      v179 = sub_22C3726C4();
      v180(v179);
      (*(v172 + 8))(v229, v173);
      (*(v171 + 8))(v239, v233);
      (*(v170 + 8))(v254, v243);

      goto LABEL_98;
    }

    v181 = v241[66];
    v183 = v241[63];
    v182 = v241[64];
    v184 = v241[50];
    v0 = v241;
    v185 = v241[47];
    v186 = v241[48];
    v187 = v241[37];
    v188 = v241[34];
    v189 = v241[35];
    (*(v241[32] + 8))(v241[33], v241[31]);
    (*(v189 + 8))(v187, v188);
    (*(v186 + 8))(v184, v185);
    (*(v182 + 8))(v181, v183);
LABEL_97:

    v157 = MEMORY[0x277D84F90];
LABEL_98:
    v190 = v0[66];
    v191 = v0[65];
    v193 = v0[61];
    v192 = v0[62];
    v195 = v0[57];
    v194 = v0[58];
    v196 = v0[56];
    v197 = v0[53];
    v198 = v0[50];
    v200 = v0[49];
    v201 = v0[46];
    v202 = v0[45];
    v203 = v0[44];
    v204 = v0[43];
    v205 = v0[40];
    v207 = v0[37];
    v208 = v0[36];
    v209 = v0[33];
    v211 = v0[30];
    v213 = v0[29];
    v216 = v0[28];
    v220 = v0[27];
    v224 = v0[26];
    v230 = v0[25];
    v234 = v0[22];
    v240 = v0[19];
    v244 = v0[16];
    v248 = v0[13];
    v255 = v0[10];

    v199 = v0[1];

    v199(v157);
    return;
  }

  v2 = 0;
  v3 = v0 + 2;
  v4 = v0[18];
  v225 = *(v4 + 16);
  v221 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v214 = (v0[12] + 8);
  v217 = *(v4 + 72);
  v210 = (v4 + 8);
  v212 = (v0[15] + 8);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = v5;
    v7 = v241[19];
    v8 = v241[17];
    v10 = v241[13];
    v9 = v241[14];
    v11 = v241[11];
    v225(v7, v221 + v2 * v217, v8);
    sub_22C9016FC();
    sub_22C90172C();
    (*v214)(v10, v11);
    v12 = sub_22C90170C();
    v13 = *v212;
    v14 = sub_22C3726C4();
    v15(v14);
    (*v210)(v7, v8);
    v16 = v12 >> 62 ? sub_22C90B1BC() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v6;
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
    v18 = v6 >> 62;
    v19 = v18 ? sub_22C90B1BC() : *(v17 + 16);
    v20 = v19 + v16;
    if (__OFADD__(v19, v16))
    {
      break;
    }

    v249 = v2;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v18)
      {
        goto LABEL_15;
      }

      v21 = v5 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v22 >= v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v18)
      {
LABEL_15:
        sub_22C90B1BC();
        goto LABEL_16;
      }

      v21 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = *(v21 + 16);
LABEL_16:
    v5 = sub_22C90AF9C();
    v21 = v5 & 0xFFFFFFFFFFFFFF8;
    v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
    v24 = *(v21 + 16);
    v25 = v22 - v24;
    v26 = v21 + 8 * v24;
    if (v12 >> 62)
    {
      v28 = sub_22C90B1BC();
      if (v28)
      {
        v29 = v28;
        v30 = sub_22C90B1BC();
        if (v25 < v30)
        {
          goto LABEL_104;
        }

        if (v29 < 1)
        {
          goto LABEL_106;
        }

        v206 = v30;
        v245 = v5;
        v31 = v26 + 32;
        sub_22C7A9DCC();
        for (k = 0; k != v29; ++k)
        {
          sub_22C3A5908(&qword_27D9C0120, &qword_22C925F30);
          v33 = sub_22C7A9C84(v3, k, v12);
          v35 = *v34;
          (v33)(v3, 0);
          *(v31 + 8 * k) = v35;
        }

        v5 = v245;
        v27 = v206;
        goto LABEL_27;
      }
    }

    else
    {
      v27 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        if (v25 < v27)
        {
          goto LABEL_105;
        }

        sub_22C7A9D88();
        swift_arrayInitWithCopy();
LABEL_27:

        if (v27 < v16)
        {
          goto LABEL_102;
        }

        if (v27 > 0)
        {
          v36 = *(v21 + 16);
          v37 = __OFADD__(v36, v27);
          v38 = v36 + v27;
          if (v37)
          {
            goto LABEL_103;
          }

          *(v21 + 16) = v38;
        }

        goto LABEL_32;
      }
    }

    if (v16 > 0)
    {
      goto LABEL_102;
    }

LABEL_32:
    v2 = v249 + 1;
    if (v249 + 1 == v235)
    {
      v0 = v241;
      v39 = v241[69];

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
}

uint64_t sub_22C7A908C()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v17 = v0[65];
  v18 = v0[62];
  v19 = v0[61];
  v20 = v0[58];
  v21 = v0[57];
  v22 = v0[56];
  v4 = v0[50];
  v23 = v0[53];
  v24 = v0[49];
  v6 = v0[47];
  v5 = v0[48];
  v27 = v0[45];
  v28 = v0[44];
  v29 = v0[43];
  v7 = v0[37];
  v30 = v0[40];
  v31 = v0[36];
  v8 = v0[34];
  v9 = v0[35];
  v25 = v0[46];
  v26 = v0[33];
  v10 = v0[31];
  v32 = v0[30];
  v33 = v0[29];
  v34 = v0[28];
  v35 = v0[27];
  v36 = v0[26];
  v37 = v0[25];
  v38 = v0[22];
  v39 = v0[19];
  v40 = v0[16];
  v41 = v0[13];
  v42 = v0[10];
  (*(v0[32] + 8))();
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v11 = *(v2 + 8);
  v12 = sub_22C3726C4();
  v13(v12);

  v14 = v0[1];
  v15 = v0[70];

  return v14();
}

uint64_t sub_22C7A92DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BF968, &qword_22C925FA0);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v64 - v8;
  v10 = sub_22C90153C();
  v11 = sub_22C369824(v10);
  v68 = v12;
  v69 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v65 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v64 = &v64 - v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  v21 = sub_22C3A5908(&qword_27D9C0130, &qword_22C925FA8);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  v66 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v29 = sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360);
  v30 = sub_22C369914(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  v67 = v33;
  sub_22C369930();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v64 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v64 - v38;
  v40 = sub_22C90663C();
  v41 = sub_22C369824(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v47 = &v64 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  sub_22C90151C();
  v70 = v2;
  sub_22C90664C();
  if (sub_22C370B74(v39, 1, v40) == 1)
  {
    sub_22C36DD28(v39, &qword_27D9BF7A8, &unk_22C923360);
  }

  else
  {
    (*(v43 + 32))(v47, v39, v40);
    sub_22C90662C();
    v48 = sub_22C90660C();
    if (sub_22C370B74(v9, 1, v48) == 1)
    {
      sub_22C36DD28(v9, &qword_27D9BF968, &qword_22C925FA0);
      (*(v68 + 104))(v20, *MEMORY[0x277D56018], v69);
    }

    else
    {
      v49 = v64;
      sub_22C7A9A30(v64);
      (*(*(v48 - 8) + 8))(v9, v48);
      (*(v68 + 32))(v20, v49, v69);
    }

    sub_22C9015DC();
    v50 = sub_22C9015EC();
    sub_22C36C640(v28, 0, 1, v50);
    sub_22C9014FC();
    (*(v43 + 8))(v47, v40);
  }

  sub_22C9065EC();
  if (v51)
  {
    sub_22C90664C();
    v52 = sub_22C370B74(v37, 1, v40);
    sub_22C36DD28(v37, &qword_27D9BF7A8, &unk_22C923360);
    if (v52 == 1)
    {
      v53 = sub_22C90A0EC();
      v54 = [v53 _appearsToBeEmail];

      if (v54)
      {
        v55 = MEMORY[0x277D56008];
LABEL_14:
        (*(v68 + 104))(v65, *v55, v69);
        v60 = v66;
        sub_22C9015DC();
        v61 = sub_22C9015EC();
        sub_22C36C640(v60, 0, 1, v61);
        sub_22C9014FC();
        goto LABEL_16;
      }
    }

    v56 = v67;
    sub_22C90664C();
    v57 = sub_22C370B74(v56, 1, v40);
    sub_22C36DD28(v56, &qword_27D9BF7A8, &unk_22C923360);
    if (v57 == 1)
    {
      v58 = sub_22C90A0EC();
      v59 = [v58 _appearsToBePhoneNumber];

      if (v59)
      {
        v55 = MEMORY[0x277D56010];
        goto LABEL_14;
      }
    }

    sub_22C90150C();
  }

LABEL_16:
  sub_22C9065AC();
  if (v62)
  {
    sub_22C9014DC();
  }

  sub_22C9065BC();
  return sub_22C9014EC();
}

uint64_t sub_22C7A989C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C7A9938;

  return PersonCandidateGenerator.search(personQuery:parameter:)(a1, a2);
}

uint64_t sub_22C7A9938(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_22C7A9A30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C90660C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v2, v4);
  v12 = (*(v7 + 88))(v11, v4);
  if (v12 == *MEMORY[0x277D1DB68])
  {
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x277D1DB60])
  {
    v13 = MEMORY[0x277D56008];
LABEL_6:
    v14 = *v13;
    v15 = sub_22C90153C();
    sub_22C36985C(v15);
    return (*(v16 + 104))(a1, v14);
  }

  if (v12 == *MEMORY[0x277D1DB70])
  {
LABEL_5:
    v13 = MEMORY[0x277D56010];
    goto LABEL_6;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t (*sub_22C7A9BA4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_22C387584(a1, a2, a3);
  sub_22C633A2C(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = MEMORY[0x2318B8460](v5, v4);
  }

  *v3 = v10;
  return sub_22C7AA100;
}

uint64_t (*sub_22C7A9C10(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v7 = sub_22C387584(a1, a2, a3);
  sub_22C633A2C(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = MEMORY[0x2318B8460](v5, v4);
  }

  *v3 = v11;
  return sub_22C7A9C7C;
}

void (*sub_22C7A9C84(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_22C387754(a3);
  sub_22C633A2C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318B8460](a2, a3);
  }

  *a1 = v7;
  return sub_22C7A9D10;
}

uint64_t sub_22C7A9D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C7A9D88()
{
  result = qword_27D9C0118;
  if (!qword_27D9C0118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0118);
  }

  return result;
}

unint64_t sub_22C7A9DCC()
{
  result = qword_27D9C0128;
  if (!qword_27D9C0128)
  {
    sub_22C3AC1A0(&qword_27D9C0120, &qword_22C925F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0128);
  }

  return result;
}

uint64_t dispatch thunk of PersonCandidateGenerating.search(personQuery:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22C7A9F60;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22C7A9F60(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

_BYTE *storeEnumTagSinglePayload for PersonCandidateGenerator(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C7AA108@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
  sub_22C7A72C8(*(v1 - 96));
}

uint64_t PlanResolverService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C9089DC();
  v1[15] = v4;
  sub_22C3699B8(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[18] = v8;
  sub_22C3699B8(v8);
  v1[19] = v9;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v12 = *(*(type metadata accessor for StepResolution() - 8) + 64);
  v1[22] = sub_22C3699D4();
  v13 = *(*(sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90) - 8) + 64);
  v1[23] = sub_22C3699D4();
  v14 = sub_22C90069C();
  v1[24] = v14;
  sub_22C3699B8(v14);
  v1[25] = v15;
  v17 = *(v16 + 64);
  v1[26] = sub_22C3699D4();
  v18 = *(*(type metadata accessor for Interpreter(0) - 8) + 64);
  v1[27] = sub_22C3699D4();
  v19 = sub_22C90634C();
  v1[28] = v19;
  sub_22C3699B8(v19);
  v1[29] = v20;
  v22 = *(v21 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v23 = sub_22C90636C();
  v1[32] = v23;
  sub_22C3699B8(v23);
  v1[33] = v24;
  v26 = *(v25 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7AA3DC, 0, 0);
}

uint64_t sub_22C7AA3DC()
{
  v63 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v57 = *(v4 + 8);
  v57(v2, v3);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = v0[31];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "PlanResolverService.run", "", v9, 2u);
    sub_22C3699EC();
  }

  v11 = v0[35];
  v13 = v0[31];
  v12 = v0[32];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[28];
  v58 = v0[27];
  v17 = v0[14];

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[36] = sub_22C90639C();
  (*(v15 + 8))(v13, v16);
  v57(v11, v12);
  v0[5] = &type metadata for PlanResolutionBiomeTelemetryStream;
  v0[6] = &off_283FC01A8;
  v21 = v17[4];
  v22 = v17[5];
  v23 = sub_22C374168(v17 + 1, v21);
  v24 = v17[9];
  v25 = v17[10];
  sub_22C374168(v17 + 6, v24);
  v26 = *v17;
  v27 = *(v21 - 8);
  v28 = *(v27 + 64);
  v29 = sub_22C3699D4();
  (*(v27 + 16))(v29, v23, v21);
  v30 = *(v24 - 8);
  v31 = *(v30 + 64);
  sub_22C3699D4();
  (*(v30 + 16))();
  sub_22C3B5C4C((v0 + 2), (v0 + 7));

  sub_22C3B2528(v59);
  v61 = &type metadata for PersonCandidateGenerator;
  v62 = &protocol witness table for PersonCandidateGenerator;
  sub_22C649FEC(v26, v29, sub_22C3B5AC0, 0, (v0 + 7), v59, &v60, v58, v21, v24, v22, v25);
  v32 = v0[23];
  v33 = v0[24];
  v34 = v0[13];

  v35 = type metadata accessor for PlannerServiceContext();
  sub_22C3E8FB4(v34 + *(v35 + 20), v32, &qword_27D9BB190, qword_22C90DD90);
  if (sub_22C370B74(v32, 1, v33) == 1)
  {
    v36 = v0[20];
    sub_22C36DD28(v0[23], &qword_27D9BB190, qword_22C90DD90);
    sub_22C903FEC();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AADC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22C366000, v37, v38, "Plan Resolution has been called, but we don't have a plan cycle id. Throwing", v39, 2u);
      sub_22C3699EC();
    }

    v40 = v0[27];
    v42 = v0[19];
    v41 = v0[20];
    v43 = v0[18];

    (*(v42 + 8))(v41, v43);
    sub_22C7AB8F8();
    swift_allocError();
    swift_willThrow();
    sub_22C36B728();
    sub_22C7AB96C(v40, v44);
    sub_22C3B5CA8((v0 + 2));
    v46 = v0[35];
    v45 = v0[36];
    sub_22C371D64();
    v47 = v0[22];
    v48 = v0[23];
    sub_22C388A20();
    sub_22C7AB0D8();

    v49 = v0[1];

    return v49();
  }

  else
  {
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    v51 = swift_task_alloc();
    v0[37] = v51;
    *v51 = v0;
    v51[1] = sub_22C7AA9A0;
    v52 = v0[26];
    v53 = v0[27];
    v54 = v0[22];
    v55 = v0[12];
    v56 = v0[13];

    return Interpreter.resolve(sessionState:contextId:planCycleId:)();
  }
}

uint64_t sub_22C7AA9A0()
{
  sub_22C369980();
  v2 = *(*v1 + 296);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 304) = v0;

  if (v0)
  {
    v6 = sub_22C7AAFA8;
  }

  else
  {
    v6 = sub_22C7AAAA8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C7AAAA8()
{
  v74 = v0;
  v1 = v0;
  v3 = v0[21];
  v2 = v0[22];
  v4 = StepResolution.toEventPayloads(omittingResponseEvents:)(0);
  sub_22C903F8C();

  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v72 = v63;
    buf = v7;
    *v7 = 136315138;
    v8 = *(v4 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v59 = v6;
      v60 = v5;
      v10 = v0[16];
      v73 = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v9 = v73;
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = v4 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v67 = *(v10 + 56);
      v69 = v11;
      v13 = (v10 - 8);
      do
      {
        v14 = v1[17];
        v15 = v1;
        v16 = v1[15];
        v69(v14, v12, v16);
        v17 = sub_22C9089BC();
        v19 = v18;
        (*v13)(v14, v16);
        v73 = v9;
        v20 = *(v9 + 16);
        if (v20 >= *(v9 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v9 = v73;
        }

        *(v9 + 16) = v20 + 1;
        v21 = v9 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v19;
        v12 += v67;
        --v8;
        v1 = v15;
      }

      while (v8);
      v5 = v60;
      v6 = v59;
    }

    v25 = v1[21];
    v27 = v1[18];
    v26 = v1[19];
    v28 = MEMORY[0x2318B7AD0](v9, MEMORY[0x277D837D0]);
    v30 = v29;

    v31 = sub_22C36F9F4(v28, v30, &v72);

    *(buf + 4) = v31;
    _os_log_impl(&dword_22C366000, v5, v6, "resolved to %s", buf, 0xCu);
    sub_22C36FF94(v63);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v22 = v0[21];
    v24 = v0[18];
    v23 = v0[19];

    (*(v23 + 8))(v22, v24);
  }

  v32 = v1[38];
  v33 = v1[12];
  *(swift_task_alloc() + 16) = v33;
  sub_22C3B25C8();
  if (v32)
  {
    v36 = v1[26];
    v35 = v1[27];
    v38 = v1[24];
    v37 = v1[25];
    v39 = v1[22];

    sub_22C36A37C();
    (*(v37 + 8))(v36, v38);
    sub_22C36B728();
    sub_22C7AB96C(v35, v40);
    sub_22C3B5CA8((v1 + 2));
    v41 = v1;
    v44 = v1 + 35;
    v42 = v1[35];
    v43 = v44[1];
    sub_22C371D64();
    v45 = v41[22];
    v46 = v41[23];
    sub_22C388A20();
    sub_22C7AB0D8();

    v47 = v41[1];

    return v47();
  }

  else
  {
    v49 = v34;
    v51 = v1[35];
    v50 = v1[36];
    v61 = v1[34];
    v62 = v1[31];
    v52 = v1[26];
    v53 = v1[27];
    v55 = v1[24];
    v54 = v1[25];
    v56 = v1[22];
    v64 = v1[30];
    bufa = v1[23];
    v68 = v1[21];
    v70 = v1[20];
    v71 = v1[17];

    sub_22C36A37C();
    (*(v54 + 8))(v52, v55);
    sub_22C36B728();
    sub_22C7AB96C(v53, v57);
    sub_22C3B5CA8((v1 + 2));
    sub_22C7AB0D8();

    v58 = v1[1];

    return v58(v49);
  }
}

uint64_t sub_22C7AAFA8()
{
  v1 = v0[27];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_22C36B728();
  sub_22C7AB96C(v1, v2);
  sub_22C3B5CA8((v0 + 2));
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  sub_22C371D64();
  v6 = v0[22];
  v7 = v0[23];
  v10 = v0[21];
  v11 = v0[20];
  v12 = v0[17];
  sub_22C7AB0D8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22C7AB0D8()
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
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "PlanResolverService.run", v31, v19, 0xCu);
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

uint64_t sub_22C7AB47C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v26[1] = a1;
  v26[0] = a3;
  v3 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = sub_22C90880C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C908A0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v20 = sub_22C9087DC();
  (*(v11 + 8))(v14, v10);
  sub_22C3A5950(v20);

  sub_22C3E8FB4(v9, v7, &qword_27D9BA808, &qword_22C90C6E0);
  if (sub_22C370B74(v7, 1, v15) == 1)
  {
    sub_22C36DD28(v7, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    v21 = swift_allocError();
    v22 = v29;
    v23 = v28;
    *v24 = v27;
    *(v24 + 16) = v23;
    *(v24 + 32) = v22;
    swift_willThrow();
    result = sub_22C36DD28(v9, &qword_27D9BA808, &qword_22C90C6E0);
    *v30 = v21;
  }

  else
  {
    sub_22C36DD28(v9, &qword_27D9BA808, &qword_22C90C6E0);
    (*(v16 + 32))(v19, v7, v15);
    sub_22C90893C();
    return (*(v16 + 8))(v19, v15);
  }

  return result;
}

uint64_t sub_22C7AB7C0(uint64_t a1)
{
  v2 = sub_22C7ABBD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C7AB7FC(uint64_t a1)
{
  v2 = sub_22C7ABBD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C7AB854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0B10;

  return PlanResolverService.handle(_:plannerServiceContext:)();
}

unint64_t sub_22C7AB8F8()
{
  result = qword_27D9C0138;
  if (!qword_27D9C0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0138);
  }

  return result;
}

uint64_t sub_22C7AB96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C7AB9C4(uint64_t a1)
{
  result = sub_22C7AB9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C7AB9EC()
{
  result = qword_281433E28[0];
  if (!qword_281433E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281433E28);
  }

  return result;
}

uint64_t sub_22C7ABA40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C7ABA80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22C7ABAD4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C7ABB84()
{
  result = qword_27D9C0140;
  if (!qword_27D9C0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0140);
  }

  return result;
}

unint64_t sub_22C7ABBD8()
{
  result = qword_27D9C0148;
  if (!qword_27D9C0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0148);
  }

  return result;
}

uint64_t sub_22C7ABC38()
{
  v0 = sub_22C9063DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C9061EC();
  sub_22C7ADB8C();
  return sub_22C90620C();
}

uint64_t sub_22C7ABE3C()
{
  v0 = sub_22C9063DC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  type metadata accessor for PlanResolutionBiomeTelemetryStream.CancellationStatus();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = sub_22C90416C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_22C90417C();
  if ((*(v9 + 16) & 1) == 0)
  {
    if (qword_27D9BA720 != -1)
    {
      swift_once();
    }

    if (qword_27D9C0168)
    {
      sub_22C378A4C(&xmmword_27D9C0150, &v17);
    }

    else
    {
      v17 = xmmword_27D9C0150;
      v18 = unk_27D9C0160;
      v19 = qword_27D9C0170;
    }

    if (*(&v18 + 1))
    {
      sub_22C374168(&v17, *(&v18 + 1));
      sub_22C9062BC();
    }

    else
    {

      if (!*(&v18 + 1))
      {
      }
    }

    sub_22C36FF94(&v17);
  }

  sub_22C9040DC();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AABC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22C366000, v13, v14, "Skipping sending a plan resolution event to Biome, a termination signal was received", v15, 2u);
    MEMORY[0x2318B9880](v15, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_22C7AC0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F8C();
  v9 = sub_22C9063CC();
  v10 = sub_22C90AAFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22C366000, v9, v10, "PlanResolutionBiomeTelemetryStream received SIGTERM.", v11, 2u);
    MEMORY[0x2318B9880](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  *(a1 + 16) = 1;
  v12 = *MEMORY[0x277D41D58];
  v13 = sub_22C90415C();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

void sub_22C7AC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_22C90592C();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v30);
  v32 = *(v31 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_22C90A73C();
  sub_22C90A75C();
  sub_22C36BECC();
  sub_22C36C640(v36, v37, v38, v39);
  (*(v27 + 16))(&a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v24);
  v40 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  (*(v27 + 32))(v41 + v40, &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_22C8FAAA0(0, 0, v35, &unk_22C926298, v41);

  sub_22C36DD28(v35, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C36CC48();
}

uint64_t sub_22C7AC438()
{
  v1 = *(v0 + 16);
  sub_22C7ABE3C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for PlanResolverTelemetryRequestContext()
{
  result = qword_27D9C0180;
  if (!qword_27D9C0180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C7AC540()
{
  v0 = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    sub_22C7AC60C();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_22C7AC664();
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_22C7AC60C()
{
  if (!qword_27D9C0190)
  {
    sub_22C90069C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0190);
    }
  }
}

void sub_22C7AC664()
{
  if (!qword_27D9C0198)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0198);
    }
  }
}

void sub_22C7AC6D4()
{
  sub_22C36BA7C();
  v3 = sub_22C90587C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C371BB4();
  v9 = sub_22C9058CC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C36EC5C();
  v15 = type metadata accessor for PlanResolverTelemetryRequestContext();
  v16 = (v0 + v15[7]);
  v17 = (v0 + v15[8]);
  v18 = v15[6];
  v22 = v15[5];
  v23 = *v16;
  v24 = *(v16 + 4);
  v25 = *v17;
  v26 = *(v17 + 4);
  v27 = *(v0 + v15[9]);
  v28 = v0 + v15[10];
  sub_22C9062CC();
  (*(v12 + 16))(v1, v2, v9);
  sub_22C36BECC();
  sub_22C36C640(v19, v20, v21, v9);
  (*(v6 + 104))(v1, *MEMORY[0x277D1FFD0], v3);
  sub_22C7ACFB0(v1, v0 + v18, v0 + v22);
  (*(v6 + 8))(v1, v3);
  (*(v12 + 8))(v2, v9);
  sub_22C36CC48();
}

void sub_22C7AC8E8()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90587C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C90584C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C9062CC();
  (*(v16 + 16))(v12, v21, v13);
  sub_22C36BECC();
  sub_22C36C640(v22, v23, v24, v13);
  (*(v7 + 104))(v12, *MEMORY[0x277D1FFD8], v4);
  sub_22C7ACFB0(v12, v3, v1);
  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);
  sub_22C36CC48();
}

void sub_22C7ACAC0()
{
  sub_22C36BA7C();
  v3 = v2;
  v50 = v4;
  v51 = v5;
  v52 = sub_22C90587C();
  v6 = sub_22C369824(v52);
  v49 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36EC5C();
  v10 = sub_22C90586C();
  v11 = sub_22C369824(v10);
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C3A5908(&qword_27D9C01A0, &qword_22C926278);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = type metadata accessor for InterpreterError();
  v25 = sub_22C36985C(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C371BB4();
  v28 = sub_22C90581C();
  v29 = sub_22C369824(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v36 = (v35 - v34);
  v53 = v3;
  v37 = v3;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if (swift_dynamicCast())
  {
    sub_22C36BECC();
    sub_22C36C640(v38, v39, v40, v24);
    sub_22C7AD9FC(v23, v0);
    sub_22C7AD164(v0, v36);
    v41 = sub_22C5F889C(v0);
  }

  else
  {
    sub_22C36C640(v23, 1, 1, v24);
    sub_22C36DD28(v23, &qword_27D9C01A0, &qword_22C926278);
    *v36 = 0;
    v41 = (*(v31 + 104))(v36, *MEMORY[0x277D1FFA8], v28);
  }

  MEMORY[0x28223BE20](v41);
  *(&v48 - 2) = v36;
  sub_22C9062CC();
  v42 = v48;
  (*(v48 + 16))(v1, v17, v10);
  sub_22C36BECC();
  sub_22C36C640(v43, v44, v45, v10);
  v46 = v49;
  v47 = v52;
  (*(v49 + 104))(v1, *MEMORY[0x277D1FFE0], v52);
  sub_22C7ACFB0(v1, v50, v51);
  (*(v46 + 8))(v1, v47);
  (*(v42 + 8))(v17, v10);
  (*(v31 + 8))(v36, v28);
  sub_22C36CC48();
}

uint64_t sub_22C7ACE7C()
{
  v0 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C9058BC();
  sub_22C9058AC();
  sub_22C90589C();
  v4 = sub_22C90625C();
  sub_22C9062CC();
  sub_22C36BECC();
  sub_22C36C640(v5, v6, v7, v4);
  return sub_22C90588C();
}

uint64_t sub_22C7AD164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InterpreterError();
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C70D42C(a1, v9 - v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = MEMORY[0x277D1FF58];
      goto LABEL_12;
    case 1u:
      sub_22C5F889C(v10);
      v12 = MEMORY[0x277D1FF30];
      goto LABEL_22;
    case 2u:
      sub_22C5F889C(v10);
      v12 = MEMORY[0x277D1FF98];
      goto LABEL_22;
    case 3u:
      sub_22C5F889C(v10);
      v12 = MEMORY[0x277D1FF50];
      goto LABEL_22;
    case 4u:
      v11 = MEMORY[0x277D1FF28];
      goto LABEL_12;
    case 5u:
      sub_22C5F889C(v10);
      v12 = MEMORY[0x277D1FF20];
      goto LABEL_22;
    case 6u:
      v17 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      v18 = *MEMORY[0x277D1FF78];
      v19 = sub_22C90581C();
      sub_22C36985C(v19);
      (*(v20 + 104))(a2, v18);
      v21 = sub_22C9093BC();
      sub_22C36985C(v21);
      (*(v22 + 8))(v10 + v17);
      v23 = sub_22C90941C();
      sub_22C36985C(v23);
      return (*(v24 + 8))(v10);
    case 0xDu:
      v12 = MEMORY[0x277D1FFA0];
      goto LABEL_22;
    case 0xEu:
      v12 = MEMORY[0x277D1FF48];
      goto LABEL_22;
    case 0xFu:
      v12 = MEMORY[0x277D1FF68];
      goto LABEL_22;
    case 0x10u:
      v12 = MEMORY[0x277D1FF38];
      goto LABEL_22;
    case 0x11u:
      v12 = MEMORY[0x277D1FF18];
      goto LABEL_22;
    case 0x12u:
      v12 = MEMORY[0x277D1FF80];
      goto LABEL_22;
    case 0x13u:
      v12 = MEMORY[0x277D1FF60];
      goto LABEL_22;
    case 0x14u:
      v12 = MEMORY[0x277D1FF40];
      goto LABEL_22;
    case 0x15u:
      v12 = MEMORY[0x277D1FF88];
      goto LABEL_22;
    case 0x16u:
      v12 = MEMORY[0x277D1FF90];
      goto LABEL_22;
    case 0x17u:
      v12 = MEMORY[0x277D1FF70];
LABEL_22:
      v25 = *v12;
      v26 = sub_22C90581C();
      sub_22C36985C(v26);
      result = (*(v27 + 104))(a2, v25);
      break;
    default:
      *a2 = 0;
      v11 = MEMORY[0x277D1FFA8];
LABEL_12:
      v13 = *v11;
      v14 = sub_22C90581C();
      sub_22C36985C(v14);
      (*(v15 + 104))(a2, v13);
      result = sub_22C5F889C(v10);
      break;
  }

  return result;
}

uint64_t sub_22C7AD440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9C01B8, &unk_22C9262A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_22C3A5908(&qword_27D9C01C0, &qword_22C9262B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_22C90591C();
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  sub_22C36C640(v16, 0, 1, v17);
  sub_22C90582C();
  sub_22C90621C();
  v18 = sub_22C90622C();
  sub_22C36C640(v12, 0, 1, v18);
  sub_22C9058DC();
  v19 = sub_22C90587C();
  (*(*(v19 - 8) + 16))(v8, a3, v19);
  sub_22C36C640(v8, 0, 1, v19);
  return sub_22C90585C();
}

uint64_t sub_22C7AD654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13[-v7];
  v9 = sub_22C90625C();
  v14 = a2;
  sub_22C9062CC();
  sub_22C36C640(v8, 0, 1, v9);
  sub_22C9058EC();
  sub_22C9073EC();
  v10 = v16;
  v11 = sub_22C59EAEC(&v15);
  if ((v10 & 1) == 0)
  {
    v11 = sub_22C90590C();
  }

  MEMORY[0x28223BE20](v11);
  *&v13[-16] = a3;
  sub_22C9062CC();
  sub_22C36C640(v8, 0, 1, v9);
  return sub_22C9058FC();
}

uint64_t sub_22C7AD804(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C59F604(a2, &v7 - v5);
  return sub_22C90623C();
}

uint64_t sub_22C7AD8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v10 = sub_22C3A5908(a3, a4);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22C36EC5C();
  v15 = a5(v14);
  sub_22C36985C(v15);
  (*(v16 + 16))(v6, a2, v15);
  sub_22C36BECC();
  sub_22C36C640(v17, v18, v19, v15);
  return a6(v6);
}

uint64_t sub_22C7AD9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterpreterError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7ADA98(uint64_t a1)
{
  v4 = sub_22C90592C();
  sub_22C369914(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22C3B00E8;

  return sub_22C7AC418(a1, v7, v8, v1 + v6);
}

unint64_t sub_22C7ADB8C()
{
  result = qword_27D9C01B0;
  if (!qword_27D9C01B0)
  {
    sub_22C9061EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C01B0);
  }

  return result;
}

uint64_t sub_22C7ADC6C()
{
  v1 = v0;
  v2 = sub_22C90363C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x277D1EC38], v2);
  v10 = sub_22C90362C();
  (*(v5 + 8))(v9, v2);
  if (v10)
  {
    v11 = *sub_22C374168((v1 + 16), *(v1 + 40));
    sub_22C586B68();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22C7ADD94()
{
  v0 = sub_22C9063DC();
  v1 = sub_22C369824(v0);
  v173 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v169 = &v167 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v171 = &v167 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v172 = &v167 - v13;
  v180 = sub_22C90977C();
  v14 = sub_22C369824(v180);
  v182 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v179 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v20 = sub_22C369914(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v176 = v23 - v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v27 = &v167 - v26;
  v190 = sub_22C9036EC();
  v28 = sub_22C369824(v190);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v177 = (v33 - v34);
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  v37 = &v167 - v36;
  v181 = sub_22C9037EC();
  v38 = sub_22C369824(v181);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  v186 = (v43 - v44);
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  v184 = &v167 - v46;
  sub_22C369930();
  MEMORY[0x28223BE20](v47);
  v49 = &v167 - v48;
  v50 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v51 = sub_22C369914(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v167 - v54;
  sub_22C903D5C();
  v56 = sub_22C903F4C();
  if (sub_22C370B74(v55, 1, v56) == 1)
  {
    sub_22C376B84(v55, &qword_27D9BD290, &qword_22C917EC0);
    sub_22C90400C();
    v57 = sub_22C9063CC();
    v58 = sub_22C90AACC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22C366000, v57, v58, "App pre launch: No queryDecorationToolRetrievalResponse present. Selection not possible.", v59, 2u);
      sub_22C3699EC();
    }

    (*(v173 + 8))(v7, v0);
    return 0;
  }

  v167 = v0;
  v60 = sub_22C903F1C();
  sub_22C36BBA8(v56);
  (*(v61 + 8))(v55, v56);
  v62 = 0;
  v185 = *(v60 + 16);
  v188 = (v30 + 8);
  v189 = v40 + 16;
  v183 = (v40 + 32);
  v187 = (v40 + 8);
  v175 = MEMORY[0x277D84F90];
  v63 = v181;
  while (v185 != v62)
  {
    if (v62 >= *(v60 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      result = sub_22C90B54C();
      __break(1u);
      return result;
    }

    v64 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v65 = *(v40 + 72);
    (*(v40 + 16))(v49, v60 + v64 + v65 * v62, v63);
    v66 = v63;
    sub_22C90371C();
    sub_22C9036BC();
    (*v188)(v37, v190);
    v67 = sub_22C908EAC();
    v68 = sub_22C370B74(v27, 1, v67);
    sub_22C376B84(v27, &qword_27D9BC1E8, &qword_22C9123B0);
    if (v68 == 1)
    {
      (*v187)(v49, v66);
      ++v62;
      v63 = v66;
    }

    else
    {
      v178 = *v183;
      (v178)(v184, v49, v66);
      v69 = v175;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v69;
      v191[0] = v69;
      if (isUniquelyReferenced_nonNull_native)
      {
        v63 = v66;
      }

      else
      {
        sub_22C3B60C0(0, *(v69 + 16) + 1, 1);
        v63 = v181;
        v71 = v191[0];
      }

      v73 = *(v71 + 16);
      v72 = *(v71 + 24);
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v175 = v73 + 1;
        sub_22C3B60C0(v72 > 1, v73 + 1, 1);
        v74 = v175;
        v63 = v181;
        v71 = v191[0];
      }

      ++v62;
      *(v71 + 16) = v74;
      v175 = v71;
      (v178)(v71 + v64 + v73 * v65, v184, v63);
    }
  }

  v75 = *(v175 + 16);
  if (!v75)
  {

    return 0;
  }

  v76 = v175;
  v185 = sub_22C909F0C();
  v77 = 0;
  v78 = 0;
  v168 = 0;
  v174 = 0;
  v79 = v76 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v80 = *(v40 + 16);
  v183 = *(v40 + 72);
  v184 = v80;
  v178 = (v182 + 8);
  v81 = 0.0;
  v82 = 0.0;
  v83 = v176;
  v84 = v177;
  do
  {
    v85 = v78;
    v86 = v77;
    v87 = v186;
    (v184)(v186, v79, v63);
    sub_22C90371C();
    sub_22C9036BC();
    (*v188)(v84, v190);
    v88 = sub_22C908EAC();
    if (sub_22C370B74(v83, 1, v88) == 1)
    {
      (*v187)(v87, v63);
      sub_22C376B84(v83, &qword_27D9BC1E8, &qword_22C9123B0);
      v77 = v86;
      v78 = v85;
      goto LABEL_56;
    }

    v182 = v85;
    v89 = v179;
    sub_22C908DDC();
    sub_22C36BBA8(v88);
    (*(v90 + 8))(v83, v88);
    v91 = sub_22C9096FC();
    v93 = v92;
    v94 = v89;
    v95 = v186;
    (*v178)(v94, v180);
    sub_22C90373C();
    v97 = v96;
    v98 = v185;
    if (*(v185 + 16) && (v99 = sub_22C36E2BC(v91, v93), v98 = v185, (v100 & 1) != 0))
    {
      if (*(*(v185 + 56) + 4 * v99) >= v97)
      {
        goto LABEL_23;
      }
    }

    else if (v97 <= 0.0)
    {
LABEL_23:

      v63 = v181;
      (*v187)(v95, v181);
      v77 = v86;
      v78 = v182;
      goto LABEL_56;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v191[0] = v98;
    v101 = v91;
    v102 = v91;
    v103 = v93;
    v104 = sub_22C36E2BC(v102, v93);
    if (__OFADD__(*(v98 + 16), (v105 & 1) == 0))
    {
      goto LABEL_95;
    }

    v106 = v104;
    v107 = v105;
    sub_22C3A5908(&qword_27D9C0218, &qword_22C9263E8);
    if (sub_22C90B15C())
    {
      v78 = v103;
      v108 = sub_22C36E2BC(v101, v103);
      v84 = v177;
      if ((v107 & 1) != (v109 & 1))
      {
        goto LABEL_97;
      }

      v106 = v108;
    }

    else
    {
      v78 = v103;
      v84 = v177;
    }

    v110 = v86;
    v111 = v191[0];
    v63 = v181;
    v112 = v182;
    if (v107)
    {
      *(*(v191[0] + 56) + 4 * v106) = v97;
    }

    else
    {
      *(v191[0] + 8 * (v106 >> 6) + 64) |= 1 << v106;
      v113 = (v111[6] + 16 * v106);
      *v113 = v101;
      v113[1] = v78;
      *(v111[7] + 4 * v106) = v97;
      v114 = v111[2];
      v115 = __OFADD__(v114, 1);
      v116 = v114 + 1;
      if (v115)
      {
        goto LABEL_96;
      }

      v111[2] = v116;
      v117 = v111;

      v111 = v117;
    }

    v83 = v176;
    v185 = v111;
    if (v82 >= v97)
    {
      if (v81 >= v97)
      {
        goto LABEL_50;
      }

      if (v112)
      {
        if (v101 == v110 && v112 == v78)
        {
LABEL_50:
          v127 = sub_22C373A14();
          v128(v127);
        }

        else
        {
          v123 = sub_22C36DAF0();
          v124 = sub_22C373A14();
          v125(v124);
          if ((v123 & 1) == 0)
          {
            v126 = v78;
            sub_22C37F564();
            v81 = v97;
            v77 = v110;
            v78 = v112;
            v168 = v101;
            v174 = v126;
            v63 = v181;
            goto LABEL_56;
          }
        }

        v77 = v110;
        v78 = v112;
        goto LABEL_56;
      }

      v133 = sub_22C373A14();
      v134(v133);
      sub_22C37F564();
      v174 = v78;
      v81 = v97;
      v77 = v110;
      v168 = v101;
      v78 = 0;
    }

    else
    {
      if (v112)
      {
        if (v101 == v110 && v112 == v78)
        {
          v131 = sub_22C373A14();
          v132(v131);
        }

        else
        {
          v119 = sub_22C36DAF0();
          v120 = sub_22C373A14();
          v121(v120);
          if ((v119 & 1) == 0)
          {
            sub_22C37F564();
            v81 = v82;
            v82 = v97;
            v77 = v101;
            v168 = v110;
            v174 = v112;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v129 = sub_22C373A14();
        v130(v129);
      }

      v82 = v97;
      v77 = v101;
    }

LABEL_56:
    v79 += v183;
    --v75;
  }

  while (v75);
  v190 = v78;
  v135 = v172;
  sub_22C90400C();
  v136 = v175;

  v137 = sub_22C9063CC();
  v138 = sub_22C90AACC();
  if (sub_22C36D08C(v138))
  {
    v140 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v140 = 136316162;
    if (v190)
    {
      v141 = v77;
    }

    else
    {
      v141 = 7104878;
    }

    v142 = v174;
    if (v190)
    {
      v143 = v190;
    }

    else
    {
      v143 = 0xE300000000000000;
    }

    v144 = sub_22C36F9F4(v141, v143, v191);

    *(v140 + 4) = v144;
    *(v140 + 12) = 2048;
    *(v140 + 14) = v82;
    *(v140 + 22) = 2080;
    if (v142)
    {
      v145 = v168;
    }

    else
    {
      v145 = 7104878;
    }

    if (v142)
    {
      v146 = v142;
    }

    else
    {
      v146 = 0xE300000000000000;
    }

    v147 = sub_22C36F9F4(v145, v146, v191);

    *(v140 + 24) = v147;
    *(v140 + 32) = 2048;
    *(v140 + 34) = v81;
    *(v140 + 42) = 2048;
    v148 = *(v136 + 16);

    *(v140 + 44) = v148;

    _os_log_impl(&dword_22C366000, v137, v83, "App pre launch: Best tool: %s %f. Second best tool: %s %f. Original tool count: %ld.", v140, 0x34u);
    swift_arrayDestroy();
    sub_22C36BAE0();
    sub_22C3699EC();

    sub_22C7B1E84();
    v149 = v172;
  }

  else
  {

    sub_22C7B1E84();
    v149 = v135;
  }

  v150 = v167;
  (v136)(v149, v167);
  v151 = v171;
  v152 = sub_22C374168((v170 + 16), *(v170 + 40));
  if ((v81 + sub_22C586FCC(0xD000000000000024, 0x800000022C935430, 1, *v152, 0.17)) <= v82 || v174 == 0)
  {
    sub_22C90400C();
    v154 = sub_22C9063CC();
    v155 = sub_22C90AACC();
    if (sub_22C36D08C(v155))
    {
      v156 = sub_22C36FB44();
      v157 = swift_slowAlloc();
      v191[0] = v157;
      *v156 = 136315138;
      if (v190)
      {
        v158 = v77;
      }

      else
      {
        v158 = 7104878;
      }

      if (v190)
      {
        v159 = v190;
      }

      else
      {
        v159 = 0xE300000000000000;
      }

      v160 = sub_22C36F9F4(v158, v159, v191);

      *(v156 + 4) = v160;
      _os_log_impl(&dword_22C366000, v154, v83, "App pre launch: PREDICTED: %s", v156, 0xCu);
      sub_22C36FF94(v157);
      sub_22C3699EC();
      sub_22C3699EC();

      (v136)(v171, v167);

      sub_22C37F564();
    }

    else
    {

      (v136)(v151, v150);

      sub_22C37F564();
    }
  }

  else
  {
    v161 = v169;
    sub_22C90400C();
    v162 = sub_22C9063CC();
    v163 = sub_22C90AACC();
    if (os_log_type_enabled(v162, v163))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_22C366000, v162, v163, "App pre launch: NO PREDICTION", v165, 2u);
      sub_22C3699EC();
    }

    (v136)(v161, v150);

    sub_22C37F564();

    return 0;
  }

  return v77;
}

uint64_t sub_22C7AED14()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C9063DC();
  v1[10] = v4;
  sub_22C3699B8(v4);
  v1[11] = v5;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7AEDD0()
{
  sub_22C369980();
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v2 = *(DecorationSignposter + 48);
  v3 = *(DecorationSignposter + 52);
  swift_allocObject();
  sub_22C90B0FC();
  if (qword_27D9BA7A0 != -1)
  {
    swift_once();
  }

  sub_22C385028(qword_27D9C0618, v0 + 2);

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_22C7AEED4;
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  return sub_22C7AF240();
}

uint64_t sub_22C7AEED4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C7AEFC0()
{
  v2 = v0[16];
  if (v2)
  {
    v3 = v0[13];
    sub_22C90400C();

    v4 = sub_22C9063CC();
    v5 = sub_22C90AACC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[15];
      v7 = v0[13];
      v8 = v0[10];
      v9 = v0[11];
      v10 = sub_22C36FB44();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;

      v12 = sub_22C36F9F4(v6, v2, &v35);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_22C366000, v4, v5, "App pre Launch: Found pre selected app %s", v10, 0xCu);
      sub_22C36FF94(v11);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v9 + 8))(v7, v8);
    }

    else
    {
      v21 = v0[13];
      v22 = v0[10];
      v23 = v0[11];

      (*(v23 + 8))(v21, v22);
    }

    v24 = v0[15];
    v25 = v0[16];
    v26 = *sub_22C374168((v0[9] + 56), *(v0[9] + 80));
    sub_22C7B1118(v24, v25);
  }

  else
  {
    v13 = v0[12];
    sub_22C90400C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AACC();
    v16 = sub_22C36D08C(v15);
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[10];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22C366000, v14, v1, "App pre launch: No pre selected app found", v20, 2u);
      sub_22C36BAE0();
    }

    (*(v18 + 8))(v17, v19);
  }

  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v30 = *(v29 + 8);
  v31 = sub_22C36ECB4();
  v32(v31);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C7AF240()
{
  sub_22C369980();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_22C9063DC();
  v1[17] = v4;
  sub_22C3699B8(v4);
  v1[18] = v5;
  v7 = *(v6 + 64);
  v1[19] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9C0208, &qword_22C9297A0);
  v1[20] = v8;
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[21] = sub_22C3699D4();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7AF318()
{
  if (*(v0 + 120))
  {
    sub_22C5FA1AC(*(v0 + 128) + 16, v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
    if (*(v0 + 80))
    {
      sub_22C36C730((v0 + 56), v0 + 16);
    }

    else
    {
      if (qword_281431278 != -1)
      {
        sub_22C38A0F4();
      }

      v29 = sub_22C36FAB8();
      *(v0 + 40) = type metadata accessor for QueryDecorationCache(0);
      *(v0 + 48) = &off_283FC17B8;
      *(v0 + 16) = v29;
      if (*(v0 + 80))
      {
        sub_22C376B84(v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
      }
    }

    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = v2[10];
    v6 = sub_22C902DBC();
    sub_22C374D84(v1 + v5, v7, v8, v6);
    v9 = v2[13];
    v10 = sub_22C903D4C();
    sub_22C374D84(v1 + v9, v11, v12, v10);
    v13 = sub_22C3A5908(&qword_27D9C0210, &qword_22C9263E0);
    sub_22C374D84(v1, v14, v15, v13);
    v16 = (v1 + v2[7]);
    *v16 = v4;
    v16[1] = v3;
    v17 = (v1 + v2[8]);
    *v17 = 0xD000000000000015;
    v17[1] = 0x800000022C92EF70;
    v18 = (v1 + v2[9]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v1 + v2[11]);
    *v19 = 0;
    v19[1] = 0;
    *(v1 + v2[12]) = 0;
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    sub_22C374168((v0 + 16), v20);
    v22 = *(v21 + 8);

    v33 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    v25 = sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    *v24 = v0;
    v24[1] = sub_22C7AF730;
    v26 = *(v0 + 168);

    return v33(v0 + 96, v26, v25, v20, v21);
  }

  else
  {
    v28 = *(v0 + 112);
    v30 = *(v0 + 168);
    v31 = *(v0 + 152);

    v32 = *(v0 + 8);

    return v32(v28, 0);
  }
}

uint64_t sub_22C7AF730()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 184) = v0;

  if (v0)
  {
    v9 = sub_22C7AF8E8;
  }

  else
  {
    v9 = sub_22C7AF830;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C7AF830()
{
  sub_22C376B84(v0[21], &qword_27D9C0208, &qword_22C9297A0);
  v1 = v0[13];
  if (v1 == 1)
  {
    v2 = 0;
    v1 = 0;
  }

  else
  {
    v2 = v0[12];
  }

  sub_22C36FF94(v0 + 2);
  v3 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5(v2, v1);
}

uint64_t sub_22C7AF8E8()
{
  sub_22C376B84(v0[21], &qword_27D9C0208, &qword_22C9297A0);
  sub_22C36FF94(v0 + 2);
  v2 = v0[23];
  v3 = v0[19];
  sub_22C90400C();
  v4 = v2;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22C36FB44();
    v7 = sub_22C382768();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_22C36D2F4(v9);
    sub_22C3750D0(&dword_22C366000, v10, v6, "App pre launch failed: %@");
    sub_22C376B84(v7, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
  v11 = v0[21];
  v12 = v0[19];

  v13 = v0[1];

  return v13(0, 0);
}

uint64_t sub_22C7AFA68()
{
  sub_22C369980();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_22C9063DC();
  v1[16] = v5;
  sub_22C3699B8(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C01F0, &qword_22C9263C0);
  v1[19] = v9;
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[20] = sub_22C3699D4();
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C7AFB40()
{
  sub_22C5FA1AC(*(v0 + 120) + 16, v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
  if (*(v0 + 80))
  {
    sub_22C36C730((v0 + 56), v0 + 16);
  }

  else
  {
    if (qword_281431278 != -1)
    {
      sub_22C38A0F4();
    }

    v29 = sub_22C36FAB8();
    *(v0 + 40) = type metadata accessor for QueryDecorationCache(0);
    *(v0 + 48) = &off_283FC17B8;
    *(v0 + 16) = v29;
    if (*(v0 + 80))
    {
      sub_22C376B84(v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
    }
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = v2[10];
  v6 = sub_22C902DBC();
  sub_22C374D84(v1 + v5, v7, v8, v6);
  v9 = v2[13];
  v10 = sub_22C903D4C();
  sub_22C374D84(v1 + v9, v11, v12, v10);
  v13 = sub_22C3A5908(&qword_27D9C01F8, &qword_22C9263C8);
  sub_22C374D84(v1, v14, v15, v13);
  v16 = (v1 + v2[7]);
  *v16 = v4;
  v16[1] = v3;
  v17 = (v1 + v2[8]);
  *v17 = 0x676E6967676F6CLL;
  v17[1] = 0xE700000000000000;
  v18 = (v1 + v2[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + v2[11]);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + v2[12]) = 0;
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  sub_22C374168((v0 + 16), v20);
  v22 = *(v21 + 8);

  v30 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  v25 = sub_22C3A5908(&qword_27D9C0200, &unk_22C9263D0);
  *v24 = v0;
  v24[1] = sub_22C7AFF1C;
  v26 = *(v0 + 160);
  v27 = *(v0 + 96);

  return v30(v27, v26, v25, v20, v21);
}

uint64_t sub_22C7AFF1C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 176) = v0;

  if (v0)
  {
    v9 = sub_22C7B00A0;
  }

  else
  {
    v9 = sub_22C7B001C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C7B001C()
{
  sub_22C369980();
  sub_22C376B84(v0[20], &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94(v0 + 2);
  v1 = v0[20];
  v2 = v0[18];

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7B00A0()
{
  sub_22C376B84(v0[20], &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94(v0 + 2);
  v2 = v0[22];
  v3 = v0[18];
  sub_22C90400C();
  v4 = v2;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22C36FB44();
    v7 = sub_22C382768();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_22C36D2F4(v9);
    sub_22C3750D0(&dword_22C366000, v10, v6, "Failed to retrieve SELFLogger: %@");
    sub_22C376B84(v7, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  else
  {
  }

  v11 = sub_22C382904();
  v12(v11);
  sub_22C37A3B8();

  sub_22C369A24();

  return v13();
}

void sub_22C7B0204(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_22C908EAC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9087BC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  sub_22C90A73C();
  v22 = sub_22C90A75C();
  sub_22C36C640(v21, 0, 1, v22);
  (*(v12 + 16))(v15, a1, v9);
  v23 = v3;
  (*(v6 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v3);
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = (v14 + *(v6 + 80) + v24) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v12 + 32))(v26 + v24, v15, v9);
  (*(v6 + 32))(v26 + v25, v28, v23);
  *(v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

  sub_22C82B8E4();
}

uint64_t sub_22C7B0490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[36] = a4;
  v7 = sub_22C90622C();
  v6[39] = v7;
  v8 = *(v7 - 8);
  v6[40] = v8;
  v9 = *(v8 + 64) + 15;
  v6[41] = swift_task_alloc();
  v10 = sub_22C9063DC();
  v6[42] = v10;
  v11 = *(v10 - 8);
  v6[43] = v11;
  v12 = *(v11 + 64) + 15;
  v6[44] = swift_task_alloc();
  v13 = sub_22C90977C();
  v6[45] = v13;
  v14 = *(v13 - 8);
  v6[46] = v14;
  v15 = *(v14 + 64) + 15;
  v6[47] = swift_task_alloc();
  v16 = sub_22C90880C();
  v6[48] = v16;
  v17 = *(v16 - 8);
  v6[49] = v17;
  v18 = *(v17 + 64) + 15;
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B0668, 0, 0);
}

uint64_t sub_22C7B0668()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[36];
  v8 = v0[37];
  sub_22C90878C();
  sub_22C3A8E40();
  v22 = v9;
  v11 = v10;
  v0[51] = v10;
  v12 = *(v2 + 8);
  v13 = sub_22C36ECB4();
  v14(v13);
  sub_22C908DDC();
  v0[52] = sub_22C9096FC();
  v0[53] = v15;
  (*(v5 + 8))(v4, v6);
  if (!v11)
  {

    sub_22C37FA8C();

    sub_22C369A24();
    sub_22C372034();

    __asm { BRAA            X1, X16 }
  }

  v0[54] = v22;

  v16 = swift_task_alloc();
  v0[55] = v16;
  *v16 = v0;
  v16[1] = sub_22C7B0800;
  v17 = v0[38];
  sub_22C372034();

  return sub_22C7AFA68();
}

uint64_t sub_22C7B0800()
{
  v1 = *v0;
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;
  v4 = v1[55];
  v5 = v1[51];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[56] = v7;
  *v7 = v6;
  v7[1] = sub_22C7B0970;
  v8 = v1[54];
  v9 = v2[51];
  v10 = v1[38];

  return sub_22C7AF240();
}

uint64_t sub_22C7B0970()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 448);
  v5 = *(v3 + 408);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  *(v10 + 456) = v8;
  *(v10 + 464) = v9;

  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7B0A74()
{
  v57 = v0;
  v1 = v0[58];
  if (v1)
  {
    if (v0[57] == v0[52] && v1 == v0[53])
    {
      v4 = 1;
    }

    else
    {
      v3 = v0[58];
      v4 = sub_22C90B4FC();
    }

    v5 = v0[58];
  }

  else
  {
    v4 = 0;
  }

  v55 = v4;
  v6 = v0[53];
  v7 = v0[44];

  sub_22C90400C();

  v8 = sub_22C9063CC();
  v9 = sub_22C90AACC();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[57];
    v10 = v0[58];
    v12 = v0[53];
    v51 = v0[52];
    v52 = v0[43];
    v53 = v0[42];
    v54 = v0[44];
    v13 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v13 = 136315906;
    v0[34] = v11;
    v0[35] = v10;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    v14 = sub_22C90A1AC();
    v16 = sub_22C36F9F4(v14, v15, &v56);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = sub_22C36F9F4(v51, v12, &v56);

    *(v13 + 14) = v17;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v1 != 0;
    *(v13 + 28) = 1024;
    *(v13 + 30) = v55 & 1;
    _os_log_impl(&dword_22C366000, v8, v9, "App pre launch: Logging Tool call. Predicted app: %s, selected app: %s, predictedAppExists: %{BOOL}d, outcome: %{BOOL}d", v13, 0x22u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v52 + 8))(v54, v53);
  }

  else
  {
    v18 = v0[53];
    v20 = v0[43];
    v19 = v0[44];
    v21 = v0[42];

    (*(v20 + 8))(v19, v21);
  }

  type metadata accessor for QueryDecorationCoreAnalyticsEvent();
  swift_allocObject();
  v22 = sub_22C824368(0xD000000000000029, 0x800000022C9353C0, 0, 0);
  if (v1)
  {

    sub_22C3A5908(&qword_27D9C01E0, &qword_22C9283C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000022C935410;
    *(inited + 48) = sub_22C90A6BC();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000022C9353F0;
    sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
    *(inited + 72) = sub_22C90ABDC();
    sub_22C36E278(0, &qword_28142F970, 0x277D82BB8);
    v24 = sub_22C909F0C();
    sub_22C8243B8(v24);

    sub_22C5FA1AC((v0 + 19), (v0 + 29), &qword_27D9C01E8, &unk_22C9263B0);
    v25 = v0[32];
    if (v25)
    {
      v27 = v0[40];
      v26 = v0[41];
      v28 = v0[39];
      v29 = v0[33];
      sub_22C3857E0(v0 + 29);
      sub_22C90621C();
      (*(v29 + 112))(v55 & 1, 1, v26, v25, v29);
      v30 = *(v27 + 8);
      v31 = sub_22C36ECB4();
      v32(v31);
      v33 = v0 + 29;
LABEL_18:
      sub_22C36FF94(v33);
      goto LABEL_22;
    }

    v44 = (v0 + 29);
  }

  else
  {
    sub_22C3A5908(&qword_27D9C01E0, &qword_22C9283C0);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_22C90F800;
    *(v34 + 32) = 0xD000000000000012;
    *(v34 + 40) = 0x800000022C9353F0;
    sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
    *(v34 + 48) = sub_22C90ABDC();
    sub_22C36E278(0, &qword_28142F970, 0x277D82BB8);
    v35 = sub_22C909F0C();
    sub_22C8243B8(v35);

    sub_22C5FA1AC((v0 + 19), (v0 + 24), &qword_27D9C01E8, &unk_22C9263B0);
    v36 = v0[27];
    if (v36)
    {
      v38 = v0[40];
      v37 = v0[41];
      v39 = v0[39];
      v40 = v0[28];
      sub_22C3857E0(v0 + 24);
      sub_22C90621C();
      (*(v40 + 112))(2, 0, v37, v36, v40);
      v41 = *(v38 + 8);
      v42 = sub_22C36ECB4();
      v43(v42);
      v33 = v0 + 24;
      goto LABEL_18;
    }

    v44 = (v0 + 24);
  }

  sub_22C376B84(v44, &qword_27D9C01E8, &unk_22C9263B0);
LABEL_22:
  v45 = v0[38];
  v46 = v45[15];
  v47 = v45[16];
  sub_22C3857E0(v45 + 12);
  (*(v48 + 16))(v22, v46, v47);

  sub_22C376B84((v0 + 19), &qword_27D9C01E8, &unk_22C9263B0);
  sub_22C37FA8C();

  sub_22C369A24();

  return v49();
}

uint64_t sub_22C7B1080()
{
  sub_22C376B84(v0 + 16, &qword_27D9C01C8, &qword_22C9298B0);
  sub_22C36FF94((v0 + 56));
  sub_22C36FF94((v0 + 96));
  return v0;
}

uint64_t sub_22C7B10C0()
{
  sub_22C7B1080();

  return swift_deallocClassInstance();
}

void sub_22C7B1118(uint64_t a1, unint64_t a2)
{
  v39 = a1;
  v40 = sub_22C9063DC();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = sub_22C9096CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *MEMORY[0x277D72FC0];
  v19 = sub_22C9096AC();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(v14 + 104))(v17, *MEMORY[0x277D72FC8], v13);
  LOBYTE(v18) = sub_22C9096BC();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (a2)
    {
      sub_22C90400C();

      v20 = sub_22C9063CC();
      v21 = sub_22C90AACC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v41 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_22C36F9F4(v39, a2, &v41);
        _os_log_impl(&dword_22C366000, v20, v21, "App pre launch: Loading selected app %s", v22, 0xCu);
        sub_22C36FF94(v23);
        MEMORY[0x2318B9880](v23, -1, -1);
        MEMORY[0x2318B9880](v22, -1, -1);
      }

      (*(v3 + 8))(v12, v40);
      sub_22C36E278(0, &qword_27D9C01D0, 0x277D0AD60);
      sub_22C3A5908(&qword_27D9C01D8, &qword_22C926390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90FB40;
      v41 = 0xD000000000000012;
      v42 = 0x800000022C935330;
      sub_22C90AECC();
      v25 = MEMORY[0x277D839B0];
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      v41 = 0xD000000000000013;
      v42 = 0x800000022C935350;
      sub_22C90AECC();
      *(inited + 168) = v25;
      *(inited + 144) = 1;
      v41 = 0xD000000000000011;
      v42 = 0x800000022C935370;
      sub_22C90AECC();
      *(inited + 240) = v25;
      *(inited + 216) = 1;
      v26 = sub_22C909F0C();
      v27 = sub_22C7B1788(v26);
      v28 = swift_allocObject();
      *(v28 + 16) = v39;
      *(v28 + 24) = a2;
      v29 = objc_opt_self();

      v30 = [v29 serviceWithDefaultShellEndpoint];
      if (v30)
      {
        v31 = sub_22C90A0EC();
        v45 = sub_22C7B1C88;
        v46 = v28;
        v41 = MEMORY[0x277D85DD0];
        v42 = 1107296256;
        v43 = sub_22C7B1BD8;
        v44 = &unk_283FC0218;
        v32 = _Block_copy(&v41);

        [v30 openApplication:v31 withOptions:v27 completion:v32];

        _Block_release(v32);
      }

      else
      {
      }
    }

    else
    {
      sub_22C90400C();
      v36 = sub_22C9063CC();
      v37 = sub_22C90AADC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22C366000, v36, v37, "App pre launch failed. No bundle ID", v38, 2u);
        MEMORY[0x2318B9880](v38, -1, -1);
      }

      (*(v3 + 8))(v10, v40);
    }
  }

  else
  {
    sub_22C90400C();
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22C366000, v33, v34, "App pre launch will not run. Device is locked.", v35, 2u);
      MEMORY[0x2318B9880](v35, -1, -1);
    }

    (*(v3 + 8))(v7, v40);
  }
}

id sub_22C7B1788(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_22C909EAC();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_22C7B1814(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  if (a2)
  {
    v16 = a2;
    sub_22C90400C();
    v17 = a2;

    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v8;
      v40 = v22;
      v23 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_22C36F9F4(a3, a4, &v40);
      *(v20 + 12) = 2112;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&dword_22C366000, v18, v19, "App pre launch: Error opening app %s: %@", v20, 0x16u);
      sub_22C376B84(v21, &qword_27D9BB158, qword_22C910FD0);
      MEMORY[0x2318B9880](v21, -1, -1);
      sub_22C36FF94(v23);
      MEMORY[0x2318B9880](v23, -1, -1);
      MEMORY[0x2318B9880](v20, -1, -1);

      v26 = *(v9 + 8);
      v27 = v15;
LABEL_13:
      v36 = v39;
      return v26(v27, v36);
    }

    v26 = *(v9 + 8);
    v27 = v15;
  }

  else
  {
    sub_22C90400C();
    v28 = a1;

    v29 = sub_22C9063CC();
    v30 = sub_22C90AACC();

    if (os_log_type_enabled(v29, v30))
    {
      v39 = v8;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_22C36F9F4(a3, a4, &v40);
      *(v31 + 12) = 2080;
      if (a1 && (v33 = sub_22C7B1CA8(v28), v34))
      {
        v35 = v34;
      }

      else
      {

        v35 = 0xE400000000000000;
        v33 = 1701736302;
      }

      v37 = sub_22C36F9F4(v33, v35, &v40);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_22C366000, v29, v30, "App pre launch: Opened %s successfully. Process handle: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v32, -1, -1);
      MEMORY[0x2318B9880](v31, -1, -1);

      v26 = *(v9 + 8);
      v27 = v13;
      goto LABEL_13;
    }

    v26 = *(v9 + 8);
    v27 = v13;
  }

  v36 = v8;
  return v26(v27, v36);
}

void sub_22C7B1BD8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22C7B1C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C7B1CA8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C7B1D0C(uint64_t a1)
{
  v3 = v2;
  v5 = sub_22C9087BC();
  sub_22C3699B8(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_22C908EAC();
  sub_22C3699B8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_22C382AF4;

  return sub_22C7B0490(a1, v14, v15, v1 + v7, v1 + v12, v16);
}

uint64_t sub_22C7B1EC0(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D1D2E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22C422A58;

  return MEMORY[0x282176200](a1);
}

uint64_t sub_22C7B1F5C()
{
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v0 = sub_22C90355C();
  sub_22C369824(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C9263F0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  (v8)(v7, *MEMORY[0x277D1EAB8], v0);
  (v8)(v7 + v4, *MEMORY[0x277D1EB38], v0);
  (v8)(v7 + 2 * v4, *MEMORY[0x277D1EB28], v0);
  v9 = *MEMORY[0x277D1EB48];
  v10 = sub_22C36C410(3 * v4);
  v8(v10);
  (v8)(v7 + 4 * v4, *MEMORY[0x277D1EB00], v0);
  v11 = *MEMORY[0x277D1EB18];
  v12 = sub_22C36C410(5 * v4);
  v8(v12);
  (v8)(v7 + 6 * v4, *MEMORY[0x277D1EA80], v0);
  v13 = *MEMORY[0x277D1EAA0];
  v14 = sub_22C36C410(7 * v4);
  v8(v14);
  (v8)(v7 + 8 * v4, *MEMORY[0x277D1EA50], v0);
  v15 = *MEMORY[0x277D1EA90];
  v16 = sub_22C36C410(9 * v4);
  v8(v16);
  (v8)(v7 + 10 * v4, *MEMORY[0x277D1EA98], v0);
  (v8)(v7 + 11 * v4, *MEMORY[0x277D1EAB0], v0);
  (v8)(v7 + 12 * v4, *MEMORY[0x277D1EA88], v0);
  (v8)(v7 + 13 * v4, *MEMORY[0x277D1EB40], v0);
  (v8)(v7 + 14 * v4, *MEMORY[0x277D1EAD8], v0);
  v17 = *MEMORY[0x277D1EB50];
  v18 = sub_22C36C410(15 * v4);
  result = (v8)(v18);
  qword_281437510 = v6;
  return result;
}

uint64_t ContextRetrievalService.__allocating_init(contextClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(a1, v2 + 112);
  return v2;
}

uint64_t ContextRetrievalService.init(contextClient:)(__int128 *a1)
{
  swift_defaultActor_initialize();
  sub_22C36C730(a1, v1 + 112);
  return v1;
}

uint64_t sub_22C7B22E0(unsigned int *a1)
{
  v3 = sub_22C90363C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369BE8();
  (*(v6 + 104))(v1, *a1, v3);
  LOBYTE(a1) = sub_22C90362C();
  (*(v6 + 8))(v1, v3);
  return a1 & 1;
}

uint64_t static ContextRetrievalService.filterMediaContextGivenFeatureFlag(retrievedContextResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C90363C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369BE8();
  (*(v8 + 104))(v2, *MEMORY[0x277D1EC88], v5);
  v11 = sub_22C90362C();
  (*(v8 + 8))(v2, v5);
  if (v11)
  {
    v12 = sub_22C903E7C();
    sub_22C36BBA8(v12);
    return (*(v13 + 16))(a2, a1);
  }

  else
  {
    v15 = sub_22C903E4C();
    static ContextRetrievalService.filterMediaRetrievedContext(retrievedContext:)(v15);

    sub_22C903E5C();
    return sub_22C903E3C();
  }
}

uint64_t static ContextRetrievalService.filterMediaRetrievedContext(retrievedContext:)(uint64_t a1)
{
  v44 = sub_22C90355C();
  v2 = sub_22C369824(v44);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  v51 = v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v50 = &v39 - v9;
  sub_22C36BA0C();
  v10 = sub_22C90399C();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v40 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = 0;
  v19 = *(a1 + 16);
  v52 = a1;
  v53 = v19;
  v48 = v20 + 16;
  v47 = *MEMORY[0x277D1EAD8];
  v45 = v4 + 8;
  v46 = (v4 + 104);
  v39 = (v20 + 32);
  v49 = v20;
  v42 = (v20 + 8);
  v41 = MEMORY[0x277D84F90];
  v21 = (v4 + 8);
  while (v53 != v18)
  {
    v43 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v22 = *(v49 + 72);
    (*(v49 + 16))(v17, v52 + v43 + v22 * v18, v10);
    v23 = v50;
    sub_22C90394C();
    v24 = v17;
    v25 = v51;
    v26 = v44;
    (*v46)(v51, v47, v44);
    sub_22C7B3B44(&qword_281435780);
    v27 = sub_22C90A0BC();
    v28 = v10;
    v29 = *v21;
    (*v21)(v25, v26);
    v29(v23, v26);
    if (v27)
    {
      (*v42)(v24, v28);
      ++v18;
      v10 = v28;
      v17 = v24;
    }

    else
    {
      v30 = v22;
      v31 = v43;
      v32 = *v39;
      (*v39)(v40, v24, v28);
      v33 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v33;
      v10 = v28;
      v17 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7C48(0, *(v33 + 16) + 1, 1);
        v33 = v54;
      }

      v35 = v31;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22C3B7C48(v36 > 1, v37 + 1, 1);
        v33 = v54;
      }

      ++v18;
      *(v33 + 16) = v37 + 1;
      v41 = v33;
      v32(v33 + v35 + v37 * v30, v40, v28);
    }
  }

  return v41;
}

uint64_t static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(uint64_t a1)
{
  v100 = a1;
  v2 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v82 - v4;
  v5 = sub_22C3A5908(&qword_27D9C0220, &qword_22C926408);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v82 - v7;
  sub_22C36BA0C();
  v8 = sub_22C90355C();
  v9 = sub_22C369824(v8);
  v94 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v82 - v16;
  sub_22C36BA0C();
  v101 = sub_22C90399C();
  v17 = sub_22C369824(v101);
  v99 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v88 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  v25 = sub_22C9063DC();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v89 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v34 = &v82 - v33;
  sub_22C36BA0C();
  v35 = sub_22C90363C();
  v36 = sub_22C369824(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369BE8();
  (*(v38 + 104))(v1, *MEMORY[0x277D1EC88], v35);
  v41 = sub_22C90362C();
  (*(v38 + 8))(v1, v35);
  if ((v41 & 1) == 0)
  {
    sub_22C90400C();
    v67 = sub_22C9063CC();
    v68 = sub_22C90AABC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v104 = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_22C372DA4("shouldFilterMusicToolsGivenContext(retrievedContext:)");
      sub_22C7B41AC(&dword_22C366000, v71, v72, "%s Music tools should not be filtered given FF state");
      sub_22C36FF94(v70);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v28 + 8))(v34, v25);
    return 0;
  }

  v85 = v28;
  v86 = v25;
  v42 = 0;
  v43 = v99;
  v98 = *(v100 + 16);
  v97 = v99 + 16;
  v96 = *MEMORY[0x277D1EAD8];
  v95 = (v94 + 13);
  v44 = v94 + 1;
  v84 = (v99 + 32);
  v94 = (v99 + 8);
  v87 = MEMORY[0x277D84F90];
  v45 = v91;
  while (v98 != v42)
  {
    v46 = *(v43 + 72);
    v93 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    (*(v43 + 16))(v24, v100 + v93 + v46 * v42, v101);
    sub_22C90394C();
    (*v95)(v15, v96, v8);
    sub_22C7B3B44(&qword_281435778);
    sub_22C90A56C();
    sub_22C90A56C();
    if (v104 == v102 && v105 == v103)
    {

      v50 = *v44;
      (*v44)(v15, v8);
      v50(v45, v8);
LABEL_11:
      v51 = v92;
      sub_22C9038EC();
      v52 = sub_22C903BCC();
      if (sub_22C370B74(v51, 1, v52) == 1)
      {
        sub_22C376B84(v51, &qword_27D9BF248, &qword_22C926400);
        goto LABEL_27;
      }

      v53 = v15;
      v54 = v90;
      sub_22C903B4C();
      sub_22C36BBA8(v52);
      (*(v55 + 8))(v51, v52);
      v56 = sub_22C903B3C();
      if (sub_22C370B74(v54, 1, v56) == 1)
      {
        sub_22C376B84(v54, &qword_27D9C0220, &qword_22C926408);
        v15 = v53;
LABEL_26:
        v45 = v91;
        goto LABEL_27;
      }

      v57 = sub_22C903B2C();
      v59 = v58;
      sub_22C36BBA8(v56);
      (*(v60 + 8))(v54, v56);
      v61 = v57 == 0x6C7070612E6D6F63 && v59 == 0xEF636973754D2E65;
      v15 = v53;
      if (v61)
      {

        goto LABEL_26;
      }

      v62 = sub_22C90B4FC();

      v45 = v91;
      if (v62)
      {
        goto LABEL_27;
      }

      v83 = *v84;
      v83(v88, v24, v101);
      v63 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7C48(0, *(v63 + 16) + 1, 1);
        v63 = v106;
      }

      v66 = *(v63 + 16);
      v65 = *(v63 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_22C3B7C48(v65 > 1, v66 + 1, 1);
        v63 = v106;
      }

      ++v42;
      *(v63 + 16) = v66 + 1;
      v87 = v63;
      v83(v63 + v93 + v66 * v46, v88, v101);
      v43 = v99;
    }

    else
    {
      v48 = sub_22C90B4FC();

      v49 = *v44;
      (*v44)(v15, v8);
      v49(v45, v8);
      if (v48)
      {
        goto LABEL_11;
      }

LABEL_27:
      (*v94)(v24, v101);
      ++v42;
      v43 = v99;
    }
  }

  v73 = *(v87 + 16);

  if (!v73)
  {
    return 0;
  }

  v74 = v89;
  sub_22C90400C();
  v75 = sub_22C9063CC();
  v76 = sub_22C90AABC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v104 = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_22C372DA4("shouldFilterMusicToolsGivenContext(retrievedContext:)");
    sub_22C7B41AC(&dword_22C366000, v79, v80, "%s any Music tools should be filtered out given the presence of now-playing context");
    sub_22C36FF94(v78);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v85 + 8))(v74, v86);
  return 1;
}

uint64_t sub_22C7B3158(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22C3787A4(a1, v1);
}

uint64_t sub_22C7B3170()
{
  v1 = v0[3];
  v2 = v1[17];
  v3 = v1[18];
  sub_22C374168(v1 + 14, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_22C384F20;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_22C7B32A0()
{
  sub_22C369980();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 168) = v3;
  *(v1 + 16) = v4;
  v5 = sub_22C90637C();
  *(v1 + 40) = v5;
  sub_22C3699B8(v5);
  *(v1 + 48) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v9 = sub_22C903E7C();
  *(v1 + 64) = v9;
  sub_22C3699B8(v9);
  *(v1 + 72) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  v13 = sub_22C90634C();
  *(v1 + 88) = v13;
  sub_22C3699B8(v13);
  *(v1 + 96) = v14;
  v16 = *(v15 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v17 = sub_22C90636C();
  *(v1 + 128) = v17;
  sub_22C3699B8(v17);
  *(v1 + 136) = v18;
  v20 = *(v19 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B3488, v0, 0);
}

uint64_t sub_22C7B3488()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_22C90368C();
  sub_22C90368C();
  sub_22C90635C();
  sub_22C90631C();
  v52 = *(v4 + 8);
  v52(v2, v3);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "ContextAPI.retrieveContextValuesWithFailures", "", v9, 2u);
    sub_22C3699EC();
  }

  v11 = *(v0 + 160);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = *(v0 + 32);

  (*(v16 + 16))(v14, v13, v15);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_22C90639C();
  v51 = *(v16 + 8);
  v51(v13, v15);
  v52(v11, v12);
  v21 = v17[17];
  v22 = v17[18];
  sub_22C374168(v17 + 14, v21);
  if (qword_281432E48 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 80);
  (*(v22 + 8))(qword_281437510, *(v0 + 24), *(v0 + 168) & 1, v21, v22);
  v24 = *(v0 + 144);
  v25 = *(v0 + 104);
  sub_22C90368C();
  v26 = sub_22C90635C();
  sub_22C90638C();
  v27 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v28 = *(v0 + 48);
    v29 = *(v0 + 56);
    v30 = *(v0 + 40);

    sub_22C9063BC();

    if ((*(v28 + 88))(v29, v30) == *MEMORY[0x277D85B00])
    {
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
      v31 = "";
    }

    v32 = *(v0 + 104);
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v26, v27, v34, "ContextAPI.retrieveContextValuesWithFailures", v31, v33, 2u);
    sub_22C3699EC();
  }

  v46 = *(v0 + 160);
  v47 = *(v0 + 152);
  v35 = *(v0 + 144);
  v36 = *(v0 + 128);
  v37 = *(v0 + 104);
  v48 = *(v0 + 120);
  v49 = *(v0 + 112);
  v39 = *(v0 + 80);
  v38 = *(v0 + 88);
  v40 = *(v0 + 72);
  v45 = *(v0 + 64);
  v50 = *(v0 + 56);
  v41 = v26;
  v42 = *(v0 + 16);

  v51(v37, v38);
  v52(v35, v36);
  type metadata accessor for ContextRetrievalService();
  static ContextRetrievalService.filterMediaContextGivenFeatureFlag(retrievedContextResponse:)(v39, v42);

  (*(v40 + 8))(v39, v45);

  sub_22C369A24();

  return v43();
}

uint64_t sub_22C7B392C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22C3787A4(a1, v1);
}

uint64_t sub_22C7B3944()
{
  v1 = *(v0 + 24);
  v15 = *(v0 + 16);
  v2 = v1[17];
  v3 = v1[18];
  sub_22C374168(v1 + 14, v2);
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v4 = sub_22C90355C();
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22C90F870;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x277D1EAB8], v4);
  v12(v11 + v8, *MEMORY[0x277D1EB18], v4);
  (*(v3 + 8))(v10, 0x3FD3333333333333, 0, v2, v3);

  sub_22C369A24();

  return v13();
}

uint64_t ContextRetrievalService.deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C7B3B44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C90355C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ContextRetrievalClient.refresh(contextTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = sub_22C374D1C(v8);
  *v9 = v10;
  v9[1] = sub_22C422A58;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ContextRetrievalService.refresh(contextTypes:)(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = sub_22C374D1C(v5);
  *v6 = v7;
  v6[1] = sub_22C46263C;

  return v9(a1);
}

uint64_t dispatch thunk of ContextRetrievalService.retrieveContext(timeout:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 112);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = sub_22C374D1C(v9);
  *v10 = v11;
  v10[1] = sub_22C46263C;

  return (v13)(a1, a2, a3 & 1);
}

uint64_t dispatch thunk of ContextRetrievalService.retrieveContextForTools()(uint64_t a1)
{
  v3 = *(*v1 + 120);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = sub_22C374D1C(v5);
  *v6 = v7;
  v6[1] = sub_22C46263C;

  return v9(a1);
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7B4158()
{
  result = qword_27D9C0228;
  if (!qword_27D9C0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0228);
  }

  return result;
}

void sub_22C7B41AC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OnScreenContentRetrievalService.__allocating_init()()
{
  sub_22C373A24();
  v0 = swift_allocObject();
  v1 = sub_22C9043BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_22C9043AC();
  v0[5] = v1;
  v0[6] = &protocol witness table for ContextRetrieval;
  v0[2] = v4;
  return v0;
}

void *OnScreenContentRetrievalService.init()()
{
  v1 = sub_22C9043BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_22C9043AC();
  v0[5] = v1;
  v0[6] = &protocol witness table for ContextRetrieval;
  v0[2] = v4;
  return v0;
}

uint64_t OnScreenContentRetrievalService.__allocating_init(client:)(__int128 *a1)
{
  sub_22C373A24();
  v2 = swift_allocObject();
  sub_22C36C730(a1, v2 + 16);
  return v2;
}

uint64_t static OnScreenContentRetrievalService.isEnabled()()
{
  v0 = sub_22C90363C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D1EC98], v0);
  v5 = sub_22C90362C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_22C7B43D4()
{
  v1[6] = v0;
  v2 = sub_22C90355C();
  v1[7] = v2;
  sub_22C3699B8(v2);
  v1[8] = v3;
  v5 = *(v4 + 64);
  v1[9] = sub_22C36D0D4();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = sub_22C90399C();
  v1[12] = v6;
  sub_22C3699B8(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = sub_22C903E7C();
  v1[17] = v10;
  sub_22C3699B8(v10);
  v1[18] = v11;
  v13 = *(v12 + 64) + 15;
  v1[19] = swift_task_alloc();
  v14 = sub_22C9063DC();
  v1[20] = v14;
  sub_22C3699B8(v14);
  v1[21] = v15;
  v17 = *(v16 + 64);
  v1[22] = sub_22C36D0D4();
  v1[23] = swift_task_alloc();
  v18 = sub_22C90634C();
  v1[24] = v18;
  sub_22C3699B8(v18);
  v1[25] = v19;
  v21 = *(v20 + 64);
  v1[26] = sub_22C36D0D4();
  v1[27] = swift_task_alloc();
  v22 = sub_22C90636C();
  v1[28] = v22;
  sub_22C3699B8(v22);
  v1[29] = v23;
  v25 = *(v24 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B4658, 0, 0);
}

uint64_t sub_22C7B4658()
{
  v1 = v0[30];
  v2 = v0[27];
  sub_22C90367C();
  sub_22C90633C();
  v3 = sub_22C90635C();
  v4 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v3, v4, v7, "QueryDecorationOnScreenContentRetrieval", "", v6, 2u);
    MEMORY[0x2318B9880](v6, -1, -1);
  }

  v9 = v0[29];
  v8 = v0[30];
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];

  (*(v13 + 16))(v12, v11, v14);
  v16 = sub_22C9063AC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v105 = sub_22C90639C();
  (*(v13 + 8))(v11, v14);
  (*(v9 + 8))(v8, v10);
  sub_22C90400C();
  v19 = sub_22C9063CC();
  v20 = sub_22C90AABC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22C366000, v19, v20, "[OnScreenContentRetrievalService] Retrieving on-screen documents and images...", v21, 2u);
    MEMORY[0x2318B9880](v21, -1, -1);
  }

  v22 = v0[23];
  v23 = v0[20];
  v24 = v0[21];
  v25 = v0[19];
  v26 = v0[7];
  v27 = v0[8];
  v28 = v0[6];

  v120 = *(v24 + 8);
  v120(v22, v23);
  v29 = v28[5];
  v30 = v28[6];
  sub_22C374168(v28 + 2, v29);
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v31 = *(v27 + 72);
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C90F800;
  v34 = *MEMORY[0x277D1EB40];
  v35 = *(v27 + 104);
  v35(v33 + v32, *MEMORY[0x277D1EB40], v26);
  (*(v30 + 8))(v33, 0x3FE0000000000000, 0, v29, v30);

  v116 = v35;
  v111 = v34;
  v36 = v0[22];
  v38 = v0[18];
  v37 = v0[19];
  v39 = v0[17];
  v40 = sub_22C903E4C();
  (*(v38 + 8))(v37, v39);
  sub_22C90400C();

  v41 = sub_22C9063CC();
  v42 = sub_22C90AABC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = *(v40 + 16);

    _os_log_impl(&dword_22C366000, v41, v42, "[OnScreenContentRetrievalService] Got %ld on-screen content results", v43, 0xCu);
    MEMORY[0x2318B9880](v43, -1, -1);
  }

  else
  {
  }

  v44 = v34;

  v45 = v0[21] + 8;
  v120(v0[22], v0[20]);
  v46 = *(v40 + 16);
  if (v46)
  {
    v47 = v0[13];
    v48 = *(v47 + 16);
    v47 += 16;
    v113 = v48;
    v104 = v40;
    v49 = v40 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v109 = (v0[8] + 8);
    v107 = (*(v47 + 64) + 32) & ~*(v47 + 64);
    v108 = (v47 - 8);
    HIDWORD(v106) = *MEMORY[0x277D1EB08];
    v112 = (v47 + 16);
    v50 = MEMORY[0x277D84F90];
    v110 = *(v47 + 56);
    while (1)
    {
      v118 = v46;
      v121 = v50;
      v51 = v0[11];
      v52 = v0[10];
      v53 = v0[7];
      v113(v0[16], v49, v0[12]);
      sub_22C90394C();
      v116(v52, v44, v53);
      sub_22C7B51F4();
      sub_22C90A56C();
      sub_22C90A56C();
      v60 = v0[2];
      v61 = v0[4];
      v62 = v0[10];
      v63 = v0[11];
      v64 = v0[7];
      if (v60 == v61 && v0[3] == v0[5])
      {
        break;
      }

      v66 = v0[3];
      v67 = v0[5];
      v68 = sub_22C90B4FC();
      v69 = v68;
      v77 = sub_22C36A3A4(v68, v70, v71, v72, v73, v74, v75, v76, v103, v104, v105, v106, v107, v108, v109);
      (v44)(v77);
      (v44)(v63, v64);

      if (v69)
      {
        goto LABEL_17;
      }

      (*v108)(v0[16], v0[12]);
      v78 = v110;
      v44 = v111;
      v50 = v121;
LABEL_22:
      v49 += v78;
      v46 = v118 - 1;
      if (v118 == 1)
      {

        v122 = v50;
        goto LABEL_25;
      }
    }

    v79 = sub_22C36A3A4(v60, v54, v61, v55, v56, v57, v58, v59, v103, v104, v105, v106, v107, v108, v109);
    (v44)(v79);
    (v44)(v63, v64);

LABEL_17:
    v81 = v0[15];
    v80 = v0[16];
    v82 = v0[14];
    v83 = v0[12];
    v84 = v0[9];
    v85 = v0[7];
    v113(v82, v80, v83);
    v116(v84, HIDWORD(v106), v85);
    sub_22C90395C();
    (*v108)(v80, v83);
    v86 = *v112;
    (*v112)(v81, v82, v83);
    v50 = v121;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = *(v121 + 16);
      sub_22C595C60();
      v50 = v91;
    }

    v44 = v111;
    v87 = *(v50 + 16);
    if (v87 >= *(v50 + 24) >> 1)
    {
      sub_22C595C60();
      v50 = v92;
    }

    v88 = v0[15];
    v89 = v0[12];
    *(v50 + 16) = v87 + 1;
    v78 = v110;
    v86(v50 + v107 + v87 * v110, v88, v89);
    goto LABEL_22;
  }

  v122 = MEMORY[0x277D84F90];
LABEL_25:
  v93 = v0[30];
  v95 = v0[26];
  v94 = v0[27];
  v97 = v0[22];
  v96 = v0[23];
  v98 = v0[19];
  v100 = v0[15];
  v99 = v0[16];
  v114 = v0[14];
  v115 = v0[11];
  v117 = v0[10];
  v119 = v0[9];
  sub_22C7B4EE8();

  v101 = v0[1];

  return v101(v122);
}

uint64_t sub_22C7B4EE8()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90367C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "QueryDecorationOnScreenContentRetrieval", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_22C7B51F4()
{
  result = qword_281435778;
  if (!qword_281435778)
  {
    sub_22C90355C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281435778);
  }

  return result;
}

uint64_t dispatch thunk of OnScreenContentRetrievalService.retrieveOnScreenContent()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C3CC1B8;

  return v6();
}

void sub_22C7B53C8()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90952C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v23[1] = v1;
  v16 = *(v3 + 16);
  if (v16)
  {
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v23[0] = v3;
    v21 = v3 + v20;
    v22 = *(v17 + 56);
    do
    {
      v18(v12, v21, v4);
      sub_22C6A521C();
      (*(v17 - 8))(v15, v4);
      v21 += v22;
      --v16;
    }

    while (v16);
  }

  sub_22C36CC48();
}

void sub_22C7B551C()
{
  sub_22C36BA7C();
  v32 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v31 - v19;
  v21 = 0;
  v33 = v4;
  v34 = v2;
  v24 = *(v4 + 56);
  v23 = v4 + 56;
  v22 = v24;
  v25 = 1 << *(v23 - 24);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v31[1] = v9 + 32;
  v31[2] = v9 + 16;
  v31[0] = v9 + 8;
  if ((v26 & v22) != 0)
  {
    do
    {
      v29 = v21;
LABEL_9:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      (*(v9 + 16))(v20, *(v33 + 48) + *(v9 + 72) * (v30 | (v29 << 6)), v6);
      (*(v9 + 32))(v14, v20, v6);
      v32(v18, v14);
      (*(v9 + 8))(v18, v6);
    }

    while (v27);
  }

  while (1)
  {
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v29 >= v28)
    {

      sub_22C36CC48();
      return;
    }

    v27 = *(v23 + 8 * v29);
    ++v21;
    if (v27)
    {
      v21 = v29;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22C7B5724()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C905A5C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22C3699D4();
  v9 = sub_22C9063DC();
  v1[9] = v9;
  sub_22C3699B8(v9);
  v1[10] = v10;
  v12 = *(v11 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v13 = sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v1[13] = sub_22C3699D4();
  v16 = sub_22C903E7C();
  v1[14] = v16;
  sub_22C3699B8(v16);
  v1[15] = v17;
  v19 = *(v18 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C7B58C8()
{
  sub_22C3743E4();
  v1 = v0[3];
  if (sub_22C83AB78())
  {
    swift_task_alloc();
    sub_22C36CC90();
    v0[19] = v2;
    *v2 = v3;
    v2[1] = sub_22C7B5A7C;
    v4 = v0[13];
    v5 = v0[5];
    v6 = v0[3];

    return sub_22C7B6258(v4, v6);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[3];
    v13 = v12[6];
    sub_22C374168(v12 + 2, v12[5]);
    (*(v9 + 104))(v8, *MEMORY[0x277D20068], v10);
    v14 = swift_task_alloc();
    v0[21] = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v12;
    swift_task_alloc();
    sub_22C36CC90();
    v0[22] = v15;
    *v15 = v16;
    v15[1] = sub_22C7B5E68;
    v17 = v0[16];
    v18 = v0[14];
    v19 = v0[8];

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }
}

uint64_t sub_22C7B5A7C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7B5B74()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_22C370B74(v2, 1, v1);
  v4 = v0[18];
  if (v3 == 1)
  {
    v5 = v0[11];
    sub_22C3770B0(v2, &qword_27D9C0238, &qword_22C9266F0);
    sub_22C903E3C();
    sub_22C90400C();
    v6 = sub_22C9063CC();
    v7 = sub_22C90AADC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22C366000, v6, v7, "This is a remote request but no remote context for tool retrieval was found.", v12, 2u);
      sub_22C3699EC();
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v13 = v0[17];
    v14 = v0[15];
    v15 = v0[12];
    (*(v14 + 32))(v13, v2, v1);
    (*(v14 + 16))(v4, v13, v1);
    sub_22C90400C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AACC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[15];
    v7 = v0[12];
    v22 = v0[9];
    v23 = v0[10];
    if (v18)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "Using remote context for tool retrieval", v24, 2u);
      sub_22C3699EC();
    }

    (*(v23 + 8))(v7, v22);
    (*(v21 + 8))(v19, v20);
  }

  v25 = sub_22C7B8EAC();
  sub_22C37FAAC(v25, v26, v27, v28, v29, v30, v31);

  v32 = v54;
  v33 = sub_22C903E4C();
  sub_22C7B742C(v33, v34, v35, v36, v37, v38, v39, v40, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);

  sub_22C7B7C34();
  v42 = v41;

  v43 = type metadata accessor for RetrievedToolContext();
  v44 = sub_22C380048(v43);
  v45(v44);
  *v7 = v32;
  v7[1] = v42;

  sub_22C369C50();

  return v46();
}

uint64_t sub_22C7B5E68()
{
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = *v1;
  sub_22C369970();
  *v11 = v10;
  *(v12 + 184) = v0;

  (*(v8 + 8))(v7, v9);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C7B5FE4()
{
  (*(v0[15] + 32))(v0[18], v0[16], v0[14]);
  v2 = sub_22C7B8EAC();
  sub_22C37FAAC(v2, v3, v4, v5, v6, v7, v8);

  v9 = v31;
  v10 = sub_22C903E4C();
  sub_22C7B742C(v10, v11, v12, v13, v14, v15, v16, v17, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);

  sub_22C7B7C34();
  v19 = v18;

  v20 = type metadata accessor for RetrievedToolContext();
  v21 = sub_22C380048(v20);
  v22(v21);
  *v1 = v9;
  v1[1] = v19;

  sub_22C369C50();

  return v23();
}

uint64_t sub_22C7B6118()
{
  sub_22C3743E4();
  v1 = *(v0 + 160);
  sub_22C382918();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C7B61B8()
{
  sub_22C3743E4();
  v1 = *(v0 + 184);
  sub_22C382918();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C7B6258(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_22C90355C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_22C90399C();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v10 = sub_22C903E7C();
  v2[33] = v10;
  v11 = *(v10 - 8);
  v2[34] = v11;
  v12 = *(v11 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B6438, 0, 0);
}

uint64_t sub_22C7B6438()
{
  if (qword_281431278 != -1)
  {
    swift_once();
  }

  v1 = sub_22C36FAB8();
  *(v0 + 80) = type metadata accessor for QueryDecorationCache(0);
  *(v0 + 88) = &off_283FC17B8;
  *(v0 + 56) = v1;
  sub_22C36C730((v0 + 56), v0 + 16);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 288) = v2;
  *v2 = v3;
  v2[1] = sub_22C7B6614;
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);

  return sub_22C7B8144();
}

uint64_t sub_22C7B6614()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  v4 = *(v2 + 288);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 296) = v0;

  sub_22C7B8E10(v3 + 16);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7B671C()
{
  v1 = v0[32];
  v2 = v0[33];
  if (sub_22C370B74(v1, 1, v2) != 1)
  {
    v8 = v0[29];
    v9 = v0[23];
    (*(v0[34] + 32))(v0[35], v1, v2);
    result = sub_22C903E4C();
    v11 = 0;
    v59 = *(result + 16);
    v56 = *MEMORY[0x277D1EAB8];
    v63 = (v9 + 104);
    v12 = (v9 + 8);
    v55 = *MEMORY[0x277D1EB18];
    v54 = (v8 + 8);
    v57 = v8;
    v52 = (v8 + 32);
    v53 = MEMORY[0x277D84F90];
    for (i = result; ; result = i)
    {
      while (1)
      {
        if (v59 == v11)
        {
          v39 = v0[34];
          v40 = v0[35];
          v41 = v0[33];
          v42 = v0[20];

          sub_22C903E3C();
          (*(v39 + 8))(v40, v41);
          v4 = v42;
          v5 = 0;
          v6 = 1;
          v7 = v41;
          goto LABEL_26;
        }

        if (v11 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v13 = v0[27];
        v14 = v0[26];
        v15 = v0[22];
        v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v60 = *(v57 + 72);
        (*(v57 + 16))(v0[31], result + v61 + v60 * v11, v0[28]);
        sub_22C90394C();
        v16 = *v63;
        (*v63)(v14, v56, v15);
        sub_22C7B8E64(&qword_281435778, MEMORY[0x277D1EB58]);
        sub_22C90A56C();
        sub_22C90A56C();
        v17 = v0[12] == v0[14] && v0[13] == v0[15];
        v62 = v11;
        v18 = v17 ? 1 : sub_22C90B4FC();
        v19 = v0[27];
        v20 = v0[22];
        v21 = *v12;
        (*v12)(v0[26], v20);
        v21(v19, v20);

        if ((v18 & 1) == 0)
        {
          break;
        }

LABEL_20:
        v33 = *v52;
        (*v52)(v0[30], v0[31], v0[28]);
        v34 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C3B7C48(0, *(v53 + 16) + 1, 1);
          v34 = v53;
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_22C3B7C48(v35 > 1, v36 + 1, 1);
          v34 = v53;
        }

        v11 = v62 + 1;
        v37 = v0[30];
        v38 = v0[28];
        *(v34 + 16) = v36 + 1;
        v53 = v34;
        v33(v34 + v61 + v36 * v60, v37, v38);
        result = i;
      }

      v22 = v0[31];
      v24 = v0[24];
      v23 = v0[25];
      v25 = v0[22];
      sub_22C90394C();
      v16(v24, v55, v25);
      sub_22C90A56C();
      sub_22C90A56C();
      v26 = v0[24];
      v27 = v0[25];
      v28 = v0[22];
      if (v0[16] == v0[18] && v0[17] == v0[19])
      {
        v21(v0[24], v0[22]);
        v21(v27, v28);

        goto LABEL_20;
      }

      v30 = v0[17];
      v31 = v0[19];
      v32 = sub_22C90B4FC();
      v21(v26, v28);
      v21(v27, v28);

      if (v32)
      {
        goto LABEL_20;
      }

      (*v54)(v0[31], v0[28]);
      v11 = v62 + 1;
    }
  }

  v3 = v0[20];
  sub_22C3770B0(v1, &qword_27D9C0238, &qword_22C9266F0);
  sub_22C36A748();
  v7 = v2;
LABEL_26:
  sub_22C36C640(v4, v5, v6, v7);
  v43 = v0[35];
  v44 = v0[31];
  v45 = v0[32];
  v46 = v0[30];
  v48 = v0[26];
  v47 = v0[27];
  v50 = v0[24];
  v49 = v0[25];

  sub_22C369C50();

  return v51();
}

uint64_t sub_22C7B6C50()
{
  sub_22C3743E4();
  v1 = v0[37];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];

  sub_22C369A24();

  return v10();
}

uint64_t sub_22C7B6D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22C382AF4;

  return sub_22C7B6DBC(a1, a3);
}

uint64_t sub_22C7B6DBC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22C9063DC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22C903E7C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B6EE8, 0, 0);
}

uint64_t sub_22C7B6EE8()
{
  v1 = v0[8];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  if (qword_27D9BA750 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  (*(v3 + 8))(qword_27D9C05C8, v2, v3);
  v5 = *sub_22C374168((v4 + 16), *(v4 + 40));
  swift_task_alloc();
  sub_22C36CC90();
  v0[17] = v6;
  *v6 = v7;
  v6[1] = sub_22C7B7004;
  v8 = v0[16];

  return sub_22C7B392C(v8);
}

uint64_t sub_22C7B7004()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7B70FC()
{
  v44 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  sub_22C90400C();
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_22C9063CC();
  v7 = sub_22C90AABC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  if (v8)
  {
    v36 = v0[13];
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43[0] = v42;
    *v15 = 136315394;
    *(v15 + 4) = sub_22C36F9F4(0xD000000000000027, 0x800000022C9356B0, v43);
    *(v15 + 12) = 2080;
    v16 = sub_22C903E4C();
    sub_22C80F388(v16, v17, v18, v19, v20, v21, v22, v23, v36, v38, v40, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7]);
    v39 = v13;
    v41 = v11;
    v25 = v24;
    v27 = v26;

    (*(v10 + 8))(v9, v37);
    v28 = sub_22C36F9F4(v25, v27, v43);

    *(v15 + 14) = v28;
    _os_log_impl(&dword_22C366000, v6, v7, "QDInternal: Output of Tool Context Retrieval| %s\n    %s", v15, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v14 + 8))(v41, v39);
  }

  else
  {

    (*(v10 + 8))(v9, v12);
    (*(v14 + 8))(v11, v13);
  }

  v29 = v0[15];
  v30 = v0[12];
  (*(v0[14] + 32))(v0[7], v0[16], v0[13]);
  v31 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v32 = sub_22C38AB6C();
  v33(v32);
  sub_22C36FF94(v0 + 2);

  sub_22C369C50();

  return v34();
}

uint64_t sub_22C7B737C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v5 = sub_22C38AB6C();
  v6(v5);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  v8 = v0[18];

  return v7();
}

void sub_22C7B742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v134 = sub_22C9063DC();
  v24 = sub_22C369824(v134);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v120 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v119 - v32;
  v132 = sub_22C903CCC();
  v34 = sub_22C369824(v132);
  v139 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v131 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  v130 = &v119 - v41;
  v138 = sub_22C9093BC();
  v42 = sub_22C369824(v138);
  v135 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v129 = v47 - v46;
  v48 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v49 = sub_22C369914(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C369ABC();
  v133 = v52 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v119 - v55;
  v57 = sub_22C90355C();
  v58 = sub_22C369824(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v137 = sub_22C90399C();
  v63 = sub_22C369824(v137);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C369838();
  v69 = v68 - v67;
  v146[1] = MEMORY[0x277D84FA0];
  v70 = *(v23 + 16);
  if (v70)
  {
    v72 = *(v66 + 16);
    v71 = v66 + 16;
    v73 = v23 + ((*(v71 + 64) + 32) & ~*(v71 + 64));
    v143 = v60 + 88;
    v144 = v72;
    v142 = *MEMORY[0x277D1EB18];
    v140 = v60 + 8;
    v141 = v71 - 8;
    v127 = (v135 + 32);
    v126 = v135 + 16;
    v125 = *MEMORY[0x277D1F0D0];
    v124 = v139 + 104;
    v123 = v139 + 8;
    v122 = v135 + 8;
    v119 = v26;
    v121 = v26 + 8;
    v139 = *(v71 + 56);
    v74 = v133;
    v135 = v56;
    v136 = v57;
    v75 = v137;
    v128 = v33;
    v145 = v71;
    do
    {
      v144(v69, v73, v75);
      sub_22C90394C();
      v76 = sub_22C3892A0();
      v78 = v77(v76);
      if (v78 == v142)
      {
        v79 = sub_22C3892A0();
        v80(v79);
        sub_22C90391C();
        sub_22C5652C0(v56, v74, &qword_27D9BB908, &qword_22C910960);
        if (sub_22C370B74(v74, 1, v138) == 1)
        {
          sub_22C3770B0(v74, &qword_27D9BB908, &qword_22C910960);
          sub_22C90400C();
          v81 = sub_22C9063CC();
          v82 = v33;
          v83 = sub_22C90AADC();
          if (os_log_type_enabled(v81, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_22C366000, v81, v83, "getOnScreenAppEntities: typedValue is nil", v84, 2u);
            v56 = v135;
            sub_22C3699EC();
          }

          sub_22C36BA4C(&a13);
          v85(v82, v134);
          sub_22C3770B0(v56, &qword_27D9BB908, &qword_22C910960);
          v86 = sub_22C370A54();
          v75 = v137;
          v87(v86, v137);
          v33 = v82;
        }

        else
        {
          v92 = v129;
          v93 = v74;
          v94 = v138;
          (*v127)(v129, v93, v138);
          v95 = sub_22C3A5908(&qword_27D9C0258, &qword_22C926728);
          v96 = v131;
          v97 = (v131 + *(v95 + 48));
          sub_22C36BA4C(&a18);
          v98(v96, v92, v94);
          *v97 = sub_22C90390C();
          v97[1] = v99;
          sub_22C36BA4C(&a16);
          v100 = v132;
          v101(v96, v125, v132);
          v102 = v130;
          v56 = v135;
          sub_22C6A5D9C();
          sub_22C36BA4C(&a15);
          v103 = v102;
          v104 = v94;
          v74 = v133;
          v105 = v100;
          v33 = v128;
          v106(v103, v105);
          sub_22C36BA4C(&a14);
          v107(v92, v104);
          sub_22C3770B0(v56, &qword_27D9BB908, &qword_22C910960);
          v108 = sub_22C370A54();
          v75 = v137;
          v109(v108, v137);
        }
      }

      else
      {
        v88 = sub_22C370A54();
        v89(v88, v75);
        v90 = sub_22C3892A0();
        v91(v90);
      }

      v73 += v139;
      --v70;
    }

    while (v70);
    v26 = v119;
  }

  v110 = v120;
  sub_22C90400C();

  v111 = sub_22C9063CC();
  v112 = sub_22C90AABC();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v146[0] = swift_slowAlloc();
    *v113 = 136315394;
    *(v113 + 4) = sub_22C36F9F4(0xD000000000000024, 0x800000022C935680, v146);
    *(v113 + 12) = 2080;
    sub_22C36C41C();
    sub_22C7B8E64(v114, v115);
    v116 = sub_22C90A8CC();
    v118 = sub_22C36F9F4(v116, v117, v146);

    *(v113 + 14) = v118;
    _os_log_impl(&dword_22C366000, v111, v112, "QDInternal: AppEntities on screen from current context for Stage Three Tool Retrieval | %s\nOn-screen entities retrieved: %s", v113, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v26 + 8))(v110, v134);
  sub_22C36CC48();
}

void sub_22C7B7C34()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v49 = v4;
  v50 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  v13 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - v17;
  v19 = sub_22C903DEC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v27 = v26 - v25;
  sub_22C5652C0(v1, v18, &qword_27D9C0250, &unk_22C929510);
  if (sub_22C370B74(v18, 1, v19) == 1)
  {
    sub_22C3770B0(v18, &qword_27D9C0250, &unk_22C929510);
  }

  else
  {
    (*(v22 + 32))(v27, v18, v19);
    if (sub_22C903DDC())
    {

      sub_22C7B551C();
      sub_22C90400C();

      v28 = sub_22C9063CC();
      v29 = sub_22C90AABC();

      v48 = v28;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v30 = 136315650;
        *(v30 + 4) = sub_22C7B8EE4("compileAppEntitiesList(currentAppEntities:qdLookback:)");
        *(v30 + 12) = 2080;
        v45[1] = sub_22C903CCC();
        sub_22C36C41C();
        sub_22C7B8E64(v31, v32);
        v46 = v29;
        v33 = sub_22C90A8CC();
        v35 = v34;

        v36 = sub_22C36F9F4(v33, v35, &v51);

        *(v30 + 14) = v36;
        *(v30 + 22) = 2080;
        v37 = sub_22C90A8CC();
        v39 = sub_22C36F9F4(v37, v38, &v51);

        *(v30 + 24) = v39;
        v40 = v48;
        _os_log_impl(&dword_22C366000, v48, v46, "QDInternal: AppEntities for Stage Three Tool Retrieval | %s\nAppEntities from previous request (list of bundle IDs): %s\nAppEntities after union with previousAppEntities (list of bundle IDs): %s", v30, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {
      }

      (*(v49 + 8))(v12, v50);
      (*(v22 + 8))(v27, v19);
      goto LABEL_12;
    }

    (*(v22 + 8))(v27, v19);
  }

  sub_22C90400C();
  v41 = sub_22C9063CC();
  v42 = sub_22C90AABC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_22C7B8EE4("compileAppEntitiesList(currentAppEntities:qdLookback:)");
    _os_log_impl(&dword_22C366000, v41, v42, "QDInternal: AppEntities for Stage Three Tool Retrieval | %s\nNo previous app entities found from QueryDecorationLookback, returning original list.", v43, 0xCu);
    sub_22C36FF94(v44);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v49 + 8))(v9, v50);

LABEL_12:
  sub_22C36CC48();
}

uint64_t sub_22C7B8144()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v1[7] = v6;
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[8] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_22C7B81D8()
{
  v1 = *(v0[3] + 96);
  v2 = sub_22C903BFC();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    v11 = v7[10];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v12, v13, v14, v15);
    v16 = v7[13];
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v17, v18, v19, v20);
    sub_22C3A5908(&qword_27D9C0248, &qword_22C926720);
    sub_22C36A748();
    sub_22C36C640(v21, v22, v23, v24);
    v25 = (v6 + v7[7]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v6 + v7[8]);
    *v26 = v10;
    v26[1] = v8;
    v27 = (v6 + v7[9]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v6 + v7[11]);
    *v28 = v4;
    v28[1] = v5;
    *(v6 + v7[12]) = 1;
    v29 = v9[4];
    sub_22C374168(v9, v9[3]);
    sub_22C3769B0();
    v44 = v6 + *v6;
    v30 = v6[1];
    v31 = swift_task_alloc();
    v0[9] = v31;
    sub_22C903E7C();
    *v31 = v0;
    v31[1] = sub_22C7B841C;
    v32 = v0[8];
    v33 = v0[2];
    sub_22C37A3DC();
    sub_22C36D5F8();

    __asm { BRAA            X5, X16 }
  }

  v36 = v0[2];
  sub_22C903E7C();
  sub_22C36A748();
  sub_22C36C640(v37, v38, v39, v40);
  v41 = v0[8];

  sub_22C369C50();
  sub_22C36D5F8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C7B841C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7B8514()
{
  sub_22C369980();
  sub_22C3770B0(*(v0 + 64), &qword_27D9C0240, &qword_22C926718);
  v1 = *(v0 + 64);

  sub_22C369C50();

  return v2();
}

uint64_t sub_22C7B8584()
{
  sub_22C369980();
  sub_22C3770B0(*(v0 + 64), &qword_27D9C0240, &qword_22C926718);

  sub_22C369A24();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_22C7B85FC()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v1[7] = v5;
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  v1[8] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_22C7B868C()
{
  v1 = *(v0[3] + 96);
  v2 = sub_22C903BFC();
  v4 = v0[8];
  if (v3)
  {
    v5 = v2;
    v6 = v3;
    v7 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v8[10];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v12, v13, v14, v15);
    v16 = v8[13];
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v17, v18, v19, v20);
    sub_22C3A5908(&qword_27D9C0268, &qword_22C928BD0);
    sub_22C36A748();
    sub_22C36C640(v21, v22, v23, v24);
    v25 = (v4 + v8[7]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v4 + v8[8]);
    *v26 = v10;
    v26[1] = v9;
    v27 = (v4 + v8[9]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v4 + v8[11]);
    *v28 = v5;
    v28[1] = v6;
    *(v4 + v8[12]) = 1;
    v29 = *(v7 + 4);
    sub_22C374168(v7, *(v7 + 3));
    sub_22C3769B0();
    v39 = v7 + *v7;
    v30 = v7[1];
    v31 = swift_task_alloc();
    v0[9] = v31;
    sub_22C3A5908(&qword_27D9C0270, &unk_22C926750);
    *v31 = v0;
    v31[1] = sub_22C7B88CC;
    v32 = v0[8];
    sub_22C37A3DC();
    sub_22C36D5F8();

    __asm { BRAA            X5, X16 }
  }

  v35 = v0[8];

  v36 = v0[1];
  sub_22C36D5F8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C7B88CC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7B89C4()
{
  sub_22C369980();
  sub_22C3770B0(v0[8], &qword_27D9C0260, &unk_22C926740);
  v1 = v0[2];
  v2 = v0[8];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_22C7B8A44()
{
  sub_22C369980();
  sub_22C3770B0(*(v0 + 64), &qword_27D9C0260, &unk_22C926740);

  sub_22C369A24();
  v2 = *(v0 + 80);

  return v1();
}

void sub_22C7B8AE4()
{
  sub_22C7B8B80();
  if (v0 <= 0x3F)
  {
    sub_22C7B8BD0();
    if (v1 <= 0x3F)
    {
      sub_22C903E7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C7B8B80()
{
  if (!qword_281434870)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281434870);
    }
  }
}

void sub_22C7B8BD0()
{
  if (!qword_28142F9D8)
  {
    sub_22C3AC1A0(&qword_27D9C0230, qword_22C9266A8);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142F9D8);
    }
  }
}

uint64_t sub_22C7B8C34(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!*a1)
  {
    if (!v5)
    {

      goto LABEL_11;
    }

    v9 = *a2;
LABEL_8:

    return 0;
  }

  if (!v5)
  {
    v10 = *a1;
    goto LABEL_8;
  }

  v6 = *a1;
  swift_bridgeObjectRetain_n();

  sub_22C7494C4(v4, v5);
  v8 = v7;
  swift_bridgeObjectRelease_n();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v12 = a2[1];
  if (!a1[1])
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = a2[1];

  sub_22C5DB014();
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v16 = *(type metadata accessor for RetrievedToolContext() + 24);

  return MEMORY[0x2821794F8](a1 + v16, a2 + v16);
}

uint64_t sub_22C7B8D68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_task_alloc();
  sub_22C36CC90();
  *(v2 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_22C382AF4;

  return sub_22C7B6D0C(a1, v5, v4);
}

uint64_t sub_22C7B8E64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C7B8EAC()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[14];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[8];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_22C903E4C();
}

uint64_t sub_22C7B8EE4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000036, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

_BYTE *storeEnumTagSinglePayload for ProtocolResolver(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C7B8FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_22C36BB08();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C7B8FE4()
{
  sub_22C36FB38();
  v1 = v0[3];
  v2 = *(v0[5] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[7] = 0;
  v0[8] = v3;
  v0[6] = v2;
  if (v2)
  {
    v4 = sub_22C9093BC();
    sub_22C369914(v4);
    v6 = *(v5 + 80);
    v14 = v1 + *v1;
    v7 = v1[1];
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v8;
    *v8 = v9;
    sub_22C37B3FC(v8);
    sub_22C7C29F0();

    return v10();
  }

  else
  {
    sub_22C36D5E0();
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_22C7B9148()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 64);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7B9248()
{
  v2 = v1[2];
  v3 = v1[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v1[8];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = *(v5 + 16);
    sub_22C591324();
    v5 = v25;
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  sub_22C7C2A88();
  if (v9)
  {
    sub_22C591324();
    v8 = v26;
  }

  *(v8 + 16) = v0;
  *(v8 + 8 * v7 + 32) = v2;
  v10 = v1[6];
  v11 = v1[7] + 1;
  v1[7] = v11;
  v1[8] = v8;
  if (v11 == v10)
  {
    sub_22C36D5E0();

    return v12(v13);
  }

  else
  {
    v15 = v1[5];
    v16 = v1[3];
    v17 = sub_22C9093BC();
    sub_22C3699B8(v17);
    v20 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v19 + 72) * v11;
    v27 = (v16 + *v16);
    v21 = v16[1];
    swift_task_alloc();
    sub_22C36CC90();
    v1[9] = v22;
    *v22 = v23;
    sub_22C37B3FC();

    return (v27)(v1 + 2, v20);
  }
}

uint64_t sub_22C7B943C()
{
  sub_22C369980();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_22C902D0C();
  v0[5] = v4;
  sub_22C3699B8(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7B94E8()
{
  sub_22C36FB38();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 32) + 16);
  v4 = MEMORY[0x277D84F90];
  *(v0 + 72) = 0;
  *(v0 + 80) = v4;
  *(v0 + 64) = v3;
  if (v3)
  {
    *(v0 + 112) = *(v1 + 80);
    *(v0 + 88) = *(v1 + 72);
    v13 = v2 + *v2;
    v5 = v2[1];
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 96) = v6;
    *v6 = v7;
    sub_22C375B58(v6);
    sub_22C7C29F0();

    return v8();
  }

  else
  {
    v10 = *(v0 + 56);

    sub_22C36D5E0();
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22C7B9638()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7B9738()
{
  sub_22C36FB38();
  v2 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 80);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C36C44C();
    sub_22C592484();
    v4 = v28;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  sub_22C7C2A88();
  if (v7)
  {
    sub_22C7C29B0();
    sub_22C592484();
    v4 = v29;
  }

  v8 = *(v1 + 88);
  v9 = *(v1 + 112);
  v11 = *(v1 + 48);
  v10 = *(v1 + 56);
  v12 = *(v1 + 40);
  *(v4 + 16) = v0;
  (*(v11 + 32))(v4 + ((v9 + 32) & ~v9) + v8 * v6, v10, v12);
  v13 = *(v1 + 64);
  v14 = *(v1 + 72) + 1;
  *(v1 + 72) = v14;
  *(v1 + 80) = v4;
  if (v14 == v13)
  {
    v15 = *(v1 + 56);

    sub_22C36D5E0();
    v16 = sub_22C792134();

    return v17(v16);
  }

  else
  {
    v19 = *(v1 + 32);
    v20 = *(v1 + 16);
    *(v1 + 112) = *(*(v1 + 48) + 80);
    sub_22C7C2A74();
    *(v1 + 88) = v21;
    sub_22C372480(v22);
    v24 = *(v23 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v1 + 96) = v25;
    *v25 = v26;
    sub_22C375B58(v25);
    sub_22C38A114();

    return v27();
  }
}

uint64_t sub_22C7B98BC()
{
  sub_22C369980();
  v1 = *(v0 + 56);

  sub_22C369A24();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_22C7B9918()
{
  sub_22C369980();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = sub_22C906D2C();
  v0[6] = v4;
  sub_22C3699B8(v4);
  v0[7] = v5;
  v7 = *(v6 + 64);
  v0[8] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7B99C4()
{
  sub_22C36FB38();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v0 + 120) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v1 + 56);
  *(v0 + 72) = MEMORY[0x277D84F90];

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 80) = v6;
    *(v0 + 88) = v8;
    v10 = *(*(v7 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 96) = v10;
    *(v0 + 16) = v10;

    sub_22C37FA44();
    v11 = *(v2 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 104) = v12;
    *v12 = v13;
    sub_22C3817F8(v12);
    sub_22C38A114();

    return v14();
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 64);

    sub_22C36D5E0();
    v18 = MEMORY[0x277D84F90];

    return v17(v18);
  }
}

uint64_t sub_22C7B9B58()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    v9 = *(v3 + 72);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7B9C58()
{
  v1 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    sub_22C36C44C();
    sub_22C59593C();
    v3 = v26;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_22C7C29B0();
    sub_22C59593C();
    v3 = v27;
  }

  v5 = *(v0 + 96);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  *(v3 + 16) = v4 + 1;
  (*(v7 + 32))(v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  *(v0 + 72) = v3;
  v11 = (v10 - 1) & v10;
  if (v11)
  {
    v12 = *(v0 + 40);
LABEL_10:
    *(v0 + 80) = v11;
    *(v0 + 88) = v9;
    v14 = *(v0 + 24);
    v15 = *(*(v12 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v11)))));
    *(v0 + 96) = v15;
    *(v0 + 16) = v15;

    sub_22C37FA44();
    v28 = v16;
    v17 = *(v14 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 104) = v18;
    *v18 = v19;
    v20 = sub_22C3817F8();

    return v28(v20, v0 + 16);
  }

  else
  {
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v13 >= (((1 << *(v0 + 120)) + 63) >> 6))
      {
        break;
      }

      v12 = *(v0 + 40);
      v11 = *(v12 + 8 * v13 + 56);
      ++v9;
      if (v11)
      {
        v9 = v13;
        goto LABEL_10;
      }
    }

    v22 = *(v0 + 64);
    v23 = *(v0 + 40);

    sub_22C36D5E0();
    v24 = sub_22C792134();

    return v25(v24);
  }
}

uint64_t sub_22C7B9E70()
{
  sub_22C369980();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];

  sub_22C369A24();
  v5 = v0[14];

  return v4();
}

uint64_t sub_22C7B9EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(type metadata accessor for RetrievedToolWithAttribution() - 8);
  v3[5] = v4;
  v5 = *(v4 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B9FA4, 0, 0);
}

uint64_t sub_22C7B9FA4()
{
  sub_22C36FB38();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 32) + 16);
  v4 = MEMORY[0x277D84F90];
  *(v0 + 64) = 0;
  *(v0 + 72) = v4;
  *(v0 + 56) = v3;
  if (v3)
  {
    *(v0 + 104) = *(v1 + 80);
    *(v0 + 80) = *(v1 + 72);
    v13 = v2 + *v2;
    v5 = v2[1];
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 88) = v6;
    *v6 = v7;
    sub_22C37B7A4(v6);
    sub_22C7C29F0();

    return v8();
  }

  else
  {
    v10 = *(v0 + 48);

    sub_22C36D5E0();
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22C7BA0F0()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    v9 = *(v3 + 72);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7BA1F0()
{
  sub_22C36FB38();
  v2 = *(v1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C36C44C();
    sub_22C595EE4();
    v4 = v26;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  sub_22C7C2A88();
  if (v7)
  {
    sub_22C7C29B0();
    sub_22C595EE4();
    v4 = v27;
  }

  v8 = *(v1 + 80);
  v9 = *(v1 + 104);
  v10 = *(v1 + 48);
  *(v4 + 16) = v0;
  sub_22C7C2730(v10, v4 + ((v9 + 32) & ~v9) + v8 * v6);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64) + 1;
  *(v1 + 64) = v12;
  *(v1 + 72) = v4;
  if (v12 == v11)
  {
    v13 = *(v1 + 48);

    sub_22C36D5E0();
    v14 = sub_22C792134();

    return v15(v14);
  }

  else
  {
    v17 = *(v1 + 32);
    v18 = *(v1 + 16);
    *(v1 + 104) = *(*(v1 + 40) + 80);
    sub_22C7C2A74();
    *(v1 + 80) = v19;
    sub_22C372480(v20);
    v22 = *(v21 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v1 + 88) = v23;
    *v23 = v24;
    sub_22C37B7A4(v23);
    sub_22C38A114();

    return v25();
  }
}

uint64_t sub_22C7BA374()
{
  sub_22C369980();
  v1 = *(v0 + 48);

  sub_22C369A24();
  v3 = *(v0 + 96);

  return v2();
}

void *sub_22C7BA3D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = sub_22C90384C();
  v5 = sub_22C369824(v109);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = v9 - v8;
  v111 = sub_22C9099FC();
  v11 = sub_22C369824(v111);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C3698F8(v15 - v14);
  v125 = sub_22C9036EC();
  v16 = sub_22C369824(v125);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v21 = v20 - v19;
  v124 = sub_22C908EAC();
  v22 = sub_22C369824(v124);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v123 = v26 - v25;
  v27 = type metadata accessor for RetrievedToolWithAttribution();
  v28 = sub_22C3699B8(v27);
  v113 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C9063DC();
  v36 = sub_22C369824(v35);
  v126 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v42 = v41 - v40;
  v43 = a1[10];
  v44 = a1[11];
  sub_22C374168(a1 + 7, v43);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v44 + 8))(&v131, inited, v43, v44);
  v129[0] = a1;
  v129[1] = a2;
  v129[2] = a3;
  v129[3] = a4;
  sub_22C3B4ED8();
  if (v121)
  {
    v47 = sub_22C3703C0();
    v48(v47);
    sub_22C36FF94(&v131);
    return a1;
  }

  a1 = v46;
  v120 = v34;
  v122 = v35;
  sub_22C90400C();

  v49 = sub_22C9063CC();
  v50 = sub_22C90AACC();

  if (!os_log_type_enabled(v49, v50))
  {

    (*(v126 + 8))(v42, v35);
    goto LABEL_27;
  }

  v102 = v50;
  v104 = v49;
  sub_22C37FE78();
  v51 = swift_slowAlloc();
  sub_22C36FE8C();
  v136 = swift_slowAlloc();
  *v51 = 136315394;
  *(v51 + 4) = sub_22C36F9F4(0xD000000000000058, 0x800000022C935830, &v136);
  v103 = v51;
  *(v51 + 12) = 2080;
  v52 = a1;
  v53 = a1[2];
  v54 = MEMORY[0x277D84F90];
  v55 = v122;
  v56 = v126;
  v105 = v52;
  if (!v53)
  {
    goto LABEL_26;
  }

  v101 = v42;
  v130 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v57 = *(v113 + 80);
  sub_22C36BA94();
  v59 = v52 + v58;
  v117 = *(v60 + 72);
  v114 = *MEMORY[0x277D1ECE0];
  v112 = *MEMORY[0x277D1ECE8];
  v108 = *MEMORY[0x277D1ECD8];
  v107 = *MEMORY[0x277D1ECD0];
  v106 = *MEMORY[0x277D1ECF8];
  v119 = v10;
  v61 = v120;
  do
  {
    sub_22C373A34();
    sub_22C7C2788(v59, v61);
    sub_22C90371C();
    sub_22C36BA4C(&v142);
    v62(v21, v125);
    sub_22C369908(&v141);
    if (v73)
    {
LABEL_8:
      v63 = sub_22C38293C(&v140);
      v64(v63);
      sub_22C36BA4C(&v139);
      v65 = sub_22C372FA4();
      v66(v65);
      v67 = sub_22C908E7C();
      v69 = v68;
      sub_22C36BA4C(&v138);
      v71 = v123;
      v72 = v124;
      goto LABEL_13;
    }

    sub_22C369908(&v137 + 4);
    if (v73)
    {
      v74 = sub_22C38293C(&v140);
      v75(v74);
      sub_22C36BA4C(v134);
      v76 = sub_22C372FA4();
      v77 = v111;
      v78(v76);
      v67 = sub_22C9099DC();
      v69 = v79;
      sub_22C36BA4C(v133);
      v71 = v110;
      goto LABEL_12;
    }

    sub_22C369908(v135);
    if (v84)
    {
      v86 = 1;
    }

    else
    {
      v86 = v85 == v107;
    }

    if (v86)
    {
      goto LABEL_8;
    }

    sub_22C369908(v132);
    if (v73)
    {
      v87 = sub_22C38293C(&v140);
      v88(v87);
      sub_22C36BA4C(v128);
      v77 = v109;
      v89(v10, v21, v109);
      v67 = sub_22C9037FC();
      v69 = v90;
      sub_22C36BA4C(v127);
LABEL_12:
      v72 = v77;
LABEL_13:
      v70(v71, v72);
      goto LABEL_14;
    }

    v91 = sub_22C38293C(v129);
    v92(v91);
    v67 = 0xD000000000000013;
    v69 = 0x800000022C935760;
LABEL_14:
    v61 = v120;
    sub_22C36B740();
    sub_22C7C27E0(v120, v80);
    v130 = v54;
    v82 = *(v54 + 16);
    v81 = *(v54 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_22C369AB0(v81);
      sub_22C3B5E2C();
      v61 = v120;
      v54 = v130;
    }

    *(v54 + 16) = v82 + 1;
    v83 = v54 + 16 * v82;
    *(v83 + 32) = v67;
    *(v83 + 40) = v69;
    v10 = v119;
    v59 += v117;
    --v53;
    v55 = v122;
    v56 = v126;
  }

  while (v53);
  v42 = v101;
LABEL_26:
  MEMORY[0x2318B7AD0](v54, MEMORY[0x277D837D0]);

  v93 = sub_22C36BA00();
  v96 = sub_22C36F9F4(v93, v94, v95);

  *(v103 + 14) = v96;
  _os_log_impl(&dword_22C366000, v104, v102, "%s optimizedTools: %s", v103, 0x16u);
  swift_arrayDestroy();
  v97 = sub_22C36D66C();
  MEMORY[0x2318B9880](v97);
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  (*(v56 + 8))(v42, v55);
  a1 = v105;
LABEL_27:
  v98 = sub_22C3703C0();
  v99(v98);
  sub_22C36FF94(&v131);
  return a1;
}

uint64_t sub_22C7BACB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_22C7BACF0(a2, a1, a3, a4, a6);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t sub_22C7BACF0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v278 = sub_22C90977C();
  v8 = sub_22C369824(v278);
  v253 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v277 = v13 - v12;
  v14 = sub_22C9037DC();
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C3698F8(v19 - v18);
  v20 = sub_22C90377C();
  v21 = sub_22C369914(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  sub_22C3698F8(v25 - v24);
  v255 = sub_22C9037EC();
  v26 = sub_22C369824(v255);
  v250 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v249 = v33;
  v34 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  sub_22C3698F8(v39);
  v247 = type metadata accessor for RetrievedToolWithAttribution();
  v40 = sub_22C36985C(v247);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  v279 = v44;
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  sub_22C3698F8(v47);
  v275 = sub_22C908EAC();
  v48 = sub_22C369824(v275);
  v280 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA64();
  sub_22C3698F8(v56);
  v264 = sub_22C9063DC();
  v57 = sub_22C369824(v264);
  v263 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA64();
  sub_22C3698F8(v66);
  v67 = sub_22C9036EC();
  v68 = sub_22C369824(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C369838();
  v75 = v74 - v73;
  v266 = sub_22C9099FC();
  v76 = sub_22C369824(v266);
  v265 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22C369838();
  v82 = v81 - v80;
  v83 = a1[10];
  v84 = a1[11];
  sub_22C374168(a1 + 7, v83);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v84 + 8))(&v284, inited, v83, v84);
  sub_22C90371C();
  v86 = v70[11];
  v87 = sub_22C377B94();
  if (v88(v87) == *MEMORY[0x277D1ECE8])
  {
    v240 = a2;
    v89 = v70[12];
    v90 = sub_22C377B94();
    v91(v90);
    (*(v265 + 32))(v82, v75, v266);
    sub_22C908A3C();
    sub_22C374168(v283, v283[3]);
    sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
    sub_22C369A48();
    v92 = sub_22C908D4C();
    sub_22C369824(v92);
    v94 = v93;
    v96 = *(v95 + 72);
    v97 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_22C90F800;
    v99 = (v98 + v97);
    *v99 = sub_22C9099DC();
    v99[1] = v100;
    (*(v94 + 104))(v99, *MEMORY[0x277D720F0], v92);
    sub_22C36BB08();
    v101 = sub_22C90667C();
    v102 = v82;
    if (v267)
    {
      sub_22C36DB14();
      sub_22C36EE3C();
      v103();

      sub_22C36FF94(v283);
    }

    else
    {
      v110 = v101;

      sub_22C36FF94(v283);
      sub_22C90400C();
      v111 = sub_22C9063CC();
      v112 = sub_22C90AACC();
      v274 = v82;
      if (os_log_type_enabled(v111, v112))
      {
        v239 = v112;
        sub_22C37FE78();
        v113 = swift_slowAlloc();
        sub_22C36FE8C();
        v283[0] = swift_slowAlloc();
        *v113 = 136315394;
        v114 = sub_22C36F9F4(0xD000000000000054, 0x800000022C935890, v283);
        sub_22C7C292C(v114);
        v115 = v110;
        v116 = *(v110 + 16);
        v117 = MEMORY[0x277D84F90];
        if (v116)
        {
          v237 = v113;
          v238 = v111;
          v282 = MEMORY[0x277D84F90];

          sub_22C3B5E2C();
          v117 = v282;
          v272 = *(v280 + 16);
          v118 = *(v280 + 80);
          sub_22C36BA94();
          v120 = v115 + v119;
          v270 = *(v121 + 56);
          v122 = (v121 - 8);
          v123 = v275;
          do
          {
            v272(v269, v120, v123);
            v123 = v275;
            v124 = sub_22C908E7C();
            v126 = v125;
            (*v122)(v269, v275);
            v128 = *(v282 + 16);
            v127 = *(v282 + 24);
            if (v128 >= v127 >> 1)
            {
              sub_22C369AB0(v127);
              sub_22C3B5E2C();
              v123 = v275;
            }

            *(v282 + 16) = v128 + 1;
            v129 = v282 + 16 * v128;
            *(v129 + 32) = v124;
            *(v129 + 40) = v126;
            v120 += v270;
            --v116;
          }

          while (v116);

          v102 = v274;
          v111 = v238;
          v113 = v237;
        }

        v130 = MEMORY[0x2318B7AD0](v117, MEMORY[0x277D837D0]);
        v132 = v131;

        v133 = sub_22C36F9F4(v130, v132, v283);

        *(v113 + 14) = v133;
        _os_log_impl(&dword_22C366000, v111, v239, "%s implementingTools: %s", v113, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v134 = *(v263 + 8);
      sub_22C38636C();
      v134();

      v135 = sub_22C36D264();
      v137 = sub_22C7BF4A4(v135, v136, a4);
      swift_bridgeObjectRelease_n();
      sub_22C90400C();

      v138 = sub_22C9063CC();
      v139 = sub_22C90AACC();
      v276 = v137;
      if (os_log_type_enabled(v138, v139))
      {
        sub_22C37FE78();
        v140 = swift_slowAlloc();
        sub_22C36FE8C();
        v283[0] = swift_slowAlloc();
        *v140 = 136315394;
        *(v140 + 4) = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
        *(v140 + 12) = 2080;
        v141 = sub_22C7BFC90(v137);
        v143 = v142;

        v144 = sub_22C36F9F4(v141, v143, v283);

        *(v140 + 14) = v144;
        v137 = v276;
        _os_log_impl(&dword_22C366000, v138, v139, "%s implementingTools post filtering: %s", v140, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      sub_22C3750EC();
      sub_22C38636C();
      v134();
      v145 = v240;
      v146 = v275;
      v147 = *(v137 + 16);
      if (v147 == 1)
      {
        sub_22C58AF70(v137, v257);
        if (sub_22C370B74(v257, 1, v275) != 1)
        {
          (*(v280 + 32))(v260, v257, v275);
          (*(v280 + 16))(v269, v260, v275);
          sub_22C90373C();
          sub_22C90374C();
          sub_22C90378C();
          sub_22C90379C();
          sub_22C90372C();
          sub_22C90400C();
          sub_22C373A34();
          v200 = v242;
          sub_22C7C2788(v240, v242);
          v201 = v259;
          v202 = v246;
          (*(v250 + 16))(v246, v249, v255);
          v203 = sub_22C9063CC();
          v204 = sub_22C90AABC();
          if (sub_22C7C2A58(v204))
          {
            sub_22C370220();
            v200 = swift_slowAlloc();
            v283[0] = swift_slowAlloc();
            *v200 = 136315650;
            v205 = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
            sub_22C7C29E0(v205);
            sub_22C7FE524();
            sub_22C386DDC();
            sub_22C36B740();
            sub_22C7C27E0(v242, v206);
            sub_22C382E0C();
            sub_22C792018();
            *(v200 + 14) = v242;
            *(v200 + 22) = 2080;
            v202 = v246;
            v201 = v246;
            sub_22C7FE524();
            sub_22C386DDC();
            v207 = sub_22C7C2984();
            v208(v207);
            sub_22C382E0C();
            sub_22C792018();
            *(v200 + 24) = v246;
            sub_22C7C29C0();
            _os_log_impl(v209, v210, v211, v212, v213, 0x20u);
            swift_arrayDestroy();
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            v214 = sub_22C36D66C();
            MEMORY[0x2318B9880](v214);
          }

          else
          {

            v231 = sub_22C7C2984();
            v232(v231);
            sub_22C36B740();
            sub_22C7C27E0(v242, v233);
          }

          sub_22C3750EC();
          v215 = sub_22C36C434();
          v216(v215);
          v217 = sub_22C7C2A00();
          v218(v217);
          sub_22C36DB14();
          sub_22C36EE3C();
          v234();
          sub_22C36EE18();
          (*(v250 + 32))(v201, v249, v202);

          *(v201 + *(v200 + 20)) = v203;
          goto LABEL_5;
        }

        sub_22C36DD28(v257, &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else if (!v147)
      {
        sub_22C90400C();
        sub_22C373A34();
        sub_22C7C2788(v240, v248);
        v148 = sub_22C9063CC();
        v149 = sub_22C90AABC();
        if (sub_22C7C2A58(v149))
        {
          sub_22C37FE78();
          v150 = swift_slowAlloc();
          sub_22C36FE8C();
          v283[0] = swift_slowAlloc();
          *v150 = 136315394;
          v151 = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
          sub_22C7C29E0(v151);
          v152 = sub_22C7FE524();
          v154 = v153;
          sub_22C36B740();
          sub_22C7C27E0(v248, v155);
          v156 = v152;
          v145 = v240;
          sub_22C36F9F4(v156, v154, v283);
          sub_22C792018();
          *(v150 + 14) = v248;
          sub_22C7C29C0();
          _os_log_impl(v157, v158, v159, v160, v161, 0x16u);
          swift_arrayDestroy();
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          v162 = sub_22C36D66C();
          MEMORY[0x2318B9880](v162);
        }

        else
        {

          sub_22C36B740();
          sub_22C7C27E0(v248, v197);
        }

        sub_22C3750EC();
        sub_22C38636C();
        v134();
        sub_22C36DB14();
        sub_22C36EE3C();
        v198();
        sub_22C373A34();
        sub_22C7C2788(v145, v199);

        goto LABEL_5;
      }

      v258 = v134;
      static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(a3, a4, v283);
      v271 = sub_22C3AE694(v283[0]);
      v273 = *(v137 + 16);
      v163 = v280;
      v261 = (v280 + 32);

      v164 = 0;
      v262 = MEMORY[0x277D84F90];
LABEL_24:
      v165 = v279;
      while (v273 != v164)
      {
        if (v164 >= *(v137 + 16))
        {
          __break(1u);
          return result;
        }

        v166 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v167 = *(v163 + 72);
        (*(v163 + 16))(v252, v137 + v166 + v167 * v164, v146);
        v168 = v146;
        sub_22C47FCDC();
        sub_22C9096FC();
        (*(v253 + 8))(v277, v278);
        v169 = sub_22C372FA4();
        v171 = sub_22C5E935C(v169, v170, v271);

        if (v171)
        {
          v173 = *v261;
          (*v261)(v256, v252, v168);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v175 = v262;
          v283[0] = v262;
          if (isUniquelyReferenced_nonNull_native)
          {
            v146 = v168;
            v176 = v173;
          }

          else
          {
            v176 = v173;
            sub_22C3B7AE0(0, *(v262 + 16) + 1, 1);
            v146 = v275;
            v175 = v283[0];
          }

          v178 = *(v175 + 16);
          v177 = *(v175 + 24);
          if (v178 >= v177 >> 1)
          {
            v179 = sub_22C369AB0(v177);
            sub_22C3B7AE0(v179, v178 + 1, 1);
            v146 = v275;
            v175 = v283[0];
          }

          ++v164;
          *(v175 + 16) = v178 + 1;
          v262 = v175;
          result = v176(v175 + v166 + v178 * v167, v256, v146);
          v102 = v274;
          v137 = v276;
          v163 = v280;
          goto LABEL_24;
        }

        sub_22C36BA4C(&v286);
        result = v172(v252, v168);
        ++v164;
        v102 = v274;
        v146 = v168;
        v137 = v276;
        v165 = v279;
        v163 = v280;
      }

      if (*(v262 + 16) == 1)
      {
        sub_22C58AF70(v262, v244);

        v180 = v251;
        if (sub_22C370B74(v244, 1, v146) != 1)
        {
          sub_22C36BA4C(&v285);
          v219 = v243;
          v220 = sub_22C377B94();
          v221(v220);
          (*(v280 + 16))(v269, v243, v146);
          sub_22C90373C();
          sub_22C90374C();
          sub_22C90378C();
          sub_22C90379C();
          sub_22C90372C();
          sub_22C90400C();
          sub_22C373A34();
          sub_22C7C2788(v240, v165);
          v222 = v250;
          v223 = v255;
          (*(v250 + 16))(v241, v245, v255);
          v224 = sub_22C9063CC();
          v225 = sub_22C90AABC();
          if (os_log_type_enabled(v224, v225))
          {
            sub_22C370220();
            v219 = swift_slowAlloc();
            v283[0] = swift_slowAlloc();
            *v219 = 136315650;
            *(v219 + 4) = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
            *(v219 + 12) = 2080;
            v281 = v225;
            sub_22C7FE524();
            sub_22C386DDC();
            sub_22C36B740();
            sub_22C7C27E0(v165, v226);
            sub_22C382E0C();
            sub_22C792018();
            *(v219 + 14) = v165;
            *(v219 + 22) = 2080;
            v225 = v241;
            sub_22C7FE524();
            sub_22C386DDC();
            (*(v250 + 8))(v241, v255);
            sub_22C382E0C();
            sub_22C792018();
            *(v219 + 24) = v241;
            _os_log_impl(&dword_22C366000, v224, v281, "%s Only one app-directed tool for protocol: %s, return it: %s", v219, 0x20u);
            swift_arrayDestroy();
            v222 = v250;
            v223 = v255;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            v227 = sub_22C36D66C();
            MEMORY[0x2318B9880](v227);
          }

          else
          {

            (*(v250 + 8))(v241, v255);
            sub_22C36B740();
            sub_22C7C27E0(v165, v235);
          }

          sub_22C3750EC();
          v228 = sub_22C36C434();
          v229(v228);
          sub_22C36BA4C(&v286);
          v230(v243, v275);
          sub_22C36DB14();
          sub_22C36EE3C();
          v236();
          sub_22C36EE18();
          (*(v222 + 32))(v225, v245, v223);

          *(v225 + *(v219 + 20)) = v224;
          goto LABEL_5;
        }

        sub_22C36DD28(v244, &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else
      {

        v180 = v251;
      }

      sub_22C90400C();
      sub_22C373A34();
      sub_22C7C2788(v240, v180);
      v181 = sub_22C9063CC();
      v182 = sub_22C90AABC();
      if (sub_22C7C2A58(v182))
      {
        sub_22C37FE78();
        v183 = swift_slowAlloc();
        sub_22C36FE8C();
        v283[0] = swift_slowAlloc();
        *v183 = 136315394;
        v184 = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
        sub_22C7C29E0(v184);
        sub_22C7FE524();
        sub_22C386DDC();
        sub_22C36B740();
        sub_22C7C27E0(v180, v185);
        sub_22C382E0C();
        sub_22C792018();
        *(v183 + 14) = v180;
        sub_22C7C29C0();
        _os_log_impl(v186, v187, v188, v189, v190, 0x16u);
        swift_arrayDestroy();
        v191 = sub_22C3816C4();
        MEMORY[0x2318B9880](v191);
        v192 = sub_22C36D66C();
        MEMORY[0x2318B9880](v192);

        sub_22C3750EC();
        v193 = sub_22C36C434();
        v194(v193);
        (*(v265 + 8))(v274, v266);
      }

      else
      {

        sub_22C36B740();
        sub_22C7C27E0(v180, v195);
        sub_22C3750EC();
        sub_22C38636C();
        v258();
        (*(v265 + 8))(v102, v266);
      }

      sub_22C373A34();
      sub_22C7C2788(v240, v196);
    }
  }

  else
  {
    v104 = v70[1];
    v105 = sub_22C377B94();
    v106(v105);
    sub_22C373A34();
    sub_22C7C2788(a2, a5);
  }

LABEL_5:
  v107 = sub_22C3703C0();
  v108(v107);
  return sub_22C36FF94(&v284);
}