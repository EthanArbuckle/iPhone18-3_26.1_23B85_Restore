void sub_2588949A4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v113 = a2;
  v3 = type metadata accessor for EditHeightCellView();
  v145 = v3;
  v128 = *(v3 - 8);
  v4 = *(v128 + 8);
  MEMORY[0x28223BE20](v3);
  v129 = v5;
  v141 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2588BC318();
  v6 = *(v144 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v144);
  v9 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A0FC();
  v112 = v10;
  v111 = *(v10 - 8);
  v11 = *(v111 + 64);
  MEMORY[0x28223BE20](v10);
  v142 = v12;
  v134 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = (v102 - v134);
  sub_25889A1E8(0);
  v140 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v133 = v15;
  v132 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = (v102 - v132);
  sub_25889A2B4();
  v139 = v16;
  v148 = *(v16 - 8);
  v17 = *(v148 + 64);
  MEMORY[0x28223BE20](v16);
  v131 = v18;
  v130 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v102 - v130;
  sub_25889A388();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v126 = v24;
  v125 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v102 - v125;
  v26 = sub_2588BC688();
  v137 = v27;
  v138 = v26;
  LODWORD(v135) = v28;
  v136 = v29;
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v123 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v124 = v31;
  v32 = *(v3 + 52);
  v33 = a1;
  v149 = a1;
  v34 = a1 + v32;
  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v146 = v35;
  v114 = v34;
  sub_2588BD2E8();
  v150 = v33;
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v37 = v36;
  sub_25889A470();
  v39 = v38;
  v40 = sub_25889A960(&qword_27F95D490, &qword_27F95D498);
  v120 = sub_25889A72C();
  v121 = v40;
  v122 = v39;
  v147 = v37;
  sub_2588BD398();
  sub_2588BC308();
  v41 = sub_25889B07C(&qword_27F9611C8, sub_25889A388);
  v42 = v19;
  v43 = v144;
  sub_2588BCE88();
  v44 = *(v6 + 8);
  v137 = v9;
  v138 = v6 + 8;
  v45 = v9;
  v46 = v43;
  v135 = v44;
  v44(v45, v43);
  v47 = *(v22 + 8);
  v136 = v22 + 8;
  v119 = v47;
  v47(v25, v21);
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v118 = v48;
  v49 = swift_allocObject();
  v117 = xmmword_2588BFF50;
  *(v49 + 16) = xmmword_2588BFF50;
  v50 = (v149 + *(v145 + 8));
  v51 = v50[1];
  v116 = *v50;
  *(v49 + 32) = v116;
  *(v49 + 40) = v51;
  *(v49 + 48) = 0x6B63695074656546;
  *(v49 + 56) = 0xEA00000000007265;
  v115 = v51;
  swift_bridgeObjectRetain_n();
  v52 = sub_2588BD9A8();

  v53 = HKUIJoinStringsForAutomationIdentifier();

  if (v53)
  {
    sub_2588BD8A8();

    v110 = v21;
    v151 = v21;
    v152 = v46;
    v153 = v41;
    v154 = MEMORY[0x277CDDB70];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v127;
    v56 = v139;
    v109 = OpaqueTypeConformance2;
    sub_2588BCFB8();

    v57 = *(v148 + 8);
    v148 += 8;
    v108 = v57;
    v58 = v57(v42, v56);
    v59 = *(*(v147 - 8) + 64);
    MEMORY[0x28223BE20](v58);
    v107 = v60;
    v103 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
    v61 = v102 - v103;
    sub_2588BD2C8();
    v62 = v141;
    sub_258890D38(v149, v141, type metadata accessor for EditHeightCellView);
    v63 = (v128[80] + 16) & ~v128[80];
    v105 = v128[80];
    v104 = v129 + v63;
    v64 = swift_allocObject();
    v114 = v63;
    sub_258899E1C(v62, v64 + v63);
    v65 = sub_25889A830();
    v66 = sub_25889A960(&qword_27F9611D8, &qword_27F9611E0);
    v106 = v65;
    v102[1] = v66;
    sub_2588BD118();

    sub_258890E8C(v61, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v67 = sub_25889AB30(v55, sub_25889A1E8);
    v129 = v102;
    v68 = MEMORY[0x28223BE20](v67);
    v128 = (v102 - v134);
    v127 = v102;
    v69 = MEMORY[0x28223BE20](v68);
    v132 = (v102 - v132);
    v102[0] = v102;
    v70 = MEMORY[0x28223BE20](v69);
    v71 = v102 - v130;
    v134 = v102;
    MEMORY[0x28223BE20](v70);
    v72 = v102 - v125;
    v73 = sub_2588BC688();
    MEMORY[0x28223BE20](v73);
    v133 = v41;
    v145 = v149 + *(v145 + 12);
    v74 = sub_2588BD2E8();
    MEMORY[0x28223BE20](v74);
    sub_2588BD398();
    v75 = v137;
    sub_2588BC308();
    v76 = v110;
    v77 = v144;
    sub_2588BCE88();
    v135(v75, v77);
    v119(v72, v76);
    v78 = swift_allocObject();
    *(v78 + 16) = v117;
    v79 = v115;
    *(v78 + 32) = v116;
    *(v78 + 40) = v79;
    strcpy((v78 + 48), "InchesPicker");
    *(v78 + 61) = 0;
    *(v78 + 62) = -5120;
    v80 = sub_2588BD9A8();

    v81 = HKUIJoinStringsForAutomationIdentifier();

    if (v81)
    {
      sub_2588BD8A8();

      v82 = v132;
      v83 = v139;
      sub_2588BCFB8();

      v84 = v108(v71, v83);
      MEMORY[0x28223BE20](v84);
      v85 = v102 - v103;
      sub_2588BD2C8();
      v86 = v141;
      sub_258890D38(v149, v141, type metadata accessor for EditHeightCellView);
      v87 = swift_allocObject();
      sub_258899E1C(v86, v87 + v114);
      v88 = v128;
      sub_2588BD118();

      sub_258890E8C(v85, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
      v89 = sub_25889AB30(v82, sub_25889A1E8);
      v149 = v102;
      v90 = v142;
      MEMORY[0x28223BE20](v89);
      v91 = v102 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
      v92 = v111;
      v93 = *(v111 + 16);
      v94 = v143;
      v95 = v112;
      v96 = v93(v91, v143, v112);
      LOBYTE(v151) = 1;
      MEMORY[0x28223BE20](v96);
      v93(v91, v88, v95);
      v97 = v113;
      v93(v113, v91, v95);
      sub_25889A090();
      v99 = &v97[*(v98 + 48)];
      v100 = v151;
      *v99 = 0;
      v99[8] = v100;
      v93(&v97[*(v98 + 64)], v91, v95);
      v101 = *(v92 + 8);
      v101(v88, v95);
      v101(v94, v95);
      v101(v91, v95);
      v101(v91, v95);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2588958FC(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v7 = *v5;
  v6 = v5[1];
  v22 = v7;
  v23 = v6;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v8 = [objc_opt_self() feet];
  if (qword_27F95D058 != -1)
  {
    swift_once();
  }

  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  __swift_project_value_buffer(v9, qword_27F969778);
  sub_2588BB688();
  v12 = v11;
  if (qword_27F95D060 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F969790);
  sub_2588BB688();
  v14 = sub_2587BBC88(v8, v12, v13);

  v26 = v14;
  swift_getKeyPath();
  sub_258890D38(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_258899E1C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25889A568(0, &qword_27F9611A8, MEMORY[0x277D83940]);
  sub_25889A5D8();
  sub_25889A6B8();
  sub_25889AC88(&qword_27F95D498, &qword_27F95D480, MEMORY[0x28220B528]);
  sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
  v18 = v17;
  v19 = sub_25889A960(&qword_27F95D490, &qword_27F95D498);
  v22 = MEMORY[0x277CE0BD8];
  v23 = v18;
  v24 = MEMORY[0x277CE0BC8];
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4B8();
}

uint64_t sub_258895CA8()
{
  v1 = v0;
  v2 = sub_2588BBAC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25888FB1C(v6);
  v7 = sub_2588BBA58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBA68();
  v11 = (*(v3 + 8))(v6, v2);
  MEMORY[0x28223BE20](v11);
  sub_2588BBA38();
  sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100]);
  v12 = sub_2588BD7D8();
  v13 = *(v8 + 8);
  v14 = v13(&v66 - v10, v7);
  if (v12)
  {
    v13(&v66 - v10, v7);
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v14);
  sub_2588BBA28();
  v15 = sub_2588BD7D8();
  v13(&v66 - v10, v7);
  v13(&v66 - v10, v7);
  if (v15)
  {
LABEL_4:
    sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    v20 = MEMORY[0x28223BE20](v16);
    v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    v77 = &v66 - v21;
    v79 = &v66;
    MEMORY[0x28223BE20](v20);
    sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
    v78 = &v66;
    v74 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v22 - 8);
    v23 = v1;
    v72 = v24;
    v25 = (&v66 - v24);
    v73 = type metadata accessor for EditHeightCellView();
    v26 = v73[13];
    sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    v75 = v23;
    sub_2588BD2C8();
    v76 = v18;
    v27 = *(v18 + 48);
    v28 = v27(v25, 1, v17);
    if (v28)
    {
      return sub_258890E8C(v25, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    }

    v71 = &v66;
    v68 = &v66;
    MEMORY[0x28223BE20](v28);
    v30 = v76;
    (*(v76 + 16))(&v66 - v21, v25, v17);
    sub_258890E8C(v25, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v67 = objc_opt_self();
    v31 = [v67 inches];
    sub_2588BB6B8();

    v69 = *(v30 + 8);
    v70 = v30 + 8;
    v69(&v66 - v21, v17);
    v78 = *(v30 + 32);
    v32 = (v78)(v77, &v66 - v21, v17);
    v79 = &v66;
    v33 = MEMORY[0x28223BE20](v32);
    MEMORY[0x28223BE20](v33);
    v34 = (&v66 - v72);
    v35 = v75 + v73[12];
    sub_2588BD2C8();
    if (v27(v34, 1, v17) == 1)
    {
      v69(v77, v17);
      return sub_258890E8C(v34, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    }

    else
    {
      v49 = (v78)(&v66 - v21, v34, v17);
      v78 = &v66;
      MEMORY[0x28223BE20](v49);
      sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
      v50 = v77;
      v51 = sub_2588BB6A8();
      v72 = &v66;
      v52 = v74;
      MEMORY[0x28223BE20](v51);
      v53 = &v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = [v67 inches];
      sub_2588BB6B8();

      v55 = (*(v76 + 56))(v53, 0, 1, v17);
      v56 = v73[6];
      MEMORY[0x28223BE20](v55);
      v57 = MEMORY[0x277D83D88];
      sub_258890E1C(v53, v53, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
      sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
      sub_2588BD438();
      sub_258890E8C(v53, &qword_27F95D478, v57, sub_25889A568);
      v58 = v69;
      v69(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      v58(&v66 - v21, v17);
      return (v58)(v50, v17);
    }
  }

  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v66 - v40;
  v42 = type metadata accessor for EditHeightCellView();
  v43 = *(v42 + 44);
  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = (*(v46 + 48))(v41, 1, v44);
  if (v47)
  {
    sub_258890E8C(v41, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v48 = 1;
  }

  else
  {
    v79 = &v66;
    v59 = *(v46 + 64);
    MEMORY[0x28223BE20](v47);
    v61 = &v66 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v61, v41, v45);
    sub_258890E8C(v41, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v62 = [objc_opt_self() centimeters];
    sub_2588BB6B8();

    (*(v46 + 8))(v61, v45);
    v48 = 0;
  }

  v63 = (*(v46 + 56))(v39, v48, 1, v45);
  v64 = *(v42 + 24);
  MEMORY[0x28223BE20](v63);
  v65 = MEMORY[0x277D83D88];
  sub_258890E1C(v39, &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  return sub_258890E8C(v39, &qword_27F95D478, v65, sub_25889A568);
}

uint64_t sub_258896894(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v7 = *v5;
  v6 = v5[1];
  v22 = v7;
  v23 = v6;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v8 = [objc_opt_self() inches];
  if (qword_27F95D048 != -1)
  {
    swift_once();
  }

  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  __swift_project_value_buffer(v9, qword_27F969748);
  sub_2588BB688();
  v12 = v11;
  if (qword_27F95D050 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F969760);
  sub_2588BB688();
  v14 = sub_2587BBC88(v8, v12, v13);

  v26 = v14;
  swift_getKeyPath();
  sub_258890D38(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_258899E1C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25889A568(0, &qword_27F9611A8, MEMORY[0x277D83940]);
  sub_25889A5D8();
  sub_25889A6B8();
  sub_25889AC88(&qword_27F95D498, &qword_27F95D480, MEMORY[0x28220B528]);
  sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
  v18 = v17;
  v19 = sub_25889A960(&qword_27F95D490, &qword_27F95D498);
  v22 = MEMORY[0x277CE0BD8];
  v23 = v18;
  v24 = MEMORY[0x277CE0BC8];
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4B8();
}

void sub_258896C40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v44 = MEMORY[0x28220B4E8];
  sub_258890CC8(0, &qword_27F960F88, MEMORY[0x28220B4E8]);
  v45 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v44 - v5;
  sub_258890CC8(0, &qword_27F960F90, MEMORY[0x28220B4D0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  sub_2588BB698();
  sub_25889AB9C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889AC20(0, &qword_27F960FA0, sub_25888CDE8, MEMORY[0x277D839F8], MEMORY[0x28220BC90]);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_258890CC8(0, &qword_27F95E848, MEMORY[0x28220BCD8]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v44 - v22;
  sub_2588BB898();
  sub_2588BB648();
  (*(v20 + 8))(v23, v19);
  sub_25889B0C4(v16, sub_25889AB9C);
  (*(v9 + 8))(v12, v8);
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v25 = v24;
  sub_25889AC88(&qword_27F960FB0, &qword_27F960F88, v44);
  v26 = v45;
  v27 = v46;
  sub_2588BB6C8();
  (*(v3 + 8))(v6, v26);
  sub_25878F648();
  v28 = sub_2588BCDF8();
  v30 = v29;
  LOBYTE(v6) = v31;
  v33 = v32;
  v34 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v44 - v37;
  v39 = *(v25 - 8);
  (*(v39 + 16))(&v44 - v37, v27, v25);
  (*(v39 + 56))(v38, 0, 1, v25);
  sub_25889ACCC(0, &qword_27F95D468, sub_2587A9D80);
  v41 = v47;
  v42 = v47 + *(v40 + 36);
  sub_25889B00C(v38, v42, &qword_27F95D478, v34, sub_25889A568);
  sub_2587A9D80();
  *(v42 + *(v43 + 36)) = 1;
  *v41 = v28;
  *(v41 + 8) = v30;
  *(v41 + 16) = v6 & 1;
  *(v41 + 24) = v33;
}

uint64_t sub_258897148(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v7 = *v5;
  v6 = v5[1];
  v22 = v7;
  v23 = v6;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v8 = qword_27F9696A8;
  if (qword_27F95D030 != -1)
  {
    swift_once();
  }

  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  __swift_project_value_buffer(v9, qword_27F969700);
  sub_2588BB688();
  v12 = v11;
  if (qword_27F95D040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F969730);
  sub_2588BB688();
  v14 = sub_2587BBC88(v8, v12, v13);

  v26 = v14;
  swift_getKeyPath();
  sub_258890D38(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_258899E1C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25889A568(0, &qword_27F9611A8, MEMORY[0x277D83940]);
  sub_25889A5D8();
  sub_25889A6B8();
  sub_25889AC88(&qword_27F95D498, &qword_27F95D480, MEMORY[0x28220B528]);
  sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
  v18 = v17;
  v19 = sub_25889A960(&qword_27F95D490, &qword_27F95D498);
  v22 = MEMORY[0x277CE0BD8];
  v23 = v18;
  v24 = MEMORY[0x277CE0BC8];
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4B8();
}

void sub_258897504(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for EditHeightCellView() + 20);
  v6 = v5 + *(type metadata accessor for MedicalIDBiometricsViewModel() + 28);
  v26[0] = sub_2587F21C4(a1);
  v26[1] = v7;
  sub_25878F648();
  v8 = sub_2588BCDF8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v26 - v18;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v21 = v20;
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, a1, v20);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_25889ACCC(0, &qword_27F95D468, sub_2587A9D80);
  v24 = a3 + *(v23 + 36);
  sub_25889B00C(v19, v24, &qword_27F95D478, v15, sub_25889A568);
  sub_2587A9D80();
  *(v24 + *(v25 + 36)) = 1;
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12 & 1;
  *(a3 + 24) = v14;
}

uint64_t sub_258897708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_25889AED0(0, &qword_27F961238, sub_258899560, MEMORY[0x277CE0330]);
  v38[2] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v38 - v5;
  sub_258899560(0);
  v38[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889952C(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v39 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v38 - v15;
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v38[1] = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v38 - v22;
  sub_258897C64();
  v24 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v38 - v27;
  v29 = *(type metadata accessor for EditHeightCellView() + 24);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v31 = (*(*(v30 - 8) + 48))(v28, 1, v30);
  sub_258890E8C(v28, &qword_27F95D478, v24, sub_25889A568);
  if (v31 == 1)
  {
    sub_2588985DC();
    sub_2588376C4(v21, v6);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961240, sub_258899560);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889AF60(v21);
  }

  else
  {
    *v10 = sub_2588BC608();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_25889B124(0, &qword_27F961248, sub_258899630);
    sub_258897DF4(a1, &v10[*(v32 + 44)]);
    sub_258890D38(v10, v6, sub_258899560);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961240, sub_258899560);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889B0C4(v10, sub_258899560);
  }

  sub_2588376C4(v23, v21);
  v33 = v39;
  sub_258890D38(v16, v39, sub_25889952C);
  v34 = v40;
  sub_2588376C4(v21, v40);
  sub_258899498();
  v36 = v34 + *(v35 + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_258890D38(v33, v34 + *(v35 + 64), sub_25889952C);
  sub_25889B0C4(v16, sub_25889952C);
  sub_25889AF60(v23);
  sub_25889B0C4(v33, sub_25889952C);
  return sub_25889AF60(v21);
}

void sub_258897C64()
{
  if (qword_27F95D110 != -1)
  {
    swift_once();
  }

  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588BFF50;
  v2 = (v0 + *(type metadata accessor for EditHeightCellView() + 32));
  v3 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = 0x656C746954;
  *(v1 + 56) = 0xE500000000000000;

  v4 = sub_2588BD9A8();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258897DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for EditHeightCellView();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2587F9F84();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_2588980D4(&v25 - v10);
  v12 = a1 + *(v3 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v29 = v13;
  v30 = v14;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v28 == 1)
  {
    v19 = (a1 + *(v3 + 20));
    v15 = *v19;
    v16 = v19[1];
    sub_258890D38(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
    v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v18 = swift_allocObject();
    sub_258899E1C(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v20);
    swift_bridgeObjectRetain_n();

    v17 = sub_25889B88C;
  }

  sub_258890D38(v11, v9, sub_2587F9F84);
  v21 = v27;
  sub_258890D38(v9, v27, sub_2587F9F84);
  sub_258899664();
  v23 = (v21 + *(v22 + 48));
  sub_2588477DC(v15, v16);
  sub_258847820(v15, v16);
  *v23 = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  sub_25889B0C4(v11, sub_2587F9F84);
  sub_258847820(v15, v16);
  return sub_25889B0C4(v9, sub_2587F9F84);
}

void sub_2588980D4(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v46 - v7;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v13;
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for EditHeightCellView();
  v19 = *(v18 + 24);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v20 = v2;
  MEMORY[0x259C8C5A0]();
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_258890E8C(v17, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    (*(v5 + 56))(v54, 1, 1, v4);
  }

  else
  {
    v49 = v8;
    v50 = v5;
    v51 = v4;
    v47 = v11;
    v48 = v10;
    v21 = v53;
    (*(v11 + 32))(v53, v17, v10);
    v22 = *(v18 + 20);
    v52 = v20;
    v23 = v20 + v22 + *(type metadata accessor for MedicalIDBiometricsViewModel() + 28);
    v55 = sub_2587F21C4(v21);
    v56 = v24;
    sub_25878F648();
    v25 = sub_2588BCDF8();
    v27 = v26;
    v29 = v28;
    v55 = sub_2588BD158();
    v30 = v18;
    v31 = sub_2588BCD98();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_2587B1CF8(v25, v27, v29 & 1);

    v38 = v31;

    v55 = v31;
    v56 = v33;
    v57 = v35 & 1;
    v58 = v37;
    sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2588BFF50;
    v40 = (v52 + *(v30 + 32));
    v41 = v40[1];
    *(v39 + 32) = *v40;
    *(v39 + 40) = v41;
    *(v39 + 48) = 0x65756C6156;
    *(v39 + 56) = 0xE500000000000000;

    v42 = sub_2588BD9A8();

    v43 = HKUIJoinStringsForAutomationIdentifier();

    if (v43)
    {
      sub_2588BD8A8();

      v44 = v49;
      sub_2588BCFB8();

      sub_2587B1CF8(v38, v33, v35 & 1);

      (*(v47 + 8))(v53, v48);
      v45 = v54;
      sub_25889B00C(v44, v54, &qword_27F95E3B0, MEMORY[0x277CDE470], sub_25889ACCC);
      (*(v50 + 56))(v45, 0, 1, v51);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2588985DC()
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BCDE8();
  v4 = v3;
  v6 = v5;
  sub_2588BD158();
  v7 = sub_2588BCD98();
  v9 = v8;
  v11 = v10;
  sub_2587B1CF8(v2, v4, v6 & 1);

  v12 = v11 & 1;
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2588BFF50;
  v14 = (v0 + *(type metadata accessor for EditHeightCellView() + 32));
  v15 = v14[1];
  *(v13 + 32) = *v14;
  *(v13 + 40) = v15;
  *(v13 + 48) = 6579265;
  *(v13 + 56) = 0xE300000000000000;

  v16 = sub_2588BD9A8();

  v17 = HKUIJoinStringsForAutomationIdentifier();

  if (v17)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v7, v9, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258898840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_25889AED0(0, &qword_27F961218, sub_2588998D0, MEMORY[0x277CE0330]);
  v37[2] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - v5;
  sub_2588998D0();
  v37[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889989C(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v38 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v37[1] = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v37 - v22;
  sub_258897C64();
  v24 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v37 - v27;
  v29 = *(type metadata accessor for EditHeightCellView() + 24);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v31 = (*(*(v30 - 8) + 48))(v28, 1, v30);
  sub_258890E8C(v28, &qword_27F95D478, v24, sub_25889A568);
  if (v31 == 1)
  {
    sub_2588985DC();
    sub_2588376C4(v21, v6);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961220, sub_2588998D0);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889AF60(v21);
  }

  else
  {
    *v10 = sub_2588BC608();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_25889B124(0, &qword_27F961228, sub_258899964);
    sub_258898D88(a1, &v10[*(v32 + 44)]);
    sub_258890D38(v10, v6, sub_2588998D0);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961220, sub_2588998D0);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889B0C4(v10, sub_2588998D0);
  }

  sub_2588376C4(v23, v21);
  v33 = v38;
  sub_258890D38(v16, v38, sub_25889989C);
  v34 = v39;
  sub_2588376C4(v21, v39);
  sub_258899810();
  sub_258890D38(v33, v34 + *(v35 + 48), sub_25889989C);
  sub_25889B0C4(v16, sub_25889989C);
  sub_25889AF60(v23);
  sub_25889B0C4(v33, sub_25889989C);
  return sub_25889AF60(v21);
}

uint64_t sub_258898D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditHeightCellView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2587F9F84();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_2588980D4(&v24 - v13);
  v15 = (a1 + *(v5 + 28));
  v17 = *v15;
  v16 = v15[1];
  sub_258890D38(a1, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_258899E1C(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_258890D38(v14, v12, sub_2587F9F84);
  sub_258890D38(v12, a2, sub_2587F9F84);
  sub_258899998();
  v21 = a2 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (a2 + *(v20 + 64));
  *v22 = v17;
  v22[1] = v16;
  v22[2] = sub_25889AFD8;
  v22[3] = v19;
  swift_bridgeObjectRetain_n();

  sub_25889B0C4(v14, sub_2587F9F84);

  return sub_25889B0C4(v12, sub_2587F9F84);
}

uint64_t sub_258898FD0(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(a1 + 8);
    a1 = (*a1)();
  }

  MEMORY[0x28223BE20](a1);
  sub_2588BD5F8();
  sub_2588BC0D8();
}

uint64_t sub_258899074(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView();
  v3 = (a1 + *(v2 + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  v14[0] = v4;
  v15 = v5;
  v16 = 0;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  v6 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v11 = (*(*(v10 - 8) + 56))(&v14[-v9], 1, 1, v10);
  v12 = *(v2 + 24);
  MEMORY[0x28223BE20](v11);
  sub_258890E1C(&v14[-v9], &v14[-v9], &qword_27F95D478, v6, sub_25889A568);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  return sub_258890E8C(&v14[-v9], &qword_27F95D478, v6, sub_25889A568);
}

void sub_258899288()
{
  if (!qword_27F961078)
  {
    sub_258899328();
    sub_25889AC20(255, &qword_27F95FA10, sub_2587A7B40, MEMORY[0x277CE14A8], MEMORY[0x277CE0468]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961078);
    }
  }
}

void sub_258899328()
{
  if (!qword_27F961080)
  {
    sub_258899428(255);
    sub_25889A230(255, &qword_27F9610D0, sub_258899748, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_25889B07C(&qword_27F961120, sub_258899428);
    sub_258899A08();
    v0 = type metadata accessor for MedicalIDAXLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961080);
    }
  }
}

void sub_258899498()
{
  if (!qword_27F961098)
  {
    sub_25889ACCC(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    sub_25889952C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961098);
    }
  }
}

void sub_25889959C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25889B07C(a4, a5);
    v8 = sub_2588BD368();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258899664()
{
  if (!qword_27F9610B8)
  {
    sub_2587F9F84();
    sub_2588996F8(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9610B8);
    }
  }
}

void sub_2588996F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258899748()
{
  if (!qword_27F9610D8)
  {
    sub_2588997DC(255);
    sub_25889B07C(&qword_27F961118, sub_2588997DC);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9610D8);
    }
  }
}

void sub_258899810()
{
  if (!qword_27F9610E8)
  {
    sub_25889ACCC(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    sub_25889989C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9610E8);
    }
  }
}

void sub_2588998D0()
{
  if (!qword_27F9610F8)
  {
    sub_258899964(255);
    sub_25889B07C(&qword_27F961110, sub_258899964);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9610F8);
    }
  }
}

void sub_258899998()
{
  if (!qword_27F961108)
  {
    sub_2587F9F84();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961108);
    }
  }
}

unint64_t sub_258899A08()
{
  result = qword_27F961128;
  if (!qword_27F961128)
  {
    sub_25889A230(255, &qword_27F9610D0, sub_258899748, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_25889B07C(&qword_27F961130, sub_258899748);
    sub_25889B07C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961128);
  }

  return result;
}

void sub_258899B2C()
{
  if (!qword_27F961138)
  {
    sub_258899C20();
    sub_258899288();
    sub_2588BBAC8();
    sub_258899CDC();
    sub_25889AA78(&qword_27F95FB38, MEMORY[0x28220C160]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961138);
    }
  }
}

void sub_258899C20()
{
  if (!qword_27F961140)
  {
    sub_258899288();
    sub_2588BBAC8();
    sub_258899CDC();
    sub_25889AA78(&qword_27F95FB38, MEMORY[0x28220C160]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961140);
    }
  }
}

unint64_t sub_258899CDC()
{
  result = qword_27F961148;
  if (!qword_27F961148)
  {
    sub_258899288();
    sub_25889B07C(&qword_27F961150, sub_258899328);
    sub_258899D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961148);
  }

  return result;
}

unint64_t sub_258899D8C()
{
  result = qword_27F95FA28[0];
  if (!qword_27F95FA28[0])
  {
    sub_25889AC20(255, &qword_27F95FA10, sub_2587A7B40, MEMORY[0x277CE14A8], MEMORY[0x277CE0468]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F95FA28);
  }

  return result;
}

uint64_t sub_258899E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditHeightCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258899E80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditHeightCellView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2588921B0(v4, a1);
}

void sub_258899EF0()
{
  v1 = *(type metadata accessor for EditHeightCellView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_258892228();
}

void sub_258899F84()
{
  if (!qword_27F961158)
  {
    sub_25889A230(255, &qword_27F961160, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0338]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961158);
    }
  }
}

void sub_25889A090()
{
  if (!qword_27F961178)
  {
    sub_25889A0FC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961178);
    }
  }
}

void sub_25889A0FC()
{
  if (!qword_27F961180)
  {
    sub_25889A1E8(255);
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A830();
    sub_25889A960(&qword_27F9611D8, &qword_27F9611E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961180);
    }
  }
}

void sub_25889A230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_25889A2B4()
{
  if (!qword_27F961190)
  {
    sub_25889A388();
    sub_2588BC318();
    sub_25889B07C(&qword_27F9611C8, sub_25889A388);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961190);
    }
  }
}

void sub_25889A388()
{
  if (!qword_27F961198)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A470();
    sub_25889A960(&qword_27F95D490, &qword_27F95D498);
    sub_25889A72C();
    v0 = sub_2588BD3B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961198);
    }
  }
}

void sub_25889A470()
{
  if (!qword_27F9611A0)
  {
    sub_25889A568(255, &qword_27F9611A8, MEMORY[0x277D83940]);
    v0 = MEMORY[0x28220B528];
    sub_258890CC8(255, &qword_27F95D480, MEMORY[0x28220B528]);
    sub_25889A5D8();
    sub_25889A6B8();
    sub_25889AC88(&qword_27F95D498, &qword_27F95D480, v0);
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9611A0);
    }
  }
}

void sub_25889A568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258890CC8(255, &qword_27F95D480, MEMORY[0x28220B528]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_25889A5D8()
{
  if (!qword_27F9611B0)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A960(&qword_27F95D490, &qword_27F95D498);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9611B0);
    }
  }
}

unint64_t sub_25889A6B8()
{
  result = qword_27F9611B8;
  if (!qword_27F9611B8)
  {
    sub_25889A568(255, &qword_27F9611A8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9611B8);
  }

  return result;
}

unint64_t sub_25889A72C()
{
  result = qword_27F9611C0;
  if (!qword_27F9611C0)
  {
    sub_25889A470();
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A960(&qword_27F95D490, &qword_27F95D498);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9611C0);
  }

  return result;
}

unint64_t sub_25889A830()
{
  result = qword_27F9611D0;
  if (!qword_27F9611D0)
  {
    sub_25889A1E8(255);
    sub_25889A388();
    sub_2588BC318();
    sub_25889B07C(&qword_27F9611C8, sub_25889A388);
    swift_getOpaqueTypeConformance2();
    sub_25889B07C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9611D0);
  }

  return result;
}

uint64_t sub_25889A960(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889AC88(a2, &qword_27F95D480, MEMORY[0x28220B528]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25889AA08()
{
  if (!qword_27F9611F0)
  {
    sub_258899B2C();
    sub_258899F84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9611F0);
    }
  }
}

uint64_t sub_25889AA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25889AAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25889AB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25889AB9C()
{
  if (!qword_27F960F98)
  {
    sub_25889AC20(255, &qword_27F960FA0, sub_25888CDE8, MEMORY[0x277D839F8], MEMORY[0x28220BC90]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960F98);
    }
  }
}

void sub_25889AC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_25889AC88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258890CC8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25889ACCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25889ADA8()
{
  v1 = *(type metadata accessor for EditHeightCellView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  if (*v2)
  {
    v3 = *(v2 + 8);
    (*v2)();
  }

  return sub_258895CA8();
}

void sub_25889AE1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EditHeightCellView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_258897504(a1, v6, a2);
}

void sub_25889AED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    sub_25889ACCC(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    v9 = a4(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25889AF60(uint64_t a1)
{
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25889B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_25889B07C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25889B0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25889B124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for EditHeightCellView();
  v62 = *(*(v1 - 8) + 80);
  v61 = *(*(v1 - 8) + 64);
  v2 = (v0 + ((v62 + 16) & ~v62));
  if (*v2)
  {
    v3 = *(v2 + 1);
  }

  v63 = v1;
  v4 = &v2[*(v1 + 20)];
  v5 = *(v4 + 1);

  v58 = type metadata accessor for MedicalIDBiometricsViewModel();
  v59 = v4;
  v6 = &v4[v58[5]];
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = *(v6 + 4);

  v10 = *(v6 + 6);

  v11 = *(v6 + 8);

  v12 = *(v6 + 10);

  v13 = type metadata accessor for MedicalIDData();
  v14 = v13[13];
  v15 = sub_2588BB9B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(&v6[v14], 1, v15))
  {
    (*(v16 + 8))(&v6[v14], v15);
  }

  v18 = v13[14];
  if (!v17(&v6[v18], 1, v15))
  {
    (*(v16 + 8))(&v6[v18], v15);
  }

  v19 = *&v6[v13[15] + 8];

  v20 = &v6[v13[18]];
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_2587C2610(*v20, v21);
  }

  v22 = v13[19];
  v23 = sub_2588BB818();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v6[v22], 1, v23))
  {
    (*(v24 + 8))(&v6[v22], v23);
  }

  v25 = v13[21];
  if (!v17(&v6[v25], 1, v15))
  {
    (*(v16 + 8))(&v6[v25], v15);
  }

  v26 = v58[6];
  v27 = sub_2588BBAC8();
  v28 = *(*(v27 - 8) + 8);
  v28(&v59[v26], v27);
  v29 = &v59[v58[7]];
  v28(v29, v27);

  v30 = &v59[v58[8]];
  v60 = v28;
  v28(v30, v27);
  v31 = type metadata accessor for MedicalIDWeightFormatter();

  v32 = &v2[v63[6]];
  v33 = *v32;

  v34 = *(v32 + 1);

  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v36 = *(v35 + 32);
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v38 = v37;
  v39 = *(v37 - 8);
  v40 = *(v39 + 48);
  if (!v40(&v32[v36], 1, v37))
  {
    (*(v39 + 8))(&v32[v36], v38);
  }

  v41 = *&v2[v63[7]];

  v42 = *&v2[v63[8] + 8];

  v43 = &v2[v63[9]];
  v44 = *v43;

  v45 = v43[1];

  v46 = *&v2[v63[10] + 8];

  v47 = &v2[v63[11]];
  if (!v40(v47, 1, v38))
  {
    (*(v39 + 8))(v47, v38);
  }

  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v49 = v48;
  v50 = *&v47[*(v48 + 28)];

  v51 = &v2[v63[12]];
  if (!v40(v51, 1, v38))
  {
    (*(v39 + 8))(v51, v38);
  }

  v52 = *&v51[*(v49 + 28)];

  v53 = &v2[v63[13]];
  if (!v40(v53, 1, v38))
  {
    (*(v39 + 8))(v53, v38);
  }

  v54 = *&v53[*(v49 + 28)];

  v55 = v63[14];
  sub_258890F00(0, &qword_27F95DB20, MEMORY[0x28220C188], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60(&v2[v55], v27);
  }

  else
  {
    v56 = *&v2[v55];
  }

  return swift_deallocObject();
}

uint64_t sub_25889B7E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditHeightCellView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25889B8C0@<X0>(uint64_t a1@<X8>)
{
  sub_25878F648();

  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5;
  sub_2588BCC08();
  v7 = sub_2588BCDD8();
  v27 = v8;
  v28 = v7;
  v26 = v9;
  v29 = v10;

  sub_2587B1CF8(v2, v4, v6 & 1);

  v11 = sub_2588BCDF8();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_2588BCBF8();
  v15 = sub_2588BCDD8();
  v17 = v16;
  LOBYTE(v2) = v18;

  sub_2587B1CF8(v11, v13, v4 & 1);

  sub_2588BC8D8();
  v19 = sub_2588BCD98();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;
  sub_2587B1CF8(v15, v17, v2 & 1);

  *a1 = v28;
  *(a1 + 8) = v27;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = v21;
  *(a1 + 64) = v4 & 1;
  *(a1 + 72) = v24;
  sub_2587A99B0(v28, v27, v26 & 1);

  sub_2587A99B0(v19, v21, v4 & 1);

  sub_2587B1CF8(v19, v21, v4 & 1);

  sub_2587B1CF8(v28, v27, v26 & 1);
}

double sub_25889BB10@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_2588BC608();
  v19 = 0;
  sub_25889B8C0(&v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_25889BC0C(&v20, &v12);
  sub_25889BD2C(v25);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  v11 = v19;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 96) = *&v18[79];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_25889BC0C(uint64_t a1, uint64_t a2)
{
  sub_25889BC70();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25889BC70()
{
  if (!qword_27F961260)
  {
    sub_25889BCC8();
    v0 = sub_2588BD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961260);
    }
  }
}

void sub_25889BCC8()
{
  if (!qword_27F961268)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961268);
    }
  }
}

uint64_t sub_25889BD2C(uint64_t a1)
{
  sub_25889BC70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25889BD88()
{
  if (!qword_27F961278)
  {
    sub_25889BC70();
    sub_25889BE1C(&qword_27F961280, sub_25889BC70);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961278);
    }
  }
}

uint64_t sub_25889BE1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25889BE64(uint64_t a1)
{
  MIUIMedicalIDAccessPoint.analyticsDisplayName.getter(a1);
  v2 = [*(v1 + 16) profileIdentifier];
  [v2 type];

  sub_258863340();
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000015;
  *(inited + 16) = xmmword_2588C61B0;
  *(inited + 40) = 0x80000002588CA830;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_2588BD8A8();
  }

  v6 = sub_2588BD868();

  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000002588CA850;
  v7 = sub_2588BD868();

  *(inited + 72) = v7;
  *(inited + 80) = 0x54656C69666F7270;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 96) = sub_2588BDB18();
  strcpy((inited + 104), "typeOfAccess");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v8 = sub_2588BD868();

  *(inited + 120) = v8;
  sub_2588635D4(inited);
  swift_setDeallocating();
  sub_258863398();
  swift_arrayDestroy();
  HKImproveHealthAndActivityAnalyticsAllowed();
  MedicalIDAccessAnalyticsEvent.submit()();
}

uint64_t sub_25889C0C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25889C124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a1;
  v3 = type metadata accessor for BasicAlertModel.Action();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BD858();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v10 = qword_27F95DA88;
  v11 = sub_2588BBAC8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v10;
  sub_2588BBAB8();
  v14 = v13;
  v15 = sub_2588BD8B8();
  v37 = v16;
  v38 = v15;
  v17 = v36;
  if (!v36)
  {
    goto LABEL_7;
  }

  v18 = objc_opt_self();
  v19 = v17;
  if (![v18 isAppleInternalInstall])
  {

LABEL_7:
    v36 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_2588BDDF8();

  v41 = 0xD000000000000017;
  v42 = 0x80000002588CB5D0;
  swift_getErrorValue();
  v20 = sub_2588BDFD8();
  MEMORY[0x259C8CAA0](v20);

  v21 = v42;
  v36 = v41;
LABEL_8:
  MEMORY[0x28223BE20](v15);
  v22 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v22);
  sub_2588BBAB8();
  v23 = sub_2588BD8B8();
  v25 = v24;
  v26 = v39;
  v27 = *(v39 + 24);
  sub_2588BBDD8();
  v28 = sub_2588BBDE8();
  (*(*(v28 - 8) + 56))(&v7[v27], 0, 1, v28);
  sub_2588BB9E8();
  v29 = &v7[*(v26 + 20)];
  *v29 = v23;
  v29[1] = v25;
  v30 = &v7[*(v26 + 28)];
  sub_25889CF28(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = *(v40 + 72);
  v32 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2588C00B0;
  result = sub_2587B2B0C(v7, v33 + v32);
  v35 = v37;
  *a2 = v38;
  a2[1] = v35;
  a2[2] = v36;
  a2[3] = v21;
  a2[5] = 0;
  a2[6] = 0;
  a2[4] = v33;
  return result;
}

uint64_t sub_25889C578@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v66 = type metadata accessor for BasicAlertModel.Action();
  v64 = *(v66 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2588BD858();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v7 = qword_27F95DA88;
  v8 = sub_2588BBAC8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v7;
  sub_2588BBAB8();
  v11 = sub_2588BD8B8();
  v62 = v12;
  v63 = v11;
  v13 = [a1 synchronouslyFetchFirstName];
  if (v13)
  {
    v14 = v13;
    sub_2588BD8A8();

    v15 = sub_2588BD838();
    v16 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v15 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();

    v17 = sub_2588BD818();
    MEMORY[0x28223BE20](v17);
    v18 = sub_2588BD848();
    MEMORY[0x28223BE20](v18);
    v19 = v10;
    sub_2588BBAB8();
    v20 = sub_2588BD8B8();
    v60 = v21;
    v61 = v20;
    v22 = v6;
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v22 = v6;
    v23 = sub_2588BBC98();
    __swift_project_value_buffer(v23, qword_27F969938);
    v24 = sub_2588BBC78();
    v25 = sub_2588BDBD8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_258790224(0x656C416369736142, 0xEF6C65646F4D7472, v68);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_258790224(0xD000000000000024, 0x80000002588CB660, v68);
      _os_log_impl(&dword_25878B000, v24, v25, "%s %s first name not available", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v27, -1, -1);
      MEMORY[0x259C8DBE0](v26, -1, -1);
    }

    v60 = 0;
    v61 = 0;
  }

  MEMORY[0x28223BE20](v20);
  v58 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v28);
  v59 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v10;
  sub_2588BBAB8();
  v30 = v29;
  v31 = sub_2588BD8B8();
  v33 = v32;
  v34 = v66;
  v35 = *(v66 + 24);
  v36 = sub_2588BBDE8();
  v37 = *(v36 - 8);
  v56 = *(v37 + 56);
  v57 = v37 + 56;
  v38 = v65;
  v56(&v65[v35], 1, 1, v36);
  sub_2588BB9E8();
  v39 = (v38 + v34[5]);
  *v39 = v31;
  v39[1] = v33;
  v40 = (v38 + v34[7]);
  *v40 = sub_25889CD20;
  v40[1] = 0;
  sub_25889CF28(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  v55 = *(v64 + 72);
  v41 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2588BFF50;
  v43 = v42 + v41;
  MEMORY[0x28223BE20](v42);
  v44 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v44);
  sub_2588BBAB8();
  v45 = sub_2588BD8B8();
  v47 = v46;
  v48 = v34[6];
  sub_2588BBDD8();
  v56((v43 + v48), 0, 1, v36);
  sub_2588BB9E8();
  v49 = (v43 + v34[5]);
  *v49 = v45;
  v49[1] = v47;
  v50 = (v43 + v34[7]);
  *v50 = 0;
  v50[1] = 0;
  result = sub_2587B2B0C(v38, v43 + v55);
  v52 = v67;
  v53 = v62;
  *v67 = v63;
  v52[1] = v53;
  v54 = v60;
  v52[2] = v61;
  v52[3] = v54;
  v52[5] = 0;
  v52[6] = 0;
  v52[4] = v42;
  return result;
}

uint64_t sub_25889CD20()
{
  sub_25889CF28(0, &qword_27F95F830, MEMORY[0x28220BE10], MEMORY[0x277D83D88]);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  sub_2588BB8D8();
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    MEMORY[0x28223BE20](v3);
    v5 = &v11 - v1;
    sub_25889CF8C(v2, v5);
    v6 = sub_2588BB8E8();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_2588BB8B8();
      (*(v7 + 8))(v5, v6);
    }

    sub_25886369C(MEMORY[0x277D84F90]);
    v9 = sub_2588BD758();

    [v4 openSensitiveURL:v8 withOptions:v9];
  }

  return sub_258830B3C(v2);
}

void sub_25889CF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25889CF8C(uint64_t a1, uint64_t a2)
{
  sub_25889CF28(0, &qword_27F95F830, MEMORY[0x28220BE10], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25889D040(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a1;
  v45 = a3;
  v8 = a1;
  v43[1] = a5;
  sub_25889DD74(0, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  sub_25889D72C(0, &qword_27F9612C0, sub_25889D788);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v43 - v17;
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  sub_25889D504();
  sub_25889D5CC();

  v20 = v15;
  sub_2588BD318();
  LOBYTE(v8) = sub_2588BCB88();
  sub_2588BBE38();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_25889D72C(0, &qword_27F961290, sub_25889D4A0);
  v30 = &v13[*(v29 + 36)];
  *v30 = v8;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  v13[*(v10 + 36)] = 0;
  v31 = swift_allocObject();
  v33 = v44;
  v32 = v45;
  v31[2] = v44;
  v31[3] = a2;
  v31[4] = v32;
  v31[5] = a4;
  sub_25889D844();

  sub_2588BCED8();

  sub_25889DA38(v13);
  v34 = sub_2588BCB88();
  sub_2588BBE38();
  v35 = &v18[*(v20 + 36)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_25889E004(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2588BFF50;
  *(v40 + 32) = v33;
  *(v40 + 40) = a2;
  *(v40 + 48) = 0x7475427261656C43;
  *(v40 + 56) = 0xEB000000006E6F74;

  v41 = sub_2588BD9A8();

  v42 = HKUIJoinStringsForAutomationIdentifier();

  if (v42)
  {
    sub_2588BD8A8();

    sub_25889DACC();
    sub_2588BCFB8();

    sub_2587A3FBC(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25889D408@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2588BD258();
  v3 = [objc_opt_self() systemGray3Color];
  v4 = sub_2588BD148();
  v5 = sub_2588BCC08();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

void sub_25889D4A0()
{
  if (!qword_27F961298)
  {
    sub_25889D504();
    sub_25889D5CC();
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961298);
    }
  }
}

void sub_25889D504()
{
  if (!qword_27F9612A0)
  {
    sub_25889D56C();
    sub_2587B1964();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9612A0);
    }
  }
}

void sub_25889D56C()
{
  if (!qword_27F9612A8)
  {
    sub_25885987C();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9612A8);
    }
  }
}

unint64_t sub_25889D5CC()
{
  result = qword_27F9612B0;
  if (!qword_27F9612B0)
  {
    sub_25889D504();
    sub_25889D67C();
    sub_25889E054(&qword_27F95D9B8, sub_2587B1964);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612B0);
  }

  return result;
}

unint64_t sub_25889D67C()
{
  result = qword_27F9612B8;
  if (!qword_27F9612B8)
  {
    sub_25889D56C();
    sub_25889E054(&qword_27F95F8E0, sub_25885987C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612B8);
  }

  return result;
}

void sub_25889D72C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25889D788()
{
  if (!qword_27F9612C8)
  {
    sub_25889DD74(255, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
    sub_25889D844();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9612C8);
    }
  }
}

unint64_t sub_25889D844()
{
  result = qword_27F9612D0;
  if (!qword_27F9612D0)
  {
    sub_25889DD74(255, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
    sub_25889D92C();
    sub_25889E054(qword_27F95FA28, sub_258837EEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612D0);
  }

  return result;
}

unint64_t sub_25889D92C()
{
  result = qword_27F9612D8;
  if (!qword_27F9612D8)
  {
    sub_25889D72C(255, &qword_27F961290, sub_25889D4A0);
    sub_25889E054(&qword_27F9612E0, sub_25889D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612D8);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_25889DA38(uint64_t a1)
{
  sub_25889DD74(0, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25889DACC()
{
  result = qword_27F9612E8;
  if (!qword_27F9612E8)
  {
    sub_25889D72C(255, &qword_27F9612C0, sub_25889D788);
    sub_25889DD74(255, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
    sub_25889D844();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612E8);
  }

  return result;
}

void sub_25889DBD0(uint64_t a1@<X8>)
{
  v2 = 0uLL;
  if ((*v1 & 1) != 0 || (*(v1 + 1) & 1) == 0)
  {
    v9 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v3 = *(v1 + 2);
    v4 = a1;
    v5 = sub_2588BC098();
    v6 = *(v1 + 8);
    v10 = *(v1 + 16);
    v7 = *(v1 + 32);
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 256;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;

    v2 = v10;
    a1 = v4;
  }

  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v7;
}

unint64_t sub_25889DC8C()
{
  result = qword_27F9612F0;
  if (!qword_27F9612F0)
  {
    sub_25889DD74(255, &qword_27F9612F8, &qword_27F9612C0, sub_25889D788, MEMORY[0x277CDE470]);
    sub_25889DACC();
    sub_25889E054(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612F0);
  }

  return result;
}

void sub_25889DD74(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_25889D72C(255, a3, a4);
    a5(255);
    v7 = sub_2588BC1E8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25889DE08()
{
  result = qword_27F961300;
  if (!qword_27F961300)
  {
    sub_25889DEE0(255, &qword_27F961308, sub_25889DF44, MEMORY[0x277D83D88]);
    sub_25889E054(qword_27F961328, sub_25889DF44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961300);
  }

  return result;
}

void sub_25889DEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25889DF78()
{
  if (!qword_27F961318)
  {
    sub_25889E004(255, &qword_27F961320, MEMORY[0x277CE1180], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F961318);
    }
  }
}

void sub_25889E004(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25889E054(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25889E0A0(uint64_t a1)
{
  type metadata accessor for MedicalIDPregnancyViewModel();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_2587B2F78();
      if (v5 <= 0x3F)
      {
        sub_2587CF07C(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v6 <= 0x3F)
        {
          sub_25889F07C(319, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25889E1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v63 = sub_2588BB9B8();
  v68 = *(v63 - 8);
  v71 = *(v68 + 84);
  if (v71)
  {
    v3 = v71 - 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = v3;
  }

  v66 = *(sub_2588BB818() - 8);
  v5 = *(v66 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= v4)
  {
    v6 = v4;
  }

  v61 = v6;
  if (v6 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_2588BBB48() - 8);
  v70 = v8;
  v60 = *(v8 + 84);
  v64 = v7;
  if (v7 <= v60)
  {
    v7 = *(v8 + 84);
  }

  v9 = *(sub_2588BBAC8() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v7 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  v13 = *(*(a3 + 16) - 8);
  v62 = v3;
  if (v12 <= v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(v13 + 84);
  v16 = *(v68 + 80);
  v17 = *(v66 + 80);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = *(v9 + 80);
  v21 = *(v9 + 64);
  v22 = *(v13 + 80);
  v23 = *(v13 + 64);
  if (v15 <= v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = *(v13 + 84);
  }

  if (v24 <= v4)
  {
    v24 = v4;
  }

  if (v71)
  {
    v25 = *(v68 + 64);
  }

  else
  {
    v25 = *(v68 + 64) + 1;
  }

  v26 = 7;
  if (!v5)
  {
    v26 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v16 | 7;
  v28 = v16 | 7 | v17;
  v29 = v25 + v16;
  v30 = v25 + 7;
  v31 = (v26 + *(v66 + 64) + ((v17 + 16 + ((((v25 + 7 + ((v25 + v16 + ((v16 + 112) & ~v16)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8;
  v32 = v16 + 8;
  v33 = ((v16 + 8 + v31) & ~v16) + v25;
  v34 = v19 + v20;
  v35 = (v19 + v20 + ((v33 + v18 + ((v28 + 16) & ~v28)) & ~v18)) & ~v20;
  v36 = v21 + 7;
  v37 = ((v16 + 8 + ((v21 + 7 + v35) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v25 + v22;
  v38 = v23 + 7;
  if (a2 <= v24)
  {
    goto LABEL_55;
  }

  v39 = v25 - ((-17 - v16) | v16) - ((-18 - v27 - ((((v38 + (v37 & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v27) - 2;
  v40 = 8 * v39;
  if (v39 <= 3)
  {
    v42 = ((a2 - v24 + ~(-1 << v40)) >> v40) + 1;
    if (HIWORD(v42))
    {
      v41 = *(a1 + v39);
      if (!v41)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v42 > 0xFF)
    {
      v41 = *(a1 + v39);
      if (!*(a1 + v39))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v42 < 2)
    {
LABEL_55:
      v46 = ~v16;
      if (v14 == v24)
      {
        if ((v14 & 0x80000000) == 0)
        {
          v47 = *(a1 + 1);
LABEL_65:
          if (v47 >= 0xFFFFFFFF)
          {
            LODWORD(v47) = -1;
          }

          return (v47 + 1);
        }

        v53 = (a1 + v28 + 16) & ~v28;
        if (v64 == v14)
        {
          v54 = (v32 + ((((((((((((((((v53 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v46;
          if (v62 < v61)
          {
            if (v5 >= 2)
            {
              v55 = (*(v66 + 48))((v17 + 16 + ((((v30 + ((v29 + v54) & v46)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
              goto LABEL_74;
            }

            return 0;
          }

          if (v71 < 2)
          {
            return 0;
          }

          v55 = (*(v68 + 48))(v54);
LABEL_74:
          if (v55 >= 2)
          {
            return v55 - 1;
          }

          else
          {
            return 0;
          }
        }

        v57 = (v53 + v18 + v33) & ~v18;
        if (v60 == v14)
        {
          v49 = *(v70 + 48);
          v48 = v57;
          v50 = v60;
          goto LABEL_60;
        }

        v58 = (v34 + v57) & ~v20;
        if (v11 == v14)
        {
          v59 = *(v10 + 48);

          return v59(v58);
        }

        v56 = v36 + v58;
      }

      else
      {
        v48 = (a1 + v37) & ~v22;
        if (v15 == v24)
        {
          v49 = *(*(*(a3 + 16) - 8) + 48);
          v50 = v15;
LABEL_60:

          return v49(v48, v50);
        }

        v52 = ((v38 + v48) & 0xFFFFFFFFFFFFFFF8);
        if ((v24 & 0x80000000) == 0)
        {
          v47 = *v52;
          goto LABEL_65;
        }

        v56 = ((v27 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v27) + 15;
      }

      v55 = (*(v68 + 48))((v32 + (v56 & 0xFFFFFFFFFFFFFFF8)) & v46, v71, v63);
      goto LABEL_74;
    }
  }

  v41 = *(a1 + v39);
  if (!*(a1 + v39))
  {
    goto LABEL_55;
  }

LABEL_42:
  v43 = (v41 - 1) << v40;
  if (v39 > 3)
  {
    v43 = 0;
  }

  if (v39)
  {
    if (v39 <= 3)
    {
      v44 = v39;
    }

    else
    {
      v44 = 4;
    }

    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v45 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v45 = *a1;
      }
    }

    else if (v44 == 1)
    {
      v45 = *a1;
    }

    else
    {
      v45 = *a1;
    }
  }

  else
  {
    v45 = 0;
  }

  return v24 + (v45 | v43) + 1;
}

void sub_25889E868(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v67 = sub_2588BB9B8();
  v4 = *(v67 - 8);
  v81 = v4;
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v66 = sub_2588BB818();
  v8 = *(v66 - 8);
  v80 = v8;
  v75 = *(v8 + 84);
  v9 = v75 - 1;
  if (!v75)
  {
    v9 = 0;
  }

  if (v9 <= v7)
  {
    v9 = v7;
  }

  v69 = v9;
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v65 = sub_2588BBB48();
  v11 = *(v65 - 8);
  v79 = v11;
  v68 = *(v11 + 84);
  v72 = v10;
  if (v10 <= v68)
  {
    v10 = *(v11 + 84);
  }

  v12 = sub_2588BBAC8();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  if (v10 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v10;
  }

  v71 = v6;
  if (v16 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v16;
  }

  v74 = *(a4 + 16);
  v18 = *(v74 - 8);
  v19 = *(v18 + 84);
  v20 = *(v4 + 80);
  v21 = *(v8 + 80);
  v22 = *(v11 + 80);
  v23 = *(v11 + 64);
  v24 = *(v14 + 80);
  v25 = *(*(v12 - 8) + 64);
  v26 = *(v18 + 80);
  v27 = *(v18 + 64);
  if (v19 <= v17)
  {
    v28 = v17;
  }

  else
  {
    v28 = *(v18 + 84);
  }

  v70 = v7;
  if (v28 <= v7)
  {
    v29 = v7;
  }

  else
  {
    v29 = v28;
  }

  if (v5)
  {
    v30 = *(v4 + 64);
  }

  else
  {
    v30 = *(v4 + 64) + 1;
  }

  v31 = v20 | 7;
  v32 = v20 | 7 | v21;
  v33 = v30 + v20;
  if (v75)
  {
    v34 = *(v8 + 64);
  }

  else
  {
    v34 = *(v8 + 64) + 1;
  }

  v35 = v20 + 8;
  v36 = ((v20 + 8 + ((v34 + ((v21 + 16 + ((((v30 + 7 + ((v30 + v20 + ((v20 + 112) & ~v20)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + v30;
  v37 = v25 + 7;
  v38 = ((v20 + 8 + ((v25 + 7 + ((v23 + v24 + ((v36 + v22 + ((v32 + 16) & ~v32)) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + v30 + v26;
  v39 = v27 + 7;
  v40 = ((v20 + 16) & ~v20) + v30;
  v41 = ((v31 + 17 + ((((v27 + 7 + (v38 & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v31) + v40;
  if (a3 > v29)
  {
    if (v41 <= 3)
    {
      v42 = ((a3 - v29 + ~(-1 << (8 * v41))) >> (8 * v41)) + 1;
      if (HIWORD(v42))
      {
        v13 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v13 = v43;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v29 < a2)
  {
    v44 = ~v29 + a2;
    v45 = v13;
    if (v41 >= 4)
    {
      bzero(a1, v41);
      *a1 = v44;
      v46 = 1;
      if (v45 > 1)
      {
        goto LABEL_48;
      }

      goto LABEL_79;
    }

    v46 = (v44 >> (8 * v41)) + 1;
    if (v41)
    {
      v47 = v44 & ~(-1 << (8 * v41));
      bzero(a1, v41);
      if (v41 != 3)
      {
        if (v41 == 2)
        {
          *a1 = v47;
          if (v45 > 1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *a1 = v44;
          if (v45 > 1)
          {
LABEL_48:
            if (v45 == 2)
            {
              *(a1 + v41) = v46;
            }

            else
            {
              *(a1 + v41) = v46;
            }

            return;
          }
        }

LABEL_79:
        if (v45)
        {
          *(a1 + v41) = v46;
        }

        return;
      }

      *a1 = v47;
      *(a1 + 2) = BYTE2(v47);
    }

    if (v45 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v41) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_62;
    }

    *(a1 + v41) = 0;
  }

  else if (v13)
  {
    *(a1 + v41) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    return;
  }

LABEL_62:
  v48 = ~v20;
  if (v17 != v29)
  {
    v49 = (a1 + v38) & ~v26;
    if (v19 == v29)
    {
      v50 = *(v18 + 56);
      v51 = a2;
      v52 = v19;
      v53 = v74;
LABEL_119:

      v50(v49, v51, v52, v53);
      return;
    }

    v54 = ((v39 + v49) & 0xFFFFFFFFFFFFFFF8);
    if ((v29 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v54 = a2 & 0x7FFFFFFF;
        v54[1] = 0;
      }

      else
      {
        *v54 = a2 - 1;
      }

      return;
    }

    v56 = (v31 + 17 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v31;
    if (v70 < a2)
    {
      if (v40 <= 3)
      {
        v57 = ~(-1 << (8 * v40));
      }

      else
      {
        v57 = -1;
      }

      if (!v40)
      {
        return;
      }

      v58 = v57 & (~v70 + a2);
      if (v40 <= 3)
      {
        v59 = v40;
      }

      else
      {
        v59 = 4;
      }

      v60 = v56;
      v30 = v40;
LABEL_106:
      bzero(v60, v30);
      if (v59 > 2)
      {
        if (v59 == 3)
        {
          *v56 = v58;
          *(v56 + 2) = BYTE2(v58);
        }

        else
        {
          *v56 = v58;
        }
      }

      else if (v59 == 1)
      {
        *v56 = v58;
      }

      else
      {
        *v56 = v58;
      }

      return;
    }

    v50 = *(v81 + 56);
    v49 = (v35 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) & v48;
    v51 = a2 + 1;
LABEL_118:
    v52 = v5;
    v53 = v67;
    goto LABEL_119;
  }

  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v55 = (a1 + v32 + 16) & ~v32;
  if (v72 == v17)
  {
    v56 = (v35 + ((((((((((((((((v55 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v48;
    if (v71 < v69)
    {
      v50 = *(v80 + 56);
      v49 = (v21 + 16 + ((((v30 + 7 + ((v33 + v56) & v48)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
      v51 = a2 + 1;
      v52 = v75;
      v53 = v66;
      goto LABEL_119;
    }

    if (v71 < a2)
    {
      goto LABEL_98;
    }

LABEL_117:
    v50 = *(v81 + 56);
    v51 = a2 + 1;
    v49 = v56;
    goto LABEL_118;
  }

  v61 = (v55 + v22 + v36) & ~v22;
  if (v68 == v17)
  {
    v50 = *(v79 + 56);
    v49 = v61;
    v51 = a2;
    v52 = v68;
    v53 = v65;
    goto LABEL_119;
  }

  v63 = (v23 + v24 + v61) & ~v24;
  if (v15 != v17)
  {
    v56 = (v35 + ((v37 + v63) & 0xFFFFFFFFFFFFFFF8)) & v48;
    if (v71 < a2)
    {
LABEL_98:
      if (v30 <= 3)
      {
        v62 = ~(-1 << (8 * v30));
      }

      else
      {
        v62 = -1;
      }

      if (!v30)
      {
        return;
      }

      v58 = v62 & (~v71 + a2);
      if (v30 <= 3)
      {
        v59 = v30;
      }

      else
      {
        v59 = 4;
      }

      v60 = v56;
      goto LABEL_106;
    }

    goto LABEL_117;
  }

  v64 = *(v14 + 56);

  v64(v63, a2);
}

void sub_25889F07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25889F124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BDCE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25889F190(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  sub_2587CF07C(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](&v6);
  return v6;
}

uint64_t sub_25889F208(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  sub_2587CF07C(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  sub_2588BD458();
  return v4;
}

uint64_t sub_25889F284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_2588A0310();
  v6 = *(a1 + 16);
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  v7 = sub_2588BD658();
  v53 = v7;
  sub_25889F07C(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
  v9 = v8;
  v54 = v8;
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  v11 = sub_2587D68A0();
  v56 = v11;
  v55 = sub_2588A03D0();
  *&v74 = v7;
  *(&v74 + 1) = &type metadata for MedicalIDEditSectionHeaderView;
  *&v75 = v9;
  *(&v75 + 1) = WitnessTable;
  *&v76 = v11;
  *(&v76 + 1) = v55;
  v12 = type metadata accessor for EditingScrollView();
  v59 = v12;
  v61 = swift_getWitnessTable();
  *&v74 = v12;
  *(&v74 + 1) = MEMORY[0x277D839B0];
  *&v75 = v61;
  *(&v75 + 1) = MEMORY[0x277D839C8];
  v62 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v63 = OpaqueTypeMetadata2;
  v64 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v58 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v45 - v18;
  v19 = v4;
  v21 = v4 + 16;
  v20 = *(v4 + 16);
  v20(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v68 = *(v4 + 80);
  v22 = (v68 + 32) & ~v68;
  v23 = swift_allocObject();
  v52 = v23;
  v69 = *(a1 + 24);
  v24 = v69;
  *(v23 + 16) = v6;
  *(v23 + 24) = v24;
  v25 = *(v19 + 32);
  v66 = v19 + 32;
  v67 = v25;
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25(v23 + v22, v46, a1);
  v48 = v2;
  v50 = v20;
  v51 = v21;
  v20(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v49 = v5;
  v26 = swift_allocObject();
  v47 = v26;
  v27 = v6;
  *(v26 + 16) = v6;
  v28 = v69;
  *(v26 + 24) = v69;
  v29 = v46;
  v67(v26 + v22, v46, a1);
  v20(v29, v2, a1);
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;
  v31 = v67;
  v67(v30 + v22, v29, a1);
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_258840494(sub_2588A04A8, v52, sub_2588A04C0, v47, sub_2588A054C, v30, &v74);
  v57 = *(&v74 + 1);
  v71 = v74;
  v72 = v75;
  v73 = v76;
  v32 = v48;
  v70 = sub_25889F190(a1) & 1;
  v50(v29, v32, a1);
  v33 = swift_allocObject();
  v34 = v69;
  *(v33 + 16) = v27;
  *(v33 + 24) = v34;
  v31(v33 + v22, v29, a1);
  v35 = swift_checkMetadataState();
  v36 = v58;
  v37 = MEMORY[0x277D839B0];
  v38 = v61;
  v39 = MEMORY[0x277D839C8];
  sub_2588BD118();

  *&v71 = v35;
  *(&v71 + 1) = v37;
  *&v72 = v38;
  *(&v72 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v60;
  v42 = v63;
  sub_2587DCF7C(v36, v63, OpaqueTypeConformance2);
  v43 = *(v64 + 8);
  v43(v36, v42);
  sub_2587DCF7C(v41, v42, OpaqueTypeConformance2);
  return (v43)(v41, v42);
}

void sub_25889F930(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v62 = a4;
  v60 = *(a2 - 8);
  v6 = *(v60 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v52 - v9;
  v10 = sub_2588BDCE8();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v52 - v15;
  sub_2588A0378();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A0310();
  v57 = v20;
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v59 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v52 - v24;
  v25 = sub_2588BD858();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v27 = qword_27F95DA88;
  v28 = sub_2588BBAC8();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v27;
  sub_2588BBAB8();
  v69 = sub_2588BD8B8();
  v70 = v31;
  v32 = type metadata accessor for SharedPregnancyEditView();
  sub_25889F208(v32);
  sub_25878F648();
  v33 = MEMORY[0x277D837D0];
  sub_2588BD3D8();
  sub_2587CF07C(0, &qword_280C0DDD0, v33, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2588BFF50;
  v35 = a1[1];
  *(v34 + 32) = *a1;
  *(v34 + 40) = v35;
  *(v34 + 48) = 0xD000000000000017;
  *(v34 + 56) = 0x80000002588CB7B0;

  v36 = sub_2588BD9A8();

  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    sub_2588BD8A8();

    sub_2588A0C60(&qword_27F9605C0, sub_2588A0378);
    v38 = v56;
    sub_2588BCFB8();

    (*(v55 + 8))(v19, v38);
    if (sub_25889F190(v32))
    {
      v39 = a1 + *(v32 + 36);
      v40 = v53;
      v41 = v64;
      sub_2587DCF7C(v39, a2, v64);
      v42 = v54;
      sub_2587DCF7C(v40, a2, v41);
      v43 = v60;
      (*(v60 + 8))(v40, a2);
      (*(v43 + 32))(v14, v42, a2);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      v41 = v64;
      v43 = v60;
    }

    (*(v43 + 56))(v14, v44, 1, a2);
    v45 = v58;
    v46 = *(v58 + 16);
    v47 = v61;
    v46(v61, v14, v10);
    v48 = *(v45 + 8);
    v48(v14, v10);
    v49 = v63;
    v50 = v59;
    sub_2588A0B18(v63, v59, sub_2588A0310);
    v69 = v50;
    v46(v14, v47, v10);
    v70 = v14;
    v68[0] = v57;
    v68[1] = v10;
    v51 = sub_2588A0B80();
    v65 = v41;
    v66 = v51;
    WitnessTable = swift_getWitnessTable();
    sub_25881C7E0(&v69, 2uLL, v68);
    v48(v47, v10);
    sub_2588A0CA8(v49);
    v48(v14, v10);
    sub_2588A0CA8(v50);
  }

  else
  {
    __break(1u);
  }
}

double sub_2588A0018@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SharedPregnancyEditView();
  sub_2588A006C(v6);
  v2 = v6[1];
  v3 = v8;
  v4 = v9;
  *a1 = v6[0];
  *(a1 + 8) = v2;
  result = *&v7;
  *(a1 + 16) = v7;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_2588A006C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27F9697F8;
  v4 = qword_27F95D0D8;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27F969808;
  v5 = unk_27F969810;
  v7 = *v1;
  v8 = v1[1];
  *a1 = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t sub_2588A0144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDPregnancyStatusLabelView();
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedPregnancyEditView();
  if (sub_25889F190(v8))
  {
    sub_2588A0B18(a1, v7, type metadata accessor for MedicalIDPregnancyViewModel);
    v9 = *(v4 + 24);
    v10 = *(v8 + 48);
    sub_25889F07C(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    sub_2588BD458();
    v7[*(v4 + 20)] = 1;
    sub_258854F80(v7, a2);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a2, 1, 1, v4);
  }
}

void sub_2588A0310()
{
  if (!qword_27F9613B0)
  {
    sub_2588A0378();
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9613B0);
    }
  }
}

void sub_2588A0378()
{
  if (!qword_27F960518)
  {
    v0 = sub_2588BD3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960518);
    }
  }
}

unint64_t sub_2588A03D0()
{
  result = qword_27F9613B8;
  if (!qword_27F9613B8)
  {
    sub_25889F07C(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
    sub_2588A0C60(&qword_27F9613C0, type metadata accessor for MedicalIDPregnancyStatusLabelView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9613B8);
  }

  return result;
}

double sub_2588A04C0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for SharedPregnancyEditView() - 8) + 80);

  return sub_2588A0018(a1);
}

uint64_t sub_2588A0564(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SharedPregnancyEditView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroyTm_31()
{
  v1 = *(v0 + 24);
  v42 = *(v0 + 16);
  v43 = type metadata accessor for SharedPregnancyEditView();
  v45 = *(*(v43 - 1) + 80);
  v44 = *(*(v43 - 1) + 64);
  v2 = v0 + ((v45 + 32) & ~v45);
  v3 = *(v2 + 8);

  v4 = type metadata accessor for MedicalIDPregnancyViewModel();
  v5 = v2 + v4[5];
  v6 = *(v5 + 8);

  v7 = *(v5 + 16);

  v8 = *(v5 + 32);

  v9 = *(v5 + 48);

  v10 = *(v5 + 64);

  v11 = *(v5 + 80);

  v12 = type metadata accessor for MedicalIDData();
  v13 = v12[13];
  v14 = sub_2588BB9B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v17 = v12[14];
  if (!v16(v5 + v17, 1, v14))
  {
    (*(v15 + 8))(v5 + v17, v14);
  }

  v41 = v15;
  v18 = *(v5 + v12[15] + 8);

  v19 = (v5 + v12[18]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_2587C2610(*v19, v20);
  }

  v21 = v12[19];
  v22 = sub_2588BB818();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v5 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  v24 = v12[21];
  if (!v16(v5 + v24, 1, v14))
  {
    (*(v41 + 8))(v5 + v24, v14);
  }

  v25 = v4[6];
  v26 = sub_2588BBB48();
  (*(*(v26 - 8) + 8))(v2 + v25, v26);
  v27 = v4[7];
  v28 = sub_2588BBAC8();
  (*(*(v28 - 8) + 8))(v2 + v27, v28);
  v29 = *(v2 + v4[8]);

  v30 = v4[9];
  if (!v16(v2 + v30, 1, v14))
  {
    (*(v41 + 8))(v2 + v30, v14);
  }

  (*(*(v42 - 8) + 8))(v2 + v43[9]);
  v31 = *(v2 + v43[10] + 8);

  v32 = (v2 + v43[11]);
  v33 = *v32;

  v34 = v32[1];

  v35 = (v2 + v43[12]);
  v36 = *v35;

  v37 = *(v35 + 1);

  sub_25889F07C(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v39 = *(v38 + 32);
  if (!v16(&v35[v39], 1, v14))
  {
    (*(v41 + 8))(&v35[v39], v14);
  }

  return swift_deallocObject();
}

uint64_t sub_2588A0AA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SharedPregnancyEditView();
  v4 = v0 + *(v3 + 40) + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)();
}

uint64_t sub_2588A0B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2588A0B80()
{
  result = qword_27F9613C8;
  if (!qword_27F9613C8)
  {
    sub_2588A0310();
    sub_2588A0C60(&qword_27F9605C0, sub_2588A0378);
    sub_2588A0C60(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9613C8);
  }

  return result;
}

uint64_t sub_2588A0C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2588A0CA8(uint64_t a1)
{
  sub_2588A0310();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15SectionGridItemVMa()
{
  result = qword_27F9613D0;
  if (!qword_27F9613D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588A0D78()
{
  type metadata accessor for MedicalIDDataViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDModelProvider();
    if (v1 <= 0x3F)
    {
      sub_25878E130(319, &qword_27F95D3C0, off_2798A65E8);
      if (v2 <= 0x3F)
      {
        sub_2588A3D54(319, &qword_27F9613E0, sub_2588A0E74, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2588A0E74()
{
  if (!qword_27F95DB08)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DB08);
    }
  }
}

void sub_2588A0EE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2588A0F58@<X0>(uint64_t a1@<X8>)
{
  v188 = a1;
  v169 = type metadata accessor for MedicalIDMedicalNotesCellView();
  v2 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v155 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CE0330];
  sub_2588A560C(0, &qword_27F9613E8, type metadata accessor for MedicalIDMedicalConditionsCellView, type metadata accessor for MedicalIDMedicalNotesCellView, MEMORY[0x277CE0330]);
  v163 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v167 = &v148 - v7;
  sub_2588A3618(0);
  v181 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v170 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for MedicalIDMedicalConditionsCellView();
  v11 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v153 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for MedicalIDBiometricsCell();
  v13 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v154 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A560C(0, &qword_27F9613F8, sub_2588A3660, sub_2588A3618, v4);
  v178 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v180 = &v148 - v17;
  sub_2588A560C(0, &qword_27F961408, type metadata accessor for MedicalIDEmergencyContactsCellView, type metadata accessor for MedicalIDBiometricsCell, v4);
  v166 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v168 = &v148 - v20;
  sub_2588A3660(0);
  v179 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v171 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A36A8(0);
  v187 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v182 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MedicalIDData();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v150 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v148 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for MedicalIDEmergencyContactsCellView();
  v33 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v152 = (&v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = type metadata accessor for MedicalIDAllergiesCellView();
  v35 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v151 = &v148 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A560C(0, &qword_27F961418, type metadata accessor for MedicalIDMedicationsCellView, type metadata accessor for MedicalIDAllergiesCellView, v4);
  v156 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v159 = &v148 - v39;
  sub_2588A36F0(0);
  v176 = v40;
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v162 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for MedicalIDMedicationsCellView();
  v43 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v149 = &v148 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for MedicalIDPregnancyCellView();
  v45 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v47 = (&v148 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2588A560C(0, &qword_27F961428, sub_2588A3738, sub_2588A36A8, v4);
  v184 = v48;
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v186 = &v148 - v50;
  sub_2588A560C(0, &qword_27F961440, sub_2588A3780, sub_2588A36F0, v4);
  v173 = v51;
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v175 = &v148 - v53;
  sub_2588A560C(0, &qword_27F961448, type metadata accessor for MedicalIDPersonalInformationCellView, type metadata accessor for MedicalIDPregnancyCellView, v4);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v148 - v56;
  sub_2588A3780(0);
  v174 = v58;
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v157 = &v148 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A3738(0);
  v185 = v61;
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v177 = &v148 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s15SectionGridItemVMa();
  v183 = *(v64 - 8);
  v65 = *(v183 + 64);
  MEMORY[0x28223BE20](v64);
  v66 = &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for MedicalIDPersonalInformationCellView(0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v148 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v1 + *(v64 + 24));
  if (v71 > 3)
  {
    if (*(v1 + *(v64 + 24)) > 5u)
    {
      if (v71 == 6)
      {
        v109 = type metadata accessor for MedicalIDDataViewModel();
        v102 = v153;
        sub_2588A4928(v1 + *(v109 + 44), v153, type metadata accessor for MedicalIDMedicalInfoViewModel);
        sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
        v110 = (*(v183 + 80) + 16) & ~*(v183 + 80);
        v111 = swift_allocObject();
        sub_2587C4DF4(&v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v111 + v110);
        v112 = (v102 + *(v165 + 20));
        *v112 = sub_2588A3C38;
        v112[1] = v111;
        sub_2588A4928(v102, v167, type metadata accessor for MedicalIDMedicalConditionsCellView);
        swift_storeEnumTagMultiPayload();
        sub_2588A37E0(&qword_27F961450, type metadata accessor for MedicalIDMedicalConditionsCellView);
        sub_2588A37E0(&qword_27F961458, type metadata accessor for MedicalIDMedicalNotesCellView);
        v113 = v170;
        sub_2588BC778();
        sub_2588A4928(v113, v180, sub_2588A3618);
        swift_storeEnumTagMultiPayload();
        sub_2588A3828();
        sub_2588A3908();
        v114 = v182;
        sub_2588BC778();
        sub_2588A49BC(v113, sub_2588A3618);
        sub_2588A4928(v114, v186, sub_2588A36A8);
        swift_storeEnumTagMultiPayload();
        sub_2588A39E8();
        sub_2588A3BF0();
        sub_2588BC778();
        sub_2588A49BC(v114, sub_2588A36A8);
        v108 = type metadata accessor for MedicalIDMedicalConditionsCellView;
      }

      else
      {
        v138 = type metadata accessor for MedicalIDDataViewModel();
        v102 = v155;
        sub_2588A4928(v1 + *(v138 + 44), v155, type metadata accessor for MedicalIDMedicalInfoViewModel);
        sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
        v139 = (*(v183 + 80) + 16) & ~*(v183 + 80);
        v140 = swift_allocObject();
        sub_2587C4DF4(&v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v140 + v139);
        v141 = v169;
        v142 = (v102 + *(v169 + 20));
        *v142 = sub_2588A37C8;
        v142[1] = v140;
        v143 = (v102 + *(v141 + 24));
        LOBYTE(v192) = 7;
        *v143 = MedicalIDDisplaySection.baseIdentifier.getter();
        v143[1] = v144;
        sub_2588A4928(v102, v167, type metadata accessor for MedicalIDMedicalNotesCellView);
        swift_storeEnumTagMultiPayload();
        sub_2588A37E0(&qword_27F961450, type metadata accessor for MedicalIDMedicalConditionsCellView);
        sub_2588A37E0(&qword_27F961458, type metadata accessor for MedicalIDMedicalNotesCellView);
        v145 = v170;
        sub_2588BC778();
        sub_2588A4928(v145, v180, sub_2588A3618);
        swift_storeEnumTagMultiPayload();
        sub_2588A3828();
        sub_2588A3908();
        v146 = v182;
        sub_2588BC778();
        sub_2588A49BC(v145, sub_2588A3618);
        sub_2588A4928(v146, v186, sub_2588A36A8);
        swift_storeEnumTagMultiPayload();
        sub_2588A39E8();
        sub_2588A3BF0();
        sub_2588BC778();
        sub_2588A49BC(v146, sub_2588A36A8);
        v108 = type metadata accessor for MedicalIDMedicalNotesCellView;
      }
    }

    else
    {
      if (v71 == 4)
      {
        v82 = v1;
        v83 = *(*(v1 + *(v64 + 20)) + 56);
        swift_getKeyPath();
        v192 = v83;
        sub_2588A37E0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);

        sub_2588BBB98();

        v84 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
        swift_beginAccess();
        v85 = v83 + v84;
        v86 = v148;
        sub_2588A4928(v85, v148, sub_2587B63B8);

        v87 = v150;
        LoadState<>.loadedValue.getter(v150);
        sub_2588A49BC(v86, sub_2587B63B8);
        v88 = *(v87 + 16);

        sub_2588A49BC(v87, type metadata accessor for MedicalIDData);
        sub_2588A4928(v82, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
        v89 = (*(v183 + 80) + 16) & ~*(v183 + 80);
        v90 = swift_allocObject();
        sub_2587C4DF4(v66, v90 + v89);
        KeyPath = swift_getKeyPath();
        v47 = v152;
        *v152 = KeyPath;
        sub_2588A3D54(0, &qword_27F95E6F0, MEMORY[0x277CDE530], MEMORY[0x277CDF458]);
        swift_storeEnumTagMultiPayload();
        v92 = v164;
        *(v47 + *(v164 + 20)) = v88;
        v93 = (v47 + v92[6]);
        v190 = 4;
        *v93 = MedicalIDDisplaySection.baseIdentifier.getter();
        v93[1] = v94;
        v95 = (v47 + v92[7]);
        *v95 = sub_2588A3DB8;
        v95[1] = v90;
        v96 = v47 + v92[8];
        v189 = 1;
        sub_2588BD2B8();
        v97 = v191;
        *v96 = v190;
        *(v96 + 1) = v97;
        sub_2588A4928(v47, v168, type metadata accessor for MedicalIDEmergencyContactsCellView);
        swift_storeEnumTagMultiPayload();
        sub_2588A37E0(&qword_27F961468, type metadata accessor for MedicalIDEmergencyContactsCellView);
        sub_2588A37E0(&qword_27F961470, type metadata accessor for MedicalIDBiometricsCell);
        v98 = v171;
        sub_2588BC778();
        sub_2588A4928(v98, v180, sub_2588A3660);
        swift_storeEnumTagMultiPayload();
        sub_2588A3828();
        sub_2588A3908();
        v99 = v182;
        sub_2588BC778();
        sub_2588A49BC(v98, sub_2588A3660);
        sub_2588A4928(v99, v186, sub_2588A36A8);
        swift_storeEnumTagMultiPayload();
        sub_2588A39E8();
        sub_2588A3BF0();
        sub_2588BC778();
        sub_2588A49BC(v99, sub_2588A36A8);
        v100 = type metadata accessor for MedicalIDEmergencyContactsCellView;
LABEL_13:
        v80 = v100;
        v81 = v47;
        return sub_2588A49BC(v81, v80);
      }

      v124 = type metadata accessor for MedicalIDDataViewModel();
      v102 = v154;
      sub_2588A4928(v1 + *(v124 + 36), v154, type metadata accessor for MedicalIDBiometricsViewModel);
      sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
      v125 = (*(v183 + 80) + 16) & ~*(v183 + 80);
      v126 = swift_allocObject();
      sub_2587C4DF4(&v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v126 + v125);
      v127 = swift_getKeyPath();
      v128 = v172;
      *(v102 + *(v172 + 24)) = v127;
      sub_2588A3D54(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v129 = (v102 + *(v128 + 20));
      *v129 = sub_2588A3C50;
      v129[1] = v126;
      sub_2588A4928(v102, v168, type metadata accessor for MedicalIDBiometricsCell);
      swift_storeEnumTagMultiPayload();
      sub_2588A37E0(&qword_27F961468, type metadata accessor for MedicalIDEmergencyContactsCellView);
      sub_2588A37E0(&qword_27F961470, type metadata accessor for MedicalIDBiometricsCell);
      v130 = v171;
      sub_2588BC778();
      sub_2588A4928(v130, v180, sub_2588A3660);
      swift_storeEnumTagMultiPayload();
      sub_2588A3828();
      sub_2588A3908();
      v131 = v182;
      sub_2588BC778();
      sub_2588A49BC(v130, sub_2588A3660);
      sub_2588A4928(v131, v186, sub_2588A36A8);
      swift_storeEnumTagMultiPayload();
      sub_2588A39E8();
      sub_2588A3BF0();
      sub_2588BC778();
      sub_2588A49BC(v131, sub_2588A36A8);
      v108 = type metadata accessor for MedicalIDBiometricsCell;
    }

LABEL_17:
    v80 = v108;
    v81 = v102;
    return sub_2588A49BC(v81, v80);
  }

  if (*(v1 + *(v64 + 24)) > 1u)
  {
    if (v71 == 2)
    {
      v101 = type metadata accessor for MedicalIDDataViewModel();
      v102 = v149;
      sub_2588A4928(v1 + *(v101 + 44), v149, type metadata accessor for MedicalIDMedicalInfoViewModel);
      sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
      v103 = (*(v183 + 80) + 16) & ~*(v183 + 80);
      v104 = swift_allocObject();
      sub_2587C4DF4(&v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v104 + v103);
      v105 = (v102 + *(v158 + 20));
      *v105 = sub_2588A3DE8;
      v105[1] = v104;
      sub_2588A4928(v102, v159, type metadata accessor for MedicalIDMedicationsCellView);
      swift_storeEnumTagMultiPayload();
      sub_2588A37E0(&qword_27F9614A8, type metadata accessor for MedicalIDMedicationsCellView);
      sub_2588A37E0(&qword_27F9614B0, type metadata accessor for MedicalIDAllergiesCellView);
      v106 = v162;
      sub_2588BC778();
      sub_2588A4928(v106, v175, sub_2588A36F0);
      swift_storeEnumTagMultiPayload();
      sub_2588A3A30();
      sub_2588A3B10();
      v107 = v177;
      sub_2588BC778();
      sub_2588A49BC(v106, sub_2588A36F0);
      sub_2588A4928(v107, v186, sub_2588A3738);
      swift_storeEnumTagMultiPayload();
      sub_2588A39E8();
      sub_2588A3BF0();
      sub_2588BC778();
      sub_2588A49BC(v107, sub_2588A3738);
      v108 = type metadata accessor for MedicalIDMedicationsCellView;
    }

    else
    {
      v132 = type metadata accessor for MedicalIDDataViewModel();
      v102 = v151;
      sub_2588A4928(v1 + *(v132 + 44), v151, type metadata accessor for MedicalIDMedicalInfoViewModel);
      sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
      v133 = (*(v183 + 80) + 16) & ~*(v183 + 80);
      v134 = swift_allocObject();
      sub_2587C4DF4(&v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v134 + v133);
      v135 = (v102 + *(v161 + 20));
      *v135 = sub_2588A3DD0;
      v135[1] = v134;
      sub_2588A4928(v102, v159, type metadata accessor for MedicalIDAllergiesCellView);
      swift_storeEnumTagMultiPayload();
      sub_2588A37E0(&qword_27F9614A8, type metadata accessor for MedicalIDMedicationsCellView);
      sub_2588A37E0(&qword_27F9614B0, type metadata accessor for MedicalIDAllergiesCellView);
      v136 = v162;
      sub_2588BC778();
      sub_2588A4928(v136, v175, sub_2588A36F0);
      swift_storeEnumTagMultiPayload();
      sub_2588A3A30();
      sub_2588A3B10();
      v137 = v177;
      sub_2588BC778();
      sub_2588A49BC(v136, sub_2588A36F0);
      sub_2588A4928(v137, v186, sub_2588A3738);
      swift_storeEnumTagMultiPayload();
      sub_2588A39E8();
      sub_2588A3BF0();
      sub_2588BC778();
      sub_2588A49BC(v137, sub_2588A3738);
      v108 = type metadata accessor for MedicalIDAllergiesCellView;
    }

    goto LABEL_17;
  }

  if (*(v1 + *(v64 + 24)))
  {
    v115 = type metadata accessor for MedicalIDDataViewModel();
    sub_2588A4928(v1 + *(v115 + 48), v47, type metadata accessor for MedicalIDPregnancyViewModel);
    sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
    v116 = (*(v183 + 80) + 16) & ~*(v183 + 80);
    v117 = swift_allocObject();
    sub_2587C4DF4(&v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v117 + v116);
    v118 = v160;
    v119 = (v47 + *(v160 + 20));
    *v119 = sub_2588A3E00;
    v119[1] = v117;
    v120 = (v47 + *(v118 + 24));
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    *v120 = sub_2588BC358();
    v120[1] = v121;
    sub_2588A4928(v47, v57, type metadata accessor for MedicalIDPregnancyCellView);
    swift_storeEnumTagMultiPayload();
    sub_2588A37E0(&qword_27F961490, type metadata accessor for MedicalIDPersonalInformationCellView);
    sub_2588A37E0(&qword_27F961498, type metadata accessor for MedicalIDPregnancyCellView);
    v122 = v157;
    sub_2588BC778();
    sub_2588A4928(v122, v175, sub_2588A3780);
    swift_storeEnumTagMultiPayload();
    sub_2588A3A30();
    sub_2588A3B10();
    v123 = v177;
    sub_2588BC778();
    sub_2588A49BC(v122, sub_2588A3780);
    sub_2588A4928(v123, v186, sub_2588A3738);
    swift_storeEnumTagMultiPayload();
    sub_2588A39E8();
    sub_2588A3BF0();
    sub_2588BC778();
    sub_2588A49BC(v123, sub_2588A3738);
    v100 = type metadata accessor for MedicalIDPregnancyCellView;
    goto LABEL_13;
  }

  v72 = type metadata accessor for MedicalIDDataViewModel();
  sub_2588A4928(v1 + *(v72 + 40), v70, type metadata accessor for MedicalIDPersonalInfoViewModel);
  sub_2588A4928(v1, &v148 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
  v73 = (*(v183 + 80) + 16) & ~*(v183 + 80);
  v74 = swift_allocObject();
  sub_2587C4DF4(v66, v74 + v73);
  v75 = &v70[*(v67 + 24)];
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v75 = sub_2588BC358();
  v75[1] = v76;
  v77 = &v70[*(v67 + 20)];
  *v77 = sub_2588A489C;
  v77[1] = v74;
  sub_2588A4928(v70, v57, type metadata accessor for MedicalIDPersonalInformationCellView);
  swift_storeEnumTagMultiPayload();
  sub_2588A37E0(&qword_27F961490, type metadata accessor for MedicalIDPersonalInformationCellView);
  sub_2588A37E0(&qword_27F961498, type metadata accessor for MedicalIDPregnancyCellView);
  v78 = v157;
  sub_2588BC778();
  sub_2588A4928(v78, v175, sub_2588A3780);
  swift_storeEnumTagMultiPayload();
  sub_2588A3A30();
  sub_2588A3B10();
  v79 = v177;
  sub_2588BC778();
  sub_2588A49BC(v78, sub_2588A3780);
  sub_2588A4928(v79, v186, sub_2588A3738);
  swift_storeEnumTagMultiPayload();
  sub_2588A39E8();
  sub_2588A3BF0();
  sub_2588BC778();
  sub_2588A49BC(v79, sub_2588A3738);
  v80 = type metadata accessor for MedicalIDPersonalInformationCellView;
  v81 = v70;
  return sub_2588A49BC(v81, v80);
}

uint64_t sub_2588A2FF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = _s15SectionGridItemVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588A4928(a1, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s15SectionGridItemVMa);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_2587C4DF4(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + v10 + v9) = a3;
  sub_2588A34CC(a4, v11);
}

void sub_2588A31F4(char a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 + *(_s15SectionGridItemVMa() + 32);
    v4 = *v3;
    v5 = *(v3 + 8);
    LOBYTE(v3) = *(v3 + 16);
    v17[0] = v4;
    v17[1] = v5;
    v18 = v3;
    sub_2588A3D54(0, &qword_27F9613E0, sub_2588A0E74, MEMORY[0x277CE11F8]);

    sub_2588BD438();
  }

  else if (a2)
  {
    v7 = a2;
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v8 = sub_2588BBC98();
    __swift_project_value_buffer(v8, qword_27F969938);
    v9 = a2;
    v10 = sub_2588BBC78();
    v11 = sub_2588BDBF8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v12 = 136315650;
      *(v12 + 4) = sub_258790224(0x476E6F6974636553, 0xEF6D657449646972, v17);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258790224(0xD000000000000014, 0x80000002588CB7D0, v17);
      *(v12 + 22) = 2112;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v16;
      *v13 = v16;
      _os_log_impl(&dword_25878B000, v10, v11, "[%s.%s] Authentication failed: %@", v12, 0x20u);
      sub_2588A49BC(v13, sub_25888E220);
      MEMORY[0x259C8DBE0](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v14, -1, -1);
      MEMORY[0x259C8DBE0](v12, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2588A34CC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() applicationWithBundleIdentifier_];
  v5 = [objc_opt_self() sharedGuard];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_2588A4994;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2588A0EE0;
  v8[3] = &block_descriptor_8;
  v7 = _Block_copy(v8);

  [v5 authenticateForSubject:v4 completion:v7];
  _Block_release(v7);
}

uint64_t sub_2588A37E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2588A3828()
{
  result = qword_27F961460;
  if (!qword_27F961460)
  {
    sub_2588A3660(255);
    sub_2588A37E0(&qword_27F961468, type metadata accessor for MedicalIDEmergencyContactsCellView);
    sub_2588A37E0(&qword_27F961470, type metadata accessor for MedicalIDBiometricsCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961460);
  }

  return result;
}

unint64_t sub_2588A3908()
{
  result = qword_27F961478;
  if (!qword_27F961478)
  {
    sub_2588A3618(255);
    sub_2588A37E0(&qword_27F961450, type metadata accessor for MedicalIDMedicalConditionsCellView);
    sub_2588A37E0(&qword_27F961458, type metadata accessor for MedicalIDMedicalNotesCellView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961478);
  }

  return result;
}

unint64_t sub_2588A3A30()
{
  result = qword_27F961488;
  if (!qword_27F961488)
  {
    sub_2588A3780(255);
    sub_2588A37E0(&qword_27F961490, type metadata accessor for MedicalIDPersonalInformationCellView);
    sub_2588A37E0(&qword_27F961498, type metadata accessor for MedicalIDPregnancyCellView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961488);
  }

  return result;
}

unint64_t sub_2588A3B10()
{
  result = qword_27F9614A0;
  if (!qword_27F9614A0)
  {
    sub_2588A36F0(255);
    sub_2588A37E0(&qword_27F9614A8, type metadata accessor for MedicalIDMedicationsCellView);
    sub_2588A37E0(&qword_27F9614B0, type metadata accessor for MedicalIDAllergiesCellView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9614A0);
  }

  return result;
}

uint64_t sub_2588A3C8C(uint64_t a1)
{
  v2 = sub_2588BC1C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC3D8();
}

void sub_2588A3D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm_32()
{
  v87 = _s15SectionGridItemVMa();
  v88 = *(*(v87 - 1) + 80);
  v86 = *(*(v87 - 1) + 64);
  v1 = (v0 + ((v88 + 16) & ~v88));

  v2 = type metadata accessor for MedicalIDDataViewModel();
  v3 = v1 + v2[5];
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 4);

  v7 = *(v3 + 6);

  v8 = *(v3 + 8);

  v9 = *(v3 + 10);

  v10 = type metadata accessor for MedicalIDData();
  v11 = v10[13];
  v12 = sub_2588BB9B8();
  v97 = *(v12 - 8);
  v13 = *(v97 + 48);
  if (!v13(&v3[v11], 1, v12))
  {
    (*(v97 + 8))(&v3[v11], v12);
  }

  v14 = v10[14];
  if (!v13(&v3[v14], 1, v12))
  {
    (*(v97 + 8))(&v3[v14], v12);
  }

  v15 = *&v3[v10[15] + 8];

  v16 = &v3[v10[18]];
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v10[19];
  v19 = sub_2588BB818();
  v89 = *(v19 - 8);
  v95 = *(v89 + 48);
  if (!v95(&v3[v18], 1, v19))
  {
    (*(v89 + 8))(&v3[v18], v19);
  }

  v20 = v10[21];
  if (!v13(&v3[v20], 1, v12))
  {
    (*(v97 + 8))(&v3[v20], v12);
  }

  v21 = v2[6];
  v90 = sub_2588BBB48();
  v91 = (*(v90 - 8) + 8);
  v92 = *v91;
  (*v91)(v1 + v21);

  v22 = v2[8];
  v23 = sub_2588BBAC8();
  v93 = *(*(v23 - 8) + 8);
  v94 = v23;
  v93(v1 + v22);
  v96 = v2;
  v24 = v1 + v2[9];
  v25 = *(v24 + 1);

  v26 = type metadata accessor for MedicalIDBiometricsViewModel();
  v27 = &v24[v26[5]];
  v28 = *(v27 + 1);

  v29 = *(v27 + 2);

  v30 = *(v27 + 4);

  v31 = *(v27 + 6);

  v32 = *(v27 + 8);

  v33 = *(v27 + 10);

  v34 = v10[13];
  if (!v13(&v27[v34], 1, v12))
  {
    (*(v97 + 8))(&v27[v34], v12);
  }

  v35 = v10[14];
  if (!v13(&v27[v35], 1, v12))
  {
    (*(v97 + 8))(&v27[v35], v12);
  }

  v36 = *&v27[v10[15] + 8];

  v37 = &v27[v10[18]];
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    sub_2587C2610(*v37, v38);
  }

  v39 = v10[19];
  if (!v95(&v27[v39], 1, v19))
  {
    (*(v89 + 8))(&v27[v39], v19);
  }

  v40 = v10[21];
  if (!v13(&v27[v40], 1, v12))
  {
    (*(v97 + 8))(&v27[v40], v12);
  }

  (v93)(&v24[v26[6]], v94);
  v41 = &v24[v26[7]];
  (v93)(v41, v94);

  v42 = &v24[v26[8]];
  (v93)(v42, v94);
  v43 = type metadata accessor for MedicalIDWeightFormatter();

  v44 = v1 + v96[10];
  v45 = *(v44 + 1);

  v46 = *(v44 + 2);

  v47 = *(v44 + 4);

  v48 = *(v44 + 6);

  v49 = *(v44 + 8);

  v50 = *(v44 + 10);

  v51 = v10[13];
  if (!v13(&v44[v51], 1, v12))
  {
    (*(v97 + 8))(&v44[v51], v12);
  }

  v52 = v10[14];
  if (!v13(&v44[v52], 1, v12))
  {
    (*(v97 + 8))(&v44[v52], v12);
  }

  v53 = *&v44[v10[15] + 8];

  v54 = &v44[v10[18]];
  v55 = v54[1];
  if (v55 >> 60 != 15)
  {
    sub_2587C2610(*v54, v55);
  }

  v56 = v10[19];
  if (!v95(&v44[v56], 1, v19))
  {
    (*(v89 + 8))(&v44[v56], v19);
  }

  v57 = v10[21];
  if (!v13(&v44[v57], 1, v12))
  {
    (*(v97 + 8))(&v44[v57], v12);
  }

  v58 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v92)(&v44[v58[5]], v90);
  (v93)(&v44[v58[6]], v94);

  v59 = *&v44[v58[9] + 8];

  v60 = (v1 + v96[11]);

  v61 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v92)(v60 + *(v61 + 20), v90);
  (v93)(v60 + *(v61 + 24), v94);
  v62 = v1 + v96[12];
  v63 = *(v62 + 1);

  v64 = type metadata accessor for MedicalIDPregnancyViewModel();
  v65 = &v62[v64[5]];
  v66 = *(v65 + 1);

  v67 = *(v65 + 2);

  v68 = *(v65 + 4);

  v69 = *(v65 + 6);

  v70 = *(v65 + 8);

  v71 = *(v65 + 10);

  v72 = v10[13];
  if (!v13(&v65[v72], 1, v12))
  {
    (*(v97 + 8))(&v65[v72], v12);
  }

  v73 = v10[14];
  if (!v13(&v65[v73], 1, v12))
  {
    (*(v97 + 8))(&v65[v73], v12);
  }

  v74 = *&v65[v10[15] + 8];

  v75 = &v65[v10[18]];
  v76 = v75[1];
  if (v76 >> 60 != 15)
  {
    sub_2587C2610(*v75, v76);
  }

  v77 = v10[19];
  if (!v95(&v65[v77], 1, v19))
  {
    (*(v89 + 8))(&v65[v77], v19);
  }

  v78 = v10[21];
  if (!v13(&v65[v78], 1, v12))
  {
    (*(v97 + 8))(&v65[v78], v12);
  }

  (v92)(&v62[v64[6]], v90);
  (v93)(&v62[v64[7]], v94);
  v79 = *&v62[v64[8]];

  v80 = v64[9];
  if (!v13(&v62[v80], 1, v12))
  {
    (*(v97 + 8))(&v62[v80], v12);
  }

  v81 = *(v1 + v87[5]);

  v82 = (v1 + v87[8]);
  v83 = *v82;

  v84 = v82[1];

  return swift_deallocObject();
}

uint64_t sub_2588A48B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s15SectionGridItemVMa() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2588A4928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2588A4994()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2588A49BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_31Tm()
{
  v87 = _s15SectionGridItemVMa();
  v88 = *(*(v87 - 1) + 80);
  v86 = *(*(v87 - 1) + 64);
  v1 = (v0 + ((v88 + 16) & ~v88));

  v2 = type metadata accessor for MedicalIDDataViewModel();
  v3 = v1 + v2[5];
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 4);

  v7 = *(v3 + 6);

  v8 = *(v3 + 8);

  v9 = *(v3 + 10);

  v10 = type metadata accessor for MedicalIDData();
  v11 = v10[13];
  v12 = sub_2588BB9B8();
  v97 = *(v12 - 8);
  v13 = *(v97 + 48);
  if (!v13(&v3[v11], 1, v12))
  {
    (*(v97 + 8))(&v3[v11], v12);
  }

  v14 = v10[14];
  if (!v13(&v3[v14], 1, v12))
  {
    (*(v97 + 8))(&v3[v14], v12);
  }

  v15 = *&v3[v10[15] + 8];

  v16 = &v3[v10[18]];
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v10[19];
  v19 = sub_2588BB818();
  v89 = *(v19 - 8);
  v95 = *(v89 + 48);
  if (!v95(&v3[v18], 1, v19))
  {
    (*(v89 + 8))(&v3[v18], v19);
  }

  v20 = v10[21];
  if (!v13(&v3[v20], 1, v12))
  {
    (*(v97 + 8))(&v3[v20], v12);
  }

  v21 = v2[6];
  v90 = sub_2588BBB48();
  v91 = (*(v90 - 8) + 8);
  v92 = *v91;
  (*v91)(v1 + v21);

  v22 = v2[8];
  v23 = sub_2588BBAC8();
  v93 = *(*(v23 - 8) + 8);
  v94 = v23;
  v93(v1 + v22);
  v96 = v2;
  v24 = v1 + v2[9];
  v25 = *(v24 + 1);

  v26 = type metadata accessor for MedicalIDBiometricsViewModel();
  v27 = &v24[v26[5]];
  v28 = *(v27 + 1);

  v29 = *(v27 + 2);

  v30 = *(v27 + 4);

  v31 = *(v27 + 6);

  v32 = *(v27 + 8);

  v33 = *(v27 + 10);

  v34 = v10[13];
  if (!v13(&v27[v34], 1, v12))
  {
    (*(v97 + 8))(&v27[v34], v12);
  }

  v35 = v10[14];
  if (!v13(&v27[v35], 1, v12))
  {
    (*(v97 + 8))(&v27[v35], v12);
  }

  v36 = *&v27[v10[15] + 8];

  v37 = &v27[v10[18]];
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    sub_2587C2610(*v37, v38);
  }

  v39 = v10[19];
  if (!v95(&v27[v39], 1, v19))
  {
    (*(v89 + 8))(&v27[v39], v19);
  }

  v40 = v10[21];
  if (!v13(&v27[v40], 1, v12))
  {
    (*(v97 + 8))(&v27[v40], v12);
  }

  (v93)(&v24[v26[6]], v94);
  v41 = &v24[v26[7]];
  (v93)(v41, v94);

  v42 = &v24[v26[8]];
  (v93)(v42, v94);
  v43 = type metadata accessor for MedicalIDWeightFormatter();

  v44 = v1 + v96[10];
  v45 = *(v44 + 1);

  v46 = *(v44 + 2);

  v47 = *(v44 + 4);

  v48 = *(v44 + 6);

  v49 = *(v44 + 8);

  v50 = *(v44 + 10);

  v51 = v10[13];
  if (!v13(&v44[v51], 1, v12))
  {
    (*(v97 + 8))(&v44[v51], v12);
  }

  v52 = v10[14];
  if (!v13(&v44[v52], 1, v12))
  {
    (*(v97 + 8))(&v44[v52], v12);
  }

  v53 = *&v44[v10[15] + 8];

  v54 = &v44[v10[18]];
  v55 = v54[1];
  if (v55 >> 60 != 15)
  {
    sub_2587C2610(*v54, v55);
  }

  v56 = v10[19];
  if (!v95(&v44[v56], 1, v19))
  {
    (*(v89 + 8))(&v44[v56], v19);
  }

  v57 = v10[21];
  if (!v13(&v44[v57], 1, v12))
  {
    (*(v97 + 8))(&v44[v57], v12);
  }

  v58 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v92)(&v44[v58[5]], v90);
  (v93)(&v44[v58[6]], v94);

  v59 = *&v44[v58[9] + 8];

  v60 = (v1 + v96[11]);

  v61 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v92)(v60 + *(v61 + 20), v90);
  (v93)(v60 + *(v61 + 24), v94);
  v62 = v1 + v96[12];
  v63 = *(v62 + 1);

  v64 = type metadata accessor for MedicalIDPregnancyViewModel();
  v65 = &v62[v64[5]];
  v66 = *(v65 + 1);

  v67 = *(v65 + 2);

  v68 = *(v65 + 4);

  v69 = *(v65 + 6);

  v70 = *(v65 + 8);

  v71 = *(v65 + 10);

  v72 = v10[13];
  if (!v13(&v65[v72], 1, v12))
  {
    (*(v97 + 8))(&v65[v72], v12);
  }

  v73 = v10[14];
  if (!v13(&v65[v73], 1, v12))
  {
    (*(v97 + 8))(&v65[v73], v12);
  }

  v74 = *&v65[v10[15] + 8];

  v75 = &v65[v10[18]];
  v76 = v75[1];
  if (v76 >> 60 != 15)
  {
    sub_2587C2610(*v75, v76);
  }

  v77 = v10[19];
  if (!v95(&v65[v77], 1, v19))
  {
    (*(v89 + 8))(&v65[v77], v19);
  }

  v78 = v10[21];
  if (!v13(&v65[v78], 1, v12))
  {
    (*(v97 + 8))(&v65[v78], v12);
  }

  (v92)(&v62[v64[6]], v90);
  (v93)(&v62[v64[7]], v94);
  v79 = *&v62[v64[8]];

  v80 = v64[9];
  if (!v13(&v62[v80], 1, v12))
  {
    (*(v97 + 8))(&v62[v80], v12);
  }

  v81 = *(v1 + v87[5]);

  v82 = (v1 + v87[8]);
  v83 = *v82;

  v84 = v82[1];

  return swift_deallocObject();
}

void sub_2588A5498(char a1, void *a2)
{
  v5 = *(_s15SectionGridItemVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  sub_2588A31F4(a1, a2, v6);
}

uint64_t sub_2588A5538(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588A560C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2588A5694@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a2;
  v65 = a3;
  v66 = a1;
  v5 = type metadata accessor for MedicalIDEditBiometricsModalView();
  v6 = (a4 + v5[5]);
  sub_2587FC7CC(0, &qword_27F95DC40);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  sub_2588BD2B8();
  v7 = v72;
  *v6 = v71;
  v6[1] = v7;
  v8 = v74;
  v6[2] = v73;
  v6[3] = v8;
  v9 = v5[6];
  *(a4 + v9) = swift_getKeyPath();
  v10 = MEMORY[0x277CDF458];
  sub_2588A5E40(0, &qword_27F95DB20, MEMORY[0x28220C180], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v11 = v5[7];
  *(a4 + v11) = swift_getKeyPath();
  sub_2588A5E40(0, &qword_27F95DB30, MEMORY[0x277CDD848], v10);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v5[8];
  type metadata accessor for MedicalIDDataManager();
  sub_2588A87B0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v12 = sub_2588BBF58();
  *(v12 + 8) = v13 & 1;
  v14 = (a4 + v5[9]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v14 = sub_2588BC358();
  v14[1] = v15;
  v16 = a4 + v5[12];
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v21 = (*(*(v20 - 8) + 56))(v58 - v19, 1, 1, v20);
  v62 = v18;
  MEMORY[0x28223BE20](v21);
  v61 = v19;
  sub_2588A5EA4(v58 - v19, v58 - v19, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v63 = v16;
  sub_2588BD2B8();
  sub_2588213C4(v58 - v19, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v22 = a4 + v5[13];
  sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v27 = (*(*(v26 - 8) + 56))(v58 - v25, 1, 1, v26);
  MEMORY[0x28223BE20](v27);
  v59 = v25;
  sub_2588A5EA4(v58 - v25, v58 - v25, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v60 = v22;
  sub_2588BD2B8();
  sub_2588213C4(v58 - v25, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v28 = sub_2588BD9A8();
  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    v30 = sub_2588BD8A8();
    v32 = v31;
  }

  else
  {
    v32 = 0xEA00000000007363;
    v30 = 0x697274656D6F6942;
  }

  v33 = (a4 + v5[15]);
  *v33 = v30;
  v33[1] = v32;
  v34 = a4 + v5[16];
  sub_2588A5F18();
  sub_2588BBE88();
  v35 = *(&v67 + 1);
  v36 = v68;
  *v34 = v67;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36;
  v37 = v66;
  sub_2588A5F6C(v66, a4, type metadata accessor for MedicalIDBiometricsViewModel);
  v38 = v64;
  v39 = v65;
  *(a4 + v5[10]) = v64;
  *(a4 + v5[11]) = v39;
  v40 = type metadata accessor for MedicalIDBiometricsViewModel();
  v58[1] = v58;
  v41 = v37 + *(v40 + 20);
  v42 = (a4 + v5[14]);
  *v42 = *(v41 + 88);
  v42[1] = 0;
  v43 = MEMORY[0x28223BE20](v40);
  v44 = v58 - v59;
  v45 = *(v41 + 96);
  v46 = *(v43 + 28);
  v47 = v38;

  sub_2587F1E14(v45, v44);
  v48 = MEMORY[0x277CE10B8];
  v49 = v60;
  sub_2588A8A60(v60, &qword_27F961058, MEMORY[0x277CE10B8], sub_2588A8960);
  sub_2588A8960(0, &qword_27F961058, v48);
  *(v49 + *(v50 + 28)) = 0;
  v51 = sub_2588A60B4(v44, v49, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  MEMORY[0x28223BE20](v51);
  v52 = v58 - v61;
  v53 = v37 + *(v40 + 32);
  sub_25884D544(*(v41 + 104), v58 - v61);

  sub_2588A5FD4(v37, type metadata accessor for MedicalIDBiometricsViewModel);
  v54 = MEMORY[0x277CE10B8];
  v55 = v63;
  sub_2588A8A60(v63, &qword_27F9614E8, MEMORY[0x277CE10B8], sub_2588A6034);
  sub_2588A6034(0, &qword_27F9614E8, v54);
  *(v55 + *(v56 + 28)) = 0;
  return sub_2588A60B4(v52, v55, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
}

uint64_t type metadata accessor for MedicalIDEditBiometricsModalView()
{
  result = qword_27F9614F0;
  if (!qword_27F9614F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588A5E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2588A5EA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_258821368(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2588A5F18()
{
  result = qword_27F9614E0;
  if (!qword_27F9614E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9614E0);
  }

  return result;
}

uint64_t sub_2588A5F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2588A5FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2588A6034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258821368(255, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2588A60B4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_258821368(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_2588A6160()
{
  type metadata accessor for MedicalIDBiometricsViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587D2DD4();
    if (v1 <= 0x3F)
    {
      sub_2588A5E40(319, &qword_27F95DAC0, MEMORY[0x28220C180], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2588A5E40(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2588A5E40(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2587BC234();
            if (v5 <= 0x3F)
            {
              sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
              if (v6 <= 0x3F)
              {
                type metadata accessor for HealthDemographicDataProvider();
                if (v7 <= 0x3F)
                {
                  sub_2588A6034(319, &qword_27F9614E8, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_2588A8960(319, &qword_27F961058, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_2588A5E40(319, &qword_27F961500, type metadata accessor for HKBloodType, MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
                      {
                        sub_2588A63D8();
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_2588A63D8()
{
  if (!qword_27F961508)
  {
    sub_2587FC7CC(255, &qword_27F961510);
    sub_2588A644C();
    v0 = sub_2588BBE98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961508);
    }
  }
}

unint64_t sub_2588A644C()
{
  result = qword_27F961518;
  if (!qword_27F961518)
  {
    sub_2587FC7CC(255, &qword_27F961510);
    sub_2588A5F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961518);
  }

  return result;
}

unint64_t sub_2588A64D8()
{
  result = qword_27F961520;
  if (!qword_27F961520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961520);
  }

  return result;
}

uint64_t sub_2588A6548@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDEditBiometricsModalView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_27F95D178 != -1)
  {
    swift_once();
  }

  v7 = *algn_27F9614D8;
  v30 = qword_27F9614D0;
  v31 = type metadata accessor for MedicalIDEditBiometricsModalView;
  sub_2588A5F6C(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditBiometricsModalView);
  v29 = v2;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2588A83B4(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v2 + *(v4 + 20));
  v11 = v10[1];
  v40 = *v10;
  v41 = v11;
  v12 = v10[3];
  v42 = v10[2];
  v43 = v12;
  sub_2587D2DD4();

  sub_2588BD2E8();
  v43 = v38;
  v44 = v39;
  v41 = v36;
  v42 = v37;
  v40 = v35;
  *a1 = swift_getKeyPath();
  sub_2588A5E40(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2588A84E4();
  v14 = v13;
  v15 = (a1 + v13[9]);
  *v15 = v30;
  v15[1] = v7;
  v16 = (a1 + v13[10]);
  *v16 = &unk_2588C8128;
  v16[1] = v9;
  v17 = a1 + v13[11];
  v18 = v41;
  v19 = v43;
  *(v17 + 2) = v42;
  *(v17 + 3) = v19;
  *(v17 + 8) = v44;
  *v17 = v40;
  *(v17 + 1) = v18;
  v20 = (a1 + v13[12]);
  v21 = v29;
  v22 = v31;
  sub_2588A5F6C(v29, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v23 = swift_allocObject();
  sub_2588A83B4(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v8);
  sub_2588A5F6C(v21, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v24 = swift_allocObject();
  sub_2588A83B4(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v8);
  *v20 = sub_2588A8880;
  v20[1] = v23;
  v20[2] = sub_2588A88F0;
  v20[3] = v24;
  v20[4] = nullsub_1;
  v20[5] = 0;
  v25 = a1 + v14[13];
  v32 = 0;
  result = sub_2588BD2B8();
  v27 = v34;
  *v25 = v33;
  *(v25 + 1) = v27;
  return result;
}

uint64_t sub_2588A68C8()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2588A6974();
}

uint64_t sub_2588A6974()
{
  v1[19] = v0;
  v2 = sub_2588BC038();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v7 = sub_2588BC598();
  v1[24] = v7;
  v8 = *(v7 - 8);
  v1[25] = v8;
  v9 = *(v8 + 64) + 15;
  v1[26] = swift_task_alloc();
  v10 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = sub_2588BDA78();
  v1[30] = sub_2588BDA68();
  v12 = sub_2588BDA28();
  v1[31] = v12;
  v1[32] = v11;

  return MEMORY[0x2822009F8](sub_2588A6B2C, v12, v11);
}

uint64_t sub_2588A6B2C()
{
  v51 = v0;
  v1 = *(v0 + 152);
  v2 = type metadata accessor for MedicalIDEditBiometricsModalView();
  *(v0 + 264) = v2;
  v3 = (v1 + v2[8]);
  v4 = *v3;
  v5 = *(v3 + 8);

  v43 = v5;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    sub_2588BDBE8();
    v10 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v8 + 8))(v7, v9);
    v6 = *(v0 + 104);
    v1 = *(v0 + 152);
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 112) = v6;
  *(v0 + 272) = sub_2588A87B0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v13 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588A5F6C(v6 + v13, v12, sub_2587B63B8);

  LoadState<>.loadedValue.getter(v11);
  sub_2588A5FD4(v12, sub_2587B63B8);
  sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v15 = *(*(v14 - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v17 = v2[13];
  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v19 = *(*(v18 - 8) + 64) + 15;
  v20 = swift_task_alloc();
  v21 = v2[12];
  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  *(v0 + 88) = *(v1 + v2[14]);
  sub_2588A5E40(0, &qword_27F961500, type metadata accessor for HKBloodType, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  *(v11 + 88) = *(v0 + 120);
  v22 = sub_25888C468(v16);

  *(v11 + 96) = v22;
  v23 = sub_25888C744(v20);
  sub_2588213C4(v20, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  sub_2588213C4(v16, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);

  *(v11 + 104) = v23;

  MedicalIDBiometricsViewModel.validationResult(for:)(v11, &v46);
  v24 = v47;
  if (v47)
  {
    v25 = *(v0 + 240);
    v26 = v50;
    v44 = v48;
    v45 = v49;
    v27 = v46;

    sub_2587B2CD4();
    swift_allocError();
    *v28 = v27;
    *(v28 + 8) = v24;
    *(v28 + 16) = v44;
    *(v28 + 32) = v45;
    *(v28 + 48) = v26;
    swift_willThrow();
    v29 = *(v0 + 216);
    v30 = *(v0 + 208);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    sub_2588A5FD4(*(v0 + 224), type metadata accessor for MedicalIDData);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = v4;

    if ((v43 & 1) == 0)
    {
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      v38 = *(v0 + 192);
      sub_2588BDBE8();
      v39 = sub_2588BCB58();
      sub_2588BBC68();

      sub_2588BC588();
      swift_getAtKeyPath();

      (*(v37 + 8))(v36, v38);
      v35 = *(v0 + 128);
    }

    *(v0 + 280) = v35;
    v40 = *(v0 + 232);
    *(v0 + 288) = sub_2588BDA68();
    v42 = sub_2588BDA28();
    *(v0 + 296) = v42;
    *(v0 + 304) = v41;

    return MEMORY[0x2822009F8](sub_2588A710C, v42, v41);
  }
}

uint64_t sub_2588A710C()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[23];
  swift_getKeyPath();
  v0[17] = v2;
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588A5F6C(v2 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_2588A5FD4(v5, sub_2587B63B8);
  sub_2588A5FD4(v4, type metadata accessor for MedicalIDData);
  swift_beginAccess();
  sub_2588A5F6C(v3, v4, type metadata accessor for MedicalIDData);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_2588A72B8;
  v8 = v0[35];
  v9 = v0[27];

  return sub_258880280(v9, (v0 + 18));
}

uint64_t sub_2588A72B8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;

  v4 = *(v2 + 296);
  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_2588A7564;
  }

  else
  {
    v6 = sub_2588A73C8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2588A73C8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[27];

  sub_2588A5FD4(v3, type metadata accessor for MedicalIDData);
  v4 = v0[31];
  v5 = v0[32];

  return MEMORY[0x2822009F8](sub_2588A7454, v4, v5);
}

uint64_t sub_2588A7454()
{
  v1 = v0[33];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];

  v11 = v10 + *(v1 + 28);
  sub_25885269C(v7);
  sub_2588BC028();
  (*(v9 + 8))(v7, v8);
  sub_2588A5FD4(v3, type metadata accessor for MedicalIDData);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2588A7564()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[27];

  sub_2588A5FD4(v3, type metadata accessor for MedicalIDData);
  v0[40] = v0[18];
  v4 = v0[31];
  v5 = v0[32];

  return MEMORY[0x2822009F8](sub_2588A75F8, v4, v5);
}

uint64_t sub_2588A75F8()
{
  v1 = v0[40];
  v2 = v0[30];

  sub_2587CE078();
  swift_allocError();
  *v3 = v1;
  v4 = v0[27];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  sub_2588A5FD4(v0[28], type metadata accessor for MedicalIDData);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2588A76E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for EditBloodTypeCellView();
  v4 = *(v3 - 8);
  v107 = (v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v108 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v90 - v8;
  v98 = type metadata accessor for EditWeightCellView();
  v9 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A86CC();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v104 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v112 = &v90 - v16;
  v17 = type metadata accessor for MedicalIDEditBiometricsModalView();
  v18 = (v17 - 8);
  v101 = *(v17 - 8);
  v111 = *(v101 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MedicalIDBiometricsViewModel();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for EditHeightCellView();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v114 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = (&v90 - v29);
  v113 = &v90 - v29;
  *&v110 = type metadata accessor for MedicalIDBiometricsViewModel;
  sub_2588A5F6C(a1, v24, type metadata accessor for MedicalIDBiometricsViewModel);
  sub_2588A8960(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v90 - v33;
  v35 = v18[15];
  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v36 = v18[13];
  v94 = v18;
  v37 = *(a1 + v36);
  v102 = type metadata accessor for MedicalIDEditBiometricsModalView;
  v99 = v20;
  sub_2588A5F6C(a1, v20, type metadata accessor for MedicalIDEditBiometricsModalView);
  v101 = *(v101 + 80);
  v38 = (v101 + 16) & ~v101;
  v100 = v38;
  v39 = swift_allocObject();
  sub_2588A83B4(v20, v39 + v38);
  v95 = v37;
  swift_retain_n();
  sub_25888FD24(v24, v34, v37, sub_2588A91C4, v39, v30);
  v92 = a1;
  v40 = v110;
  sub_2588A5F6C(a1, v24, v110);
  v93 = MEMORY[0x277CE11F8];
  sub_2588A6034(0, &qword_27F95FAF0, MEMORY[0x277CE11F8]);
  v91 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v90 - v43;
  v45 = v18[14];
  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v46 = v98;
  *&v11[*(v98 + 28)] = 6;
  v47 = v46[9];
  *&v11[v47] = swift_getKeyPath();
  sub_2588A5E40(0, &qword_27F95DB20, MEMORY[0x28220C180], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v48 = &v11[v46[10]];
  v97 = sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  v96 = sub_2587BC2A8();
  *v48 = sub_2588BC358();
  v48[1] = v49;
  sub_2588A5F6C(v24, v11, v40);
  sub_2588A89E0(v44, &v11[v46[5]]);
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = &v90 - v52;
  MEMORY[0x259C8C5A0](v91);
  v54 = MedicalIDBiometricsViewModel.formattedWeightText(for:)(v53);
  v56 = v55;
  sub_2588213C4(v53, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  sub_2588A8A60(v44, &qword_27F95FAF0, v93, sub_2588A6034);
  sub_2588A5FD4(v24, type metadata accessor for MedicalIDBiometricsViewModel);
  v57 = &v11[v46[8]];
  *v57 = v54;
  *(v57 + 1) = v56;
  *(v57 + 2) = 0;
  v58 = v95;
  *&v11[v46[6]] = v95;
  v59 = v94;
  v60 = v92;
  v61 = v92 + v94[18];
  v62 = *v61;
  v63 = *(v61 + 8);
  LOBYTE(v61) = *(v61 + 16);
  LOBYTE(v115) = v62;
  *(&v115 + 1) = v63;
  LOBYTE(v116) = v61;
  sub_2588A63D8();
  sub_2588BBE68();
  v115 = v117;
  LOBYTE(v116) = v118;
  LOBYTE(v117) = 0;
  sub_2587FC7CC(0, &qword_27F961510);
  sub_2588A87B0(&qword_27F961550, type metadata accessor for EditWeightCellView);
  sub_2588A644C();
  v64 = v112;
  sub_2588BD088();

  sub_2588A5FD4(v11, type metadata accessor for EditWeightCellView);
  v65 = v60;
  v66 = v60;
  v67 = v103;
  sub_2588A5F6C(v66, v103, v110);
  v117 = *(v65 + v59[16]);
  sub_2588A5E40(0, &qword_27F961500, type metadata accessor for HKBloodType, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v110 = v115;
  v68 = v116;
  v69 = v99;
  sub_2588A5F6C(v65, v99, v102);
  v70 = v100;
  v71 = swift_allocObject();
  sub_2588A83B4(v69, v71 + v70);
  v72 = sub_2588BC358();
  v73 = v107;
  v74 = v67 + v107[7];
  *v74 = v110;
  *(v74 + 16) = v68;
  *(v67 + v73[8]) = v58;
  v75 = (v67 + v73[9]);
  *v75 = sub_2588A916C;
  v75[1] = v71;
  v76 = (v67 + v73[10]);
  *v76 = v72;
  v76[1] = v77;
  v78 = v114;
  sub_2588A5F6C(v113, v114, type metadata accessor for EditHeightCellView);
  v79 = v104;
  v80 = v105;
  v81 = *(v105 + 16);
  v82 = v106;
  v81(v104, v64, v106);
  v83 = v108;
  sub_2588A5F6C(v67, v108, type metadata accessor for EditBloodTypeCellView);
  v84 = v78;
  v85 = v109;
  sub_2588A5F6C(v84, v109, type metadata accessor for EditHeightCellView);
  sub_2588A8644();
  v87 = v86;
  v81((v85 + *(v86 + 48)), v79, v82);
  sub_2588A5F6C(v83, v85 + *(v87 + 64), type metadata accessor for EditBloodTypeCellView);
  sub_2588A5FD4(v67, type metadata accessor for EditBloodTypeCellView);
  v88 = *(v80 + 8);
  v88(v112, v82);
  sub_2588A5FD4(v113, type metadata accessor for EditHeightCellView);
  sub_2588A5FD4(v83, type metadata accessor for EditBloodTypeCellView);
  v88(v79, v82);
  return sub_2588A5FD4(v114, type metadata accessor for EditHeightCellView);
}

uint64_t sub_2588A814C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MedicalIDEditBiometricsModalView() + 64));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  sub_2588A63D8();
  return sub_2588BBE58();
}

uint64_t sub_2588A81BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F95D108 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F969868;
  v5 = (a1 + *(type metadata accessor for MedicalIDEditBiometricsModalView() + 60));
  v6 = *v5;
  v7 = v5[1];
  *a2 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
}

uint64_t sub_2588A8264()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9614D0 = result;
  *algn_27F9614D8 = v7;
  return result;
}

uint64_t sub_2588A83B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDEditBiometricsModalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588A8418()
{
  v1 = *(type metadata accessor for MedicalIDEditBiometricsModalView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AE310;

  return sub_2588A68C8();
}

void sub_2588A84E4()
{
  if (!qword_27F961528)
  {
    sub_2588A8578();
    sub_2588A87B0(&qword_27F961560, sub_2588A8578);
    v0 = type metadata accessor for MedicalIDEditModal();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961528);
    }
  }
}

void sub_2588A8578()
{
  if (!qword_27F961530)
  {
    sub_2588A5E40(255, &qword_27F961538, sub_2588A8644, MEMORY[0x277CE14B8]);
    sub_2588A87F8();
    sub_2587D68A0();
    v0 = type metadata accessor for EditingScrollView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961530);
    }
  }
}

void sub_2588A8644()
{
  if (!qword_27F961540)
  {
    type metadata accessor for EditHeightCellView();
    sub_2588A86CC();
    type metadata accessor for EditBloodTypeCellView();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961540);
    }
  }
}

void sub_2588A86CC()
{
  if (!qword_27F961548)
  {
    type metadata accessor for EditWeightCellView();
    sub_2587FC7CC(255, &qword_27F961510);
    sub_2588A87B0(&qword_27F961550, type metadata accessor for EditWeightCellView);
    sub_2588A644C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961548);
    }
  }
}

uint64_t sub_2588A87B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2588A87F8()
{
  result = qword_27F961558;
  if (!qword_27F961558)
  {
    sub_2588A5E40(255, &qword_27F961538, sub_2588A8644, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961558);
  }

  return result;
}

uint64_t sub_2588A8880@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDEditBiometricsModalView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2588A76E0(v4, a1);
}

uint64_t sub_2588A88F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDEditBiometricsModalView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2588A81BC(v4, a1);
}

void sub_2588A8960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258821368(255, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2588A89E0(uint64_t a1, uint64_t a2)
{
  sub_2588A6034(0, &qword_27F95FAF0, MEMORY[0x277CE11F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588A8A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroyTm_33()
{
  v59 = type metadata accessor for MedicalIDEditBiometricsModalView();
  v60 = *(*(v59 - 1) + 80);
  v58 = *(*(v59 - 1) + 64);
  v1 = v0 + ((v60 + 16) & ~v60);
  v2 = *(v1 + 8);

  v57 = type metadata accessor for MedicalIDBiometricsViewModel();
  v3 = v1 + v57[5];
  v4 = *(v3 + 8);

  v5 = *(v3 + 16);

  v6 = *(v3 + 32);

  v7 = *(v3 + 48);

  v8 = *(v3 + 64);

  v9 = *(v3 + 80);

  v10 = type metadata accessor for MedicalIDData();
  v11 = v10[13];
  v12 = sub_2588BB9B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v15 = v10[14];
  if (!v14(v3 + v15, 1, v12))
  {
    (*(v13 + 8))(v3 + v15, v12);
  }

  v16 = *(v3 + v10[15] + 8);

  v17 = (v3 + v10[18]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_2587C2610(*v17, v18);
  }

  v19 = v10[19];
  v20 = sub_2588BB818();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = v10[21];
  if (!v14(v3 + v22, 1, v12))
  {
    (*(v13 + 8))(v3 + v22, v12);
  }

  v23 = v57[6];
  v24 = sub_2588BBAC8();
  v25 = *(*(v24 - 8) + 8);
  v25(v1 + v23, v24);
  v26 = v1 + v57[7];
  v25(v26, v24);

  v27 = v1 + v57[8];
  v25(v27, v24);
  v28 = type metadata accessor for MedicalIDWeightFormatter();

  v29 = (v1 + v59[5]);
  if (v29[1])
  {

    v30 = v29[3];

    v31 = v29[4];

    v32 = v29[6];
  }

  v33 = v29[7];

  v34 = v59[6];
  sub_2588A5E40(0, &qword_27F95DB20, MEMORY[0x28220C180], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(v1 + v34, v24);
  }

  else
  {
    v35 = *(v1 + v34);
  }

  v36 = v59[7];
  sub_2588A5E40(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_2588BC038();
    (*(*(v37 - 8) + 8))(v1 + v36, v37);
  }

  else
  {
    v38 = *(v1 + v36);
  }

  v39 = *(v1 + v59[8]);

  v40 = *(v1 + v59[11]);

  v41 = v1 + v59[12];
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v43 = v42;
  v44 = *(v42 - 8);
  if (!(*(v44 + 48))(v41, 1, v42))
  {
    (*(v44 + 8))(v41, v43);
  }

  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  v46 = *(v41 + *(v45 + 28));

  v47 = v1 + v59[13];
  sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v49 = v48;
  v50 = *(v48 - 8);
  if (!(*(v50 + 48))(v47, 1, v48))
  {
    (*(v50 + 8))(v47, v49);
  }

  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v52 = *(v47 + *(v51 + 28));

  v53 = *(v1 + v59[14] + 8);

  v54 = *(v1 + v59[15] + 8);

  v55 = *(v1 + v59[16] + 8);

  return swift_deallocObject();
}

uint64_t MedicalIDNavigationBarView.init(healthStore:medicalIDData:showDateUpdated:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a1;
  v45 = a4;
  v47 = a5;
  sub_2588A9678(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v41 - v12);
  v49 = a3;
  sub_2588A96AC(a2, &v41 - v12, sub_2588A9678);
  v14 = type metadata accessor for MedicalIDData();
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v13, 1, v14);
  v17 = sub_2588A9678;
  if (v16 == 1)
  {
LABEL_2:
    v42 = 0;
    v18 = 0;
    goto LABEL_9;
  }

  v18 = v13[1];
  v17 = type metadata accessor for MedicalIDData;
  if (v18)
  {
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *v13 & 0xFFFFFFFFFFFFLL;
    }

    v17 = type metadata accessor for MedicalIDData;
    if (!v19)
    {
      goto LABEL_2;
    }

    v42 = *v13;

    v17 = type metadata accessor for MedicalIDData;
  }

  else
  {
    v42 = 0;
  }

LABEL_9:
  sub_2588ACEFC(v13, v17);
  sub_2587AFFC8(0);
  v43 = &v41;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A96AC(a2, v11, sub_2588A9678);
  v24 = v15(v11, 1, v14);
  v46 = a2;
  if (v24 == 1)
  {
    sub_2588ACEFC(v11, sub_2588A9678);
    v25 = sub_2588BB9B8();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  else
  {
    sub_2588A96AC(&v11[*(v14 + 84)], v23, sub_2587AFFC8);
    sub_2588ACEFC(v11, type metadata accessor for MedicalIDData);
  }

  v26 = sub_2588BBAC8();
  v41 = &v41;
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v27[2];
  v32 = v45;
  v31(v30, v45, v26);
  v33 = type metadata accessor for MedicalIDNavigationBarViewModel();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore] = v44;
  v35 = &v34[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName];
  *v35 = v42;
  *(v35 + 1) = v18;
  sub_2588A96AC(v23, &v34[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved], sub_2587AFFC8);
  v31(&v34[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_locale], v30, v26);
  v48.receiver = v34;
  v48.super_class = v33;
  v36 = objc_msgSendSuper2(&v48, sel_init, v41);
  v37 = v27[1];
  v37(v32, v26);
  sub_2588ACEFC(v46, sub_2588A9678);
  v37(v30, v26);
  result = sub_2588ACEFC(v23, sub_2587AFFC8);
  v39 = v49;
  v40 = v47;
  *v47 = v36;
  *(v40 + 8) = v39;
  return result;
}

uint64_t sub_2588A96AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MedicalIDNavigationBarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_2588BC6E8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_2588ACC3C(0, &qword_27F961578, sub_2588A9A7C);
  return sub_2588A979C(v3, v4, a1 + *(v5 + 44));
}

uint64_t sub_2588A979C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2588A9B50();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  *v12 = sub_2588BC608();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  sub_2588ACC3C(0, &qword_27F961678, sub_2588A9BE4);
  sub_2588A9E8C(a1, &v12[*(v13 + 44)]);
  if ((a2 & 1) != 0 && (v14 = sub_2587BCA74(a1 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved), v15))
  {
    v36 = v14;
    v37 = v15;
    sub_25878F648();
    v16 = sub_2588BCDF8();
    v18 = v17;
    v20 = v19;
    v35 = a3;
    sub_2588BCCB8();
    v21 = sub_2588BCDD8();
    v23 = v22;
    v34 = v24;
    v26 = v25;

    sub_2587B1CF8(v16, v18, v20 & 1);
    a3 = v35;

    KeyPath = swift_getKeyPath();
    v28 = v34 & 1;
    sub_2587A99B0(v21, v23, v34 & 1);

    v29 = 1;
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v28 = 0;
    v26 = 0;
    KeyPath = 0;
    v29 = 0;
  }

  sub_2588A96AC(v12, v10, sub_2588A9B50);
  sub_2588A96AC(v10, a3, sub_2588A9B50);
  sub_2588A9AB0();
  v31 = a3 + *(v30 + 48);
  sub_2588ACCA8(v21, v23, v28, v26);
  sub_2588ACCF8(v21, v23, v28, v26);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v28;
  *(v31 + 24) = v26;
  *(v31 + 32) = KeyPath;
  *(v31 + 40) = v29;
  *(v31 + 48) = 0;
  sub_2588ACEFC(v12, sub_2588A9B50);
  sub_2588ACCF8(v21, v23, v28, v26);
  return sub_2588ACEFC(v10, sub_2588A9B50);
}

void sub_2588A9AB0()
{
  if (!qword_27F961588)
  {
    sub_2588A9B50();
    sub_2588ACDAC(255, &qword_27F9615D0, sub_2588A9DF8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F961588);
    }
  }
}

void sub_2588A9B50()
{
  if (!qword_27F961590)
  {
    sub_2588A9BE4(255);
    sub_2588ACBF4(&qword_27F9615C8, sub_2588A9BE4);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961590);
    }
  }
}

void sub_2588A9C18()
{
  if (!qword_27F9615A0)
  {
    sub_2588A9C80();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9615A0);
    }
  }
}

void sub_2588A9C80()
{
  if (!qword_27F9615A8)
  {
    sub_2588A9CE8();
    sub_25885987C();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9615A8);
    }
  }
}

void sub_2588A9CE8()
{
  if (!qword_27F9615B0)
  {
    sub_2588A9D68();
    sub_258814040(255, &qword_27F95D998, &qword_27F95D9A0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9615B0);
    }
  }
}

void sub_2588A9D68()
{
  if (!qword_27F9615B8)
  {
    sub_2588ACDAC(255, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9615B8);
    }
  }
}

void sub_2588A9DF8()
{
  if (!qword_27F9615D8)
  {
    sub_258814040(255, &qword_27F9603C8, &qword_27F9603D0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9615D8);
    }
  }
}

uint64_t sub_2588A9E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v68 = a2;
  sub_2587E6128(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588BCCE8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A9C80();
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v67 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v59 - v16);
  v18 = sub_2588BD258();
  sub_2588A9D68();
  v20 = (v17 + *(v19 + 36));
  sub_2588ACDAC(0, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v22 = *(v21 + 28);
  v23 = *MEMORY[0x277CE1058];
  v24 = sub_2588BD278();
  (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  *v20 = swift_getKeyPath();
  *v17 = v18;
  v25 = v7[13];
  v64 = *MEMORY[0x277CE0A58];
  v63 = v25;
  v25(v10);
  v26 = sub_2588BCC18();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v61 = v27 + 56;
  v62 = v28;
  v28(v5, 1, 1, v26);
  sub_2588BCC28();
  v29 = sub_2588BCC48();
  sub_2588ACEFC(v5, sub_2587E6128);
  v30 = v7[1];
  v31 = v6;
  v66 = v7 + 1;
  v60 = v30;
  v30(v10, v6);
  KeyPath = swift_getKeyPath();
  sub_2588A9CE8();
  v34 = (v17 + *(v33 + 36));
  *v34 = KeyPath;
  v34[1] = v29;
  if (qword_27F95D160 != -1)
  {
    swift_once();
  }

  v35 = qword_27F969918;
  *(v17 + *(v12 + 36)) = qword_27F969918;

  v69 = sub_25888D148();
  v70 = v36;
  sub_25878F648();
  v37 = sub_2588BCDF8();
  v39 = v38;
  v65 = v17;
  v41 = v40;
  v63(v10, v64, v31);
  v62(v5, 1, 1, v26);
  sub_2588BCC28();
  sub_2588BCC48();
  sub_2588ACEFC(v5, sub_2587E6128);
  v60(v10, v31);
  v42 = sub_2588BCDD8();
  v44 = v43;
  v46 = v45;

  sub_2587B1CF8(v37, v39, v41 & 1);

  v69 = v35;

  v47 = sub_2588BCD98();
  v49 = v48;
  LOBYTE(v37) = v50;
  v52 = v51;
  sub_2587B1CF8(v42, v44, v46 & 1);

  v53 = v65;
  v54 = v67;
  sub_2588A96AC(v65, v67, sub_2588A9C80);
  v55 = v68;
  sub_2588A96AC(v54, v68, sub_2588A9C80);
  sub_2588A9C18();
  v57 = v55 + *(v56 + 48);
  *v57 = v47;
  *(v57 + 8) = v49;
  *(v57 + 16) = v37 & 1;
  *(v57 + 24) = v52;
  sub_2587A99B0(v47, v49, v37 & 1);

  sub_2588ACEFC(v53, sub_2588A9C80);
  sub_2587B1CF8(v47, v49, v37 & 1);

  return sub_2588ACEFC(v54, sub_2588A9C80);
}

uint64_t sub_2588AA444@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for MedicalIDNavigationBarViewModifier() + 20);
  v9 = MEMORY[0x28220C150];
  sub_2588ACDAC(0, &qword_27F95DB20, MEMORY[0x28220C150], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_2588ACB0C(v1 + v8, &v18 - v12, &qword_27F95DB20, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2588BBAC8();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_2588BDBE8();
    v17 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2588AA664()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MedicalIDNavigationBarViewModifier() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2588AA7B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_2588BC6E8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_2588ACC3C(0, &qword_27F961578, sub_2588A9A7C);
  return sub_2588A979C(v3, v4, a1 + *(v5 + 44));
}

void sub_2588AA84C()
{
  if (!qword_27F9615E8)
  {
    sub_2588A9A7C(255);
    sub_2588ACBF4(&qword_27F9615F0, sub_2588A9A7C);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9615E8);
    }
  }
}

uint64_t type metadata accessor for MedicalIDNavigationBarViewModifier()
{
  result = qword_27F9615F8;
  if (!qword_27F9615F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588AA954()
{
  sub_2588ACDAC(319, &qword_27F95DAC0, MEMORY[0x28220C150], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2587BC234();
    if (v1 <= 0x3F)
    {
      sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
      if (v2 <= 0x3F)
      {
        sub_2588ACDAC(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2588ACDAC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2588AAAE0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_2588AC6A0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2588BC828();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2588AC6DC();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC66C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v23 = &a1[*(type metadata accessor for MedicalIDNavigationBarViewModifier() + 24)];
  if (*v23)
  {
    if ([*v23 isHostingView])
    {
      (*(v5 + 56))(v20, 1, 1, v4);
      v24 = sub_2588ACBF4(&qword_27F961650, sub_2588AC6DC);
      v38 = v36;
      v39 = v24;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v20, v4, OpaqueTypeConformance2);
      sub_2588ACB94(v20, sub_2588AC66C);
    }

    else
    {
      v26 = sub_2588BC818();
      v34 = v8;
      MEMORY[0x28223BE20](v26);
      *(&v34 - 2) = a1;
      sub_2588AC744();
      sub_2588BBF88();
      v27 = sub_2588ACBF4(&qword_27F961650, sub_2588AC6DC);
      v28 = v34;
      v29 = v36;
      MEMORY[0x259C8B9F0](v14, v36, v27);
      (*(v5 + 16))(v20, v28, v4);
      (*(v5 + 56))(v20, 0, 1, v4);
      v38 = v29;
      v39 = v27;
      v30 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v20, v4, v30);
      sub_2588ACB94(v20, sub_2588AC66C);
      (*(v5 + 8))(v28, v4);
      (*(v35 + 8))(v14, v29);
    }

    v31 = sub_2588AC798();
    MEMORY[0x259C8B9F0](v22, v16, v31);
    return sub_2588ACB94(v22, sub_2588AC66C);
  }

  else
  {
    v33 = *(v23 + 1);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2588AAFA4@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  sub_2587B63B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A9678(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = (&v50 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v55 = *&a1[*(type metadata accessor for MedicalIDNavigationBarViewModifier() + 28)];
  v15 = sub_2588AA664();
  swift_getKeyPath();
  v60 = v15;
  sub_2588ACBF4(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v16 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588A96AC(v15 + v16, v6, sub_2587B63B8);

  LoadState<>.loadedValue.getter(v14);
  sub_2588ACEFC(v6, sub_2587B63B8);
  v17 = type metadata accessor for MedicalIDData();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v14, 0, 1, v17);
  v19 = *a1;
  v20 = sub_2588BBAC8();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AA444(v23);
  v59 = v19;
  v57 = v14;
  v24 = v14;
  v25 = v52;
  sub_2588A96AC(v24, v52, sub_2588A9678);
  v26 = *(v18 + 48);
  v27 = v26(v25, 1, v17);
  v28 = sub_2588A9678;
  if (v27 == 1)
  {
    v53 = 0;
    v29 = 0;
    v30 = v54;
  }

  else
  {
    v29 = v25[1];
    v28 = type metadata accessor for MedicalIDData;
    v30 = v54;
    if (v29)
    {
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = *v25 & 0xFFFFFFFFFFFFLL;
      }

      v28 = type metadata accessor for MedicalIDData;
      if (v31)
      {
        v53 = *v25;

        v28 = type metadata accessor for MedicalIDData;
      }

      else
      {
        v53 = 0;
        v29 = 0;
      }
    }

    else
    {
      v53 = 0;
    }
  }

  sub_2588ACEFC(v25, v28);
  sub_2587AFFC8(0);
  v54 = &v50;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A96AC(v57, v30, sub_2588A9678);
  if (v26(v30, 1, v17) == 1)
  {
    sub_2588ACEFC(v30, sub_2588A9678);
    v36 = sub_2588BB9B8();
    v37 = (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  }

  else
  {
    sub_2588A96AC(v30 + *(v17 + 84), v35, sub_2587AFFC8);
    v37 = sub_2588ACEFC(v30, type metadata accessor for MedicalIDData);
  }

  v52 = &v50;
  MEMORY[0x28223BE20](v37);
  v38 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v21[2];
  v39(v38, v38, v20);
  v40 = type metadata accessor for MedicalIDNavigationBarViewModel();
  v41 = objc_allocWithZone(v40);
  v51 = v23;
  v42 = v55;
  *&v41[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore] = v55;
  v43 = &v41[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName];
  *v43 = v53;
  *(v43 + 1) = v29;
  sub_2588A96AC(v35, &v41[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved], sub_2587AFFC8);
  v39(&v41[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_locale], v38, v20);
  v58.receiver = v41;
  v58.super_class = v40;
  v44 = v42;
  v45 = objc_msgSendSuper2(&v58, sel_init);
  v46 = v21[1];
  v46(v38, v20);
  sub_2588ACEFC(v35, sub_2587AFFC8);
  v46(v51, v20);
  result = sub_2588ACEFC(v57, sub_2588A9678);
  v48 = v59;
  v49 = v56;
  *v56 = v45;
  *(v49 + 8) = v48;
  return result;
}

uint64_t sub_2588AB63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_25885251C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2588BC828();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_25883A41C();
  v12 = v11;
  v34 = *(v11 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC880(0);
  v35 = v16;
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v23 = a1 + *(type metadata accessor for MedicalIDNavigationBarViewModifier() + 24);
  v24 = *v23;
  if (*v23)
  {
    if (([v24 isHostingView] & 1) != 0 || !objc_msgSend(v24, sel_shouldShowDoneButton))
    {
      (*(v5 + 56))(v20, 1, 1, v4);
      v28 = sub_2588ACBF4(&qword_27F960048, sub_25883A41C);
      v37 = v12;
      v38 = v28;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v20, v4, OpaqueTypeConformance2);
      sub_2588ACB94(v20, sub_2588AC880);
    }

    else
    {
      v25 = sub_2588BC808();
      v33 = &v33;
      MEMORY[0x28223BE20](v25);
      *(&v33 - 2) = a1;
      sub_2588BD728();
      sub_2588ACBF4(&qword_27F95FAD0, MEMORY[0x277D12688]);
      sub_2588BBF88();
      v26 = sub_2588ACBF4(&qword_27F960048, sub_25883A41C);
      MEMORY[0x259C8B9F0](v15, v12, v26);
      (*(v5 + 16))(v20, v8, v4);
      (*(v5 + 56))(v20, 0, 1, v4);
      v37 = v12;
      v38 = v26;
      v27 = swift_getOpaqueTypeConformance2();
      MEMORY[0x259C8BA00](v20, v4, v27);
      sub_2588ACB94(v20, sub_2588AC880);
      (*(v5 + 8))(v8, v4);
      (*(v34 + 8))(v15, v12);
    }

    v30 = sub_2588AC968();
    MEMORY[0x259C8B9F0](v22, v35, v30);
    return sub_2588ACB94(v22, sub_2588AC880);
  }

  else
  {
    v32 = *(v23 + 8);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2588ABB40(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDNavigationBarViewModifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588A96AC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDNavigationBarViewModifier);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2588ACA48(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_2588ABC58(uint64_t a1)
{
  v21 = sub_2588BC598();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDD848];
  sub_2588ACDAC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_2588BC038();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MedicalIDNavigationBarViewModifier();
  sub_2588ACB0C(a1 + *(v16 + 32), v10, &qword_27F95DB30, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_2588BDBE8();
    v18 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v21);
  }

  sub_2588BC028();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2588ABF04@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_2588BC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC328();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588AC470();
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CDDDC0], v1);
  sub_2588AC3DC();
  v18 = v17;
  v19 = sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC);
  sub_2588BD008();
  (*(v2 + 8))(v5, v1);
  v20 = v33;
  v38 = v33;
  sub_2588AC5DC(0, &qword_27F961628, sub_2588AC66C, sub_2588AC798);
  v22 = v21;
  v39 = v18;
  v40 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588AC66C(255);
  v25 = v24;
  v26 = sub_2588AC798();
  v39 = v25;
  v40 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  (*(v8 + 8))(v11, v7);
  v37 = v20;
  sub_2588AC5DC(0, &qword_27F961660, sub_2588AC880, sub_2588AC968);
  v39 = v7;
  v40 = v22;
  v41 = OpaqueTypeConformance2;
  v42 = v27;
  swift_getOpaqueTypeConformance2();
  sub_2588AC880(255);
  v29 = v28;
  v30 = sub_2588AC968();
  v39 = v29;
  v40 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v34;
  sub_2588BD0B8();
  return (*(v35 + 8))(v16, v31);
}

void sub_2588AC328()
{
  if (!qword_27F961608)
  {
    sub_2588AC3DC();
    sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961608);
    }
  }
}

void sub_2588AC3DC()
{
  if (!qword_27F961610)
  {
    type metadata accessor for MedicalIDNavigationBarViewModifier();
    sub_2588ACBF4(&qword_27F95DB60, type metadata accessor for MedicalIDNavigationBarViewModifier);
    v0 = sub_2588BC8B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961610);
    }
  }
}

void sub_2588AC470()
{
  if (!qword_27F961620)
  {
    sub_2588AC328();
    sub_2588AC5DC(255, &qword_27F961628, sub_2588AC66C, sub_2588AC798);
    sub_2588AC3DC();
    sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC);
    swift_getOpaqueTypeConformance2();
    sub_2588AC66C(255);
    sub_2588AC798();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961620);
    }
  }
}

void sub_2588AC5DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_2588AC6DC()
{
  if (!qword_27F961640)
  {
    sub_2588AC744();
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961640);
    }
  }
}

unint64_t sub_2588AC744()
{
  result = qword_27F961648;
  if (!qword_27F961648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961648);
  }

  return result;
}

unint64_t sub_2588AC798()
{
  result = qword_27F961658;
  if (!qword_27F961658)
  {
    sub_2588AC66C(255);
    sub_2588AC6DC();
    sub_2588ACBF4(&qword_27F961650, sub_2588AC6DC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961658);
  }

  return result;
}

void sub_2588AC8B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2588ACBF4(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2588AC968()
{
  result = qword_27F961670;
  if (!qword_27F961670)
  {
    sub_2588AC880(255);
    sub_25883A41C();
    sub_2588ACBF4(&qword_27F960048, sub_25883A41C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961670);
  }

  return result;
}

uint64_t sub_2588ACA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDNavigationBarViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588ACAAC()
{
  v1 = *(type metadata accessor for MedicalIDNavigationBarViewModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2588ABC58(v2);
}

uint64_t sub_2588ACB0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2588ACDAC(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2588ACB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588ACBF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2588ACC3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2588ACCA8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587A99B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2588ACCF8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587B1CF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2588ACD48@<X0>(uint64_t a1@<X8>)
{
  result = sub_2588BC548();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2588ACD7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2588BC558();
}

void sub_2588ACDAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2588ACE34(uint64_t a1)
{
  v2 = sub_2588BD278();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC388();
}

uint64_t sub_2588ACEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588ACF5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for MedicalIDEditableEmergencyContactsModel();
  sub_2588B174C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BD548();
  v4 = type metadata accessor for AddEmergencyContactView();
  *(a2 + v4[5]) = a1;
  v5 = (a2 + v4[6]);
  v6 = type metadata accessor for AddEmergencyContactFlowViewModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  sub_25880088C(v18);
  v10 = v18[5];
  *(v9 + 88) = v18[4];
  *(v9 + 104) = v10;
  v11 = v18[7];
  *(v9 + 120) = v18[6];
  *(v9 + 136) = v11;
  v12 = v18[1];
  *(v9 + 24) = v18[0];
  *(v9 + 40) = v12;
  v13 = v18[3];
  *(v9 + 56) = v18[2];
  *(v9 + 72) = v13;
  *(v9 + 152) = 0;
  *(v9 + 154) = 0;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  sub_2588BBBC8();
  sub_2588BD2B8();
  *v5 = v16;
  v5[1] = v17;
  v14 = a2 + v4[7];
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for AddEmergencyContactView()
{
  result = qword_27F961680;
  if (!qword_27F961680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588AD108(uint64_t a1@<X8>)
{
  v122 = a1;
  v2 = sub_2588BC598();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  MEMORY[0x28223BE20](v2);
  v103 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for AddEmergencyContactView();
  v5 = *(v126 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v126);
  sub_2588B0574();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B091C(0, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
  *&v107[16] = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v128 = &v103 - v15;
  sub_2588B0990();
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  MEMORY[0x28223BE20](v16);
  v124 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B0BC4();
  *&v111 = *(v19 - 8);
  *(&v111 + 1) = v19;
  v20 = *(v111 + 64);
  MEMORY[0x28223BE20](v19);
  v110 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B0D3C();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = *(v112 + 64);
  MEMORY[0x28223BE20](v22);
  v125 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B0FC8();
  v115 = *(v25 - 8);
  v116 = v25;
  v26 = *(v115 + 64);
  MEMORY[0x28223BE20](v25);
  v114 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B1270();
  v118 = *(v28 - 8);
  v119 = v28;
  v29 = *(v118 + 64);
  MEMORY[0x28223BE20](v28);
  v117 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B158C(0, &qword_27F961740, sub_2588B1270);
  v120 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v121 = &v103 - v33;
  sub_2588B15F0(v1, &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v5 + 80);
  v35 = (v34 + 16) & ~v34;
  v133 = v35 + v6;
  v134 = v34;
  v36 = swift_allocObject();
  v135 = v35;
  v127 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B1660(v127, v36 + v35);
  sub_2588B158C(0, &qword_27F9616A0, sub_2588B05FC);
  sub_2588B0848();
  sub_2588BD318();
  sub_2588B185C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2588BFF50;
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v38 = v1;
  sub_2588BD528();
  v40 = *(v159 + 32);
  v39 = *(v159 + 40);

  *(v37 + 32) = v40;
  *(v37 + 40) = v39;
  *(v37 + 48) = 6579265;
  *(v37 + 56) = 0xE300000000000000;
  v41 = sub_2588BD9A8();

  v42 = HKUIJoinStringsForAutomationIdentifier();

  if (v42)
  {
    sub_2588BD8A8();

    sub_2588B174C(&qword_27F961700, sub_2588B0574);
    v43 = v128;
    sub_2588BCFB8();

    (*(v9 + 8))(v12, v8);
    v44 = (v38 + *(v126 + 24));
    v129 = v38;
    v45 = *v44;
    v131 = v44[1];
    v132 = v45;
    *&v151 = v45;
    *(&v151 + 1) = v131;
    sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    v130 = v46;
    sub_2588BD2E8();
    v47 = v159;
    v48 = v160;
    swift_getKeyPath();
    v159 = v47;
    *&v160 = v48;
    sub_2588B04F0(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
    v123 = v49;
    sub_2588BD448();

    v50 = v38;
    v51 = v127;
    sub_2588B15F0(v50, v127);
    v52 = swift_allocObject();
    sub_2588B1660(v51, v52 + v135);
    *v107 = sub_2588B0A60();
    *&v107[8] = sub_2588B0B70();
    v53 = *&v107[16];
    sub_2588BD068();

    sub_2588B1FE8(v43, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470], sub_2588B091C);
    *&v159 = v132;
    *(&v159 + 1) = v131;
    sub_2588BD2C8();
    v54 = v151;
    swift_getKeyPath();
    *&v159 = v54;
    v128 = sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
    sub_2588BBB98();

    swift_beginAccess();
    v55 = *(v54 + 104);
    v155 = *(v54 + 88);
    v156 = v55;
    v56 = *(v54 + 136);
    v157 = *(v54 + 120);
    v158 = v56;
    v57 = *(v54 + 40);
    v151 = *(v54 + 24);
    v152 = v57;
    v58 = *(v54 + 72);
    v153 = *(v54 + 56);
    v154 = v58;
    v59 = MEMORY[0x277D83D88];
    sub_2588B1F74(&v151, &v159, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);

    v147 = v155;
    v148 = v156;
    v149 = v157;
    v150 = v158;
    v143 = v151;
    v144 = v152;
    v145 = v153;
    v146 = v154;
    sub_2588B15F0(v129, v51);
    v60 = swift_allocObject();
    sub_2588B1660(v51, v60 + v135);
    sub_2588B185C(0, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v59);
    v106 = v61;
    *&v159 = v53;
    *(&v159 + 1) = &type metadata for EmergencyContactPickerSheetView;
    v160 = *v107;
    *&v107[8] = swift_getOpaqueTypeConformance2();
    *&v107[16] = sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    v62 = v109;
    v63 = v110;
    v64 = v124;
    sub_2588BD118();

    v163 = v147;
    v164 = v148;
    v165 = v149;
    v166 = v150;
    v159 = v143;
    v160 = v144;
    v161 = v145;
    v162 = v146;
    sub_2588B1FE8(&v159, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v59, sub_2588B185C);
    (*(v108 + 8))(v64, v62);
    v66 = v131;
    v65 = v132;
    *&v143 = v132;
    *(&v143 + 1) = v131;
    sub_2588BD2C8();
    v67 = v142;
    swift_getKeyPath();
    *&v143 = v67;
    sub_2588BBB98();

    swift_beginAccess();
    LOBYTE(v64) = *(v67 + 16);

    LOBYTE(v141) = v64;
    sub_2588B15F0(v129, v51);
    v68 = swift_allocObject();
    sub_2588B1660(v51, v68 + v135);
    sub_2588B185C(0, &qword_27F960998, &type metadata for EmergencyContactPickerError, v59);
    v70 = v69;
    *&v143 = v62;
    *(&v143 + 1) = v106;
    v144 = *&v107[8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    v73 = *(&v111 + 1);
    v124 = v70;
    v108 = v72;
    v109 = OpaqueTypeConformance2;
    sub_2588BD118();

    (*(v111 + 8))(v63, v73);
    *&v143 = v65;
    *(&v143 + 1) = v66;
    sub_2588BD2C8();
    v74 = v141;
    swift_getKeyPath();
    *&v143 = v74;
    sub_2588BBB98();

    swift_beginAccess();
    v75 = *(v74 + 16);

    if (v75 == 2)
    {
      v76 = 0;
      v77 = 0xE000000000000000;
    }

    else
    {
      LOBYTE(v137) = v75 & 1;
      sub_258870590(&v143);
      v77 = *(&v143 + 1);
      v76 = v143;
    }

    v139 = v76;
    v140 = v77;
    *&v137 = v132;
    *(&v137 + 1) = v131;
    sub_2588BD2E8();
    v78 = v143;
    v79 = v144;
    swift_getKeyPath();
    v137 = v78;
    v138 = v79;
    sub_2588BD448();

    *&v107[16] = v136;

    *&v107[8] = &v103;
    v81 = MEMORY[0x28223BE20](v80);
    v82 = v129;
    MEMORY[0x28223BE20](v81);
    v110 = sub_2588BD748();
    *&v143 = v73;
    *(&v143 + 1) = v124;
    *&v144 = v109;
    *(&v144 + 1) = v108;
    *&v111 = swift_getOpaqueTypeConformance2();
    *(&v111 + 1) = sub_25878F648();
    v124 = sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0]);
    v83 = v113;
    v84 = v114;
    v85 = v125;
    sub_2588BD038();

    (*(v112 + 8))(v85, v83);
    *&v137 = v132;
    *(&v137 + 1) = v131;
    sub_2588BD2E8();
    v86 = v143;
    v87 = v144;
    swift_getKeyPath();
    v137 = v86;
    v138 = v87;
    sub_2588BD448();

    v88 = v127;
    sub_2588B15F0(v82, v127);
    v89 = swift_allocObject();
    sub_2588B1660(v88, v89 + v135);
    type metadata accessor for RelationshipPickerView();
    *&v143 = v83;
    *(&v143 + 1) = MEMORY[0x277D837D0];
    *&v144 = v110;
    *(&v144 + 1) = MEMORY[0x277CE0BD8];
    v145 = v111;
    *&v146 = v124;
    *(&v146 + 1) = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2588B174C(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
    v90 = v116;
    v91 = v117;
    sub_2588BD068();

    v92 = v82;

    (*(v115 + 8))(v84, v90);
    v93 = v82 + *(v126 + 28);
    v94 = *v93;
    if (*(v93 + 8) != 1)
    {

      sub_2588BDBE8();
      v95 = sub_2588BCB58();
      sub_2588BBC68();

      v96 = v103;
      sub_2588BC588();
      swift_getAtKeyPath();
      sub_2588B1654(v94, 0);
      (*(v104 + 8))(v96, v105);
      LOBYTE(v94) = v143;
    }

    if (v94)
    {
      v97 = 1.0;
    }

    else
    {
      v97 = 0.6;
    }

    v98 = v121;
    (*(v118 + 32))(v121, v91, v119);
    *(v98 + *(v120 + 36)) = v97;
    *&v143 = v132;
    *(&v143 + 1) = v131;
    sub_2588BD2C8();
    v99 = v137;
    swift_getKeyPath();
    *&v143 = v99;
    sub_2588BBB98();

    swift_beginAccess();
    v100 = *(v99 + 160);
    v101 = *(v99 + 168);

    *&v137 = v100;
    *(&v137 + 1) = v101;
    sub_2588B15F0(v92, v88);
    v102 = swift_allocObject();
    sub_2588B1660(v88, v102 + v135);
    sub_2588B185C(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2588B18AC();
    sub_2588B1C10();
    sub_2588BD118();

    sub_2587A53D0(v98);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588AE560(uint64_t a1)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  swift_getKeyPath();
  sub_2588B174C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(*&v22[0] + 16);

  v3 = *(v2 + 16);

  if (HKMedicalIDEmergencyContactsIsUnderLimit(v3))
  {
    v4 = type metadata accessor for AddEmergencyContactFlowViewModel();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    *(v7 + 16) = 2;
    sub_25880088C(v22);
    v8 = v22[5];
    *(v7 + 88) = v22[4];
    *(v7 + 104) = v8;
    v9 = v22[7];
    *(v7 + 120) = v22[6];
    *(v7 + 136) = v9;
    v10 = v22[1];
    *(v7 + 24) = v22[0];
    *(v7 + 40) = v10;
    v11 = v22[3];
    *(v7 + 56) = v22[2];
    *(v7 + 72) = v11;
    *(v7 + 152) = 0;
    *(v7 + 154) = 0;
    *(v7 + 160) = 0;
    *(v7 + 168) = 0;
    sub_2588BBBC8();
    v12 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
    v13 = *v12;
    v14 = v12[1];
    sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    sub_2588BD2D8();
    sub_2588BD2C8();
    swift_beginAccess();
    if (*(v7 + 152) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
      sub_2588BBB88();
    }

    *(v7 + 152) = 1;
  }

  else
  {
    v15 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
    v17 = *v15;
    v16 = v15[1];
    *&v22[0] = v17;
    *(&v22[0] + 1) = v16;
    sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    swift_beginAccess();
    if (sub_2587DF874(*(v21 + 16), 0))
    {
      v18 = swift_getKeyPath();
      MEMORY[0x28223BE20](v18);
      sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
      sub_2588BBB88();
    }

    *(v21 + 16) = 0;
  }
}

void sub_2588AE9DC(uint64_t a1@<X8>)
{
  *a1 = sub_2588BC608();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  sub_2588B1EDC();
  sub_2588AEA94(a1 + *(v2 + 44));
  v3 = sub_2588BCBB8();
  sub_2588BBE38();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_2588B158C(0, &qword_27F9616A0, sub_2588B05FC);
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
}

uint64_t sub_2588AEA94@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  sub_2588B091C(0, &qword_27F9616C0, sub_2588B0728, sub_25885987C);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v44 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v41[-v6];
  v8 = sub_2588BD258();
  v9 = sub_2588BCC08();
  KeyPath = swift_getKeyPath();
  sub_2588B0728();
  v12 = (v7 + *(v11 + 36));
  sub_2588B04F0(0, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v14 = *(v13 + 28);
  v15 = *MEMORY[0x277CE1048];
  v16 = sub_2588BD278();
  (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
  *v12 = swift_getKeyPath();
  *v7 = v8;
  v7[1] = KeyPath;
  v7[2] = v9;
  *(v7 + *(v2 + 44)) = sub_2588BD1A8();
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v17 = qword_27F95DA88;
  v18 = sub_2588BCDE8();
  v20 = v19;
  v22 = v21;
  v45 = sub_2588BD1D8();
  v23 = sub_2588BCD98();
  v25 = v24;
  v27 = v26;
  sub_2587B1CF8(v18, v20, v22 & 1);

  sub_2588BCC08();
  v28 = sub_2588BCDD8();
  v30 = v29;
  v42 = v31;
  v33 = v32;

  sub_2587B1CF8(v23, v25, v27 & 1);

  v34 = v44;
  sub_2588B1F74(v7, v44, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
  v35 = v43;
  sub_2588B1F74(v34, v43, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
  sub_2588B0690();
  v37 = v35 + *(v36 + 48);
  *v37 = v28;
  *(v37 + 8) = v30;
  v38 = v42;
  v39 = v42 & 1;
  *(v37 + 16) = v42 & 1;
  *(v37 + 24) = v33;
  sub_2587A99B0(v28, v30, v38 & 1);

  sub_2588B1FE8(v7, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
  sub_2587B1CF8(v28, v30, v39);

  return sub_2588B1FE8(v34, &qword_27F9616C0, sub_2588B0728, sub_25885987C, sub_2588B091C);
}

__n128 sub_2588AEEEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v12 = sub_2587C62DC();

  sub_2588BD528();
  v11 = *(v14 + 24);

  v4 = type metadata accessor for AddEmergencyContactView();
  v5 = *(a1 + *(v4 + 20));
  v6 = (a1 + *(v4 + 24));
  v7 = *v6;
  v9 = v6[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  v10 = v5;
  sub_2588BD2E8();
  swift_getKeyPath();
  sub_2588B04F0(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2588BD2E8();
  swift_getKeyPath();
  sub_2588BD448();

  *(a2 + 104) = v19;
  *(a2 + 120) = v20;
  *(a2 + 136) = v21;
  *(a2 + 152) = v22;
  *(a2 + 40) = v15;
  result = v16;
  *(a2 + 56) = v16;
  *(a2 + 72) = v17;
  *(a2 + 88) = v18;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  *(a2 + 168) = v7;
  *(a2 + 176) = v9;
  *(a2 + 184) = v13;
  return result;
}

uint64_t sub_2588AF1B4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v4 = v12;
  *(&v20[0] + 1) = v3;
  sub_2588BD2C8();
  swift_getKeyPath();
  *&v20[0] = v12;
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v12 + 104);
  v16 = *(v12 + 88);
  v17 = v5;
  v6 = *(v12 + 136);
  v18 = *(v12 + 120);
  v19 = v6;
  v7 = *(v12 + 40);
  v12 = *(v12 + 24);
  v13 = v7;
  v8 = *(*&v20[0] + 72);
  v14 = *(*&v20[0] + 56);
  v15 = v8;
  sub_2588B1F74(&v12, v20, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);

  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v18;
  v20[7] = v19;
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v9 = sub_2587DF798(v20);
  if (v9 != 1)
  {
    sub_2588B1FE8(&v12, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);
  }

  swift_beginAccess();
  if (((v9 != 1) ^ *(v4 + 154)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588BBB88();
  }

  else
  {
    *(v4 + 154) = v9 != 1;
  }
}

uint64_t sub_2588AF4BC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BD2C8();
  swift_getKeyPath();
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v7 + 16);

  swift_beginAccess();
  if (((v4 != 2) ^ *(v7 + 153)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2588BBB88();
  }

  else
  {
    *(v7 + 153) = v4 != 2;
  }
}

uint64_t sub_2588AF6D0(uint64_t a1)
{
  v2 = type metadata accessor for AddEmergencyContactView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588B15F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2588B1660(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_2588AF7D4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_beginAccess();
  if (*(v9 + 153))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6 = *(v5 + 888);
    sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(v9 + 153) = 0;
  }

  sub_2588BD2C8();
  swift_beginAccess();
  if (sub_2587DF874(*(v10 + 16), 2u))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(v10 + 16) = 2;
  }
}

uint64_t sub_2588AFA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
  v4 = *v3;
  v13 = v3[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath();
  v12 = v17;
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v17 + 16);

  if (v5 == 2)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v16 = v5 & 1;
    sub_258870590(&v12);
    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  sub_25878F648();
  result = sub_2588BCDF8();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

__n128 sub_2588AFC20@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MIUIRelationshipPickerDataSource) init];
  v5 = (a1 + *(type metadata accessor for AddEmergencyContactView() + 24));
  v18 = *v5;
  v19 = v5[1];
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  swift_getKeyPath();
  sub_2588B04F0(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v7 = *(v13 + 32);
  v6 = *(v13 + 40);

  v8 = type metadata accessor for RelationshipPickerView();
  v9 = v8[6];
  *(a2 + v9) = swift_getKeyPath();
  sub_2588B04F0(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + v8[8];
  sub_2588B185C(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  *v10 = v13;
  *(v10 + 2) = v14;
  *a2 = v4;
  v11 = (a2 + v8[7]);
  result = v15;
  *v11 = v15;
  v11[1].n128_u64[0] = v16;
  v11[1].n128_u64[1] = v17;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

uint64_t sub_2588AFEA8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AddEmergencyContactView() + 24) + 8);
  *(&v56 + 1) = v1;
  sub_2588B04F0(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath();
  *&v56 = v48;
  sub_2588B174C(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v2 = *(v48 + 104);
  v52 = *(v48 + 88);
  v53 = v2;
  v3 = *(v48 + 136);
  v54 = *(v48 + 120);
  v55 = v3;
  v4 = *(v48 + 40);
  v48 = *(v48 + 24);
  v49 = v4;
  v5 = *(v56 + 72);
  v50 = *(v56 + 56);
  v51 = v5;
  sub_2588B1F74(&v48, &v56, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88], sub_2588B185C);

  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  result = sub_2587DF798(&v56);
  if (result != 1)
  {
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v43 = v56;
    v44 = v57;
    v7 = v61;
    v41 = v62;
    v42 = v63;
    *(&v33 + 1) = v1;
    sub_2588BD2C8();
    swift_getKeyPath();
    *&v33 = v24;
    sub_2588BBB98();

    swift_beginAccess();
    v9 = *(v24 + 160);
    v8 = *(v24 + 168);

    if (v8)
    {

      sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
      sub_2588BD528();
      v10 = v33;
      v26 = v45;
      v27 = v46;
      v28 = v47;
      *(&v24 + 1) = *(&v43 + 1);
      v25 = v44;
      v31 = v41;
      v32 = v42;
      v29 = v9;
      v30 = v8;
      v11 = sub_2587D294C();
      MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v11, 0, &v33);
      swift_getKeyPath();
      sub_2588B174C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
      sub_2588BBB98();

      *&v24 = v10;
      swift_getKeyPath();
      sub_2588BBBB8();

      swift_beginAccess();
      v12 = *(v10 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 16) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_2587F0300(0, *(v12 + 2) + 1, 1, v12);
        *(v10 + 16) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_2587F0300((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[128 * v15];
      v17 = v33;
      v18 = v34;
      v19 = v36;
      *(v16 + 4) = v35;
      *(v16 + 5) = v19;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v20 = v37;
      v21 = v38;
      v22 = v40;
      *(v16 + 8) = v39;
      *(v16 + 9) = v22;
      *(v16 + 6) = v20;
      *(v16 + 7) = v21;
      *(v10 + 16) = v12;
      swift_endAccess();
      swift_getKeyPath();
      sub_2588BBBA8();

      v26 = v45;
      v27 = v46;
      v28 = v47;
      v24 = v43;
      v25 = v44;
      v29 = v9;
      v30 = v8;
      v31 = v41;
      v32 = v42;
      v23 = &v24;
    }

    else
    {
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      v38 = v7;
      v39 = v41;
      v40 = v42;
      v23 = &v33;
    }

    return sub_2587C66FC(v23);
  }

  return result;
}

void sub_2588B03B8()
{
  sub_2588B04F0(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_2587C87A8();
    if (v1 <= 0x3F)
    {
      sub_2588B04F0(319, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2588B185C(319, &qword_27F961690, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2588B04F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2588B0574()
{
  if (!qword_27F961698)
  {
    sub_2588B158C(255, &qword_27F9616A0, sub_2588B05FC);
    sub_2588B0848();
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961698);
    }
  }
}

void sub_2588B05FC()
{
  if (!qword_27F9616A8)
  {
    sub_2588B04F0(255, &qword_27F9616B0, sub_2588B0690, MEMORY[0x277CE14B8]);
    sub_2588B07C0();
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9616A8);
    }
  }
}

void sub_2588B0690()
{
  if (!qword_27F9616B8)
  {
    sub_2588B091C(255, &qword_27F9616C0, sub_2588B0728, sub_25885987C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9616B8);
    }
  }
}

void sub_2588B0728()
{
  if (!qword_27F9616C8)
  {
    sub_258823ABC();
    sub_2588B04F0(255, &qword_27F9615C0, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9616C8);
    }
  }
}

unint64_t sub_2588B07C0()
{
  result = qword_27F9616D0;
  if (!qword_27F9616D0)
  {
    sub_2588B04F0(255, &qword_27F9616B0, sub_2588B0690, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9616D0);
  }

  return result;
}

unint64_t sub_2588B0848()
{
  result = qword_27F9616D8;
  if (!qword_27F9616D8)
  {
    sub_2588B158C(255, &qword_27F9616A0, sub_2588B05FC);
    sub_2588B174C(&qword_27F9616E0, sub_2588B05FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9616D8);
  }

  return result;
}

void sub_2588B091C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2588B0990()
{
  if (!qword_27F9616F0)
  {
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9616F0);
    }
  }
}

unint64_t sub_2588B0A60()
{
  result = qword_27F9616F8;
  if (!qword_27F9616F8)
  {
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B174C(&qword_27F961700, sub_2588B0574);
    sub_2588B174C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9616F8);
  }

  return result;
}

unint64_t sub_2588B0B70()
{
  result = qword_27F961708;
  if (!qword_27F961708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961708);
  }

  return result;
}

void sub_2588B0BC4()
{
  if (!qword_27F961710)
  {
    sub_2588B0990();
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88]);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961710);
    }
  }
}

void sub_2588B0D3C()
{
  if (!qword_27F961720)
  {
    sub_2588B0BC4();
    v0 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990();
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v0);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961720);
    }
  }
}

uint64_t sub_2588B0F3C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2588B185C(255, a2, a3, MEMORY[0x277D83D88]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588B0FC8()
{
  if (!qword_27F961730)
  {
    sub_2588B0D3C();
    sub_2588BD748();
    sub_2588B0BC4();
    v0 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990();
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v0);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961730);
    }
  }
}

void sub_2588B1270()
{
  if (!qword_27F961738)
  {
    sub_2588B0FC8();
    type metadata accessor for RelationshipPickerView();
    sub_2588B0D3C();
    sub_2588BD748();
    sub_2588B0BC4();
    v0 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990();
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v0);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0]);
    swift_getOpaqueTypeConformance2();
    sub_2588B174C(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961738);
    }
  }
}

void sub_2588B158C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2588B15F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddEmergencyContactView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588B1654(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2588B1660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddEmergencyContactView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2588B16DC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEmergencyContactView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_2588AEEEC(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_2588B174C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2588B17D4@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AddEmergencyContactView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_2588AFC20(v4, a1).n128_u64[0];
  return result;
}

void sub_2588B185C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2588B18AC()
{
  result = qword_27F961748;
  if (!qword_27F961748)
  {
    sub_2588B158C(255, &qword_27F961740, sub_2588B1270);
    sub_2588B0FC8();
    type metadata accessor for RelationshipPickerView();
    sub_2588B0D3C();
    sub_2588BD748();
    sub_2588B0BC4();
    v1 = MEMORY[0x277D83D88];
    sub_2588B185C(255, &qword_27F960998, &type metadata for EmergencyContactPickerError, MEMORY[0x277D83D88]);
    sub_2588B0990();
    sub_2588B185C(255, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, v1);
    sub_2588B091C(255, &qword_27F9616E8, sub_2588B0574, MEMORY[0x277CDE470]);
    sub_2588B0A60();
    sub_2588B0B70();
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961718, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_2587913CC);
    swift_getOpaqueTypeConformance2();
    sub_2588B0F3C(&qword_27F961728, &qword_27F960998, &type metadata for EmergencyContactPickerError, sub_2587DF370);
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    sub_2588B174C(&qword_27F95E458, MEMORY[0x277D126A0]);
    swift_getOpaqueTypeConformance2();
    sub_2588B174C(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961748);
  }

  return result;
}

unint64_t sub_2588B1C10()
{
  result = qword_27F9608E0;
  if (!qword_27F9608E0)
  {
    sub_2588B185C(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9608E0);
  }

  return result;
}

uint64_t objectdestroyTm_34()
{
  v1 = (type metadata accessor for AddEmergencyContactView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = (v3 + v1[8]);
  v6 = *v5;

  v7 = v5[1];

  sub_2588B1654(*(v3 + v1[9]), *(v3 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_2588B1E08(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddEmergencyContactView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2588B1EDC()
{
  if (!qword_27F961750)
  {
    sub_2588B04F0(255, &qword_27F9616B0, sub_2588B0690, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961750);
    }
  }
}

uint64_t sub_2588B1F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2588B1FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2588B20A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B42E8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for RelationshipPickerView();
  sub_25883AB58(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BC038();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2588BDBE8();
    v16 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2588B22B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v81 = sub_2588BC5E8();
  v78 = *(v81 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RelationshipPickerView();
  v6 = v5 - 8;
  v68 = *(v5 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  sub_2588B3FCC();
  v67 = v8;
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3EDC();
  v73 = v12;
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3DB4();
  v75 = v16;
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16);
  v71 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3C5C();
  v80 = v19;
  v76 = *(v19 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v19);
  v74 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B3A84();
  v82 = *(v22 - 8);
  v83 = v22;
  v23 = *(v82 + 64);
  MEMORY[0x28223BE20](v22);
  v79 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (a1 + *(v6 + 40));
  v27 = v25[1];
  v28 = v25[2];
  v91 = *v25;
  v26 = v91;
  v92 = v27;
  v93 = v28;
  sub_2588B37C0(0, &qword_27F95DC78, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v86 = a1;
  sub_2588B404C();
  sub_2588B4168();
  sub_2588BCD38();
  v87 = v26;
  v88 = v27;
  v89 = v28;
  sub_2588BD2C8();
  v87 = v91;
  v88 = v92;
  v84 = a1;
  v29 = a1;
  v30 = v15;
  v31 = v67;
  sub_2588B4284(v29, &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v33 = swift_allocObject();
  sub_2588B434C(&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
  sub_25878E3D8(0, &qword_27F95D458, MEMORY[0x277D83D88]);
  v35 = v34;
  v36 = sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
  v37 = sub_2588B1C10();
  sub_2588BD118();

  (*(v69 + 8))(v11, v31);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v38 = qword_27F95DA88;
  v39 = sub_2588BCDE8();
  v41 = v40;
  v43 = v42;
  v87 = v31;
  v88 = v35;
  v89 = v36;
  v90 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v71;
  v46 = v73;
  sub_2588BCF28();
  sub_2587B1CF8(v39, v41, v43 & 1);

  (*(v70 + 8))(v30, v46);
  v48 = v77;
  v47 = v78;
  v49 = v81;
  (*(v78 + 104))(v77, *MEMORY[0x277CDDDC0], v81);
  v87 = v46;
  v88 = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v74;
  v52 = v75;
  sub_2588BD008();
  (*(v47 + 8))(v48, v49);
  v53 = (*(v72 + 8))(v45, v52);
  MEMORY[0x28223BE20](v53);
  v54 = sub_2588BD748();
  v87 = v52;
  v88 = v50;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0]);
  v58 = v79;
  v57 = v80;
  sub_2588BD0C8();
  (*(v76 + 8))(v51, v57);
  v91 = sub_2588BD198();
  sub_2588B42E8(0, &qword_27F95F148, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  v59 = *(sub_2588BC2F8() - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2588C00B0;
  sub_2588BC2E8();
  v87 = v57;
  v88 = v54;
  v89 = v55;
  v90 = v56;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v83;
  MEMORY[0x259C8C0D0](&v91, v62, v83, MEMORY[0x277CE0F78], v63, MEMORY[0x277CE0F60]);

  return (*(v82 + 8))(v58, v64);
}

uint64_t sub_2588B2CA4(id *a1)
{
  v2 = type metadata accessor for RelationshipPickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [*a1 relationships];
  v6 = sub_2588BD9B8();

  v10[1] = v6;
  swift_getKeyPath();
  sub_2588B4284(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2588B434C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_25878E3D8(0, &qword_280C0DE60, MEMORY[0x277D83940]);
  sub_2588B40F4();
  sub_2588B41E0();
  return sub_2588BD4B8();
}

uint64_t sub_2588B2E54(uint64_t a1)
{
  v2 = sub_2588BC038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RelationshipPickerView();
  v8 = (a1 + *(v7 + 32));
  v9 = *(v8 + 2);
  v13 = *v8;
  *&v14 = v9;
  sub_2588B37C0(0, &qword_27F95DC78, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v10 = a1 + *(v7 + 28);
  v11 = *(v10 + 8);
  *&v13 = *v10;
  *(&v13 + 1) = v11;
  v14 = *(v10 + 16);
  sub_2588B37C0(0, &qword_27F960F70, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  sub_2588B20A4(v6);
  sub_2588BC028();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2588B2FD0(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipPickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588B4284(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2588B434C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_2588B30D4(uint64_t a1)
{
  v2 = sub_2588BC598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B42E8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_2588BC038();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RelationshipPickerView();
  sub_25883AB58(a1 + *(v16 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_2588BDBE8();
    v18 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_2588BC028();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2588B336C()
{
  sub_2588B3860();
  sub_2588B3A84();
  sub_2588B3C5C();
  sub_2588BD748();
  sub_2588B3DB4();
  sub_2588B3EDC();
  sub_2588B3FCC();
  sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
  sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
  sub_2588B1C10();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2588BC1F8();
}

id sub_2588B35A0(void *a1)
{
  v1 = a1;
  v2 = [v1 tokens];
  if (!v2)
  {
    sub_2588BD9B8();
    v2 = sub_2588BD9A8();
  }

  return v2;
}

uint64_t type metadata accessor for RelationshipPickerView()
{
  result = qword_27F961758;
  if (!qword_27F961758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588B369C()
{
  sub_2587F9A7C();
  if (v0 <= 0x3F)
  {
    sub_2588B42E8(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2588B37C0(319, &qword_27F960F70, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_2588B37C0(319, &qword_27F95DC78, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2588B37C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2588B3860()
{
  if (!qword_27F961768)
  {
    sub_2588B3A84();
    sub_2588B3C5C();
    sub_2588BD748();
    sub_2588B3DB4();
    sub_2588B3EDC();
    sub_2588B3FCC();
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961768);
    }
  }
}

void sub_2588B3A84()
{
  if (!qword_27F961770)
  {
    sub_2588B3C5C();
    sub_2588BD748();
    sub_2588B3DB4();
    sub_2588B3EDC();
    sub_2588B3FCC();
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961770);
    }
  }
}

void sub_2588B3C5C()
{
  if (!qword_27F961778)
  {
    sub_2588B3DB4();
    sub_2588B3EDC();
    sub_2588B3FCC();
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961778);
    }
  }
}

void sub_2588B3DB4()
{
  if (!qword_27F961780)
  {
    sub_2588B3EDC();
    sub_2588B3FCC();
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961780);
    }
  }
}

void sub_2588B3EDC()
{
  if (!qword_27F961788)
  {
    sub_2588B3FCC();
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
    sub_2588B1C10();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961788);
    }
  }
}

void sub_2588B3FCC()
{
  if (!qword_27F961790)
  {
    sub_2588B404C();
    sub_2588B4168();
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961790);
    }
  }
}

void sub_2588B404C()
{
  if (!qword_27F961798)
  {
    sub_25878E3D8(255, &qword_280C0DE60, MEMORY[0x277D83940]);
    sub_2588B40F4();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961798);
    }
  }
}

unint64_t sub_2588B40F4()
{
  result = qword_27F9617A0;
  if (!qword_27F9617A0)
  {
    sub_25878E3D8(255, &qword_280C0DE60, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9617A0);
  }

  return result;
}

unint64_t sub_2588B4168()
{
  result = qword_27F9617A8;
  if (!qword_27F9617A8)
  {
    sub_2588B404C();
    sub_2588B41E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9617A8);
  }

  return result;
}

unint64_t sub_2588B41E0()
{
  result = qword_27F9617B0;
  if (!qword_27F9617B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9617B0);
  }

  return result;
}

uint64_t sub_2588B4234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2588B4284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2588B42E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2588B434C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588B43E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RelationshipPickerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for RelationshipPickerView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = *(v3 + 2);

  v6 = v1[6];
  sub_2588B42E8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2588BC038();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  else
  {
    v8 = *&v3[v6];
  }

  v9 = &v3[v1[7]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(v9 + 3);

  v13 = &v3[v1[8]];
  v14 = *(v13 + 1);

  v15 = *(v13 + 2);

  return swift_deallocObject();
}

uint64_t sub_2588B45E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for RelationshipPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v8 = *a1;
  v7 = a1[1];
  v9 = *(v6 + 8);
  v10 = *(v6 + 16);
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
}

void sub_2588B4678()
{
  if (!qword_27F9617C8)
  {
    sub_2588BC138();
    sub_2588B3860();
    sub_2588B3A84();
    sub_2588B3C5C();
    sub_2588BD748();
    sub_2588B3DB4();
    sub_2588B3EDC();
    sub_2588B3FCC();
    sub_25878E3D8(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    sub_2588B4234(&qword_27F9617B8, sub_2588B3FCC);
    sub_2588B1C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2588B4234(&qword_27F95E458, MEMORY[0x277D126A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9617C8);
    }
  }
}

uint64_t type metadata accessor for MedicalIDAllergiesCellView()
{
  result = qword_27F9617D0;
  if (!qword_27F9617D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588B4958@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D140 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9698E0;
  v23 = qword_27F9698D8;
  v4 = *v1;

  v5 = [v4 allergyInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_2588BD858();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v12;
  sub_2588BBAB8();
  v16 = sub_2588BD8B8();
  v18 = v17;
  v19 = (v1 + *(type metadata accessor for MedicalIDAllergiesCellView() + 20));
  v21 = *v19;
  v20 = v19[1];
  *a1 = v23;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v21;
  *(a1 + 64) = v20;
}

__n128 sub_2588B4B84@<Q0>(uint64_t a1@<X8>)
{
  sub_2588B4958(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2588B4BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_27F95D130 != -1)
  {
    swift_once();
  }

  v44 = qword_27F9698B8;
  v45 = qword_27F9698C0;

  v43 = sub_2588BDB88();
  v4 = type metadata accessor for EditBloodTypeCellView();
  v5 = v1 + *(v4 + 20);
  v6 = *v5;
  v7 = *(v5 + 2);
  v49 = v6;
  v50 = v7;
  sub_2588B5574(0, &qword_27F961800, type metadata accessor for HKBloodType, MEMORY[0x277CE11F8]);
  sub_2588BD458();
  v8 = v46;
  v9 = v47;
  v38 = v48;
  v42 = sub_2588B4F74();
  v41 = v10;
  sub_258790D88();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  v12 = *v1;
  v13 = v2[1];
  *(v11 + 32) = *v2;
  *(v11 + 40) = v13;
  *(v11 + 48) = 0x707954646F6F6C42;
  *(v11 + 56) = 0xE900000000000065;

  v14 = sub_2588BD9A8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = sub_2588BD8A8();
    v39 = v17;
    v40 = v16;
  }

  else
  {
    v39 = v13;

    v40 = v12;
  }

  v18 = (v2 + *(v4 + 28));
  v20 = v18[1];
  v37 = *v18;
  v19 = v37;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v38;
  *(a1 + 96) = swift_getKeyPath();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_2588B54C4();
  v22 = v21;
  v23 = v21[20];
  v24 = sub_2588BB9F8();
  v38 = &v36;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2587B2344(v19);
  v28 = sub_2588BB9E8();
  MEMORY[0x28223BE20](v28);
  (*(v25 + 16))(&v36 - v27, &v36 - v27, v24);
  sub_2588BD2B8();
  (*(v25 + 8))(&v36 - v27, v24);
  v29 = a1 + v22[21];
  LOBYTE(v46) = 0;
  result = sub_2588BD2B8();
  v31 = *(&v49 + 1);
  *v29 = v49;
  *(v29 + 8) = v31;
  v32 = v45;
  *a1 = v44;
  *(a1 + 8) = v32;
  v33 = v43;
  *(a1 + 64) = v42;
  *(a1 + 72) = v41 & 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v34 = v39;
  *(a1 + 16) = v40;
  *(a1 + 24) = v34;
  *(a1 + 32) = v33;
  *(a1 + v22[23]) = 0;
  *(a1 + 120) = v37;
  *(a1 + 128) = v20;
  v35 = (a1 + v22[22]);
  *v35 = sub_2588B5218;
  v35[1] = 0;
  return result;
}

uint64_t sub_2588B4F74()
{
  v1 = type metadata accessor for HealthDemographicData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B5574(0, &qword_27F95D8C8, type metadata accessor for HealthDemographicData, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for EditBloodTypeCellView();
  v11 = v0 + *(v10 + 32);
  if (*v11)
  {
    if ([*v11 suggestHealthData])
    {
      v12 = *(v0 + *(v10 + 24));
      swift_getKeyPath();
      v17[1] = v12;
      sub_2588B5724(&qword_27F95D8D0, type metadata accessor for HealthDemographicDataProvider);
      sub_2588BBB98();

      v13 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
      swift_beginAccess();
      sub_2587AF960(v12 + v13, v9);
      if (!(*(v2 + 48))(v9, 1, v1))
      {
        sub_2588B5664(v9, v5);
        sub_2588B55D8(v9);
        v15 = *&v5[*(v1 + 36)];
        sub_2588B56C8(v5);
        return v15;
      }

      sub_2588B55D8(v9);
    }

    return 0;
  }

  else
  {
    v16 = *(v11 + 8);
    sub_2587CEE98();
    sub_2588B5724(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2588B5234()
{
  v1 = *v0;
  v2 = HKStringForBloodType();
  v3 = sub_2588BD8A8();

  return v3;
}

uint64_t sub_2588B5284(uint64_t a1)
{
  *(a1 + 8) = sub_2588B5724(&qword_27F9617E0, type metadata accessor for HKBloodType);
  result = sub_2588B5724(&qword_27F9617E8, type metadata accessor for HKBloodType);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for EditBloodTypeCellView()
{
  result = qword_27F9617F0;
  if (!qword_27F9617F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588B537C()
{
  type metadata accessor for MedicalIDBiometricsViewModel();
  if (v0 <= 0x3F)
  {
    sub_2588B5574(319, &qword_27F961800, type metadata accessor for HKBloodType, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HealthDemographicDataProvider();
      if (v2 <= 0x3F)
      {
        sub_2588B5574(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2587BC234();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2588B54C4()
{
  if (!qword_27F961808)
  {
    type metadata accessor for HKBloodType(255);
    sub_2588B5724(&qword_27F961810, type metadata accessor for HKBloodType);
    v0 = type metadata accessor for ExpandableWheelPickerView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961808);
    }
  }
}

void sub_2588B5574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2588B55D8(uint64_t a1)
{
  sub_2588B5574(0, &qword_27F95D8C8, type metadata accessor for HealthDemographicData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588B5664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDemographicData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588B56C8(uint64_t a1)
{
  v2 = type metadata accessor for HealthDemographicData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588B5724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2588B576C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

MedicalIDUI::NanoEmergencyContactDetailViewModel __swiftcall NanoEmergencyContactDetailViewModel.init()()
{
  v1 = v0;
  result.store.super.isa = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1->store.super.isa = result.store.super.isa;
  return result;
}

uint64_t sub_2588B5860()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_2588B5D4C(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2588C00B0;
  v3 = *MEMORY[0x277CBD018];
  *(v2 + 32) = sub_2588BD8A8();
  *(v2 + 40) = v4;
  v14[0] = v2;
  sub_2588B5D4C(0, &qword_280C0DE60, MEMORY[0x277D83940]);
  sub_2588B5DA0();
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_25878FA5C();
  v5 = sub_2588BD9A8();

  v14[0] = 0;
  v6 = [v1 _ios_meContactWithKeysToFetch_error_];

  if (!v6)
  {
    v11 = v14[0];
    v12 = sub_2588BB878();

    swift_willThrow();
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v7 = v14[0];
  v8 = [v6 identifier];
  v9 = sub_2588BD8A8();

  result = v9;
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Bool __swiftcall NanoEmergencyContactDetailViewModel.canSelectContact(currentContacts:contact:)(Swift::OpaquePointer currentContacts, CNContact contact)
{
  v5 = *v2;
  v6 = [(objc_class *)contact.super.isa identifier];
  v7 = sub_2588BD8A8();
  v9 = v8;

  v22[0] = v7;
  v22[1] = v9;
  v21[2] = v22;
  LOBYTE(v6) = sub_2588B576C(sub_258863060, v21, currentContacts._rawValue);

  if ((v6 & 1) == 0)
  {
    v10 = [(objc_class *)contact.super.isa phoneNumbers];
    sub_2588B5C6C();
    v11 = sub_2588BD9B8();

    v12 = v11 >> 62 ? sub_2588BDD68() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v12 >= 1)
    {
      v13 = [(objc_class *)contact.super.isa identifier];
      v14 = sub_2588BD8A8();
      v16 = v15;

      v22[0] = v5;
      v17 = sub_2588B5860();
      if (v18)
      {
        if (v14 == v17 && v18 == v16)
        {

          return 0;
        }

        v20 = sub_2588BDF98();

        if (v20)
        {
          return 0;
        }
      }

      else
      {
      }

      return 1;
    }
  }

  return 0;
}

BOOL sub_2588B5BF8(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2588BDF98() & 1;
    }
  }

  return result;
}

unint64_t sub_2588B5C6C()
{
  result = qword_27F961820;
  if (!qword_27F961820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F961820);
  }

  return result;
}

uint64_t sub_2588B5CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2588B5D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2588B5D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2588B5DA0()
{
  if (!qword_27F961828)
  {
    sub_25878FA5C();
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961828);
    }
  }
}

uint64_t type metadata accessor for MedicalIDBiometricsCell()
{
  result = qword_27F961830;
  if (!qword_27F961830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588B5E6C()
{
  type metadata accessor for MedicalIDBiometricsViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587B2F78();
    if (v1 <= 0x3F)
    {
      sub_2588B7328(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2588B5F54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588B7328(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MedicalIDBiometricsCell();
  sub_258855944(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BC1C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2588BDBE8();
    v16 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2588B6168@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D108 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27F969868;
  v4 = (v1 + *(type metadata accessor for MedicalIDBiometricsViewModel() + 20));
  v5 = v4[12] || v4[13] || v4[11] != 0;
  v7 = *v1;
  v6 = v1[1];
  v8 = (v1 + *(type metadata accessor for MedicalIDBiometricsCell() + 20));
  v9 = *v8;
  v10 = v8[1];
  *a1 = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = 2;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
}

void sub_2588B6264(void *a1@<X0>, void *a2@<X8>)
{
  v130 = a2;
  v3 = sub_2588BC1C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v129 - v9;
  v148 = type metadata accessor for MedicalIDBiometricsViewModel();
  v11 = (a1 + v148[5]);
  v12 = MEMORY[0x277CDF988];
  v13 = &off_2588BF000;
  v131 = v11[12];
  v132 = a1;
  v134 = v10;
  v135 = v8;
  v137 = v3;
  v133 = v11;
  if (v131)
  {
    sub_2588B5F54(v10);
    (*(v4 + 104))(v8, *v12, v3);
    v14 = sub_2588BC1B8();
    v15 = *(v4 + 8);
    v15(v8, v3);
    v15(v10, v3);
    if (v14)
    {
      v16 = v4;
      if (qword_27F95D110 != -1)
      {
        swift_once();
      }

      v17 = &qword_27F969878;
    }

    else
    {
      v16 = v4;
      if (qword_27F95D118 != -1)
      {
        swift_once();
      }

      v17 = &qword_27F969888;
    }

    v20 = *v17;
    v145 = v17[1];
    v146 = v20;

    sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v22 = v21;
    v23 = *(v21 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v21);
    v26 = &v129 - v25;
    sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v27 - 8);
    v30 = &v129 - v29;
    v31 = v148[7];
    v32 = v132;
    sub_2587F1E14(v131, &v129 - v29);
    if ((*(v23 + 48))(v30, 1, v22) == 1)
    {
      sub_2588213C4(v30, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
      v143 = 0;
      v144 = 0;
    }

    else
    {
      (*(v23 + 32))(v26, v30, v22);
      v33 = sub_2587F21C4(v26);
      v143 = v34;
      v144 = v33;
      (*(v23 + 8))(v26, v22);
    }

    a1 = v32;
    sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v35 = swift_allocObject();
    v13 = &off_2588BF000;
    *(v35 + 16) = xmmword_2588BFF50;
    v36 = a1[1];
    *(v35 + 32) = *a1;
    *(v35 + 40) = v36;
    *(v35 + 48) = 0x746867696548;
    *(v35 + 56) = 0xE600000000000000;

    v37 = sub_2588BD9A8();

    v38 = HKUIJoinStringsForAutomationIdentifier();

    v3 = v137;
    if (!v38)
    {
      __break(1u);
      goto LABEL_47;
    }

    v4 = v16;
    v18 = sub_2588BD8A8();
    v19 = v39;

    v12 = MEMORY[0x277CDF988];
    v11 = v133;
  }

  else
  {
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v18 = 0;
    v19 = 0;
  }

  v40 = v11[13];
  v138 = v18;
  v139 = v19;
  if (!v40)
  {
    v141 = 0;
    v142 = 0;
    v147 = 0;
    v148 = 0;
    v140 = 0;
    v136 = 0;
    v46 = v11[11];
    if (v46)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v147 = v40;
  v41 = v134;
  sub_2588B5F54(v134);
  v42 = v135;
  (*(v4 + 104))(v135, *v12, v3);
  v43 = sub_2588BC1B8();
  v44 = *(v4 + 8);
  v44(v42, v3);
  v44(v41, v3);
  v129 = v4;
  if (v43)
  {
    if (qword_27F95D120 != -1)
    {
      swift_once();
    }

    v45 = &qword_27F969898;
  }

  else
  {
    if (qword_27F95D128 != -1)
    {
      swift_once();
    }

    v45 = &qword_27F9698A8;
  }

  v13 = &off_2588BF000;
  v40 = v147;
  v50 = v45[1];
  v142 = *v45;
  v147 = v50;

  v51 = a1 + v148[8];
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v53 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  v57 = &v129 - v56;
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58 - 8);
  v61 = &v129 - v60;
  sub_25884D544(v40, &v129 - v60);
  if ((*(v54 + 48))(v61, 1, v53) == 1)
  {
    sub_2588213C4(v61, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    v141 = 0;
    v148 = 0;
  }

  else
  {
    (*(v54 + 32))(v57, v61, v53);
    v62 = *&v51[*(type metadata accessor for MedicalIDWeightFormatter() + 24)];
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v141 = sub_2588BDC68();
    v148 = v63;
    (*(v54 + 8))(v57, v53);
  }

  sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2588BFF50;
  a1 = v132;
  v65 = v132[1];
  *(v64 + 32) = *v132;
  *(v64 + 40) = v65;
  *(v64 + 48) = 0x746867696557;
  *(v64 + 56) = 0xE600000000000000;

  v66 = sub_2588BD9A8();

  v67 = HKUIJoinStringsForAutomationIdentifier();

  v3 = v137;
  v4 = v129;
  if (!v67)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v140 = sub_2588BD8A8();
  v136 = v68;

  v12 = MEMORY[0x277CDF988];
  v46 = v133[11];
  if (v46)
  {
LABEL_30:
    v69 = v40;
    v70 = v134;
    sub_2588B5F54(v134);
    v71 = v135;
    (*(v4 + 104))(v135, *v12, v3);
    v72 = sub_2588BC1B8();
    v73 = *(v4 + 8);
    v73(v71, v3);
    v73(v70, v3);
    if (v72)
    {
      if (qword_27F95D130 != -1)
      {
        swift_once();
      }

      v74 = &qword_27F9698B8;
    }

    else
    {
      if (qword_27F95D138 != -1)
      {
        swift_once();
      }

      v74 = &qword_27F9698C8;
    }

    v47 = v74[1];
    v137 = *v74;

    v75 = HKStringForBloodType();
    v48 = sub_2588BD8A8();
    v49 = v76;

    sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v77 = swift_allocObject();
    *(v77 + 16) = *(v13 + 245);
    v78 = a1[1];
    *(v77 + 32) = *a1;
    *(v77 + 40) = v78;
    *(v77 + 48) = 0x707954646F6F6C42;
    *(v77 + 56) = 0xE900000000000065;

    v79 = sub_2588BD9A8();

    v80 = HKUIJoinStringsForAutomationIdentifier();

    if (v80)
    {
      v133 = sub_2588BD8A8();
      v129 = v81;

      v40 = v69;
      goto LABEL_39;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_21:
  v137 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v133 = 0;
  v129 = 0;
LABEL_39:
  v134 = v49;
  v135 = v48;
  if (v40 | v131 | v46)
  {
    v82 = v47;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
LABEL_45:
    v101 = v146;
    v102 = v130;
    *v130 = v146;
    v103 = v101;
    v146 = v101;
    v104 = v145;
    v102[1] = v145;
    v105 = v104;
    v145 = v104;
    v106 = v144;
    v102[2] = v144;
    v107 = v106;
    v144 = v106;
    v109 = v142;
    v108 = v143;
    v102[3] = v143;
    v110 = v108;
    v142 = v109;
    v143 = v108;
    v111 = v138;
    v102[4] = v138;
    v112 = v111;
    v113 = v139;
    v114 = v140;
    v102[5] = v139;
    v102[6] = v109;
    v115 = v113;
    v116 = v148;
    v117 = v141;
    v102[7] = v147;
    v102[8] = v117;
    v140 = v114;
    v141 = v117;
    v102[9] = v116;
    v102[10] = v114;
    v118 = v137;
    v102[11] = v136;
    v102[12] = v118;
    v120 = v134;
    v119 = v135;
    v102[13] = v82;
    v102[14] = v119;
    v121 = v133;
    v102[15] = v120;
    v102[16] = v121;
    v122 = v129;
    v102[17] = v129;
    v102[18] = v83;
    v102[19] = v84;
    v102[20] = v85;
    v102[21] = v86;
    sub_2588B7114(v103, v105, v107, v110, v112, v115);
    v123 = v114;
    v124 = v136;
    sub_2588B7114(v109, v147, v117, v148, v123, v136);
    v125 = v137;
    v126 = v135;
    v127 = v120;
    v128 = v133;
    sub_2588B7114(v137, v82, v135, v127, v133, v122);
    sub_2588B7164(v83, v84);
    sub_2588B71A8(v83, v84);
    sub_2588B71EC(v125, v82, v126, v134, v128, v122);
    sub_2588B71EC(v142, v147, v141, v148, v140, v124);
    sub_2588B71EC(v146, v145, v144, v143, v138, v139);
    return;
  }

  v87 = sub_2588BD858();
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v89 = qword_27F95DA88;
  v90 = sub_2588BBAC8();
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90 - 8);
  v92 = v89;
  sub_2588BBAB8();
  v93 = sub_2588BD8B8();
  v95 = v94;
  sub_2588B7448(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v96 = swift_allocObject();
  *(v96 + 16) = *(v13 + 245);
  v97 = v132[1];
  *(v96 + 32) = *v132;
  *(v96 + 40) = v97;
  *(v96 + 48) = 0xD000000000000015;
  *(v96 + 56) = 0x80000002588CB8F0;

  v98 = sub_2588BD9A8();

  v99 = HKUIJoinStringsForAutomationIdentifier();

  if (v99)
  {
    v82 = v47;
    v85 = sub_2588BD8A8();
    v86 = v100;

    v83 = v93;
    v84 = v95;
    goto LABEL_45;
  }

LABEL_49:
  __break(1u);
}

double sub_2588B7058@<D0>(uint64_t a1@<X8>)
{
  sub_2588B6168(v11);
  *(&v13 + 1) = 0x4018000000000000;
  LOBYTE(v14[0]) = 1;
  sub_2588B6264(v1, v14 + 1);
  v3 = v14[9];
  *(a1 + 192) = v14[8];
  *(a1 + 208) = v3;
  *(a1 + 224) = v14[10];
  *(a1 + 240) = v15;
  v4 = v14[5];
  *(a1 + 128) = v14[4];
  *(a1 + 144) = v4;
  v5 = v14[7];
  *(a1 + 160) = v14[6];
  *(a1 + 176) = v5;
  v6 = v14[1];
  *(a1 + 64) = v14[0];
  *(a1 + 80) = v6;
  v7 = v14[3];
  *(a1 + 96) = v14[2];
  *(a1 + 112) = v7;
  v8 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_2588B7114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_2588B7164(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2588B71A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2588B71EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_2588B723C()
{
  result = qword_27F961840;
  if (!qword_27F961840)
  {
    sub_2588B7294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961840);
  }

  return result;
}

void sub_2588B7294()
{
  if (!qword_27F961848)
  {
    sub_2588B7328(255, &qword_27F961850, sub_2588B738C, MEMORY[0x277CE14B8]);
    sub_2588B7498();
    v0 = type metadata accessor for MedicalIDCellView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961848);
    }
  }
}

void sub_2588B7328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2588B738C()
{
  if (!qword_27F961858)
  {
    v0 = MEMORY[0x277D83D88];
    sub_2588B7448(255, &qword_27F961860, &type metadata for MedicalIDCellBodyText, MEMORY[0x277D83D88]);
    sub_2588B7448(255, &qword_27F961868, &type metadata for MedicalIDCellPlaceholderText, v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F961858);
    }
  }
}

void sub_2588B7448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2588B7498()
{
  result = qword_27F961870;
  if (!qword_27F961870)
  {
    sub_2588B7328(255, &qword_27F961850, sub_2588B738C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961870);
  }

  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.init(data:calendar:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = v8[8];
  *(a4 + v9) = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v10 = sub_2588BD9A8();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    v12 = sub_2588BD8A8();
    v14 = v13;
  }

  else
  {
    v14 = 0xEC0000006F666E49;
    v12 = 0x6C616E6F73726550;
  }

  v15 = (a4 + v8[9]);
  *v15 = v12;
  v15[1] = v14;
  sub_2587B94F8(a1, a4);
  v16 = v8[5];
  v17 = sub_2588BBB48();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a4 + v16, a2, v17);
  v19 = v8[6];
  v20 = sub_2588BBAC8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a4 + v19, a3, v20);
  v22 = [objc_opt_self() calendarWithIdentifier_];
  (*(v21 + 8))(a3, v20);
  (*(v18 + 8))(a2, v17);
  result = sub_2587B955C(a1);
  *(a4 + v8[7]) = v22;
  return result;
}

uint64_t type metadata accessor for MedicalIDPersonalInfoViewModel()
{
  result = qword_27F961878;
  if (!qword_27F961878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter()
{
  v1 = v0[1];
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : *v0 & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  v3 = type metadata accessor for MedicalIDData();
  if (*(v0 + *(v3 + 72) + 8) >> 60 != 15)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(v3 + 76);
  v6 = MEMORY[0x28220B6E0];
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  sub_2588B9914(v0 + v5, &v13 - v9, &qword_27F95DA80, v6);
  v11 = sub_2588BB818();
  LODWORD(v5) = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_2588B9994(v10, &qword_27F95DA80, v6);
  result = 1;
  if (v5 == 1 && !*(v0 + *(v4 + 60) + 8))
  {
    return *(v0 + *(v4 + 80)) != 0;
  }

  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.imageData()()
{
  v1 = v0 + *(type metadata accessor for MedicalIDData() + 72);
  v2 = *v1;
  sub_2587CC620(*v1, *(v1 + 8));
  return v2;
}

uint64_t MedicalIDPersonalInfoViewModel.dateOfBirth()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BB818();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for MedicalIDData() + 76);
  v9 = MEMORY[0x28220B6E0];
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  sub_2588B9914(v1 + v8, &v25 - v12, &qword_27F95DA80, v9);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_2588B9994(v13, &qword_27F95DA80, MEMORY[0x28220B6E0]);
LABEL_7:
    v22 = sub_2588BB9B8();
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  (*(v4 + 32))(v7, v13, v3);
  v14 = *(v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 28));
  if (!v14)
  {
    (*(v4 + 8))(v7, v3);
    goto LABEL_7;
  }

  v15 = sub_2588BB758();
  v16 = [v14 dateFromComponents_];

  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - v19;
  if (v16)
  {
    sub_2588BB988();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v4 + 8))(v7, v3);
  v24 = sub_2588BB9B8();
  (*(*(v24 - 8) + 56))(v20, v21, 1, v24);
  return sub_2587E8EE8(v20, a1);
}

void sub_2588B7C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

Swift::Bool __swiftcall MedicalIDPersonalInfoViewModel.isOrganDonationEditingAvailable(with:)(HKHealthStore with)
{
  v1 = [(objc_class *)with.super.isa profileIdentifier];
  v2 = [v1 type];

  return v2 != 3;
}

Swift::Bool __swiftcall MedicalIDPersonalInfoViewModel.suggestHealthData(with:)(MIUIDisplayConfiguration *with)
{
  v2 = [(MIUIDisplayConfiguration *)with suggestHealthData];
  if (v2)
  {
    v3 = v1[1];
    if (v3)
    {
      if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : *v1 & 0xFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }
    }

    v5 = type metadata accessor for MedicalIDData();
    if (*(v1 + *(v5 + 72) + 8) >> 60 != 15)
    {
      goto LABEL_10;
    }

    v6 = v5;
    v7 = *(v5 + 76);
    v8 = MEMORY[0x28220B6E0];
    sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
    v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v9 - 8);
    v12 = &v15 - v11;
    sub_2588B9914(v1 + v7, &v15 - v11, &qword_27F95DA80, v8);
    v13 = sub_2588BB818();
    LODWORD(v7) = (*(*(v13 - 8) + 48))(v12, 1, v13);
    sub_2588B9994(v12, &qword_27F95DA80, v8);
    if (v7 != 1 || *(v1 + *(v6 + 60) + 8))
    {
LABEL_10:
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = *(v1 + *(v6 + 80)) == 0;
    }
  }

  return v2;
}

uint64_t MedicalIDPersonalInfoViewModel.update(medicalIDData:withPictureData:personName:birthDate:primaryLanguageCode:organDonationStatus:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v50 = a7;
  v51 = a8;
  v49 = a6;
  v16 = *a9;
  v17 = type metadata accessor for MedicalIDData();
  v18 = &a1[v17[18]];
  v19 = *v18;
  v20 = v18[1];
  *v18 = a2;
  v18[1] = a3;
  sub_2587CC620(a2, a3);
  sub_2587C4E98(v19, v20);
  v21 = *(a1 + 1);
  *a1 = a4;
  *(a1 + 1) = a5;

  if (v16)
  {
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v16 = sub_2588BDCC8();
  }

  v22 = v17[20];

  *&a1[v22] = v16;
  v23 = *(v10 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 28));
  if (v23)
  {
    v24 = sub_2588BB9B8();
    v48 = &v48;
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = MEMORY[0x28220BF68];
    sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
    v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v30 - 8);
    v33 = &v48 - v32;
    sub_2588B9914(v49, &v48 - v32, &qword_27F95D880, v29);
    if ((*(v25 + 48))(v33, 1, v24) != 1)
    {
      (*(v25 + 32))(v28, v33, v24);
      sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
      v49 = &v48;
      v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v36 - 8);
      v39 = &v48 - v38;
      v40 = v23;
      v41 = sub_2588BB958();
      v42 = [v40 hk:v41 dateOfBirthDateComponentsWithDate:v48];

      sub_2588BB778();
      (*(v25 + 8))(v28, v24);
      v43 = sub_2588BB818();
      (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
      sub_2588B9A04(v39, &a1[v17[19]]);
      goto LABEL_8;
    }

    sub_2588B9994(v33, &qword_27F95D880, MEMORY[0x28220BF68]);
  }

  v34 = v17[19];
  sub_2588B9994(&a1[v34], &qword_27F95DA80, MEMORY[0x28220B6E0]);
  v35 = sub_2588BB818();
  (*(*(v35 - 8) + 56))(&a1[v34], 1, 1, v35);
LABEL_8:
  v44 = &a1[v17[15]];
  v45 = *(v44 + 1);
  v46 = v51;

  *v44 = v50;
  *(v44 + 1) = v46;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.nameDescription()()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
    }

    else
    {
      v2 = 0;
      v1 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = v1;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.localizedAgeDescription()()
{
  v1 = v0;
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  v75 = v2;
  v76 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = v5;
  v74 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v68 - v9;
  v11 = sub_2588BB818();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = v14;
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for MedicalIDData() + 76);
  v17 = MEMORY[0x28220B6E0];
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v68 - v20;
  v22 = v1 + v16;
  v23 = v1;
  sub_2588B9914(v22, v68 - v20, &qword_27F95DA80, v17);
  if ((*(v12 + 48))(v21, 1, v11) == 1)
  {
    sub_2588B9994(v21, &qword_27F95DA80, MEMORY[0x28220B6E0]);
    (*(v76 + 56))(v10, 1, 1, v75);
    v24 = v10;
LABEL_10:
    sub_2588B9994(v24, &qword_27F95D880, MEMORY[0x28220BF68]);
LABEL_11:
    v36 = 0;
    v37 = 0;
    goto LABEL_17;
  }

  v71 = v10;
  (*(v12 + 32))(v15, v21, v11);
  v25 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v26 = *(v1 + *(v25 + 28));
  v27 = v12;
  if (v26)
  {
    v70 = v23;
    v28 = sub_2588BB758();
    v29 = [v26 dateFromComponents_];

    MEMORY[0x28223BE20](v30);
    v31 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v76;
    if (v29)
    {
      sub_2588BB988();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = *(v12 + 8);
    v34(v15, v11);
    v35 = v75;
    (*(v32 + 56))(v31, v33, 1, v75);
    v24 = v71;
    sub_2587E8EE8(v31, v71);
  }

  else
  {
    v34 = *(v12 + 8);
    v34(v15, v11);
    v35 = v75;
    v32 = v76;
    v24 = v71;
    (*(v76 + 56))(v71, 1, 1, v75);
  }

  if ((*(v32 + 48))(v24, 1, v35) == 1)
  {
    goto LABEL_10;
  }

  v69 = v34;
  v70 = v27;
  v71 = v11;
  v38 = v74;
  v39 = (*(v32 + 32))(v74, v24, v35);
  v68[1] = v68;
  MEMORY[0x28223BE20](v39);
  v41 = v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v25 + 20);
  sub_2588B7C90(0, &qword_27F9606A8, MEMORY[0x28220C200], MEMORY[0x277D84560]);
  v43 = sub_2588BBB38();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2588C00B0;
  (*(v44 + 104))(v47 + v46, *MEMORY[0x277CC9990], v43);
  sub_2588B9D4C(v47);
  swift_setDeallocating();
  (*(v44 + 8))(v47 + v46, v43);
  v48 = v76;
  v49 = swift_deallocClassInstance();
  MEMORY[0x28223BE20](v49);
  v51 = v68 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB9A8();
  sub_2588BBB08();

  v52 = *(v48 + 8);
  v52(v51, v35);
  v53 = sub_2588BB7B8();
  if (v54)
  {
    v69(v41, v71);
    v52(v38, v35);
    goto LABEL_11;
  }

  v55 = v53;
  v56 = sub_2588BD838();
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  sub_2588BD828();
  sub_2588BD818();
  v77 = v55;
  sub_2588BD7F8();
  sub_2588BD818();
  v58 = sub_2588BD858();
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  sub_2588BD848();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v60 = qword_27F95DA88;
  v61 = sub_2588BBAC8();
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = v60;
  sub_2588BBAB8();
  v64 = sub_2588BD8B8();
  v66 = v65;
  v69(v41, v71);
  v52(v74, v75);
  v37 = v66;
  v36 = v64;
LABEL_17:
  result.value._object = v37;
  result.value._countAndFlagsBits = v36;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.spokenLanguageDescription()()
{
  v1 = (v0 + *(type metadata accessor for MedicalIDData() + 60));
  countAndFlagsBits = *v1;
  v3 = v1[1];
  if (v3)
  {
    v4 = v1[1];

    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = v3;
    MedicalIDSpokenLanguage.init(id:)(&v19, v5);
    countAndFlagsBits = v19.languageInCurrentLocale._countAndFlagsBits;
    object = v19.languageInCurrentLocale._object;
    v19.id = v19.languageInCurrentLocale;
    sub_25878F648();

    if (sub_2588BDD28())
    {
    }

    else
    {

      v7 = sub_2588BD838();
      v8 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v7 - 8);
      sub_2588BD828();
      sub_2588BD818();
      sub_2588BD808();

      sub_2588BD818();
      sub_2588BD808();

      sub_2588BD818();
      v9 = sub_2588BD858();
      v10 = *(*(v9 - 8) + 64);
      MEMORY[0x28223BE20](v9 - 8);
      sub_2588BD848();
      if (qword_27F95D000 != -1)
      {
        swift_once();
      }

      v11 = qword_27F95DA88;
      v12 = sub_2588BBAC8();
      v13 = *(*(v12 - 8) + 64);
      MEMORY[0x28223BE20](v12 - 8);
      v14 = v11;
      sub_2588BBAB8();
      countAndFlagsBits = sub_2588BD8B8();
      object = v15;
    }
  }

  else
  {
    object = 0;
  }

  v16 = countAndFlagsBits;
  v17 = object;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

Swift::String_optional __swiftcall MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDData() + 80));
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = [v1 integerValue];
  if (v2 && v2 != 2 && v2 != 1)
  {
    v1 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v3 = sub_2588BD858();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v5 = qword_27F95DA88;
  v6 = sub_2588BBAC8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v5;
  sub_2588BBAB8();
  v1 = sub_2588BD8B8();
LABEL_10:
  result.value._object = v9;
  result.value._countAndFlagsBits = v1;
  return result;
}

void MedicalIDPersonalInfoViewModel.updateOrganDonationStatus(medicalIDData:organDonationStatus:)(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  if (*a2 > 1u || *a2)
  {
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v3 = sub_2588BDCC8();
  }

  v4 = *(type metadata accessor for MedicalIDData() + 80);

  *(a1 + v4) = v3;
}

uint64_t MedicalIDPersonalInfoViewModel.updatePrimaryLanguageCode(medicalIDData:primaryLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for MedicalIDData() + 60));
  v6 = v5[1];

  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.defaultDateOfBirth()@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_2588BB9B8();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB9A8();
  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 20);
  v9 = sub_2588BBB38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC9990], v9);
  sub_2588BBB28();
  v14 = (*(v10 + 8))(v13, v9);
  v15 = v18;
  MEMORY[0x28223BE20](v14);
  sub_2587E8EE8(&v18 - v7, &v18 - v7);
  v16 = *(v1 + 48);
  if (v16(&v18 - v7, 1, v15) == 1)
  {
    (*(v1 + 32))(v19, v4, v15);
    result = v16(&v18 - v7, 1, v15);
    if (result != 1)
    {
      return sub_2588B9994(&v18 - v7, &qword_27F95D880, MEMORY[0x28220BF68]);
    }
  }

  else
  {
    (*(v1 + 8))(v4, v15);
    return (*(v1 + 32))(v19, &v18 - v7, v15);
  }

  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.updatePersonName(medicalIDData:personName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t MedicalIDPersonalInfoViewModel.updateBirthDate(medicalIDData:birthDate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 28));
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_2588BB9B8();
  v28[1] = v28;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28220BF68];
  sub_2588B7C90(0, &qword_27F95D880, MEMORY[0x28220BF68], MEMORY[0x277D83D88]);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v28 - v14;
  sub_2588B9914(a2, v28 - v14, &qword_27F95D880, v11);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_2588B9994(v15, &qword_27F95D880, MEMORY[0x28220BF68]);
LABEL_4:
    v16 = *(type metadata accessor for MedicalIDData() + 76);
    sub_2588B9994(a1 + v16, &qword_27F95DA80, MEMORY[0x28220B6E0]);
    v17 = sub_2588BB818();
    return (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  }

  (*(v7 + 32))(v10, v15, v6);
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v28 - v21;
  v23 = v5;
  v24 = sub_2588BB958();
  v25 = [v23 hk:v24 dateOfBirthDateComponentsWithDate:?];

  sub_2588BB778();
  (*(v7 + 8))(v10, v6);
  v26 = sub_2588BB818();
  (*(*(v26 - 8) + 56))(v22, 0, 1, v26);
  v27 = type metadata accessor for MedicalIDData();
  return sub_2588B9A04(v22, a1 + *(v27 + 76));
}

uint64_t sub_2588B9914(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2588B7C90(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2588B9994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2588B7C90(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2588B9A04(uint64_t a1, uint64_t a2)
{
  sub_2588B7C90(0, &qword_27F95DA80, MEMORY[0x28220B6E0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11MedicalIDUI0A23IDPersonalInfoViewModelV33localizedOrganDonationPickerValue3forSSAA0hI6StatusO_tFZ_0(_BYTE *a1)
{
  if (*a1 <= 1u)
  {
    *a1;
LABEL_3:
    v1 = sub_2588BD858();
    v2 = *(*(v1 - 8) + 64);
    MEMORY[0x28223BE20](v1 - 8);
    goto LABEL_6;
  }

  if (*a1 == 2)
  {
    goto LABEL_3;
  }

  [objc_opt_self() hasStoredRegistrant];
  v3 = sub_2588BD858();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
LABEL_6:
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v5 = qword_27F95DA88;
  v6 = sub_2588BBAC8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v5;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t sub_2588B9D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2588BA19C();
    v3 = sub_2588BDDB8();
    v37 = v3 + 56;
    result = sub_2588BBB38();
    v5 = result;
    v6 = 0;
    v7 = *(result - 8);
    v8 = *(v7 + 16);
    v35 = v7 + 16;
    v36 = v8;
    v30 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v7 + 8);
    v28 = v1;
    v29 = (v7 + 32);
    v10 = *(v7 + 64);
    v38 = *(v7 + 72);
    v34 = v10;
    while (1)
    {
      MEMORY[0x28223BE20](result);
      v33 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = &v27 - v33;
      v36(&v27 - v33);
      v13 = *(v3 + 40);
      sub_2588BA210(&qword_27F9618A8);
      v14 = sub_2588BD788();
      v15 = ~(-1 << *(v3 + 32));
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v37 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) != 0)
      {
        v31 = &v27;
        v32 = v6;
        v20 = v3;
        do
        {
          MEMORY[0x28223BE20](v14);
          v21 = &v27 - v33;
          (v36)(&v27 - v33, *(v20 + 48) + v16 * v38, v5);
          sub_2588BA210(&qword_27F9618B0);
          v22 = sub_2588BD7D8();
          v23 = *v9;
          v14 = (*v9)(v21, v5);
          if (v22)
          {
            result = v23(v12, v5);
            v1 = v28;
            v3 = v20;
            v6 = v32;
            goto LABEL_4;
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v37 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while (((1 << v16) & v18) != 0);
        v1 = v28;
        v3 = v20;
        v6 = v32;
      }

      *(v37 + 8 * v17) = v19 | v18;
      result = (*v29)(*(v3 + 48) + v16 * v38, v12, v5);
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (++v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_2588BA050()
{
  type metadata accessor for MedicalIDData();
  if (v0 <= 0x3F)
  {
    sub_2588BBB48();
    if (v1 <= 0x3F)
    {
      sub_2588BBAC8();
      if (v2 <= 0x3F)
      {
        sub_2588BA134();
        if (v3 <= 0x3F)
        {
          sub_25878E130(319, &qword_27F961898, 0x277CCAC08);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2588BA134()
{
  if (!qword_27F961888)
  {
    sub_25878E130(255, &qword_27F961890, 0x277CBEA80);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961888);
    }
  }
}

void sub_2588BA19C()
{
  if (!qword_27F9618A0)
  {
    sub_2588BBB38();
    sub_2588BA210(&qword_27F9618A8);
    v0 = sub_2588BDDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9618A0);
    }
  }
}

uint64_t sub_2588BA210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2588BBB38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588BA280(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_258828558(0, &qword_27F9618E8, &qword_27F9618F0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - v5;
  sub_2588BAA84();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v49 - v10;
  sub_258828558(0, &qword_27F9618D0, &qword_27F9618D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v53 = *(a1 + 16);
  v61 = v19;
  v62 = v17;
  v63 = v18;
  v20 = sub_25878F648();

  v54 = v20;
  v21 = sub_2588BCDF8();
  v23 = v22;
  v62 = v21;
  v63 = v22;
  v25 = v24 & 1;
  v64 = v24 & 1;
  v65 = v26;
  sub_258790D88();
  v52 = v27;
  v28 = swift_allocObject();
  v66 = *(a1 + 32);
  v29 = v66;
  v51 = xmmword_2588C17A0;
  *(v28 + 16) = xmmword_2588C17A0;
  *(v28 + 32) = v29;
  *(v28 + 48) = 0x726564616548;
  *(v28 + 56) = 0xE600000000000000;
  *(v28 + 64) = 0x656C746954;
  *(v28 + 72) = 0xE500000000000000;
  swift_bridgeObjectRetain_n();
  v30 = sub_2588BD9A8();

  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F9618D8);
    sub_2588BADD0(&qword_27F961910, &qword_27F9618D8, &type metadata for EditSectionHeaderViewTitleStyle, sub_25885AF90);
    sub_2588BCFB8();

    sub_2587B1CF8(v21, v23, v25);

    if (!v61)
    {
      sub_25882C708(&v66);
      v44 = 1;
      v43 = v56;
      goto LABEL_6;
    }

    v62 = v53;
    v63 = v61;

    v32 = sub_2588BCDF8();
    v34 = v33;
    v62 = v32;
    v63 = v33;
    v36 = v35 & 1;
    v64 = v35 & 1;
    v65 = v37;
    v38 = swift_allocObject();
    v39 = v66;
    *(v38 + 16) = v51;
    *(v38 + 32) = v39;
    *(v38 + 48) = 0x726564616548;
    *(v38 + 56) = 0xE600000000000000;
    *(v38 + 64) = 0x7470697263736544;
    *(v38 + 72) = 0xEB000000006E6F69;
    v40 = sub_2588BD9A8();

    v41 = HKUIJoinStringsForAutomationIdentifier();

    if (v41)
    {
      sub_2588BD8A8();

      sub_258828338(0, &qword_27F9618F0);
      sub_2588BADD0(&qword_27F961918, &qword_27F9618F0, &type metadata for EditSectionHeaderViewDescriptionStyle, sub_25885B5E4);
      v42 = v50;
      sub_2588BCFB8();

      sub_2587B1CF8(v32, v34, v36);

      v43 = v56;
      sub_2588BAE50(v42, v56);
      v44 = 0;
LABEL_6:
      (*(v57 + 56))(v43, v44, 1, v58);
      v45 = v55;
      sub_2588BAC20(v16, v55);
      v46 = v59;
      sub_2588BAC9C(v43, v59);
      v47 = v60;
      sub_2588BAC20(v45, v60);
      sub_2588BA9FC();
      sub_2588BAC9C(v46, v47 + *(v48 + 48));
      sub_2588BAD00(v43);
      sub_2588BAD5C(v16);
      sub_2588BAD00(v46);
      sub_2588BAD5C(v45);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2588BA7F8(uint64_t a1@<X8>)
{
  sub_2588BA910();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v20[0] = *v1;
  v20[1] = v7;
  v20[2] = v1[2];
  *v6 = sub_2588BC6F8();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  sub_2588BAAF4();
  sub_2588BA280(v20, &v6[*(v8 + 44)]);
  v9 = sub_2588BCBA8();
  sub_2588BBE38();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2588BAB5C(v6, a1);
  sub_2588BABC0();
  v19 = a1 + *(v18 + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
}

void sub_2588BA910()
{
  if (!qword_27F9618B8)
  {
    sub_2588BA9A4();
    sub_2588BAF8C(&qword_27F9618F8, sub_2588BA9A4);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9618B8);
    }
  }
}

void sub_2588BA9A4()
{
  if (!qword_27F9618C0)
  {
    sub_2588BA9FC();
    v0 = sub_2588BD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9618C0);
    }
  }
}

void sub_2588BA9FC()
{
  if (!qword_27F9618C8)
  {
    sub_258828558(255, &qword_27F9618D0, &qword_27F9618D8);
    sub_2588BAA84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9618C8);
    }
  }
}

void sub_2588BAA84()
{
  if (!qword_27F9618E0)
  {
    sub_258828558(255, &qword_27F9618E8, &qword_27F9618F0);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9618E0);
    }
  }
}

void sub_2588BAAF4()
{
  if (!qword_27F961900)
  {
    sub_2588BA9A4();
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961900);
    }
  }
}

uint64_t sub_2588BAB5C(uint64_t a1, uint64_t a2)
{
  sub_2588BA910();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2588BABC0()
{
  if (!qword_27F961908)
  {
    sub_2588BA910();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961908);
    }
  }
}

uint64_t sub_2588BAC20(uint64_t a1, uint64_t a2)
{
  sub_258828558(0, &qword_27F9618D0, &qword_27F9618D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588BAC9C(uint64_t a1, uint64_t a2)
{
  sub_2588BAA84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588BAD00(uint64_t a1)
{
  sub_2588BAA84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588BAD5C(uint64_t a1)
{
  sub_258828558(0, &qword_27F9618D0, &qword_27F9618D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588BADD0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_258828338(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2588BAE50(uint64_t a1, uint64_t a2)
{
  sub_258828558(0, &qword_27F9618E8, &qword_27F9618F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2588BAEDC()
{
  result = qword_27F961920;
  if (!qword_27F961920)
  {
    sub_2588BABC0();
    sub_2588BAF8C(&qword_27F961928, sub_2588BA910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961920);
  }

  return result;
}

uint64_t sub_2588BAF8C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2588BB010()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F961930 = result;
  return result;
}

uint64_t sub_2588BB09C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2588BBC58();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27F95D180 != -1)
  {
    swift_once();
  }

  v4 = qword_27F961930;
  return sub_2588BBC48();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27F969698 == -1)
  {
    if (qword_27F9696A0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27F9696A0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F969690 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27F969684 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27F969684 >= a3)
      {
        result = dword_27F969688 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27F9696A0;
  if (qword_27F9696A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F9696A0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C8D450](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27F969684, &dword_27F969688);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}