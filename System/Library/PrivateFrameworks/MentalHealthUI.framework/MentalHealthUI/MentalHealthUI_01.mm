__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2589C0A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2589C0A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2589C0AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s15EntryNoDataViewVMa()
{
  result = qword_27F96C980;
  if (!qword_27F96C980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589C0B90()
{
  sub_2589C6760(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589C6760(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2589C6760(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2589C0D10();
        if (v3 <= 0x3F)
        {
          sub_2589C6974(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2589C0D10()
{
  result = qword_27F96C990;
  if (!qword_27F96C990)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F96C990);
  }

  return result;
}

uint64_t sub_2589C0D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDF3E0];
  sub_2589C6760(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_2589C68F4(v2, &v18 - v12, &qword_27F96C908, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B006A4();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_258B02E94();
    v17 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2589C0FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39[4] = a1;
  sub_2589C4B6C(0);
  v39[5] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C6DBC(0, &qword_27F96CAA8, sub_2589C5578, sub_2589C4B6C, MEMORY[0x277CE0330]);
  v39[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - v9;
  sub_2589C5578();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1 + *(_s15EntryNoDataViewVMa() + 20);
  sub_258AC1060(v21);
  v23 = v21[*(v18 + 32)];
  v24 = sub_2589C6C68(v21, type metadata accessor for StateOfMindTimeline.Styles);
  if (v23 == 1)
  {
    v39[2] = v39;
    MEMORY[0x28223BE20](v24);
    v39[-2] = v2;
    sub_2589C5710();
    v39[1] = v25;
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    v27 = v26;
    sub_2589C5FD0();
    v29 = v28;
    v30 = sub_2589C633C();
    sub_2589C60B0();
    v32 = v31;
    sub_2589C6164();
    v34 = v33;
    v35 = sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
    v40 = v34;
    v41 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v32;
    v41 = OpaqueTypeConformance2;
    v37 = swift_getOpaqueTypeConformance2();
    v40 = v27;
    v41 = v29;
    v42 = v30;
    v43 = v37;
    swift_getOpaqueTypeConformance2();
    sub_258B00B24();
    (*(v13 + 16))(v10, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_2589C6A98(&qword_27F96CBC8, sub_2589C5578);
    sub_2589C6458();
    sub_258B012A4();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_2589C1484(v6);
    sub_2589C6C00(v6, v10, sub_2589C4B6C);
    swift_storeEnumTagMultiPayload();
    sub_2589C6A98(&qword_27F96CBC8, sub_2589C5578);
    sub_2589C6458();
    sub_258B012A4();
    return sub_2589C6C68(v6, sub_2589C4B6C);
  }
}

id sub_2589C1484@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v2 = _s6StylesV6NoDataVMa(0);
  v3 = *(v2 - 8);
  v143 = v2 - 8;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v145 = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v129 - v7;
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = v9 - 8;
  v137 = v9 - 8;
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v133 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v147 = v129 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v146 = v129 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v142 = v129 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v129 - v20;
  sub_2589C4D68();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4D40(0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v138 = v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4D18(0);
  v31 = *(v30 - 8);
  v141 = v30 - 8;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v140 = v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4CF0(0);
  v35 = *(v34 - 8);
  *&v144 = v34 - 8;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v139 = v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C4BFC();
  v130 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v132 = (v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589C4BB4(0);
  v131 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v148 = v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v25 = sub_258B01194();
  *(v25 + 1) = 0;
  v25[16] = 0;
  sub_2589C65F0(0, &qword_27F96CC30, sub_2589C4DFC);
  v45 = &v25[*(v44 + 44)];
  v136 = v1;
  sub_2589C36B4(v1, v45);
  v46 = sub_258B018D4();
  v47 = _s15EntryNoDataViewVMa();
  v48 = *(v47 + 20);
  sub_258AC1060(v21);
  sub_2589C6C00(&v21[*(v11 + 44)], v8, _s6StylesV6NoDataVMa);
  v135 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589C6C68(v21, type metadata accessor for StateOfMindTimeline.Styles);
  v49 = v143;
  v50 = &v8[*(v143 + 28)];
  sub_258B00A84();
  sub_2589C6C68(v8, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v25;
  v60 = v47;
  v61 = v138;
  sub_2589C6654(v59, v138, sub_2589C4D68);
  v62 = v61 + *(v27 + 44);
  *v62 = v46;
  *(v62 + 8) = v52;
  *(v62 + 16) = v54;
  *(v62 + 24) = v56;
  *(v62 + 32) = v58;
  *(v62 + 40) = 0;
  LOBYTE(v27) = sub_258B01864();
  v63 = v136;
  v64 = v142;
  sub_258AC1060(v142);
  v65 = v64 + *(v137 + 44);
  v66 = v64;
  v67 = v145;
  sub_2589C6C00(v65, v145, _s6StylesV6NoDataVMa);
  v68 = v135;
  sub_2589C6C68(v66, v135);
  v69 = v67 + *(v49 + 28);
  sub_258B00A84();
  v70 = v139;
  sub_2589C6C68(v67, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v140;
  sub_2589C6654(v61, v140, sub_2589C4D40);
  v80 = v79 + *(v141 + 44);
  *v80 = v27;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v81 = v63;
  v82 = v146;
  sub_258AC1060(v146);
  v83 = v68;
  sub_2589C6C68(v82, v68);
  sub_258B024F4();
  sub_258B00C94();
  sub_2589C6654(v79, v70, sub_2589C4D18);
  v84 = (v70 + *(v144 + 44));
  v85 = v157;
  v84[4] = v156;
  v84[5] = v85;
  v84[6] = v158;
  v86 = v153;
  *v84 = v152;
  v84[1] = v86;
  v87 = v155;
  v84[2] = v154;
  v84[3] = v87;
  v88 = v81;
  v89 = (v81 + *(v60 + 32));
  v91 = *v89;
  v90 = v89[1];
  v92 = v88;
  v93 = v48;
  v94 = v147;
  sub_258AC1060(v147);
  sub_2589C6C68(v94, v83);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v96 = result;
    v97 = [result isiPad];

    v98 = 462.0;
    if (v97)
    {
      v98 = 490.0;
    }

    v99 = *(v92 + *(v60 + 36));
    v100 = v132;
    *v132 = v98;
    *(v100 + 8) = v98;
    *(v100 + 16) = 0;
    *(v100 + 24) = v91;
    *(v100 + 32) = v90;
    v101 = v130;
    sub_2589C6C00(v70, v100 + *(v130 + 60), sub_2589C4CF0);
    v102 = (v100 + *(v101 + 64));
    *v102 = swift_getKeyPath();
    sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v103 = _s14ShowMoreButtonVMa();
    v104 = (v102 + *(v103 + 20));
    *v104 = v91;
    v104[1] = v90;
    *(v102 + *(v103 + 24)) = v99;
    v105 = v100 + *(v101 + 68);
    v149 = 0;
    swift_retain_n();
    sub_258B003E4();
    sub_258B02114();
    v106 = v151;
    *v105 = v150;
    *(v105 + 8) = v106;
    sub_2589C6C68(v70, sub_2589C4CF0);
    v146 = sub_258B024F4();
    v145 = v107;
    v108 = (v148 + *(v131 + 36));
    v129[1] = v93;
    v109 = v133;
    sub_258AC1060(v133);
    sub_2589C6C68(v109, type metadata accessor for StateOfMindTimeline.Styles);
    v147 = sub_258B00C34();
    v110 = *(v147 + 20);
    v111 = *MEMORY[0x277CE0118];
    v112 = sub_258B010C4();
    v113 = *(*(v112 - 8) + 104);
    v113(&v108[v110], v111, v112);
    __asm { FMOV            V0.2D, #26.0 }

    v144 = _Q0;
    *v108 = _Q0;
    v119 = sub_2589C3068();
    sub_2589C5300(0, &qword_27F96CA70, MEMORY[0x277CDFC08], &qword_27F96CA78, MEMORY[0x277CE0730]);
    *&v108[*(v120 + 36)] = v119;
    sub_2589C5264();
    v122 = &v108[*(v121 + 36)];
    v123 = v145;
    *v122 = v146;
    *(v122 + 1) = v123;
    v124 = v148;
    sub_2589C6654(v100, v148, sub_2589C4BFC);
    sub_258AC1060(v109);
    sub_2589C6C68(v109, type metadata accessor for StateOfMindTimeline.Styles);
    sub_2589C4B6C(0);
    v126 = v134;
    v127 = (v134 + *(v125 + 36));
    v113(&v127[*(v147 + 20)], v111, v112);
    *v127 = v144;
    sub_2589C54E4();
    *&v127[*(v128 + 36)] = 256;
    return sub_2589C6654(v124, v126, sub_2589C4BB4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589C1F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_258B024B4();
  v124 = *(v3 - 8);
  v125 = v3;
  v4 = *(v124 + 64);
  MEMORY[0x28223BE20](v3);
  v123 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s6StylesV6NoDataVMa(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v112 = &v110 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v110 - v12;
  v14 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v117 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v110 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v110 - v21;
  sub_2589C4E64();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C59F0();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C59C8(0);
  v113 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v111 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C59A0(0);
  v114 = v34;
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v119 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5878();
  v116 = v37;
  v38 = *(*(v37 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  v115 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5300(0, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
  v122 = v40;
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v121 = &v110 - v42;
  *v30 = sub_258B01194();
  *(v30 + 1) = 0;
  v30[16] = 0;
  *v26 = sub_258B01194();
  *(v26 + 1) = 0;
  v26[16] = 0;
  sub_2589C65F0(0, &qword_27F96CBF8, sub_2589C4EF8);
  sub_2589C38D0(a1, &v26[*(v43 + 44)]);
  v44 = sub_258B01884();
  v45 = *(_s15EntryNoDataViewVMa() + 20);
  v126 = a1;
  sub_258AC1060(v22);
  v118 = v14;
  sub_2589C6C00(&v22[*(v14 + 36)], v13, _s6StylesV6NoDataVMa);
  sub_2589C6C68(v22, type metadata accessor for StateOfMindTimeline.Styles);
  v46 = v6;
  if (v13[*(v6 + 24)] == 1)
  {
    v47 = &v13[*(v6 + 20)];
    sub_258B00A84();
  }

  sub_2589C6C68(v13, _s6StylesV6NoDataVMa);
  sub_2589C65F0(0, &qword_27F96CC00, sub_2589C5A8C);
  v49 = &v30[*(v48 + 44)];
  sub_258B00654();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_2589C6654(v26, v49, sub_2589C4E64);
  sub_2589C5A8C(0);
  v59 = v49 + *(v58 + 36);
  *v59 = v44;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = sub_258B018D4();
  sub_258AC1060(v20);
  v61 = v20;
  v62 = v118;
  v63 = v112;
  sub_2589C6C00(v61 + *(v118 + 36), v112, _s6StylesV6NoDataVMa);
  sub_2589C6C68(v61, type metadata accessor for StateOfMindTimeline.Styles);
  v64 = v63 + *(v46 + 20);
  sub_258B00A84();
  sub_2589C6C68(v63, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v30;
  v74 = v111;
  sub_2589C6654(v73, v111, sub_2589C59F0);
  v75 = v74 + *(v113 + 36);
  *v75 = v60;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  LODWORD(v113) = sub_258B01864();
  v76 = v117;
  sub_258AC1060(v117);
  v77 = v120;
  sub_2589C6C00(v76 + *(v62 + 36), v120, _s6StylesV6NoDataVMa);
  sub_2589C6C68(v76, type metadata accessor for StateOfMindTimeline.Styles);
  v78 = v77 + *(v46 + 20);
  sub_258B00A84();
  sub_2589C6C68(v77, _s6StylesV6NoDataVMa);
  sub_258B00654();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v119;
  sub_2589C6654(v74, v119, sub_2589C59C8);
  v88 = v87 + *(v114 + 36);
  *v88 = v113;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  v89 = v123;
  sub_258B024A4();
  v90 = v116;
  v92 = v124;
  v91 = v125;
  v93 = v115;
  (*(v124 + 16))(&v115[v116[17]], v89, v125);
  *v93 = 1;
  sub_2589C6C00(v87, &v93[v90[18]], sub_2589C59A0);
  v94 = v126;
  sub_2589C2938(&v93[v90[19]]);
  v95 = &v93[v90[20]];
  v128 = 0;
  sub_258B02114();
  v96 = v130;
  *v95 = v129;
  v95[1] = v96;
  v97 = &v93[v90[21]];
  v128 = 0;
  sub_258B02114();
  (*(v92 + 8))(v89, v91);
  v98 = v130;
  *v97 = v129;
  v97[1] = v98;
  sub_2589C6C68(v87, sub_2589C59A0);
  v99 = sub_2589C3068();
  LOBYTE(v97) = sub_258B01874();
  v100 = v121;
  v101 = sub_2589C6654(v93, v121, sub_2589C5878);
  v102 = v100 + *(v122 + 36);
  *v102 = v99;
  *(v102 + 8) = v97;
  MEMORY[0x28223BE20](v101);
  *(&v110 - 2) = v94;
  sub_2589C5FD0();
  sub_2589C633C();
  sub_2589C60B0();
  v104 = v103;
  sub_2589C6164();
  v106 = v105;
  v107 = sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
  v129 = v106;
  v130 = v107;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v129 = v104;
  v130 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_258B01EE4();
  return sub_2589C66C4(v100);
}

id sub_2589C2938@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - v6;
  sub_2589C5BA4(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5B7C(0);
  v48 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5B54(0);
  v49 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v50 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C2D48();
  v20 = sub_258B01884();
  v21 = *(_s15EntryNoDataViewVMa() + 20);
  sub_258AC1060(v7);
  sub_2589C6C68(v7, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v22 = &v12[*(v9 + 44)];
  *v22 = v20;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = sub_258B01894();
  sub_258AC1060(v5);
  sub_2589C6C68(v5, type metadata accessor for StateOfMindTimeline.Styles);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v29 = result;
    MobileGestalt_get_homeButtonType();

    sub_258B00654();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_2589C6654(v12, v16, sub_2589C5BA4);
    v38 = &v16[*(v48 + 36)];
    *v38 = v27;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    sub_258B024F4();
    sub_258B00C94();
    v39 = v50;
    sub_2589C6654(v16, v50, sub_2589C5B7C);
    v40 = (v39 + *(v49 + 36));
    v41 = v57;
    v40[4] = v56;
    v40[5] = v41;
    v40[6] = v58;
    v43 = v53;
    v42 = v54;
    *v40 = v52;
    v40[1] = v43;
    v44 = v55;
    v40[2] = v42;
    v40[3] = v44;
    sub_258B01874();
    v59 = 0u;
    v60 = 0u;
    v61 = 1;
    sub_2589C6DBC(0, &qword_27F96CB00, sub_2589C5B54, MEMORY[0x277CE0660], MEMORY[0x277CDFAB8]);
    v46 = v51;
    v47 = v51 + *(v45 + 36);
    sub_258B01544();
    return sub_2589C6654(v39, v46, sub_2589C5B54);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589C2D48()
{
  v1 = _s9LogButtonVMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v5 = sub_258AFFD94();
  v7 = v6;
  v8 = _s15EntryNoDataViewVMa();
  v9 = (v0 + *(v8 + 28));
  v11 = *v9;
  v10 = v9[1];
  *v4 = swift_getKeyPath();
  sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v12 = (v4 + *(v1 + 20));
  *v12 = v5;
  v12[1] = v7;
  v13 = (v4 + *(v1 + 24));
  *v13 = v11;
  v13[1] = v10;
  v14 = *(v0 + *(v8 + 36));

  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_258A74828(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_258A74828((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[16 * v16];
  *(v17 + 4) = 0xD000000000000010;
  *(v17 + 5) = 0x8000000258B36630;
  v20[1] = &unk_2869D4670;
  v18 = sub_258B003E4();
  sub_2589FC8C8(v18);
  sub_2589C6974(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C6A98(&qword_27F96CB60, _s9LogButtonVMa);
  sub_258B01DD4();

  return sub_2589C6C68(v4, _s9LogButtonVMa);
}

uint64_t sub_2589C3068()
{
  v1 = v0;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  sub_2589C0D7C(aBlock - v12);
  (*(v7 + 104))(v11, *MEMORY[0x277CDF3D0], v6);
  sub_258B00694();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
  v15 = _s15EntryNoDataViewVMa();
  v16 = v1 + *(v15 + 20);
  sub_258AC1060(v5);
  sub_2589C6C68(v5, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01FE4();
  v17 = sub_258B02024();

  sub_2589C6974(0, &qword_27F96CC10, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_258B2BE60;
  *(v18 + 32) = v17;
  v19 = *(v15 + 20);

  sub_258AC1060(v5);
  sub_2589C6C68(v5, type metadata accessor for StateOfMindTimeline.Styles);
  v20 = objc_opt_self();
  v21 = [v20 secondarySystemGroupedBackgroundColor];
  v22 = [v20 tertiarySystemGroupedBackgroundColor];
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = v22;
  v23[4] = 0;
  v23[5] = v21;
  v24 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_2589C69C4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258A52B54;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  [v24 initWithDynamicProvider_];
  _Block_release(v25);

  *(v18 + 40) = sub_258B01F94();
  v26 = MEMORY[0x259C92A80](v18);

  return v26;
}

uint64_t sub_2589C33F4(uint64_t a1)
{
  v2 = sub_258B01384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2589C6164();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589C60B0();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01334();
  v20 = a1;
  sub_2589C6DBC(0, &qword_27F96CB90, MEMORY[0x277D126A0], MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  sub_2589C6218();
  sub_258B00784();
  v16 = sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
  MEMORY[0x259C91A00](v9, v5, v16);
  (*(v6 + 8))(v9, v5);
  v21 = v5;
  v22 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x259C91A00](v15, v11, OpaqueTypeConformance2);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2589C36B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2589C51A4(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_2589C4E64();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  *v17 = sub_258B01194();
  *(v17 + 1) = 0;
  v17[16] = 0;
  sub_2589C65F0(0, &qword_27F96CBF8, sub_2589C4EF8);
  sub_2589C38D0(a1, &v17[*(v18 + 44)]);
  sub_2589C2D48();
  sub_2589C6C00(v17, v15, sub_2589C4E64);
  sub_2589C6C00(v10, v8, sub_2589C51A4);
  sub_2589C6C00(v15, a2, sub_2589C4E64);
  sub_2589C4E30(0);
  sub_2589C6C00(v8, a2 + *(v19 + 48), sub_2589C51A4);
  sub_2589C6C68(v10, sub_2589C51A4);
  sub_2589C6C68(v17, sub_2589C4E64);
  sub_2589C6C68(v8, sub_2589C51A4);
  return sub_2589C6C68(v15, sub_2589C4E64);
}

uint64_t sub_2589C38D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v127 = sub_258B02554();
  v126 = *(v127 - 8);
  v3 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_258B006A4();
  v123 = *(v124 - 8);
  v5 = *(v123 + 64);
  v6 = MEMORY[0x28223BE20](v124);
  v121 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = &v112 - v8;
  v118 = sub_258B019F4();
  v117 = *(v118 - 8);
  v9 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144();
  v122 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v119 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C6DBC(0, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v130 = &v112 - v16;
  sub_2589C5074();
  v129 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v134 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C504C(0);
  v133 = v20;
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v136 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v132 = &v112 - v25;
  MEMORY[0x28223BE20](v24);
  v135 = &v112 - v26;
  v27 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5024(0);
  v32 = v31;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v35 = (&v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589C4FDC(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v131 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v112 - v40;
  *v35 = swift_getKeyPath();
  v42 = MEMORY[0x277CDF458];
  sub_2589C6760(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v43 = _s21StateOfMindSymbolViewVMa();
  v44 = *(v43 + 20);
  *(v35 + v44) = swift_getKeyPath();
  sub_2589C6760(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v42);
  swift_storeEnumTagMultiPayload();
  v45 = a1;
  *(v35 + *(v43 + 24)) = 1;
  v115 = _s15EntryNoDataViewVMa();
  v46 = *(v115 + 20);
  sub_258AC1060(v30);
  v47 = v30;
  sub_2589C6C68(v30, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v48 = (v35 + *(v32 + 36));
  v49 = v142;
  *v48 = v141;
  v48[1] = v49;
  v48[2] = v143;
  sub_2589C69E8();
  v128 = v41;
  sub_258B01D64();
  sub_2589C6C68(v35, sub_2589C5024);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v139 = sub_258AFFD94();
  v140 = v50;
  sub_2589BFF58();
  v51 = sub_258B01B44();
  v53 = v52;
  v55 = v54;
  v112 = v56;
  sub_258AC1060(v47);
  v138 = v45;
  v113 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589C6C68(v47, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019D4();
  v57 = v117;
  v58 = v116;
  v59 = v118;
  (*(v117 + 104))(v116, *MEMORY[0x277CE0A10], v118);
  sub_258B01A14();

  (*(v57 + 8))(v58, v59);
  v117 = sub_258B01AE4();
  v61 = v60;
  LOBYTE(v57) = v62;
  sub_2589BFFAC(v51, v53, v55 & 1);

  v118 = v46;
  v114 = v47;
  sub_258AC1060(v47);
  sub_2589C6C68(v47, v113);
  v63 = [objc_opt_self() secondaryLabelColor];
  v139 = sub_258B01F94();
  v64 = v117;
  v65 = sub_258B01AB4();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_2589BFFAC(v64, v61, v57 & 1);

  v72 = v120;
  sub_2589C0D7C(v120);
  v73 = v123;
  v74 = v121;
  v75 = v124;
  (*(v123 + 104))(v121, *MEMORY[0x277CDF3D0], v124);
  v76 = sub_258B00694();
  v77 = *(v73 + 8);
  v77(v74, v75);
  v77(v72, v75);
  v78 = v126;
  v79 = MEMORY[0x277CE13B0];
  if ((v76 & 1) == 0)
  {
    v79 = MEMORY[0x277CE13B8];
  }

  v80 = v125;
  v81 = v127;
  (*(v126 + 104))(v125, *v79, v127);
  v82 = v119;
  (*(v78 + 32))(&v119[*(v122 + 36)], v80, v81);
  *v82 = v65;
  *(v82 + 8) = v67;
  *(v82 + 16) = v69 & 1;
  *(v82 + 24) = v71;
  v83 = *(v138 + *(v115 + 36));
  sub_258B003E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v114;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = sub_258A74828(0, *(v83 + 2) + 1, 1, v83);
  }

  v87 = *(v83 + 2);
  v86 = *(v83 + 3);
  if (v87 >= v86 >> 1)
  {
    v83 = sub_258A74828((v86 > 1), v87 + 1, 1, v83);
  }

  *(v83 + 2) = v87 + 1;
  v88 = &v83[16 * v87];
  *(v88 + 4) = 0x78655474756F6241;
  *(v88 + 5) = 0xE900000000000074;
  v139 = &unk_2869D4670;
  v89 = sub_258B003E4();
  sub_2589FC8C8(v89);
  sub_2589C6974(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C6AE0();
  v90 = v130;
  sub_258B01DD4();

  sub_2589C6C68(v82, sub_2589C5144);
  KeyPath = swift_getKeyPath();
  v92 = v90;
  v93 = v134;
  sub_2589C6B58(v92, v134);
  v94 = v93 + *(v129 + 36);
  *v94 = KeyPath;
  *(v94 + 8) = 1;
  LOBYTE(KeyPath) = sub_258B018D4();
  sub_258AC1060(v85);
  sub_2589C6C68(v85, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v103 = v132;
  sub_2589C6654(v93, v132, sub_2589C5074);
  v104 = v103 + *(v133 + 36);
  *v104 = KeyPath;
  *(v104 + 8) = v96;
  *(v104 + 16) = v98;
  *(v104 + 24) = v100;
  *(v104 + 32) = v102;
  *(v104 + 40) = 0;
  v105 = v135;
  sub_2589C6654(v103, v135, sub_2589C504C);
  v106 = v128;
  v107 = v131;
  sub_2589C6C00(v128, v131, sub_2589C4FDC);
  v108 = v136;
  sub_2589C6C00(v105, v136, sub_2589C504C);
  v109 = v137;
  sub_2589C6C00(v107, v137, sub_2589C4FDC);
  sub_2589C4F2C(0);
  sub_2589C6C00(v108, v109 + *(v110 + 48), sub_2589C504C);
  sub_2589C6C68(v105, sub_2589C504C);
  sub_2589C6C68(v106, sub_2589C4FDC);
  sub_2589C6C68(v108, sub_2589C504C);
  return sub_2589C6C68(v107, sub_2589C4FDC);
}

uint64_t sub_2589C4614(uint64_t a1)
{
  v2 = _s15EntryNoDataViewVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C6C00(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s15EntryNoDataViewVMa);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2589C6654(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, _s15EntryNoDataViewVMa);
  sub_258B026A4();
  v13[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D46B0);
  sub_2589C6974(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D46D0);
  sub_2589C6A98(&qword_27F96CBA0, MEMORY[0x277D126A0]);
  sub_258B01DD4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2589C48BC(uint64_t a1)
{
  v21 = sub_258B00F84();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDD848];
  sub_2589C6760(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_258B008A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15EntryNoDataViewVMa();
  sub_2589C68F4(a1 + *(v16 + 24), v10, &qword_27F96C968, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v21);
  }

  sub_258B00894();
  return (*(v12 + 8))(v15, v11);
}

void sub_2589C4BFC()
{
  if (!qword_27F96C9A8)
  {
    sub_2589C4CF0(255);
    _s14ShowMoreButtonVMa();
    sub_2589C5E10(&qword_27F96CA40, sub_2589C4CF0, sub_2589C51EC);
    sub_2589C6A98(&qword_27F96CA60, _s14ShowMoreButtonVMa);
    v0 = type metadata accessor for UnlimitedHeightVStackWithFooter();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C9A8);
    }
  }
}

void sub_2589C4D68()
{
  if (!qword_27F96C9C8)
  {
    sub_2589C4DFC(255);
    sub_2589C6A98(&qword_27F96CA38, sub_2589C4DFC);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C9C8);
    }
  }
}

void sub_2589C4E64()
{
  if (!qword_27F96C9E0)
  {
    sub_2589C4EF8(255);
    sub_2589C6A98(&qword_27F96CA28, sub_2589C4EF8);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C9E0);
    }
  }
}

void sub_2589C4F60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2589C5074()
{
  if (!qword_27F96CA10)
  {
    sub_2589C6DBC(255, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589C6974(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CA10);
    }
  }
}

void sub_2589C5144()
{
  if (!qword_27F96CA20)
  {
    sub_258B00C84();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CA20);
    }
  }
}

void sub_2589C5264()
{
  if (!qword_27F96CA68)
  {
    sub_2589C5300(255, &qword_27F96CA70, MEMORY[0x277CDFC08], &qword_27F96CA78, MEMORY[0x277CE0730]);
    sub_2589C5384();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CA68);
    }
  }
}

void sub_2589C5300(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, void, void))
{
  if (!*a2)
  {
    a3(255);
    sub_2589C5F70(255, a4, a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2589C5384()
{
  result = qword_27F96CA80;
  if (!qword_27F96CA80)
  {
    v1 = MEMORY[0x277CE0730];
    sub_2589C5300(255, &qword_27F96CA70, MEMORY[0x277CDFC08], &qword_27F96CA78, MEMORY[0x277CE0730]);
    sub_2589C6A98(&qword_27F96CA88, MEMORY[0x277CDFC08]);
    sub_2589C54A0(&qword_27F96CA90, &qword_27F96CA78, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CA80);
  }

  return result;
}

uint64_t sub_2589C54A0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_2589C5F70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2589C54E4()
{
  if (!qword_27F96CA98)
  {
    sub_258B00C34();
    sub_2589C6A98(&qword_27F96CAA0, MEMORY[0x277CDFC08]);
    v0 = sub_258B007A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CA98);
    }
  }
}

void sub_2589C5578()
{
  if (!qword_27F96CAB0)
  {
    sub_258B00A14();
    sub_2589C5710();
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    sub_2589C5FD0();
    sub_2589C633C();
    sub_2589C60B0();
    sub_2589C6164();
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CAB0);
    }
  }
}

void sub_2589C5710()
{
  if (!qword_27F96CAB8)
  {
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    sub_2589C5FD0();
    sub_2589C633C();
    sub_2589C60B0();
    sub_2589C6164();
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CAB8);
    }
  }
}

void sub_2589C5878()
{
  if (!qword_27F96CAC8)
  {
    sub_2589C59A0(255);
    sub_2589C6DBC(255, &qword_27F96CB00, sub_2589C5B54, MEMORY[0x277CE0660], MEMORY[0x277CDFAB8]);
    sub_258B024B4();
    sub_2589C5E10(&qword_27F96CB20, sub_2589C59A0, sub_2589C5C30);
    sub_2589C5C6C();
    v0 = type metadata accessor for ScrollableWithPinnedFooter();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CAC8);
    }
  }
}

void sub_2589C59F0()
{
  if (!qword_27F96CAE0)
  {
    sub_2589C5A8C(255);
    sub_2589C5AB4(&qword_27F96CAF0, sub_2589C5A8C, &qword_27F96CAF8, sub_2589C4E64);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CAE0);
    }
  }
}

uint64_t sub_2589C5AB4(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_2589C6A98(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2589C5BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2589C5C6C()
{
  result = qword_27F96CB38;
  if (!qword_27F96CB38)
  {
    sub_2589C6DBC(255, &qword_27F96CB00, sub_2589C5B54, MEMORY[0x277CE0660], MEMORY[0x277CDFAB8]);
    sub_2589C5E10(&qword_27F96CB40, sub_2589C5B54, sub_2589C5D98);
    sub_2589C6A98(&qword_27F96CB68, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CB38);
  }

  return result;
}

uint64_t sub_2589C5E10(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589C5E90()
{
  result = qword_27F96CB58;
  if (!qword_27F96CB58)
  {
    sub_2589C51A4(255);
    sub_2589C6A98(&qword_27F96CB60, _s9LogButtonVMa);
    sub_2589C6A98(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CB58);
  }

  return result;
}

void sub_2589C5F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CE1318], MEMORY[0x277CE1310]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589C5FD0()
{
  if (!qword_27F96CB78)
  {
    sub_2589C60B0();
    sub_2589C6164();
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CB78);
    }
  }
}

void sub_2589C60B0()
{
  if (!qword_27F96CB80)
  {
    sub_2589C6164();
    sub_2589C6A98(&qword_27F96CBA8, sub_2589C6164);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CB80);
    }
  }
}

void sub_2589C6164()
{
  if (!qword_27F96CB88)
  {
    sub_2589C6DBC(255, &qword_27F96CB90, MEMORY[0x277D126A0], MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589C6218();
    v0 = sub_258B00794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CB88);
    }
  }
}

unint64_t sub_2589C6218()
{
  result = qword_27F96CB98;
  if (!qword_27F96CB98)
  {
    sub_2589C6DBC(255, &qword_27F96CB90, MEMORY[0x277D126A0], MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589C6A98(&qword_27F96CBA0, MEMORY[0x277D126A0]);
    sub_2589C6A98(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CB98);
  }

  return result;
}

unint64_t sub_2589C633C()
{
  result = qword_27F96CBB0;
  if (!qword_27F96CBB0)
  {
    v1 = MEMORY[0x277CE0718];
    sub_2589C5300(255, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
    sub_2589C6A98(&qword_27F96CBB8, sub_2589C5878);
    sub_2589C54A0(&qword_27F96CBC0, &qword_27F96CB70, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CBB0);
  }

  return result;
}

unint64_t sub_2589C6458()
{
  result = qword_27F96CBD0;
  if (!qword_27F96CBD0)
  {
    sub_2589C4B6C(255);
    sub_2589C6508();
    sub_2589C6A98(&qword_27F96CBF0, sub_2589C54E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CBD0);
  }

  return result;
}

unint64_t sub_2589C6508()
{
  result = qword_27F96CBD8;
  if (!qword_27F96CBD8)
  {
    sub_2589C4BB4(255);
    sub_2589C6A98(&qword_27F96CBE0, sub_2589C4BFC);
    sub_2589C6A98(&qword_27F96CBE8, sub_2589C5264);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CBD8);
  }

  return result;
}

void sub_2589C65F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2589C6654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589C66C4(uint64_t a1)
{
  sub_2589C5300(0, &qword_27F96CAC0, sub_2589C5878, &qword_27F96CB70, MEMORY[0x277CE0718]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589C6760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589C67C4()
{
  v1 = *(_s15EntryNoDataViewVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2589C48BC(v2);
}

unint64_t sub_2589C6824()
{
  result = qword_280DF8940;
  if (!qword_280DF8940)
  {
    sub_2589C6974(255, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF8940);
  }

  return result;
}

uint64_t sub_2589C68F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2589C6760(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2589C6974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2589C69E8()
{
  result = qword_27F96CC18;
  if (!qword_27F96CC18)
  {
    sub_2589C5024(255);
    sub_2589C6A98(&qword_27F96CC20, _s21StateOfMindSymbolViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC18);
  }

  return result;
}

uint64_t sub_2589C6A98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2589C6AE0()
{
  result = qword_27F96CC28;
  if (!qword_27F96CC28)
  {
    sub_2589C5144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC28);
  }

  return result;
}

uint64_t sub_2589C6B58(uint64_t a1, uint64_t a2)
{
  sub_2589C6DBC(0, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589C6C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589C6C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2589C6CC8()
{
  result = qword_27F96CC38;
  if (!qword_27F96CC38)
  {
    sub_2589C6DBC(255, &qword_27F96CC40, sub_2589C5578, sub_2589C4B6C, MEMORY[0x277CE0338]);
    sub_2589C6A98(&qword_27F96CBC8, sub_2589C5578);
    sub_2589C6458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC38);
  }

  return result;
}

void sub_2589C6DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2589C6E40(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F4C207972746E45;
    v6 = 0x6146207972746E45;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746169636F737341;
    if (a1 != 5)
    {
      v7 = 0x616D7269666E6F43;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696472616F626E4FLL;
    v2 = 0xD000000000000013;
    v3 = 0x736C6562614CLL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000017;
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

uint64_t sub_2589C6FA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2589C6E40(*a1);
  v5 = v4;
  if (v3 == sub_2589C6E40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258B03454();
  }

  return v8 & 1;
}

uint64_t sub_2589C702C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0x79726F6765746163;
  v4 = a1;
  v5 = 963733616;
  v6 = 0xE400000000000000;
  if (a1 == 6)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v5 = 929325415;
  }

  v7 = 0x8000000258B36410;
  v8 = 0xD000000000000016;
  if (a1 != 4)
  {
    v8 = 0x47646E4139716870;
    v7 = 0xEB00000000376461;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0xD000000000000011;
  v10 = 0x8000000258B363F0;
  if (a1 != 2)
  {
    v9 = 0x736E6F6974706FLL;
    v10 = 0xE700000000000000;
  }

  v11 = 0x6574617453676F6CLL;
  v12 = 0xEE00646E694D664FLL;
  if (!a1)
  {
    v11 = 0x79726F6765746163;
    v12 = 0xEC0000006D6F6F52;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 6)
      {
        if (v13 != 963733616)
        {
          goto LABEL_43;
        }
      }

      else if (v13 != 929325415)
      {
        goto LABEL_43;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000258B36410;
      if (v13 != 0xD000000000000016)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0xEB00000000376461;
      if (v13 != 0x47646E4139716870)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x8000000258B363F0;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE700000000000000;
      v3 = 0x736E6F6974706FLL;
    }

    else if (a2)
    {
      v2 = 0xEE00646E694D664FLL;
      if (v13 != 0x6574617453676F6CLL)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_258B03454();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_2589C729C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006D6F6F522065;
  v3 = 0x7079542061746144;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x7972616D6D7553;
  if (a1 != 5)
  {
    v6 = 0x746567646957;
    v5 = 0xE600000000000000;
  }

  v7 = 0x726353206B636F4CLL;
  v8 = 0xEB000000006E6565;
  if (a1 != 3)
  {
    v7 = 0x6E6C7566646E694DLL;
    v8 = 0xEB00000000737365;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7373656E746946;
  if (a1 != 1)
  {
    v10 = 0x6C616E72756F4ALL;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x7079542061746144;
    v9 = 0xEE006D6F6F522065;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x7373656E746946)
        {
          goto LABEL_36;
        }
      }

      else if (v11 != 0x6C616E72756F4ALL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x7972616D6D7553)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x746567646957)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEB000000006E6565;
      if (v11 != 0x726353206B636F4CLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6E6C7566646E694DLL;
    v2 = 0xEB00000000737365;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_258B03454();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_2589C74D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE400000000000000;
      v5 = 1885956947;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000014;
      }

      else
      {
        v5 = 0xD000000000000015;
      }

      if (v2 == 4)
      {
        v6 = 0x8000000258B35BF0;
      }

      else
      {
        v6 = 0x8000000258B35C10;
      }
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6143;
    if (a1 != 1)
    {
      v4 = 1801675074;
      v3 = 0xE400000000000000;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1954047310;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE400000000000000;
      if (v5 != 1885956947)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000014;
      }

      else
      {
        v8 = 0xD000000000000015;
      }

      if (a2 == 4)
      {
        v7 = 0x8000000258B35BF0;
      }

      else
      {
        v7 = 0x8000000258B35C10;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE600000000000000;
      if (v5 != 0x6C65636E6143)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xE400000000000000;
      if (v5 != 1801675074)
      {
LABEL_39:
        v9 = sub_258B03454();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    if (v5 != 1954047310)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_2589C7690(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000258B360E0;
  v6 = 0x6163696669746F4ELL;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 4)
  {
    v6 = 0x6E694C2070656544;
    v7 = 0xE90000000000006BLL;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7079542065746144;
  v9 = 0xEE006D6F6F522065;
  if (a1 != 1)
  {
    v8 = 0x656C6369747241;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7972616D6D7553;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000258B360E0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F4ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006BLL;
      if (v10 != 0x6E694C2070656544)
      {
LABEL_34:
        v13 = sub_258B03454();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEE006D6F6F522065;
      if (v10 != 0x7079542065746144)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C6369747241)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x7972616D6D7553)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2589C78A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E69676542;
  v3 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE400000000000000;
    v14 = 1954047310;
    v15 = 0xE400000000000000;
    v16 = 1701736260;
    if (a1 != 3)
    {
      v16 = 0x74726F707845;
      v15 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x65736F6C43;
    if (!a1)
    {
      v17 = 0x6E69676542;
    }

    if (a1 <= 1u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v14;
    }

    if (v3 <= 1)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v4 = 0x8000000258B35E80;
    v5 = 0x8000000258B35EA0;
    v6 = 0xD000000000000025;
    if (a1 == 9)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x8000000258B35EC0;
    }

    if (a1 == 8)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0x20656C6369747241;
    v8 = 0xED00006B63696C43;
    v9 = 0x696C43206F666E49;
    v10 = 0xEA00000000006B63;
    if (a1 != 6)
    {
      v9 = 0xD000000000000013;
      v10 = 0x8000000258B35E60;
    }

    if (a1 != 5)
    {
      v7 = v9;
      v8 = v10;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    if (v3 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v18 = 0xE400000000000000;
        if (v11 != 1954047310)
        {
          goto LABEL_61;
        }
      }

      else if (a2 == 3)
      {
        v18 = 0xE400000000000000;
        if (v11 != 1701736260)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0xE600000000000000;
        if (v11 != 0x74726F707845)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_58;
    }

    v18 = 0xE500000000000000;
    if (a2)
    {
      if (v11 != 0x65736F6C43)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v18 = 0x8000000258B35E80;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_61;
        }
      }

      else if (a2 == 9)
      {
        v18 = 0x8000000258B35EA0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0x8000000258B35EC0;
        if (v11 != 0xD000000000000025)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_58;
    }

    if (a2 == 5)
    {
      v18 = 0xED00006B63696C43;
      if (v11 != 0x20656C6369747241)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    if (a2 == 6)
    {
      v18 = 0xEA00000000006B63;
      if (v11 != 0x696C43206F666E49)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    v2 = 0xD000000000000013;
    v18 = 0x8000000258B35E60;
  }

  if (v11 != v2)
  {
LABEL_61:
    v19 = sub_258B03454();
    goto LABEL_62;
  }

LABEL_58:
  if (v12 != v18)
  {
    goto LABEL_61;
  }

  v19 = 1;
LABEL_62:

  return v19 & 1;
}

uint64_t sub_2589C7BF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6574614720656741;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEF6F72746E492064;
    }

    else
    {
      v4 = 0x8000000258B35DF0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6F72746E49;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6E6F697473657551;
    }

    else
    {
      v3 = 0x746C75736552;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000073;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6574614720656741;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xEF6F72746E492064;
    }

    else
    {
      v5 = 0x8000000258B35DF0;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6F72746E49)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE900000000000073;
    if (v3 != 0x6E6F697473657551)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x746C75736552)
    {
LABEL_34:
      v7 = sub_258B03454();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_2589C7D98()
{
  v1 = *v0;
  sub_258B03514();
  sub_2589C6E40(v1);
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C7DFC()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C7EEC()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8010()
{
  sub_2589C6E40(*v0);
  sub_258B02B74();
}

uint64_t sub_2589C8064()
{
  sub_258B02B74();
}

uint64_t sub_2589C81AC()
{
  sub_258B02B74();
}

uint64_t sub_2589C833C()
{
  v1 = *v0;
  sub_258B03514();
  sub_2589C6E40(v1);
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C839C()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C84BC()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C85A8()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C86E4()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2589C9E64();
  *a2 = result;
  return result;
}

unint64_t sub_2589C8870@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2589C6E40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2589C88B0()
{
  *v0;
  *v0;
  *v0;
  sub_258B02B74();
}

uint64_t sub_2589C8990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2589C9EB0();
  *a2 = result;
  return result;
}

void sub_2589C89C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047310;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0xD000000000000014;
  v8 = 0x8000000258B35BF0;
  if (v2 != 4)
  {
    v7 = 0xD000000000000015;
    v8 = 0x8000000258B35C10;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C65636E6143;
  if (v2 != 1)
  {
    v10 = 1801675074;
    v9 = 0xE400000000000000;
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

uint64_t sub_2589C8A68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x796C696144;
  }

  else
  {
    v4 = 0x7261746E656D6F4DLL;
  }

  if (v3)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x796C696144;
  }

  else
  {
    v6 = 0x7261746E656D6F4DLL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE900000000000079;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_258B03454();
  }

  return v9 & 1;
}

uint64_t sub_2589C8B10()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8B94()
{
  *v0;
  sub_258B02B74();
}

uint64_t sub_2589C8C04()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C8C84@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258B03324();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2589C8CE4(uint64_t *a1@<X8>)
{
  v2 = 0x7261746E656D6F4DLL;
  if (*v1)
  {
    v2 = 0x796C696144;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

MentalHealthUI::StateOfMindLoggingAnalyticsEntryPointType_optional __swiftcall StateOfMindLoggingAnalyticsEntryPointType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter()
{
  result = 0x72635320656D6F48;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6C616E72756F4ALL;
      break;
    case 5:
      result = 0x726353206B636F4CLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x207972616D6D7553;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0x746567646957;
      break;
    case 0xC:
      result = 0x6F4C206B63697551;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_2589C8F04(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  v4 = v3;
  if (v2 == StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258B03454();
  }

  return v7 & 1;
}

uint64_t sub_2589C8FA0()
{
  v1 = *v0;
  sub_258B03514();
  StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589C9008()
{
  v2 = *v0;
  StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  sub_258B02B74();
}

uint64_t sub_2589C906C()
{
  v1 = *v0;
  sub_258B03514();
  StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_2589C90DC@<X0>(unint64_t *a1@<X8>)
{
  result = StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MentalHealthUI::StateOfMindLoggingAnalyticsProvenanceType_optional __swiftcall StateOfMindLoggingAnalyticsProvenanceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StateOfMindLoggingAnalyticsProvenanceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7079542061746144;
  v3 = 0x7972616D6D7553;
  if (v1 != 5)
  {
    v3 = 0x746567646957;
  }

  v4 = 0x726353206B636F4CLL;
  if (v1 != 3)
  {
    v4 = 0x6E6C7566646E694DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373656E746946;
  if (v1 != 1)
  {
    v5 = 0x6C616E72756F4ALL;
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

unint64_t sub_2589C9308()
{
  result = qword_27F96CC48;
  if (!qword_27F96CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC48);
  }

  return result;
}

unint64_t sub_2589C936C()
{
  result = qword_27F96CC50;
  if (!qword_27F96CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC50);
  }

  return result;
}

uint64_t sub_2589C93CC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_258B02B74();
}

void sub_2589C9508(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006D6F6F522065;
  v4 = 0x7079542061746144;
  v5 = 0xE700000000000000;
  v6 = 0x7972616D6D7553;
  if (v2 != 5)
  {
    v6 = 0x746567646957;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEB000000006E6565;
  v8 = 0x726353206B636F4CLL;
  if (v2 != 3)
  {
    v8 = 0x6E6C7566646E694DLL;
    v7 = 0xEB00000000737365;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7373656E746946;
  if (v2 != 1)
  {
    v9 = 0x6C616E72756F4ALL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
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

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsEntryPointType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsEntryPointType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsProvenanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsProvenanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindEntryPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindEntryPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateOfMindLoggingAnalyticsStepType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateOfMindLoggingAnalyticsStepType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2589C9D60()
{
  result = qword_27F96CC58;
  if (!qword_27F96CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC58);
  }

  return result;
}

unint64_t sub_2589C9DB8()
{
  result = qword_27F96CC60;
  if (!qword_27F96CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC60);
  }

  return result;
}

unint64_t sub_2589C9E10()
{
  result = qword_27F96CC68;
  if (!qword_27F96CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC68);
  }

  return result;
}

uint64_t sub_2589C9E64()
{
  v0 = sub_258B03324();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2589C9EB0()
{
  v0 = sub_258B03324();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2589C9EFC()
{
  result = qword_27F96CC70;
  if (!qword_27F96CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC70);
  }

  return result;
}

unint64_t sub_2589C9F50()
{
  result = qword_27F96CC78;
  if (!qword_27F96CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CC78);
  }

  return result;
}

void sub_2589C9FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s16TimelineDataViewVMa()
{
  result = qword_27F96CC90;
  if (!qword_27F96CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589CA084()
{
  sub_2589C9FC0(319, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589C9FC0(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2589C9FC0(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2589C9FC0(319, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_2589C0D10();
          if (v4 <= 0x3F)
          {
            sub_2589D384C(319, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2589CA274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDFAA0];
  v10 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  sub_2589D447C(v2, &v19 - v13, &qword_27F96CFA8, v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B00AC4();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_2589CA4A0()
{
  v1 = sub_258B00F84();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v28 - v11);
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v31 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  v19 = *(_s16TimelineDataViewVMa() + 24);
  v30 = v0;
  sub_2589D447C(v0 + v19, v12, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2589D3650(v12, v18, type metadata accessor for StateOfMindTimeline.Styles);
    v21 = v28;
    v20 = v29;
  }

  else
  {
    v22 = *v12;
    sub_258B02E94();
    v23 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    v21 = v28;
    v20 = v29;
    (*(v28 + 8))(v4, v29);
  }

  sub_2589D4A80(v18, type metadata accessor for StateOfMindTimeline.Styles);
  sub_2589D447C(v30 + v19, v10, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v31;
    sub_2589D3650(v10, v31, type metadata accessor for StateOfMindTimeline.Styles);
  }

  else
  {
    v25 = *v10;
    sub_258B02E94();
    v26 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    v24 = v31;
    swift_getAtKeyPath();

    (*(v21 + 8))(v4, v20);
  }

  sub_2589D4A80(v24, type metadata accessor for StateOfMindTimeline.Styles);
  return 20.0;
}

double sub_2589CA888()
{
  v1 = v0;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v46 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v46 - v10;
  v12 = _s9ViewModelOMa();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  v19 = sub_2589CA4A0();
  v20 = _s16TimelineDataViewVMa();
  v21 = v20[7];
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900]();
  sub_2589D3650(v18, v16, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788();
      v24 = *(v16 + *(v23 + 48) + 8);

      v25 = sub_258B029C4();
      (*(*(v25 - 8) + 8))(v16, v25);
      v26 = 1.0;
    }

    else
    {
      v30 = *v16;
      v31 = v16[1];

      v26 = v31;
    }
  }

  else
  {
    sub_2589D3788();
    v28 = *(v16 + *(v27 + 48) + 8);

    v29 = sub_258B029C4();
    (*(*(v29 - 8) + 8))(v16, v29);
    v26 = 0.0;
  }

  v32 = *(v1 + v20[8]);
  v33 = sub_2589CA4A0();
  v34 = v32 - (v33 + v33);
  v35 = v20[6];
  sub_258AC1060(v11);
  sub_2589D4A80(v11, type metadata accessor for StateOfMindTimeline.Styles);
  if (v34 <= 373.0)
  {
    v36 = v34;
  }

  else
  {
    v36 = 373.0;
  }

  sub_258AC1060(v9);
  sub_2589D4A80(v9, type metadata accessor for StateOfMindTimeline.Styles);
  v37 = (v1 + v20[13]);
  v38 = *v37;
  v39 = v37[1];
  v46[2] = v38;
  v46[3] = v39;
  sub_2589D384C(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v40 = *&v46[1];
  v41 = sub_2589CA4A0();
  v42 = sub_2589CA4A0();
  v43 = v32 - (v42 + v42);
  sub_258AC1060(v6);
  sub_2589D4A80(v6, type metadata accessor for StateOfMindTimeline.Styles);
  if (v43 <= 373.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 373.0;
  }

  return v19 - v26 * (v36 + 10.0) + v40 + (v32 - (v41 + v41) - v44) * 0.5;
}

uint64_t sub_2589CAC60@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v196 = a2;
  v226 = *MEMORY[0x277D85DE8];
  v183 = _s9LogButtonVMa();
  v3 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v203 = (&v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D3154(0, &qword_27F96CCF8, _s9LogButtonVMa);
  v189 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v191 = &v163 - v7;
  sub_2589D19D8();
  v193 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v194 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D19A4(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v195 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v204 = &v163 - v15;
  v16 = sub_258B02554();
  v178 = *(v16 - 8);
  v179 = v16;
  v17 = *(v178 + 64);
  MEMORY[0x28223BE20](v16);
  *&v177 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_258B006A4();
  v173 = *(v176 - 8);
  v19 = *(v173 + 64);
  v20 = MEMORY[0x28223BE20](v176);
  v172 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v171 = &v163 - v22;
  v23 = sub_258B019F4();
  v166 = *(v23 - 8);
  v167 = v23;
  v24 = *(v166 + 64);
  MEMORY[0x28223BE20](v23);
  v165 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = _s9ViewModelOMa();
  v26 = *(*(v205 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v205);
  v184 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v182 = &v163 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v181 = &v163 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v180 = &v163 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v175 = &v163 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v174 = &v163 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v163 - v39;
  sub_2589C5144();
  v199 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v170 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1970(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v192 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v206 = &v163 - v48;
  v49 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v190 = &v163 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v198 = &v163 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v163 - v55;
  sub_2589CA4A0();
  v57 = _s16TimelineDataViewVMa();
  v58 = *&a1[v57[8]];
  sub_2589CA4A0();
  sub_2589CA4A0();
  v59 = v57[6];
  v197 = v57;
  v202 = v59;
  sub_258AC1060(v56);
  v164 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589D4A80(v56, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v187 = v216;
  v188 = v214;
  v185 = v219;
  v186 = v218;
  v213 = 1;
  v212 = v215;
  v211 = v217;
  v169 = v57[7];
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v200 = v60;
  v207 = a1;
  MEMORY[0x259C92900]();
  v201 = v40;
  v61 = sub_258AB2D70();
  v63 = v62;
  v168 = _s9ViewModelOMa;
  sub_2589D4A80(v40, _s9ViewModelOMa);
  v220 = v61;
  v221 = v63;
  sub_2589BFF58();
  v64 = sub_258B01B44();
  v66 = v65;
  v68 = v67;
  v69 = v198;
  sub_258AC1060(v198);
  sub_2589D4A80(v69, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019D4();
  v70 = v165;
  v71 = v166;
  v72 = v167;
  (*(v166 + 104))(v165, *MEMORY[0x277CE0A10], v167);
  sub_258B01A14();

  (*(v71 + 8))(v70, v72);
  v73 = sub_258B01AE4();
  v75 = v74;
  v77 = v76;
  sub_2589BFFAC(v64, v66, v68 & 1);

  v78 = v207;
  v79 = v198;
  sub_258AC1060(v198);
  sub_2589D4A80(v79, v164);
  sub_258B01994();
  v80 = sub_258B01A94();
  v82 = v81;
  LODWORD(v167) = v83;
  v198 = v84;
  sub_2589BFFAC(v73, v75, v77 & 1);

  v85 = &v78[v197[5]];
  v86 = v171;
  sub_258AC14E8(v171);
  v87 = v172;
  v88 = v173;
  v89 = v176;
  (*(v173 + 104))(v172, *MEMORY[0x277CDF3D0], v176);
  LOBYTE(v75) = sub_258B00694();
  v90 = *(v88 + 8);
  v90(v87, v89);
  v90(v86, v89);
  v92 = v178;
  v91 = v179;
  v93 = MEMORY[0x277CE13B0];
  if ((v75 & 1) == 0)
  {
    v93 = MEMORY[0x277CE13B8];
  }

  v94 = v177;
  (*(v178 + 104))(v177, *v93, v179);
  v95 = v170;
  (*(v92 + 32))(&v170[*(v199 + 36)], v94, v91);
  *v95 = v80;
  *(v95 + 1) = v82;
  v95[16] = v167 & 1;
  *(v95 + 3) = v198;
  v96 = v95;
  v97 = MEMORY[0x277D837D0];
  sub_2589D384C(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v198 = v98;
  inited = swift_initStackObject();
  v177 = xmmword_258B2C470;
  *(inited + 16) = xmmword_258B2C470;
  v101 = v200;
  v100 = v201;
  MEMORY[0x259C92900](v200);
  sub_2589D4A80(v100, v168);
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258B35D90;
  v178 = 0x8000000258B35D90;
  v102 = sub_258A74828(1, 2, 1, inited);
  *(v102 + 2) = 2;
  *(v102 + 6) = 0x6562614C65746144;
  *(v102 + 7) = 0xE90000000000006CLL;
  v220 = &unk_2869D4670;
  v103 = sub_258B003E4();
  sub_2589FC8C8(v103);
  sub_2589D384C(0, &qword_280DF8948, v97, MEMORY[0x277D83940]);
  v105 = v104;
  v106 = sub_2589C6824();
  v179 = v105;
  v176 = v106;
  sub_258B02A34();

  sub_2589C6AE0();
  sub_258B01DD4();

  sub_2589D4A80(v96, sub_2589C5144);
  v107 = v174;
  MEMORY[0x259C92900](v101);
  v108 = v175;
  sub_2589D3650(v107, v175, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v108, _s9ViewModelOMa);
    v199 = 0x4030000000000000;
  }

  else
  {
    sub_2589D3788();
    v110 = *(v108 + *(v109 + 48) + 8);

    v111 = sub_258B029C4();
    (*(*(v111 - 8) + 8))(v108, v111);
    v199 = 0;
  }

  v112 = v194;
  v113 = v191;
  v114 = v197;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v115 = sub_258AFFD94();
  v117 = v116;
  v118 = &v207[v114[9]];
  v120 = *v118;
  v119 = *(v118 + 1);
  KeyPath = swift_getKeyPath();
  v122 = v203;
  *v203 = KeyPath;
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v123 = v183;
  v124 = (v122 + *(v183 + 20));
  *v124 = v115;
  v124[1] = v117;
  v125 = (v122 + *(v123 + 24));
  *v125 = v120;
  v125[1] = v119;

  v126 = v180;
  v127 = v200;
  MEMORY[0x259C92900](v200);
  v128 = v181;
  sub_2589D3650(v126, v181, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v128, _s9ViewModelOMa);
    v132 = 1.0;
  }

  else
  {
    sub_2589D3788();
    v130 = *(v128 + *(v129 + 48) + 8);

    v131 = sub_258B029C4();
    (*(*(v131 - 8) + 8))(v128, v131);
    v132 = 0.0;
  }

  sub_2589D3650(v203, v113, _s9LogButtonVMa);
  *(v113 + *(v189 + 36)) = v132;
  v133 = v182;
  MEMORY[0x259C92900](v127);
  v134 = v184;
  sub_2589D3650(v133, v184, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v134, _s9ViewModelOMa);
    v138 = 1;
  }

  else
  {
    sub_2589D3788();
    v136 = *(v134 + *(v135 + 48) + 8);

    v137 = sub_258B029C4();
    (*(*(v137 - 8) + 8))(v134, v137);
    v138 = 0;
  }

  sub_2589D4820(v113, v112);
  v139 = v112 + *(v193 + 36);
  *v139 = 0;
  *(v139 + 8) = v138;
  v140 = swift_initStackObject();
  *(v140 + 16) = v177;
  v141 = v201;
  MEMORY[0x259C92900](v127);
  sub_2589D4A80(v141, _s9ViewModelOMa);
  *(v140 + 32) = 0xD000000000000013;
  *(v140 + 40) = v178;
  v142 = sub_258A74828(1, 2, 1, v140);
  *(v142 + 2) = 2;
  *(v142 + 6) = 0x6F74747542676F4CLL;
  *(v142 + 7) = 0xE90000000000006ELL;
  v220 = &unk_2869D4670;
  v143 = sub_258B003E4();
  sub_2589FC8C8(v143);
  sub_258B02A34();

  sub_2589D48A8();
  v144 = v112;
  v145 = v204;
  sub_258B01DD4();

  sub_2589D4A80(v144, sub_2589D19D8);
  sub_2589CA4A0();
  sub_2589CA4A0();
  sub_2589CA4A0();
  v146 = v190;
  sub_258AC1060(v190);
  sub_2589D4A80(v146, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v207 = v220;
  v205 = v222;
  v202 = v225;
  v203 = v224;
  v210 = 1;
  v209 = v221;
  v208 = v223;
  LOBYTE(v141) = v213;
  v147 = v212;
  v148 = v211;
  v149 = v192;
  sub_2589D36B8(v206, v192, sub_2589D1970);
  v150 = v195;
  sub_2589D36B8(v145, v195, sub_2589D19A4);
  v151 = v210;
  LODWORD(v200) = v209;
  LODWORD(v201) = v208;
  v152 = v196;
  *v196 = 0;
  *(v152 + 8) = v141;
  v153 = v187;
  v152[2] = v188;
  *(v152 + 24) = v147;
  v152[4] = v153;
  *(v152 + 40) = v148;
  v154 = v185;
  v152[6] = v186;
  v152[7] = v154;
  sub_2589D18AC();
  v156 = v155;
  sub_2589D36B8(v149, v152 + v155[12], sub_2589D1970);
  v157 = v152 + v156[16];
  *v157 = v199;
  v157[8] = 0;
  sub_2589D36B8(v150, v152 + v156[20], sub_2589D19A4);
  v158 = v152 + v156[24];
  *v158 = 0;
  v158[8] = v151;
  *(v158 + 2) = v207;
  v158[24] = v200;
  v159 = v204;
  *(v158 + 4) = v205;
  v158[40] = v201;
  v160 = v202;
  *(v158 + 6) = v203;
  *(v158 + 7) = v160;
  sub_2589D4A80(v159, sub_2589D19A4);
  sub_2589D4A80(v206, sub_2589D1970);
  sub_2589D4A80(v150, sub_2589D19A4);
  result = sub_2589D4A80(v149, sub_2589D1970);
  v162 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_2589CBF38@<Q0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = _s9ViewModelOMa();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v54 = &v53 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  sub_2589D2F70();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2F48(0);
  v53 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2F20(0);
  v58 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2EF8(0);
  v57 = v26;
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v56 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = sub_258B00FE4();
  *(v17 + 1) = 0;
  v17[16] = 0;
  sub_2589D35D4(0, &qword_27F96CF80, &qword_27F96CEF8, sub_2589D3024);
  sub_2589CC544(v1, &v17[*(v29 + 44)]);
  v30 = *(_s16TimelineDataViewVMa() + 28);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v32 = v31;
  v55 = v1;
  MEMORY[0x259C92900]();
  sub_2589D3650(v13, v11, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v11, _s9ViewModelOMa);
  }

  else
  {
    sub_2589D3788();
    v34 = *&v11[*(v33 + 48) + 8];

    v35 = sub_258B029C4();
    (*(*(v35 - 8) + 8))(v11, v35);
  }

  v36 = v59;
  v37 = v58;
  sub_258B024F4();
  sub_258B00854();
  sub_2589D3650(v17, v21, sub_2589D2F70);
  v38 = &v21[*(v53 + 36)];
  v39 = v61;
  *v38 = v60;
  *(v38 + 1) = v39;
  *(v38 + 2) = v62;
  v40 = v54;
  MEMORY[0x259C92900](v32);
  sub_2589D3650(v40, v6, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2589D4A80(v6, _s9ViewModelOMa);
    v44 = 1.0;
  }

  else
  {
    sub_2589D3788();
    v42 = *&v6[*(v41 + 48) + 8];

    v43 = sub_258B029C4();
    (*(*(v43 - 8) + 8))(v6, v43);
    v44 = 0.0;
  }

  sub_2589D3650(v21, v25, sub_2589D2F48);
  *&v25[*(v37 + 36)] = v44;
  v45 = sub_258B01894();
  v46 = v56;
  sub_2589D3650(v25, v56, sub_2589D2F20);
  v47 = v46 + *(v57 + 36);
  *v47 = v45;
  *(v47 + 8) = 0u;
  *(v47 + 24) = 0u;
  *(v47 + 40) = 1;
  sub_258B024F4();
  sub_258B00C94();
  sub_2589D3650(v46, v36, sub_2589D2EF8);
  sub_2589D2ED0(0);
  v49 = v36 + *(v48 + 36);
  v50 = v68;
  *(v49 + 64) = v67;
  *(v49 + 80) = v50;
  *(v49 + 96) = v69;
  v51 = v64;
  *v49 = v63;
  *(v49 + 16) = v51;
  result = v66;
  *(v49 + 32) = v65;
  *(v49 + 48) = result;
  return result;
}

uint64_t sub_2589CC544@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v102 = *MEMORY[0x277D85DE8];
  v3 = _s9ViewModelOMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D30F8(0);
  v73 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D30C4(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v72 - v14;
  v15 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v80 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v72 - v25;
  sub_2589CA4A0();
  v27 = _s16TimelineDataViewVMa();
  v28 = *(a1 + v27[8]);
  sub_2589CA4A0();
  sub_2589CA4A0();
  v83 = v27[6];
  sub_258AC1060(v26);
  sub_2589D4A80(v26, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v78 = v90;
  v77 = v92;
  v76 = v94;
  v75 = v95;
  v89 = 1;
  v88 = v91;
  v87 = v93;
  v29 = (a1 + v27[12]);
  v30 = *v29;
  v31 = v29[1];
  sub_2589D3248(0, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  sub_2589D329C();

  sub_258B02174();
  LOBYTE(v30) = sub_258B01874();
  sub_2589D312C(0);
  v33 = &v9[*(v32 + 36)];
  *v33 = v30;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  sub_258AC1060(v24);
  sub_2589D4A80(v24, type metadata accessor for StateOfMindTimeline.Styles);
  v34 = &v9[*(v73 + 36)];
  v35 = *(sub_258B00C34() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_258B010C4();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #26.0 }

  *v34 = _Q0;
  sub_258AC1060(v21);
  sub_2589D4A80(v21, type metadata accessor for StateOfMindTimeline.Styles);
  v43 = [objc_opt_self() systemGray5Color];
  v44 = sub_258B01F94();
  KeyPath = swift_getKeyPath();
  sub_2589D33D4(0, &qword_27F96CF40, MEMORY[0x277CDFC08], sub_2589D3448);
  v47 = &v34[*(v46 + 36)];
  *v47 = KeyPath;
  v47[1] = v44;
  v48 = sub_258B024F4();
  v50 = v49;
  sub_2589D3340();
  v52 = &v34[*(v51 + 36)];
  *v52 = v48;
  v52[1] = v50;
  v53 = MEMORY[0x277D837D0];
  sub_2589D384C(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v55 = v27[7];
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v56 = v74;
  MEMORY[0x259C92900]();
  sub_2589D4A80(v56, _s9ViewModelOMa);
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258B35D90;
  v57 = sub_258A74828(1, 2, 1, inited);
  *(v57 + 2) = 2;
  *(v57 + 6) = 0x7475427472616843;
  *(v57 + 7) = 0xEB000000006E6F74;
  v96 = &unk_2869D4670;
  v58 = sub_258B003E4();
  sub_2589FC8C8(v58);
  sub_2589D384C(0, &qword_280DF8948, v53, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589D389C();
  v59 = v79;
  sub_258B01DD4();

  sub_2589D4A80(v9, sub_2589D30F8);
  sub_2589CA4A0();
  sub_2589CA4A0();
  sub_2589CA4A0();
  v60 = v80;
  sub_258AC1060(v80);
  sub_2589D4A80(v60, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v83 = v96;
  v80 = v98;
  v61 = v101;
  v74 = v100;
  v86 = 1;
  v85 = v97;
  v84 = v99;
  LOBYTE(v60) = v89;
  LOBYTE(v21) = v88;
  v62 = v87;
  v63 = v81;
  sub_2589D36B8(v59, v81, sub_2589D30C4);
  LOBYTE(v9) = v86;
  LOBYTE(a1) = v85;
  LOBYTE(inited) = v84;
  v64 = v82;
  *v82 = 0;
  *(v64 + 8) = v60;
  v64[2] = v78;
  *(v64 + 24) = v21;
  v64[4] = v77;
  *(v64 + 40) = v62;
  v65 = v75;
  v64[6] = v76;
  v64[7] = v65;
  v66 = v64;
  sub_2589D3024();
  v68 = v67;
  sub_2589D36B8(v63, v66 + *(v67 + 48), sub_2589D30C4);
  v69 = v66 + *(v68 + 64);
  *v69 = 0;
  *(v69 + 8) = v9;
  *(v69 + 16) = v83;
  *(v69 + 24) = a1;
  *(v69 + 32) = v80;
  *(v69 + 40) = inited;
  *(v69 + 48) = v74;
  *(v69 + 56) = v61;
  sub_2589D4A80(v59, sub_2589D30C4);
  result = sub_2589D4A80(v63, sub_2589D30C4);
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_2589CCE7C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  *&v11 = sub_258AFFD94();
  *(&v11 + 1) = v2;
  sub_2589BFF58();
  v3 = sub_258B01B44();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_258B024F4();
  sub_258B00C94();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return result;
}

uint64_t sub_2589CCFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v187 = a2;
  v5 = sub_258B01634();
  v184 = *(v5 - 8);
  v185 = v5;
  v6 = *(v184 + 64);
  MEMORY[0x28223BE20](v5);
  v182 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v176 = *(v186 - 8);
  v8 = *(v176 + 64);
  MEMORY[0x28223BE20](v186);
  v177 = v9;
  v178 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s16TimelineDataViewVMa();
  v170 = *(v10 - 8);
  v11 = *(v170 + 64);
  MEMORY[0x28223BE20](v10);
  v171 = v12;
  v172 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v169 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v189 = &v155 - v17;
  v18 = _s9ViewModelOMa();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v183 = (&v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v179 = &v155 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v157 = (&v155 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v156 = &v155 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v155 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v155 - v31;
  v33 = _s16EntryLimitedViewVMa();
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (&v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D2370();
  v155 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v159 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2348(0);
  v158 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v161 = &v155 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2320(0);
  v160 = v44;
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v163 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D22F8(0);
  v162 = v47;
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v164 = &v155 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D22D0(0);
  v167 = v50;
  v51 = *(*(v50 - 1) + 64);
  MEMORY[0x28223BE20](v50);
  v165 = &v155 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2214();
  v174 = v53;
  v168 = *(v53 - 1);
  v54 = *(v168 + 64);
  MEMORY[0x28223BE20](v53);
  v166 = &v155 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2120();
  v175 = v56;
  v173 = *(v56 - 8);
  v57 = *(v173 + 64);
  MEMORY[0x28223BE20](v56);
  v191 = &v155 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D20EC(0);
  v180 = v59;
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v181 = &v155 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v37 + *(v34 + 28);
  v188 = a1;
  sub_2589D36B8(a1, v62, type metadata accessor for StateOfMindTimeline.DaySummary);
  v63 = (v3 + *(v10 + 40));
  v64 = *v63;
  v65 = v63[1];
  *v37 = swift_getKeyPath();
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v66 = (v37 + *(v34 + 32));
  *v66 = v64;
  v66[1] = v65;
  v67 = v10;
  v68 = *(v10 + 28);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v70 = v69;

  v190 = v70;
  MEMORY[0x259C92900](v70);
  sub_2589D3650(v32, v30, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788();
      v73 = *(v30 + *(v72 + 48) + 8);

      v74 = sub_258B029C4();
      (*(*(v74 - 8) + 8))(v30, v74);
      v75 = 1;
    }

    else
    {
      v79 = *v30;
      v75 = v30[1];
    }
  }

  else
  {
    sub_2589D3788();
    v77 = *(v30 + *(v76 + 48) + 8);

    v78 = sub_258B029C4();
    (*(*(v78 - 8) + 8))(v30, v78);
    v75 = 0;
  }

  v80 = v189;
  v81 = v67;
  v82 = v164;
  v189 = *v188;
  v83 = v75 != v189;
  KeyPath = swift_getKeyPath();
  v85 = swift_allocObject();
  *(v85 + 16) = v83;
  v86 = v159;
  sub_2589D3650(v37, v159, _s16EntryLimitedViewVMa);
  v87 = (v86 + *(v155 + 36));
  *v87 = KeyPath;
  v87[1] = sub_2589D46DC;
  v87[2] = v85;
  v88 = v156;
  MEMORY[0x259C92900](v190);
  v89 = v88;
  v90 = v157;
  sub_2589D3650(v89, v157, _s9ViewModelOMa);
  v164 = v18;
  v91 = swift_getEnumCaseMultiPayload();
  if (v91)
  {
    if (v91 == 1)
    {
      sub_2589D3788();
      v93 = *(v90 + *(v92 + 48) + 8);

      v94 = sub_258B029C4();
      (*(*(v94 - 8) + 8))(v90, v94);
      v95 = 1;
    }

    else
    {
      v99 = *v90;
      v95 = v90[1];
    }
  }

  else
  {
    sub_2589D3788();
    v97 = *(v90 + *(v96 + 48) + 8);

    v98 = sub_258B029C4();
    (*(*(v98 - 8) + 8))(v90, v98);
    v95 = 0;
  }

  v100 = v188;
  v188 = v68;
  if (v95 == v189)
  {
    v101 = v3 + *(v81 + 24);
    sub_258AC1060(v80);
    sub_2589D4A80(v80, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FF4();
    v102 = sub_258B02024();
  }

  else
  {
    v102 = sub_258B02004();
  }

  v103 = *(v81 + 24);
  sub_258AC1060(v80);
  sub_2589D4A80(v80, type metadata accessor for StateOfMindTimeline.Styles);
  v104 = v161;
  sub_2589D3650(v86, v161, sub_2589D2370);
  v105 = (v104 + *(v158 + 36));
  *v105 = v102;
  v105[1] = 0x4028000000000000;
  v105[2] = 0;
  v105[3] = 0;
  sub_2589D0E34(v100);
  sub_2589D1080();
  v107 = v106;
  sub_258AC1060(v80);
  sub_2589D4A80(v80, type metadata accessor for StateOfMindTimeline.Styles);
  v108 = v107 * -0.2 + 1.0;
  sub_258B025E4();
  v110 = v109;
  v112 = v111;
  v113 = v163;
  sub_2589D3650(v104, v163, sub_2589D2348);
  v114 = v113 + *(v160 + 36);
  *v114 = v108;
  *(v114 + 8) = v108;
  *(v114 + 16) = v110;
  *(v114 + 24) = v112;
  v115 = sub_2589CE158(v100);
  v117 = v116;
  sub_2589D3650(v113, v82, sub_2589D2320);
  v118 = (v82 + *(v162 + 36));
  *v118 = v115;
  *(v118 + 1) = v117;
  sub_2589D0E34(v100);
  sub_2589D1080();
  v120 = v119;
  sub_258AC1060(v80);
  sub_2589D4A80(v80, type metadata accessor for StateOfMindTimeline.Styles);
  v121 = v120 * -0.0 + 1.0;
  v122 = v169;
  sub_258AC1060(v169);
  sub_2589D4A80(v122, type metadata accessor for StateOfMindTimeline.Styles);
  if (v121 <= 0.1)
  {
    v121 = 0.1;
  }

  v123 = v165;
  sub_2589D3650(v82, v165, sub_2589D22F8);
  v124 = v167;
  *(v123 + v167[9]) = v121;
  v125 = v172;
  sub_2589D36B8(v3, v172, _s16TimelineDataViewVMa);
  v126 = v178;
  sub_2589D36B8(v100, v178, type metadata accessor for StateOfMindTimeline.DaySummary);
  v127 = (*(v170 + 80) + 16) & ~*(v170 + 80);
  v128 = (v171 + *(v176 + 80) + v127) & ~*(v176 + 80);
  v129 = swift_allocObject();
  sub_2589D3650(v125, v129 + v127, _s16TimelineDataViewVMa);
  sub_2589D3650(v126, v129 + v128, type metadata accessor for StateOfMindTimeline.DaySummary);
  v130 = sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC);
  v131 = v166;
  sub_258B01C34();

  sub_2589D4A80(v123, sub_2589D22D0);
  v132 = v182;
  sub_258B01624();
  v192 = v124;
  v193 = v130;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v134 = v174;
  sub_258B01D84();
  (*(v184 + 8))(v132, v185);
  (*(v168 + 8))(v131, v134);
  v135 = v179;
  MEMORY[0x259C92900](v190);
  v136 = v183;
  sub_2589D3650(v135, v183, _s9ViewModelOMa);
  v137 = swift_getEnumCaseMultiPayload();
  if (v137)
  {
    v138 = v181;
    if (v137 == 1)
    {
      sub_2589D3788();
      v140 = *(v136 + *(v139 + 48) + 8);

      v141 = sub_258B029C4();
      (*(*(v141 - 8) + 8))(v136, v141);
    }

    else
    {
      v145 = *v136;
      v146 = v136[1];
    }
  }

  else
  {
    sub_2589D3788();
    v143 = *(v136 + *(v142 + 48) + 8);

    v144 = sub_258B029C4();
    (*(*(v144 - 8) + 8))(v136, v144);
    v138 = v181;
  }

  v192 = v134;
  v193 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v147 = v175;
  v148 = v191;
  sub_258B01D64();
  (*(v173 + 8))(v148, v147);
  v149 = *(v100 + *(v186 + 36));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_258A74828(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_258A74828((v150 > 1), v151 + 1, 1, v149);
  }

  *(v149 + 2) = v151 + 1;
  v152 = &v149[16 * v151];
  *(v152 + 4) = 1685217603;
  *(v152 + 5) = 0xE400000000000000;
  v192 = &unk_2869D4670;
  v153 = sub_258B003E4();
  sub_2589FC8C8(v153);
  sub_2589D384C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589D2CD0();
  sub_258B01DD4();

  return sub_2589D47C0(v138, sub_2589D20EC);
}

double sub_2589CE158(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_2589D0E34(a1);
  sub_2589D1080();
  v13 = v12;
  sub_2589D1310(v11);
  v15 = v14;
  v16 = _s16TimelineDataViewVMa();
  v17 = *(v16 + 24);
  sub_258AC1060(v10);
  sub_2589D4A80(v10, type metadata accessor for StateOfMindTimeline.Styles);
  v18 = *(v2 + *(v16 + 32));
  v19 = sub_2589CA4A0();
  v20 = v18 - (v19 + v19);
  sub_258AC1060(v8);
  sub_2589D4A80(v8, type metadata accessor for StateOfMindTimeline.Styles);
  if (v20 > 373.0)
  {
    v20 = 373.0;
  }

  sub_258AC1060(v10);
  sub_2589D4A80(v10, type metadata accessor for StateOfMindTimeline.Styles);
  return v13 * v15 * 0.2 * (v20 + 10.0);
}

uint64_t sub_2589CE2E8(uint64_t a1, uint64_t *a2)
{
  v3 = _s9ViewModelOMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(_s16TimelineDataViewVMa() + 28);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900]();
  sub_258AB2FA4(a2);
  return sub_258B02314();
}

uint64_t sub_2589CE3D4@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v2 = _s16TimelineDataViewVMa();
  v95.i64[0] = *(v2 - 1);
  v3 = *(v95.i64[0] + 64);
  MEMORY[0x28223BE20](v2);
  v96 = (&v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D1FF4();
  v117 = v4;
  v100 = *(v4 - 8);
  v5 = *(v100 + 8);
  MEMORY[0x28223BE20](v4);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C9FC0(0, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
  v111 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v106 = &v91 - v9;
  v98 = _s15EntryNoDataViewVMa();
  v10 = *(*(v98 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v98);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = (&v91 - v13);
  v14 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1FCC(0);
  v107 = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v91 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v105 = (&v91 - v24);
  MEMORY[0x28223BE20](v23);
  v113 = (&v91 - v25);
  v26 = MEMORY[0x277CE0330];
  sub_2589D1E2C(0, &qword_27F96CFB8, MEMORY[0x277CE0330]);
  v115 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v116 = &v91 - v29;
  sub_2589D1EB8(0, &qword_27F96CFC0, v26);
  v108 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v109 = &v91 - v32;
  sub_2589D1EB8(0, &qword_27F96CD58, MEMORY[0x277CE0338]);
  v114 = v33;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v110 = &v91 - v35;
  v119 = _s20EntryPlaceholderViewVMa();
  v36 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v38 = (&v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = _s9ViewModelOMa();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v91 - v44;
  v46 = v1;
  v47 = v1 + v2[7];
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v49 = v48;
  MEMORY[0x259C92900]();
  v112 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      KeyPath = swift_getKeyPath();
      v52 = v113;
      *v113 = KeyPath;
      v53 = MEMORY[0x277CDF458];
      sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
      v94 = v54;
      swift_storeEnumTagMultiPayload();
      *(v52 + *(v119 + 20)) = 0;
      v99 = v2[6];
      v55 = v97;
      sub_258AC1060(v97);
      v96 = type metadata accessor for StateOfMindTimeline.Styles;
      sub_2589D4A80(v55, type metadata accessor for StateOfMindTimeline.Styles);
      sub_258B02604();
      v56 = *(v107 + 36);
      v95 = vdupq_n_s64(0x3FE999999999999AuLL);
      v57 = (v52 + v56);
      *v57 = v95;
      v57[1].i64[0] = v58;
      v57[1].i64[1] = v59;
      v60 = (v46 + v2[9]);
      v61 = v60[1];
      v93 = *v60;
      v62 = (v46 + v2[11]);
      v63 = v62[1];
      v92 = *v62;

      MEMORY[0x259C92900](v49);
      v100 = _s9ViewModelOMa;
      sub_2589D4A80(v43, _s9ViewModelOMa);
      v64 = swift_getKeyPath();
      v65 = v104;
      *v104 = v64;
      sub_2589C9FC0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v53);
      swift_storeEnumTagMultiPayload();
      v66 = swift_getKeyPath();
      v67 = v98;
      *(v65 + *(v98 + 24)) = v66;
      sub_2589C9FC0(0, &qword_27F96C968, MEMORY[0x277CDD848], v53);
      swift_storeEnumTagMultiPayload();
      v68 = v67[5];
      *(v65 + v68) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v69 = (v65 + v67[7]);
      *v69 = v93;
      v69[1] = v61;
      v70 = (v65 + v67[8]);
      *v70 = v92;
      v70[1] = v63;
      *(v65 + v67[9]) = &unk_2869D4B10;
      v71 = swift_getKeyPath();
      v72 = v105;
      *v105 = v71;
      swift_storeEnumTagMultiPayload();
      *(v72 + *(v119 + 20)) = 0;
      sub_258AC1060(v55);
      sub_2589D4A80(v55, v96);
      sub_258B025F4();
      v73 = (v72 + *(v107 + 36));
      *v73 = v95;
      v73[1].i64[0] = v74;
      v73[1].i64[1] = v75;
      v76 = v102;
      sub_2589D36B8(v113, v102, sub_2589D1FCC);
      v77 = v103;
      sub_2589D36B8(v65, v103, _s15EntryNoDataViewVMa);
      v78 = v101;
      sub_2589D36B8(v72, v101, sub_2589D1FCC);
      v79 = v106;
      sub_2589D36B8(v76, v106, sub_2589D1FCC);
      sub_2589D1F58();
      v81 = v80;
      sub_2589D36B8(v77, v79 + *(v80 + 48), _s15EntryNoDataViewVMa);
      sub_2589D36B8(v78, v79 + *(v81 + 64), sub_2589D1FCC);
      sub_2589D4A80(v78, sub_2589D1FCC);
      sub_2589D4A80(v77, _s15EntryNoDataViewVMa);
      sub_2589D4A80(v76, sub_2589D1FCC);
      sub_2589D447C(v79, v109, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
      swift_storeEnumTagMultiPayload();
      sub_2589D4AE0(&qword_27F96CE88, _s20EntryPlaceholderViewVMa);
      sub_2589D4BDC(&qword_27F96CE90, &qword_27F96CD60, sub_2589D1F58);
      v82 = v110;
      sub_258B012A4();
      sub_2589D44EC(v82, v116);
      swift_storeEnumTagMultiPayload();
      sub_2589D2A88();
      sub_2589D2B78();
      sub_258B012A4();
      sub_2589D456C(v82);
      sub_2589D45E4(v79);
      sub_2589D4A80(v72, sub_2589D1FCC);
      sub_2589D4A80(v65, _s15EntryNoDataViewVMa);
      sub_2589D4A80(v113, sub_2589D1FCC);
      return sub_2589D4A80(v112, v100);
    }

    else
    {
      v120 = *v112;
      v85 = v96;
      sub_2589D36B8(v1, v96, _s16TimelineDataViewVMa);
      v86 = (*(v95.i64[0] + 80) + 16) & ~*(v95.i64[0] + 80);
      v87 = swift_allocObject();
      sub_2589D3650(v85, v87 + v86, _s16TimelineDataViewVMa);
      sub_2589C9FC0(0, &qword_27F96CD80, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83940]);
      sub_2589D33D4(0, &qword_27F96CD88, sub_2589D20EC, MEMORY[0x277CDE470]);
      sub_2589D25DC();
      sub_2589D2BF0();
      sub_2589D4AE0(&qword_27F96CFC8, type metadata accessor for StateOfMindTimeline.DaySummary);
      v88 = v99;
      sub_258B023C4();
      v89 = v100;
      v90 = v117;
      (*(v100 + 2))(v116, v88, v117);
      swift_storeEnumTagMultiPayload();
      sub_2589D2A88();
      sub_2589D2B78();
      sub_258B012A4();
      return (*(v89 + 1))(v88, v90);
    }
  }

  else
  {
    *v38 = swift_getKeyPath();
    sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v38 + *(v119 + 20)) = 1;
    sub_2589D36B8(v38, v109, _s20EntryPlaceholderViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_2589D4AE0(&qword_27F96CE88, _s20EntryPlaceholderViewVMa);
    sub_2589D4BDC(&qword_27F96CE90, &qword_27F96CD60, sub_2589D1F58);
    v84 = v110;
    sub_258B012A4();
    sub_2589D44EC(v84, v116);
    swift_storeEnumTagMultiPayload();
    sub_2589D2A88();
    sub_2589D2B78();
    sub_258B012A4();
    sub_2589D456C(v84);
    sub_2589D4A80(v38, _s20EntryPlaceholderViewVMa);
    return sub_2589D4A80(v112, _s9ViewModelOMa);
  }
}

uint64_t sub_2589CF21C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  sub_2589D2ED0(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v146 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v144 = v126 - v7;
  v133 = _s9ViewModelOMa();
  v8 = *(*(v133 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v133);
  v143 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = v126 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v131 = v126 - v14;
  MEMORY[0x28223BE20](v13);
  v129 = v126 - v15;
  v16 = sub_258B007E4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v126[1] = v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D2664();
  v127 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1D98();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _s14EntryViewStackVMa();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (v126 - v32);
  sub_2589D1CA8(0);
  v126[0] = v34;
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1B9C();
  v132 = v38;
  v130 = *(v38 - 8);
  v39 = *(v130 + 64);
  MEMORY[0x28223BE20](v38);
  v147 = v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1B7C(0);
  v128 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v148 = v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1AC4(0);
  v134 = v44;
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v137 = v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D1A90(0);
  v136 = v47;
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47);
  v142 = v126 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v135 = v126 - v52;
  MEMORY[0x28223BE20](v51);
  v141 = v126 - v53;
  sub_2589D17D0(0);
  v55 = v54 - 8;
  v56 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v58 = v126 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D17A8(0);
  v60 = v59 - 8;
  v61 = *(*(v59 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v59);
  v140 = v126 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v65 = v126 - v64;
  *v58 = sub_258B01004();
  *(v58 + 1) = 0;
  v58[16] = 0;
  sub_2589D35D4(0, &qword_27F96CF70, &qword_27F96CCD8, sub_2589D18AC);
  sub_2589CAC60(a1, &v58[*(v66 + 44)]);
  v67 = sub_258B01884();
  v68 = &v58[*(v55 + 44)];
  *v68 = v67;
  *(v68 + 8) = 0u;
  *(v68 + 24) = 0u;
  v68[40] = 1;
  sub_258B024F4();
  sub_258B00C94();
  sub_2589D3650(v58, v65, sub_2589D17D0);
  v69 = *(v60 + 44);
  v138 = v65;
  v70 = &v65[v69];
  v71 = v157;
  *(v70 + 4) = v156;
  *(v70 + 5) = v71;
  *(v70 + 6) = v158;
  v72 = v153;
  *v70 = v152;
  *(v70 + 1) = v72;
  v73 = v155;
  *(v70 + 2) = v154;
  *(v70 + 3) = v73;
  *v33 = swift_getKeyPath();
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2589D3650(v33, v31, _s14EntryViewStackVMa);
  sub_2589D36B8(v31, v26, _s14EntryViewStackVMa);
  sub_2589D36B8(v26, v37, sub_2589D1D98);
  sub_2589D1CD0();
  sub_2589CE3D4(&v37[*(v74 + 44)]);
  sub_2589D4A80(v26, sub_2589D1D98);
  sub_2589D4A80(v31, _s14EntryViewStackVMa);
  v75 = sub_2589CA888();
  v76 = &v37[*(v126[0] + 36)];
  *v76 = v75;
  *(v76 + 1) = 0;
  sub_258B007D4();
  sub_258B007F4();
  sub_2589D0064(&v22[*(v127 + 52)]);
  sub_258B00734();
  sub_2589D28BC(&qword_27F96CE60, sub_2589D1CA8, sub_2589D293C);
  sub_2589D4AE0(&qword_27F96CEB0, sub_2589D2664);
  sub_258B01EB4();
  sub_2589D4A80(v22, sub_2589D2664);
  sub_2589D47C0(v37, sub_2589D1CA8);
  v77 = _s16TimelineDataViewVMa();
  v78 = *(v77 + 28);
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v80 = v79;
  v81 = a1;
  v82 = v129;
  MEMORY[0x259C92900]();
  v83 = v131;
  sub_2589D3650(v82, v131, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v127 = v77;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788();
      v86 = *(v83 + *(v85 + 48) + 8);

      v87 = sub_258B029C4();
      (*(*(v87 - 8) + 8))(v83, v87);
      v88 = 1;
    }

    else
    {
      sub_2589D4A80(v83, _s9ViewModelOMa);
      v88 = 2;
    }
  }

  else
  {
    sub_2589D3788();
    v90 = *(v83 + *(v89 + 48) + 8);

    v91 = sub_258B029C4();
    (*(*(v91 - 8) + 8))(v83, v91);
    v88 = 0;
  }

  v92 = v146;
  v93 = v145;
  v94 = v144;
  v95 = v143;
  v96 = v148;
  (*(v130 + 32))(v148, v147, v132);
  v97 = (v96 + *(v128 + 36));
  *v97 = 0;
  v97[1] = v88;
  v98 = MEMORY[0x259C92B20](0.5, 1.0, 0.0);
  v99 = v139;
  MEMORY[0x259C92900](v80);
  sub_2589D3650(v99, v95, _s9ViewModelOMa);
  v100 = swift_getEnumCaseMultiPayload();
  if (v100)
  {
    if (v100 == 1)
    {
      sub_2589D3788();
      v102 = *(v95 + *(v101 + 48) + 8);

      v103 = sub_258B029C4();
      (*(*(v103 - 8) + 8))(v95, v103);
      v104 = 1;
    }

    else
    {
      v108 = *v95;
      v104 = v95[1];
    }
  }

  else
  {
    sub_2589D3788();
    v106 = *(v95 + *(v105 + 48) + 8);

    v107 = sub_258B029C4();
    (*(*(v107 - 8) + 8))(v95, v107);
    v104 = 0;
  }

  v109 = v137;
  v110 = sub_2589D3720(v148, v137, sub_2589D1B7C);
  v111 = (v109 + *(v134 + 36));
  *v111 = v98;
  v111[1] = v104;
  v112 = MEMORY[0x259C92B20](v110, 0.5, 1.0, 0.0);
  v113 = &v81[*(v127 + 52)];
  v114 = *v113;
  v115 = *(v113 + 1);
  v150 = v114;
  v151 = v115;
  sub_2589D384C(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v116 = v149;
  v117 = v135;
  sub_2589D3720(v109, v135, sub_2589D1AC4);
  v118 = (v117 + *(v136 + 36));
  *v118 = v112;
  v118[1] = v116;
  v119 = v141;
  sub_2589D3720(v117, v141, sub_2589D1A90);
  sub_2589CBF38(v94);
  v120 = v138;
  v121 = v140;
  sub_2589D36B8(v138, v140, sub_2589D17A8);
  v122 = v142;
  sub_2589A4A54(v119, v142);
  sub_2589D36B8(v94, v92, sub_2589D2ED0);
  sub_2589D36B8(v121, v93, sub_2589D17A8);
  sub_2589D1720();
  v124 = v123;
  sub_2589A4A54(v122, v93 + *(v123 + 48));
  sub_2589D36B8(v92, v93 + *(v124 + 64), sub_2589D2ED0);
  sub_2589D4A80(v94, sub_2589D2ED0);
  sub_2589D47C0(v119, sub_2589D1A90);
  sub_2589D4A80(v120, sub_2589D17A8);
  sub_2589D4A80(v92, sub_2589D2ED0);
  sub_2589D47C0(v122, sub_2589D1A90);
  return sub_2589D4A80(v121, sub_2589D17A8);
}

uint64_t sub_2589D0064@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = _s16TimelineDataViewVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v23[0] = v5;
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B012E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_258B00704();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D27E4();
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B01514();
  sub_258B006D4();
  sub_2589D36B8(v2, v6, _s16TimelineDataViewVMa);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_2589D3650(v6, v19 + v18, _s16TimelineDataViewVMa);
  sub_2589D4AE0(&qword_27F96CE38, MEMORY[0x277CDD730]);
  sub_2589D4AE0(&qword_27F96CE40, MEMORY[0x277CDD708]);
  sub_258B023F4();

  (*(v24 + 8))(v12, v9);
  sub_2589D36B8(v23[1], v6, _s16TimelineDataViewVMa);
  v20 = swift_allocObject();
  sub_2589D3650(v6, v20 + v18, _s16TimelineDataViewVMa);
  sub_2589D4AE0(&qword_27F96CE48, sub_2589D27E4);
  v21 = v25;
  sub_258B023E4();

  return (*(v26 + 8))(v17, v21);
}

uint64_t sub_2589D0470(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = sub_258B00AC4();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s9ViewModelOMa();
  v6 = *(*(v58 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v58);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (v56 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = v56 - v13;
  v15 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v56 - v20;
  v22 = _s16TimelineDataViewVMa();
  v23 = *(a2 + v22[8]);
  v24 = sub_2589CA4A0();
  v25 = v23 - (v24 + v24);
  v26 = v22[6];
  sub_258AC1060(v21);
  sub_2589D4A80(v21, type metadata accessor for StateOfMindTimeline.Styles);
  if (v25 > 373.0)
  {
    v25 = 373.0;
  }

  v56[1] = v26;
  sub_258AC1060(v19);
  sub_2589D4A80(v19, type metadata accessor for StateOfMindTimeline.Styles);
  v57 = v22;
  v27 = v22[7];
  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v29 = v28;
  MEMORY[0x259C92900]();
  sub_2589D3650(v14, v12, _s9ViewModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2589D3788();
      v32 = *(v12 + *(v31 + 48) + 8);

      v33 = sub_258B029C4();
      (*(*(v33 - 8) + 8))(v12, v33);
      v34 = 1;
    }

    else
    {
      v38 = *v12;
      v34 = v12[1];
    }
  }

  else
  {
    sub_2589D3788();
    v36 = *(v12 + *(v35 + 48) + 8);

    v37 = sub_258B029C4();
    (*(*(v37 - 8) + 8))(v12, v37);
    v34 = 0;
  }

  v39 = v62;
  v40 = v25 + 10.0;
  MEMORY[0x259C92900](v29);
  v41 = sub_258AB3128();
  sub_2589D4A80(v9, _s9ViewModelOMa);
  v42 = v40;
  if (v34 == v41)
  {
    sub_258AC1060(v19);
    sub_2589D4A80(v19, type metadata accessor for StateOfMindTimeline.Styles);
    v42 = 20.0;
  }

  MEMORY[0x259C92900](v29);
  sub_2589D4A80(v9, _s9ViewModelOMa);
  if (!v34)
  {
    sub_258AC1060(v19);
    sub_2589D4A80(v19, type metadata accessor for StateOfMindTimeline.Styles);
    v40 = 20.0;
  }

  v43 = v60;
  sub_2589CA274(v60);
  v44 = v61;
  if ((*(v61 + 88))(v43, v39) == *MEMORY[0x277CDFA90])
  {
    result = sub_258B006E4();
    v65 = v46;
    if (v42 >= -v40)
    {
      v63 = -v40;
      v64 = v42;
      sub_2589D3AB0();
      v47 = MEMORY[0x277D85048];
      sub_258B02A44();
      v48 = (a2 + v57[13]);
      v49 = *v48;
      v50 = v48[1];
      v63 = v49;
      v64 = v50;
      v66 = -v66;
      sub_2589D384C(0, &qword_27F96CCA0, v47, MEMORY[0x277CE10B8]);
      return sub_258B02134();
    }

    __break(1u);
  }

  else
  {
    result = sub_258B006E4();
    v65 = v51;
    if (v40 >= -v42)
    {
      v63 = -v42;
      v64 = v40;
      sub_2589D3AB0();
      v52 = MEMORY[0x277D85048];
      sub_258B02A44();
      v53 = (a2 + v57[13]);
      v54 = *v53;
      v55 = v53[1];
      v63 = v54;
      v64 = v55;
      v65 = v66;
      sub_2589D384C(0, &qword_27F96CCA0, v52, MEMORY[0x277CE10B8]);
      sub_258B02134();
      return (*(v44 + 8))(v43, v39);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2589D0A74(uint64_t a1, uint64_t a2)
{
  v36[2] = a1;
  v3 = _s9ViewModelOMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36[1] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00AC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v36 - v16;
  v18 = _s16TimelineDataViewVMa();
  v19 = v18[6];
  sub_258AC1060(v17);
  sub_2589D4A80(v17, type metadata accessor for StateOfMindTimeline.Styles);
  v20 = *(a2 + v18[8]);
  v21 = sub_2589CA4A0();
  v22 = v20 - (v21 + v21);
  sub_258AC1060(v15);
  sub_2589D4A80(v15, type metadata accessor for StateOfMindTimeline.Styles);
  v23 = 373.0;
  if (v22 <= 373.0)
  {
    v23 = v22;
  }

  v24 = v23 * 0.1;
  if (v24 <= 35.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 35.0;
  }

  sub_2589CA274(v10);
  v26 = (*(v7 + 88))(v10, v6);
  v27 = *MEMORY[0x277CDFA90];
  sub_258B006E4();
  v29 = v28;
  if (v26 == v27)
  {
    v29 = -v28;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  if (v29 < -v25)
  {
    v30 = v18[7];
    sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    sub_258AB3268();
LABEL_13:
    sub_258B02314();
    goto LABEL_14;
  }

  if (v25 <= v29)
  {
    v31 = v18[7];
    sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    sub_258AB33E4();
    goto LABEL_13;
  }

LABEL_14:
  v32 = (a2 + v18[13]);
  v33 = *v32;
  v34 = v32[1];
  v36[4] = v33;
  v36[5] = v34;
  v36[3] = 0;
  sub_2589D384C(0, &qword_27F96CCA0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

double sub_2589D0E34(uint64_t *a1)
{
  v3 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sub_2589CA4A0();
  v17 = *a1;
  v18 = _s16TimelineDataViewVMa();
  v19 = *(v1 + *(v18 + 32));
  v20 = sub_2589CA4A0();
  v21 = v19 - (v20 + v20);
  v22 = *(v18 + 24);
  sub_258AC1060(v15);
  sub_2589D4A80(v15, type metadata accessor for StateOfMindTimeline.Styles);
  if (v21 <= 373.0)
  {
    v23 = v21;
  }

  else
  {
    v23 = 373.0;
  }

  sub_258AC1060(v13);
  sub_2589D4A80(v13, type metadata accessor for StateOfMindTimeline.Styles);
  v24 = sub_2589CA4A0();
  v25 = sub_2589CA4A0();
  v26 = v19 - (v25 + v25);
  sub_258AC1060(v10);
  sub_2589D4A80(v10, type metadata accessor for StateOfMindTimeline.Styles);
  if (v26 <= 373.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 373.0;
  }

  v28 = v16 - (v23 + 10.0) * v17 + (v19 - (v24 + v24) - v27) * 0.5;
  v29 = sub_2589CA888();
  v30 = sub_2589CA4A0();
  v31 = v19 - (v30 + v30);
  sub_258AC1060(v7);
  sub_2589D4A80(v7, type metadata accessor for StateOfMindTimeline.Styles);
  if (v31 > 373.0)
  {
    v31 = 373.0;
  }

  sub_258AC1060(v13);
  sub_2589D4A80(v13, type metadata accessor for StateOfMindTimeline.Styles);
  return (v28 - v29) / (v31 + 10.0);
}

uint64_t sub_2589D1080()
{
  v1 = sub_258B00F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s16TimelineDataViewVMa();
  sub_2589D447C(v0 + *(v15 + 24), v10, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2589D3650(v10, v14, type metadata accessor for StateOfMindTimeline.Styles);
  }

  else
  {
    v16 = *v10;
    sub_258B02E94();
    v17 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
  }

  return sub_2589D4A80(v14, type metadata accessor for StateOfMindTimeline.Styles);
}

uint64_t sub_2589D1310(double a1)
{
  v25 = sub_258B00F84();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF458];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v24 - v10);
  v12 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v19 = fabs(a1);
  v20 = *(_s16TimelineDataViewVMa() + 24);
  v26 = v1;
  v24[1] = v20;
  sub_2589D447C(v1 + v20, v11, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2589D3650(v11, v18, type metadata accessor for StateOfMindTimeline.Styles);
  }

  else
  {
    v21 = *v11;
    sub_258B02E94();
    v22 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v25);
  }

  result = sub_2589D4A80(v18, type metadata accessor for StateOfMindTimeline.Styles);
  if (v19 > 1.0)
  {
    sub_258AC1060(v16);
    sub_2589D4A80(v16, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258AC1060(v16);
    return sub_2589D4A80(v16, type metadata accessor for StateOfMindTimeline.Styles);
  }

  return result;
}

uint64_t sub_2589D1640@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = 0;
  sub_2589D1688();
  return sub_2589CF21C(v1, a1 + *(v3 + 44));
}

void sub_2589D1688()
{
  if (!qword_27F96CCA8)
  {
    sub_2589C9FC0(255, &qword_27F96CCB0, sub_2589D1720, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CCA8);
    }
  }
}

void sub_2589D1720()
{
  if (!qword_27F96CCB8)
  {
    sub_2589D17A8(255);
    sub_2589D1A90(255);
    sub_2589D2ED0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96CCB8);
    }
  }
}

void sub_2589D17F8()
{
  if (!qword_27F96CCD0)
  {
    sub_2589C9FC0(255, &qword_27F96CCD8, sub_2589D18AC, MEMORY[0x277CE14B8]);
    sub_2589D4BDC(&qword_27F96CD08, &qword_27F96CCD8, sub_2589D18AC);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CCD0);
    }
  }
}

void sub_2589D18AC()
{
  if (!qword_27F96CCE0)
  {
    sub_2589D3248(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2589D1970(255);
    sub_2589D19A4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96CCE0);
    }
  }
}

void sub_2589D19D8()
{
  if (!qword_27F96CCF0)
  {
    sub_2589D3154(255, &qword_27F96CCF8, _s9LogButtonVMa);
    sub_2589D3248(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CCF0);
    }
  }
}

void sub_2589D1AE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2589D3248(255, &qword_27F96CEB8, MEMORY[0x277D83B88], MEMORY[0x277D83BA8], MEMORY[0x277CE0190]);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589D1B9C()
{
  if (!qword_27F96CD28)
  {
    sub_2589D1CA8(255);
    sub_2589D2664();
    sub_2589D28BC(&qword_27F96CE60, sub_2589D1CA8, sub_2589D293C);
    sub_2589D4AE0(&qword_27F96CEB0, sub_2589D2664);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CD28);
    }
  }
}

void sub_2589D1CD0()
{
  if (!qword_27F96CD38)
  {
    sub_2589D1D98();
    sub_2589D1E2C(255, &qword_27F96CD50, MEMORY[0x277CE0338]);
    sub_2589D4AE0(&qword_27F96CE18, sub_2589D1D98);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CD38);
    }
  }
}

void sub_2589D1D98()
{
  if (!qword_27F96CD40)
  {
    _s14EntryViewStackVMa();
    sub_2589D4AE0(&qword_27F96CD48, _s14EntryViewStackVMa);
    v0 = sub_258B007B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CD40);
    }
  }
}

void sub_2589D1E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2589D1EB8(255, &qword_27F96CD58, MEMORY[0x277CE0338]);
    v7 = v6;
    sub_2589D1FF4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2589D1EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s20EntryPlaceholderViewVMa();
    sub_2589C9FC0(255, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2589D1F58()
{
  if (!qword_27F96CD68)
  {
    sub_2589D1FCC(255);
    _s15EntryNoDataViewVMa();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96CD68);
    }
  }
}

void sub_2589D1FF4()
{
  if (!qword_27F96CD78)
  {
    sub_2589C9FC0(255, &qword_27F96CD80, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83940]);
    sub_2589D33D4(255, &qword_27F96CD88, sub_2589D20EC, MEMORY[0x277CDE470]);
    sub_2589D25DC();
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CD78);
    }
  }
}

void sub_2589D2120()
{
  if (!qword_27F96CD98)
  {
    sub_2589D2214();
    sub_2589D22D0(255);
    sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CD98);
    }
  }
}

void sub_2589D2214()
{
  if (!qword_27F96CDA0)
  {
    sub_2589D22D0(255);
    sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96CDA0);
    }
  }
}

void sub_2589D2370()
{
  if (!qword_27F96CDC8)
  {
    _s16EntryLimitedViewVMa();
    sub_2589D384C(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CDC8);
    }
  }
}

unint64_t sub_2589D24B0()
{
  result = qword_27F96CDF8;
  if (!qword_27F96CDF8)
  {
    sub_2589D2370();
    sub_2589D4AE0(&qword_27F96CE00, _s16EntryLimitedViewVMa);
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CDF8);
  }

  return result;
}

unint64_t sub_2589D2560()
{
  result = qword_27F96CE08;
  if (!qword_27F96CE08)
  {
    sub_2589D384C(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE08);
  }

  return result;
}

unint64_t sub_2589D25DC()
{
  result = qword_27F96CE10;
  if (!qword_27F96CE10)
  {
    sub_2589C9FC0(255, &qword_27F96CD80, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE10);
  }

  return result;
}

void sub_2589D2664()
{
  if (!qword_27F96CE20)
  {
    sub_258B00804();
    sub_2589D2750();
    sub_2589D4AE0(&qword_27F96CE50, MEMORY[0x277CDD810]);
    sub_2589D4AE0(&qword_27F96CE58, sub_2589D2750);
    v0 = sub_258B00B84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CE20);
    }
  }
}

void sub_2589D2750()
{
  if (!qword_27F96CE28)
  {
    sub_2589D27E4();
    sub_2589D4AE0(&qword_27F96CE48, sub_2589D27E4);
    v0 = sub_258B00964();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CE28);
    }
  }
}

void sub_2589D27E4()
{
  if (!qword_27F96CE30)
  {
    sub_258B00704();
    sub_2589D4AE0(&qword_27F96CE38, MEMORY[0x277CDD730]);
    sub_2589D4AE0(&qword_27F96CE40, MEMORY[0x277CDD708]);
    v0 = sub_258B00B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CE30);
    }
  }
}

uint64_t sub_2589D28BC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589D293C()
{
  result = qword_27F96CE68;
  if (!qword_27F96CE68)
  {
    sub_2589D1CD0();
    sub_2589D4AE0(&qword_27F96CE70, sub_2589D1D98);
    sub_2589D29EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE68);
  }

  return result;
}

unint64_t sub_2589D29EC()
{
  result = qword_27F96CE78;
  if (!qword_27F96CE78)
  {
    sub_2589D1E2C(255, &qword_27F96CD50, MEMORY[0x277CE0338]);
    sub_2589D2A88();
    sub_2589D2B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE78);
  }

  return result;
}

unint64_t sub_2589D2A88()
{
  result = qword_27F96CE80;
  if (!qword_27F96CE80)
  {
    sub_2589D1EB8(255, &qword_27F96CD58, MEMORY[0x277CE0338]);
    sub_2589D4AE0(&qword_27F96CE88, _s20EntryPlaceholderViewVMa);
    sub_2589D4BDC(&qword_27F96CE90, &qword_27F96CD60, sub_2589D1F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE80);
  }

  return result;
}

unint64_t sub_2589D2B78()
{
  result = qword_27F96CE98;
  if (!qword_27F96CE98)
  {
    sub_2589D1FF4();
    sub_2589D2BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CE98);
  }

  return result;
}

unint64_t sub_2589D2BF0()
{
  result = qword_27F96CEA0;
  if (!qword_27F96CEA0)
  {
    sub_2589D33D4(255, &qword_27F96CD88, sub_2589D20EC, MEMORY[0x277CDE470]);
    sub_2589D2CD0();
    sub_2589D4AE0(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CEA0);
  }

  return result;
}

unint64_t sub_2589D2CD0()
{
  result = qword_27F96CEA8;
  if (!qword_27F96CEA8)
  {
    sub_2589D20EC(255);
    sub_2589D2214();
    sub_2589D22D0(255);
    sub_2589D28BC(&qword_27F96CDD8, sub_2589D22D0, sub_2589D23FC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589D4AE0(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CEA8);
  }

  return result;
}

void sub_2589D2E20()
{
  if (!qword_27F96CEC0)
  {
    sub_2589D2E7C();
    v0 = sub_258B010E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CEC0);
    }
  }
}

unint64_t sub_2589D2E7C()
{
  result = qword_27F96CEC8;
  if (!qword_27F96CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CEC8);
  }

  return result;
}

void sub_2589D2F70()
{
  if (!qword_27F96CEF0)
  {
    sub_2589C9FC0(255, &qword_27F96CEF8, sub_2589D3024, MEMORY[0x277CE14B8]);
    sub_2589D4BDC(&qword_27F96CF68, &qword_27F96CEF8, sub_2589D3024);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CEF0);
    }
  }
}

void sub_2589D3024()
{
  if (!qword_27F96CF00)
  {
    sub_2589D3248(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2589D30C4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96CF00);
    }
  }
}

void sub_2589D3154(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589D31B8()
{
  if (!qword_27F96CF20)
  {
    sub_2589D3248(255, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_2589D329C();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF20);
    }
  }
}

void sub_2589D3248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2589D329C()
{
  result = qword_27F96CF30;
  if (!qword_27F96CF30)
  {
    sub_2589D3248(255, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF30);
  }

  return result;
}

void sub_2589D3340()
{
  if (!qword_27F96CF38)
  {
    sub_2589D33D4(255, &qword_27F96CF40, MEMORY[0x277CDFC08], sub_2589D3448);
    sub_2589D34C4();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF38);
    }
  }
}

void sub_2589D33D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589D3448()
{
  if (!qword_27F96CF48)
  {
    sub_2589D384C(255, &qword_27F96CF50, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF48);
    }
  }
}

unint64_t sub_2589D34C4()
{
  result = qword_27F96CF58;
  if (!qword_27F96CF58)
  {
    sub_2589D33D4(255, &qword_27F96CF40, MEMORY[0x277CDFC08], sub_2589D3448);
    sub_2589D4AE0(&qword_27F96CA88, MEMORY[0x277CDFC08]);
    sub_2589D4AE0(&qword_27F96CF60, sub_2589D3448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF58);
  }

  return result;
}

void sub_2589D35D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2589C9FC0(255, a3, a4, MEMORY[0x277CE14B8]);
    v5 = sub_258B00974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2589D3650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589D36B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589D3720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2589D3788()
{
  if (!qword_27F96CF78)
  {
    sub_258B029C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96CF78);
    }
  }
}

uint64_t sub_2589D37F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00DA4();
  *a1 = result;
  return result;
}

uint64_t sub_2589D3820(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B00DB4();
}

void sub_2589D384C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2589D389C()
{
  result = qword_27F96CF88;
  if (!qword_27F96CF88)
  {
    sub_2589D30F8(255);
    sub_2589D394C();
    sub_2589D4AE0(&qword_27F96CFA0, sub_2589D3340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF88);
  }

  return result;
}

unint64_t sub_2589D394C()
{
  result = qword_27F96CF90;
  if (!qword_27F96CF90)
  {
    sub_2589D312C(255);
    sub_2589D4AE0(&qword_27F96CF98, sub_2589D31B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF90);
  }

  return result;
}

uint64_t sub_2589D3A2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(_s16TimelineDataViewVMa() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_2589D3AB0()
{
  result = qword_27F96CFB0;
  if (!qword_27F96CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFB0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = _s16TimelineDataViewVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_2589C9FC0(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B00AC4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_2589C9FC0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[6]];
  sub_2589C9FC0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = (v0 + v3);
    v67 = v1;
    v12 = sub_258B01504();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v11, 1, v12))
    {
      (*(v13 + 8))(v11, v12);
    }

    v15 = type metadata accessor for StateOfMindTimeline.Styles(0);
    v16 = *(v15 + 20);
    v17 = sub_258B00AA4();
    v18 = *(*(v17 - 8) + 8);
    v19 = &v11[v16];
    v20 = v15;
    v18(v19, v17);
    v21 = *(v15 + 28);
    v22 = sub_258B006A4();
    v64 = *(*(v22 - 8) + 8);
    v65 = v22;
    v64(&v11[v21]);
    v23 = &v11[v20[8]];
    if (!v14(v23, 1, v12))
    {
      (*(v13 + 8))(v23, v12);
    }

    v24 = _s6StylesV8TimelineVMa(0);
    v18(&v23[*(v24 + 20)], v17);
    v25 = &v11[v20[9]];
    if (!v14(v25, 1, v12))
    {
      (*(v13 + 8))(v25, v12);
    }

    v26 = _s6StylesV6NoDataVMa(0);
    v18(&v25[*(v26 + 20)], v17);
    v27 = &v11[v20[10]];
    if (!v14(v27, 1, v12))
    {
      (*(v13 + 8))(v27, v12);
    }

    v28 = _s6StylesV11PlaceholderVMa(0);
    v18(&v27[*(v28 + 20)], v17);
    v29 = &v11[v20[11]];
    if (!v14(v29, 1, v12))
    {
      (*(v13 + 8))(v29, v12);
    }

    v30 = _s6StylesV6SymbolVMa(0);
    v18(&v29[*(v30 + 20)], v17);
    v31 = &v11[v20[12]];
    v68 = v20;
    if (!v14(v31, 1, v12))
    {
      (*(v13 + 8))(v31, v12);
    }

    v32 = v13;
    v33 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
    v18(&v31[*(v33 + 20)], v17);
    v34 = *(v33 + 28);
    v35 = v32;
    (v64)(&v31[v34], v65);
    v36 = &v11[v68[13]];
    if (!v14(v36, 1, v12))
    {
      (*(v35 + 8))(v36, v12);
    }

    v37 = _s6StylesV5EmptyVMa(0);
    v18(&v36[*(v37 + 20)], v17);
    v38 = &v11[v68[14]];
    if (!v14(v38, 1, v12))
    {
      (*(v35 + 8))(v38, v12);
    }

    v39 = _s6StylesV5DailyVMa(0);
    v18(&v38[*(v39 + 20)], v17);
    v40 = &v11[v68[15]];
    if (!v14(v40, 1, v12))
    {
      (*(v35 + 8))(v40, v12);
    }

    v41 = _s6StylesV9MomentaryVMa(0);
    v18(&v40[*(v41 + 20)], v17);
    v42 = &v11[v68[16]];
    if (!v14(v42, 1, v12))
    {
      (*(v35 + 8))(v42, v12);
    }

    v43 = _s6StylesV6HeaderVMa(0);
    v18(&v42[*(v43 + 20)], v17);
    v44 = &v11[v68[17]];
    if (!v14(v44, 1, v12))
    {
      (*(v35 + 8))(v44, v12);
    }

    v45 = _s6StylesV11ChartButtonVMa(0);
    v18(&v44[*(v45 + 20)], v17);
    v46 = &v11[v68[18]];
    if (!v14(v46, 1, v12))
    {
      (*(v35 + 8))(v46, v12);
    }

    v47 = _s6StylesV15LogButtonFooterVMa(0);
    v18(&v46[*(v47 + 20)], v17);
    v1 = v67;
    v5 = v66;
  }

  else
  {
    v48 = *v11;
  }

  v49 = &v5[v1[7]];
  v50 = *v49;

  v51 = *(v49 + 1);

  sub_2589C9FC0(0, &qword_27F96CC88, _s9ViewModelOMa, MEMORY[0x277CE11F8]);
  v53 = &v49[*(v52 + 32)];
  _s9ViewModelOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v55 = sub_258B029C4();
    (*(*(v55 - 8) + 8))(v53, v55);
    sub_2589D3788();
    v53 = (v53 + *(v56 + 48) + 8);
  }

  v57 = *v53;

LABEL_38:
  v58 = *&v5[v1[9] + 8];

  v59 = *&v5[v1[10] + 8];

  v60 = *&v5[v1[11] + 8];

  v61 = *&v5[v1[12] + 8];

  v62 = *&v5[v1[13] + 8];

  return swift_deallocObject();
}

uint64_t sub_2589D4408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s16TimelineDataViewVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_2589CCFDC(a1, a2);
}

uint64_t sub_2589D447C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2589C9FC0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2589D44EC(uint64_t a1, uint64_t a2)
{
  sub_2589D1EB8(0, &qword_27F96CD58, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589D456C(uint64_t a1)
{
  sub_2589D1EB8(0, &qword_27F96CD58, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589D45E4(uint64_t a1)
{
  sub_2589C9FC0(0, &qword_27F96CD60, sub_2589D1F58, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589D4670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2589D46F4()
{
  v1 = *(_s16TimelineDataViewVMa() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for StateOfMindTimeline.DaySummary() - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_2589CE2E8(v0 + v2, v5);
}

uint64_t sub_2589D47C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589D4820(uint64_t a1, uint64_t a2)
{
  sub_2589D3154(0, &qword_27F96CCF8, _s9LogButtonVMa);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589D48A8()
{
  result = qword_27F96CFD0;
  if (!qword_27F96CFD0)
  {
    sub_2589D19D8();
    sub_2589D4928();
    sub_2589D49FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFD0);
  }

  return result;
}

unint64_t sub_2589D4928()
{
  result = qword_27F96CFD8;
  if (!qword_27F96CFD8)
  {
    sub_2589D3154(255, &qword_27F96CCF8, _s9LogButtonVMa);
    sub_2589D4AE0(&qword_27F96CB60, _s9LogButtonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFD8);
  }

  return result;
}

unint64_t sub_2589D49FC()
{
  result = qword_27F96CFE0;
  if (!qword_27F96CFE0)
  {
    sub_2589D3248(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CFE0);
  }

  return result;
}

uint64_t sub_2589D4A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589D4AE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2589D4B28()
{
  if (!qword_27F96CFF0)
  {
    sub_2589C9FC0(255, &qword_27F96CCB0, sub_2589D1720, MEMORY[0x277CE14B8]);
    sub_2589D4BDC(&qword_27F96CFF8, &qword_27F96CCB0, sub_2589D1720);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CFF0);
    }
  }
}

uint64_t sub_2589D4BDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2589C9FC0(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindCalendarDateView()
{
  result = qword_27F96D008;
  if (!qword_27F96D008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589D4CB4()
{
  sub_2589D6944(319, &qword_27F96D000, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2589D4D84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D6944(0, &qword_27F96D0B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2589D69A8(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B01184();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2589D4F90@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  sub_2589D5AFC();
  v71 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v78 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5B90();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5C58(0);
  v69 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5C80(0);
  v68 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v75 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StateOfMindCalendarDateView();
  v15 = (v1 + *(v14 + 24));
  v16 = v15[1];
  v79 = *v15;
  v80 = v16;
  sub_2589BFF58();
  sub_258B003E4();
  v17 = sub_258B01B44();
  v19 = v18;
  v21 = v20;
  sub_258B01A34();
  v22 = sub_258B01AE4();
  v24 = v23;
  v26 = v25;

  sub_2589BFFAC(v17, v19, v21 & 1);

  sub_258B01994();
  v27 = sub_258B01A94();
  v29 = v28;
  v31 = v30;
  sub_2589BFFAC(v22, v24, v26 & 1);
  v32 = v77;

  if (*(v32 + *(v14 + 20)))
  {
    if (*(v32 + *(v14 + 20)) == 1)
    {
      sub_258B02014();
      goto LABEL_7;
    }

    v33 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v33 = [objc_opt_self() secondaryLabelColor];
  }

  v34 = v33;
  sub_258B01F94();
LABEL_7:
  v35 = sub_258B01AA4();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_2589BFFAC(v27, v29, v31 & 1);

  v79 = v35;
  v80 = v37;
  v81 = v39 & 1;
  v82 = v41;
  v42 = *MEMORY[0x277CDF998];
  v43 = sub_258B00AA4();
  v44 = v78;
  (*(*(v43 - 8) + 104))(v78, v42, v43);
  sub_2589D6CA4(&qword_27F96D048, MEMORY[0x277CDFA28]);
  result = sub_258B02AA4();
  if (result)
  {
    sub_2589D6CA4(&qword_27F96D030, sub_2589D5AFC);
    v46 = v72;
    sub_258B01C84();
    sub_2589D68E4(v44, sub_2589D5AFC);
    sub_2589BFFAC(v35, v37, v39 & 1);

    v47 = sub_258B01874();
    sub_258B00654();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v70;
    (*(v73 + 32))(v70, v46, v74);
    v57 = v56 + *(v69 + 36);
    *v57 = v47;
    *(v57 + 8) = v49;
    *(v57 + 16) = v51;
    *(v57 + 24) = v53;
    *(v57 + 32) = v55;
    *(v57 + 40) = 0;
    v58 = v75;
    sub_2589D6314(v56, v75, sub_2589D5C58);
    *(v58 + *(v68 + 36)) = 257;
    v59 = sub_258B024F4();
    v61 = v60;
    sub_2589D637C(0, &qword_27F96D050, sub_2589D5C80, sub_2589D5D0C, MEMORY[0x277CDFAB8]);
    v63 = v76;
    v64 = v76 + *(v62 + 36);
    sub_2589D5560(v32, v64);
    sub_2589D5D0C();
    v66 = (v64 + *(v65 + 36));
    *v66 = v59;
    v66[1] = v61;
    return sub_2589D6314(v58, v63, sub_2589D5C80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589D5560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_2589D637C(0, &qword_27F96D0B0, sub_2589D5DB4, sub_2589D5EFC, MEMORY[0x277CE0330]);
  v52[1] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v52 - v5);
  sub_2589D5E4C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5DB4();
  v53 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52[0] = v52 - v16;
  v17 = sub_258B01184();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v52 - v23;
  v25 = a1;
  sub_2589D4D84(v52 - v23);
  (*(v18 + 104))(v22, *MEMORY[0x277CE0260], v17);
  v26 = sub_2589D6400(v24, v22);
  v27 = *(v18 + 8);
  v27(v22, v17);
  v27(v24, v17);
  if (v26)
  {
    v28 = *(sub_258B00C34() + 20);
    v29 = *MEMORY[0x277CE0118];
    v30 = sub_258B010C4();
    (*(*(v30 - 8) + 104))(&v10[v28], v29, v30);
    __asm { FMOV            V0.2D, #8.0 }

    *v10 = _Q0;
    sub_2589C54E4();
    *&v10[*(v36 + 36)] = 256;
    v37 = *(v25 + *(type metadata accessor for StateOfMindCalendarDateView() + 20));
    LOBYTE(v29) = sub_258B002A4();
    v38 = objc_opt_self();
    v39 = &selRef_tertiaryLabelColor;
    if ((v29 & 1) == 0)
    {
      v39 = &selRef_systemBackgroundColor;
    }

    v40 = [v38 *v39];
    v41 = sub_258B01F94();
    KeyPath = swift_getKeyPath();
    sub_2589D6818(v10, v15, sub_2589D5E4C);
    v43 = &v15[*(v53 + 36)];
    *v43 = KeyPath;
    v43[1] = v41;
    v44 = v52[0];
    sub_2589D6818(v15, v52[0], sub_2589D5DB4);
    sub_2589D6880(v44, v6);
    swift_storeEnumTagMultiPayload();
    sub_2589D5EFC();
    sub_2589D60B0(&qword_27F96D088, sub_2589D5DB4, sub_2589D6134);
    sub_2589D60B0(&qword_27F96D0A0, sub_2589D5EFC, sub_2589D62C0);
    sub_258B012A4();
    return sub_2589D68E4(v44, sub_2589D5DB4);
  }

  else
  {
    v46 = *(a1 + *(type metadata accessor for StateOfMindCalendarDateView() + 20));
    v47 = sub_258B002A4();
    v48 = objc_opt_self();
    v49 = &selRef_tertiaryLabelColor;
    if ((v47 & 1) == 0)
    {
      v49 = &selRef_systemBackgroundColor;
    }

    v50 = [v48 *v49];
    v51 = sub_258B01F94();
    *v6 = swift_getKeyPath();
    v6[1] = v51;
    swift_storeEnumTagMultiPayload();
    sub_2589D5EFC();
    sub_2589D60B0(&qword_27F96D088, sub_2589D5DB4, sub_2589D6134);
    sub_2589D60B0(&qword_27F96D0A0, sub_2589D5EFC, sub_2589D62C0);
    return sub_258B012A4();
  }
}

void sub_2589D5AFC()
{
  if (!qword_27F96D018)
  {
    sub_258B00AA4();
    sub_2589D6CA4(&qword_27F96D020, MEMORY[0x277CDFA28]);
    v0 = sub_258B03304();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D018);
    }
  }
}

void sub_2589D5B90()
{
  if (!qword_27F96D028)
  {
    sub_2589D5AFC();
    sub_2589D6CA4(&qword_27F96D030, sub_2589D5AFC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D028);
    }
  }
}

void sub_2589D5CA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589D5D0C()
{
  if (!qword_27F96D058)
  {
    sub_2589D637C(255, &qword_27F96D060, sub_2589D5DB4, sub_2589D5EFC, MEMORY[0x277CE0338]);
    sub_2589D5F8C();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D058);
    }
  }
}

void sub_2589D5DB4()
{
  if (!qword_27F96D068)
  {
    sub_2589D5E4C();
    sub_2589D6944(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D068);
    }
  }
}

void sub_2589D5E4C()
{
  if (!qword_27F96D070)
  {
    sub_2589C54E4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D070);
    }
  }
}

void sub_2589D5EAC()
{
  if (!qword_27F96CF50)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF50);
    }
  }
}

void sub_2589D5EFC()
{
  if (!qword_27F96D078)
  {
    sub_2589D6944(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D078);
    }
  }
}

unint64_t sub_2589D5F8C()
{
  result = qword_27F96D080;
  if (!qword_27F96D080)
  {
    sub_2589D637C(255, &qword_27F96D060, sub_2589D5DB4, sub_2589D5EFC, MEMORY[0x277CE0338]);
    sub_2589D60B0(&qword_27F96D088, sub_2589D5DB4, sub_2589D6134);
    sub_2589D60B0(&qword_27F96D0A0, sub_2589D5EFC, sub_2589D62C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D080);
  }

  return result;
}

uint64_t sub_2589D60B0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_2589D6238();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589D6134()
{
  result = qword_27F96D090;
  if (!qword_27F96D090)
  {
    sub_2589D5E4C();
    sub_2589D61E4();
    sub_2589D6CA4(&qword_27F96CBF0, sub_2589C54E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D090);
  }

  return result;
}

unint64_t sub_2589D61E4()
{
  result = qword_27F96D098;
  if (!qword_27F96D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D098);
  }

  return result;
}

unint64_t sub_2589D6238()
{
  result = qword_27F96CF60;
  if (!qword_27F96CF60)
  {
    sub_2589D6944(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96CF60);
  }

  return result;
}

unint64_t sub_2589D62C0()
{
  result = qword_27F96D0A8;
  if (!qword_27F96D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0A8);
  }

  return result;
}

uint64_t sub_2589D6314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2589D637C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

BOOL sub_2589D6400(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_258B01184();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

uint64_t sub_2589D6818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589D6880(uint64_t a1, uint64_t a2)
{
  sub_2589D5DB4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589D68E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2589D6944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589D69A8(uint64_t a1, uint64_t a2)
{
  sub_2589D6944(0, &qword_27F96D0B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2589D6A3C()
{
  result = qword_27F96D0C0;
  if (!qword_27F96D0C0)
  {
    sub_2589D637C(255, &qword_27F96D050, sub_2589D5C80, sub_2589D5D0C, MEMORY[0x277CDFAB8]);
    sub_2589D6B30();
    sub_2589D6CA4(&qword_27F96D0D8, sub_2589D5D0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0C0);
  }

  return result;
}

unint64_t sub_2589D6B30()
{
  result = qword_27F96D0C8;
  if (!qword_27F96D0C8)
  {
    sub_2589D5C80(255);
    sub_2589D6BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0C8);
  }

  return result;
}

unint64_t sub_2589D6BB0()
{
  result = qword_27F96D0D0;
  if (!qword_27F96D0D0)
  {
    sub_2589D5C58(255);
    sub_2589D5AFC();
    sub_2589D6CA4(&qword_27F96D030, sub_2589D5AFC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D0D0);
  }

  return result;
}

uint64_t sub_2589D6CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16EntryDayDataViewVMa()
{
  result = qword_27F96D0E0;
  if (!qword_27F96D0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589D6D60()
{
  sub_2589DC5CC(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589DC5CC(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StateOfMindTimeline.DaySummary();
      if (v2 <= 0x3F)
      {
        _s5EntryVMa();
        if (v3 <= 0x3F)
        {
          sub_2589DB8A8(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2589D6ECC(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (v8 >= v7 >> 1)
  {
    a1 = sub_258A74828((v7 > 1), v8 + 1, 1, a1);
  }

  *(a1 + 2) = v8 + 1;
  v9 = &a1[16 * v8];
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  v14 = v3[2];
  v15 = v3[3];
  v16 = *(v3 + 8);
  v12 = *v3;
  v13 = v3[1];
  v10 = sub_258B003E4();
  sub_2589FC8C8(v10);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC8AC(0, &qword_27F96D110);
  sub_2589DC740();
  sub_258B01DD4();
}

uint64_t sub_2589D7078(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v7 >= v6 >> 1)
  {
    a1 = sub_258A74828((v6 > 1), v7 + 1, 1, a1);
  }

  *(a1 + 2) = v7 + 1;
  v8 = &a1[16 * v7];
  *(v8 + 4) = a2;
  *(v8 + 5) = a3;
  v9 = sub_258B003E4();
  sub_2589FC8C8(v9);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_258B01DD4();
}

uint64_t sub_2589D7214(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (v8 >= v7 >> 1)
  {
    a1 = sub_258A74828((v7 > 1), v8 + 1, 1, a1);
  }

  *(a1 + 2) = v8 + 1;
  v9 = &a1[16 * v8];
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  v12 = *v3;
  v13 = v3[1];
  v14 = *(v3 + 16);
  v10 = sub_258B003E4();
  sub_2589FC8C8(v10);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC8AC(0, &qword_27F96D1F8);
  sub_2589DC8FC();
  sub_258B01DD4();
}

uint64_t sub_2589D73B8(char *a1, uint64_t a2, uint64_t a3)
{
  sub_258B003E4();
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_258A74828(0, *(a1 + 2) + 1, 1, a1);
  }

  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (v8 >= v7 >> 1)
  {
    a1 = sub_258A74828((v7 > 1), v8 + 1, 1, a1);
  }

  *(a1 + 2) = v8 + 1;
  v9 = &a1[16 * v8];
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  v12 = *v3;
  *v13 = v3[1];
  *&v13[9] = *(v3 + 25);
  v10 = sub_258B003E4();
  sub_2589FC8C8(v10);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589BFBAC();
  sub_2589DC82C();
  sub_258B01DD4();
}

uint64_t sub_2589D7544@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DC5CC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2589DC538(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

id sub_2589D7750()
{
  v1 = v0;
  v2 = _s6StylesV5DailyVMa(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s16EntryDayDataViewVMa();
  v13 = v0 + *(v12 + 20);
  sub_258AC1060(v11);
  sub_2589DC470(&v11[*(v8 + 64)], v6, _s6StylesV5DailyVMa);
  sub_2589DC4D8(v11, type metadata accessor for StateOfMindTimeline.Styles);
  v14 = *(v12 + 24);
  v15 = type metadata accessor for StateOfMindTimeline.DaySummary();
  if ((v6[*(v3 + 32)] & 1) != 0 || *(*(v1 + v14 + *(v15 + 32)) + 16) != 1)
  {
    return sub_2589DC4D8(v6, _s6StylesV5DailyVMa);
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v17 = result;
    [result isiPad];

    return sub_2589DC4D8(v6, _s6StylesV5DailyVMa);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589D79A4()
{
  v1 = sub_258B01634();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB994(0, &qword_27F96D0F0, &qword_27F96D0F8, sub_2589DB514, &qword_27F96D168);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  sub_2589DBBB4();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_258B01194();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_2589DBFDC(0, &qword_27F96D178, &qword_27F96D0F8, sub_2589DB514);
  sub_2589D7C70(v0, &v9[*(v15 + 44)]);
  sub_258B024F4();
  sub_258B00C94();
  sub_2589DBC40(v9, v14);
  v16 = &v14[*(v11 + 36)];
  v17 = v21[5];
  *(v16 + 4) = v21[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v21[6];
  v18 = v21[1];
  *v16 = v21[0];
  *(v16 + 1) = v18;
  v19 = v21[3];
  *(v16 + 2) = v21[2];
  *(v16 + 3) = v19;
  sub_258B01614();
  sub_2589DC2F4(&qword_27F96D180, sub_2589DBBB4, sub_2589DBCD0);
  sub_258B01D84();
  (*(v2 + 8))(v5, v1);
  return sub_2589DC4D8(v14, sub_2589DBBB4);
}

uint64_t sub_2589D7C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = MEMORY[0x277CE0338];
  sub_2589DBABC(0, &qword_27F96D160, MEMORY[0x277CE0338]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v72 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v77 = &v63[-v8];
  sub_2589DB8F8(0, &qword_27F96D138, v3);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v76 = &v63[-v13];
  sub_2589DB83C(0, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v70 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v75 = &v63[-v18];
  v19 = _s6StylesV5DailyVMa(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v63[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v31 = &v63[-v30];
  sub_2589DB630();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v74 = &v63[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v37 = &v63[-v36];
  v38 = _s16EntryDayDataViewVMa();
  v39 = a1 + v38[7];
  v40 = *(v39 + *(_s5EntryVMa() + 36));
  v41 = v38[5];
  sub_258AC1060(v31);
  sub_2589DC470(v31 + *(v25 + 64), v23, _s6StylesV5DailyVMa);
  sub_2589DC4D8(v31, type metadata accessor for StateOfMindTimeline.Styles);
  v42 = a1 + v38[6];
  v43 = *(*(v42 + *(type metadata accessor for StateOfMindTimeline.DaySummary() + 32)) + 16);
  LOBYTE(v31) = v23[*(v20 + 32)];
  sub_2589DC4D8(v23, _s6StylesV5DailyVMa);
  if (v31 & 1 | (v43 < 2))
  {
    v44 = 3;
  }

  else
  {
    v44 = 4;
  }

  LOBYTE(v81) = v44;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v81, &v87, v40);
  v68 = v87;
  v45 = v88;
  sub_2589D7750();
  sub_2589D7750();
  sub_258B024F4();
  sub_258B00854();
  v87 = v68;
  v88 = v45;
  v46 = *(a1 + v38[8]);
  v69 = v37;
  sub_2589D6ECC(v46, 0x7A696C6175736956, 0xED00006E6F697461);
  sub_2589DBD54(&v87, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688], sub_2589DC8AC);
  sub_258AC1060(v29);
  sub_2589DC4D8(v29, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  *&v68 = v81;
  v67 = v83;
  v66 = v85;
  v65 = v86;
  v80 = 1;
  v79 = v82;
  v78 = v84;
  v47 = v75;
  sub_2589D8430(v75);
  v48 = v76;
  sub_2589D9074(v76);
  v49 = v77;
  sub_2589D9D84();
  v50 = v74;
  sub_2589DC470(v37, v74, sub_2589DB630);
  LOBYTE(v45) = v80;
  v51 = v79;
  v64 = v78;
  v52 = v70;
  sub_2589DBDB4(v47, v70);
  v53 = v71;
  sub_2589DBE50(v48, v71, &qword_27F96D138, sub_2589DB8F8);
  v54 = v49;
  v55 = v72;
  sub_2589DBE50(v54, v72, &qword_27F96D160, sub_2589DBABC);
  v56 = v50;
  v57 = v73;
  sub_2589DC470(v56, v73, sub_2589DB630);
  sub_2589DB514();
  v59 = v58;
  v60 = v57 + *(v58 + 48);
  *v60 = 0;
  *(v60 + 8) = v45;
  *(v60 + 16) = v68;
  *(v60 + 24) = v51;
  *(v60 + 32) = v67;
  *(v60 + 40) = v64;
  v61 = v65;
  *(v60 + 48) = v66;
  *(v60 + 56) = v61;
  sub_2589DBDB4(v52, v57 + *(v58 + 64));
  sub_2589DBE50(v53, v57 + *(v59 + 80), &qword_27F96D138, sub_2589DB8F8);
  sub_2589DBE50(v55, v57 + *(v59 + 96), &qword_27F96D160, sub_2589DBABC);
  sub_2589DBED0(v77, &qword_27F96D160, sub_2589DBABC);
  sub_2589DBED0(v76, &qword_27F96D138, sub_2589DB8F8);
  sub_2589DBF48(v75);
  sub_2589DC4D8(v69, sub_2589DB630);
  sub_2589DBED0(v55, &qword_27F96D160, sub_2589DBABC);
  sub_2589DBED0(v53, &qword_27F96D138, sub_2589DB8F8);
  sub_2589DBF48(v52);
  return sub_2589DC4D8(v74, sub_2589DB630);
}

uint64_t sub_2589D8430@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v2 = sub_258B02554();
  v125 = *(v2 - 8);
  v3 = *(v125 + 64);
  MEMORY[0x28223BE20](v2);
  v126 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B006A4();
  v123 = *(v5 - 8);
  v124 = v5;
  v6 = *(v123 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v122 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v100 - v9;
  v10 = sub_258B019F4();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  MEMORY[0x28223BE20](v10);
  v112 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DC5CC(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v100 - v15;
  v111 = sub_258B01A54();
  v110 = *(v111 - 8);
  v17 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v118 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v120 = &v100 - v26;
  sub_2589DB778();
  v119 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v117 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718();
  v121 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v116 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0();
  v34 = v33;
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v127 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96D1D8, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0330]);
  v38 = v37;
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v100 - v40;
  v42 = _s16EntryDayDataViewVMa();
  v43 = v1 + *(v42 + 28);
  v44 = (v43 + *(_s5EntryVMa() + 24));
  v45 = *v44;
  v46 = v44[1];
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v107 = v38;
    v108 = v41;
    v109 = v34;
    v129 = v45;
    v130 = v46;
    sub_2589BFF58();
    sub_258B003E4();
    v48 = sub_258B01B44();
    v105 = v2;
    v101 = v48;
    v50 = v49;
    v52 = v51;
    v100 = v53;
    v106 = v42;
    v104 = *(v42 + 20);
    v103 = v1;
    sub_258AC1060(v23);
    v102 = type metadata accessor for StateOfMindTimeline.Styles;
    sub_2589DC4D8(v23, type metadata accessor for StateOfMindTimeline.Styles);
    v54 = v110;
    v55 = v111;
    (*(v110 + 104))(v19, *MEMORY[0x277CE0A80], v111);
    v56 = *MEMORY[0x277CE09A0];
    v57 = sub_258B01954();
    v58 = *(v57 - 8);
    (*(v58 + 104))(v16, v56, v57);
    (*(v58 + 56))(v16, 0, 1, v57);
    sub_258B01994();
    sub_258B019B4();
    sub_2589DBD54(v16, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88], sub_2589DC5CC);
    (*(v54 + 8))(v19, v55);
    v59 = v112;
    v60 = v113;
    v61 = v114;
    (*(v113 + 104))(v112, *MEMORY[0x277CE0A10], v114);
    sub_258B01A14();

    (*(v60 + 8))(v59, v61);
    v62 = v101;
    v63 = sub_258B01AE4();
    v65 = v64;
    LOBYTE(v61) = v66;
    sub_2589BFFAC(v62, v50, v52 & 1);

    v67 = v23;
    v68 = v103;
    sub_258AC1060(v67);
    sub_2589DC4D8(v67, v102);
    v69 = [objc_opt_self() labelColor];
    v129 = sub_258B01F94();
    v70 = sub_258B01AB4();
    v72 = v71;
    v74 = v73;
    v114 = v75;
    sub_2589BFFAC(v63, v65, v61 & 1);

    v76 = v115;
    sub_2589D7544(v115);
    v78 = v122;
    v77 = v123;
    v79 = v124;
    (*(v123 + 104))(v122, *MEMORY[0x277CDF3D0], v124);
    LOBYTE(v65) = sub_258B00694();
    v80 = *(v77 + 8);
    v80(v78, v79);
    v80(v76, v79);
    v81 = v125;
    v82 = MEMORY[0x277CE13B0];
    if ((v65 & 1) == 0)
    {
      v82 = MEMORY[0x277CE13B8];
    }

    v83 = v126;
    v84 = v105;
    (*(v125 + 104))(v126, *v82, v105);
    v85 = *(v81 + 32);
    v86 = v120;
    v85(&v120[*(v118 + 36)], v83, v84);
    *v86 = v70;
    *(v86 + 1) = v72;
    v86[16] = v74 & 1;
    *(v86 + 3) = v114;
    KeyPath = swift_getKeyPath();
    v88 = v86;
    v89 = v117;
    sub_2589DC1F4(v88, v117);
    v90 = v89 + *(v119 + 36);
    *v90 = KeyPath;
    *(v90 + 8) = 1;
    v91 = v116;
    sub_2589DC290(v89, v116);
    *(v91 + *(v121 + 36)) = 256;
    v92 = *(v68 + *(v106 + 32));
    sub_258B003E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_258A74828(0, *(v92 + 2) + 1, 1, v92);
    }

    v93 = v108;
    v95 = *(v92 + 2);
    v94 = *(v92 + 3);
    if (v95 >= v94 >> 1)
    {
      v92 = sub_258A74828((v94 > 1), v95 + 1, 1, v92);
    }

    *(v92 + 2) = v95 + 1;
    v96 = &v92[16 * v95];
    *(v96 + 4) = 0x736C6562614CLL;
    *(v96 + 5) = 0xE600000000000000;
    v129 = &unk_2869D4670;
    v97 = sub_258B003E4();
    sub_2589FC8C8(v97);
    sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589C6824();
    sub_258B02A34();

    sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374);
    v98 = v127;
    sub_258B01DD4();

    sub_2589DC4D8(v91, sub_2589DB718);
    sub_2589DC470(v98, v93, sub_2589DB6B0);
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    sub_258B012A4();
    return sub_2589DC4D8(v98, sub_2589DB6B0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    return sub_258B012A4();
  }
}

uint64_t sub_2589D9074@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  v134 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v106 - v4;
  sub_2589DB8F8(0, &qword_27F96D1C0, MEMORY[0x277CE0330]);
  v133 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v106 - v8;
  v10 = sub_258B02554();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = *(v131 + 64);
  MEMORY[0x28223BE20](v10);
  v130 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B006A4();
  v128 = *(v13 - 8);
  v129 = v13;
  v14 = *(v128 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v127 = v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = v106 - v17;
  v119 = sub_258B019F4();
  v118 = *(v119 - 8);
  v18 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DC5CC(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v106 - v22;
  v116 = sub_258B01A54();
  v115 = *(v116 - 8);
  v24 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v26 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v123 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v120 = v106 - v33;
  sub_2589DB778();
  v124 = v34;
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v122 = v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718();
  v125 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v121 = v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0();
  v41 = v40;
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v44 = v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s16EntryDayDataViewVMa();
  v46 = v1 + *(v45 + 28);
  v47 = _s5EntryVMa();
  v48 = (v46 + *(v47 + 24));
  v50 = *v48;
  v49 = v48[1];
  v51 = v50 & 0xFFFFFFFFFFFFLL;
  if ((v49 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(v49) & 0xF;
  }

  else
  {
    v52 = v51;
  }

  if (v52)
  {
    *v5 = sub_258B01194();
    *(v5 + 1) = 0;
    v5[16] = 0;
    sub_2589DBFDC(0, &qword_27F96D198, &qword_27F96D148, sub_2589DBA34);
    sub_2589D9FA0(v1, &v5[*(v53 + 44)]);
    sub_2589DC058(v5, v9);
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    sub_2589DC0E8();
    sub_258B012A4();
    return sub_2589DC16C(v5);
  }

  else
  {
    v112 = v44;
    v113 = v41;
    v114 = v9;
    v55 = v46 + *(v47 + 20);
    v56 = *(v55 + 8);
    v136 = *v55;
    v137 = v56;
    sub_2589BFF58();
    sub_258B003E4();
    v108 = sub_258B01B44();
    v107 = v57;
    v59 = v58;
    v106[1] = v60;
    v111 = v45;
    v110 = *(v45 + 20);
    v61 = v1;
    sub_258AC1060(v30);
    v109 = type metadata accessor for StateOfMindTimeline.Styles;
    sub_2589DC4D8(v30, type metadata accessor for StateOfMindTimeline.Styles);
    v62 = v115;
    v63 = v116;
    (*(v115 + 104))(v26, *MEMORY[0x277CE0A80], v116);
    v64 = *MEMORY[0x277CE09A0];
    v65 = sub_258B01954();
    v66 = *(v65 - 8);
    (*(v66 + 104))(v23, v64, v65);
    (*(v66 + 56))(v23, 0, 1, v65);
    sub_258B01994();
    sub_258B019B4();
    sub_2589DBD54(v23, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88], sub_2589DC5CC);
    (*(v62 + 8))(v26, v63);
    v67 = v118;
    v68 = v117;
    v69 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x277CE0A10], v119);
    sub_258B01A14();

    (*(v67 + 8))(v68, v69);
    v70 = v108;
    v71 = v107;
    v72 = sub_258B01AE4();
    v74 = v73;
    v76 = v75;
    v118 = v77;
    sub_2589BFFAC(v70, v71, v59 & 1);

    v106[0] = v61;
    sub_258AC1060(v30);
    sub_2589DC4D8(v30, v109);
    v78 = [objc_opt_self() labelColor];
    v136 = sub_258B01F94();
    v119 = sub_258B01AB4();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    sub_2589BFFAC(v72, v74, v76 & 1);

    v85 = v126;
    sub_2589D7544(v126);
    v87 = v127;
    v86 = v128;
    v88 = v129;
    (*(v128 + 104))(v127, *MEMORY[0x277CDF3D0], v129);
    LOBYTE(v74) = sub_258B00694();
    v89 = *(v86 + 8);
    v89(v87, v88);
    v89(v85, v88);
    v91 = v130;
    v90 = v131;
    v92 = MEMORY[0x277CE13B0];
    if ((v74 & 1) == 0)
    {
      v92 = MEMORY[0x277CE13B8];
    }

    v93 = v132;
    (*(v131 + 104))(v130, *v92, v132);
    v94 = v120;
    (*(v90 + 32))(&v120[*(v123 + 36)], v91, v93);
    *v94 = v119;
    *(v94 + 8) = v80;
    *(v94 + 16) = v82 & 1;
    *(v94 + 24) = v84;
    KeyPath = swift_getKeyPath();
    v96 = v122;
    sub_2589DC1F4(v94, v122);
    v97 = v96 + *(v124 + 36);
    *v97 = KeyPath;
    *(v97 + 8) = 1;
    v98 = v121;
    sub_2589DC290(v96, v121);
    *(v98 + *(v125 + 36)) = 256;
    v99 = *(v106[0] + *(v111 + 32));
    sub_258B003E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_258A74828(0, *(v99 + 2) + 1, 1, v99);
    }

    v100 = v114;
    v101 = v112;
    v103 = *(v99 + 2);
    v102 = *(v99 + 3);
    if (v103 >= v102 >> 1)
    {
      v99 = sub_258A74828((v102 > 1), v103 + 1, 1, v99);
    }

    *(v99 + 2) = v103 + 1;
    v104 = &v99[16 * v103];
    *(v104 + 4) = 0x746E656D6F4DLL;
    *(v104 + 5) = 0xE600000000000000;
    v136 = &unk_2869D4670;
    v105 = sub_258B003E4();
    sub_2589FC8C8(v105);
    sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589C6824();
    sub_258B02A34();

    sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374);
    sub_258B01DD4();

    sub_2589DC4D8(v98, sub_2589DB718);
    sub_2589DC470(v101, v100, sub_2589DB6B0);
    swift_storeEnumTagMultiPayload();
    sub_2589DC630();
    sub_2589DC0E8();
    sub_258B012A4();
    return sub_2589DC4D8(v101, sub_2589DB6B0);
  }
}

uint64_t sub_2589D9D84()
{
  sub_2589DB994(0, &qword_27F96D140, &qword_27F96D148, sub_2589DBA34, &qword_27F96D158);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  sub_2589DBABC(0, &qword_27F96D190, MEMORY[0x277CE0330]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = v0 + *(_s16EntryDayDataViewVMa() + 28);
  v10 = (v9 + *(_s5EntryVMa() + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    *v4 = sub_258B01194();
    *(v4 + 1) = 0;
    v4[16] = 0;
    sub_2589DBFDC(0, &qword_27F96D198, &qword_27F96D148, sub_2589DBA34);
    sub_2589DA9F4(v0, &v4[*(v15 + 44)]);
    sub_2589DC058(v4, v8);
    swift_storeEnumTagMultiPayload();
    sub_2589DC0E8();
    sub_258B012A4();
    return sub_2589DC16C(v4);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2589DC0E8();
    return sub_258B012A4();
  }
}

uint64_t sub_2589D9FA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v107 = sub_258B02554();
  v102 = *(v107 - 8);
  v3 = *(v102 + 64);
  MEMORY[0x28223BE20](v107);
  v101 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_258B006A4();
  v99 = *(v100 - 8);
  v5 = *(v99 + 64);
  v6 = MEMORY[0x28223BE20](v100);
  v98 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = v87 - v8;
  v89 = sub_258B019F4();
  v88 = *(v89 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v11 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v13 = *(v12 - 8);
  v95 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = v87 - v15;
  sub_2589DB778();
  v17 = *(v16 - 8);
  v97 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718();
  v90 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v91 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v109 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v108 = v87 - v27;
  v28 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s16EntryDayDataViewVMa();
  v33 = *(v32 + 20);
  v34 = v32;
  v92 = v32;
  v35 = a1;
  v87[1] = v33;
  sub_258AC1060(v31);
  v87[0] = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589DC4D8(v31, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v105 = v116;
  v106 = v114;
  v104 = v118;
  v103 = v119;
  v122 = 1;
  v121 = v115;
  v120 = v117;
  v36 = a1 + *(v34 + 28);
  v111 = v35;
  v37 = v36 + *(_s5EntryVMa() + 20);
  v38 = *(v37 + 8);
  v112 = *v37;
  v113 = v38;
  sub_2589BFF58();
  sub_258B003E4();
  v39 = sub_258B01B44();
  v41 = v40;
  LOBYTE(v35) = v42;
  sub_258AC1060(v31);
  sub_2589DC4D8(v31, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B018F4();
  v43 = v88;
  v44 = v89;
  (*(v88 + 104))(v11, *MEMORY[0x277CE0A10], v89);
  sub_258B01A14();

  (*(v43 + 8))(v11, v44);
  v45 = sub_258B01AE4();
  v47 = v46;
  LOBYTE(v43) = v48;
  v88 = v49;
  sub_2589BFFAC(v39, v41, v35 & 1);

  sub_258AC1060(v31);
  sub_2589DC4D8(v31, v87[0]);
  v50 = [objc_opt_self() labelColor];
  v112 = sub_258B01F94();
  v51 = sub_258B01AB4();
  v53 = v52;
  v55 = v54;
  v89 = v56;
  v57 = v91;
  sub_2589BFFAC(v45, v47, v43 & 1);

  v58 = v96;
  sub_2589D7544(v96);
  v59 = v99;
  v60 = v98;
  v61 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x277CDF3D0], v100);
  LOBYTE(v34) = sub_258B00694();
  v62 = *(v59 + 8);
  v62(v60, v61);
  v62(v58, v61);
  v63 = v102;
  v64 = MEMORY[0x277CE13B0];
  if ((v34 & 1) == 0)
  {
    v64 = MEMORY[0x277CE13B8];
  }

  v65 = v101;
  v66 = v107;
  (*(v102 + 104))(v101, *v64, v107);
  v67 = v94;
  (*(v63 + 32))(&v94[*(v95 + 44)], v65, v66);
  *v67 = v51;
  *(v67 + 8) = v53;
  *(v67 + 16) = v55 & 1;
  *(v67 + 24) = v89;
  KeyPath = swift_getKeyPath();
  v69 = v93;
  sub_2589DC1F4(v67, v93);
  v70 = v69 + *(v97 + 44);
  *v70 = KeyPath;
  *(v70 + 8) = 1;
  sub_2589DC290(v69, v57);
  v71 = v57;
  *(v57 + *(v90 + 36)) = 256;
  v72 = *(v111 + *(v92 + 32));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_258A74828(0, *(v72 + 2) + 1, 1, v72);
  }

  v74 = *(v72 + 2);
  v73 = *(v72 + 3);
  if (v74 >= v73 >> 1)
  {
    v72 = sub_258A74828((v73 > 1), v74 + 1, 1, v72);
  }

  *(v72 + 2) = v74 + 1;
  v75 = &v72[16 * v74];
  *(v75 + 4) = 0x746E656D6F4DLL;
  *(v75 + 5) = 0xE600000000000000;
  v112 = &unk_2869D4670;
  v76 = sub_258B003E4();
  sub_2589FC8C8(v76);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374);
  v77 = v108;
  sub_258B01DD4();

  sub_2589DC4D8(v71, sub_2589DB718);
  v78 = v122;
  v79 = v121;
  v80 = v120;
  v81 = v109;
  sub_2589DC470(v77, v109, sub_2589DB6B0);
  v82 = v110;
  *v110 = 0;
  *(v82 + 8) = v78;
  v83 = v105;
  v82[2] = v106;
  *(v82 + 24) = v79;
  v82[4] = v83;
  *(v82 + 40) = v80;
  v84 = v103;
  v82[6] = v104;
  v82[7] = v84;
  sub_2589DBA34();
  sub_2589DC470(v81, v82 + *(v85 + 48), sub_2589DB6B0);
  sub_2589DC4D8(v77, sub_2589DB6B0);
  return sub_2589DC4D8(v81, sub_2589DB6B0);
}

uint64_t sub_2589DA9F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v122 = a2;
  v3 = sub_258B02554();
  v118 = *(v3 - 8);
  v119 = v3;
  v4 = *(v118 + 64);
  MEMORY[0x28223BE20](v3);
  v117 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_258B006A4();
  v111 = *(v112 - 8);
  v6 = *(v111 + 64);
  v7 = MEMORY[0x28223BE20](v112);
  v110 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v96 - v9;
  v103 = sub_258B019F4();
  v100 = *(v103 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v103);
  v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB83C(0, &qword_27F96CA20, MEMORY[0x277CDFC38], MEMORY[0x277CE0BD8], MEMORY[0x277CDFAB8]);
  v13 = *(v12 - 8);
  v107 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v96 - v15;
  sub_2589DB778();
  v17 = *(v16 - 8);
  v109 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v105 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB718();
  v101 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v104 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB6B0();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v121 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v120 = &v96 - v27;
  v28 = _s6StylesV5DailyVMa(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v96 - v39;
  v41 = _s16EntryDayDataViewVMa();
  v42 = *(v41 + 20);
  v43 = v41;
  v102 = v41;
  v98 = v42;
  sub_258AC1060(v40);
  sub_2589DC470(&v40[*(v34 + 64)], v32, _s6StylesV5DailyVMa);
  v97 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589DC4D8(v40, type metadata accessor for StateOfMindTimeline.Styles);
  LODWORD(v29) = v32[*(v29 + 32)];
  sub_2589DC4D8(v32, _s6StylesV5DailyVMa);
  sub_258B024F4();
  sub_258B00854();
  v116 = v129;
  v115 = v131;
  v114 = v133;
  v113 = v134;
  v128 = 1;
  v127 = v130;
  v126 = v132;
  v44 = *(v43 + 28);
  v123 = a1;
  v45 = a1 + v44 + *(_s5EntryVMa() + 28);
  v46 = *(v45 + 8);
  v124 = *v45;
  v125 = v46;
  sub_2589BFF58();
  sub_258B003E4();
  v47 = sub_258B01B44();
  v49 = v48;
  LOBYTE(v34) = v50;
  sub_258AC1060(v38);
  sub_2589DC4D8(v38, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B018F4();
  v51 = v100;
  v52 = v99;
  v53 = v103;
  (*(v100 + 104))(v99, *MEMORY[0x277CE0A10], v103);
  sub_258B01A14();

  (*(v51 + 8))(v52, v53);
  v54 = sub_258B01AE4();
  v56 = v55;
  LOBYTE(v51) = v57;
  v103 = v58;
  sub_2589BFFAC(v47, v49, v34 & 1);

  sub_258AC1060(v38);
  sub_2589DC4D8(v38, v97);
  v59 = [objc_opt_self() secondaryLabelColor];
  v124 = sub_258B01F94();
  v60 = sub_258B01AB4();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_2589BFFAC(v54, v56, v51 & 1);

  v67 = v108;
  sub_2589D7544(v108);
  v68 = v111;
  v69 = v110;
  v70 = v112;
  (*(v111 + 104))(v110, *MEMORY[0x277CDF3D0], v112);
  v71 = sub_258B00694();
  v72 = *(v68 + 8);
  v72(v69, v70);
  v72(v67, v70);
  v74 = v117;
  v73 = v118;
  v75 = MEMORY[0x277CE13B0];
  if ((v71 & 1) == 0)
  {
    v75 = MEMORY[0x277CE13B8];
  }

  v76 = v119;
  (*(v118 + 104))(v117, *v75, v119);
  v77 = v106;
  (*(v73 + 32))(&v106[*(v107 + 44)], v74, v76);
  *v77 = v60;
  *(v77 + 8) = v62;
  v78 = v104;
  *(v77 + 16) = v64 & 1;
  *(v77 + 24) = v66;
  KeyPath = swift_getKeyPath();
  v80 = v105;
  sub_2589DC1F4(v77, v105);
  v81 = v80 + *(v109 + 44);
  *v81 = KeyPath;
  *(v81 + 8) = 1;
  sub_2589DC290(v80, v78);
  *(v78 + *(v101 + 36)) = 256;
  v82 = *(v123 + *(v102 + 32));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v82 = sub_258A74828(0, *(v82 + 2) + 1, 1, v82);
  }

  v84 = *(v82 + 2);
  v83 = *(v82 + 3);
  if (v84 >= v83 >> 1)
  {
    v82 = sub_258A74828((v83 > 1), v84 + 1, 1, v82);
  }

  *(v82 + 2) = v84 + 1;
  v85 = &v82[16 * v84];
  *(v85 + 4) = 0xD000000000000011;
  *(v85 + 5) = 0x8000000258B36660;
  v124 = &unk_2869D4670;
  v86 = sub_258B003E4();
  sub_2589FC8C8(v86);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC2F4(&qword_27F96D1A8, sub_2589DB718, sub_2589DC374);
  v87 = v120;
  sub_258B01DD4();

  sub_2589DC4D8(v78, sub_2589DB718);
  v88 = v128;
  v89 = v127;
  v90 = v126;
  v91 = v121;
  sub_2589DC470(v87, v121, sub_2589DB6B0);
  v92 = v122;
  *v122 = 0;
  *(v92 + 8) = v88;
  v92[2] = v116;
  *(v92 + 24) = v89;
  v92[4] = v115;
  *(v92 + 40) = v90;
  v93 = v113;
  v92[6] = v114;
  v92[7] = v93;
  sub_2589DBA34();
  sub_2589DC470(v91, v92 + *(v94 + 48), sub_2589DB6B0);
  sub_2589DC4D8(v87, sub_2589DB6B0);
  return sub_2589DC4D8(v91, sub_2589DB6B0);
}

void sub_2589DB514()
{
  if (!qword_27F96D100)
  {
    sub_2589DB630();
    sub_2589DC8AC(255, &qword_27F96C7B8);
    sub_2589DB83C(255, &qword_27F96D118, sub_2589DB6B0, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
    v0 = MEMORY[0x277CE0338];
    sub_2589DB8F8(255, &qword_27F96D138, MEMORY[0x277CE0338]);
    sub_2589DBABC(255, &qword_27F96D160, v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96D100);
    }
  }
}

void sub_2589DB630()
{
  if (!qword_27F96D108)
  {
    sub_2589DC8AC(255, &qword_27F96D110);
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D108);
    }
  }
}

void sub_2589DB6B0()
{
  if (!qword_27F96D120)
  {
    sub_2589DB718();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D120);
    }
  }
}