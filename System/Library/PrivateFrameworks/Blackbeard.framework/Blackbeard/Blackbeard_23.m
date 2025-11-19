uint64_t sub_1E60CCDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E60DED20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E60CCDD4(uint64_t a1)
{
  v2 = sub_1E60CED90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60CCE10(uint64_t a1)
{
  v2 = sub_1E60CED90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745C8, &qword_1E65F0F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v85 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60CED90();
  sub_1E65E6DA8();
  LOBYTE(v99) = 0;
  sub_1E65DE668();
  sub_1E60DE6BC(&qword_1ED0745D8, MEMORY[0x1E699CBA8]);
  sub_1E65E6B78();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for AppState();
  v12 = *(v11 + 20);
  LOBYTE(v99) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E60CEDE4();
  sub_1E65E6B78();
  v87 = v11;
  v88 = v6;
  v13 = *(v11 + 24);
  LOBYTE(v99) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E5FED46C(&qword_1ED074608, &qword_1ED072618, qword_1E65FBAF0);
  v86 = v3;
  sub_1E65E6B78();
  v15 = v87[7];
  LOBYTE(v99) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E60CEEF8();
  v16 = v86;
  sub_1E65E6B78();
  v17 = v87[8];
  LOBYTE(v99) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  sub_1E60CEFE0();
  sub_1E65E6B78();
  v18 = v87;
  LOWORD(v99) = *(v16 + v87[9]);
  LOBYTE(v92) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074640, &qword_1E65F0F98);
  sub_1E60CF0C8();
  sub_1E65E6B78();
  v19 = v18[10];
  LOBYTE(v99) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  sub_1E60CF264();
  sub_1E65E6B78();
  v20 = v87;
  v99 = *(v16 + v87[11]);
  LOBYTE(v92) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074698, &qword_1E65F0FA0);
  sub_1E60CF4A0();
  sub_1E65E6B78();
  v21 = v20[12];
  LOBYTE(v99) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  sub_1E60CF6DC();
  sub_1E65E6B78();
  v22 = v87[13];
  LOBYTE(v99) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  sub_1E60CF7C4();
  sub_1E65E6B78();
  v99 = *(v16 + v87[14]);
  LOBYTE(v92) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074708, &qword_1E65F0FC0);
  sub_1E60CF8C0();
  sub_1E65E6B78();
  v99 = *(v86 + v87[15]);
  LOBYTE(v92) = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074750, &qword_1E65F0FD0);
  sub_1E60CFB8C();
  sub_1E65E6B78();
  v99 = *(v86 + v87[16]);
  LOBYTE(v92) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0747C8, &qword_1E65F0FE8);
  sub_1E60D0054();
  sub_1E65E6B78();
  v99 = *(v86 + v87[17]);
  LOBYTE(v92) = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074810, &qword_1E65F0FF8);
  sub_1E60D0320();
  sub_1E65E6B78();
  v23 = v87[18];
  LOBYTE(v99) = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  sub_1E60D0658();
  sub_1E65E6B78();
  v24 = v87[19];
  LOBYTE(v99) = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  sub_1E60D0914();
  sub_1E65E6B78();
  v25 = v87[20];
  LOBYTE(v99) = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  sub_1E60D0A28();
  sub_1E65E6B78();
  v26 = v87[21];
  LOBYTE(v99) = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  sub_1E60D0B10();
  sub_1E65E6B78();
  v27 = v87[22];
  LOBYTE(v99) = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E60DC188(&qword_1ED0748F0);
  sub_1E65E6B78();
  v28 = v87[23];
  LOBYTE(v99) = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  sub_1E60D0C94();
  sub_1E65E6B78();
  v99 = *(v86 + v87[24]);
  LOBYTE(v92) = 20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074910, &qword_1E65F1018);
  sub_1E60D0D7C();
  sub_1E65E6B78();
  v99 = *(v86 + v87[25]);
  LOBYTE(v92) = 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074958, &qword_1E65F1028);
  sub_1E60D1048();
  sub_1E65E6B78();
  v29 = v87[26];
  LOBYTE(v99) = 22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  sub_1E60D1308();
  sub_1E65E6B78();
  v30 = v87[27];
  LOBYTE(v99) = 23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  sub_1E60D141C();
  sub_1E65E6B78();
  *&v99 = *(v86 + v87[28]);
  LOBYTE(v92) = 24;
  sub_1E5F8BCBC();
  sub_1E65E6B78();
  v31 = v87[29];
  LOBYTE(v99) = 25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  sub_1E60DC664(&qword_1ED0749D8);
  sub_1E65E6B78();
  *&v99 = *(v86 + v87[30]);
  LOBYTE(v92) = 26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749F0, &qword_1E65F1040);
  sub_1E60D15D8();
  sub_1E65E6B78();
  v32 = v87[31];
  LOBYTE(v99) = 27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  sub_1E60D16C0();
  sub_1E65E6B78();
  *&v99 = *(v86 + v87[32]);
  LOBYTE(v92) = 28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A30, &qword_1E65F1048);
  sub_1E60D17BC();
  sub_1E65E6B78();
  v105 = *(v86 + v87[33]);
  v109 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A48, &qword_1E65F1050);
  sub_1E60D1878();
  sub_1E65E6B78();
  v33 = (v86 + v87[34]);
  v34 = v33[1];
  v99 = *v33;
  v100 = v34;
  *v101 = v33[2];
  *&v101[9] = *(v33 + 41);
  LOBYTE(v92) = 30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AA0, &qword_1E65F1060);
  sub_1E60D1BA4();
  sub_1E65E6B78();
  v35 = (v86 + v87[35]);
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  *&v99 = v36;
  BYTE8(v99) = v35;
  LOBYTE(v92) = 31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AC8, &qword_1E65F1068);
  sub_1E5FED46C(&qword_1ED074AD0, &qword_1ED074AC8, &qword_1E65F1068);
  sub_1E65E6B78();
  v37 = v87[36];
  LOBYTE(v99) = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  sub_1E60D1D40();
  sub_1E65E6B78();
  *&v99 = *(v86 + v87[37]);
  LOBYTE(v92) = 33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AF0, &qword_1E65F1070);
  sub_1E60D1E54();
  sub_1E65E6B78();
  v38 = v87[38];
  LOBYTE(v99) = 34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  sub_1E60DCD90(&qword_1EE2D4AB8);
  sub_1E65E6B78();
  v39 = *(v86 + v87[39]);
  LOBYTE(v99) = 35;
  sub_1E65E6B58();
  v40 = *(v86 + v87[40]);
  LOBYTE(v99) = 36;
  sub_1E65E6B58();
  v41 = v87[41];
  LOBYTE(v99) = 37;
  sub_1E65E6B78();
  v42 = v87[42];
  LOBYTE(v99) = 38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  sub_1E60D1FF8();
  sub_1E65E6B78();
  v99 = *(v86 + v87[43]);
  LOBYTE(v92) = 39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B50, &qword_1E65F1090);
  sub_1E60D20E0();
  sub_1E65E6B78();
  v99 = *(v86 + v87[44]);
  LOBYTE(v92) = 40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BA8, &qword_1E65F10A0);
  sub_1E60D2454(&qword_1ED074BB0);
  sub_1E65E6B78();
  v43 = v87[45];
  LOBYTE(v99) = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  sub_1E60D2650();
  sub_1E65E6B78();
  v44 = v87[46];
  LOBYTE(v99) = 42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  sub_1E60D2764(&qword_1ED074C00);
  sub_1E65E6B78();
  v45 = v87[47];
  v108 = 43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
  sub_1E60D28A8();
  sub_1E65E6B78();
  v46 = (v86 + v87[48]);
  v47 = v46[3];
  v48 = v46[5];
  v102 = v46[4];
  v103 = v48;
  v49 = v46[5];
  v104 = v46[6];
  v50 = v46[1];
  v99 = *v46;
  v100 = v50;
  v51 = v46[3];
  v53 = *v46;
  v52 = v46[1];
  *v101 = v46[2];
  *&v101[16] = v51;
  v96 = v102;
  v97 = v49;
  v98 = v46[6];
  v92 = v53;
  v93 = v52;
  v94 = *v101;
  v95 = v47;
  v107 = 44;
  sub_1E5DFD1CC(&v99, v91, &qword_1ED074C48, &qword_1E65F10C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C48, &qword_1E65F10C8);
  sub_1E60D29A4();
  sub_1E65E6B78();
  v91[4] = v96;
  v91[5] = v97;
  v91[6] = v98;
  v91[0] = v92;
  v91[1] = v93;
  v91[2] = v94;
  v91[3] = v95;
  sub_1E5DFE50C(v91, &qword_1ED074C48, &qword_1E65F10C8);
  v54 = v87[49];
  LOBYTE(v89) = 45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  sub_1E60D2B40();
  sub_1E65E6B78();
  v55 = v87[50];
  LOBYTE(v89) = 46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  sub_1E60D2C54();
  sub_1E65E6B78();
  v56 = v87[51];
  LOBYTE(v89) = 47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  sub_1E60D2D88();
  sub_1E65E6B78();
  v57 = v87[52];
  LOBYTE(v89) = 48;
  sub_1E65E6B78();
  v58 = v87[53];
  LOBYTE(v89) = 49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
  sub_1E60D2F7C();
  sub_1E65E6B78();
  v59 = v87[54];
  LOBYTE(v89) = 50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E60D3170();
  sub_1E65E6B78();
  v60 = v87[55];
  LOBYTE(v89) = 51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  sub_1E60DD604(&qword_1ED074D10);
  sub_1E65E6B78();
  v61 = v87[56];
  LOBYTE(v89) = 52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  sub_1E60D3454();
  sub_1E65E6B78();
  v62 = v87[57];
  LOBYTE(v89) = 53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  sub_1E60D353C();
  sub_1E65E6B78();
  v89 = *(v86 + v87[58]);
  v106 = 54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D68, &qword_1E65F10E8);
  sub_1E60D3650();
  sub_1E65E6B78();
  v63 = v87[59];
  LOBYTE(v89) = 55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  sub_1E60D391C();
  sub_1E65E6B78();
  v64 = v87[60];
  LOBYTE(v89) = 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  sub_1E60D3A18();
  sub_1E65E6B78();
  v65 = *(v86 + v87[61]);
  LOBYTE(v89) = 57;
  sub_1E65E6B58();
  v66 = (v86 + v87[62]);
  v67 = v66[1];
  *&v89 = *v66;
  *(&v89 + 1) = v67;
  v106 = 58;
  sub_1E5FED40C(v89, v67);
  sub_1E5DF6D3C();
  sub_1E65E6B38();
  sub_1E5E07DA0(v89, *(&v89 + 1));
  *&v89 = *(v86 + v87[63]);
  v106 = 59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078610, &qword_1E65F1108);
  sub_1E60D3B2C();
  sub_1E65E6B78();
  v68 = (v86 + v87[64]);
  v69 = v68[1];
  v89 = *v68;
  v90 = v69;
  v106 = 60;
  type metadata accessor for UIEdgeInsets(0);
  sub_1E60DE6BC(&qword_1EE2D46C8, type metadata accessor for UIEdgeInsets);
  sub_1E65E6B78();
  v70 = v87[65];
  LOBYTE(v89) = 61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  sub_1E60D3BB0(&qword_1ED074E00);
  sub_1E65E6B78();
  v71 = v87[66];
  LOBYTE(v89) = 62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  sub_1E60D3D48(&qword_1ED074E30);
  sub_1E65E6B78();
  v89 = *(v86 + v87[67]);
  v106 = 63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E48, &qword_1E65F1120);
  sub_1E60D3E7C(&qword_1ED074E50);
  sub_1E65E6B78();
  v89 = *(v86 + v87[68]);
  v106 = 64;
  sub_1E65E6B78();
  v72 = v87[69];
  LOBYTE(v89) = 65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  sub_1E60D3F34();
  sub_1E65E6B78();
  v73 = v87[70];
  LOBYTE(v89) = 66;
  sub_1E65E39E8();
  sub_1E60DE6BC(&qword_1ED074E78, MEMORY[0x1E699EFA0]);
  sub_1E65E6B78();
  v74 = v87[71];
  LOBYTE(v89) = 67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  sub_1E60DDD68(&qword_1ED074E88);
  sub_1E65E6B78();
  v75 = v87[72];
  LOBYTE(v89) = 68;
  sub_1E65E1D58();
  sub_1E60DE6BC(&qword_1ED074EC0, MEMORY[0x1E699EFF8]);
  sub_1E65E6B78();
  v76 = v87[73];
  LOBYTE(v89) = 69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E60D40E0();
  sub_1E65E6B78();
  v77 = v87[74];
  LOBYTE(v89) = 70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
  sub_1E60D41C8();
  sub_1E65E6B78();
  v78 = v87[75];
  LOBYTE(v89) = 71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E60D42C4();
  sub_1E65E6B78();
  *&v89 = *(v86 + v87[76]);
  v106 = 72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F28, &qword_1E65F1158);
  sub_1E60D4448();
  sub_1E65E6B78();
  v79 = v87[77];
  LOBYTE(v89) = 73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  sub_1E60D4504();
  sub_1E65E6B78();
  *&v89 = *(v86 + v87[78]);
  v106 = 74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F58, &qword_1E65F1160);
  sub_1E60D4600();
  sub_1E65E6B78();
  v89 = *(v86 + v87[79]);
  v106 = 75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F70, &qword_1E65F1168);
  sub_1E60D46BC();
  sub_1E65E6B78();
  v80 = v87[80];
  LOBYTE(v89) = 76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  sub_1E60D4988();
  sub_1E65E6B78();
  v81 = v87[81];
  LOBYTE(v89) = 77;
  sub_1E65E6B78();
  v82 = v87[82];
  LOBYTE(v89) = 78;
  sub_1E65E6B78();
  v83 = v87[83];
  LOBYTE(v89) = 79;
  sub_1E65E6B78();
  v84 = v87[84];
  LOBYTE(v89) = 80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  sub_1E60D4A84();
  sub_1E65E6B78();
  return (*(v88 + 8))(v9, v5);
}

unint64_t sub_1E60CED90()
{
  result = qword_1ED0745D0;
  if (!qword_1ED0745D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0745D0);
  }

  return result;
}

unint64_t sub_1E60CEDE4()
{
  result = qword_1ED0745E8;
  if (!qword_1ED0745E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745E0, &qword_1E65F0F90);
    v1 = MEMORY[0x1E699CE20];
    sub_1E60DE6BC(&qword_1ED0745F0, MEMORY[0x1E699CE20]);
    sub_1E60DE6BC(&qword_1ED0745F8, v1);
    sub_1E60DE6BC(&qword_1ED074600, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0745E8);
  }

  return result;
}

unint64_t sub_1E60CEEF8()
{
  result = qword_1ED074610;
  if (!qword_1ED074610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F88, &unk_1E65EA400);
    v1 = MEMORY[0x1E6969770];
    sub_1E60DE6BC(&qword_1ED074618, MEMORY[0x1E6969770]);
    sub_1E60DE6BC(&qword_1ED074620, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074610);
  }

  return result;
}

unint64_t sub_1E60CEFE0()
{
  result = qword_1ED074628;
  if (!qword_1ED074628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072960, &qword_1E65EC0F8);
    v1 = MEMORY[0x1E69CB0E0];
    sub_1E60DE6BC(&qword_1ED074630, MEMORY[0x1E69CB0E0]);
    sub_1E60DE6BC(&qword_1ED074638, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074628);
  }

  return result;
}

unint64_t sub_1E60CF0C8()
{
  result = qword_1ED074648;
  if (!qword_1ED074648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074640, &qword_1E65F0F98);
    sub_1E60CF168();
    sub_1E60CF1BC();
    sub_1E60CF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074648);
  }

  return result;
}

unint64_t sub_1E60CF168()
{
  result = qword_1ED074650;
  if (!qword_1ED074650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074650);
  }

  return result;
}

unint64_t sub_1E60CF1BC()
{
  result = qword_1ED074658;
  if (!qword_1ED074658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074658);
  }

  return result;
}

unint64_t sub_1E60CF210()
{
  result = qword_1ED074660;
  if (!qword_1ED074660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074660);
  }

  return result;
}

unint64_t sub_1E60CF264()
{
  result = qword_1ED074668;
  if (!qword_1ED074668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072918, &qword_1E65EC038);
    sub_1E60CF2F0();
    sub_1E60CF3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074668);
  }

  return result;
}

unint64_t sub_1E60CF2F0()
{
  result = qword_1ED074670;
  if (!qword_1ED074670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074678, &qword_1E660D860);
    sub_1E60CF374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074670);
  }

  return result;
}

unint64_t sub_1E60CF374()
{
  result = qword_1ED074680;
  if (!qword_1ED074680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074680);
  }

  return result;
}

unint64_t sub_1E60CF3C8()
{
  result = qword_1ED074688;
  if (!qword_1ED074688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074678, &qword_1E660D860);
    sub_1E60CF44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074688);
  }

  return result;
}

unint64_t sub_1E60CF44C()
{
  result = qword_1ED074690;
  if (!qword_1ED074690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074690);
  }

  return result;
}

unint64_t sub_1E60CF4A0()
{
  result = qword_1ED0746A0;
  if (!qword_1ED0746A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074698, &qword_1E65F0FA0);
    sub_1E60CF540();
    sub_1E60CF5CC();
    sub_1E60CF658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746A0);
  }

  return result;
}

unint64_t sub_1E60CF540()
{
  result = qword_1ED0746A8;
  if (!qword_1ED0746A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746B0, &qword_1E65F0FA8);
    sub_1E60CF168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746A8);
  }

  return result;
}

unint64_t sub_1E60CF5CC()
{
  result = qword_1ED0746B8;
  if (!qword_1ED0746B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746B0, &qword_1E65F0FA8);
    sub_1E60CF1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746B8);
  }

  return result;
}

unint64_t sub_1E60CF658()
{
  result = qword_1ED0746C0;
  if (!qword_1ED0746C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746B0, &qword_1E65F0FA8);
    sub_1E60CF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746C0);
  }

  return result;
}

unint64_t sub_1E60CF6DC()
{
  result = qword_1ED0746D0;
  if (!qword_1ED0746D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746C8, &qword_1E65F0FB0);
    v1 = MEMORY[0x1E699E8D8];
    sub_1E60DE6BC(&qword_1ED0746D8, MEMORY[0x1E699E8D8]);
    sub_1E60DE6BC(&qword_1ED0746E0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746D0);
  }

  return result;
}

unint64_t sub_1E60CF7C4()
{
  result = qword_1ED0746F0;
  if (!qword_1ED0746F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746E8, &qword_1E65F0FB8);
    v1 = MEMORY[0x1E699D1D0];
    sub_1E60DE6BC(&qword_1ED0746F8, MEMORY[0x1E699D1D0]);
    sub_1E60DE6BC(&qword_1ED074700, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746F0);
  }

  return result;
}

unint64_t sub_1E60CF8C0()
{
  result = qword_1ED074710;
  if (!qword_1ED074710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074708, &qword_1E65F0FC0);
    sub_1E60CF960();
    sub_1E60CFA1C();
    sub_1E60CFAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074710);
  }

  return result;
}

unint64_t sub_1E60CF960()
{
  result = qword_1ED074718;
  if (!qword_1ED074718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074720, &qword_1E65F0FC8);
    sub_1E60DE6BC(&qword_1ED074728, MEMORY[0x1E699D2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074718);
  }

  return result;
}

unint64_t sub_1E60CFA1C()
{
  result = qword_1ED074730;
  if (!qword_1ED074730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074720, &qword_1E65F0FC8);
    sub_1E60DE6BC(&qword_1ED074738, MEMORY[0x1E699D2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074730);
  }

  return result;
}

unint64_t sub_1E60CFAD8()
{
  result = qword_1ED074740;
  if (!qword_1ED074740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074720, &qword_1E65F0FC8);
    sub_1E60DE6BC(&qword_1ED074748, MEMORY[0x1E699D2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074740);
  }

  return result;
}

unint64_t sub_1E60CFB8C()
{
  result = qword_1ED074758;
  if (!qword_1ED074758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074750, &qword_1E65F0FD0);
    sub_1E60CFC2C();
    sub_1E60CFDA4();
    sub_1E60CFF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074758);
  }

  return result;
}

unint64_t sub_1E60CFC2C()
{
  result = qword_1ED074760;
  if (!qword_1ED074760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074768, &qword_1E65F0FD8);
    sub_1E60CFCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074760);
  }

  return result;
}

unint64_t sub_1E60CFCB8()
{
  result = qword_1ED074770;
  if (!qword_1ED074770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074778, &qword_1E65F0FE0);
    sub_1E60DE6BC(&qword_1ED074780, type metadata accessor for CGSize);
    sub_1E60DE6BC(&qword_1ED074788, MEMORY[0x1E699D278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074770);
  }

  return result;
}

unint64_t sub_1E60CFDA4()
{
  result = qword_1ED074790;
  if (!qword_1ED074790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074768, &qword_1E65F0FD8);
    sub_1E60CFE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074790);
  }

  return result;
}

unint64_t sub_1E60CFE30()
{
  result = qword_1ED074798;
  if (!qword_1ED074798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074778, &qword_1E65F0FE0);
    sub_1E60DE6BC(&qword_1ED0747A0, type metadata accessor for CGSize);
    sub_1E60DE6BC(&qword_1ED0747A8, MEMORY[0x1E699D278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074798);
  }

  return result;
}

unint64_t sub_1E60CFF1C()
{
  result = qword_1ED0747B0;
  if (!qword_1ED0747B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074768, &qword_1E65F0FD8);
    sub_1E60CFFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747B0);
  }

  return result;
}

unint64_t sub_1E60CFFA0()
{
  result = qword_1ED0747B8;
  if (!qword_1ED0747B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074778, &qword_1E65F0FE0);
    sub_1E60DE6BC(&qword_1ED0747C0, MEMORY[0x1E699D278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747B8);
  }

  return result;
}

unint64_t sub_1E60D0054()
{
  result = qword_1ED0747D0;
  if (!qword_1ED0747D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747C8, &qword_1E65F0FE8);
    sub_1E60D00F4();
    sub_1E60D01B0();
    sub_1E60D026C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747D0);
  }

  return result;
}

unint64_t sub_1E60D00F4()
{
  result = qword_1ED0747D8;
  if (!qword_1ED0747D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747E0, &qword_1E65F0FF0);
    sub_1E60DE6BC(&qword_1ED0747E8, MEMORY[0x1E699D318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747D8);
  }

  return result;
}

unint64_t sub_1E60D01B0()
{
  result = qword_1ED0747F0;
  if (!qword_1ED0747F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747E0, &qword_1E65F0FF0);
    sub_1E60DE6BC(&qword_1ED0747F8, MEMORY[0x1E699D318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747F0);
  }

  return result;
}

unint64_t sub_1E60D026C()
{
  result = qword_1ED074800;
  if (!qword_1ED074800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747E0, &qword_1E65F0FF0);
    sub_1E60DE6BC(&qword_1ED074808, MEMORY[0x1E699D318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074800);
  }

  return result;
}

unint64_t sub_1E60D0320()
{
  result = qword_1ED074818;
  if (!qword_1ED074818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074810, &qword_1E65F0FF8);
    sub_1E60D03C0();
    sub_1E60D04A0();
    sub_1E60D0580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074818);
  }

  return result;
}

unint64_t sub_1E60D03C0()
{
  result = qword_1ED074820;
  if (!qword_1ED074820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074828, &qword_1E65F1000);
    sub_1E60D044C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074820);
  }

  return result;
}

unint64_t sub_1E60D044C()
{
  result = qword_1ED074830;
  if (!qword_1ED074830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074830);
  }

  return result;
}

unint64_t sub_1E60D04A0()
{
  result = qword_1ED074838;
  if (!qword_1ED074838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074828, &qword_1E65F1000);
    sub_1E60D052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074838);
  }

  return result;
}

unint64_t sub_1E60D052C()
{
  result = qword_1ED074840;
  if (!qword_1ED074840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074840);
  }

  return result;
}

unint64_t sub_1E60D0580()
{
  result = qword_1ED074848;
  if (!qword_1ED074848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074828, &qword_1E65F1000);
    sub_1E60D0604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074848);
  }

  return result;
}

unint64_t sub_1E60D0604()
{
  result = qword_1ED074850;
  if (!qword_1ED074850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074850);
  }

  return result;
}

unint64_t sub_1E60D0658()
{
  result = qword_1ED074860;
  if (!qword_1ED074860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074858, &qword_1E65F1008);
    sub_1E60D06F8();
    sub_1E60D07AC();
    sub_1E60D0860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074860);
  }

  return result;
}

unint64_t sub_1E60D06F8()
{
  result = qword_1ED074868;
  if (!qword_1ED074868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074870, &qword_1E65F1010);
    sub_1E60DE6BC(&qword_1ED074878, MEMORY[0x1E699D1F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074868);
  }

  return result;
}

unint64_t sub_1E60D07AC()
{
  result = qword_1ED074880;
  if (!qword_1ED074880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074870, &qword_1E65F1010);
    sub_1E60DE6BC(&qword_1ED074888, MEMORY[0x1E699D1F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074880);
  }

  return result;
}

unint64_t sub_1E60D0860()
{
  result = qword_1ED074890;
  if (!qword_1ED074890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074870, &qword_1E65F1010);
    sub_1E60DE6BC(&qword_1ED074898, MEMORY[0x1E699D1F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074890);
  }

  return result;
}

unint64_t sub_1E60D0914()
{
  result = qword_1ED0748A0;
  if (!qword_1ED0748A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741C8, &qword_1E65EFB48);
    v1 = MEMORY[0x1E699D2B0];
    sub_1E60DE6BC(&qword_1ED0748A8, MEMORY[0x1E699D2B0]);
    sub_1E60DE6BC(&qword_1ED0748B0, v1);
    sub_1E60DE6BC(&qword_1EE2D6BC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748A0);
  }

  return result;
}

unint64_t sub_1E60D0A28()
{
  result = qword_1ED0748B8;
  if (!qword_1ED0748B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072E80, &qword_1E65ECC58);
    v1 = MEMORY[0x1E69CC658];
    sub_1E60DE6BC(&qword_1ED0748C0, MEMORY[0x1E69CC658]);
    sub_1E60DE6BC(&qword_1ED0748C8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748B8);
  }

  return result;
}

unint64_t sub_1E60D0B10()
{
  result = qword_1ED0748D0;
  if (!qword_1ED0748D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F68, &qword_1E65EA398);
    sub_1E60D0B9C();
    sub_1E60D0C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748D0);
  }

  return result;
}

unint64_t sub_1E60D0B9C()
{
  result = qword_1ED0748D8;
  if (!qword_1ED0748D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0748E0, &qword_1E660F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748D8);
  }

  return result;
}

unint64_t sub_1E60D0C18()
{
  result = qword_1ED0748E8;
  if (!qword_1ED0748E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0748E0, &qword_1E660F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748E8);
  }

  return result;
}

unint64_t sub_1E60D0C94()
{
  result = qword_1ED0748F8;
  if (!qword_1ED0748F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071E68, &qword_1E65EA160);
    sub_1E60DE6BC(&qword_1ED074900, type metadata accessor for BrowsingIdentity);
    sub_1E60DE6BC(&qword_1ED074908, type metadata accessor for BrowsingIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748F8);
  }

  return result;
}

unint64_t sub_1E60D0D7C()
{
  result = qword_1ED074918;
  if (!qword_1ED074918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074910, &qword_1E65F1018);
    sub_1E60D0E1C();
    sub_1E60D0ED8();
    sub_1E60D0F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074918);
  }

  return result;
}

unint64_t sub_1E60D0E1C()
{
  result = qword_1ED074920;
  if (!qword_1ED074920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074928, &qword_1E65F1020);
    sub_1E60DE6BC(&qword_1ED074930, MEMORY[0x1E699D450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074920);
  }

  return result;
}

unint64_t sub_1E60D0ED8()
{
  result = qword_1ED074938;
  if (!qword_1ED074938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074928, &qword_1E65F1020);
    sub_1E60DE6BC(&qword_1ED074940, MEMORY[0x1E699D450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074938);
  }

  return result;
}

unint64_t sub_1E60D0F94()
{
  result = qword_1ED074948;
  if (!qword_1ED074948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074928, &qword_1E65F1020);
    sub_1E60DE6BC(&qword_1ED074950, MEMORY[0x1E699D450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074948);
  }

  return result;
}

unint64_t sub_1E60D1048()
{
  result = qword_1ED074960;
  if (!qword_1ED074960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074958, &qword_1E65F1028);
    sub_1E60D10E8();
    sub_1E60D11A0();
    sub_1E60D1258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074960);
  }

  return result;
}

unint64_t sub_1E60D10E8()
{
  result = qword_1ED074968;
  if (!qword_1ED074968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074970, &qword_1E65F1030);
    sub_1E5FED46C(&qword_1ED074978, &qword_1ED072810, &qword_1E65EBE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074968);
  }

  return result;
}

unint64_t sub_1E60D11A0()
{
  result = qword_1ED074980;
  if (!qword_1ED074980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074970, &qword_1E65F1030);
    sub_1E5FED46C(&qword_1ED074988, &qword_1ED072810, &qword_1E65EBE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074980);
  }

  return result;
}

unint64_t sub_1E60D1258()
{
  result = qword_1ED074990;
  if (!qword_1ED074990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074970, &qword_1E65F1030);
    sub_1E5FED46C(&qword_1ED074998, &qword_1ED072810, &qword_1E65EBE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074990);
  }

  return result;
}

unint64_t sub_1E60D1308()
{
  result = qword_1ED0749A8;
  if (!qword_1ED0749A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749A0, &qword_1E65F1038);
    v1 = MEMORY[0x1E699D6B8];
    sub_1E60DE6BC(&qword_1ED0749B0, MEMORY[0x1E699D6B8]);
    sub_1E60DE6BC(&qword_1ED0749B8, v1);
    sub_1E60DE6BC(&qword_1EE2D65B8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749A8);
  }

  return result;
}

unint64_t sub_1E60D141C()
{
  result = qword_1ED0749C0;
  if (!qword_1ED0749C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    v1 = MEMORY[0x1E699F288];
    sub_1E60DE6BC(&qword_1ED0749C8, MEMORY[0x1E699F288]);
    sub_1E60DE6BC(&qword_1ED0749D0, v1);
    sub_1E60DE6BC(&qword_1EE2D6248, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749C0);
  }

  return result;
}

unint64_t sub_1E60D1530()
{
  result = qword_1ED0749E0;
  if (!qword_1ED0749E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749E0);
  }

  return result;
}

unint64_t sub_1E60D1584()
{
  result = qword_1ED0749E8;
  if (!qword_1ED0749E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749E8);
  }

  return result;
}

unint64_t sub_1E60D15D8()
{
  result = qword_1ED0749F8;
  if (!qword_1ED0749F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749F0, &qword_1E65F1040);
    sub_1E5FED46C(&qword_1ED074A00, &qword_1ED074A08, &qword_1E65F3920);
    sub_1E60DE6BC(&qword_1ED074A10, MEMORY[0x1E699CFC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749F8);
  }

  return result;
}

unint64_t sub_1E60D16C0()
{
  result = qword_1ED074A18;
  if (!qword_1ED074A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741F0, &unk_1E65EFC10);
    v1 = MEMORY[0x1E69CD000];
    sub_1E60DE6BC(&qword_1ED074A20, MEMORY[0x1E69CD000]);
    sub_1E60DE6BC(&qword_1ED074A28, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A18);
  }

  return result;
}

unint64_t sub_1E60D17BC()
{
  result = qword_1ED074A38;
  if (!qword_1ED074A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A30, &qword_1E65F1048);
    sub_1E60DE6BC(&qword_1ED074A40, MEMORY[0x1E699EB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A38);
  }

  return result;
}

unint64_t sub_1E60D1878()
{
  result = qword_1ED074A50;
  if (!qword_1ED074A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A48, &qword_1E65F1050);
    sub_1E60D1918();
    sub_1E60D1A04();
    sub_1E60D1AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A50);
  }

  return result;
}

unint64_t sub_1E60D1918()
{
  result = qword_1ED074A58;
  if (!qword_1ED074A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A60, &qword_1E65F1058);
    sub_1E60DE6BC(&qword_1ED074A68, MEMORY[0x1E699DD40]);
    sub_1E60DE6BC(&qword_1ED074A70, MEMORY[0x1E699DEB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A58);
  }

  return result;
}

unint64_t sub_1E60D1A04()
{
  result = qword_1ED074A78;
  if (!qword_1ED074A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A60, &qword_1E65F1058);
    sub_1E60DE6BC(&qword_1ED074A80, MEMORY[0x1E699DD40]);
    sub_1E60DE6BC(&qword_1ED074A88, MEMORY[0x1E699DEB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A78);
  }

  return result;
}

unint64_t sub_1E60D1AF0()
{
  result = qword_1ED074A90;
  if (!qword_1ED074A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A60, &qword_1E65F1058);
    sub_1E60DE6BC(&qword_1ED074A98, MEMORY[0x1E699DEB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A90);
  }

  return result;
}

unint64_t sub_1E60D1BA4()
{
  result = qword_1ED074AA8;
  if (!qword_1ED074AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AA0, &qword_1E65F1060);
    sub_1E60D1C44();
    sub_1E60D1C98();
    sub_1E60D1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AA8);
  }

  return result;
}

unint64_t sub_1E60D1C44()
{
  result = qword_1ED074AB0;
  if (!qword_1ED074AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AB0);
  }

  return result;
}

unint64_t sub_1E60D1C98()
{
  result = qword_1ED074AB8;
  if (!qword_1ED074AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AB8);
  }

  return result;
}

unint64_t sub_1E60D1CEC()
{
  result = qword_1ED074AC0;
  if (!qword_1ED074AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AC0);
  }

  return result;
}

unint64_t sub_1E60D1D40()
{
  result = qword_1ED074AD8;
  if (!qword_1ED074AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072800, &qword_1E65EBDF8);
    v1 = MEMORY[0x1E699E100];
    sub_1E60DE6BC(&qword_1ED074AE0, MEMORY[0x1E699E100]);
    sub_1E60DE6BC(&qword_1ED074AE8, v1);
    sub_1E60DE6BC(&qword_1EE2D6B30, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AD8);
  }

  return result;
}

unint64_t sub_1E60D1E54()
{
  result = qword_1ED074AF8;
  if (!qword_1ED074AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AF0, &qword_1E65F1070);
    sub_1E60DE6BC(&qword_1ED074B00, MEMORY[0x1E699CFF0]);
    sub_1E60D1F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AF8);
  }

  return result;
}

unint64_t sub_1E60D1F10()
{
  result = qword_1ED074B08;
  if (!qword_1ED074B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B10, &qword_1E65F1078);
    sub_1E60DE6BC(&qword_1ED074B18, MEMORY[0x1E699D028]);
    sub_1E5FED46C(&qword_1ED074B20, &qword_1ED074B28, &qword_1E65F1080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B08);
  }

  return result;
}

unint64_t sub_1E60D1FF8()
{
  result = qword_1ED074B38;
  if (!qword_1ED074B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B30, &qword_1E65F1088);
    v1 = MEMORY[0x1E6969530];
    sub_1E60DE6BC(&qword_1ED074B40, MEMORY[0x1E6969530]);
    sub_1E60DE6BC(&qword_1ED074B48, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B38);
  }

  return result;
}

unint64_t sub_1E60D20E0()
{
  result = qword_1ED074B58;
  if (!qword_1ED074B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B50, &qword_1E65F1090);
    sub_1E60D2180();
    sub_1E60D2290();
    sub_1E60D23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B58);
  }

  return result;
}

unint64_t sub_1E60D2180()
{
  result = qword_1ED074B60;
  if (!qword_1ED074B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B68, &qword_1E65F1098);
    sub_1E60D223C();
    sub_1E60DE6BC(&qword_1ED074B78, MEMORY[0x1E699E610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B60);
  }

  return result;
}

unint64_t sub_1E60D223C()
{
  result = qword_1ED074B70;
  if (!qword_1ED074B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B70);
  }

  return result;
}

unint64_t sub_1E60D2290()
{
  result = qword_1ED074B80;
  if (!qword_1ED074B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B68, &qword_1E65F1098);
    sub_1E60D234C();
    sub_1E60DE6BC(&qword_1ED074B90, MEMORY[0x1E699E610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B80);
  }

  return result;
}

unint64_t sub_1E60D234C()
{
  result = qword_1ED074B88;
  if (!qword_1ED074B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B88);
  }

  return result;
}

unint64_t sub_1E60D23A0()
{
  result = qword_1ED074B98;
  if (!qword_1ED074B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B68, &qword_1E65F1098);
    sub_1E60DE6BC(&qword_1ED074BA0, MEMORY[0x1E699E610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B98);
  }

  return result;
}

uint64_t sub_1E60D2454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BA8, &qword_1E65F10A0);
    sub_1E60D2550(&qword_1ED074BB8, sub_1E60D223C);
    sub_1E60D2550(&qword_1ED074BC8, sub_1E60D234C);
    sub_1E60D25D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E60D2550(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BC0, &qword_1E65F10A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D25D4()
{
  result = qword_1ED074BD0;
  if (!qword_1ED074BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BC0, &qword_1E65F10A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074BD0);
  }

  return result;
}

unint64_t sub_1E60D2650()
{
  result = qword_1ED074BE0;
  if (!qword_1ED074BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BD8, &qword_1E65F10B0);
    v1 = MEMORY[0x1E699E698];
    sub_1E60DE6BC(&qword_1ED074BE8, MEMORY[0x1E699E698]);
    sub_1E60DE6BC(&qword_1ED074BF0, v1);
    sub_1E60DE6BC(&qword_1EE2D67A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074BE0);
  }

  return result;
}

uint64_t sub_1E60D2764(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BF8, &qword_1E65F10B8);
    v3 = MEMORY[0x1E699E860];
    sub_1E60DE6BC(&qword_1ED074C08, MEMORY[0x1E699E860]);
    sub_1E60DE6BC(&qword_1ED074C10, v3);
    v4 = MEMORY[0x1E699E810];
    sub_1E60DE6BC(&qword_1ED074C18, MEMORY[0x1E699E810]);
    sub_1E60DE6BC(&qword_1ED074C20, v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D28A8()
{
  result = qword_1ED074C30;
  if (!qword_1ED074C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C28, &qword_1E65F10C0);
    v1 = MEMORY[0x1E69CC2C8];
    sub_1E60DE6BC(&qword_1ED074C38, MEMORY[0x1E69CC2C8]);
    sub_1E60DE6BC(&qword_1ED074C40, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C30);
  }

  return result;
}

unint64_t sub_1E60D29A4()
{
  result = qword_1ED074C50;
  if (!qword_1ED074C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C48, &qword_1E65F10C8);
    sub_1E60D2A44();
    sub_1E60D2A98();
    sub_1E60D2AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C50);
  }

  return result;
}

unint64_t sub_1E60D2A44()
{
  result = qword_1ED074C58;
  if (!qword_1ED074C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C58);
  }

  return result;
}

unint64_t sub_1E60D2A98()
{
  result = qword_1ED074C60;
  if (!qword_1ED074C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C60);
  }

  return result;
}

unint64_t sub_1E60D2AEC()
{
  result = qword_1ED074C68;
  if (!qword_1ED074C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C68);
  }

  return result;
}

unint64_t sub_1E60D2B40()
{
  result = qword_1ED074C78;
  if (!qword_1ED074C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C70, &qword_1E65F10D0);
    v1 = MEMORY[0x1E699D0E8];
    sub_1E60DE6BC(&qword_1ED074C80, MEMORY[0x1E699D0E8]);
    sub_1E60DE6BC(&qword_1ED074C88, v1);
    sub_1E60DE6BC(&qword_1EE2D6D90, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C78);
  }

  return result;
}

unint64_t sub_1E60D2C54()
{
  result = qword_1ED074C90;
  if (!qword_1ED074C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072818, &qword_1E65EBE10);
    sub_1E60D2CE0();
    sub_1E60D2D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C90);
  }

  return result;
}

unint64_t sub_1E60D2CE0()
{
  result = qword_1ED074C98;
  if (!qword_1ED074C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C98);
  }

  return result;
}

unint64_t sub_1E60D2D34()
{
  result = qword_1EE2D70E8;
  if (!qword_1EE2D70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70E8);
  }

  return result;
}

unint64_t sub_1E60D2D88()
{
  result = qword_1ED074CA0;
  if (!qword_1ED074CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074068, &qword_1E65EF228);
    sub_1E60D2E14();
    sub_1E60D2EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CA0);
  }

  return result;
}

unint64_t sub_1E60D2E14()
{
  result = qword_1ED074CA8;
  if (!qword_1ED074CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CB0, &unk_1E660F800);
    sub_1E60DE6BC(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CA8);
  }

  return result;
}

unint64_t sub_1E60D2EC8()
{
  result = qword_1ED074CB8;
  if (!qword_1ED074CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CB0, &unk_1E660F800);
    sub_1E60DE6BC(&qword_1EE2D7030, MEMORY[0x1E69CC888]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CB8);
  }

  return result;
}

unint64_t sub_1E60D2F7C()
{
  result = qword_1ED074CC0;
  if (!qword_1ED074CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073F98, &qword_1E65EF138);
    sub_1E60D3008();
    sub_1E60D30BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CC0);
  }

  return result;
}

unint64_t sub_1E60D3008()
{
  result = qword_1ED074CC8;
  if (!qword_1ED074CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    sub_1E60DE6BC(&qword_1ED074CD8, MEMORY[0x1E69CB2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CC8);
  }

  return result;
}

unint64_t sub_1E60D30BC()
{
  result = qword_1ED074CE0;
  if (!qword_1ED074CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    sub_1E60DE6BC(&qword_1ED074CE8, MEMORY[0x1E69CB2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CE0);
  }

  return result;
}

unint64_t sub_1E60D3170()
{
  result = qword_1ED074CF8;
  if (!qword_1ED074CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CF0, &qword_1E65F10D8);
    v1 = MEMORY[0x1E699E9E0];
    sub_1E60DE6BC(&qword_1ED074D00, MEMORY[0x1E699E9E0]);
    sub_1E60DE6BC(&qword_1ED074D08, v1);
    sub_1E60DE6BC(&qword_1EE2D64A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CF8);
  }

  return result;
}

unint64_t sub_1E60D3284()
{
  result = qword_1ED074D18;
  if (!qword_1ED074D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073568, &qword_1E65FD8A0);
    v1 = MEMORY[0x1E699EA00];
    sub_1E60DE6BC(&qword_1ED074D20, MEMORY[0x1E699EA00]);
    sub_1E60DE6BC(&qword_1EE2D6498, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D18);
  }

  return result;
}

unint64_t sub_1E60D336C()
{
  result = qword_1ED074D28;
  if (!qword_1ED074D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073568, &qword_1E65FD8A0);
    v1 = MEMORY[0x1E699EA00];
    sub_1E60DE6BC(&qword_1ED074D20, MEMORY[0x1E699EA00]);
    sub_1E60DE6BC(&qword_1EE2D6498, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D28);
  }

  return result;
}

unint64_t sub_1E60D3454()
{
  result = qword_1ED074D38;
  if (!qword_1ED074D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D30, &qword_1E65F10E0);
    v1 = MEMORY[0x1E699F160];
    sub_1E60DE6BC(&qword_1ED074D40, MEMORY[0x1E699F160]);
    sub_1E60DE6BC(&qword_1ED074D48, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D38);
  }

  return result;
}

unint64_t sub_1E60D353C()
{
  result = qword_1ED074D50;
  if (!qword_1ED074D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745B0, &qword_1E65F0F38);
    v1 = MEMORY[0x1E699F370];
    sub_1E60DE6BC(&qword_1ED074D58, MEMORY[0x1E699F370]);
    sub_1E60DE6BC(&qword_1ED074D60, v1);
    sub_1E60DE6BC(&qword_1EE2D6220, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D50);
  }

  return result;
}

unint64_t sub_1E60D3650()
{
  result = qword_1ED074D70;
  if (!qword_1ED074D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D68, &qword_1E65F10E8);
    sub_1E60D36F0();
    sub_1E60D37AC();
    sub_1E60D3868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D70);
  }

  return result;
}

unint64_t sub_1E60D36F0()
{
  result = qword_1ED074D78;
  if (!qword_1ED074D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D80, &qword_1E65F10F0);
    sub_1E60DE6BC(&qword_1ED074D88, MEMORY[0x1E699F2C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D78);
  }

  return result;
}

unint64_t sub_1E60D37AC()
{
  result = qword_1ED074D90;
  if (!qword_1ED074D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D80, &qword_1E65F10F0);
    sub_1E60DE6BC(&qword_1ED074D98, MEMORY[0x1E699F2C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D90);
  }

  return result;
}

unint64_t sub_1E60D3868()
{
  result = qword_1ED074DA0;
  if (!qword_1ED074DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D80, &qword_1E65F10F0);
    sub_1E60DE6BC(&qword_1ED074DA8, MEMORY[0x1E699F2C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DA0);
  }

  return result;
}

unint64_t sub_1E60D391C()
{
  result = qword_1ED074DB8;
  if (!qword_1ED074DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DB0, &qword_1E65F10F8);
    v1 = MEMORY[0x1E69CC100];
    sub_1E60DE6BC(&qword_1ED074DC0, MEMORY[0x1E69CC100]);
    sub_1E60DE6BC(&qword_1ED074DC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DB8);
  }

  return result;
}

unint64_t sub_1E60D3A18()
{
  result = qword_1ED074DD8;
  if (!qword_1ED074DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DD0, &qword_1E65F1100);
    v1 = MEMORY[0x1E699ED68];
    sub_1E60DE6BC(&qword_1ED074DE0, MEMORY[0x1E699ED68]);
    sub_1E60DE6BC(&qword_1ED074DE8, v1);
    sub_1E60DE6BC(&qword_1EE2D6050, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DD8);
  }

  return result;
}

unint64_t sub_1E60D3B2C()
{
  result = qword_1ED074DF0;
  if (!qword_1ED074DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078610, &qword_1E65F1108);
    sub_1E5DF6D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DF0);
  }

  return result;
}

uint64_t sub_1E60D3BB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DF8, &qword_1E65F1110);
    sub_1E60D3CA0();
    sub_1E60D3CF4();
    v3 = MEMORY[0x1E699EDB0];
    sub_1E60DE6BC(&qword_1ED074E18, MEMORY[0x1E699EDB0]);
    sub_1E60DE6BC(&qword_1ED074E20, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D3CA0()
{
  result = qword_1ED074E08;
  if (!qword_1ED074E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E08);
  }

  return result;
}

unint64_t sub_1E60D3CF4()
{
  result = qword_1ED074E10;
  if (!qword_1ED074E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E10);
  }

  return result;
}

uint64_t sub_1E60D3D48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E28, &qword_1E65F1118);
    sub_1E60D3DD4();
    sub_1E60D3E28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D3DD4()
{
  result = qword_1ED074E38;
  if (!qword_1ED074E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E38);
  }

  return result;
}

unint64_t sub_1E60D3E28()
{
  result = qword_1ED074E40;
  if (!qword_1ED074E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E40);
  }

  return result;
}

uint64_t sub_1E60D3E7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E48, &qword_1E65F1120);
    sub_1E60D0B9C();
    sub_1E60D0C18();
    sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D3F34()
{
  result = qword_1ED074E60;
  if (!qword_1ED074E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E58, &qword_1E65F1128);
    v1 = MEMORY[0x1E699EF28];
    sub_1E60DE6BC(&qword_1ED074E68, MEMORY[0x1E699EF28]);
    sub_1E60DE6BC(&qword_1ED074E70, v1);
    sub_1E60DE6BC(&qword_1EE2D6B08, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E60);
  }

  return result;
}

uint64_t sub_1E60D4048(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E98, &qword_1E65F1138);
    sub_1E5FED46C(a2, &qword_1ED074EA8, &qword_1E65F1140);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D40E0()
{
  result = qword_1ED074EC8;
  if (!qword_1ED074EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072990, &qword_1E65EC130);
    v1 = MEMORY[0x1E69CBFD8];
    sub_1E60DE6BC(&qword_1ED074ED0, MEMORY[0x1E69CBFD8]);
    sub_1E60DE6BC(&qword_1ED074ED8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074EC8);
  }

  return result;
}

unint64_t sub_1E60D41C8()
{
  result = qword_1ED074EE8;
  if (!qword_1ED074EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074EE0, &qword_1E65F1148);
    v1 = MEMORY[0x1E69CB3C8];
    sub_1E60DE6BC(&qword_1ED074EF0, MEMORY[0x1E69CB3C8]);
    sub_1E60DE6BC(&qword_1ED074EF8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074EE8);
  }

  return result;
}

unint64_t sub_1E60D42C4()
{
  result = qword_1ED074F08;
  if (!qword_1ED074F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F00, &unk_1E66062A0);
    sub_1E60D4350();
    sub_1E60D43CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F08);
  }

  return result;
}

unint64_t sub_1E60D4350()
{
  result = qword_1ED074F10;
  if (!qword_1ED074F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F10);
  }

  return result;
}

unint64_t sub_1E60D43CC()
{
  result = qword_1ED074F20;
  if (!qword_1ED074F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F20);
  }

  return result;
}

unint64_t sub_1E60D4448()
{
  result = qword_1ED074F30;
  if (!qword_1ED074F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F28, &qword_1E65F1158);
    sub_1E60DE6BC(&qword_1ED074F38, MEMORY[0x1E699ECC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F30);
  }

  return result;
}

unint64_t sub_1E60D4504()
{
  result = qword_1ED074F40;
  if (!qword_1ED074F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v1 = MEMORY[0x1E69CC1B0];
    sub_1E60DE6BC(&qword_1ED074F48, MEMORY[0x1E69CC1B0]);
    sub_1E60DE6BC(&qword_1ED074F50, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F40);
  }

  return result;
}

unint64_t sub_1E60D4600()
{
  result = qword_1ED074F60;
  if (!qword_1ED074F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F58, &qword_1E65F1160);
    sub_1E60DE6BC(&qword_1ED074F68, MEMORY[0x1E699EA38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F60);
  }

  return result;
}

unint64_t sub_1E60D46BC()
{
  result = qword_1ED074F78;
  if (!qword_1ED074F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F70, &qword_1E65F1168);
    sub_1E60D475C();
    sub_1E60D4818();
    sub_1E60D48D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F78);
  }

  return result;
}

unint64_t sub_1E60D475C()
{
  result = qword_1ED074F80;
  if (!qword_1ED074F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F88, &qword_1E65F1170);
    sub_1E60DE6BC(&qword_1ED074F90, MEMORY[0x1E699EC68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F80);
  }

  return result;
}

unint64_t sub_1E60D4818()
{
  result = qword_1ED074F98;
  if (!qword_1ED074F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F88, &qword_1E65F1170);
    sub_1E60DE6BC(&qword_1ED074FA0, MEMORY[0x1E699EC68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F98);
  }

  return result;
}

unint64_t sub_1E60D48D4()
{
  result = qword_1ED074FA8;
  if (!qword_1ED074FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F88, &qword_1E65F1170);
    sub_1E60DE6BC(&qword_1ED074FB0, MEMORY[0x1E699EC68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074FA8);
  }

  return result;
}

unint64_t sub_1E60D4988()
{
  result = qword_1ED074FB8;
  if (!qword_1ED074FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FB8, &qword_1E65EF148);
    v1 = MEMORY[0x1E69CD2D8];
    sub_1E60DE6BC(&qword_1ED074FC0, MEMORY[0x1E69CD2D8]);
    sub_1E60DE6BC(&qword_1ED074FC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074FB8);
  }

  return result;
}

unint64_t sub_1E60D4A84()
{
  result = qword_1ED074FD0;
  if (!qword_1ED074FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FC0, &qword_1E65EF150);
    v1 = MEMORY[0x1E69CD370];
    sub_1E60DE6BC(&qword_1ED074FD8, MEMORY[0x1E69CD370]);
    sub_1E60DE6BC(&qword_1ED074FE0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074FD0);
  }

  return result;
}

uint64_t AppState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v642 = a1;
  v484 = a2;
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  v609 = *(v610 - 8);
  v2 = *(v609 + 64);
  MEMORY[0x1EEE9AC00](v610);
  v483 = &v435 - v3;
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  v607 = *(v608 - 8);
  v4 = v607[8];
  v5 = MEMORY[0x1EEE9AC00](v608);
  v482 = &v435 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v481 = &v435 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v480 = &v435 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v479 = &v435 - v11;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v605 = *(v606 - 8);
  v12 = *(v605 + 64);
  MEMORY[0x1EEE9AC00](v606);
  v478 = &v435 - v13;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v603 = *(v604 - 8);
  v14 = *(v603 + 64);
  MEMORY[0x1EEE9AC00](v604);
  v477 = &v435 - v15;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
  v601 = *(v602 - 8);
  v16 = *(v601 + 64);
  MEMORY[0x1EEE9AC00](v602);
  v476 = &v435 - v17;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v599 = *(v600 - 8);
  v18 = *(v599 + 64);
  MEMORY[0x1EEE9AC00](v600);
  v475 = &v435 - v19;
  v646 = sub_1E65E1D58();
  v645 = *(v646 - 8);
  v20 = *(v645 + 64);
  MEMORY[0x1EEE9AC00](v646);
  v474 = &v435 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  v597 = *(v598 - 8);
  v22 = *(v597 + 64);
  MEMORY[0x1EEE9AC00](v598);
  v473 = &v435 - v23;
  v644 = sub_1E65E39E8();
  v643 = *(v644 - 8);
  v24 = *(v643 + 64);
  MEMORY[0x1EEE9AC00](v644);
  v472 = &v435 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  v26 = *(*(v494 - 8) + 64);
  MEMORY[0x1EEE9AC00](v494);
  v471 = &v435 - v27;
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  v595 = *(v596 - 8);
  v28 = *(v595 + 64);
  MEMORY[0x1EEE9AC00](v596);
  v470 = &v435 - v29;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  v593 = *(v594 - 8);
  v30 = *(v593 + 64);
  MEMORY[0x1EEE9AC00](v594);
  v469 = &v435 - v31;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  v32 = *(*(v493 - 8) + 64);
  MEMORY[0x1EEE9AC00](v493);
  v468 = &v435 - v33;
  v592 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  v591 = *(v592 - 8);
  v34 = *(v591 + 64);
  MEMORY[0x1EEE9AC00](v592);
  v467 = &v435 - v35;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  v36 = *(*(v492 - 8) + 64);
  MEMORY[0x1EEE9AC00](v492);
  v466 = &v435 - v37;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  v589 = *(v590 - 8);
  v38 = *(v589 + 64);
  MEMORY[0x1EEE9AC00](v590);
  v465 = &v435 - v39;
  *(&v491 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  v40 = *(*(*(&v491 + 1) - 8) + 64);
  MEMORY[0x1EEE9AC00](*(&v491 + 1));
  v464 = &v435 - v41;
  *&v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  v42 = *(*(v491 - 8) + 64);
  MEMORY[0x1EEE9AC00](v491);
  v463 = &v435 - v43;
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
  v587 = *(v588 - 8);
  v44 = *(v587 + 64);
  MEMORY[0x1EEE9AC00](v588);
  v462 = &v435 - v45;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  v585 = *(v586 - 8);
  v46 = v585[8];
  v47 = MEMORY[0x1EEE9AC00](v586);
  v461 = &v435 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v460 = &v435 - v49;
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v583 = *(v584 - 8);
  v50 = *(v583 + 64);
  MEMORY[0x1EEE9AC00](v584);
  v459 = &v435 - v51;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  v52 = *(*(v490 - 8) + 64);
  MEMORY[0x1EEE9AC00](v490);
  v458 = &v435 - v53;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
  v581 = *(v582 - 8);
  v54 = *(v581 + 64);
  MEMORY[0x1EEE9AC00](v582);
  v457 = &v435 - v55;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  v579 = *(v580 - 8);
  v56 = *(v579 + 64);
  MEMORY[0x1EEE9AC00](v580);
  v456 = &v435 - v57;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  v58 = *(*(v489 - 8) + 64);
  MEMORY[0x1EEE9AC00](v489);
  v455 = &v435 - v59;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  v577 = *(v578 - 8);
  v60 = *(v577 + 64);
  MEMORY[0x1EEE9AC00](v578);
  v495 = &v435 - v61;
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v575 = *(v576 - 8);
  v62 = v575[8];
  v63 = MEMORY[0x1EEE9AC00](v576);
  v454 = &v435 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v453 = &v435 - v65;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  v66 = *(*(v496 - 8) + 64);
  MEMORY[0x1EEE9AC00](v496);
  v452 = &v435 - v67;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  v573 = *(v574 - 8);
  v68 = *(v573 + 64);
  MEMORY[0x1EEE9AC00](v574);
  v499 = &v435 - v69;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v571 = *(v572 - 8);
  v70 = *(v571 + 64);
  MEMORY[0x1EEE9AC00](v572);
  v498 = &v435 - v71;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  v72 = *(*(v507 - 8) + 64);
  MEMORY[0x1EEE9AC00](v507);
  v497 = &v435 - v73;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  v74 = *(*(v506 - 8) + 64);
  MEMORY[0x1EEE9AC00](v506);
  v450 = &v435 - v75;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v569 = *(v570 - 8);
  v76 = *(v569 + 64);
  MEMORY[0x1EEE9AC00](v570);
  v448 = &v435 - v77;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v567 = *(v568 - 8);
  v78 = *(v567 + 64);
  MEMORY[0x1EEE9AC00](v568);
  v445 = &v435 - v79;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  v565 = *(v566 - 8);
  v80 = *(v565 + 64);
  MEMORY[0x1EEE9AC00](v566);
  v443 = &v435 - v81;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v563 = *(v564 - 8);
  v82 = *(v563 + 64);
  MEMORY[0x1EEE9AC00](v564);
  v442 = &v435 - v83;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  v84 = *(*(v611 - 8) + 64);
  MEMORY[0x1EEE9AC00](v611);
  v500 = &v435 - v85;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  v86 = *(*(v612 - 8) + 64);
  MEMORY[0x1EEE9AC00](v612);
  v501 = &v435 - v87;
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  v615 = *(v618 - 8);
  v88 = *(v615 + 64);
  MEMORY[0x1EEE9AC00](v618);
  v502 = &v435 - v89;
  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  v617 = *(v620 - 8);
  v90 = *(v617 + 64);
  MEMORY[0x1EEE9AC00](v620);
  v503 = &v435 - v91;
  v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v623 = *(v624 - 8);
  v92 = *(v623 + 64);
  MEMORY[0x1EEE9AC00](v624);
  v504 = &v435 - v93;
  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v626 = *(v629 - 8);
  v94 = *(v626 + 64);
  MEMORY[0x1EEE9AC00](v629);
  v505 = &v435 - v95;
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v628 = *(v630 - 8);
  v96 = *(v628 + 64);
  MEMORY[0x1EEE9AC00](v630);
  v508 = &v435 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v486 = *(v98 - 8);
  v487 = v98;
  v99 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v509 = &v435 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v511 = &v435 - v103;
  v634 = sub_1E65DE668();
  v632 = *(v634 - 8);
  v104 = *(v632 + 64);
  MEMORY[0x1EEE9AC00](v634);
  v512 = &v435 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FE8, &qword_1E65F1178);
  v485 = *(v488 - 8);
  v106 = *(v485 + 64);
  MEMORY[0x1EEE9AC00](v488);
  v633 = &v435 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  v109 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v636 = &v435 - v110;
  v637 = sub_1E65DF6C8();
  v635 = *(v637 - 8);
  v111 = *(v635 + 64);
  MEMORY[0x1EEE9AC00](v637);
  v545 = &v435 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1E65DF658();
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113 - 8);
  v544 = &v435 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v641 = type metadata accessor for BrowsingIdentity(0);
  v116 = *(*(v641 - 8) + 64);
  MEMORY[0x1EEE9AC00](v641);
  v640 = &v435 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E65D7848();
  v119 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v435 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1E65DE688();
  v123 = *(v122 - 8);
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v126 = &v435 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AppState();
  v128 = *(*(v127 - 1) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v435 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v123 + 104))(v126, *MEMORY[0x1E699CBC0], v122);
  sub_1E65DE658();
  v131 = &v130[v127[5]];
  sub_1E65DEEC8();
  swift_storeEnumTagMultiPayload();
  v510 = v101;
  v132 = v131 + *(v101 + 28);
  v631 = v131;
  sub_1E5E05C28(v131, v132, MEMORY[0x1E699CE20]);
  v133 = v127[7];
  v543 = v121;
  sub_1E65D77C8();
  sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770]);
  v627 = v133;
  sub_1E65E4C48();
  v134 = v127[8];
  sub_1E65D7EB8();
  sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0]);
  v625 = v134;
  sub_1E65E4CA8();
  v135 = v127[10];
  *&v674 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  sub_1E5FED46C(&qword_1EE2D4700, &qword_1ED074678, &qword_1E660D860);
  v622 = v135;
  sub_1E65E4C48();
  v136 = MEMORY[0x1E69E7CC0];
  v137 = sub_1E5E05C90(MEMORY[0x1E69E7CC0]);
  v138 = v127[12];
  sub_1E65E1618();
  sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8]);
  v621 = v137;

  v616 = v138;
  sub_1E65E4CA8();
  v139 = v127[13];
  sub_1E65DBAB8();
  sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0]);
  v614 = v139;
  sub_1E65E4D58();
  v613 = sub_1E5E05D8C(v136);

  v649 = sub_1E5E05F74(v136);

  v648 = sub_1E5E06078(v136);

  v140 = sub_1E5E06264(v136);
  v141 = &v130[v127[18]];
  v142 = sub_1E65DBB88();
  (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
  v143 = v141 + *(v612 + 28);
  v562 = v141;
  sub_1E5DFD1CC(v141, v143, &qword_1ED074870, &qword_1E65F1010);
  v144 = &v130[v127[19]];
  v145 = *MEMORY[0x1E699D2A8];
  v146 = sub_1E65DBD48();
  v147 = *(v146 - 8);
  (*(v147 + 104))(v144, v145, v146);
  v148 = *(v147 + 16);
  v149 = v144 + *(v611 + 28);
  v561 = v144;
  v148(v149, v144, v146);
  v150 = v127[20];
  sub_1E65D9AC8();
  sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658]);
  v647 = v140;

  v560 = v150;
  sub_1E65E4CA8();
  v151 = v127[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180);
  v559 = v151;
  sub_1E65E4CA8();
  v152 = v127[22];
  sub_1E5DF46C8();
  v558 = v152;
  sub_1E65E4D58();
  v153 = v127[23];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v154 - 8) + 56))(v640, 1, 1, v154);
  sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity);
  v557 = v153;
  sub_1E65E4C48();
  v155 = MEMORY[0x1E69E7CC0];
  v641 = sub_1E5E06378(MEMORY[0x1E69E7CC0]);

  v156 = sub_1E5E06564(v155);
  v157 = &v130[v127[26]];
  v158 = *MEMORY[0x1E699D6A8];
  v159 = sub_1E65E02A8();
  v160 = *(v159 - 8);
  (*(v160 + 104))(v157, v158, v159);
  v161 = *(v160 + 16);
  v162 = v157 + *(v506 + 28);
  v556 = v157;
  v161(v162, v157, v159);
  v163 = &v130[v127[27]];
  v640 = v156;

  sub_1E65E2378();
  v164 = *(v507 + 28);
  v165 = sub_1E65E23A8();
  v166 = *(*(v165 - 8) + 16);
  v555 = v163;
  v166(v163 + v164, v163, v165);
  v167 = v127[29];
  sub_1E5DF23E0();
  v554 = v167;
  sub_1E65E4D58();
  v168 = MEMORY[0x1E69E7CC0];
  v552 = sub_1E5E0675C(MEMORY[0x1E69E7CC0]);
  v169 = v127[31];
  sub_1E65E61D8();
  sub_1E65DA8C8();
  sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000]);
  v553 = v169;
  sub_1E65E4D38();
  v550 = sub_1E5E06988(v168);
  v170 = sub_1E5E06B74(v168);
  v171 = &v130[v127[36]];
  v639 = v170;

  sub_1E65DC5D8();
  v172 = *(v496 + 28);
  v173 = sub_1E65DC638();
  v174 = *(*(v173 - 8) + 16);
  v551 = v171;
  v174(v171 + v172, v171, v173);
  v548 = sub_1E5DFE000(v168);
  v175 = v127[38];
  sub_1E65E61D8();
  v549 = v175;
  sub_1E65E4C68();
  v436 = v127[39];
  v130[v436] = 0;
  v437 = v127[40];
  v130[v437] = 0;
  v176 = v127[41];
  sub_1E65E61D8();
  v547 = v176;
  sub_1E65E4C68();
  v177 = v127[42];
  sub_1E65E61D8();
  sub_1E65D76A8();
  sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530]);
  v546 = v177;
  sub_1E65E4C68();
  v178 = &v130[v127[43]];
  v179 = sub_1E5DFE1E8(v168);
  *v178 = v179;
  v178[1] = v179;
  v438 = v178;
  v180 = v127;
  v181 = &v130[v127[44]];
  v638 = v179;

  v182 = sub_1E5DFE3F8(v168);
  *v181 = v182;
  v181[1] = v182;
  v439 = v181;
  v183 = v180;
  v184 = &v130[v180[45]];
  v651 = v130;
  (*(v635 + 104))(v545, *MEMORY[0x1E699E6F0], v637);
  v637 = v182;

  sub_1E65DF638();
  sub_1E65D77C8();
  sub_1E65DF598();
  v185 = *(v489 + 28);
  v186 = sub_1E65DF608();
  v187 = *(*(v186 - 8) + 16);
  v545 = v184;
  v187(v184 + v185, v184, v186);
  v188 = v183[46];
  sub_1E65E61D8();
  sub_1E65E1518();
  sub_1E65E1458();
  sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860]);
  sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810]);
  v544 = v188;
  sub_1E65E4D38();
  v650 = v183;
  v189 = v183[47];
  sub_1E65E61D8();
  sub_1E65D9798();
  sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8]);
  v543 = v189;
  sub_1E65E4D38();
  v190 = &v130[v183[48]];
  v191 = v168;
  v192 = sub_1E5DF9D44(v168);
  v193 = sub_1E5E06D90(v168);
  v194 = sub_1E5E06FB4(v168);
  v195 = sub_1E5E071AC(v168);
  v196 = sub_1E5E06D90(v191);
  v197 = sub_1E5E073A4(v191);
  v198 = sub_1E5DF9D44(v191);
  v635 = v198;
  v537 = v192;
  *v190 = v192;
  v190[1] = v193;
  v538 = v193;
  v190[2] = v194;
  v190[3] = v195;
  v539 = v196;
  v190[4] = v196;
  v190[5] = v197;
  v540 = v197;
  v190[6] = v198;
  v190[7] = v192;
  v190[8] = v193;
  v190[9] = v194;
  v190[10] = v195;
  v190[11] = v196;
  v190[12] = v197;
  v190[13] = v198;
  v542 = v190;
  v199 = v650;
  v200 = v651;
  v201 = v651 + v650[49];
  v202 = *MEMORY[0x1E699D0E0];
  v203 = sub_1E65DB1C8();
  v204 = *(v203 - 8);
  (*(v204 + 104))(v201, v202, v203);
  v205 = *(v204 + 16);
  v206 = v201 + *(v490 + 28);
  v541 = v201;
  v205(v206, v201, v203);
  v207 = v199[50];
  sub_1E5E01620();

  v540 = v207;
  sub_1E65E4CA8();
  v208 = v199[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  sub_1E60DB408();
  v539 = v208;
  sub_1E65E4CA8();
  v538 = v199[52];
  sub_1E65E4CA8();
  v209 = v199[53];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  sub_1E5E01674();
  v537 = v209;
  sub_1E65E4CA8();
  v210 = v200 + v199[54];
  v211 = sub_1E65E1BA8();
  (*(*(v211 - 8) + 56))(v636, 1, 1, v211);
  sub_1E65E1AB8();
  v212 = *(v491 + 28);
  v213 = sub_1E65E1B08();
  v214 = *(*(v213 - 8) + 16);
  v536 = v210;
  v214(v210 + v212, v210, v213);
  v215 = v200 + v199[55];
  sub_1E65E1B28();
  sub_1E60DE6BC(&qword_1EE2D6490, MEMORY[0x1E699EA00]);
  sub_1E65E4CA8();
  v216 = *(*(&v491 + 1) + 28);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v218 = *(*(v217 - 8) + 16);
  v535 = v215;
  v218(v215 + v216, v215, v217);
  v219 = v199[56];
  sub_1E65E1F68();
  sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160]);
  v534 = v219;
  sub_1E65E4CA8();
  v220 = v200 + v199[57];
  v221 = *MEMORY[0x1E699F368];
  v222 = sub_1E65E2628();
  v223 = *(v222 - 8);
  (*(v223 + 104))(v220, v221, v222);
  v224 = *(v223 + 16);
  v225 = v220 + *(v492 + 28);
  v533 = v220;
  v224(v225, v220, v222);
  v226 = (v200 + v199[58]);
  v227 = sub_1E5E0759C(MEMORY[0x1E69E7CC0]);
  *v226 = v227;
  v226[1] = v227;
  v440 = v226;
  v228 = v199[59];
  v636 = v227;

  sub_1E65E61D8();
  sub_1E65D94D8();
  sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100]);
  v532 = v228;
  sub_1E65E4D38();
  v229 = v200 + v199[60];
  v230 = *MEMORY[0x1E699ED60];
  v231 = sub_1E65E3838();
  v232 = *(v231 - 8);
  (*(v232 + 104))(v229, v230, v231);
  v233 = *(v232 + 16);
  v234 = v229 + *(v493 + 28);
  v531 = v229;
  v233(v234, v229, v231);
  v441 = v199[61];
  *(v200 + v441) = 0;
  v529 = v200 + v199[62];
  *v529 = xmmword_1E65EAE00;
  v235 = (v200 + v199[64]);
  v236 = *(MEMORY[0x1E69DDCE0] + 16);
  *v235 = *MEMORY[0x1E69DDCE0];
  v235[1] = v236;
  v444 = v235;
  v237 = v199[65];
  sub_1E65E3668();
  sub_1E5DF4210();
  sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0]);
  v530 = v237;
  sub_1E65E4D58();
  v238 = v199[66];
  sub_1E65E61D8();
  sub_1E5DF4334();
  v528 = v238;
  sub_1E65E4D38();
  v239 = (v200 + v199[67]);
  v240 = MEMORY[0x1E69E7CD0];
  *v239 = MEMORY[0x1E69E7CD0];
  v239[1] = v240;
  v446 = v239;
  v241 = (v200 + v199[68]);
  *v241 = v240;
  v241[1] = v240;
  v447 = v241;
  v242 = v200 + v199[69];
  sub_1E65DD098();
  v243 = *(v494 + 28);
  v244 = sub_1E65DD0A8();
  v245 = *(*(v244 - 8) + 16);
  v527 = v242;
  v245(v242 + v243, v242, v244);
  v246 = *MEMORY[0x1E699EF98];
  v247 = *(v643 + 104);
  v526 = v199[70];
  v247(v200 + v526, v246, v644);
  v248 = v199[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E98, &qword_1E65F1138);
  sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8);
  v525 = v248;
  sub_1E65E4CA8();
  v249 = *MEMORY[0x1E699EFF0];
  v250 = *(v645 + 104);
  v524 = v199[72];
  v250(v200 + v524, v249, v646);
  v251 = v199[73];
  sub_1E65D92D8();
  sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8]);
  v523 = v251;
  sub_1E65E4CA8();
  v252 = v199[74];
  sub_1E65E61D8();
  sub_1E65D8418();
  sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8]);
  v522 = v252;
  sub_1E65E4D38();
  v253 = v199[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E60DB4BC();
  v521 = v253;
  sub_1E65E4CA8();
  v254 = v199[76];
  v255 = MEMORY[0x1E69E7CC0];
  v519 = sub_1E5E077DC(MEMORY[0x1E69E7CC0]);
  v449 = v254;
  *(v200 + v254) = v519;
  v256 = v199[77];
  sub_1E65E61D8();
  sub_1E65D9658();
  sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0]);
  v520 = v256;
  sub_1E65E4D38();
  v257 = v199[78];
  v518 = sub_1E5E079C8(v255);
  v451 = v257;
  *(v200 + v257) = v518;
  v258 = (v200 + v199[79]);
  v259 = sub_1E5E07BB4(v255);
  *v258 = v259;
  v258[1] = v259;
  v260 = v199[80];
  sub_1E65DADD8();
  sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);

  v517 = v260;
  sub_1E65E4D58();
  v515 = v199[81];
  sub_1E65E4D58();
  v514 = v199[82];
  sub_1E65E4D58();
  v513 = v199[83];
  sub_1E65E4D58();
  v261 = v200 + v199[84];
  sub_1E65DAEB8();
  sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370]);
  v516 = v261;
  sub_1E65E4D58();
  v262 = v642[4];
  __swift_project_boxed_opaque_existential_1(v642, v642[3]);
  sub_1E60CED90();
  v263 = v619;
  sub_1E65E6D98();
  v635 = v259;
  if (!v263)
  {
    v435 = v258;
    LOBYTE(v674) = 0;
    sub_1E60DE6BC(&qword_1ED074FF8, MEMORY[0x1E699CBA8]);
    v266 = v512;
    v267 = v634;
    sub_1E65E6AD8();
    (*(v632 + 40))(v651, v266, v267);
    LOBYTE(v674) = 1;
    sub_1E60DB54C();
    v281 = v511;
    sub_1E65E6AD8();
    v282 = v650;
    sub_1E60DDD00(v281, v631, &qword_1ED0745E0, &qword_1E65F0F90);
    LOBYTE(v674) = 2;
    sub_1E5FED46C(&qword_1ED075008, &qword_1ED072618, qword_1E65FBAF0);
    v283 = v509;
    v284 = v487;
    sub_1E65E6AD8();
    v285 = v651;
    (*(v486 + 32))(v651 + v282[6], v283, v284);
    LOBYTE(v674) = 3;
    sub_1E60DB660();
    v286 = v508;
    v287 = v630;
    sub_1E65E6AD8();
    (*(v628 + 40))(v285 + v627, v286, v287);
    LOBYTE(v674) = 4;
    sub_1E60DB748();
    v288 = v505;
    v289 = v629;
    sub_1E65E6AD8();
    (*(v626 + 40))(v285 + v625, v288, v289);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074640, &qword_1E65F0F98);
    LOBYTE(v662[0]) = 5;
    sub_1E60DB830();
    sub_1E65E6AD8();
    *(v285 + v282[9]) = v674;
    LOBYTE(v674) = 6;
    sub_1E60DB8D0();
    v290 = v504;
    v291 = v624;
    sub_1E65E6AD8();
    (*(v623 + 40))(v285 + v622, v290, v291);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074698, &qword_1E65F0FA0);
    LOBYTE(v662[0]) = 7;
    sub_1E60DB95C();
    sub_1E65E6AD8();

    v292 = v282[11];

    v293 = (v651 + v292);
    v294 = *(&v674 + 1);
    v512 = v674;
    *v293 = v674;
    v293[1] = v294;
    v621 = v294;
    LOBYTE(v674) = 8;
    sub_1E60DB9FC();
    v295 = v503;
    sub_1E65E6AD8();
    v619 = 0;
    (*(v617 + 40))(v651 + v616, v295, v620);
    LOBYTE(v674) = 9;
    sub_1E60DBAE4();
    v296 = v619;
    sub_1E65E6AD8();
    v619 = v296;
    if (v296 || ((*(v615 + 40))(v651 + v614, v502, v618), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074708, &qword_1E65F0FC0), LOBYTE(v662[0]) = 10, sub_1E60DBBE0(), v297 = v619, sub_1E65E6AD8(), (v619 = v297) != 0))
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      v500 = v640;
      v501 = v641;
      v508 = v647;
      v509 = v648;
      v510 = v649;
      v511 = v613;
      v268 = v650;
      goto LABEL_4;
    }

    v298 = v650[14];

    v299 = (v651 + v298);
    v300 = *(&v674 + 1);
    v511 = v674;
    *v299 = v674;
    v299[1] = v300;
    v613 = v300;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074750, &qword_1E65F0FD0);
    LOBYTE(v662[0]) = 11;
    sub_1E60DBC80();
    v301 = v619;
    sub_1E65E6AD8();
    v619 = v301;
    if (v301)
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      v500 = v640;
      v501 = v641;
      v508 = v647;
      v509 = v648;
      v510 = v649;
      goto LABEL_26;
    }

    v302 = v650[15];

    v303 = (v651 + v302);
    v304 = *(&v674 + 1);
    v510 = v674;
    *v303 = v674;
    v303[1] = v304;
    v649 = v304;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0747C8, &qword_1E65F0FE8);
    LOBYTE(v662[0]) = 12;
    sub_1E60DBD20();
    v305 = v619;
    sub_1E65E6AD8();
    v619 = v305;
    if (v305)
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      v500 = v640;
      v501 = v641;
      v508 = v647;
      v509 = v648;
      goto LABEL_26;
    }

    v306 = v650[16];

    v307 = (v651 + v306);
    v308 = *(&v674 + 1);
    v509 = v674;
    *v307 = v674;
    v307[1] = v308;
    v648 = v308;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074810, &qword_1E65F0FF8);
    LOBYTE(v662[0]) = 13;
    sub_1E60DBDC0();
    v309 = v619;
    sub_1E65E6AD8();
    v619 = v309;
    if (v309)
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      v500 = v640;
      v501 = v641;
      v508 = v647;
      goto LABEL_26;
    }

    v310 = v650[17];

    v311 = (v651 + v310);
    v312 = *(&v674 + 1);
    v508 = v674;
    *v311 = v674;
    v311[1] = v312;
    v647 = v312;
    LOBYTE(v674) = 14;
    sub_1E60DBE60();
    v313 = v619;
    sub_1E65E6AD8();
    v619 = v313;
    if (v313)
    {
      goto LABEL_25;
    }

    sub_1E60DDD00(v501, v562, &qword_1ED074858, &qword_1E65F1008);
    LOBYTE(v674) = 15;
    sub_1E60DBF00();
    v314 = v619;
    sub_1E65E6AD8();
    v619 = v314;
    if (v314)
    {
      goto LABEL_25;
    }

    sub_1E60DDD00(v500, v561, &qword_1ED0741C8, &qword_1E65EFB48);
    LOBYTE(v674) = 16;
    sub_1E60DC014();
    v315 = v619;
    sub_1E65E6AD8();
    v619 = v315;
    if (v315)
    {
      goto LABEL_25;
    }

    (*(v563 + 40))(v651 + v560, v442, v564);
    LOBYTE(v674) = 17;
    sub_1E60DC0FC();
    v316 = v619;
    sub_1E65E6AD8();
    v619 = v316;
    if (v316)
    {
      goto LABEL_25;
    }

    (*(v565 + 40))(v651 + v559, v443, v566);
    LOBYTE(v674) = 18;
    sub_1E60DC188(&qword_1ED075088);
    v317 = v619;
    sub_1E65E6AD8();
    v619 = v317;
    if (v317)
    {
      goto LABEL_25;
    }

    (*(v567 + 40))(v651 + v558, v445, v568);
    LOBYTE(v674) = 19;
    sub_1E60DC214();
    v318 = v619;
    sub_1E65E6AD8();
    v619 = v318;
    if (v318 || ((*(v569 + 40))(v651 + v557, v448, v570), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074910, &qword_1E65F1018), LOBYTE(v662[0]) = 20, sub_1E60DC2FC(), v319 = v619, sub_1E65E6AD8(), (v619 = v319) != 0))
    {
LABEL_25:
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      v500 = v640;
      v501 = v641;
      goto LABEL_26;
    }

    v320 = v650[24];

    v321 = (v651 + v320);
    v322 = *(&v674 + 1);
    v501 = v674;
    *v321 = v674;
    v321[1] = v322;
    v641 = v322;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074958, &qword_1E65F1028);
    LOBYTE(v662[0]) = 21;
    sub_1E60DC39C();
    v323 = v619;
    sub_1E65E6AD8();
    v619 = v323;
    if (v323)
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      v500 = v640;
      goto LABEL_26;
    }

    v324 = v650[25];

    v325 = (v651 + v324);
    v326 = *(&v674 + 1);
    v500 = v674;
    *v325 = v674;
    v325[1] = v326;
    v640 = v326;
    LOBYTE(v674) = 22;
    sub_1E60DC43C();
    v327 = v619;
    sub_1E65E6AD8();
    v619 = v327;
    if (v327)
    {
      goto LABEL_37;
    }

    sub_1E60DDD00(v450, v556, &qword_1ED0749A0, &qword_1E65F1038);
    LOBYTE(v674) = 23;
    sub_1E60DC550();
    v328 = v619;
    sub_1E65E6AD8();
    v619 = v328;
    if (v328)
    {
      goto LABEL_37;
    }

    sub_1E60DDD00(v497, v555, &qword_1ED0727F8, &qword_1E65EBDF0);
    LOBYTE(v662[0]) = 24;
    sub_1E5F8BF70();
    v329 = v619;
    sub_1E65E6AD8();
    v619 = v329;
    if (v329)
    {
      goto LABEL_37;
    }

    *(v651 + v650[28]) = v674;
    LOBYTE(v674) = 25;
    sub_1E60DC664(&qword_1ED0750B8);
    v330 = v619;
    sub_1E65E6AD8();
    v619 = v330;
    if (v330)
    {
      goto LABEL_37;
    }

    (*(v571 + 40))(v651 + v554, v498, v572);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749F0, &qword_1E65F1040);
    LOBYTE(v662[0]) = 26;
    sub_1E60DC6F8();
    v331 = v619;
    sub_1E65E6AD8();
    v619 = v331;
    if (v331)
    {
      goto LABEL_37;
    }

    v332 = v650[30];
    v552 = v674;
    *(v651 + v332) = v674;
    LOBYTE(v674) = 27;
    sub_1E60DC7E0();
    v333 = v619;
    sub_1E65E6AD8();
    v619 = v333;
    if (v333)
    {
      goto LABEL_37;
    }

    (*(v573 + 40))(v651 + v553, v499, v574);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A30, &qword_1E65F1048);
    LOBYTE(v662[0]) = 28;
    sub_1E60DC8DC();
    v334 = v619;
    sub_1E65E6AD8();
    v619 = v334;
    if (v334)
    {
      goto LABEL_37;
    }

    v335 = v650[32];
    v550 = v674;
    *(v651 + v335) = v674;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A48, &qword_1E65F1050);
    LOBYTE(v662[0]) = 29;
    sub_1E60DC998();
    v336 = v619;
    sub_1E65E6AD8();
    v619 = v336;
    if (v336)
    {
LABEL_37:
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      v498 = v639;
      goto LABEL_26;
    }

    v337 = v650[33];

    v338 = (v651 + v337);
    v339 = *(&v674 + 1);
    v498 = v674;
    *v338 = v674;
    v338[1] = v339;
    v639 = v339;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AA0, &qword_1E65F1060);
    v664 = 30;
    sub_1E60DCA38();
    v340 = v619;
    sub_1E65E6AD8();
    v619 = v340;
    if (v340)
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      v612 = 0;
      v611 = 0;
      v506 = 0;
      v505 = 0;
      v504 = 0;
      v503 = 0;
      LODWORD(v502) = 2;
      v264 = 1;
      *&v491 = MEMORY[0x1E69E7CD0];
      *(&v491 + 1) = MEMORY[0x1E69E7CD0];
      v492 = v636;
      v493 = MEMORY[0x1E69E7CD0];
      v495 = v637;
      v496 = v638;
      LODWORD(v499) = 2;
      LODWORD(v497) = 2;
      goto LABEL_26;
    }

    v341 = v651 + v650[34];
    v342 = v666;
    v343 = v667;
    v344 = v668;
    v345 = v670;
    v346 = v671;
    v347 = v672;
    v348 = v673;
    v505 = v665;
    *v341 = v665;
    *(v341 + 8) = v342;
    v504 = v342;
    v503 = v343;
    *(v341 + 16) = v343;
    LODWORD(v497) = v344;
    *(v341 + 24) = v344;
    *(v341 + 25) = *v669;
    *(v341 + 28) = *&v669[3];
    v612 = v345;
    *(v341 + 32) = v345;
    *(v341 + 40) = v346;
    v611 = v346;
    v506 = v347;
    *(v341 + 48) = v347;
    LODWORD(v499) = v348;
    *(v341 + 56) = v348;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AC8, &qword_1E65F1068);
    LOBYTE(v662[0]) = 31;
    sub_1E5FED46C(&qword_1ED075100, &qword_1ED074AC8, &qword_1E65F1068);
    v349 = v619;
    sub_1E65E6AD8();
    v619 = v349;
    if (v349)
    {
      (*(v485 + 8))(v633, v488);
      v265 = 0;
      v507 = 0;
      LODWORD(v502) = 2;
    }

    else
    {
      v350 = v651 + v650[35];
      v351 = BYTE8(v674);
      v507 = v674;
      *v350 = v674;
      LODWORD(v502) = v351;
      *(v350 + 8) = v351;
      LOBYTE(v674) = 32;
      sub_1E60DCAD8();
      v352 = v619;
      sub_1E65E6AD8();
      v619 = v352;
      if (!v352)
      {
        sub_1E60DDD00(v452, v551, &qword_1ED072800, &qword_1E65EBDF8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AF0, &qword_1E65F1070);
        LOBYTE(v662[0]) = 33;
        sub_1E60DCBEC();
        v353 = v619;
        sub_1E65E6AD8();
        v619 = v353;
        if (!v353)
        {

          v354 = v650[37];
          v548 = v674;
          *(v651 + v354) = v674;
          LOBYTE(v674) = 34;
          sub_1E60DCD90(&qword_1ED075138);
          v355 = v619;
          sub_1E65E6AD8();
          v619 = v355;
          if (!v355)
          {
            v356 = v575[5];
            v356(v651 + v549, v453, v576);
            LOBYTE(v674) = 35;
            v357 = v619;
            v358 = sub_1E65E6AB8();
            v619 = v357;
            if (!v357)
            {
              *(v651 + v436) = v358 & 1;
              LOBYTE(v674) = 36;
              v359 = v619;
              v360 = sub_1E65E6AB8();
              v619 = v359;
              if (!v359)
              {
                *(v651 + v437) = v360 & 1;
                LOBYTE(v674) = 37;
                v361 = v619;
                sub_1E65E6AD8();
                v619 = v361;
                if (!v361)
                {
                  v356(v651 + v547, v454, v576);
                  LOBYTE(v674) = 38;
                  sub_1E60DCE00();
                  v362 = v619;
                  sub_1E65E6AD8();
                  v619 = v362;
                  if (!v362)
                  {
                    (*(v577 + 40))(v651 + v546, v495, v578);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B50, &qword_1E65F1090);
                    LOBYTE(v662[0]) = 39;
                    sub_1E60DCEE8();
                    v363 = v619;
                    sub_1E65E6AD8();
                    v619 = v363;
                    if (!v363)
                    {
                      swift_bridgeObjectRelease_n();
                      v364 = *(&v674 + 1);
                      v496 = v674;
                      v365 = v438;
                      *v438 = v674;
                      v365[1] = v364;
                      v638 = v364;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BA8, &qword_1E65F10A0);
                      LOBYTE(v662[0]) = 40;
                      sub_1E60D2454(&qword_1ED075150);
                      v366 = v619;
                      sub_1E65E6AD8();
                      v619 = v366;
                      if (v366)
                      {
                        (*(v485 + 8))(v633, v488);
                        v265 = 0;
                        v264 = 1;
                        *&v491 = MEMORY[0x1E69E7CD0];
                        *(&v491 + 1) = MEMORY[0x1E69E7CD0];
                        v492 = v636;
                        v493 = MEMORY[0x1E69E7CD0];
                        v495 = v637;
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                        v367 = *(&v674 + 1);
                        v495 = v674;
                        v368 = v439;
                        *v439 = v674;
                        v368[1] = v367;
                        v637 = v367;
                        LOBYTE(v674) = 41;
                        sub_1E60DCF88();
                        v369 = v619;
                        sub_1E65E6AD8();
                        v619 = v369;
                        if (v369)
                        {
                          goto LABEL_68;
                        }

                        sub_1E60DDD00(v455, v545, &qword_1ED074BD8, &qword_1E65F10B0);
                        LOBYTE(v674) = 42;
                        sub_1E60D2764(&qword_1ED075160);
                        v370 = v619;
                        sub_1E65E6AD8();
                        v619 = v370;
                        if (v370)
                        {
                          goto LABEL_68;
                        }

                        (*(v579 + 40))(&v544[v651], v456, v580);
                        LOBYTE(v674) = 43;
                        sub_1E60DD09C();
                        v371 = v619;
                        sub_1E65E6AD8();
                        v619 = v371;
                        if (v371)
                        {
                          goto LABEL_68;
                        }

                        (*(v581 + 40))(&v543[v651], v457, v582);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C48, &qword_1E65F10C8);
                        v663 = 44;
                        sub_1E60DD198();
                        v372 = v619;
                        sub_1E65E6AD8();
                        v619 = v372;
                        if (v372)
                        {
                          goto LABEL_68;
                        }

                        v659 = v678;
                        v660 = v679;
                        v661 = v680;
                        v655 = v674;
                        v656 = v675;
                        v658 = v677;
                        v657 = v676;
                        v373 = v542;
                        v374 = *v542;
                        v662[1] = *(v542 + 1);
                        v662[0] = v374;
                        v375 = *(v542 + 2);
                        v376 = *(v542 + 3);
                        v377 = *(v542 + 5);
                        v662[6] = *(v542 + 6);
                        v378 = *(v542 + 4);
                        v662[5] = v377;
                        v662[4] = v378;
                        v662[2] = v375;
                        v662[3] = v376;
                        sub_1E5DFE50C(v662, &qword_1ED074C48, &qword_1E65F10C8);
                        v379 = v660;
                        *(v373 + 4) = v659;
                        *(v373 + 5) = v379;
                        *(v373 + 6) = v661;
                        v380 = v656;
                        *v373 = v655;
                        *(v373 + 1) = v380;
                        v381 = v658;
                        *(v373 + 2) = v657;
                        *(v373 + 3) = v381;
                        LOBYTE(v652) = 45;
                        sub_1E60DD238();
                        v382 = v619;
                        sub_1E65E6AD8();
                        v619 = v382;
                        if (v382)
                        {
                          goto LABEL_68;
                        }

                        sub_1E60DDD00(v458, v541, &qword_1ED074C70, &qword_1E65F10D0);
                        LOBYTE(v652) = 46;
                        sub_1E60DD34C();
                        v383 = v619;
                        sub_1E65E6AD8();
                        v619 = v383;
                        if (v383)
                        {
                          goto LABEL_68;
                        }

                        (*(v583 + 40))(v651 + v540, v459, v584);
                        LOBYTE(v652) = 47;
                        sub_1E60DD3D8();
                        v384 = v619;
                        sub_1E65E6AD8();
                        v619 = v384;
                        if (v384)
                        {
                          goto LABEL_68;
                        }

                        v385 = v585[5];
                        v385(v651 + v539, v460, v586);
                        LOBYTE(v652) = 48;
                        v386 = v619;
                        sub_1E65E6AD8();
                        v619 = v386;
                        if (v386)
                        {
                          goto LABEL_68;
                        }

                        v385(v651 + v538, v461, v586);
                        LOBYTE(v652) = 49;
                        sub_1E60DD464();
                        v387 = v619;
                        sub_1E65E6AD8();
                        v619 = v387;
                        if (v387)
                        {
                          goto LABEL_68;
                        }

                        (*(v587 + 40))(v651 + v537, v462, v588);
                        LOBYTE(v652) = 50;
                        sub_1E60DD4F0();
                        v388 = v619;
                        sub_1E65E6AD8();
                        v619 = v388;
                        if (v388)
                        {
                          goto LABEL_68;
                        }

                        sub_1E60DDD00(v463, v536, &qword_1ED074CF0, &qword_1E65F10D8);
                        LOBYTE(v652) = 51;
                        sub_1E60DD604(&qword_1ED0751A0);
                        v389 = v619;
                        sub_1E65E6AD8();
                        v619 = v389;
                        if (v389)
                        {
                          goto LABEL_68;
                        }

                        sub_1E60DDD00(v464, v535, &qword_1ED073560, &qword_1E65ED560);
                        LOBYTE(v652) = 52;
                        sub_1E60DD6BC();
                        v390 = v619;
                        sub_1E65E6AD8();
                        v619 = v390;
                        if (v390)
                        {
                          goto LABEL_68;
                        }

                        (*(v589 + 40))(v651 + v534, v465, v590);
                        LOBYTE(v652) = 53;
                        sub_1E60DD7A4();
                        v391 = v619;
                        sub_1E65E6AD8();
                        v619 = v391;
                        if (v391 || (sub_1E60DDD00(v466, v533, &qword_1ED0745B0, &qword_1E65F0F38), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D68, &qword_1E65F10E8), v654 = 54, sub_1E60DD8B8(), v392 = v619, sub_1E65E6AD8(), (v619 = v392) != 0))
                        {
LABEL_68:
                          (*(v485 + 8))(v633, v488);
                          v265 = 0;
                          v264 = 1;
                          *&v491 = MEMORY[0x1E69E7CD0];
                          *(&v491 + 1) = MEMORY[0x1E69E7CD0];
                          v492 = v636;
                          v493 = MEMORY[0x1E69E7CD0];
                        }

                        else
                        {
                          swift_bridgeObjectRelease_n();
                          v393 = *(&v652 + 1);
                          v492 = v652;
                          v394 = v440;
                          *v440 = v652;
                          v394[1] = v393;
                          v636 = v393;
                          LOBYTE(v652) = 55;
                          sub_1E60DD958();
                          v395 = v619;
                          sub_1E65E6AD8();
                          v619 = v395;
                          if (v395)
                          {
                            goto LABEL_74;
                          }

                          (*(v591 + 40))(v651 + v532, v467, v592);
                          LOBYTE(v652) = 56;
                          sub_1E60DDA54();
                          v396 = v619;
                          sub_1E65E6AD8();
                          v619 = v396;
                          if (v396)
                          {
                            goto LABEL_74;
                          }

                          sub_1E60DDD00(v468, v531, &qword_1ED074DD0, &qword_1E65F1100);
                          LOBYTE(v652) = 57;
                          v397 = v619;
                          v398 = sub_1E65E6AB8();
                          v619 = v397;
                          if (v397)
                          {
                            goto LABEL_74;
                          }

                          *(v651 + v441) = v398 & 1;
                          v654 = 58;
                          sub_1E5DF6CE4();
                          v399 = v619;
                          sub_1E65E6A98();
                          v619 = v399;
                          if (v399)
                          {
                            goto LABEL_74;
                          }

                          v400 = v652;
                          v401 = v529;
                          sub_1E5E07DA0(*v529, *(v529 + 8));
                          *v401 = v400;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078610, &qword_1E65F1108);
                          v654 = 59;
                          sub_1E60DDB68();
                          v402 = v619;
                          sub_1E65E6AD8();
                          v619 = v402;
                          if (v402)
                          {
LABEL_74:
                            (*(v485 + 8))(v633, v488);
                            v265 = 0;
                            v403 = MEMORY[0x1E69E7CD0];
                            v264 = 1;
                          }

                          else
                          {
                            *(v651 + v650[63]) = v652;
                            type metadata accessor for UIEdgeInsets(0);
                            v654 = 60;
                            sub_1E60DE6BC(&qword_1ED0751D8, type metadata accessor for UIEdgeInsets);
                            v404 = v619;
                            sub_1E65E6AD8();
                            v619 = v404;
                            if (!v404)
                            {
                              v405 = v653;
                              v406 = v444;
                              *v444 = v652;
                              v406[1] = v405;
                              LOBYTE(v652) = 61;
                              sub_1E60D3BB0(&qword_1ED0751E0);
                              v407 = v619;
                              sub_1E65E6AD8();
                              v619 = v407;
                              if (!v407)
                              {
                                (*(v593 + 40))(v651 + v530, v469, v594);
                                LOBYTE(v652) = 62;
                                sub_1E60D3D48(&qword_1ED0751E8);
                                v408 = v619;
                                sub_1E65E6AD8();
                                v619 = v408;
                                if (!v408)
                                {
                                  (*(v595 + 40))(v651 + v528, v470, v596);
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E48, &qword_1E65F1120);
                                  v654 = 63;
                                  sub_1E60D3E7C(&qword_1ED0751F0);
                                  v409 = v619;
                                  sub_1E65E6AD8();
                                  v619 = v409;
                                  if (!v409)
                                  {
                                    v410 = *(&v652 + 1);
                                    v491 = v652;
                                    v411 = v446;
                                    *v446 = v652;
                                    v411[1] = v410;
                                    v654 = 64;
                                    v412 = v619;
                                    sub_1E65E6AD8();
                                    v619 = v412;
                                    if (v412)
                                    {
                                      (*(v485 + 8))(v633, v488);
                                      v264 = 1;
                                      v265 = 1;
                                      v493 = MEMORY[0x1E69E7CD0];
                                    }

                                    else
                                    {
                                      v413 = *(&v652 + 1);
                                      v493 = v652;
                                      v414 = v447;
                                      *v447 = v652;
                                      v414[1] = v413;
                                      LOBYTE(v652) = 65;
                                      sub_1E60DDBEC();
                                      v415 = v619;
                                      sub_1E65E6AD8();
                                      v619 = v415;
                                      if (!v415)
                                      {
                                        sub_1E60DDD00(v471, v527, &qword_1ED074E58, &qword_1E65F1128);
                                        LOBYTE(v652) = 66;
                                        sub_1E60DE6BC(&qword_1ED075200, MEMORY[0x1E699EFA0]);
                                        v416 = v619;
                                        sub_1E65E6AD8();
                                        v619 = v416;
                                        if (!v416)
                                        {
                                          (*(v643 + 40))(v651 + v526, v472, v644);
                                          LOBYTE(v652) = 67;
                                          sub_1E60DDD68(&qword_1ED075208);
                                          v417 = v619;
                                          sub_1E65E6AD8();
                                          v619 = v417;
                                          if (!v417)
                                          {
                                            (*(v597 + 40))(v651 + v525, v473, v598);
                                            LOBYTE(v652) = 68;
                                            sub_1E60DE6BC(&qword_1ED075210, MEMORY[0x1E699EFF8]);
                                            v418 = v619;
                                            sub_1E65E6AD8();
                                            v619 = v418;
                                            if (!v418)
                                            {
                                              (*(v645 + 40))(v651 + v524, v474, v646);
                                              LOBYTE(v652) = 69;
                                              sub_1E60DDE50();
                                              v419 = v619;
                                              sub_1E65E6AD8();
                                              v619 = v419;
                                              if (!v419)
                                              {
                                                (*(v599 + 40))(v651 + v523, v475, v600);
                                                LOBYTE(v652) = 70;
                                                sub_1E60DDF38();
                                                v420 = v619;
                                                sub_1E65E6AD8();
                                                v619 = v420;
                                                if (!v420)
                                                {
                                                  (*(v601 + 40))(v651 + v522, v476, v602);
                                                  LOBYTE(v652) = 71;
                                                  sub_1E60DE034();
                                                  v421 = v619;
                                                  sub_1E65E6AD8();
                                                  v619 = v421;
                                                  if (!v421)
                                                  {
                                                    (*(v603 + 40))(v651 + v521, v477, v604);
                                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F28, &qword_1E65F1158);
                                                    v654 = 72;
                                                    sub_1E60DE0C0();
                                                    v422 = v619;
                                                    sub_1E65E6AD8();
                                                    v619 = v422;
                                                    if (!v422)
                                                    {

                                                      v519 = v652;
                                                      *(v651 + v449) = v652;
                                                      LOBYTE(v652) = 73;
                                                      sub_1E60DE17C();
                                                      v423 = v619;
                                                      sub_1E65E6AD8();
                                                      v619 = v423;
                                                      if (!v423)
                                                      {
                                                        (*(v605 + 40))(v651 + v520, v478, v606);
                                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F58, &qword_1E65F1160);
                                                        v654 = 74;
                                                        sub_1E60DE278();
                                                        v424 = v619;
                                                        sub_1E65E6AD8();
                                                        v619 = v424;
                                                        if (!v424)
                                                        {

                                                          v518 = v652;
                                                          *(v651 + v451) = v652;
                                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F70, &qword_1E65F1168);
                                                          v654 = 75;
                                                          sub_1E60DE334();
                                                          v425 = v619;
                                                          sub_1E65E6AD8();
                                                          v619 = v425;
                                                          if (!v425)
                                                          {
                                                            swift_bridgeObjectRelease_n();
                                                            v426 = *(&v652 + 1);
                                                            v427 = v435;
                                                            *v435 = v652;
                                                            v427[1] = v426;
                                                            v635 = v426;
                                                            LOBYTE(v652) = 76;
                                                            sub_1E60DE3D4();
                                                            v428 = v619;
                                                            sub_1E65E6AD8();
                                                            v619 = v428;
                                                            if (!v428)
                                                            {
                                                              v429 = v607[5];
                                                              v429(v651 + v517, v479, v608);
                                                              LOBYTE(v652) = 77;
                                                              v430 = v619;
                                                              sub_1E65E6AD8();
                                                              v619 = v430;
                                                              if (!v430)
                                                              {
                                                                v429(v651 + v515, v480, v608);
                                                                LOBYTE(v652) = 78;
                                                                v431 = v619;
                                                                sub_1E65E6AD8();
                                                                v619 = v431;
                                                                if (!v431)
                                                                {
                                                                  v429(v651 + v514, v481, v608);
                                                                  LOBYTE(v652) = 79;
                                                                  v432 = v619;
                                                                  sub_1E65E6AD8();
                                                                  v619 = v432;
                                                                  if (!v432)
                                                                  {
                                                                    v429(v651 + v513, v482, v608);
                                                                    LOBYTE(v652) = 80;
                                                                    sub_1E60DE4D0();
                                                                    v433 = v619;
                                                                    sub_1E65E6AD8();
                                                                    v619 = v433;
                                                                    if (!v433)
                                                                    {
                                                                      (*(v485 + 8))(v633, v488);
                                                                      (*(v609 + 40))(v516, v483, v610);
                                                                      v434 = v651;
                                                                      sub_1E5E05C28(v651, v484, type metadata accessor for AppState);
                                                                      __swift_destroy_boxed_opaque_existential_1(v642);
                                                                      return sub_1E60DE5CC(v434);
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
                                          }
                                        }
                                      }

                                      (*(v485 + 8))(v633, v488);
                                      v264 = 1;
                                      v265 = 1;
                                    }

                                    goto LABEL_26;
                                  }
                                }
                              }
                            }

                            (*(v485 + 8))(v633, v488);
                            v403 = MEMORY[0x1E69E7CD0];
                            v264 = 1;
                            v265 = 1;
                          }

                          v493 = v403;
                          *&v491 = v403;
                          *(&v491 + 1) = v403;
                        }
                      }

LABEL_26:
                      v268 = v650;
                      goto LABEL_4;
                    }
                  }
                }
              }
            }
          }
        }
      }

      (*(v485 + 8))(v633, v488);
      v265 = 0;
    }

    v264 = 1;
    *&v491 = MEMORY[0x1E69E7CD0];
    *(&v491 + 1) = MEMORY[0x1E69E7CD0];
    v492 = v636;
    v493 = MEMORY[0x1E69E7CD0];
    v495 = v637;
    v496 = v638;
    goto LABEL_26;
  }

  v619 = v263;
  v264 = 0;
  v265 = 0;
  v507 = 0;
  v612 = 0;
  v611 = 0;
  v506 = 0;
  v505 = 0;
  v504 = 0;
  v503 = 0;
  LODWORD(v502) = 2;
  *&v491 = MEMORY[0x1E69E7CD0];
  *(&v491 + 1) = MEMORY[0x1E69E7CD0];
  v492 = v636;
  v493 = MEMORY[0x1E69E7CD0];
  v495 = v637;
  v496 = v638;
  LODWORD(v499) = 2;
  LODWORD(v497) = 2;
  v498 = v639;
  v500 = v640;
  v501 = v641;
  v508 = v647;
  v509 = v648;
  v510 = v649;
  v511 = v613;
  v512 = v621;
  v268 = v650;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v642);
  v269 = v651;
  (*(v632 + 8))(v651, v634);
  sub_1E5DFE50C(v631, &qword_1ED0745E0, &qword_1E65F0F90);
  if (v264)
  {
    (*(v486 + 8))(v269 + v268[6], v487);
  }

  (*(v628 + 8))(v269 + v627, v630);
  (*(v626 + 8))(v269 + v625, v629);
  (*(v623 + 8))(v269 + v622, v624);

  (*(v617 + 8))(v269 + v616, v620);
  (*(v615 + 8))(v269 + v614, v618);

  sub_1E5DFE50C(v562, &qword_1ED074858, &qword_1E65F1008);
  sub_1E5DFE50C(v561, &qword_1ED0741C8, &qword_1E65EFB48);
  (*(v563 + 8))(v269 + v560, v564);
  (*(v565 + 8))(v269 + v559, v566);
  (*(v567 + 8))(v269 + v558, v568);
  (*(v569 + 8))(v269 + v557, v570);

  sub_1E5DFE50C(v556, &qword_1ED0749A0, &qword_1E65F1038);
  sub_1E5DFE50C(v555, &qword_1ED0727F8, &qword_1E65EBDF0);
  (*(v571 + 8))(v269 + v554, v572);

  (*(v573 + 8))(v269 + v553, v574);

  sub_1E5FED324(v505, v504, v503, v497);
  sub_1E5FED324(v612, v611, v506, v499);
  sub_1E60DB538(v507, v502);
  sub_1E5DFE50C(v551, &qword_1ED072800, &qword_1E65EBDF8);

  v270 = v575[1];
  v271 = v576;
  v270(v269 + v549, v576);
  v270(v269 + v547, v271);
  (*(v577 + 8))(v269 + v546, v578);

  sub_1E5DFE50C(v545, &qword_1ED074BD8, &qword_1E65F10B0);
  (*(v579 + 8))(&v544[v269], v580);
  (*(v581 + 8))(&v543[v269], v582);
  v272 = *(v542 + 5);
  v678 = *(v542 + 4);
  v679 = v272;
  v680 = *(v542 + 6);
  v273 = *(v542 + 1);
  v674 = *v542;
  v675 = v273;
  v274 = *(v542 + 3);
  v676 = *(v542 + 2);
  v677 = v274;
  sub_1E5DFE50C(&v674, &qword_1ED074C48, &qword_1E65F10C8);
  sub_1E5DFE50C(v541, &qword_1ED074C70, &qword_1E65F10D0);
  (*(v583 + 8))(v269 + v540, v584);
  v275 = v585[1];
  v276 = v586;
  v275(v269 + v539, v586);
  v275(v269 + v538, v276);
  (*(v587 + 8))(v269 + v537, v588);
  sub_1E5DFE50C(v536, &qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E5DFE50C(v535, &qword_1ED073560, &qword_1E65ED560);
  (*(v589 + 8))(v269 + v534, v590);
  sub_1E5DFE50C(v533, &qword_1ED0745B0, &qword_1E65F0F38);

  (*(v591 + 8))(v269 + v532, v592);
  sub_1E5DFE50C(v531, &qword_1ED074DD0, &qword_1E65F1100);
  sub_1E5E07DA0(*v529, *(v529 + 8));
  if (v265)
  {
    v277 = *(v269 + v268[63]);
  }

  (*(v593 + 8))(v269 + v530, v594);
  (*(v595 + 8))(v269 + v528, v596);

  sub_1E5DFE50C(v527, &qword_1ED074E58, &qword_1E65F1128);
  (*(v643 + 8))(v269 + v526, v644);
  (*(v597 + 8))(v269 + v525, v598);
  (*(v645 + 8))(v269 + v524, v646);
  (*(v599 + 8))(v269 + v523, v600);
  (*(v601 + 8))(v269 + v522, v602);
  (*(v603 + 8))(v269 + v521, v604);

  (*(v605 + 8))(v269 + v520, v606);

  v278 = v607[1];
  v279 = v608;
  v278(v269 + v517, v608);
  v278(v269 + v515, v279);
  v278(v269 + v514, v279);
  v278(v269 + v513, v279);
  return (*(v609 + 8))(v516, v610);
}

BOOL sub_1E60DAE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBB88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074870, &qword_1E65F1010);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075288, &unk_1E65F1320);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v42 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v21 = *(v18 + 48);
  v43 = a1;
  sub_1E5DFD1CC(a1, &v39 - v19, &qword_1ED074870, &qword_1E65F1010);
  v44 = a2;
  sub_1E5DFD1CC(a2, &v20[v21], &qword_1ED074870, &qword_1E65F1010);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_1E5DFD1CC(v20, v13, &qword_1ED074870, &qword_1E65F1010);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      v24 = *(v5 + 32);
      v25 = &v20[v21];
      v26 = v5;
      v27 = v41;
      v24(v41, v25, v4);
      sub_1E60DE6BC(&qword_1ED074898, MEMORY[0x1E699D1F0]);
      v28 = sub_1E65E5B98();
      v39 = v26;
      v29 = *(v26 + 8);
      v29(v27, v4);
      v29(v13, v4);
      sub_1E5DFE50C(v20, &qword_1ED074870, &qword_1E65F1010);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v13, v4);
LABEL_6:
    v23 = v20;
LABEL_14:
    sub_1E5DFE50C(v23, &qword_1ED075288, &unk_1E65F1320);
    return 0;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v39 = v5;
  sub_1E5DFE50C(v20, &qword_1ED074870, &qword_1E65F1010);
LABEL_8:
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008) + 28);
  v31 = *(v14 + 48);
  v32 = v42;
  sub_1E5DFD1CC(v43 + v30, v42, &qword_1ED074870, &qword_1E65F1010);
  sub_1E5DFD1CC(v44 + v30, v32 + v31, &qword_1ED074870, &qword_1E65F1010);
  if (v22(v32, 1, v4) == 1)
  {
    if (v22((v32 + v31), 1, v4) == 1)
    {
      sub_1E5DFE50C(v32, &qword_1ED074870, &qword_1E65F1010);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v40;
  sub_1E5DFD1CC(v32, v40, &qword_1ED074870, &qword_1E65F1010);
  if (v22((v32 + v31), 1, v4) == 1)
  {
    (*(v39 + 8))(v33, v4);
LABEL_13:
    v23 = v32;
    goto LABEL_14;
  }

  v35 = v39;
  v36 = v41;
  (*(v39 + 32))(v41, v32 + v31, v4);
  sub_1E60DE6BC(&qword_1ED074898, MEMORY[0x1E699D1F0]);
  v37 = sub_1E65E5B98();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v33, v4);
  sub_1E5DFE50C(v32, &qword_1ED074870, &qword_1E65F1010);
  return (v37 & 1) != 0;
}

unint64_t sub_1E60DB408()
{
  result = qword_1EE2D4878;
  if (!qword_1EE2D4878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CB0, &unk_1E660F800);
    sub_1E60DE6BC(&qword_1EE2D7020, MEMORY[0x1E69CC888]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4878);
  }

  return result;
}

unint64_t sub_1E60DB4BC()
{
  result = qword_1EE2D4830;
  if (!qword_1EE2D4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4830);
  }

  return result;
}

uint64_t sub_1E60DB538(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_1E60DB54C()
{
  result = qword_1ED075000;
  if (!qword_1ED075000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745E0, &qword_1E65F0F90);
    v1 = MEMORY[0x1E699CE20];
    sub_1E60DE6BC(&qword_1ED0745F0, MEMORY[0x1E699CE20]);
    sub_1E60DE6BC(&qword_1ED0745F8, v1);
    sub_1E60DE6BC(&qword_1ED074600, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075000);
  }

  return result;
}

unint64_t sub_1E60DB660()
{
  result = qword_1ED075010;
  if (!qword_1ED075010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F88, &unk_1E65EA400);
    v1 = MEMORY[0x1E6969770];
    sub_1E60DE6BC(&qword_1ED074618, MEMORY[0x1E6969770]);
    sub_1E60DE6BC(&qword_1ED074620, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075010);
  }

  return result;
}

unint64_t sub_1E60DB748()
{
  result = qword_1ED075018;
  if (!qword_1ED075018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072960, &qword_1E65EC0F8);
    v1 = MEMORY[0x1E69CB0E0];
    sub_1E60DE6BC(&qword_1ED074630, MEMORY[0x1E69CB0E0]);
    sub_1E60DE6BC(&qword_1ED074638, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075018);
  }

  return result;
}

unint64_t sub_1E60DB830()
{
  result = qword_1ED075020;
  if (!qword_1ED075020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074640, &qword_1E65F0F98);
    sub_1E60CF168();
    sub_1E60CF1BC();
    sub_1E60CF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075020);
  }

  return result;
}

unint64_t sub_1E60DB8D0()
{
  result = qword_1ED075028;
  if (!qword_1ED075028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072918, &qword_1E65EC038);
    sub_1E60CF2F0();
    sub_1E60CF3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075028);
  }

  return result;
}

unint64_t sub_1E60DB95C()
{
  result = qword_1ED075030;
  if (!qword_1ED075030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074698, &qword_1E65F0FA0);
    sub_1E60CF540();
    sub_1E60CF5CC();
    sub_1E60CF658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075030);
  }

  return result;
}

unint64_t sub_1E60DB9FC()
{
  result = qword_1ED075038;
  if (!qword_1ED075038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746C8, &qword_1E65F0FB0);
    v1 = MEMORY[0x1E699E8D8];
    sub_1E60DE6BC(&qword_1ED0746D8, MEMORY[0x1E699E8D8]);
    sub_1E60DE6BC(&qword_1ED0746E0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075038);
  }

  return result;
}

unint64_t sub_1E60DBAE4()
{
  result = qword_1ED075040;
  if (!qword_1ED075040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746E8, &qword_1E65F0FB8);
    v1 = MEMORY[0x1E699D1D0];
    sub_1E60DE6BC(&qword_1ED0746F8, MEMORY[0x1E699D1D0]);
    sub_1E60DE6BC(&qword_1ED074700, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075040);
  }

  return result;
}

unint64_t sub_1E60DBBE0()
{
  result = qword_1ED075048;
  if (!qword_1ED075048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074708, &qword_1E65F0FC0);
    sub_1E60CF960();
    sub_1E60CFA1C();
    sub_1E60CFAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075048);
  }

  return result;
}

unint64_t sub_1E60DBC80()
{
  result = qword_1ED075050;
  if (!qword_1ED075050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074750, &qword_1E65F0FD0);
    sub_1E60CFC2C();
    sub_1E60CFDA4();
    sub_1E60CFF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075050);
  }

  return result;
}

unint64_t sub_1E60DBD20()
{
  result = qword_1ED075058;
  if (!qword_1ED075058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747C8, &qword_1E65F0FE8);
    sub_1E60D00F4();
    sub_1E60D01B0();
    sub_1E60D026C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075058);
  }

  return result;
}

unint64_t sub_1E60DBDC0()
{
  result = qword_1ED075060;
  if (!qword_1ED075060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074810, &qword_1E65F0FF8);
    sub_1E60D03C0();
    sub_1E60D04A0();
    sub_1E60D0580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075060);
  }

  return result;
}

unint64_t sub_1E60DBE60()
{
  result = qword_1ED075068;
  if (!qword_1ED075068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074858, &qword_1E65F1008);
    sub_1E60D06F8();
    sub_1E60D07AC();
    sub_1E60D0860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075068);
  }

  return result;
}

unint64_t sub_1E60DBF00()
{
  result = qword_1ED075070;
  if (!qword_1ED075070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741C8, &qword_1E65EFB48);
    v1 = MEMORY[0x1E699D2B0];
    sub_1E60DE6BC(&qword_1ED0748A8, MEMORY[0x1E699D2B0]);
    sub_1E60DE6BC(&qword_1ED0748B0, v1);
    sub_1E60DE6BC(&qword_1EE2D6BC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075070);
  }

  return result;
}

unint64_t sub_1E60DC014()
{
  result = qword_1ED075078;
  if (!qword_1ED075078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072E80, &qword_1E65ECC58);
    v1 = MEMORY[0x1E69CC658];
    sub_1E60DE6BC(&qword_1ED0748C0, MEMORY[0x1E69CC658]);
    sub_1E60DE6BC(&qword_1ED0748C8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075078);
  }

  return result;
}

unint64_t sub_1E60DC0FC()
{
  result = qword_1ED075080;
  if (!qword_1ED075080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F68, &qword_1E65EA398);
    sub_1E60D0B9C();
    sub_1E60D0C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075080);
  }

  return result;
}

uint64_t sub_1E60DC188(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072AC8, &qword_1E65EC488);
    sub_1E5E1CC5C();
    sub_1E5E1CCB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DC214()
{
  result = qword_1ED075090;
  if (!qword_1ED075090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071E68, &qword_1E65EA160);
    sub_1E60DE6BC(&qword_1ED074900, type metadata accessor for BrowsingIdentity);
    sub_1E60DE6BC(&qword_1ED074908, type metadata accessor for BrowsingIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075090);
  }

  return result;
}

unint64_t sub_1E60DC2FC()
{
  result = qword_1ED075098;
  if (!qword_1ED075098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074910, &qword_1E65F1018);
    sub_1E60D0E1C();
    sub_1E60D0ED8();
    sub_1E60D0F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075098);
  }

  return result;
}

unint64_t sub_1E60DC39C()
{
  result = qword_1ED0750A0;
  if (!qword_1ED0750A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074958, &qword_1E65F1028);
    sub_1E60D10E8();
    sub_1E60D11A0();
    sub_1E60D1258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750A0);
  }

  return result;
}

unint64_t sub_1E60DC43C()
{
  result = qword_1ED0750A8;
  if (!qword_1ED0750A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749A0, &qword_1E65F1038);
    v1 = MEMORY[0x1E699D6B8];
    sub_1E60DE6BC(&qword_1ED0749B0, MEMORY[0x1E699D6B8]);
    sub_1E60DE6BC(&qword_1ED0749B8, v1);
    sub_1E60DE6BC(&qword_1EE2D65B8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750A8);
  }

  return result;
}

unint64_t sub_1E60DC550()
{
  result = qword_1ED0750B0;
  if (!qword_1ED0750B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    v1 = MEMORY[0x1E699F288];
    sub_1E60DE6BC(&qword_1ED0749C8, MEMORY[0x1E699F288]);
    sub_1E60DE6BC(&qword_1ED0749D0, v1);
    sub_1E60DE6BC(&qword_1EE2D6248, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750B0);
  }

  return result;
}

uint64_t sub_1E60DC664(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072AD8, &unk_1E65F84F0);
    sub_1E5E1CC5C();
    sub_1E5E1CCB8();
    sub_1E60D1530();
    sub_1E60D1584();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DC6F8()
{
  result = qword_1ED0750C0;
  if (!qword_1ED0750C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749F0, &qword_1E65F1040);
    sub_1E5FED46C(&qword_1ED0750C8, &qword_1ED074A08, &qword_1E65F3920);
    sub_1E60DE6BC(&qword_1ED0750D0, MEMORY[0x1E699CFC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750C0);
  }

  return result;
}

unint64_t sub_1E60DC7E0()
{
  result = qword_1ED0750D8;
  if (!qword_1ED0750D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741F0, &unk_1E65EFC10);
    v1 = MEMORY[0x1E69CD000];
    sub_1E60DE6BC(&qword_1ED074A20, MEMORY[0x1E69CD000]);
    sub_1E60DE6BC(&qword_1ED074A28, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750D8);
  }

  return result;
}

unint64_t sub_1E60DC8DC()
{
  result = qword_1ED0750E0;
  if (!qword_1ED0750E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A30, &qword_1E65F1048);
    sub_1E60DE6BC(&qword_1ED0750E8, MEMORY[0x1E699EB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750E0);
  }

  return result;
}

unint64_t sub_1E60DC998()
{
  result = qword_1ED0750F0;
  if (!qword_1ED0750F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A48, &qword_1E65F1050);
    sub_1E60D1918();
    sub_1E60D1A04();
    sub_1E60D1AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750F0);
  }

  return result;
}

unint64_t sub_1E60DCA38()
{
  result = qword_1ED0750F8;
  if (!qword_1ED0750F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AA0, &qword_1E65F1060);
    sub_1E60D1C44();
    sub_1E60D1C98();
    sub_1E60D1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750F8);
  }

  return result;
}

unint64_t sub_1E60DCAD8()
{
  result = qword_1ED075108;
  if (!qword_1ED075108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072800, &qword_1E65EBDF8);
    v1 = MEMORY[0x1E699E100];
    sub_1E60DE6BC(&qword_1ED074AE0, MEMORY[0x1E699E100]);
    sub_1E60DE6BC(&qword_1ED074AE8, v1);
    sub_1E60DE6BC(&qword_1EE2D6B30, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075108);
  }

  return result;
}

unint64_t sub_1E60DCBEC()
{
  result = qword_1ED075110;
  if (!qword_1ED075110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AF0, &qword_1E65F1070);
    sub_1E60DE6BC(&qword_1ED075118, MEMORY[0x1E699CFF0]);
    sub_1E60DCCA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075110);
  }

  return result;
}

unint64_t sub_1E60DCCA8()
{
  result = qword_1ED075120;
  if (!qword_1ED075120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B10, &qword_1E65F1078);
    sub_1E60DE6BC(&qword_1ED075128, MEMORY[0x1E699D028]);
    sub_1E5FED46C(&qword_1ED075130, &qword_1ED074B28, &qword_1E65F1080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075120);
  }

  return result;
}

uint64_t sub_1E60DCD90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072AC0, &unk_1E65F4300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DCE00()
{
  result = qword_1ED075140;
  if (!qword_1ED075140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B30, &qword_1E65F1088);
    v1 = MEMORY[0x1E6969530];
    sub_1E60DE6BC(&qword_1ED074B40, MEMORY[0x1E6969530]);
    sub_1E60DE6BC(&qword_1ED074B48, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075140);
  }

  return result;
}

unint64_t sub_1E60DCEE8()
{
  result = qword_1ED075148;
  if (!qword_1ED075148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B50, &qword_1E65F1090);
    sub_1E60D2180();
    sub_1E60D2290();
    sub_1E60D23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075148);
  }

  return result;
}

unint64_t sub_1E60DCF88()
{
  result = qword_1ED075158;
  if (!qword_1ED075158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BD8, &qword_1E65F10B0);
    v1 = MEMORY[0x1E699E698];
    sub_1E60DE6BC(&qword_1ED074BE8, MEMORY[0x1E699E698]);
    sub_1E60DE6BC(&qword_1ED074BF0, v1);
    sub_1E60DE6BC(&qword_1EE2D67A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075158);
  }

  return result;
}

unint64_t sub_1E60DD09C()
{
  result = qword_1ED075168;
  if (!qword_1ED075168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C28, &qword_1E65F10C0);
    v1 = MEMORY[0x1E69CC2C8];
    sub_1E60DE6BC(&qword_1ED074C38, MEMORY[0x1E69CC2C8]);
    sub_1E60DE6BC(&qword_1ED074C40, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075168);
  }

  return result;
}

unint64_t sub_1E60DD198()
{
  result = qword_1ED075170;
  if (!qword_1ED075170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C48, &qword_1E65F10C8);
    sub_1E60D2A44();
    sub_1E60D2A98();
    sub_1E60D2AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075170);
  }

  return result;
}

unint64_t sub_1E60DD238()
{
  result = qword_1ED075178;
  if (!qword_1ED075178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C70, &qword_1E65F10D0);
    v1 = MEMORY[0x1E699D0E8];
    sub_1E60DE6BC(&qword_1ED074C80, MEMORY[0x1E699D0E8]);
    sub_1E60DE6BC(&qword_1ED074C88, v1);
    sub_1E60DE6BC(&qword_1EE2D6D90, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075178);
  }

  return result;
}

unint64_t sub_1E60DD34C()
{
  result = qword_1ED075180;
  if (!qword_1ED075180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072818, &qword_1E65EBE10);
    sub_1E60D2CE0();
    sub_1E60D2D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075180);
  }

  return result;
}

unint64_t sub_1E60DD3D8()
{
  result = qword_1ED075188;
  if (!qword_1ED075188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074068, &qword_1E65EF228);
    sub_1E60D2E14();
    sub_1E60D2EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075188);
  }

  return result;
}

unint64_t sub_1E60DD464()
{
  result = qword_1ED075190;
  if (!qword_1ED075190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073F98, &qword_1E65EF138);
    sub_1E60D3008();
    sub_1E60D30BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075190);
  }

  return result;
}

unint64_t sub_1E60DD4F0()
{
  result = qword_1ED075198;
  if (!qword_1ED075198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CF0, &qword_1E65F10D8);
    v1 = MEMORY[0x1E699E9E0];
    sub_1E60DE6BC(&qword_1ED074D00, MEMORY[0x1E699E9E0]);
    sub_1E60DE6BC(&qword_1ED074D08, v1);
    sub_1E60DE6BC(&qword_1EE2D64A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075198);
  }

  return result;
}

uint64_t sub_1E60DD604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073560, &qword_1E65ED560);
    sub_1E60D3284();
    sub_1E60D336C();
    sub_1E5FED46C(&qword_1EE2D4AE8, &qword_1ED073568, &qword_1E65FD8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DD6BC()
{
  result = qword_1ED0751A8;
  if (!qword_1ED0751A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D30, &qword_1E65F10E0);
    v1 = MEMORY[0x1E699F160];
    sub_1E60DE6BC(&qword_1ED074D40, MEMORY[0x1E699F160]);
    sub_1E60DE6BC(&qword_1ED074D48, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751A8);
  }

  return result;
}

unint64_t sub_1E60DD7A4()
{
  result = qword_1ED0751B0;
  if (!qword_1ED0751B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745B0, &qword_1E65F0F38);
    v1 = MEMORY[0x1E699F370];
    sub_1E60DE6BC(&qword_1ED074D58, MEMORY[0x1E699F370]);
    sub_1E60DE6BC(&qword_1ED074D60, v1);
    sub_1E60DE6BC(&qword_1EE2D6220, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751B0);
  }

  return result;
}

unint64_t sub_1E60DD8B8()
{
  result = qword_1ED0751B8;
  if (!qword_1ED0751B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D68, &qword_1E65F10E8);
    sub_1E60D36F0();
    sub_1E60D37AC();
    sub_1E60D3868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751B8);
  }

  return result;
}

unint64_t sub_1E60DD958()
{
  result = qword_1ED0751C0;
  if (!qword_1ED0751C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DB0, &qword_1E65F10F8);
    v1 = MEMORY[0x1E69CC100];
    sub_1E60DE6BC(&qword_1ED074DC0, MEMORY[0x1E69CC100]);
    sub_1E60DE6BC(&qword_1ED074DC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751C0);
  }

  return result;
}

unint64_t sub_1E60DDA54()
{
  result = qword_1ED0751C8;
  if (!qword_1ED0751C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DD0, &qword_1E65F1100);
    v1 = MEMORY[0x1E699ED68];
    sub_1E60DE6BC(&qword_1ED074DE0, MEMORY[0x1E699ED68]);
    sub_1E60DE6BC(&qword_1ED074DE8, v1);
    sub_1E60DE6BC(&qword_1EE2D6050, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751C8);
  }

  return result;
}

unint64_t sub_1E60DDB68()
{
  result = qword_1ED0751D0;
  if (!qword_1ED0751D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078610, &qword_1E65F1108);
    sub_1E5DF6CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751D0);
  }

  return result;
}

unint64_t sub_1E60DDBEC()
{
  result = qword_1ED0751F8;
  if (!qword_1ED0751F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E58, &qword_1E65F1128);
    v1 = MEMORY[0x1E699EF28];
    sub_1E60DE6BC(&qword_1ED074E68, MEMORY[0x1E699EF28]);
    sub_1E60DE6BC(&qword_1ED074E70, v1);
    sub_1E60DE6BC(&qword_1EE2D6B08, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751F8);
  }

  return result;
}

uint64_t sub_1E60DDD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E60DDD68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E80, &qword_1E65F1130);
    sub_1E60D4048(&qword_1ED074E90, &qword_1ED074EA0);
    sub_1E60D4048(&qword_1ED074EB0, &qword_1ED074EB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DDE50()
{
  result = qword_1ED075218;
  if (!qword_1ED075218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072990, &qword_1E65EC130);
    v1 = MEMORY[0x1E69CBFD8];
    sub_1E60DE6BC(&qword_1ED074ED0, MEMORY[0x1E69CBFD8]);
    sub_1E60DE6BC(&qword_1ED074ED8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075218);
  }

  return result;
}

unint64_t sub_1E60DDF38()
{
  result = qword_1ED075220;
  if (!qword_1ED075220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074EE0, &qword_1E65F1148);
    v1 = MEMORY[0x1E69CB3C8];
    sub_1E60DE6BC(&qword_1ED074EF0, MEMORY[0x1E69CB3C8]);
    sub_1E60DE6BC(&qword_1ED074EF8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075220);
  }

  return result;
}

unint64_t sub_1E60DE034()
{
  result = qword_1ED075228;
  if (!qword_1ED075228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F00, &unk_1E66062A0);
    sub_1E60D4350();
    sub_1E60D43CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075228);
  }

  return result;
}

unint64_t sub_1E60DE0C0()
{
  result = qword_1ED075230;
  if (!qword_1ED075230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F28, &qword_1E65F1158);
    sub_1E60DE6BC(&qword_1ED075238, MEMORY[0x1E699ECC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075230);
  }

  return result;
}

unint64_t sub_1E60DE17C()
{
  result = qword_1ED075240;
  if (!qword_1ED075240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v1 = MEMORY[0x1E69CC1B0];
    sub_1E60DE6BC(&qword_1ED074F48, MEMORY[0x1E69CC1B0]);
    sub_1E60DE6BC(&qword_1ED074F50, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075240);
  }

  return result;
}

unint64_t sub_1E60DE278()
{
  result = qword_1ED075248;
  if (!qword_1ED075248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F58, &qword_1E65F1160);
    sub_1E60DE6BC(&qword_1ED075250, MEMORY[0x1E699EA38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075248);
  }

  return result;
}

unint64_t sub_1E60DE334()
{
  result = qword_1ED075258;
  if (!qword_1ED075258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F70, &qword_1E65F1168);
    sub_1E60D475C();
    sub_1E60D4818();
    sub_1E60D48D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075258);
  }

  return result;
}

unint64_t sub_1E60DE3D4()
{
  result = qword_1ED075260;
  if (!qword_1ED075260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FB8, &qword_1E65EF148);
    v1 = MEMORY[0x1E69CD2D8];
    sub_1E60DE6BC(&qword_1ED074FC0, MEMORY[0x1E69CD2D8]);
    sub_1E60DE6BC(&qword_1ED074FC8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075260);
  }

  return result;
}

unint64_t sub_1E60DE4D0()
{
  result = qword_1ED075268;
  if (!qword_1ED075268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FC0, &qword_1E65EF150);
    v1 = MEMORY[0x1E69CD370];
    sub_1E60DE6BC(&qword_1ED074FD8, MEMORY[0x1E69CD370]);
    sub_1E60DE6BC(&qword_1ED074FE0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075268);
  }

  return result;
}

uint64_t sub_1E60DE5CC(uint64_t a1)
{
  v2 = type metadata accessor for AppState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E60DE628()
{
  if (!qword_1EE2D4AF8)
  {
    sub_1E65D9AC8();
    sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4AF8);
    }
  }
}

uint64_t sub_1E60DE6BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E60DE704(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_1E65E4CB8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E60DE774()
{
  if (!qword_1EE2D4A80)
  {
    sub_1E65E3668();
    sub_1E5DF4210();
    sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A80);
    }
  }
}

void sub_1E60DE82C()
{
  if (!qword_1EE2D4AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E98, &qword_1E65F1138);
    sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4AC8);
    }
  }
}

void sub_1E60DE8D4()
{
  if (!qword_1EE2D4B00)
  {
    sub_1E65D92D8();
    sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8]);
    v0 = sub_1E65E4CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4B00);
    }
  }
}

void sub_1E60DE968()
{
  if (!qword_1EE2D4A48)
  {
    sub_1E65DADD8();
    sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A48);
    }
  }
}

void sub_1E60DEA18()
{
  if (!qword_1EE2D4A40)
  {
    sub_1E65DAEB8();
    sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370]);
    v0 = sub_1E65E4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4A40);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB0)
  {
    goto LABEL_17;
  }

  if (a2 + 80 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 80) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 80;
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

      return (*a1 | (v4 << 8)) - 80;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 80;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x51;
  v8 = v6 - 81;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 80 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 80) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB0)
  {
    v4 = 0;
  }

  if (a2 > 0xAF)
  {
    v5 = ((a2 - 176) >> 8) + 1;
    *result = a2 + 80;
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
    *result = a2 + 80;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E60DEC1C()
{
  result = qword_1ED075270;
  if (!qword_1ED075270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075270);
  }

  return result;
}

unint64_t sub_1E60DEC74()
{
  result = qword_1ED075278;
  if (!qword_1ED075278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075278);
  }

  return result;
}

unint64_t sub_1E60DECCC()
{
  result = qword_1ED075280;
  if (!qword_1ED075280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075280);
  }

  return result;
}

uint64_t sub_1E60DED20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E6612330 == a2;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C657669746361 && a2 == 0xEC00000074756F79 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612350 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612370 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E6612390 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E66123C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E66123E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E6612400 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612420 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612440 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616D496472617761 && a2 == 0xEF65746174536567 || (sub_1E65E6C18() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6612460 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E6612480 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66124A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x616F546472617761 && a2 == 0xEF65746174537473 || (sub_1E65E6C18() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E66124C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E66124E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6612500 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612520 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74536573776F7262 && a2 == 0xEB00000000657461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x74537361766E6163 && a2 == 0xEB00000000657461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E6612540 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E6612560 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C6163 || (sub_1E65E6C18() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E6612580 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E66125A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xEF6C69617465446CLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66125C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66125E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6F4C756F59726F66 && a2 == 0xEF65746174536461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612600 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6612620 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6612640 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612660 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6612680 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E66126A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x636E79537473616CLL && a2 == 0xEC00000065746144 || (sub_1E65E6C18() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E66126C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E66126E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x537972617262696CLL && a2 == 0xEC00000065746174 || (sub_1E65E6C18() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xEE00726566664F67 || (sub_1E65E6C18() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xEE006C6961746544 || (sub_1E65E6C18() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612700 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612720 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612740 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E6612760 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612780 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66127A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x696472616F626E6FLL && a2 == 0xEF6574617453676ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66127C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E66127E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E6612800 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612820 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x446D6172676F7270 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E6612840 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E6612860 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612880 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x6D657449746F6F72 && a2 == 0xE900000000000073 || (sub_1E65E6C18() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E66128A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E66128C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E66128E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E6612900 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001E6612930 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0x7453686372616573 && a2 == 0xEB00000000657461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0x616C506572616873 && a2 == 0xEE00657461745379 || (sub_1E65E6C18() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612960 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0x7461745369726973 && a2 == 0xE900000000000065 || (sub_1E65E6C18() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612980 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0x4472656E69617274 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0x75517478654E7075 && a2 == 0xEB00000000657565 || (sub_1E65E6C18() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E66129A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0x4474756F6B726F77 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E66129C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0x5374756F6B726F77 && a2 == 0xEF656C7564656863 || (sub_1E65E6C18() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0x577972617262696CLL && a2 == 0xEF7374756F6B726FLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E66129E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0x507972617262696CLL && a2 == 0xEF736D6172676F72 || (sub_1E65E6C18() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E6612A00 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612A20 == a2)
  {

    return 80;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 80;
    }

    else
    {
      return 81;
    }
  }
}

uint64_t sub_1E60E0610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DEEC8();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E0674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074870, &qword_1E65F1010);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E06E4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1E65D9BA8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E07A4, 0, 0);
}

uint64_t sub_1E60E07A4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  v3 = v0[9];
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[5];
    sub_1E65DE1A8();

    return MEMORY[0x1EEE6DFA0](sub_1E60E0878, v4, 0);
  }

  else
  {
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1E60E0878()
{
  v1 = v0[9];
  v2 = sub_1E65D9B78();
  if (v3 & 1) != 0 && (v2)
  {
    v4 = v0[10];
    sub_1E60E0924(0);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  (*(v8 + 8))(v6, v7);
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E60E0924(void *a1)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for WelcomeAcknowledgementDetour.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for RouteDestination();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v36 = *(v19 - 8);
  v20 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state;
  swift_beginAccess();
  sub_1E60E3790(v1 + v23, v12, type metadata accessor for WelcomeAcknowledgementDetour.State);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    return sub_1E60E3910(v12, type metadata accessor for WelcomeAcknowledgementDetour.State);
  }

  v33 = v5;
  v27 = *(v24 + 48);
  (*(v36 + 32))(v22, v12, v19);
  sub_1E5F90FA0(&v12[v27], v18, type metadata accessor for RouteDestination);
  (*(v25 + 56))(v10, 1, 1, v24);
  swift_beginAccess();
  sub_1E60E37F8(v10, v1 + v23);
  swift_endAccess();
  if (v35)
  {
    v37 = v35;
    v28 = v35;
    sub_1E65E5FE8();
  }

  else
  {
    v29 = sub_1E65E60A8();
    v30 = v33;
    (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
    v31 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour);
    v32 = swift_allocObject();
    v32[2] = v1;
    v32[3] = v31;
    v32[4] = v1;
    swift_retain_n();
    sub_1E64B80F8(0, 0, v30, &unk_1E65F1430, v32);

    sub_1E60E3790(v18, v34, type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
  }

  sub_1E60E3910(v18, type metadata accessor for RouteDestination);
  return (*(v36 + 8))(v22, v19);
}

uint64_t sub_1E60E0DD8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionCache);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69CD5E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FEEF74;

  return MEMORY[0x1EEE37858](v2, v3);
}

uint64_t sub_1E60E0E98()
{
  sub_1E60E3910(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state, type metadata accessor for WelcomeAcknowledgementDetour.State);
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_dependencies);

  v2 = *(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_eventHub);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionCache));
  v3 = *(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionToken);

  v4 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__welcomeAcknowledgementShowingEnabled;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__forceWelcomeAcknowledgement, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E60E0FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E3B68();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1E65D7A18();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_1E65D9BA8();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E11C8, v5, 0);
}

uint64_t sub_1E60E11C8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 56);
  v5 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__welcomeAcknowledgementShowingEnabled;
  v6 = *(v2 + 16);
  *(v0 + 160) = v6;
  *(v0 + 168) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  sub_1E65DDC48();
  v7 = *(v2 + 8);
  *(v0 + 176) = v7;
  *(v0 + 184) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 276) == 1)
  {
    v8 = *(v0 + 32);
    v9 = *(type metadata accessor for AppComposer() + 20);
    *(v0 + 272) = v9;
    v10 = v8 + v9;
    v11 = type metadata accessor for AppEnvironment();
    *(v0 + 192) = v11;
    v12 = v10 + *(v11 + 92);
    v13 = PrivacyPreferenceService.queryNoticePrivacyPreference.getter();
    *(v0 + 200) = v14;
    v33 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    *(v0 + 208) = v16;
    *v16 = v0;
    v16[1] = sub_1E60E14A4;
    v17 = *(v0 + 128);

    return v33(v17);
  }

  else
  {
    v19 = *(v0 + 80);
    sub_1E65DE348();
    v20 = sub_1E65E3B48();
    v21 = sub_1E65E6338();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E5DE9000, v20, v21, "Welcome acknowledgement showing has been disabled", v22, 2u);
      MEMORY[0x1E694F1C0](v22, -1, -1);
    }

    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 64);
    v27 = *(v0 + 16);
    v26 = *(v0 + 24);

    (*(v24 + 8))(v23, v25);
    sub_1E60E3790(v26, v27, type metadata accessor for RouteDestination);
    v28 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    v31 = *(v0 + 80);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1E60E14A4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1E60E1C8C;
  }

  else
  {
    v6 = sub_1E60E15D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E60E15D0()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 56);

  v5(v6, v8 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__forceWelcomeAcknowledgement, v7);
  sub_1E65DDC48();
  v3(v6, v7);
  if (*(v0 + 277) & 1) == 0 && (v9 = *(v0 + 128), v10 = sub_1E65D9B78(), (v11) && (v10)
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);
    sub_1E60E3790(*(v0 + 24), *(v0 + 16), type metadata accessor for RouteDestination);
    (*(v13 + 8))(v12, v14);
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 32) + *(v0 + 272) + *(*(v0 + 192) + 60);
    v22 = EngagementService.queryIntroSheet.getter();
    *(v0 + 224) = v23;
    v27 = (v22 + *v22);
    v24 = v22[1];
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    v25[1] = sub_1E60E1804;
    v26 = *(v0 + 104);

    return v27(v26);
  }
}

uint64_t sub_1E60E1804()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1E60E1D24;
  }

  else
  {
    v6 = sub_1E60E1930;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E60E1930()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 56);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v15 = *(v0 + 40);

  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v15;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v5;
  v8 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour);
  v9 = *(MEMORY[0x1E69E88F0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  v11 = type metadata accessor for RouteDestination();
  *v10 = v0;
  v10[1] = sub_1E60E1AA0;
  v12 = *(v0 + 56);
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v13, &unk_1E65F1408, v7, sub_1E60E368C, v12, v4, v8, v11);
}

uint64_t sub_1E60E1AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1E60E1DDC;
  }

  else
  {
    v6 = *(v2 + 248);
    v7 = *(v2 + 56);

    v5 = sub_1E60E1BC8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E60E1BC8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E60E1C8C()
{
  v1 = v0[25];

  v2 = v0[27];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E60E1D24()
{
  v1 = v0[28];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  v5 = v0[30];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E60E1DDC()
{
  v1 = v0[31];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[33];
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E60E1EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E60E1EE0, a2, 0);
}

uint64_t sub_1E60E1EE0()
{
  v1 = *(v0 + 72);
  v2 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v11 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  *(v3 + 16) = v11;
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = type metadata accessor for RouteDestination();
  *v7 = v0;
  v7[1] = sub_1E60E2038;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, v11, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E60E3970, v3, v8);
}

uint64_t sub_1E60E2038()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1E60E2174, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E60E2174()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1E60E21D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a8;
  v54 = a7;
  v51 = a6;
  v61 = a5;
  v62 = a4;
  v63 = a1;
  v10 = type metadata accessor for AppComposer();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = v12;
  v66 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D7A18();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v52 = v15;
  v65 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E65D9BA8();
  v53 = *(v55 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v64 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v50 - v19;
  v21 = type metadata accessor for WelcomeAcknowledgementDetour.State(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  v28 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state;
  swift_beginAccess();
  v29 = a2;
  sub_1E60E3790(a2 + v28, v27, type metadata accessor for WelcomeAcknowledgementDetour.State);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v31 = *(v30 - 8);
  LODWORD(a2) = (*(v31 + 48))(v27, 1, v30);
  sub_1E60E3910(v27, type metadata accessor for WelcomeAcknowledgementDetour.State);
  if (a2 == 1)
  {
    v32 = &v25[*(v30 + 48)];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v33 - 8) + 16))(v25, v63, v33);
    sub_1E60E3790(a3, v32, type metadata accessor for RouteResource);
    v34 = type metadata accessor for RouteDestination();
    sub_1E60E3790(a3 + *(v34 + 20), v32 + *(v34 + 20), type metadata accessor for RouteSource);
    v35 = *(a3 + *(v34 + 24));

    *(v32 + *(v34 + 24)) = sub_1E602A670(&unk_1F5FA8530, v35);
    (*(v31 + 56))(v25, 0, 1, v30);
    v36 = v29;
    swift_beginAccess();
    sub_1E60E37F8(v25, v29 + v28);
    swift_endAccess();
    v37 = sub_1E65E60A8();
    v38 = *(*(v37 - 8) + 56);
    v50 = v20;
    v38(v20, 1, 1, v37);
    v39 = v53;
    v40 = v55;
    (*(v53 + 16))(v64, v51, v55);
    v42 = v59;
    v41 = v60;
    (*(v59 + 16))(v65, v54, v60);
    sub_1E60E3790(v56, v66, type metadata accessor for AppComposer);
    v43 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour);
    v44 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v45 = (v16 + *(v42 + 80) + v44) & ~*(v42 + 80);
    v46 = (v52 + *(v57 + 80) + v45) & ~*(v57 + 80);
    v47 = swift_allocObject();
    *(v47 + 2) = v36;
    *(v47 + 3) = v43;
    v48 = v61;
    *(v47 + 4) = v62;
    *(v47 + 5) = v48;
    *(v47 + 6) = v36;
    (*(v39 + 32))(&v47[v44], v64, v40);
    (*(v42 + 32))(&v47[v45], v65, v41);
    sub_1E5F90FA0(v66, &v47[v46], type metadata accessor for AppComposer);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v50, &unk_1E65F1440, v47);
  }

  else
  {
    sub_1E60E3984();
    v67 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E60E2878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = *(type metadata accessor for AppComposer() - 8);
  v8[8] = v10;
  v8[9] = *(v10 + 64);
  v8[10] = swift_task_alloc();
  v11 = sub_1E65D7A18();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v8[13] = *(v12 + 64);
  v8[14] = swift_task_alloc();
  v13 = sub_1E65D9BA8();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v8[17] = *(v14 + 64);
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E2A18, a6, 0);
}

uint64_t sub_1E60E2A18()
{
  v1 = v0[18];
  v23 = v0[17];
  v24 = v1;
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v25 = v0[13];
  v26 = v7;
  v27 = v0[9];
  v8 = v0[6];
  v21 = v0[7];
  v22 = v0[8];
  v9 = v0[5];
  v10 = v0[2];
  v29 = v0[4];
  v31 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(v1, v9, v3);
  (*(v5 + 16))(v4, v8, v6);
  sub_1E60E3790(v21, v7, type metadata accessor for AppComposer);
  v11 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v12 = (v23 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = (v25 + *(v22 + 80) + v12) & ~*(v22 + 80);
  v14 = swift_allocObject();
  v0[19] = v14;
  *(v14 + 16) = v29;
  (*(v2 + 32))(v14 + v11, v24, v3);
  (*(v5 + 32))(v14 + v12, v4, v6);
  sub_1E5F90FA0(v26, v14 + v13, type metadata accessor for AppComposer);
  v15 = *(v31 + 24);

  v30 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_1E60E2CC4;
  v19 = v0[2];
  v18 = v0[3];

  return v30(sub_1E60E3BB0, v14, ObjectType, v18);
}

uint64_t sub_1E60E2CC4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 80);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

void sub_1E60E2E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  v8 = sub_1E65D7A18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_dependencies);

  sub_1E65D9B98();
  (*(v9 + 16))(v12, a4, v8);
  v14 = objc_allocWithZone(sub_1E65E5468());
  v15 = sub_1E65E5448();

  sub_1E65E5458();

  v16 = *(a5 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v16 < 2)
  {
    [v18 presentViewController:v15 animated:1 completion:0];
LABEL_5:

    return;
  }

  if (v16 == 3)
  {
    [v18 pushViewController:v15 animated:0];
    goto LABEL_5;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E60E3050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1E65E6058();

  v7 = sub_1E65E6048();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1E64B80F8(0, 0, v5, &unk_1E65F1450, v8);
}

uint64_t sub_1E60E3174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E60E31F4, a4, 0);
}

uint64_t sub_1E60E31F4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E60E0924(0);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F908BC, v5, v4);
}

uint64_t sub_1E60E3288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E65F1420, v7);
}

uint64_t sub_1E60E33B4()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E60E3748(&qword_1ED071E30, MEMORY[0x1E69E8550]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E60E3478, v1, 0);
}

uint64_t sub_1E60E3478()
{
  v1 = *(v0 + 24);
  sub_1E60E0924(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E60E34E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E60E0FE0(a1, a2, a3, a4, a5);
}

uint64_t sub_1E60E35B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E60E1EB8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E60E3694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60E3394(a1, v4, v5, v6);
}

uint64_t sub_1E60E3748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E60E3790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E60E37F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeAcknowledgementDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E385C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60E0DB8(a1, v4, v5, v6);
}

uint64_t sub_1E60E3910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E60E3984()
{
  result = qword_1ED075298;
  if (!qword_1ED075298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075298);
  }

  return result;
}

uint64_t sub_1E60E39D8(uint64_t a1)
{
  v3 = *(sub_1E65D9BA8() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65D7A18() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(*(type metadata accessor for AppComposer() - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1E5DFA78C;

  return sub_1E60E2878(a1, v10, v11, v12, v13, v14, v1 + v4, v1 + v7);
}

void sub_1E60E3BB0(void *a1)
{
  v3 = *(sub_1E65D9BA8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65D7A18() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for AppComposer() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_1E60E2E30(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_1E60E3CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60E3174(a1, v4, v5, v6);
}

uint64_t sub_1E60E3DA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60E06E4(a1, v1);
}

unint64_t sub_1E60E3E54()
{
  result = qword_1ED0752A0;
  if (!qword_1ED0752A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0752A0);
  }

  return result;
}

uint64_t sub_1E60E3EA8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v21[0] = sub_1E65E12C8();
  v3 = *(v21[0] - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v21[0]);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v21 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v16 = 3u >> v22;
  if (a1 == 4)
  {
    if (sub_1E65E14C8())
    {
      (*(v3 + 104))(v10, *MEMORY[0x1E699E7F0], v21[0]);
      if (sub_1E65E4B48())
      {
        sub_1E65DC388();
      }
    }

    else
    {
      v17 = MEMORY[0x1E699E7E8];
      if ((v16 & 1) == 0)
      {
        v17 = MEMORY[0x1E699E7F0];
      }

      (*(v3 + 104))(v7, *v17, v21[0]);
      if (sub_1E65E4B48())
      {
        sub_1E65DC378();
      }
    }

    return sub_1E65E11D8();
  }

  if (a1 == 2)
  {
    sub_1E65E0708();
    if (sub_1E65E14C8())
    {
      (*(v3 + 104))(v15, *MEMORY[0x1E699E7F0], v21[0]);
    }

    else
    {
      v18 = MEMORY[0x1E699E7E8];
      if ((v16 & 1) == 0)
      {
        v18 = MEMORY[0x1E699E7F0];
      }

      (*(v3 + 104))(v13, *v18, v21[0]);
    }

    return sub_1E65E11D8();
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6612B60);
  v20 = sub_1E65E1268();
  MEMORY[0x1E694D7C0](v20);

  MEMORY[0x1E694D7C0](0xD00000000000003DLL, 0x80000001E6612B80);
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60E4340@<X0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v6 = 3u >> v15;
  if (a1 == 4)
  {
    if (a2 < 2u)
    {
      v7 = sub_1E65DC488();
      v8 = *(*(v7 - 8) + 104);
      if (v6)
      {
        v9 = MEMORY[0x1E699DC48];
      }

      else
      {
        v9 = MEMORY[0x1E699DC58];
      }

LABEL_11:
      v10 = *v9;
      v11 = a3;
LABEL_16:
      v8(v11, v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
      return swift_storeEnumTagMultiPayload();
    }

    if (a2 != 3)
    {
LABEL_18:
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD000000000000012, 0x80000001E6612C00);
      sub_1E65E69B8();
      MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6612C20);
      goto LABEL_19;
    }

LABEL_15:
    v12 = *MEMORY[0x1E699DC58];
    v7 = sub_1E65DC488();
    v8 = *(*(v7 - 8) + 104);
    v11 = a3;
    v10 = v12;
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    if (a2 < 2u)
    {
      v7 = sub_1E65DC488();
      v8 = *(*(v7 - 8) + 104);
      if (v6)
      {
        v9 = MEMORY[0x1E699DC40];
      }

      else
      {
        v9 = MEMORY[0x1E699DC50];
      }

      goto LABEL_11;
    }

    if (a2 != 3)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6612B60);
  v14 = sub_1E65E1268();
  MEMORY[0x1E694D7C0](v14);

  MEMORY[0x1E694D7C0](0xD000000000000037, 0x80000001E6612BC0);
LABEL_19:
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60E46CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v31 - v18;
  v34 = v31 - v18;
  v33 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1E5FEDD5C(a1, v15);
  (*(v8 + 16))(v11, a2, v7);
  v21 = *(a4 + 24);
  v31[0] = *a4;
  v31[1] = v21;
  v22 = *(a4 + 56);
  v31[2] = *(a4 + 40);
  v31[3] = v22;
  v31[4] = *(a4 + 72);
  v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v24 = (v13 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  sub_1E60E58D4(v15, v26 + v23);
  (*(v8 + 32))(v26 + v24, v11, v7);
  *(v26 + v25) = v33;
  v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = *(a4 + 64);
  v27[3] = *(a4 + 48);
  v27[4] = v28;
  v29 = *(a4 + 32);
  v27[1] = *(a4 + 16);
  v27[2] = v29;
  *v27 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v34, &unk_1E65EC0C8, v26);
}

uint64_t sub_1E60E4A04(uint64_t *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  swift_getObjectType();
  sub_1E60E4B30(v11, a4, a6, a3, a5, &v15);

  swift_unknownObjectRetain();

  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a1;
  sub_1E6421274(&v15, v11, isUniquelyReferenced_nonNull_native);

  swift_unknownObjectRelease();

  *a1 = v16;
}

double sub_1E60E4B30@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v84 = a3;
  v74 = a6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v72 = *(v73 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = v59 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v71 = *(v69 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v59 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v67 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v59 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v59 - v25;
  v62 = v19;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v59 - v27;
  sub_1E6122A0C(a1, a2, a4, a5, &v89);
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v88 = 0xD000000000000015;
  *(&v88 + 1) = 0x80000001E6610EC0;
  v29 = sub_1E65DF568();
  MEMORY[0x1E694D7C0](v29);

  v63 = v88;
  sub_1E5E1DEAC(a4, v28);
  v59[12] = v89;
  v59[13] = *(&v90 + 1);
  v59[14] = *(&v91 + 1);
  v59[15] = *(&v92 + 1);
  v59[16] = *(&v93 + 1);
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = v30 + v19;
  v32 = *(v18 + 80);
  v33 = swift_allocObject();
  v66 = v33;
  sub_1E5E1FA80(v28, v33 + v30);
  v34 = (v33 + ((v30 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v92;
  v34[2] = v91;
  v34[3] = v35;
  v34[4] = v93;
  v36 = v90;
  *v34 = v89;
  v34[1] = v36;
  sub_1E5DF650C(v84, &v88);
  v37 = swift_allocObject();
  sub_1E5DF599C(&v88, v37 + 16);
  sub_1E5E1DEAC(a4, v26);
  v60 = v32;
  v38 = swift_allocObject();
  v83 = v38;
  sub_1E5E1FA80(v26, v38 + v30);
  *(v38 + v31) = a1;
  v61 = a4;
  sub_1E5E1DEAC(a4, v23);
  v39 = swift_allocObject();
  v81 = v39;
  sub_1E5E1FA80(v23, v39 + v30);
  *(v39 + v31) = a1;
  v65 = *a4;
  v84 = type metadata accessor for ActionButtonDescriptor(0);
  v82 = type metadata accessor for ArtworkDescriptor();
  v80 = type metadata accessor for ContextMenu(0);
  v79 = type metadata accessor for ItemContext();
  v78 = type metadata accessor for ItemMetrics();
  v77 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v59[10] = type metadata accessor for SectionMetrics();
  v76 = type metadata accessor for ViewDescriptor();
  v59[9] = sub_1E60E588C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v75 = sub_1E60E588C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v59[8] = sub_1E60E588C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v59[7] = sub_1E60E588C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v59[6] = sub_1E60E588C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v59[5] = sub_1E60E588C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v59[4] = sub_1E60E588C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v59[3] = sub_1E60E588C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v59[2] = sub_1E60E588C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v59[1] = sub_1E5DF11E0();
  v59[0] = sub_1E5DF1338();
  sub_1E60E588C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  v59[11] = v37;

  sub_1E65DC178();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v41 = sub_1E65DC168();
  v86 = v40;
  v87 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v85 = v41;
  v42 = v68;
  sub_1E65DC248();
  v43 = v67;
  sub_1E5E1DEAC(v61, v67);
  v44 = (v60 + 32) & ~v60;
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v63;
  *(v46 + 16) = v63;
  sub_1E5E1FA80(v43, v46 + v44);
  v48 = (v46 + v45);
  *v48 = sub_1E5F8AA74;
  v48[1] = 0;
  *(swift_allocObject() + 16) = v47;
  type metadata accessor for AppFeature();
  sub_1E60E588C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);

  v49 = v70;
  v50 = v69;
  sub_1E65E4DE8();
  v51 = swift_allocObject();
  v52 = v66;
  *(v51 + 16) = sub_1E5FF0390;
  *(v51 + 24) = v52;

  sub_1E65E4CC8();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E5FE9CE8;
  *(v53 + 24) = v51;

  v54 = sub_1E65E4F08();

  (*(v72 + 8))(v49, v73);
  (*(v71 + 8))(v42, v50);
  v55 = v74;
  *v74 = v54;
  v56 = v89;
  *(v55 + 3) = v90;
  v57 = v92;
  *(v55 + 5) = v91;
  *(v55 + 7) = v57;
  result = *&v93;
  *(v55 + 9) = v93;
  *(v55 + 1) = v56;
  return result;
}

uint64_t sub_1E60E588C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E60E58D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E5944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1E65E3B68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v15 = sub_1E65D9908();
    v16 = *(*(v15 - 8) + 56);
    v17 = v15;
    v18 = a4;
    v19 = 1;
LABEL_21:

    return v16(v18, v19, 1, v17);
  }

  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
LABEL_14:
        v14 = MEMORY[0x1E69CC4A8];
        goto LABEL_20;
      }

      v14 = MEMORY[0x1E69CC428];
    }

    else
    {
      if (!a1)
      {
        goto LABEL_15;
      }

      v14 = MEMORY[0x1E69CC450];
    }

LABEL_20:
    v27 = *v14;
    v28 = sub_1E65D9908();
    v30 = *(v28 - 8);
    (*(v30 + 104))(a4, v27, v28);
    v16 = *(v30 + 56);
    v18 = a4;
    v19 = 0;
    v17 = v28;
    goto LABEL_21;
  }

  if (a1 > 5u)
  {
    if (a1 == 6)
    {
      v14 = MEMORY[0x1E69CC438];
    }

    else if (a1 == 7)
    {
      v14 = MEMORY[0x1E69CC490];
    }

    else
    {
      v14 = MEMORY[0x1E69CC498];
    }

    goto LABEL_20;
  }

  if (a1 == 4)
  {
    goto LABEL_14;
  }

LABEL_15:
  v30 = v11;
  sub_1E65DE358();
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6328();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136315138;
    v33 = a1;
    v34 = a2;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
    sub_1E65D7F98();
    v24 = sub_1E5DFD4B0(v31, v32, &v36);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1E5DE9000, v20, v21, "Metric Destination not supported for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E694F1C0](v23, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v9 + 8))(v13, v30);
  v25 = sub_1E65D9908();
  return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
}

uint64_t sub_1E60E5CF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v32 = a2;
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752B0, &qword_1E65F1548);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v29 - v7;
  v8 = type metadata accessor for AppComposer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = sub_1E65E38C8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1E65E38A8();
  v34 = *(v17 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  sub_1E5E1DEAC(a1, v14);
  v21 = *(v9 + 80);
  v22 = swift_allocObject();
  sub_1E5E1FA80(v14, v22 + ((v21 + 16) & ~v21));
  sub_1E5E1DEAC(a1, v12);
  sub_1E5DF650C(v30, v38);
  v23 = (v21 + 32) & ~v21;
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v32;
  *(v24 + 24) = v25;
  sub_1E5E1FA80(v12, v24 + v23);
  sub_1E5DF599C(v38, v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E65E38B8();
  sub_1E65E3898();
  type metadata accessor for AppFeature();
  sub_1E60E7A54(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E60E7A54(&qword_1ED0752B8, MEMORY[0x1E699EDA0]);
  v26 = v35;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = sub_1E65E4F08();
  (*(v36 + 8))(v26, v37);
  (*(v34 + 8))(v20, v17);
  return v27;
}

uint64_t sub_1E60E6130(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D76A8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65DE0A8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_1E65D92D8();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_1E65D8DE8();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = type metadata accessor for RemoteBrowsingService();
  v1[15] = v14;
  Description = v14[-1].Description;
  v1[16] = Description;
  v16 = Description[8] + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E6360, 0, 0);
}

uint64_t sub_1E60E6360()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[2];
  v5 = v4 + *(type metadata accessor for AppComposer() + 20);
  v6 = type metadata accessor for AppEnvironment();
  (*(v2 + 16))(v1, v5 + *(v6 + 100), v3);
  active = RemoteBrowsingService.requireActiveParticipant.getter();
  v0[18] = v8;
  v13 = (active + *active);
  v9 = active[1];
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1E60E64A8;
  v11 = v0[14];

  return v13(v11);
}

uint64_t sub_1E60E64A8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);

    v5 = sub_1E60E6D34;
  }

  else
  {
    v5 = sub_1E60E65C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60E65C4()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = RemoteBrowsingService.requestRemoteBrowsingServiceSubscription.getter();
  v0[21] = v4;
  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1E60E66C8;
  v7 = v0[14];
  v8 = v0[11];

  return v10(v8, v7);
}

uint64_t sub_1E60E66C8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);

    v5 = sub_1E60E6DF0;
  }

  else
  {
    v5 = sub_1E60E67E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60E67E4()
{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  v9 = RemoteBrowsingService.appendRemoteBrowsingJournalEntry.getter();
  v0[24] = v10;
  (*(v4 + 16))(v6, v3, v5);
  v11 = *MEMORY[0x1E69CAC98];
  v12 = sub_1E65DE178();
  (*(*(v12 - 8) + 104))(v6, v11, v12);
  (*(v8 + 104))(v6, *MEMORY[0x1E69CAC78], v7);
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_1E60E699C;
  v15 = v0[8];

  return v17(v15);
}

uint64_t sub_1E60E699C()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 208) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1E60E6EC4;
  }

  else
  {
    v7 = sub_1E60E6B30;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60E6B30()
{
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1E65D7698();
  LOBYTE(v1) = sub_1E65D92A8();
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    v6 = v0[16];
    v5 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[5];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v10 + 8))(v8, v9);
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v15 = v0[13];
    v14 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v19 = v0[10];
    sub_1E5FB7C50();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[8];
    v24 = v0[5];
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E60E6D34()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E60E6DF0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E60E6EC4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[26];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[5];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E60E6FB4()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60E6130(v0 + v3);
}

uint64_t sub_1E60E7080(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 129) = a1;
  v6 = type metadata accessor for RouteDestination();
  *(v5 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v8 = type metadata accessor for AppAction();
  *(v5 + 64) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E714C, 0, 0);
}

uint64_t sub_1E60E714C()
{
  *(v0 + 80) = sub_1E65E6058();
  *(v0 + 88) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60E71E4, v2, v1);
}

uint64_t sub_1E60E71E4()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];

  v2(v4);

  return MEMORY[0x1EEE6DFA0](sub_1E60E7258, 0, 0);
}

uint64_t sub_1E60E7258()
{
  if (*(v0 + 129) == 1)
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    *(v0 + 96) = **(v0 + 32);
    *v1 = xmmword_1E65EADF0;
    swift_storeEnumTagMultiPayload();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E60E735C, v5, v4);
  }

  else
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E60E735C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  sub_1E65E4EE8();
  sub_1E60E7A9C(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E60E73EC, 0, 0);
}

uint64_t sub_1E60E73EC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = *(v2 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 128) = 0;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1E60E7508;
  v8 = *(v0 + 56);

  return RoutingContext.resolveDetours(_:priority:)(v8, (v0 + 128), v5, v4);
}

uint64_t sub_1E60E7508()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[15] = v0;

  sub_1E60E7A9C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60E7690, 0, 0);
  }

  else
  {
    v5 = v4[9];
    v6 = v4[7];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E60E7690()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1E60E7700(char a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E60E7080(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E60E7818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v7);
  sub_1E5DFE50C(v3, &qword_1ED071F78, &unk_1E65EA3F0);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    sub_1E65D77C8();
    if (v14(v7, 1, v8) != 1)
    {
      sub_1E5DFE50C(v7, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  return sub_1E65E3888();
}

uint64_t sub_1E60E7A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E60E7A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E60E7AFC(uint64_t a1)
{
  v48 = sub_1E65D7D58();
  v3 = *(v48 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v48);
  v47 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v35 - v7;
  v45 = sub_1E65E2FF8();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v35[1] = v1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1E601C778(0, v12, 0);
  v13 = v55;
  v14 = a1 + 56;
  v15 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v17 = 0;
  v41 = v3 + 1;
  v42 = v3 + 2;
  v39 = v11;
  v40 = v8 + 32;
  v36 = a1 + 64;
  v37 = v12;
  v43 = a1 + 56;
  v44 = v8;
  v38 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v14 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v51 = 1 << result;
    v52 = result >> 6;
    v19 = *(a1 + 36);
    v49 = v17;
    v50 = v19;
    v20 = *(a1 + 48) + v3[9] * result;
    v21 = v3[2];
    v22 = v46;
    v54 = result;
    v23 = v48;
    v21(v46, v20, v48);
    v24 = v47;
    v21(v47, v22, v23);
    sub_1E65D7D38();
    v53 = v13;
    sub_1E65D7D28();
    sub_1E65D7D48();
    v13 = v53;
    sub_1E65E2FE8();
    v25 = v3[1];
    v25(v24, v23);
    v25(v22, v23);
    v55 = v13;
    v27 = *(v13 + 16);
    v26 = *(v13 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1E601C778(v26 > 1, v27 + 1, 1);
      v13 = v55;
    }

    *(v13 + 16) = v27 + 1;
    (*(v44 + 32))(v13 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27, v39, v45);
    a1 = v38;
    v18 = 1 << *(v38 + 32);
    result = v54;
    v14 = v43;
    if (v54 >= v18)
    {
      goto LABEL_22;
    }

    v28 = *(v43 + 8 * v52);
    if ((v28 & v51) == 0)
    {
      goto LABEL_23;
    }

    if (v50 != *(v38 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v54 & 0x3F));
    if (v29)
    {
      v18 = __clz(__rbit64(v29)) | v54 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v52 << 6;
      v31 = v52 + 1;
      v32 = (v36 + 8 * v52);
      while (v31 < (v18 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_1E5F87098(v54, v50, 0);
          v18 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v54, v50, 0);
    }

LABEL_4:
    v17 = v49 + 1;
    result = v18;
    if (v49 + 1 == v37)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60E7F48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v333 = a3;
  v421 = sub_1E65D9A78();
  v324 = *(v421 - 8);
  v6 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v421);
  v420 = v321 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v403 = v321 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v384 = v321 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C0, &qword_1E65F1590);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v402 = v321 - v15;
  v409 = sub_1E65DAD48();
  v387 = *(v409 - 8);
  v16 = *(v387 + 64);
  v17 = MEMORY[0x1EEE9AC00](v409);
  v408 = v321 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v407 = v321 - v19;
  v383 = sub_1E65E3158();
  v386 = *(v383 - 8);
  v20 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v382 = v321 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_1E65D74E8();
  v345 = *(v346 - 8);
  v22 = *(v345 + 64);
  v23 = MEMORY[0x1EEE9AC00](v346);
  v369 = v321 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v368 = v321 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v347 = v321 - v28;
  v401 = sub_1E65D7AD8();
  v406 = *(v401 - 1);
  v29 = *(v406 + 64);
  v30 = MEMORY[0x1EEE9AC00](v401);
  v400 = (v321 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v426 = v321 - v32;
  v399 = sub_1E65E2FD8();
  v404 = *(v399 - 1);
  v33 = *(v404 + 64);
  MEMORY[0x1EEE9AC00](v399);
  v322 = v321 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v344 = v321 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v343 = v321 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  *&v417 = v321 - v42;
  v422 = sub_1E65E3298();
  v418 = *(v422 - 1);
  v43 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v422);
  v367 = v321 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v45 = *(*(v405 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v405);
  v398 = v321 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v366 = v321 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v365 = v321 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v364 = v321 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v412 = v321 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v411 = v321 - v58;
  v413 = sub_1E65DAC98();
  v423 = *(v413 - 8);
  v59 = *(v423 + 64);
  v60 = MEMORY[0x1EEE9AC00](v413);
  v379 = v321 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v385 = v321 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v419 = v321 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v410 = v321 - v66;
  v381 = sub_1E65E3118();
  v323 = *(v381 - 8);
  v67 = *(v323 + 64);
  v68 = MEMORY[0x1EEE9AC00](v381);
  v397 = v321 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v363 = v321 - v70;
  v71 = sub_1E65D8818();
  v427 = *(v71 - 8);
  v428 = v71;
  v72 = *(v427 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v396 = v321 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = sub_1E65D9098();
  v389 = *(v390 - 1);
  v74 = *(v389 + 64);
  MEMORY[0x1EEE9AC00](v390);
  *&v388 = v321 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460);
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x1EEE9AC00](v76 - 8);
  v392 = (v321 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v78);
  v393 = v321 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752E0, &qword_1E65F15A0);
  v82 = *(*(v81 - 8) + 64);
  v83 = MEMORY[0x1EEE9AC00](v81 - 8);
  v362 = v321 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v394 = v321 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v375 = v321 - v87;
  v376 = sub_1E65D8668();
  v380 = *(v376 - 8);
  v88 = *(v380 + 64);
  v89 = MEMORY[0x1EEE9AC00](v376);
  v342 = v321 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v341 = v321 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v340 = v321 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v339 = v321 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v338 = v321 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v337 = v321 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v336 = v321 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v416 = v321 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v415 = v321 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v414 = v321 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v395 = v321 - v110;
  MEMORY[0x1EEE9AC00](v109);
  v425 = v321 - v111;
  v112 = sub_1E65D9AC8();
  v113 = *(v112 - 8);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v116 = v321 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = sub_1E65D72D8();
  v361 = *(v377 - 8);
  v117 = v361[8];
  v118 = MEMORY[0x1EEE9AC00](v377);
  v360 = v321 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x1EEE9AC00](v118);
  v358 = v321 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v356 = v321 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v359 = v321 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v357 = v321 - v127;
  v128 = MEMORY[0x1EEE9AC00](v126);
  v355 = v321 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v354 = v321 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v353 = v321 - v133;
  v134 = MEMORY[0x1EEE9AC00](v132);
  v350 = v321 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v373 = v321 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v352 = v321 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v351 = v321 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v374 = v321 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v372 = v321 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v371 = v321 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v370 = v321 - v149;
  MEMORY[0x1EEE9AC00](v148);
  v151 = v321 - v150;
  v152 = sub_1E65D9648();
  v349 = v151;
  v153 = a1;
  sub_1E63C4134(a1, a2, v152, v151);

  v348 = v3;
  v424 = sub_1E65D9548();
  v154 = sub_1E65D9AA8();
  v156 = v155;
  MEMORY[0x1E6941490]();
  v157 = sub_1E65D9AA8();
  v159 = v158;
  (*(v113 + 8))(v116, v112);
  if (v154 == v157 && v156 == v159)
  {

LABEL_5:
    v161 = v376;
    goto LABEL_6;
  }

  v160 = sub_1E65E6C18();

  if (v160)
  {
    goto LABEL_5;
  }

  v311 = sub_1E65D9608();
  v312 = sub_1E65D9AA8();
  v314 = sub_1E637CA94(v312, v313, v311);

  v161 = v376;
  if (v314)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v315 = *(sub_1E65DADF8() - 8);
    v316 = *(v315 + 72);
    v317 = (*(v315 + 80) + 32) & ~*(v315 + 80);
    v318 = swift_allocObject();
    *(v318 + 16) = xmmword_1E65EA670;
    v319 = (v318 + v317);
    *v319 = sub_1E65D9AA8();
    v319[1] = v320;
    swift_storeEnumTagMultiPayload();
    v431 = v424;
    sub_1E5FA9E2C(v318);
    v424 = v431;
  }

LABEL_6:
  v162 = a2;
  v163 = v394;
  v164 = v393;
  v165 = sub_1E65D9558();
  sub_1E63C4134(v153, a2, v165, v370);

  v166 = sub_1E65D95C8();
  sub_1E63C4134(v153, a2, v166, v371);

  v167 = sub_1E65D95A8();
  sub_1E63C4134(v153, a2, v167, v372);

  v168 = v425;
  sub_1E65D9618();
  v169 = sub_1E60EAD78();
  v170 = *(v380 + 8);
  v380 += 8;
  v378 = v170;
  v170(v168, v161);
  sub_1E63C4134(v153, a2, v169, v374);

  v171 = sub_1E65D95B8();
  if (v172 == -1 || (v431 = v171, LOBYTE(v432) = v172 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8), sub_1E65D7FB8(), v429 == 9) || (v173 = sub_1E65D8778(), v173 != sub_1E65D8778()))
  {
    sub_1E65D9578();
    v178 = v392;
    sub_1E5DFD1CC(v164, v392, &qword_1ED073D00, &unk_1E660F460);
    v179 = v389;
    v180 = v390;
    if ((*(v389 + 48))(v178, 1, v390) == 1)
    {
      sub_1E5DFE50C(v164, &qword_1ED073D00, &unk_1E660F460);
      v181 = sub_1E65E32A8();
      (*(*(v181 - 8) + 56))(v163, 1, 1, v181);
      v392 = 0;
      v182 = v375;
    }

    else
    {
      v183 = v388;
      (*(v179 + 32))(v388, v178, v180);
      sub_1E60EB500(v163);
      v182 = v375;
      v392 = 0;
      (*(v179 + 8))(v183, v180);
      sub_1E5DFE50C(v164, &qword_1ED073D00, &unk_1E660F460);
    }

    sub_1E60EB490(v163, v182);
  }

  else
  {
    v174 = *MEMORY[0x1E699EBB0];
    v175 = sub_1E65E32A8();
    v176 = *(v175 - 8);
    v177 = v375;
    (*(v176 + 104))(v375, v174, v175);
    (*(v176 + 56))(v177, 0, 1, v175);
    v392 = 0;
  }

  v184 = sub_1E65D95F8();
  v185 = v351;
  sub_1E63C4134(v153, v162, v184, v351);

  v186 = sub_1E65D95D8();
  v187 = v162;
  v188 = v352;
  v391 = v187;
  sub_1E63C4134(v153, v187, v186, v352);

  v189 = sub_1E65D95E8();
  sub_1E63C4134(v153, v187, v189, v373);

  v190 = v361 + 2;
  v191 = v361[2];
  v390 = v153;
  v192 = v377;
  v191(v350, v371, v377);
  v193 = v395;
  sub_1E65D9618();
  v194 = v396;
  sub_1E65D8628();
  v378(v193, v376);
  v332 = sub_1E65D87D8();
  (*(v427 + 8))(v194, v428);
  v191(v353, v185, v192);
  v191(v354, v188, v192);
  v195 = v410;
  sub_1E65D9568();
  sub_1E65DAC38();
  sub_1E65DC2D8();
  sub_1E65DAC78();
  sub_1E65D74C8();

  sub_1E65DAC88();
  sub_1E65E3108();
  v196 = v195;
  v197 = v413;
  v427 = *(v423 + 8);
  v428 = v423 + 8;
  (v427)(v196, v413);
  v198 = *MEMORY[0x1E699DC58];
  v199 = sub_1E65DC488();
  v200 = *(v199 - 8);
  v201 = *(v200 + 104);
  LODWORD(v396) = v198;
  v395 = v199;
  v394 = v201;
  v393 = (v200 + 104);
  (v201)(v366, v198);
  swift_storeEnumTagMultiPayload();
  v202 = v417;
  sub_1E65D9598();
  v203 = sub_1E65D76A8();
  LODWORD(v194) = (*(*(v203 - 8) + 48))(v202, 1, v203);
  sub_1E5DFE50C(v202, &qword_1ED0752D8, &qword_1E660CC30);
  v204 = MEMORY[0x1E699EBA0];
  if (v194 != 1)
  {
    v204 = MEMORY[0x1E699EBA8];
  }

  (*(v418 + 104))(v367, *v204, v422);
  v331 = sub_1E65D9588();
  v205 = v425;
  sub_1E65D9618();
  v206 = sub_1E65D8568();
  v207 = v376;
  v208 = v378;
  v378(v205, v376);
  v330 = sub_1E60E7AFC(v206);

  v209 = v377;
  v191(v355, v372, v377);
  v335 = v190;
  v334 = v191;
  v191(v357, v374, v209);
  v210 = v207;
  sub_1E63C4134(v390, v391, v424, v359);

  sub_1E5DFD1CC(v375, v362, &qword_1ED0752E0, &qword_1E65F15A0);
  v211 = v414;
  sub_1E65D9618();
  v329 = sub_1E65D8528();
  v328 = v212;
  v208(v211, v207);
  sub_1E65D9618();
  v213 = sub_1E65D8658();
  v215 = v214;
  v217 = v216;
  v208(v205, v210);
  v327 = sub_1E628D7F4();
  sub_1E5F87058(v213, v215, v217 & 1);
  v218 = v415;
  sub_1E65D9618();
  v326 = sub_1E65D8598();
  v325 = v219;
  v208(v218, v210);
  v220 = v416;
  sub_1E65D9618();
  sub_1E65D8588();
  v208(v220, v210);
  sub_1E65D9618();
  v221 = sub_1E65D8558();
  v208(v205, v210);
  v431 = v221;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752E8, &qword_1E65F15D8);
  sub_1E60EB6CC();
  v222 = sub_1E65E5E78();

  v223 = *(v222 + 16);
  if (v223)
  {
    v434 = MEMORY[0x1E69E7CC0];
    sub_1E601C734(0, v223, 0);
    v224 = v434;
    v392 = *(v406 + 16);
    v225 = (*(v406 + 80) + 32) & ~*(v406 + 80);
    v321[1] = v222;
    v226 = (v222 + v225);
    v391 = *(v406 + 72);
    v406 += 16;
    v390 = (v406 - 8);
    v389 = v404 + 32;
    v388 = xmmword_1E65F1570;
    v227 = v322;
    do
    {
      v424 = v226;
      v425 = v223;
      v228 = v426;
      v229 = v401;
      v230 = v392;
      (v392)(v426, v226, v401);
      v231 = v400;
      v230(v400, v228, v229);
      v422 = sub_1E65D7A78();
      v418 = v232;
      *&v417 = sub_1E65D7A98();
      v416 = v233;
      v415 = sub_1E65D7AA8();
      v414 = v234;
      v235 = v410;
      sub_1E65D7AB8();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DAC88();
      sub_1E65E3108();
      (v427)(v235, v413);
      (v394)(v398, v396, v395);
      swift_storeEnumTagMultiPayload();
      v236 = sub_1E65D7A88();
      v238 = v237;
      v431 = v236;
      v432 = v237;
      LOBYTE(v228) = v239 & 1;
      v433 = v239 & 1;
      v429 = v388;
      v430 = 1;
      sub_1E60EB730();
      sub_1E60EB784();
      sub_1E65D7FD8();
      sub_1E5F87058(v236, v238, v228);
      sub_1E65E2FC8();
      v240 = *v390;
      (*v390)(v231, v229);
      v240(v426, v229);
      v434 = v224;
      v242 = *(v224 + 2);
      v241 = *(v224 + 3);
      if (v242 >= v241 >> 1)
      {
        sub_1E601C734(v241 > 1, v242 + 1, 1);
        v224 = v434;
      }

      *(v224 + 2) = v242 + 1;
      (*(v404 + 32))(&v224[((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v242], v227, v399);
      v226 = v391 + v424;
      v223 = (v425 - 1);
    }

    while (v425 != 1);
    v396 = v224;

    v197 = v413;
    v210 = v376;
  }

  else
  {

    v396 = MEMORY[0x1E69E7CC0];
  }

  v243 = v336;
  sub_1E65D9618();
  v244 = v343;
  sub_1E65D85F8();
  v378(v243, v210);
  v245 = sub_1E65D8478();
  v246 = *(v245 - 8);
  v247 = *(v246 + 48);
  if (v247(v244, 1, v245) == 1)
  {
    sub_1E5DFE50C(v244, &qword_1ED0752D0, &qword_1E65F1598);
    v248 = 1;
    v249 = v365;
  }

  else
  {
    v250 = v365;
    sub_1E65D8448();
    v249 = v250;
    (*(v246 + 8))(v244, v245);
    v248 = 0;
  }

  v251 = v344;
  (*(v345 + 56))(v249, v248, 1, v346);
  v252 = v337;
  sub_1E65D9618();
  sub_1E65D85F8();
  v378(v252, v210);
  if (v247(v251, 1, v245) == 1)
  {
    sub_1E5DFE50C(v251, &qword_1ED0752D0, &qword_1E65F1598);
    v395 = 0;
    v394 = 0;
  }

  else
  {
    v395 = sub_1E65D8468();
    v394 = v253;
    (*(v246 + 8))(v251, v245);
  }

  v254 = v347;
  v255 = v338;
  sub_1E65D9618();
  sub_1E65D85C8();
  v378(v255, v210);
  v256 = sub_1E65D9678();
  v257 = *(v256 - 8);
  if ((*(v257 + 48))(v254, 1, v256) == 1)
  {
    sub_1E5DFE50C(v254, &qword_1ED0752C8, &unk_1E65F8500);
    v393 = 0;
    v392 = 0;
  }

  else
  {
    v393 = sub_1E65D9668();
    v392 = v258;
    (*(v257 + 8))(v254, v256);
  }

  v259 = v339;
  sub_1E65D9618();
  sub_1E65D8538();
  v260 = v378;
  v378(v259, v210);
  v261 = v340;
  sub_1E65D9618();
  sub_1E65D8578();
  v260(v261, v210);
  v262 = v341;
  sub_1E65D9618();
  v391 = sub_1E65D85A8();
  v390 = v263;
  v260(v262, v210);
  v264 = v377;
  v265 = v334;
  v334(v356, v373, v377);
  v265(v358, v370, v264);
  v265(v360, v349, v264);
  v266 = v342;
  sub_1E65D9618();
  v267 = sub_1E65D8638();
  v260(v266, v210);
  v268 = *(v267 + 16);
  if (!v268)
  {
LABEL_54:

    sub_1E65E2F98();
    v308 = v361[1];
    v309 = v377;
    v308(v373, v377);
    v308(v352, v309);
    v308(v351, v309);
    sub_1E5DFE50C(v375, &qword_1ED0752E0, &qword_1E65F15A0);
    v308(v374, v309);
    v308(v372, v309);
    v308(v371, v309);
    v308(v370, v309);
    return (v308)(v349, v309);
  }

  v434 = MEMORY[0x1E69E7CC0];
  sub_1E601C6F0(0, v268, 0);
  v269 = 0;
  v270 = v434;
  v414 = (v267 + ((*(v387 + 80) + 32) & ~*(v387 + 80)));
  v406 = v387 + 16;
  v424 = (v423 + 16);
  v425 = (v423 + 32);
  v418 = v324 + 8;
  v401 = (v423 + 56);
  v400 = (v423 + 48);
  v399 = (v323 + 56);
  v398 = (v387 + 8);
  v397 = (v386 + 32);
  v417 = xmmword_1E65F1580;
  v405 = v267;
  v404 = v268;
  while (1)
  {
    if (v269 >= *(v267 + 16))
    {
      goto LABEL_58;
    }

    v416 = v270;
    v415 = v269 + 1;
    v271 = *(v387 + 16);
    v272 = v407;
    v273 = v409;
    v267 = v406;
    v271(v407, &v414[*(v387 + 72) * v269], v409);
    v271(v408, v272, v273);
    v274 = sub_1E65DAD38();
    v275 = v274;
    v276 = v274 + 56;
    v277 = 1 << *(v274 + 32);
    v278 = v277 < 64 ? ~(-1 << v277) : -1;
    v279 = v278 & *(v274 + 56);
    v280 = (v277 + 63) >> 6;

    v282 = 0;
    v270 = v385;
    v426 = v281;
    if (!v279)
    {
      break;
    }

    while (1)
    {
      v251 = v282;
LABEL_43:
      v283 = v423;
      v284 = *(v275 + 6) + *(v423 + 72) * (__clz(__rbit64(v279)) | (v251 << 6));
      v285 = v419;
      (*(v423 + 16))(v419, v284, v197);
      v422 = *(v283 + 32);
      v422(v270, v285, v197);
      v286 = v197;
      v287 = v420;
      v288 = v270;
      sub_1E65DAC48();
      v289 = sub_1E65D9A68();
      v291 = v290;
      v293 = v292;
      (*v418)(v287, v421);
      v431 = v289;
      v432 = v291;
      v267 = v293 & 1;
      v433 = v267;
      v429 = v417;
      v430 = 1;
      sub_1E60EB7D8();
      sub_1E602B668();
      LOBYTE(v287) = sub_1E65D7FD8();
      sub_1E5F87058(v289, v291, v267);
      if (v287)
      {
        break;
      }

      v279 &= v279 - 1;
      (v427)(v288, v286);
      v282 = v251;
      v197 = v286;
      v270 = v288;
      v275 = v426;
      if (!v279)
      {
        goto LABEL_40;
      }
    }

    v295 = v384;
    v422(v384, v288, v286);
    v294 = 0;
    v197 = v286;
LABEL_47:
    v296 = 1;
    (*v401)(v295, v294, 1, v197);

    v297 = v403;
    sub_1E5DFD1CC(v295, v403, &qword_1ED0734E0, &qword_1E66012E0);
    if ((*v400)(v297, 1, v197) != 1)
    {
      v251 = v410;
      (*v425)(v410, v403, v197);
      v298 = v379;
      (*v424)(v379, v251, v197);
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DAC88();
      sub_1E65E3108();
      v299 = v298;
      v300 = v427;
      (v427)(v299, v197);
      v300(v251, v197);
      v296 = 0;
    }

    sub_1E5DFE50C(v295, &qword_1ED0734E0, &qword_1E66012E0);
    (*v399)(v402, v296, 1, v381);
    v301 = v408;
    sub_1E65DAD18();
    sub_1E65DACE8();
    sub_1E65DAD28();
    v302 = v382;
    sub_1E65E3148();
    v303 = *v398;
    v304 = v301;
    v305 = v409;
    (*v398)(v304, v409);
    v303(v407, v305);
    v270 = v416;
    v434 = v416;
    v307 = *(v416 + 2);
    v306 = *(v416 + 3);
    if (v307 >= v306 >> 1)
    {
      sub_1E601C6F0(v306 > 1, v307 + 1, 1);
      v270 = v434;
    }

    *(v270 + 2) = v307 + 1;
    (*(v386 + 32))(&v270[((*(v386 + 80) + 32) & ~*(v386 + 80)) + *(v386 + 72) * v307], v302, v383);
    v269 = v415;
    v197 = v413;
    v267 = v405;
    if (v415 == v404)
    {
      goto LABEL_54;
    }
  }

LABEL_40:
  while (1)
  {
    v251 = v282 + 1;
    if (__OFADD__(v282, 1))
    {
      break;
    }

    if (v251 >= v280)
    {

      v294 = 1;
      v295 = v384;
      goto LABEL_47;
    }

    v279 = *(v276 + 8 * v251);
    ++v282;
    if (v279)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
  result = (*(v267 + 8))(v251, v270);
  __break(1u);
  return result;
}

uint64_t sub_1E60EAD78()
{
  v1 = sub_1E65D8818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7A68();
  v81 = *(v5 - 1);
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DADF8();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v69 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v69 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v69 - v19;
  v20 = sub_1E65D7F08();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65D8658();
  v73 = v1;
  v74 = v0;
  v72 = v2;
  if (v27)
  {
    if (v25 == 2)
    {
      v70 = v25;
      v75 = v26;
      v81 = v20;
      v28 = sub_1E65D85D8();
      v29 = *(v28 + 16);
      if (v29)
      {
        v31 = *(v21 + 16);
        v30 = (v21 + 16);
        v32 = v30[64];
        v69 = v28;
        v33 = v28 + ((v32 + 32) & ~v32);
        v77 = *(v30 + 7);
        v78 = v31;
        v80 = v30;
        v76 = (v30 - 8);
        v34 = MEMORY[0x1E69E7CC0];
        v35 = v81;
        do
        {
          v78(v24, v33, v35);
          *v79 = 1;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_1E64F6308(0, v34[2] + 1, 1, v34);
          }

          v37 = v34[2];
          v36 = v34[3];
          if (v37 >= v36 >> 1)
          {
            v34 = sub_1E64F6308(v36 > 1, v37 + 1, 1, v34);
          }

          v34[2] = v37 + 1;
          v38 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v39 = *(v82 + 72);
          sub_1E60EB82C(v79, v34 + v38 + v39 * v37);
          *v18 = sub_1E65D7EE8();
          v18[1] = v40;
          swift_storeEnumTagMultiPayload();
          v42 = v34[2];
          v41 = v34[3];
          if (v42 >= v41 >> 1)
          {
            v34 = sub_1E64F6308(v41 > 1, v42 + 1, 1, v34);
          }

          v35 = v81;
          (*v76)(v24, v81);
          v34[2] = v42 + 1;
          sub_1E60EB82C(v18, v34 + v38 + v42 * v39);
          v33 += v77;
          --v29;
        }

        while (v29);

        sub_1E5F87058(v70, v75, 1);
        goto LABEL_25;
      }

LABEL_24:

      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }
  }

  else
  {
    sub_1E5F87058(v25, v26, 0);
  }

  v43 = sub_1E65D8548();
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_24;
  }

  v77 = *(v81 + 16);
  v78 = v15;
  v45 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v70 = v43;
  v46 = v43 + v45;
  v47 = *(v81 + 72);
  v81 += 16;
  v75 = (v81 - 8);
  v76 = v47;
  v34 = MEMORY[0x1E69E7CC0];
  v79 = v5;
  v48 = v80;
  do
  {
    v77(v48, v46, v5);
    v49 = v78;
    *v78 = 1;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1E64F6308(0, v34[2] + 1, 1, v34);
    }

    v51 = v34[2];
    v50 = v34[3];
    v52 = v80;
    if (v51 >= v50 >> 1)
    {
      v34 = sub_1E64F6308(v50 > 1, v51 + 1, 1, v34);
    }

    v34[2] = v51 + 1;
    v53 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v54 = *(v82 + 72);
    sub_1E60EB82C(v49, v34 + v53 + v54 * v51);
    *v12 = sub_1E65D7A58();
    v12[1] = v55;
    swift_storeEnumTagMultiPayload();
    v57 = v34[2];
    v56 = v34[3];
    if (v57 >= v56 >> 1)
    {
      v34 = sub_1E64F6308(v56 > 1, v57 + 1, 1, v34);
    }

    v58 = v52;
    v48 = v52;
    v5 = v79;
    (*v75)(v58, v79);
    v34[2] = v57 + 1;
    sub_1E60EB82C(v12, v34 + v53 + v57 * v54);
    v46 += v76;
    --v44;
  }

  while (v44);

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
  v59 = *(v82 + 72);
  v60 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1E65EA8E0;
  v62 = (v61 + v60);
  v63 = v71;
  sub_1E65D8628();
  v64 = sub_1E65D87E8();
  v66 = v65;
  (*(v72 + 8))(v63, v73);
  *v62 = v64;
  v62[1] = v66;
  swift_storeEnumTagMultiPayload();
  *(v62 + v59) = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E65D8618();
  *(v62 + 2 * v59) = v67;
  swift_storeEnumTagMultiPayload();
  v84 = v61;
  sub_1E5FA9E2C(v34);
  return v84;
}

uint64_t sub_1E60EB490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752E0, &qword_1E65F15A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60EB500@<X0>(uint64_t a1@<X8>)
{
  if (sub_1E65D9058() < 1)
  {
    v11 = sub_1E65E32A8();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    sub_1E65D9088();
    if (v2 <= 1.0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 1.0;
    }

    v4 = v3 * 100.0;
    v5 = v2 < 0.0;
    v6 = 0.0;
    if (!v5)
    {
      v6 = v4;
    }

    v7 = roundf(v6) / 100.0;
    if (v7 >= 1.0)
    {
      v8 = *MEMORY[0x1E699EBB0];
    }

    else
    {
      *a1 = v7;
      *(a1 + 8) = 0;
      v8 = *MEMORY[0x1E699EBB8];
    }

    v9 = sub_1E65E32A8();
    v10 = *(v9 - 8);
    (*(v10 + 104))(a1, v8, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

unint64_t sub_1E60EB6CC()
{
  result = qword_1ED0752F0;
  if (!qword_1ED0752F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0752E8, &qword_1E65F15D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0752F0);
  }

  return result;
}

unint64_t sub_1E60EB730()
{
  result = qword_1ED0752F8;
  if (!qword_1ED0752F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0752F8);
  }

  return result;
}

unint64_t sub_1E60EB784()
{
  result = qword_1ED075300;
  if (!qword_1ED075300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075300);
  }

  return result;
}

unint64_t sub_1E60EB7D8()
{
  result = qword_1ED075308;
  if (!qword_1ED075308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075308);
  }

  return result;
}

uint64_t sub_1E60EB82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DADF8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60EB890@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v4;
  v5 = type metadata accessor for CatalogService();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v9 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v31 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v10 = v1 + *(type metadata accessor for AppEnvironment() + 48);
  v32 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v30 = Description[2];
  v30(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, v5);
  v29 = v5;
  v12 = *(Description + 80);
  v13 = swift_allocObject();
  v33 = Description[4];
  v33(v13 + ((v12 + 16) & ~v12), &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075310, &qword_1E65F1610);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_1E65E4E68();
  v28 = v17;
  v18 = v35;
  v35[3] = v14;
  v18[4] = &off_1F5FAA810;
  *v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E65EA670;
  v20 = sub_1E65E60A8();
  v21 = v34;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v22 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v29;
  v30(v22, v32 + v31, v29);
  v24 = (v12 + 32) & ~v12;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v33(v26 + v24, v22, v23);
  *(v26 + v25) = v28;

  result = sub_1E6059EAC(0, 0, v21, &unk_1E65F1620, v26);
  *(v19 + 32) = result;
  v18[5] = v19;
  return result;
}

uint64_t sub_1E60EBC64(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E60EBC8C, 0, 0);
}

uint64_t sub_1E60EBC8C()
{
  v1 = v0[3];
  v2 = CatalogService.fetchRemoteCatalogProgramDetail.getter();
  v0[6] = v3;
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E60EBD8C;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v7);
}

uint64_t sub_1E60EBD8C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E60EBF04;
  }

  else
  {
    v3 = sub_1E60EBEA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E60EBEA0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E60EBF04()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}