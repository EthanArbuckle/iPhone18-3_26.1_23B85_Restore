uint64_t sub_22BC4D368()
{
  sub_22BB35458();
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2016);
  v3 = *(v0 + 2008);
  v4 = *(v0 + 2000);
  v5 = *(v0 + 1992);
  sub_22BC548CC();
  v6 = *(v0 + 1784);
  v7 = *(v0 + 1088);
  v8 = *(v0 + 1760);
  v9(v6);
  *(v0 + 1008) = v1;
  sub_22BB3B574();
  sub_22BB3B07C();
  sub_22BDBAB44();

  sub_22BDBAB64();
  swift_endAccess();

  v10 = *(v0 + 2232);
  v11 = *(v0 + 2216);
  sub_22BC5418C();
  v12 = *MEMORY[0x277D72160];
  v13 = sub_22BC541BC();
  v14(v13);
  v15 = swift_task_alloc();
  LOBYTE(v11) = sub_22BB39484(v15);

  v16 = sub_22BC53B4C();
  v17(v16);
  if (v11)
  {
    sub_22BBBEE60(*(v0 + 1072), v0 + 416, &qword_27D8E2B28, &unk_22BDBD230);
  }

  else
  {
    v18 = *(v0 + 1608);
    sub_22BDB63F4();
    sub_22BDB77C4();
    v19 = sub_22BDBB134();
    if (sub_22BB34888(v19))
    {
      v20 = sub_22BB37F30();
      sub_22BB3E4A8(v20);
      sub_22BB58D20();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      sub_22BB32238();
    }

    sub_22BC54640();
    v26 = sub_22BB2F0E0();
    v6(v26);
    sub_22BC548DC();
  }

  v27 = sub_22BB3370C();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_22BC4D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_22BC54114();
  sub_22BC54554();
  v89 = *(v60 + 2224);
  v90 = *(v60 + 2240);
  v62 = *(v60 + 2016);
  v88 = *(v60 + 1864);
  v63 = *(v60 + 1856);
  v86 = *(v60 + 1960);
  v87 = *(v60 + 1848);
  v82 = *(v60 + 1840);
  v83 = *(v60 + 1968);
  sub_22BBC77EC();
  v80 = v65;
  v81 = v64;
  sub_22BC53E9C();
  v84 = *(v60 + 1456);
  v85 = *(v60 + 1496);

  sub_22BB58728(v60 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  v66 = sub_22BB9753C();
  v67(v66, v58);
  v68 = *(v59 + 8);
  v69 = sub_22BB38518();
  v70(v69);
  v83(a43, v61);
  v86(v82, v81);
  (*(v63 + 8))(v88, v87);

  v90(v85, v84);
  v91 = *(v60 + 2216);
  sub_22BB37F98();
  sub_22BB58954();

  sub_22BB3ACAC();
  sub_22BC53D38();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v91, a55, a56, a57, a58);
}

uint64_t sub_22BC4D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_22BC54114();
  sub_22BC54554();
  v90 = v60[263];
  v91 = v60[281];
  sub_22BBBEAC4();
  v86 = v63;
  v87 = v62;
  v64 = v60[232];
  v88 = v60[231];
  v89 = v60[233];
  v65 = v60[230];
  v81 = v60[227];
  v82 = v60[226];
  sub_22BC53E9C();
  v84 = v60[187];
  v85 = v66;
  v83 = v60[182];
  sub_22BB58728((v60 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  v67 = sub_22BB9753C();
  v68(v67, v58);
  v69 = *(v59 + 8);
  v70 = sub_22BB38518();
  v71(v70);
  v86(a43, v61);
  v87(v85, v82);
  (*(v64 + 8))(v89, v88);
  v91(v84, v83);
  v92 = v60[262];
  sub_22BB37F98();
  sub_22BB58954();

  sub_22BB3ACAC();
  sub_22BC53D38();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v92, a55, a56, a57, a58);
}

uint64_t sub_22BC4F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_22BC54114();
  sub_22BC54554();
  v60 = v58[272];
  v61 = v58[195];
  sub_22BDB63F4();
  v62 = v60;
  v63 = sub_22BDB77C4();
  sub_22BDBB114();

  if (sub_22BC54EF8())
  {
    v64 = v58[272];
    sub_22BB31AD8();
    v65 = sub_22BB2F340();
    *v59 = 138412290;
    v66 = v64;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v67);
    sub_22BC53D60();
    _os_log_impl(v68, v69, v70, v71, v59, 0xCu);
    sub_22BB58728(v65, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB32238();
  }

  v146 = v58[282];
  v128 = v58[272];
  v134 = v58[269];
  v130 = v58[265];
  v126 = v58[247];
  sub_22BBBEAC4();
  v144 = v73;
  v145 = v72;
  v147 = v58[232];
  v148 = v58[231];
  v150 = v58[233];
  v143 = v58[230];
  sub_22BBC77EC();
  v141 = v74;
  v138 = v58[225];
  v139 = v75;
  v136 = v58[219];
  v137 = v58[220];
  v76 = v58[218];
  v135 = v58[217];
  v77 = v58[215];
  v132 = v58[214];
  v133 = v58[216];
  v78 = v58[195];
  v79 = v58[194];
  v80 = v58[193];
  v142 = v58[187];
  v81 = v58[183];
  v140 = v58[182];
  v82 = v58[181];
  v83 = v58[176];
  v84 = v63;
  v85 = v58[175];

  v86 = sub_22BB37C88();
  v126(v86);
  swift_willThrow();

  v134(v82, v85);
  sub_22BB58728((v58 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  (*(v77 + 8))(v133, v132);
  (*(v76 + 8))(v136, v135);
  v144(v138, v137);
  v87 = sub_22BC54528();
  v145(v87);
  (*(v147 + 8))(v150, v148);
  v88 = *(v81 + 8);
  v89 = sub_22BC54D90();
  v90(v89);
  v151 = v58[272];
  sub_22BB37F98();
  v103 = v92;
  v104 = v91;
  v105 = v58[207];
  v106 = v58[206];
  v107 = v58[205];
  v108 = v58[204];
  v109 = v58[203];
  v110 = v58[202];
  v111 = v58[201];
  v112 = v58[200];
  v113 = v58[199];
  v114 = v58[198];
  v115 = v58[197];
  v116 = v58[196];
  v117 = v58[195];
  v118 = v58[192];
  v119 = v58[191];
  v120 = v58[188];
  v121 = v58[187];
  v122 = v58[186];
  v123 = v58[185];
  v124 = v58[184];
  v125 = v58[181];
  v127 = v58[180];
  v129 = v58[179];
  v131 = v58[178];
  sub_22BB3AEE0();
  v149 = v93;

  sub_22BB2F09C();
  sub_22BC53D38();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v127, v129, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v149, v151, a54, a55, a56, a57, a58);
}

BOOL sub_22BC4FA38(uint64_t a1)
{
  v1 = sub_22BC54440(a1);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v14 = sub_22BBC3B44(v6, v7, v8, v9, v10, v11, v12, v13, v34);
  v15(v14);
  sub_22BB3182C();
  v16 = sub_22BDBB6A4();
  if (v16)
  {
    v17 = v16;
    v18 = *(v3 + 8);
    v19 = sub_22BB3182C();
    v20(v19);
  }

  else
  {
    sub_22BB31F54();
    sub_22BB369E0();
    v17 = swift_allocError();
    v21 = *(v3 + 32);
    sub_22BB500B4();
    v22();
  }

  v23 = sub_22BDB4234();

  v24 = [v23 domain];
  v25 = sub_22BDBABF4();
  v27 = v26;

  v28 = *MEMORY[0x277D23A90];
  if (v25 == sub_22BDBABF4() && v27 == v29)
  {
  }

  else
  {
    v31 = sub_22BC54B28();

    if ((v31 & 1) == 0)
    {

      return 0;
    }
  }

  v33 = [v23 code];

  return v33 == 2014;
}

uint64_t sub_22BC4FBD0()
{
  sub_22BB2F0D4();
  v1[14] = v2;
  v1[15] = v0;
  sub_22BB5413C();
  v1[16] = v3;
  v4 = sub_22BDB8C14();
  v1[17] = v4;
  sub_22BB30434(v4);
  v1[18] = v5;
  v7 = *(v6 + 64);
  v1[19] = sub_22BB30ACC();
  v8 = sub_22BDB77D4();
  v1[20] = v8;
  sub_22BB30434(v8);
  v1[21] = v9;
  v11 = *(v10 + 64);
  v1[22] = sub_22BB30ACC();
  v12 = sub_22BDB4C34();
  v1[23] = v12;
  sub_22BB30434(v12);
  v1[24] = v13;
  v15 = *(v14 + 64);
  v1[25] = sub_22BB3307C();
  v1[26] = swift_task_alloc();
  v16 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22BC4FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v21 = v20[26];
  v22 = v20[23];
  v23 = v20[24];
  v24 = v20[15];
  v25 = v20[16];
  v26 = v20[14];
  sub_22BDB8BF4();
  v27 = *(*v24 + 128);
  v20[27] = v27;
  sub_22BB31B88();
  swift_beginAccess();
  v28 = *(v24 + v27);
  v31 = v25 + 80;
  v30 = *(v25 + 80);
  v29 = *(v31 + 8);
  sub_22BC541B0();
  swift_getAssociatedTypeWitness();
  sub_22BB331D4();
  swift_getAssociatedConformanceWitness();
  sub_22BC54330();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_22BC54ED8();
  sub_22BB3B07C();
  v34 = type metadata accessor for ToolExecutionEventStream();

  sub_22BB69984();
  WitnessTable = swift_getWitnessTable();
  v20[2] = AssociatedTypeWitness;
  v20[3] = v34;
  v20[4] = v33;
  v20[5] = WitnessTable;
  v20[28] = type metadata accessor for ToolExecution();
  sub_22BB3A594();
  v20[29] = sub_22BB8E56C(v36, v37);
  sub_22BB52868();
  sub_22BDBAB54();

  v38 = *(v23 + 8);
  v39 = sub_22BB30AE4();
  v38(v39);
  v40 = v20[12];
  v20[30] = v40;
  if (v40)
  {
    v41 = swift_task_alloc();
    v20[31] = v41;
    *v41 = v20;
    v41[1] = sub_22BC5011C;
    sub_22BB3CEF4();

    return sub_22BC9607C(v42, v43);
  }

  else
  {
    v46 = v20[22];
    v48 = v20[18];
    v47 = v20[19];
    v49 = v20[17];
    v50 = v20[14];
    sub_22BDB63F4();
    v51 = *(v48 + 16);
    v52 = sub_22BB33728();
    v53(v52);
    v54 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB379BC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v20[25];
      v57 = v20[23];
      a14 = v20[21];
      a15 = v20[20];
      a16 = v20[22];
      HIDWORD(a11) = v46;
      v58 = v20[18];
      a10 = v20[19];
      a12 = v20[17];
      v59 = sub_22BB31AD8();
      a13 = sub_22BB314C8();
      a17 = a13;
      *v59 = 136315138;
      sub_22BDB8BF4();
      sub_22BB3A594();
      sub_22BB8E56C(v60, v61);
      sub_22BDBB684();
      sub_22BC54D78();
      v62 = sub_22BB2F0E0();
      v38(v62);
      (*(v58 + 8))(a10, a12);
      v63 = sub_22BB3A19C();
      sub_22BB32EE0(v63, v64, v65);
      sub_22BC54B88();
      *(v59 + 4) = v56;
      sub_22BC54ADC(&dword_22BB2C000, v66, v46, "DefaultRuntime: Ignoring cancellation request since there's no current execution for %s");
      sub_22BC53B6C();
      sub_22BB2F194();

      (*(a14 + 8))(a16, a15);
    }

    else
    {
      v68 = v20[21];
      v67 = v20[22];
      v70 = v20[19];
      v69 = v20[20];
      v71 = v20[17];
      v72 = v20[18];

      v73 = sub_22BC53B4C();
      v74(v73);
      v75 = *(v68 + 8);
      v76 = sub_22BB2F3F0();
      v77(v76);
    }

    v79 = v20[25];
    v78 = v20[26];
    v80 = v20[22];
    v81 = v20[19];

    sub_22BB360FC();
    sub_22BB3CEF4();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_22BC5011C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 248);
  v3 = *(v1 + 120);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BC50214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v12[29];
  v13 = v12[30];
  v16 = v12[27];
  v15 = v12[28];
  v17 = v12[25];
  v18 = v12[23];
  v19 = v12[14];
  v20 = v12[15];
  sub_22BDB8BF4();
  v12[13] = 0;
  sub_22BB3B574();
  sub_22BB3B07C();
  sub_22BDBAB44();
  sub_22BDBAB64();
  swift_endAccess();

  v22 = v12[25];
  v21 = v12[26];
  v23 = v12[22];
  v24 = v12[19];

  sub_22BB360FC();
  sub_22BB33430();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_22BC502F8()
{
  sub_22BB2F35C();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  sub_22BC54414();
  v4 = sub_22BDB4C84();
  v1[9] = v4;
  sub_22BB30434(v4);
  v1[10] = v5;
  v7 = *(v6 + 64);
  v1[11] = sub_22BB30ACC();
  v8 = sub_22BDB77D4();
  v1[12] = v8;
  sub_22BB30434(v8);
  v1[13] = v9;
  v11 = *(v10 + 64);
  v1[14] = sub_22BB30ACC();
  v12 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  v1[15] = sub_22BB30ACC();
  v15 = sub_22BBE6DE0(&qword_27D8E27C8, &qword_22BDBCDF8);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  v1[16] = sub_22BB30ACC();
  v18 = sub_22BBE6DE0(&qword_27D8E27D0, &unk_22BDBCE00);
  sub_22BB2F0C8(v18);
  v20 = *(v19 + 64);
  v1[17] = sub_22BB30ACC();
  v21 = sub_22BDBA594();
  v1[18] = v21;
  sub_22BB30434(v21);
  v1[19] = v22;
  v24 = *(v23 + 64);
  v1[20] = sub_22BB30ACC();
  v25 = sub_22BDB5404();
  v1[21] = v25;
  sub_22BB30434(v25);
  v1[22] = v26;
  v28 = *(v27 + 64);
  v1[23] = sub_22BBB79B0();
  v1[24] = swift_task_alloc();
  sub_22BB36F5C();
  v1[25] = *(v29 + 88);
  sub_22BB36F5C();
  v1[26] = *(v30 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[27] = AssociatedTypeWitness;
  sub_22BB30434(AssociatedTypeWitness);
  v1[28] = v32;
  v34 = *(v33 + 64);
  v1[29] = sub_22BB30ACC();
  v35 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_22BC505A0()
{
  sub_22BB30F5C();
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = *(v0[25] + 32);
  v5 = v0[8] + *(*v0[8] + 104);
  v6 = sub_22BB2F0E0();
  v7(v6);
  sub_22BB500B4();
  v8 = *(swift_getAssociatedConformanceWitness() + 80);
  sub_22BB36CE0();
  v17 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_22BC50714;
  v13 = v0[29];
  v14 = v0[27];
  v15 = sub_22BB3487C(v0[7]);

  return v17(v15);
}

uint64_t sub_22BC50714()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 240);
  *v4 = *v2;
  *(v3 + 248) = v0;

  sub_22BB33218();
  v7 = *(v6 + 64);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC50828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  sub_22BB58688();
  v17 = v16[24];
  v18 = v16[22];
  v65 = v16[21];
  v19 = v16[19];
  v20 = v16[20];
  v21 = v16[17];
  v22 = v16[18];
  v23 = v16[16];
  v24 = sub_22BDBA514();
  v25 = swift_allocBox();
  v26 = *MEMORY[0x277D729A0];
  sub_22BB30474(v24);
  (*(v27 + 104))();
  *v20 = v25;
  (*(v19 + 104))(v20, *MEMORY[0x277D72A58], v22);
  v28 = sub_22BDB4D94();
  sub_22BB3591C(v21, v29, v30, v28);
  sub_22BDB4D54();
  sub_22BB30B28();
  sub_22BC54CF4(v31, v32, v33, v34);
  sub_22BDB4DD4();
  (*(v18 + 104))(v17, *MEMORY[0x277D1CBF0], v65);
  sub_22BC54660();
  v61 = v35;
  v62 = v36;
  v37 = v16[15];
  v63 = v38;
  v64 = v16[14];
  v66 = v16[11];
  v39 = v16[6];
  v40 = *(v22 + 16);
  sub_22BB72044();
  v41();
  sub_22BDB53F4();
  sub_22BC54210();
  sub_22BB30B28();
  sub_22BB336D0(v42, v43, v44, v45);
  sub_22BB371F0();
  sub_22BDB90A4();
  v46 = *(v22 + 8);
  v47 = sub_22BB2F324();
  v48(v47);
  v49 = *(v23 + 8);
  v50 = sub_22BB2F12C();
  v51(v50);

  sub_22BB360FC();
  sub_22BB32660();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, v61, v62, v63, v64, v66, a14, a15, a16);
}

uint64_t sub_22BC50A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v22 = v20[7];
  v23 = sub_22BDBA184();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    v27 = v20[31];
    swift_getErrorValue();
    v28 = v20[2];
    v29 = v20[4];
    if (sub_22BC308E0(v20[3]))
    {
      v30 = v20[31];
      v32 = v20[28];
      v31 = v20[29];
      v33 = v20[27];
      v34 = v20[24];
      a10 = v20[23];
      a11 = v20[20];
      v92 = v20[17];
      v93 = v20[16];
      v94 = v20[15];
      v95 = v20[14];
      v96 = v20[11];
      type metadata accessor for RuntimeError();
      sub_22BB326C8();
      sub_22BB8E56C(v35, v36);
      sub_22BC54D34();
      sub_22BB369E0();
      swift_allocError();
      *v37 = v25;
      v37[1] = v26;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v38 = *(v32 + 8);
      v39 = sub_22BB331D4();
      v40(v39);

      sub_22BB2F09C();
      goto LABEL_8;
    }
  }

  v41 = v20[31];
  v42 = v20[14];
  sub_22BDB63F4();
  v43 = v41;
  v44 = sub_22BDB77C4();
  sub_22BDBB114();

  if (sub_22BC54EF8())
  {
    v45 = v20[31];
    sub_22BB31AD8();
    v46 = sub_22BB2F340();
    *v21 = 138412290;
    v47 = v45;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v48);
    sub_22BC53D60();
    _os_log_impl(v49, v50, v51, v52, v21, 0xCu);
    sub_22BB58728(v46, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB32238();
  }

  v53 = v20[31];
  v54 = v20[24];
  v55 = v20[22];
  v97 = v20[21];
  v56 = v44;
  v57 = v20[13];
  v58 = v20[14];
  v60 = v20[11];
  v59 = v20[12];
  v62 = v20[9];
  v61 = v20[10];

  v63 = *(v57 + 8);
  v64 = sub_22BB32E04();
  v65(v64);
  (*(v61 + 104))(v60, *MEMORY[0x277D1C3A0], v62);
  sub_22BDB4CC4();

  (*(v55 + 104))(v54, *MEMORY[0x277D1CBE8], v97);
  sub_22BC54660();
  v92 = v66;
  v93 = v67;
  v68 = v20[15];
  v94 = v69;
  v95 = v20[14];
  v96 = v20[11];
  v70 = v20[6];
  v71 = *(v59 + 16);
  sub_22BB72044();
  v72();
  sub_22BDB53F4();
  sub_22BC54210();
  sub_22BB30B28();
  sub_22BB336D0(v73, v74, v75, v76);
  sub_22BB371F0();
  sub_22BDB90A4();
  v77 = *(v59 + 8);
  v78 = sub_22BB2F324();
  v79(v78);
  v80 = *(v58 + 8);
  v81 = sub_22BB2F12C();
  v82(v81);

  sub_22BB360FC();
LABEL_8:
  sub_22BB3CEF4();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, v92, v93, v94, v95, v96, a17, a18, a19, a20);
}

uint64_t sub_22BC50DC0()
{
  sub_22BB2F35C();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  sub_22BC54414();
  v5 = sub_22BDBA634();
  v1[16] = v5;
  sub_22BB30434(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = sub_22BBB79B0();
  v1[19] = swift_task_alloc();
  v9 = sub_22BDBA424();
  v1[20] = v9;
  sub_22BB30434(v9);
  v1[21] = v10;
  v12 = *(v11 + 64);
  v1[22] = sub_22BB30ACC();
  sub_22BB36F5C();
  v1[23] = *(v13 + 88);
  sub_22BB36F5C();
  v1[24] = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[25] = AssociatedTypeWitness;
  sub_22BB30434(AssociatedTypeWitness);
  v1[26] = v16;
  v18 = *(v17 + 64);
  v1[27] = sub_22BB30ACC();
  v19 = sub_22BDBA5C4();
  v1[28] = v19;
  sub_22BB30434(v19);
  v1[29] = v20;
  v22 = *(v21 + 64);
  v1[30] = sub_22BB30ACC();
  v23 = sub_22BDBA594();
  v1[31] = v23;
  sub_22BB30434(v23);
  v1[32] = v24;
  v26 = *(v25 + 64);
  v1[33] = sub_22BB3307C();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v27 = sub_22BDB77D4();
  v1[38] = v27;
  sub_22BB30434(v27);
  v1[39] = v28;
  v30 = *(v29 + 64);
  v1[40] = sub_22BB3307C();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v31 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_22BC51078()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v9 = v0[13];
  v8 = v0[14];
  sub_22BDB63F4();
  v0[43] = *(v4 + 16);
  v0[44] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10 = sub_22BC54A0C();
  v106 = v11;
  (v11)(v10);
  (*(v6 + 16))(v5, v8, v7);
  v12 = sub_22BDB77C4();
  v13 = sub_22BDBB134();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[37];
  v18 = v0[31];
  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[30];
  v22 = v0[28];
  v104 = v22;
  v105 = v0[38];
  if (v14)
  {
    v103 = v0[42];
    v23 = sub_22BB3B778();
    sub_22BB3E490();
    *v23 = 136315394;
    sub_22BDBA554();
    v102 = v13;
    v24 = *(v19 + 8);
    v25 = sub_22BB2F324();
    v24(v25);
    v26 = sub_22BB8E9D0();
    sub_22BB32EE0(v26, v27, v28);
    sub_22BC54D6C();

    *(v23 + 4) = v17;
    *(v23 + 12) = 2080;
    sub_22BDBA5A4();
    sub_22BC54A30();
    v29 = sub_22BB9753C();
    v30(v29, v104);
    v31 = sub_22BB2F324();
    sub_22BB32EE0(v31, v32, v33);
    sub_22BB371E4();

    *(v23 + 14) = v21;
    _os_log_impl(&dword_22BB2C000, v12, v102, "DefaultRuntime: Converting %s to %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_22BB89BBC();
    sub_22BB2F194();

    v34 = *(v16 + 8);
    v34(v103, v105);
  }

  else
  {

    v35 = sub_22BB9753C();
    v36(v35, v104);
    v24 = *(v19 + 8);
    v37 = sub_22BB2F324();
    v24(v37);
    v34 = *(v16 + 8);
    v34(v15, v105);
  }

  v0[45] = v34;
  v0[46] = v24;
  v39 = v0[35];
  v38 = v0[36];
  v40 = v0[31];
  v41 = v0[32];
  v42 = v0[27];
  v43 = v0[13];
  v44 = v0[15] + *(*v0[15] + 104);
  (*(v0[23] + 32))(v0[24]);
  sub_22BC53CBC();
  v106();
  v45 = sub_22BB73B58();
  (v106)(v45);
  v46 = *(v41 + 88);
  v47 = sub_22BB2F0E0();
  if (v48(v47) == *MEMORY[0x277D729F8])
  {
    v49 = v0[41];
    v50 = v0[35];
    v52 = v0[21];
    v51 = v0[22];
    v53 = v0[20];
    (*(v0[32] + 96))(v50, v0[31]);
    v54 = *v50;
    swift_projectBox();
    v55 = *(v52 + 16);
    v56 = sub_22BC53C5C();
    v57(v56);

    sub_22BDB63F4();
    v58 = sub_22BDB77C4();
    v59 = sub_22BDBB134();
    if (sub_22BB333C0(v59))
    {
      v60 = sub_22BB37F30();
      sub_22BB360F0(v60);
      sub_22BB379D4();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      sub_22BB35600();
    }

    v66 = v0[41];
    v67 = v0[38];
    v68 = v0[39];
    v70 = v0[24];
    v69 = v0[25];
    v71 = v0[23];

    v72 = sub_22BB30AE4();
    (v34)(v72);
    sub_22BC53CBC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v74 = *(AssociatedConformanceWitness + 64);
    sub_22BB36CE0();
    v107 = (v75 + *v75);
    v77 = *(v76 + 4);
    swift_task_alloc();
    sub_22BB30B34();
    v0[47] = v78;
    *v78 = v79;
    v78[1] = sub_22BC51644;
    v80 = v0[34];
    v81 = v0[27];
    v82 = v0[25];
    v83 = v0[22];

    return v107(v80, v83, v82, AssociatedConformanceWitness);
  }

  else
  {
    v85 = v0[32] + 8;
    (v24)(v0[35], v0[31]);
    v87 = v0[43];
    v86 = v0[44];
    v88 = v0[36];
    v89 = v0[33];
    v90 = v0[31];
    v92 = v0[24];
    v91 = v0[25];
    v93 = v0[23];
    sub_22BB31B88();
    swift_beginAccess();
    v94 = sub_22BB52868();
    v87(v94);
    sub_22BC53CBC();
    v95 = *(swift_getAssociatedConformanceWitness() + 88);
    sub_22BB36CE0();
    v108 = (v96 + *v96);
    v98 = *(v97 + 4);
    swift_task_alloc();
    sub_22BB30B34();
    v0[49] = v99;
    *v99 = v100;
    v101 = sub_22BC53BA0(v99);

    return v108(v101);
  }
}

uint64_t sub_22BC51644()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 376);
  *v4 = *v2;
  *(v3 + 384) = v0;

  sub_22BB33218();
  v7 = *(v6 + 120);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC51758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22BB974BC();
  a23 = v25;
  a24 = v26;
  sub_22BB58688();
  a22 = v24;
  v27 = v24[40];
  (*(v24[32] + 40))(v24[36], v24[34], v24[31]);
  sub_22BDB63F4();
  v28 = sub_22BDB77C4();
  v29 = sub_22BDBB134();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v24[39];
    v31 = v24[38];
    v32 = v24[36];
    v33 = v24[21];
    v73 = v24[22];
    v74 = v24[45];
    a9 = v24[40];
    a10 = v24[20];
    v34 = sub_22BB31AD8();
    a13 = sub_22BB314C8();
    *v34 = 136315138;
    sub_22BB31B88();
    swift_beginAccess();
    v35 = sub_22BDBA554();
    v37 = sub_22BB32EE0(v35, v36, &a13);

    *(v34 + 4) = v37;
    _os_log_impl(&dword_22BB2C000, v28, v29, "DefaultRuntime: Entity resolved: %s", v34, 0xCu);
    sub_22BC54130();
    sub_22BB38680();

    v74(a9, v31);
    (*(v33 + 8))(v73, a10);
  }

  else
  {
    v38 = v24[45];
    v40 = v24[39];
    v39 = v24[40];
    v41 = v24[38];
    v43 = v24[21];
    v42 = v24[22];
    v44 = v24[20];

    v45 = sub_22BB2F3F0();
    v38(v45);
    v46 = sub_22BB51830();
    v47(v46);
  }

  v49 = v24[43];
  v48 = v24[44];
  v50 = v24[36];
  v51 = v24[33];
  v52 = v24[31];
  v54 = v24[24];
  v53 = v24[25];
  v55 = v24[23];
  sub_22BB31B88();
  swift_beginAccess();
  v56 = sub_22BB52868();
  v49(v56);
  sub_22BC53CBC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = *(AssociatedConformanceWitness + 88);
  sub_22BB36CE0();
  v75 = v59 + *v59;
  v61 = *(v60 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v24[49] = v62;
  *v62 = v63;
  sub_22BC53BA0(v62);
  sub_22BB32660();

  return v69(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, AssociatedConformanceWitness + 88, v75, a13, a14, a15, a16);
}

uint64_t sub_22BC519E0()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[49];
  *v4 = *v1;
  v3[50] = v0;

  v6 = v2[46];
  v7 = v2[33];
  v8 = v2[32];
  v9 = v2[31];
  v10 = v2[15];
  v11 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v3[52] = v11;
    v6(v7, v9);
    v12 = sub_22BC51DC8;
  }

  else
  {
    v3[51] = v11;
    v6(v7, v9);
    v12 = sub_22BC51B80;
  }

  return MEMORY[0x2822009F8](v12, v10, 0);
}

uint64_t sub_22BC51B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v19 = v18[51];
  v20 = v18[46];
  v22 = v18[41];
  v21 = v18[42];
  v23 = v18[40];
  v25 = v18[36];
  v24 = v18[37];
  v37 = v18[35];
  v38 = v18[34];
  v26 = v18[31];
  v39 = v18[33];
  v40 = v18[30];
  v27 = v18[22];
  v41 = v27;
  v42 = v18[19];
  v43 = v18[18];
  (*(v18[26] + 8))(v18[27], v18[25]);
  v20(v25, v26);

  sub_22BB360FC();
  sub_22BB35ED4();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_22BC51CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  sub_22BB58688();
  v17 = v16[46];
  v18 = v16[36];
  v19 = v16[31];
  v20 = v16[32];
  v22 = v16[26];
  v21 = v16[27];
  v23 = v16[25];
  (*(v16[21] + 8))(v16[22], v16[20]);
  v24 = sub_22BB2F184();
  v25(v24);
  v26 = sub_22BB2F324();
  v17(v26);
  v27 = v16[48];
  sub_22BC54508();
  v38 = v16[22];
  v39 = v16[19];
  v40 = v16[18];
  v41 = v28;

  sub_22BB2F09C();
  sub_22BB32660();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, a14, a15, a16);
}

uint64_t sub_22BC51DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  sub_22BB58688();
  v17 = v16[50];
  swift_getErrorValue();
  v18 = v16[5];
  v19 = v16[7];
  if (sub_22BC308E0(v16[6]))
  {
    v20 = v16[36];
    v22 = v16[18];
    v21 = v16[19];
    v23 = v16[16];
    v24 = v16[17];
    sub_22BDBA524();
    sub_22BDBA624();
    v25 = *(v24 + 8);
    v26 = sub_22BB33728();
    v25(v26);
    v27 = *(v24 + 88);
    v28 = sub_22BB2F0E0();
    v30 = v29(v28);
    v31 = v16[50];
    v75 = v16[46];
    v77 = v16[52];
    v32 = v16[36];
    v73 = v16[31];
    v34 = v16[26];
    v33 = v16[27];
    v35 = v16[25];
    v36 = v16[18];
    if (v30 == *MEMORY[0x277D72D28])
    {
      v37 = v16[16];
      v38 = sub_22BC54A3C(v16[17]);
      v39(v38);
      v40 = *v36;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);

      type metadata accessor for RuntimeError();
      sub_22BB326C8();
      sub_22BB8E56C(v43, v44);
      sub_22BB369E0();
      v45 = swift_allocError();
      *v46 = v42;
      v46[1] = v41;
      swift_storeEnumTagMultiPayload();
      v79 = v45;
      swift_willThrow();

      v47 = *(v34 + 8);
      v48 = sub_22BB3B528();
      v49(v48);
      v75(v32, v73);
      goto LABEL_7;
    }

    (v25)(v16[18], v16[16]);
    swift_willThrow();
    v61 = *(v34 + 8);
    v62 = sub_22BB3B528();
    v63(v62);
    v75(v32, v73);
  }

  else
  {
    v50 = v16[52];
    v51 = v16[50];
    v52 = v16[46];
    v53 = v16[36];
    v54 = v16[31];
    v56 = v16[26];
    v55 = v16[27];
    v57 = v16[25];
    swift_willThrow();
    v58 = sub_22BB51830();
    v59(v58);
    v60 = sub_22BB2F324();
    v52(v60);
  }

  v79 = v16[50];
LABEL_7:
  sub_22BC54508();
  v74 = v16[22];
  v76 = v16[19];
  v78 = v16[18];

  sub_22BB2F09C();
  sub_22BB32660();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, v74, v76, v78, v79, a13, a14, a15, a16);
}

void sub_22BC52088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v23;
  a23 = v24;
  v113 = v25;
  v27 = v26;
  v28 = sub_22BDB7614();
  v29 = sub_22BB30444(v28);
  v111 = v30;
  v112 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  v110 = v34 - v33;
  v35 = sub_22BDB4C84();
  v36 = sub_22BB30444(v35);
  v114 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v42 = v41 - v40;
  v43 = sub_22BDBA0C4();
  v44 = sub_22BB30444(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB30574();
  v49 = v46[2];
  v50 = sub_22BC54A0C();
  v49(v50);
  v51 = v46[11];
  v52 = sub_22BB37C88();
  v54 = v53(v52);
  if (v54 == *MEMORY[0x277D72388])
  {
    v55 = *MEMORY[0x277D1CCE8];
    v56 = sub_22BDB5484();
    sub_22BB30ED8(v56);
    v58 = *(v57 + 104);
    v59 = sub_22BB2F324();
    v60(v59);
    v61 = MEMORY[0x277D1CC20];
LABEL_13:
    sub_22BC54D60(v61);
    v70 = sub_22BDB5414();
    sub_22BB30ED8(v70);
    v72 = *(v71 + 104);
    v73 = sub_22BB2F324();
    v74(v73);
    v63 = MEMORY[0x277D1CBA0];
    goto LABEL_14;
  }

  if (v54 == *MEMORY[0x277D72310])
  {
    v62 = MEMORY[0x277D1C388];
LABEL_5:
    (*(v114 + 104))(v42, *v62, v35);
    sub_22BDB4CC4();
    v63 = MEMORY[0x277D1CBE8];
LABEL_14:
    sub_22BC54D60(v63);
    v75 = sub_22BDB5404();
    sub_22BB30ED8(v75);
    v77 = *(v76 + 104);
    v78 = sub_22BB2F324();
    v79(v78);
    goto LABEL_15;
  }

  if (v54 == *MEMORY[0x277D72380])
  {
    v64 = MEMORY[0x277D1C5D8];
LABEL_12:
    sub_22BC54D60(v64);
    v65 = sub_22BDB4F04();
    sub_22BB30ED8(v65);
    v67 = *(v66 + 104);
    v68 = sub_22BB2F324();
    v69(v68);
    v61 = MEMORY[0x277D1CC18];
    goto LABEL_13;
  }

  if (v54 == *MEMORY[0x277D722D8])
  {
    v64 = MEMORY[0x277D1C5E0];
    goto LABEL_12;
  }

  if (v54 == *MEMORY[0x277D72330])
  {
    v64 = MEMORY[0x277D1C5E8];
    goto LABEL_12;
  }

  if (v54 == *MEMORY[0x277D72300])
  {
    v80 = MEMORY[0x277D1CF28];
LABEL_32:
    sub_22BC54D60(v80);
    v81 = sub_22BDB5934();
    sub_22BB30ED8(v81);
    v83 = *(v82 + 104);
    v84 = sub_22BB2F324();
    v85(v84);
    v61 = MEMORY[0x277D1CC10];
    goto LABEL_13;
  }

  if (v54 == *MEMORY[0x277D72358])
  {
    v80 = MEMORY[0x277D1CF58];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72370])
  {
    v80 = MEMORY[0x277D1CF20];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72348])
  {
    v80 = MEMORY[0x277D1CF48];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72308])
  {
    v80 = MEMORY[0x277D1CF30];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72350])
  {
    v80 = MEMORY[0x277D1CF50];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72328])
  {
    v80 = MEMORY[0x277D1CF38];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72340])
  {
    v80 = MEMORY[0x277D1CF40];
    goto LABEL_32;
  }

  if (v54 == *MEMORY[0x277D72368])
  {
    v62 = MEMORY[0x277D1C408];
    goto LABEL_5;
  }

  if (v54 == *MEMORY[0x277D72320])
  {
    v62 = MEMORY[0x277D1C3D8];
    goto LABEL_5;
  }

  if (v54 == *MEMORY[0x277D722E0])
  {
    v62 = MEMORY[0x277D1C3A8];
    goto LABEL_5;
  }

  if (v54 == *MEMORY[0x277D72338])
  {
    v62 = MEMORY[0x277D1C3E0];
    goto LABEL_5;
  }

  if (v54 == *MEMORY[0x277D722F0])
  {
    v62 = MEMORY[0x277D1C390];
    goto LABEL_5;
  }

  if (v54 == *MEMORY[0x277D722F8])
  {
    v62 = MEMORY[0x277D1C398];
    goto LABEL_5;
  }

  if (v54 == *MEMORY[0x277D72390])
  {
    sub_22BDBA0D4();
    sub_22BC53E20();
    sub_22BB8E56C(v86, v87);
    sub_22BC5436C();
    sub_22BB369E0();
    v88 = swift_allocError();
    (v49)(v89, v27, v43);
    v90 = *MEMORY[0x277D723A8];
    sub_22BB34E9C();
    v92 = *(v91 + 104);
    v93 = sub_22BB3E460();
    v94(v93);
    v95 = v88;
    swift_willThrow();
  }

  else
  {
    if (v54 == *MEMORY[0x277D72360])
    {
      v62 = MEMORY[0x277D1C3E8];
      goto LABEL_5;
    }

    if (v54 == *MEMORY[0x277D72378])
    {
      v62 = MEMORY[0x277D1C410];
      goto LABEL_5;
    }

    if (v54 == *MEMORY[0x277D722E8])
    {
      v62 = MEMORY[0x277D1C3B8];
      goto LABEL_5;
    }

    if (v54 == *MEMORY[0x277D72318])
    {
      v62 = MEMORY[0x277D1C3D0];
      goto LABEL_5;
    }

    v99 = sub_22BDBA0D4();
    sub_22BC53E20();
    sub_22BB8E56C(v100, v101);
    sub_22BB3E374();
    v102 = swift_allocError();
    v104 = v103;
    (v49)(v103, v27, v43);
    v105 = *MEMORY[0x277D723A8];
    sub_22BB30474(v99);
    (*(v106 + 104))(v104);
    v95 = v102;
    swift_willThrow();
    v107 = v46[1];
    v108 = sub_22BB37C88();
    v109(v108);
  }

  sub_22BBBEE60(v113, v118, &dword_27D8E2F50, &unk_22BDBDEA0);
  if (v119)
  {
    v96 = sub_22BB69FEC(v118, v119);
    sub_22BB690EC(v96, v115);
    v97 = v116;
    v98 = v117;
    sub_22BB69FEC(v115, v116);
    a13 = 0;
    sub_22BDB7604();
    (*(v98 + 40))(&a13, v95, v110, v97, v98);
    (*(v111 + 8))(v110, v112);
    sub_22BB32FA4(v115);
    sub_22BB32FA4(v118);
  }

  else
  {
    sub_22BB58728(v118, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  swift_willThrow();
LABEL_15:
  sub_22BB376A8();
}

uint64_t sub_22BC52874()
{
  v1 = sub_22BBE6DE0(&qword_27D8E2F40, &qword_22BDCFFE0);
  v2 = sub_22BB2F0C8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  sub_22BB5413C();
  v8 = (v0 + *(v7 + 120));
  v9 = v8[4];
  sub_22BB69FEC(v8, v8[3]);
  if (sub_22BDB7E24())
  {
    v10 = 1;
  }

  else
  {
    v18[1] = sub_22BDB9744();
    sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB52D90(&qword_281428810);
    sub_22BDB9104();

    v11 = sub_22BDB6204();
    sub_22BB6BE24(v6);
    if (v12)
    {
      sub_22BB58728(v6, &qword_27D8E2F40, &qword_22BDCFFE0);
      v10 = 0;
    }

    else
    {
      v10 = sub_22BDB61F4();
      sub_22BB30474(v11);
      v14 = *(v13 + 8);
      v15 = sub_22BB30AE4();
      v16(v15);
    }
  }

  return v10 & 1;
}

uint64_t sub_22BC52A08()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC48F04();
}

uint64_t sub_22BC52AD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC2EF44();
}

uint64_t sub_22BC52BA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC4FBD0();
}

uint64_t sub_22BC52C38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC502F8();
}

uint64_t sub_22BC52CE4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BBF90EC;

  return sub_22BC50DC0();
}

uint64_t sub_22BC52D98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BC52DE4()
{
  result = qword_27D8E2FA0;
  if (!qword_27D8E2FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8E2FA0);
  }

  return result;
}

unint64_t sub_22BC52E28()
{
  result = qword_27D8E2FB8;
  if (!qword_27D8E2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2FB8);
  }

  return result;
}

uint64_t sub_22BC52EBC()
{
  sub_22BB2F35C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v5;
  *v5 = v6;
  sub_22BB974AC(v5);
  sub_22BB7592C();

  return sub_22BC44CB4(v7);
}

uint64_t sub_22BC52F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BC52FB4()
{
  sub_22BB35458();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_22BBF90EC;
  sub_22BB7592C();
  sub_22BB702E8();
  sub_22BB33430();

  return sub_22BC444A4(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_22BC53088()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  sub_22BC54D4C();
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_22BB974AC(v1);
  sub_22BB7592C();
  sub_22BB702E8();
  sub_22BB3A1C0();

  return sub_22BC44A94(v3);
}

uint64_t sub_22BC53124()
{
  sub_22BB2F0D4();
  v2 = *(v0 + 16);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = sub_22BB974AC(v3);

  return sub_22BC4414C(v5, v2);
}

uint64_t sub_22BC531B4()
{
  sub_22BB2F35C();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_22BB974AC(v4);

  return sub_22BC43DEC(v6, v3, v2);
}

uint64_t sub_22BC53270()
{
  sub_22BB2F35C();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_22BB974AC(v4);

  return sub_22BC4396C(v6, v3, v2);
}

uint64_t sub_22BC5330C()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  sub_22BC54D4C();
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_22BB974AC(v1);
  sub_22BB3A1C0();

  return sub_22BC3D1A4(v3, v4, v5, v6);
}

uint64_t sub_22BC533EC(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_22BDB9504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBE6DE0(&qword_27D8E3000, &qword_22BDBDA98);
  result = sub_22BDBB504();
  v10 = 0;
  v37 = a3;
  v38 = result;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v5;
  v32[1] = v5 + 16;
  v33 = (v5 + 8);
  v32[0] = result + 64;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v37 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      (*(v34 + 16))(v8, *(v37 + 56) + *(v34 + 72) * v21, v4);

      v25 = v41;
      v35(v40, v8);
      v41 = v25;
      if (v25)
      {
        break;
      }

      v26 = v8;
      (*v33)(v8, v4);
      *(v32[0] + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = v38;
      v28 = (*(v38 + 48) + 16 * v21);
      *v28 = v23;
      v28[1] = v24;
      result = sub_22BB382E8(v40, *(v27 + 56) + 40 * v21);
      v29 = *(v27 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      *(v27 + 16) = v31;
      v8 = v26;
      v16 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }

    (*v33)(v8, v4);
    return v38;
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v38;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BC53694(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BC536E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BC5373C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BC537D4()
{
  v0 = sub_22BDB89A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_22BC53854()
{
  sub_22BDB90B4();
  if (v0 <= 0x3F)
  {
    sub_22BC05698();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22BC538D8()
{
  result = qword_27D8E30A8;
  if (!qword_27D8E30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E30A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryResultPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BC53A0C()
{
  result = qword_27D8E30C8;
  if (!qword_27D8E30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E30C8);
  }

  return result;
}

unint64_t sub_22BC53A64()
{
  result = qword_27D8E30D0;
  if (!qword_27D8E30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E30D0);
  }

  return result;
}

unint64_t sub_22BC53ABC()
{
  result = qword_27D8E30D8;
  if (!qword_27D8E30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E30D8);
  }

  return result;
}

void sub_22BC53B6C()
{
  sub_22BB32FA4(v0);

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BC53BA0(uint64_t a1)
{
  *(a1 + 8) = sub_22BC519E0;
  v2 = v1[33];
  v3 = v1[27];
  v4 = v1[25];
  v5 = v1[14];
  return v1[12];
}

uint64_t sub_22BC53BDC(uint64_t a1)
{
  *(a1 + 8) = sub_22BC24AE0;
  v2 = v1[191];
  v3 = v1[189];
  result = v1[150];
  v5 = v1[141];
  v6 = v1[138];
  v7 = v1[129];
  return result;
}

uint64_t sub_22BC53C24(uint64_t a1)
{
  *(a1 + 8) = sub_22BC465C0;
  v2 = v1[18];
  v3 = v1[14];
  v4 = v1[3];
  v5 = v1[4];
  return v1[2];
}

uint64_t sub_22BC53CC8(uint64_t a1)
{
  *(a1 + 8) = sub_22BC28F40;
  v2 = *(v1 + 1936);
  return *(v1 + 544);
}

uint64_t sub_22BC53CF0(uint64_t result)
{
  *(result + 8) = sub_22BC268A4;
  v2 = *(v1 + 1688);
  return result;
}

uint64_t sub_22BC53D14(uint64_t result)
{
  *(result + 8) = sub_22BC27048;
  v2 = *(v1 + 1768);
  return result;
}

uint64_t sub_22BC53D6C()
{
  v3 = v0[154];
  v4 = v0[133];
  v5 = v0[131];
  v6 = v0[130];
  v7 = v0[123];
  v8 = v0[120];
  v9 = v0[74];
  *(v1 - 112) = v0[67];
  *(v1 - 104) = v3;
  v10 = v0[57];
  v11 = v0[58];
  v12 = v0[38];
  *(v1 - 128) = v0[27];
  *(v1 - 120) = v9;

  return type metadata accessor for ExecutorSELFLoggingInjector();
}

uint64_t sub_22BC53DB4()
{
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[76];
  *(v1 - 128) = v0[77];
  *(v1 - 120) = v7;
  v8 = v0[75];
  v9 = v0[74];
  *(v1 - 112) = v0[70];
  *(v1 - 104) = v6;
  *(v1 - 96) = v0[69];
  v10 = v0[35];

  return swift_allocBox();
}

uint64_t sub_22BC53E50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[116];
  v3 = v1[114];
  v4 = v1[113];
  v5 = v1[109];
  v6 = *a1;
  v7 = *(v1[110] + 16);
  return v1[111];
}

void sub_22BC53E7C(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

void sub_22BC53E9C()
{
  *(v1 - 176) = v0[225];
  v2 = v0[221];
  v3 = v0[220];
  v4 = v0[219];
  v5 = v0[218];
  v6 = v0[217];
  v7 = v0[216];
  v8 = v0[215];
  v9 = v0[214];
}

uint64_t sub_22BC53ED4(uint64_t a1)
{

  return sub_22BC53694(a1, v1);
}

uint64_t sub_22BC53F30()
{
  *(v2 - 96) = v1[191];
  *(v2 - 88) = v0;
  v4 = v1[190];
  v5 = v1[189];
  v6 = v1[188];
  v7 = v1[91];
  v8 = v1[72];
  v9 = v1[44];
  v10 = v1[45];
  v11 = v1[43];
  v12 = v1[12];

  return sub_22BDB90A4();
}

uint64_t sub_22BC53F6C()
{
  result = *(v0 - 136);
  v2 = *(v0 - 128) + 8;
  v3 = *(v0 - 120);
  v4 = *(v0 - 144);
  return result;
}

void sub_22BC53F80()
{
  v2 = v0[71];
  *(v1 - 112) = v0[70];
  v3 = v0[69];
}

void sub_22BC53F94()
{
  v2 = *(*(v1 - 120) + 8);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1216);
}

uint64_t sub_22BC53FA8()
{
  v1 = v0[130];
  v2 = v0[128];
  v3 = v0[117];
  v4 = *(v0[118] + 32);
  return v0[129];
}

void sub_22BC540F8()
{
  v1 = v0[171];
  v2 = v0[165];
  v3 = v0[164];
}

uint64_t sub_22BC54108(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 992);
  return result;
}

void sub_22BC54130()
{
  sub_22BB32FA4(v0);

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BC54164()
{
  v1[206] = v0;
  v2 = v1[193];
  v3 = v1[192];
  v4 = v1[179];
  v5 = v1[175];
  v6 = v1[173];
  result = v1[152];
  v8 = v1[147];
  v9 = v1[46];
  return result;
}

uint64_t sub_22BC5418C()
{
  v1[265] = v0;
  v3 = v1[219];
  v4 = v1[170];
  v5 = v1[169];
  v6 = v1[168];

  return sub_22BDB9FB4();
}

uint64_t sub_22BC5421C()
{
  v2 = *(v0 - 96);

  return sub_22BDBABD4();
}

void sub_22BC54240()
{
  v1 = v0[224];
  v2 = v0[223];
  v3 = v0[222];
}

uint64_t sub_22BC54250()
{
  *(v1 - 96) = v0;

  return sub_22BDBABA4();
}

uint64_t sub_22BC54274()
{
  v1[206] = v0;
  v2 = v1[193];
  v3 = v1[192];
  v4 = v1[179];
  v5 = v1[175];
  v6 = v1[173];
  result = v1[152];
  v8 = v1[147];
  v9 = v1[46];
  return result;
}

uint64_t sub_22BC5429C()
{
  v1 = *(v0 - 152) + 8;
  v3 = *(v0 - 136);
  result = *(v0 - 128);
  v4 = *(v0 - 112);
  return result;
}

void sub_22BC542B0()
{
  v3 = *(v0 + 664);
  v4 = *(v0 + 128);
  v5 = *(v0 + 2037);
  v6 = *(v0 + 112);
  v7 = (*(v0 + 2036) & 1) == 0;
  v8 = *(v1 - 104);
  v9 = *(v0 + 688);

  sub_22BC8EC40(v5, v7, v8, v9, v4);
}

void sub_22BC542E8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[6];
  v9 = v0[5];
  v10 = v0[7];
}

uint64_t sub_22BC5430C()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  v7 = v0[47];
  v8 = v0[34];
  v9 = v0[7];
  return v0[43];
}

uint64_t sub_22BC5433C()
{
  v1 = v0[147];
  v2 = v0[97];
  v3 = v0[46];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  return v0[12];
}

void sub_22BC54378(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22BC54394(uint64_t a1, uint64_t a2)
{
  v5 = v3[91];
  v6 = v3[88];
  v7 = v3[87];
  v9 = v3[44];
  v8 = v3[45];
  v10 = v3[43];

  return MEMORY[0x282175D38](a1, a2, 0, 1, v2);
}

uint64_t sub_22BC543D4()
{
  v1 = v0[152];
  v2 = v0[151];
  result = v0[138];
  v4 = v0[130];
  v5 = v0[117];
  v6 = *(v0[131] + 32);
  return result;
}

uint64_t sub_22BC543F4()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  result = v0[16];
  v10 = v0[7];
  return result;
}

uint64_t sub_22BC54420()
{
  *(v1 + *(v0 + 24)) = 0;
  *(v1 + *(v0 + 28)) = 0;
  v3 = *(v2 - 120);
  v4 = *(*(v2 - 128) + 8);
  return *(v2 - 104);
}

void sub_22BC54460()
{
  v1 = v0[159];
  v2 = v0[157];
  v3 = v0[144];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[132];
  v7 = v0[131];
}

void sub_22BC544B0()
{
  v1 = v0[167];
  v2 = v0[165];
  v3 = v0[140];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
}

uint64_t sub_22BC544D0(uint64_t a1)
{
  sub_22BB336D0(v2, v1, 1, a1);
  v4 = *(v3 - 104);
}

uint64_t sub_22BC54508()
{
  v2 = v0[41];
  result = v0[42];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[27];
  return result;
}

uint64_t sub_22BC54528()
{
  result = *(v0 - 144);
  v2 = *(v0 - 160);
  return result;
}

void *sub_22BC54534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *v54 = v53;
  v55 = *(a53 + 104);
  return v54;
}

uint64_t sub_22BC54560()
{
  v2 = v0[160];
  v3 = v0[122];
  v4 = v0[120];
  v5 = v0[91];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[36];

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BC54590()
{
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[146];
  v5 = v0[143];
  v6 = v0[133];
  v7 = v0[39];
  v8 = v0[37];

  return sub_22BDB43D4();
}

uint64_t sub_22BC545C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5[91];
  v8 = v5[88];
  v9 = v5[87];
  v11 = v5[44];
  v10 = v5[45];
  v12 = v5[43];

  return MEMORY[0x282175D38](a1, a2, 0, 1, a5);
}

uint64_t sub_22BC545F0()
{
  v5 = v0[18];
  v6 = v0[17];
  v3 = v0[13];
  *(v1 - 96) = v0[16];
  *(v1 - 88) = v3;
  *(v1 - 80) = v0[10];
}

void sub_22BC54620(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_22BC54640()
{
  v3 = v1[247];
  v4 = v1[201];
  v5 = v1[194];
  v6 = v1[193];
}

void sub_22BC54660()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
}

void sub_22BC5467C()
{
  *(v2 - 96) = v1[191];
  *(v2 - 88) = v0;
  v3 = v1[190];
  v4 = v1[189];
  *(v2 - 112) = v1[188];
  *(v2 - 104) = v4;
}

uint64_t sub_22BC54698()
{

  return swift_task_alloc();
}

uint64_t sub_22BC546BC()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = *(v0[18] + 32);
  return v0[20];
}

uint64_t sub_22BC546D8()
{
  v5 = v0[18];
  v6 = v0[17];
  v7 = v0[16];
  v3 = v0[10];
  *(v1 - 104) = v0[13];
  *(v1 - 96) = v3;
}

uint64_t sub_22BC54738@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v18 = *(a15 + 8);
  v19 = *a16;
  v20 = a1 + *(v16 + 48);
  return v17;
}

void sub_22BC54754()
{
  v1 = v0[126];
  v2 = v0[108];
  v3 = v0[105];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[98];
}

uint64_t sub_22BC547BC()
{
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[95];
  v5 = v0[74];
  v6 = v0[71];
  v7 = v0[69];

  return sub_22BDB63A4();
}

id sub_22BC547E8()
{
  v2 = v0[171];
  v3 = v0[168];
  v4 = v0[167];
  v0[202] = *(v3 + 8);
  v5 = *(v3 + 16);
  v0[203] = v5;

  return v5;
}

uint64_t sub_22BC5482C()
{
  v1 = *(v0 - 184);
  v2 = *(*(v0 - 192) + 8);
  return *(v0 - 176);
}

void sub_22BC5483C()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[86];
}

void sub_22BC5487C()
{
  v1 = v0[131];
  v2 = v0[115];
  v3 = v0[113];
}

void sub_22BC5488C()
{
  v1 = v0[131];
  v2 = v0[123];
  v3 = v0[121];
}

uint64_t sub_22BC548AC()
{
  v1 = *(v0 - 176);
  v2 = *(*(v0 - 184) + 8);
  return *(v0 - 168);
}

uint64_t sub_22BC548BC()
{
  v1 = *(v0 - 120);
  v2 = *(*(v0 - 128) + 8);
  return *(v0 - 112);
}

void sub_22BC548CC()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[225];
}

double sub_22BC548DC()
{
  *(v0 + 448) = 0;
  result = 0.0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  return result;
}

void sub_22BC5490C()
{
  v1 = v0[156];
  v2 = v0[97];
  v3 = v0[96];
}

void sub_22BC5491C()
{
  v3 = v1[176];
  v4 = v1[174];
  v5 = v1[173];
  v6 = v1[157];
  v7 = v1[154];
  v8 = v1[153];
}

uint64_t sub_22BC54944()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void sub_22BC54988()
{
  v1 = *(v0 - 96);
  v2 = v1[126];
  v3 = v1[117];
  v4 = v1[105];
  v5 = v1[102];
}

uint64_t sub_22BC549AC()
{
  *(v1 - 152) = v0[128];
  result = v0[117];
  v3 = v0[115];
  v4 = v0[114];
  return result;
}

uint64_t sub_22BC549C4()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 120);
  return *(v1 - 112);
}

void sub_22BC549D0()
{
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[171];
  v4 = v0[165];
  v5 = v0[152];
}

void sub_22BC54A18()
{
  v1 = v0[116];
  v3 = v0[108];
  v2 = v0[107];
}

uint64_t sub_22BC54A6C()
{
}

uint64_t sub_22BC54A84()
{
  v2 = *(*(v0 - 248) + 20);

  return type metadata accessor for ResultResponse(0);
}

uint64_t sub_22BC54AA0()
{
}

uint64_t sub_22BC54AB8()
{
  v2 = v0[251];
  v3 = v0[250];
  v4 = v0[249];
  v5 = v0[220];
  v6 = v0[136];
}

void sub_22BC54ADC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22BC54AF8()
{

  return swift_task_alloc();
}

uint64_t sub_22BC54B10()
{
}

uint64_t sub_22BC54B28()
{

  return sub_22BDBB6D4();
}

uint64_t sub_22BC54B4C()
{
  v2 = *(v0 + 44);

  return sub_22BDBA044();
}

void sub_22BC54B64()
{
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[128];
  v6 = v0[118];
  v7 = v0[117];
}

uint64_t sub_22BC54B88()
{
}

uint64_t sub_22BC54BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB336D0(a1, a2, a3, v3);

  return sub_22BDB53D4();
}

uint64_t sub_22BC54BD0()
{
  v2 = *(*(v1 - 112) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

void sub_22BC54BE4()
{
  v2 = v0[74];
  *(v1 - 120) = v0[70];
  v3 = v0[69];
}

uint64_t sub_22BC54C40()
{
  result = *(v0 + 1128);
  *(v1 - 104) = result;
  return result;
}

uint64_t sub_22BC54C58()
{
  v2 = v0[34];
  result = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  return result;
}

void sub_22BC54C6C()
{
  *(v2 - 128) = *(v1 + 1232);
  *(v2 - 120) = *(v1 + 1224);
  *(v2 - 112) = v0;
}

void sub_22BC54D20()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[71];
}

void sub_22BC54D4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t sub_22BC54D90()
{
  result = *(v0 - 152);
  v2 = *(v0 - 168);
  return result;
}

uint64_t sub_22BC54D9C()
{
  v1[199] = v0;
  v1[198] = v2;
  v3 = v1[141];
  v5 = *(v3 + 96);
  return v3 + 96;
}

void sub_22BC54DD8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t sub_22BC54DF8()
{
  v3 = (v0 + *(v1 + 24));
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_22BC54E18()
{
  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[36];

  return sub_22BDB9CE4();
}

uint64_t sub_22BC54E38()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_22BDB9FE4();
}

uint64_t sub_22BC54E58()
{

  return swift_arrayDestroy();
}

void sub_22BC54E78(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v4, a3, a2, v3, 0x16u);
}

uint64_t sub_22BC54E98()
{
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
}

uint64_t sub_22BC54EB8()
{
  v2 = v0[152];
  v3 = v0[148];
  v4 = v0[117];
  v5 = v0[15];
}

uint64_t sub_22BC54ED8()
{

  return swift_getAssociatedConformanceWitness();
}

BOOL sub_22BC54EF8()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_22BC54F10()
{

  return swift_task_alloc();
}

uint64_t sub_22BC54F28(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_22BB32EE0(v4, v3, a3);
}

uint64_t sub_22BC54F40()
{

  return swift_dynamicCast();
}

uint64_t sub_22BC54F58(uint64_t a1)
{
  v2 = sub_22BDB77D4();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB43E4();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BC55A68(a1, &v30);
  if (v32)
  {
    sub_22BB382E8(&v30, v33);
    sub_22BDB47A4();
    v18 = sub_22BB69FEC(v33, v34);
    v19 = type metadata accessor for ExecutorSELFContext();
    (*(v13 + 16))(v17, &v18[*(v19 + 24)], v10);
    sub_22BDB4374();
    (*(v13 + 8))(v17, v10);
    v20 = sub_22BDB4374();
    v22 = v21;
    v23 = (sub_22BB69FEC(v33, v34) + *(v19 + 40));
    v24 = *v23;
    v25 = v23[1];
    *&v30 = v20;
    *(&v30 + 1) = v22;
    v31 = v24;
    v32 = v25;
    sub_22BC55B40();
    sub_22BC55B94();

    sub_22BDB4784();

    return sub_22BB32FA4(v33);
  }

  else
  {
    sub_22BC55AD8(&v30);
    sub_22BDB63F4();
    v27 = sub_22BDB77C4();
    v28 = sub_22BDBB134();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22BB2C000, v27, v28, "Cannot log to FeatureStore since executorSELFContext is nil", v29, 2u);
      MEMORY[0x2318A6080](v29, -1, -1);
    }

    return (*(v5 + 8))(v9, v2);
  }
}

uint64_t sub_22BC55238(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022BDD1D90 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC55310(char a1)
{
  if (a1)
  {
    return 0x6552746E65696C63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22BC55360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC55238(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC55388(uint64_t a1)
{
  v2 = sub_22BC55570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC553C4(uint64_t a1)
{
  v2 = sub_22BC55570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutorRequestIdentifiers.encode(to:)(void *a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E30E0, &qword_22BDBDCE0);
  v5 = sub_22BB30444(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BC55570();
  sub_22BDBB8A4();
  v19 = 0;
  sub_22BDBB624();
  if (!v2)
  {
    v18 = 1;
    sub_22BDBB624();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_22BC55570()
{
  result = qword_27D8E30E8;
  if (!qword_27D8E30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E30E8);
  }

  return result;
}

uint64_t ExecutorRequestIdentifiers.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22BBE6DE0(&qword_27D8E30F0, &qword_22BDBDCE8);
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BC55570();
  sub_22BDBB894();
  if (v2)
  {
    return sub_22BB32FA4(a1);
  }

  v25 = 0;
  v14 = sub_22BDBB594();
  v16 = v15;
  v24 = 1;
  v17 = sub_22BDBB594();
  v19 = v18;
  v20 = *(v8 + 8);
  v23 = v17;
  v20(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v23;
  a2[3] = v19;

  sub_22BB32FA4(a1);
}

__n128 sub_22BC557E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BC557F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_22BC55834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExecutorRequestIdentifiers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BC55964()
{
  result = qword_27D8E30F8;
  if (!qword_27D8E30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E30F8);
  }

  return result;
}

unint64_t sub_22BC559BC()
{
  result = qword_27D8E3100;
  if (!qword_27D8E3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3100);
  }

  return result;
}

unint64_t sub_22BC55A14()
{
  result = qword_27D8E3108;
  if (!qword_27D8E3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3108);
  }

  return result;
}

uint64_t sub_22BC55A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&dword_27D8E2F50, &unk_22BDBDEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BC55AD8(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&dword_27D8E2F50, &unk_22BDBDEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BC55B40()
{
  result = qword_27D8E3110;
  if (!qword_27D8E3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3110);
  }

  return result;
}

unint64_t sub_22BC55B94()
{
  result = qword_27D8E3118;
  if (!qword_27D8E3118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3118);
  }

  return result;
}

uint64_t sub_22BC55BE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22BDB61C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D1EF38])
  {
    v10 = MEMORY[0x277D72600];
LABEL_21:
    v12 = *v10;
    v13 = sub_22BDBA234();
    sub_22BB30ED8(v13);
    v15 = *(v14 + 104);
    v16 = a1;
    v17 = v12;
    return v15(v16, v17);
  }

  v11 = v9;
  if (v9 == *MEMORY[0x277D1EF28])
  {
    v10 = MEMORY[0x277D725F0];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EF40])
  {
    v10 = MEMORY[0x277D72608];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EF30])
  {
    v10 = MEMORY[0x277D725F8];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EEF8])
  {
    v10 = MEMORY[0x277D725C0];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EF20])
  {
    v10 = MEMORY[0x277D725E8];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EF10])
  {
    v10 = MEMORY[0x277D725D0];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EF00])
  {
    v10 = MEMORY[0x277D725C8];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EF08])
  {
    v10 = MEMORY[0x277D725D8];
    goto LABEL_21;
  }

  if (v9 == *MEMORY[0x277D1EEF0])
  {
    v10 = MEMORY[0x277D725B8];
    goto LABEL_21;
  }

  v19 = *MEMORY[0x277D1EF18];
  v20 = sub_22BDBA234();
  sub_22BB30ED8(v20);
  v15 = *(v21 + 104);
  if (v11 != v19)
  {
    v15(a1, *MEMORY[0x277D72600]);
    return (*(v5 + 8))(v8, v4);
  }

  v17 = *MEMORY[0x277D725E0];
  v16 = a1;
  return v15(v16, v17);
}

uint64_t sub_22BC55EC4(unsigned __int8 a1, char a2)
{
  v2 = 0x74757074756FLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x74757074756FLL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x746E6F436F646E75;
      v3 = 0xEB00000000747865;
      break;
    case 3:
      v3 = 0x800000022BDD13D0;
      v5 = 0xD000000000000011;
      break;
    case 4:
      v5 = 0x727474416B6E696CLL;
      v3 = 0xEF6E6F6974756269;
      break;
    default:
      v5 = 0xD000000000000010;
      v3 = 0x800000022BDD13A0;
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x746E6F436F646E75;
      v6 = 0xEB00000000747865;
      break;
    case 3:
      v6 = 0x800000022BDD13D0;
      v2 = 0xD000000000000011;
      break;
    case 4:
      v2 = 0x727474416B6E696CLL;
      v6 = 0xEF6E6F6974756269;
      break;
    default:
      v2 = 0xD000000000000010;
      v6 = 0x800000022BDD13A0;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BDBB6D4();
  }

  return v8 & 1;
}

uint64_t sub_22BC560C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = sub_22BB37494();
  sub_22BC56674(v3, v4);
  sub_22BDBAD04();
  sub_22BDBAD04();
  if (v10 == v8 && v11 == v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_22BDBB6D4();
  }

  return v6 & 1;
}

uint64_t RetrievedValue.init(value:source:)()
{
  sub_22BB35F54();
  v2 = v1;
  v3 = sub_22BDBA594();
  sub_22BB2F330(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BB37494();
  v7(v6);
  v8 = *(type metadata accessor for RetrievedValue(0) + 20);
  v9 = sub_22BDB9CA4();
  sub_22BB2F330(v9);
  v11 = *(v10 + 32);

  return v11(v2 + v8, v0);
}

uint64_t static RetrievedValue.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDBA574())
  {
    v2 = type metadata accessor for RetrievedValue(0);
    v3 = sub_22BC560C0(v1 + *(v2 + 20), v0 + *(v2 + 20), MEMORY[0x277D1E940]);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22BC562EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC563AC(char a1)
{
  if (a1)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22BC563E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC562EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC5640C(uint64_t a1)
{
  v2 = sub_22BC56620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC56448(uint64_t a1)
{
  v2 = sub_22BC56620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RetrievedValue.encode(to:)(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E3120, &qword_22BDBDEB0);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_22BB313A8();
  sub_22BB69FEC(v13, v14);
  sub_22BC56620();
  sub_22BB92244();
  v21[15] = 0;
  sub_22BDBA594();
  sub_22BB359C8();
  sub_22BC56674(v15, v16);
  sub_22BB36BDC();
  sub_22BB2F408();
  sub_22BDBB664();
  if (!v1)
  {
    v17 = *(type metadata accessor for RetrievedValue(0) + 20);
    sub_22BB393D0();
    sub_22BDB9CA4();
    sub_22BB32254();
    sub_22BC56674(v18, v19);
    sub_22BB2F408();
    sub_22BDBB664();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_22BC56620()
{
  result = qword_27D8E3128;
  if (!qword_27D8E3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3128);
  }

  return result;
}

uint64_t sub_22BC56674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RetrievedValue.hash(into:)()
{
  sub_22BDBA594();
  sub_22BB359C8();
  sub_22BC56674(v0, v1);
  sub_22BDBABB4();
  v2 = *(type metadata accessor for RetrievedValue(0) + 20);
  sub_22BDB9CA4();
  sub_22BB32254();
  sub_22BC56674(v3, v4);
  return sub_22BDBABB4();
}

uint64_t RetrievedValue.hashValue.getter()
{
  sub_22BDBB814();
  sub_22BDBA594();
  sub_22BB359C8();
  sub_22BC56674(v0, v1);
  sub_22BDBABB4();
  v2 = *(type metadata accessor for RetrievedValue(0) + 20);
  sub_22BDB9CA4();
  sub_22BB32254();
  sub_22BC56674(v3, v4);
  sub_22BDBABB4();
  return sub_22BDBB834();
}

void RetrievedValue.init(from:)()
{
  sub_22BB31014();
  v3 = v2;
  v33 = sub_22BDB9CA4();
  v4 = sub_22BB30444(v33);
  v31 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v10 = v9 - v8;
  v35 = sub_22BDBA594();
  v11 = sub_22BB30444(v35);
  v32 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v34 = v16 - v15;
  v36 = sub_22BBE6DE0(&qword_27D8E3148, &unk_22BDBDEB8);
  sub_22BB30444(v36);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v20 = type metadata accessor for RetrievedValue(0);
  v21 = sub_22BB2F330(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  sub_22BB345CC();
  v24 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  sub_22BC56620();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v3);
  }

  else
  {
    sub_22BB359C8();
    sub_22BC56674(v25, v26);
    sub_22BB36BDC();
    sub_22BDBB5D4();
    (*(v32 + 32))(v1, v34, v35);
    sub_22BB393D0();
    sub_22BB32254();
    sub_22BC56674(v27, v28);
    sub_22BDBB5D4();
    v29 = sub_22BB3E158();
    v30(v29);
    (*(v31 + 32))(v1 + *(v20 + 20), v10, v33);
    sub_22BC57A18();
    sub_22BB32FA4(v3);
    sub_22BC57968(v1, type metadata accessor for RetrievedValue);
  }

  sub_22BB376A8();
}

uint64_t sub_22BC56C20(uint64_t a1, uint64_t a2)
{
  sub_22BDBB814();
  sub_22BDBA594();
  sub_22BC56674(&qword_27D8E3138, MEMORY[0x277D72A78]);
  sub_22BDBABB4();
  v3 = *(a2 + 20);
  sub_22BDB9CA4();
  sub_22BC56674(&qword_27D8E3140, MEMORY[0x277D1E940]);
  sub_22BDBABB4();
  return sub_22BDBB834();
}

void static TypedValueResult.== infix(_:_:)()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v75 = sub_22BDBA594();
  v4 = sub_22BB30444(v75);
  v70 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v68 = v9 - v8;
  v10 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v69 = v14;
  v71 = sub_22BBE6DE0(&qword_27D8E3158, &qword_22BDBDEC8);
  sub_22BB2F330(v71);
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB30BA8();
  v72 = v18;
  sub_22BB2F120();
  v19 = sub_22BDBA044();
  v20 = sub_22BB30444(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v27 = v26 - v25;
  v28 = sub_22BB331D4();
  v30 = sub_22BBE6DE0(v28, v29);
  sub_22BB2F0C8(v30);
  v32 = *(v31 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  v34 = sub_22BBE6DE0(&qword_27D8E3160, &qword_22BDBDED8);
  sub_22BB2F0C8(v34);
  v36 = *(v35 + 64);
  sub_22BB30B9C();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v68 - v39;
  v41 = *(v38 + 56);
  v73 = v3;
  sub_22BC5E5C4();
  v74 = v1;
  sub_22BC5E5C4();
  sub_22BB31814(v40, 1, v19);
  if (!v42)
  {
    sub_22BC5E5C4();
    sub_22BB31814(&v40[v41], 1, v19);
    if (!v42)
    {
      (*(v22 + 32))(v27, &v40[v41], v19);
      sub_22BB376C0();
      sub_22BC56674(v49, v50);
      v51 = sub_22BDBABD4();
      v52 = *(v22 + 8);
      v52(v27, v19);
      v53 = sub_22BB37494();
      (v52)(v53);
      sub_22BB58728(v40, &qword_27D8E3010, &qword_22BDBDED0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    v43 = *(v22 + 8);
    v44 = sub_22BB37494();
    v45(v44);
LABEL_9:
    v46 = &qword_27D8E3160;
    v47 = &qword_22BDBDED8;
    v48 = v40;
LABEL_20:
    sub_22BB58728(v48, v46, v47);
    goto LABEL_21;
  }

  sub_22BB31814(&v40[v41], 1, v19);
  if (!v42)
  {
    goto LABEL_9;
  }

  sub_22BB58728(v40, &qword_27D8E3010, &qword_22BDBDED0);
LABEL_11:
  v54 = *(type metadata accessor for TypedValueResult(0) + 20);
  v55 = v72;
  v56 = *(v71 + 48);
  sub_22BB8AC18();
  sub_22BB8AC18();
  v57 = v75;
  sub_22BB31814(v55, 1, v75);
  if (!v42)
  {
    v58 = v69;
    sub_22BC5E5C4();
    sub_22BB31814(v55 + v56, 1, v57);
    if (!v59)
    {
      v62 = v70;
      v63 = v55 + v56;
      v64 = v68;
      (*(v70 + 32))(v68, v63, v57);
      sub_22BB359C8();
      sub_22BC56674(v65, v66);
      sub_22BDBABD4();
      v67 = *(v62 + 8);
      v67(v64, v57);
      v67(v58, v57);
      sub_22BB58728(v55, &qword_27D8E2668, &unk_22BDBCCD0);
      goto LABEL_21;
    }

    v60 = sub_22BB3B088();
    v61(v60, v57);
    goto LABEL_19;
  }

  sub_22BB31814(v55 + v56, 1, v57);
  if (!v42)
  {
LABEL_19:
    v46 = &qword_27D8E3158;
    v47 = &qword_22BDBDEC8;
    v48 = v55;
    goto LABEL_20;
  }

  sub_22BB58728(v55, &qword_27D8E2668, &unk_22BDBCCD0);
LABEL_21:
  sub_22BB314EC();
}

uint64_t sub_22BC57264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022BDD13A0 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746172647968 && a2 == 0xED000065756C6156)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC5733C(char a1)
{
  if (a1)
  {
    return 0x6465746172647968;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22BC5738C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC57264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC573B4(uint64_t a1)
{
  v2 = sub_22BC575C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC573F0(uint64_t a1)
{
  v2 = sub_22BC575C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TypedValueResult.encode(to:)(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E3178, &qword_22BDBDEE0);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_22BB313A8();
  sub_22BB69FEC(v13, v14);
  sub_22BC575C8();
  sub_22BB92244();
  v21[15] = 0;
  sub_22BDBA044();
  sub_22BB376C0();
  sub_22BC56674(v15, v16);
  sub_22BB36BDC();
  sub_22BB2F408();
  sub_22BDBB614();
  if (!v1)
  {
    v17 = *(type metadata accessor for TypedValueResult(0) + 20);
    sub_22BB393D0();
    sub_22BDBA594();
    sub_22BB359C8();
    sub_22BC56674(v18, v19);
    sub_22BB2F408();
    sub_22BDBB614();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_22BC575C8()
{
  result = qword_27D8E3180;
  if (!qword_27D8E3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3180);
  }

  return result;
}

void TypedValueResult.init(from:)()
{
  sub_22BB31014();
  v47 = v0;
  v3 = v2;
  v42 = v4;
  v5 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v44 = v9;
  v10 = sub_22BBE6DE0(&qword_27D8E3010, &qword_22BDBDED0);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v45 = v14;
  v46 = sub_22BBE6DE0(&qword_27D8E3190, &qword_22BDBDEE8);
  sub_22BB30444(v46);
  v43 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for TypedValueResult(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  sub_22BB345CC();
  v24 = sub_22BDBA044();
  sub_22BB30B28();
  sub_22BB336D0(v25, v26, v27, v24);
  v28 = *(v22 + 28);
  v29 = sub_22BDBA594();
  sub_22BB30B28();
  sub_22BB336D0(v30, v31, v32, v29);
  v33 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  sub_22BC575C8();
  v34 = v47;
  sub_22BDBB894();
  if (!v34)
  {
    v47 = v28;
    v35 = v43;
    sub_22BB376C0();
    sub_22BC56674(v36, v37);
    sub_22BB36BDC();
    sub_22BDBB584();
    sub_22BC579C0();
    sub_22BB393D0();
    sub_22BB359C8();
    sub_22BC56674(v38, v39);
    v40 = v46;
    sub_22BDBB584();
    (*(v35 + 8))(v20, v40);
    sub_22BC579C0();
    sub_22BC57A18();
  }

  sub_22BB32FA4(v3);
  sub_22BB6B9E4();
  sub_22BC57968(v1, v41);
  sub_22BB376A8();
}

uint64_t sub_22BC57968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BC579C0()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F330(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BC57A18()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

void sub_22BC57AB8()
{
  sub_22BB30F94();
  v129 = v1;
  v130 = v2;
  v3 = sub_22BDB5AD4();
  v4 = sub_22BB30444(v3);
  v125 = v5;
  v126 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v121 = v9 - v8;
  sub_22BB2F120();
  v10 = sub_22BDB9564();
  v11 = sub_22BB30444(v10);
  v123 = v12;
  v124 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v120 = v16 - v15;
  v17 = sub_22BB2F120();
  v116 = type metadata accessor for TypedValueResult(v17);
  v18 = sub_22BB2F330(v116);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v113 = v22 - v21;
  v115 = sub_22BBE6DE0(&qword_27D8E3378, &qword_22BDBE580);
  sub_22BB2F330(v115);
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB30BA8();
  v117 = v26;
  v27 = sub_22BBE6DE0(&qword_27D8E32A0, &qword_22BDCE7B0);
  v28 = sub_22BB2F0C8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  v114 = v31 - v32;
  v34 = MEMORY[0x28223BE20](v33);
  v118 = &v113 - v35;
  MEMORY[0x28223BE20](v34);
  v119 = &v113 - v36;
  sub_22BB2F120();
  v37 = sub_22BDB90B4();
  v127 = sub_22BB30444(v37);
  v128 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v127);
  sub_22BB30C74();
  v43 = (v41 - v42);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v113 - v46;
  MEMORY[0x28223BE20](v45);
  v122 = &v113 - v48;
  v49 = sub_22BB2F120();
  v50 = type metadata accessor for ActionExecutionResult(v49);
  v51 = sub_22BB2F330(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BB30C74();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  sub_22BB313C0();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v113 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v113 - v62;
  v64 = sub_22BBE6DE0(&qword_27D8E3380, &qword_22BDBE588);
  sub_22BB2F0C8(v64);
  v66 = *(v65 + 64);
  sub_22BB30B9C();
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v113 - v69;
  v71 = (&v113 + *(v68 + 56) - v69);
  sub_22BC57A18();
  sub_22BC57A18();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB33C0C();
      sub_22BC57A18();
      v85 = *v61;
      v84 = *(v61 + 1);
      v86 = *(sub_22BBE6DE0(&qword_27D8E3320, &unk_22BDBE540) + 48);
      if (sub_22BB3102C() != 1)
      {
        (*(v128 + 8))(&v61[v86], v127);

        goto LABEL_19;
      }

      v87 = v71[1];
      v129 = *v71;
      v130 = v85;
      v88 = *(v128 + 32);
      v89 = &v61[v86];
      v90 = v127;
      v88(v47, v89, v127);
      v88(v43, v71 + v86, v90);
      v91 = v130 == v129 && v84 == v87;
      if (v91)
      {
      }

      else
      {
        v92 = sub_22BDBB6D4();

        if ((v92 & 1) == 0)
        {
          v93 = *(v128 + 8);
          v93(v43, v90);
          v93(v47, v90);
          goto LABEL_33;
        }
      }

      sub_22BB3972C();
      sub_22BDB9084();
      v108 = *(v128 + 8);
      v108(v43, v90);
      v108(v47, v90);
      goto LABEL_33;
    case 2u:
      sub_22BB33C0C();
      sub_22BC57A18();
      v73 = *(sub_22BBE6DE0(&qword_27D8E3310, &qword_22BDBE538) + 48);
      v74 = *(v0 + v73);
      if (sub_22BB3102C() == 2)
      {
        v75 = *(v71 + v73);
        v77 = v123;
        v76 = v124;
        (*(v123 + 32))(v120, v71, v124);
        sub_22BDB9534();
        v78 = *(v77 + 8);
        v79 = sub_22BB721FC();
        v78(v79);
        (v78)(v0, v76);
        goto LABEL_33;
      }

      v94 = sub_22BB3B088();
      goto LABEL_17;
    case 3u:
      sub_22BB33C0C();
      sub_22BB31F54();
      sub_22BC57A18();
      if (sub_22BB3102C() == 3)
      {
        v81 = v125;
        v80 = v126;
        v82 = v121;
        (*(v125 + 32))(v121, v71, v126);
        sub_22BB313A8();
        sub_22BDB5AC4();
        v83 = *(v81 + 8);
        v83(v82, v80);
        v83(v56, v80);
        goto LABEL_33;
      }

      v95 = v126;
      v96 = *(v125 + 8);
      v94 = v56;
LABEL_17:
      v96(v94, v95);
      goto LABEL_19;
    default:
      sub_22BB33C0C();
      sub_22BC57A18();
      v72 = *(sub_22BBE6DE0(&qword_27D8E2F98, &qword_22BDBD998) + 48);
      if (!sub_22BB3102C())
      {
        v98 = v127;
        v97 = v128;
        v99 = v122;
        (*(v128 + 32))(v122, v71, v127);
        v100 = v119;
        sub_22BC5E554(&v63[v72], v119);
        v101 = v118;
        sub_22BC5E554(v71 + v72, v118);
        v102 = sub_22BDB9084();
        v103 = *(v97 + 8);
        v103(v63, v98);
        if (v102)
        {
          v104 = *(v115 + 48);
          v105 = v117;
          sub_22BB8AC18();
          sub_22BB8AC18();
          v106 = v101;
          v107 = v116;
          sub_22BB31814(v105, 1, v116);
          if (!v91)
          {
            v109 = v114;
            sub_22BC5E5C4();
            sub_22BB31814(v105 + v104, 1, v107);
            if (!v110)
            {
              v112 = v113;
              sub_22BC5E61C();
              sub_22BB3972C();
              static TypedValueResult.== infix(_:_:)();
              sub_22BC57968(v112, type metadata accessor for TypedValueResult);
              sub_22BB58728(v118, &qword_27D8E32A0, &qword_22BDCE7B0);
              sub_22BB58728(v119, &qword_27D8E32A0, &qword_22BDCE7B0);
              v103(v122, v98);
              sub_22BC57968(v109, type metadata accessor for TypedValueResult);
              sub_22BB58728(v105, &qword_27D8E32A0, &qword_22BDCE7B0);
              goto LABEL_33;
            }

            sub_22BB3B790(v118);
            sub_22BB3B790(v119);
            v103(v122, v98);
            sub_22BB6B9E4();
            sub_22BC57968(v109, v111);
LABEL_32:
            sub_22BB58728(v105, &qword_27D8E3378, &qword_22BDBE580);
            goto LABEL_33;
          }

          sub_22BB58728(v106, &qword_27D8E32A0, &qword_22BDCE7B0);
          sub_22BB3B790(v100);
          v103(v122, v98);
          sub_22BB31814(v105 + v104, 1, v107);
          if (!v91)
          {
            goto LABEL_32;
          }

          sub_22BB58728(v105, &qword_27D8E32A0, &qword_22BDCE7B0);
        }

        else
        {
          sub_22BB3B790(v101);
          sub_22BB3B790(v100);
          v103(v99, v98);
        }

LABEL_33:
        sub_22BB32A8C();
        goto LABEL_34;
      }

      sub_22BB58728(&v63[v72], &qword_27D8E32A0, &qword_22BDCE7B0);
      (*(v128 + 8))(v63, v127);
LABEL_19:
      sub_22BB58728(v70, &qword_27D8E3380, &qword_22BDBE588);
LABEL_34:
      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BC58478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552646C756F6873 && a2 == 0xEC0000006E727574)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC5853C(char a1)
{
  if (a1)
  {
    return 0x6552646C756F6873;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_22BC58570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000022BDD1F10 == a2;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000022BDD1F30 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ALL && 0x800000022BDD1F50 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BC586D4(unsigned __int8 a1)
{
  sub_22BDBB814();
  MEMORY[0x2318A57F0](a1);
  return sub_22BDBB834();
}

unint64_t sub_22BC5871C(char a1)
{
  result = 0x746C75736572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BC587B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BC58830(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022BDD1F70 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC588F8(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22BC58928(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000022BDD1F90 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BDD1FB0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_22BC58A00(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void sub_22BC58A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v23;
  a20 = v24;
  v175 = v20;
  v176 = v21;
  v26 = v25;
  v27 = sub_22BBE6DE0(&qword_27D8E3338, &qword_22BDBE550);
  v28 = sub_22BB30444(v27);
  v168 = v29;
  v169 = v28;
  v31 = *(v30 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB30BA8();
  v164 = v33;
  sub_22BB2F120();
  v167 = sub_22BDB5AD4();
  v34 = sub_22BB30444(v167);
  v165 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30574();
  v160 = v39 - v38;
  v166 = sub_22BBE6DE0(&qword_27D8E3340, &qword_22BDBE558);
  sub_22BB30444(v166);
  v163 = v40;
  v42 = *(v41 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v43);
  sub_22BB30BA8();
  v159 = v44;
  sub_22BB2F120();
  v45 = sub_22BDB9564();
  v46 = sub_22BB30444(v45);
  v161 = v47;
  v162 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BB30574();
  v171 = v51 - v50;
  v158 = sub_22BBE6DE0(&qword_27D8E3348, &qword_22BDBE560);
  sub_22BB30444(v158);
  v157 = v52;
  v54 = *(v53 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v55);
  sub_22BB30BA8();
  v155[1] = v56;
  v156 = sub_22BBE6DE0(&qword_27D8E3350, &qword_22BDBE568);
  sub_22BB30444(v156);
  v155[2] = v57;
  v59 = *(v58 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v60);
  sub_22BB30BA8();
  v170 = v61;
  v62 = sub_22BBE6DE0(&qword_27D8E32A0, &qword_22BDCE7B0);
  sub_22BB2F0C8(v62);
  v64 = *(v63 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v65);
  sub_22BB30BA8();
  v172 = v66;
  sub_22BB2F120();
  v67 = sub_22BDB90B4();
  v68 = sub_22BB30444(v67);
  v173 = v69;
  v174 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BB30C74();
  v74 = v72 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = v155 - v76;
  v78 = type metadata accessor for ActionExecutionResult(0);
  v79 = sub_22BB2F330(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BB30574();
  v84 = (v83 - v82);
  v85 = sub_22BBE6DE0(&qword_27D8E3358, &unk_22BDBE570);
  v86 = sub_22BB30444(v85);
  v177 = v87;
  v178 = v86;
  v89 = *(v88 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v90);
  sub_22BB345CC();
  v91 = *(v26 + 24);
  v92 = *(v26 + 32);
  v93 = sub_22BB2F324();
  sub_22BB69FEC(v93, v94);
  sub_22BC5E3B0();
  v95 = v22;
  sub_22BDBB8A4();
  sub_22BB33C0C();
  sub_22BC57A18();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v134 = *v84;
      v133 = *(v84 + 1);
      v135 = sub_22BBE6DE0(&qword_27D8E3320, &unk_22BDBE540);
      v136 = v173;
      (*(v173 + 32))(v74, &v84[*(v135 + 48)], v174);
      sub_22BC5E4AC();
      v101 = v178;
      sub_22BDBB5F4();
      v137 = v176;
      sub_22BDBB624();

      if (v137)
      {
        sub_22BB34EAC(&a17);
        v138 = sub_22BB3972C();
        v139(v138);
        (*(v136 + 8))(v74, v174);
      }

      else
      {
        sub_22BB31B94();
        sub_22BC56674(v150, v151);
        v152 = v174;
        sub_22BDBB664();
        sub_22BB34EAC(&a17);
        v153 = sub_22BB3972C();
        v154(v153);
        (*(v173 + 8))(v74, v152);
      }

      v112 = sub_22BB3B088();
      goto LABEL_14;
    case 2u:
      LODWORD(v175) = v84[*(sub_22BBE6DE0(&qword_27D8E3310, &qword_22BDBE538) + 48)];
      v114 = v161;
      v113 = v162;
      sub_22BB51840();
      v115 = v171;
      v116(v171, v84, v113);
      sub_22BC5E458();
      v117 = v178;
      sub_22BDBB5F4();
      sub_22BB3B304();
      sub_22BC56674(v118, v119);
      v120 = v176;
      sub_22BDBB664();
      if (v120)
      {
        v121 = sub_22BB3B58C();
        v122(v121);
        (*(v114 + 8))(v115, v113);
      }

      else
      {
        sub_22BDBB634();
        v140 = sub_22BB3B58C();
        v141(v140);
        (*(v114 + 8))(v171, v113);
      }

      (*(v177 + 8))(v22, v117);
      break;
    case 3u:
      v123 = v165;
      sub_22BB51840();
      v124 = v160;
      v125 = v167;
      v126(v160, v84, v167);
      sub_22BC5E404();
      v127 = v164;
      v128 = v178;
      v129 = v22;
      sub_22BDBB5F4();
      sub_22BB386B8();
      sub_22BC56674(v130, v131);
      v132 = v169;
      sub_22BDBB664();
      (*(v168 + 8))(v127, v132);
      (*(v123 + 8))(v124, v125);
      (*(v177 + 8))(v129, v128);
      break;
    default:
      v96 = *(sub_22BBE6DE0(&qword_27D8E2F98, &qword_22BDBD998) + 48);
      v98 = v173;
      v97 = v174;
      sub_22BB51840();
      v99(v77, v84, v97);
      sub_22BC5E554(&v84[v96], v172);
      sub_22BC5E500();
      v100 = v170;
      v101 = v178;
      v102 = v95;
      sub_22BDBB5F4();
      v180 = 0;
      sub_22BB31B94();
      sub_22BC56674(v103, v104);
      v105 = v156;
      v106 = v176;
      sub_22BDBB664();
      if (v106)
      {
        sub_22BB34EAC(&a15);
        v107(v100, v105);
        sub_22BB58728(v172, &qword_27D8E32A0, &qword_22BDCE7B0);
        v108 = *(v98 + 8);
        v109 = sub_22BB3972C();
        v110(v109);
        v111 = *(v177 + 8);
        v112 = v102;
LABEL_14:
        v111(v112, v101);
      }

      else
      {
        v176 = v102;
        v179 = 1;
        type metadata accessor for TypedValueResult(0);
        sub_22BB390E4();
        sub_22BC56674(v142, v143);
        v144 = v172;
        sub_22BDBB614();
        sub_22BB34EAC(&a15);
        v145 = sub_22BB313A8();
        v146(v145);
        sub_22BB58728(v144, &qword_27D8E32A0, &qword_22BDCE7B0);
        v147 = *(v98 + 8);
        v148 = sub_22BB3972C();
        v149(v148);
        (*(v177 + 8))(v176, v178);
      }

      break;
  }

  sub_22BB376A8();
}

void sub_22BC5949C()
{
  sub_22BB31014();
  v145 = v0;
  v3 = v2;
  v128 = v4;
  v5 = sub_22BBE6DE0(&qword_27D8E32C0, &qword_22BDBE508);
  v6 = sub_22BB30444(v5);
  v132 = v7;
  v133 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  v138 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E32C8, &qword_22BDBE510);
  v13 = sub_22BB30444(v12);
  v134 = v14;
  v135 = v13;
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB30BA8();
  v140 = v18;
  v136 = sub_22BBE6DE0(&qword_27D8E32D0, &qword_22BDBE518);
  sub_22BB30444(v136);
  v131 = v19;
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB30BA8();
  v137 = v23;
  v24 = sub_22BBE6DE0(&qword_27D8E32D8, &qword_22BDBE520);
  v25 = sub_22BB30444(v24);
  v129 = v26;
  v130 = v25;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB30BA8();
  v139 = v30;
  v143 = sub_22BBE6DE0(&qword_27D8E32E0, &qword_22BDBE528);
  sub_22BB30444(v143);
  v141 = v31;
  v33 = *(v32 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  v36 = &v122 - v35;
  v142 = type metadata accessor for ActionExecutionResult(0);
  v37 = sub_22BB2F330(v142);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BB30C74();
  v42 = v40 - v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v122 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = (&v122 - v48);
  MEMORY[0x28223BE20](v47);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v50);
  v52 = &v122 - v51;
  v53 = v3[3];
  v54 = v3[4];
  v144 = v3;
  v55 = sub_22BB2F324();
  sub_22BB69FEC(v55, v56);
  sub_22BC5E3B0();
  v57 = v145;
  sub_22BDBB894();
  if (v57)
  {
LABEL_8:
    v79 = v144;
LABEL_9:
    sub_22BB32FA4(v79);
LABEL_10:
    sub_22BB376A8();
    return;
  }

  v125 = v42;
  v124 = v49;
  v145 = v46;
  v126 = v1;
  v127 = v52;
  v58 = v143;
  v59 = sub_22BDBB5E4();
  sub_22BD006D0(v59, 0);
  if (v61 == v62 >> 1)
  {
LABEL_7:
    v73 = sub_22BDBB3A4();
    sub_22BB369E0();
    swift_allocError();
    v75 = v74;
    v76 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v75 = v142;
    sub_22BDBB564();
    sub_22BDBB394();
    v77 = *MEMORY[0x277D84160];
    sub_22BB30474(v73);
    (*(v78 + 104))(v75);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v141 + 8))(v36, v58);
    goto LABEL_8;
  }

  v123 = 0;
  if (v61 < (v62 >> 1))
  {
    v63 = *(v60 + v61);
    sub_22BD006A8(v61 + 1);
    v65 = v64;
    v67 = v66;
    swift_unknownObjectRelease();
    v68 = v145;
    if (v65 == v67 >> 1)
    {
      switch(v63)
      {
        case 1:
          sub_22BC5E4AC();
          sub_22BB36F74();
          v100 = sub_22BDBB594();
          v102 = v101;
          v145 = *(sub_22BBE6DE0(&qword_27D8E3320, &unk_22BDBE540) + 48);
          v103 = v124;
          *v124 = v100;
          v103[1] = v102;
          v140 = v102;
          sub_22BDB90B4();
          sub_22BB31B94();
          sub_22BC56674(v104, v105);
          sub_22BDBB5D4();
          sub_22BB3A400();
          swift_unknownObjectRelease();
          v118 = sub_22BB3344C();
          v119(v118);
          v120 = sub_22BB89820();
          v121(v120);
          goto LABEL_16;
        case 2:
          sub_22BC5E458();
          sub_22BB36F74();
          sub_22BDB9564();
          sub_22BB3B304();
          sub_22BC56674(v80, v81);
          sub_22BDBB5D4();
          v92 = sub_22BDBB5A4();
          v123 = 0;
          v106 = v92;
          swift_unknownObjectRelease();
          v107 = *(sub_22BBE6DE0(&qword_27D8E3310, &qword_22BDBE538) + 48);
          v108 = sub_22BBDB860();
          v109(v108);
          v110 = sub_22BB38A88();
          v111(v110);
          v68[v107] = v106 & 1;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v117 = v144;
          goto LABEL_17;
        case 3:
          sub_22BC5E404();
          sub_22BB36F74();
          sub_22BDB5AD4();
          v123 = 0;
          sub_22BB386B8();
          sub_22BC56674(v82, v83);
          v84 = v133;
          v85 = v123;
          sub_22BDBB5D4();
          v86 = v141;
          sub_22BB3A400();
          if (v85)
          {
            swift_unknownObjectRelease();
            v87 = sub_22BB3B088();
            v88(v87, v84);
            v89 = *(v86 + 8);
            v90 = sub_22BB721FC();
            v91(v90);
            v79 = v144;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          v93 = sub_22BB3B088();
          v94(v93, v84);
          v95 = *(v86 + 8);
          v96 = sub_22BB721FC();
          v97(v96);
          swift_storeEnumTagMultiPayload();
          v117 = v144;
LABEL_17:
          sub_22BC5E61C();
          sub_22BB3972C();
          sub_22BC5E61C();
          sub_22BB32FA4(v117);
          break;
        default:
          sub_22BC5E500();
          sub_22BB36F74();
          v69 = sub_22BDB90B4();
          v147 = 0;
          sub_22BB31B94();
          sub_22BC56674(v70, v71);
          sub_22BDBB5D4();
          v72 = v141;
          v140 = v69;
          v145 = *(sub_22BBE6DE0(&qword_27D8E2F98, &qword_22BDBD998) + 48);
          type metadata accessor for TypedValueResult(0);
          v146 = 1;
          sub_22BB390E4();
          sub_22BC56674(v98, v99);
          sub_22BDBB584();
          sub_22BB3A400();
          swift_unknownObjectRelease();
          v112 = sub_22BB347A0();
          v113(v112);
          v114 = *(v72 + 8);
          v115 = sub_22BB721FC();
          v116(v115);
          swift_storeEnumTagMultiPayload();
          v117 = v144;
          goto LABEL_17;
      }

      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BC5A0BC()
{
  result = sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB9CA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BC5A168()
{
  sub_22BC5A224(319, &qword_27D8E31C8, MEMORY[0x277D72278]);
  if (v0 <= 0x3F)
  {
    sub_22BC5A224(319, &qword_27D8E31D0, MEMORY[0x277D72A78]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BC5A224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BC5A280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC58478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC5A2A8(uint64_t a1)
{
  v2 = sub_22BC5E458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC5A2E4(uint64_t a1)
{
  v2 = sub_22BC5E458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC5A330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC58570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC5A358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BC586CC();
  *a1 = result;
  return result;
}

uint64_t sub_22BC5A380(uint64_t a1)
{
  v2 = sub_22BC5E3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC5A3BC(uint64_t a1)
{
  v2 = sub_22BC5E3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC5A418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BB35598();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BC5A444(uint64_t a1)
{
  v2 = sub_22BC5E404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC5A480(uint64_t a1)
{
  v2 = sub_22BC5E404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC5A4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC58830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC5A4EC(uint64_t a1)
{
  v2 = sub_22BC5E4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC5A528(uint64_t a1)
{
  v2 = sub_22BC5E4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC5A56C(uint64_t a1)
{
  v2 = sub_22BC5E500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC5A5A8(uint64_t a1)
{
  v2 = sub_22BC5E500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC5A618()
{
  sub_22BB2F0D4();
  sub_22BB3AB98(v1, v2, v3, v4, v5);
  v6 = sub_22BDB9774();
  v0[19] = v6;
  sub_22BB30434(v6);
  v0[20] = v7;
  v0[21] = *(v8 + 64);
  v0[22] = sub_22BB30ACC();
  v9 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC5A6C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = swift_allocObject();
  sub_22BB73B68(v9);
  sub_22BDB47A4();
  sub_22BDB4374();
  *(v0 + 192) = v10;
  (*(v3 + 16))(v2, v8, v4);
  sub_22BB690EC(v7, v0 + 16);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = (v1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v0 + 200) = v13;
  *(v13 + 16) = v6;
  (*(v3 + 32))(v13 + v11, v2, v4);
  sub_22BB382E8((v0 + 16), v13 + v12);
  *(v13 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v14 = *(MEMORY[0x277D08420] + 4);

  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  sub_22BDB9564();
  type metadata accessor for ActionExecutionResult(0);
  v16 = MEMORY[0x277D1E5C0];
  sub_22BC56674(&qword_27D8E3250, MEMORY[0x277D1E5C0]);
  sub_22BC56674(&qword_27D8E3258, v16);
  sub_22BC56674(&qword_27D8E3260, type metadata accessor for ActionExecutionResult);
  sub_22BC56674(&qword_27D8E3268, type metadata accessor for ActionExecutionResult);
  *v15 = v0;
  v15[1] = sub_22BC5A97C;
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  sub_22BB31534();

  return MEMORY[0x28215E6E8]();
}

uint64_t sub_22BC5A97C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    v9 = v3[18];
    v10 = sub_22BC5EEA8;
  }

  else
  {
    v12 = v3[24];
    v11 = v3[25];
    v13 = v3[18];

    v10 = sub_22BC5EEAC;
    v9 = v13;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BC5AA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v9 = type metadata accessor for RuntimeError();
  v6[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v11 = sub_22BDB8E14();
  v6[16] = v11;
  v12 = *(v11 - 8);
  v6[17] = v12;
  v13 = *(v12 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC5ABD4, a3, 0);
}

uint64_t sub_22BC5ABD4()
{
  sub_22BB2F0D4();
  v1 = v0[11];
  swift_beginAccess();
  swift_task_alloc();
  sub_22BB30B34();
  v0[19] = v2;
  *v2 = v3;
  v2[1] = sub_22BC5AC84;
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  return sub_22BC5D248(v8, v6, v4, v5, v1 + 16);
}

uint64_t sub_22BC5AC84()
{
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[8];

    return MEMORY[0x2822009F8](sub_22BC5ADEC, v9, 0);
  }

  else
  {
    v10 = v3[18];
    v12 = v3[14];
    v11 = v3[15];
    v13 = v3[12];
    swift_endAccess();

    sub_22BB2F09C();

    return v14();
  }
}

void sub_22BC5ADEC()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  swift_endAccess();
  *(v0 + 40) = v1;
  v4 = v1;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v7 = *(v0 + 136);
      v8 = *(v0 + 144);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v11 = *(v0 + 96);
      v12 = *(v0 + 56);

      (*(v7 + 32))(v8, v6, v9);
      (*(v7 + 16))(v10, v8, v9);
      swift_storeEnumTagMultiPayload();
      sub_22BDB9544();
      sub_22BB336D0(v11, 0, 1, v9);
      sub_22BC56674(&qword_27D8E2F58, type metadata accessor for RuntimeError);
      sub_22BB37494();
      sub_22BB369E0();
      v13 = swift_allocError();
      sub_22BC57A18();
      v14 = sub_22BDB4234();
      sub_22BC1DF1C(2, v11, v14);

      sub_22BB58728(v11, &qword_27D8E2F30, &qword_22BDC1240);
      sub_22BB37494();
      sub_22BB369E0();
      swift_allocError();
      sub_22BC57A18();
      swift_willThrow();
      sub_22BC57968(v10, type metadata accessor for RuntimeError);
      (*(v7 + 8))(v8, v9);
      goto LABEL_6;
    }

    sub_22BC57968(v6, type metadata accessor for RuntimeError);
  }

  v15 = *(v0 + 160);
LABEL_6:
  v16 = *(v0 + 144);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 96);

  sub_22BB2F09C();
  sub_22BB31534();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BC5B09C()
{
  sub_22BB2F0D4();
  sub_22BB3AB98(v1, v2, v3, v4, v5);
  v6 = sub_22BDB96E4();
  v0[19] = v6;
  sub_22BB30434(v6);
  v0[20] = v7;
  v0[21] = *(v8 + 64);
  v0[22] = sub_22BB30ACC();
  v9 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC5B144()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = swift_allocObject();
  sub_22BB73B68(v9);
  sub_22BDB4374();
  *(v0 + 192) = v10;
  (*(v4 + 16))(v2, v8, v3);
  sub_22BB690EC(v7, v0 + 16);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = (v1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v0 + 200) = v13;
  *(v13 + 16) = v6;
  (*(v4 + 32))(v13 + v11, v2, v3);
  sub_22BB382E8((v0 + 16), v13 + v12);
  *(v13 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v14 = *(MEMORY[0x277D08430] + 4);

  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  sub_22BDB9D04();
  type metadata accessor for QueryResultPayload(0);
  v16 = MEMORY[0x277D1E990];
  sub_22BC56674(&qword_27D8E3230, MEMORY[0x277D1E990]);
  sub_22BC56674(&qword_27D8E3238, v16);
  sub_22BC56674(&qword_27D8E3240, type metadata accessor for QueryResultPayload);
  sub_22BC56674(&qword_27D8E3248, type metadata accessor for QueryResultPayload);
  *v15 = v0;
  v15[1] = sub_22BC5B404;
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  sub_22BB31534();

  return MEMORY[0x28215E720]();
}

uint64_t sub_22BC5B404()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    v9 = v3[18];
    v10 = sub_22BC5B5C0;
  }

  else
  {
    v12 = v3[24];
    v11 = v3[25];
    v13 = v3[18];

    v10 = sub_22BC5B51C;
    v9 = v13;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BC5B51C()
{
  sub_22BB2F35C();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[17];
  swift_beginAccess();
  sub_22BC5E5C4();

  sub_22BB2F09C();

  return v4();
}

uint64_t sub_22BC5B5C0()
{
  sub_22BB2F35C();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[17];

  swift_beginAccess();
  sub_22BC5E5C4();

  sub_22BB2F09C();
  v7 = v0[27];

  return v6();
}

uint64_t sub_22BC5B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  return MEMORY[0x2822009F8](sub_22BC5B69C, a3, 0);
}

uint64_t sub_22BC5B69C()
{
  sub_22BB34E84();
  v3 = v2[19];
  v4 = v2[20];
  sub_22BB512F8(v2[17]);
  sub_22BB6B5D0();
  sub_22BB690EC(v3, (v2 + 7));
  swift_beginAccess();
  v5 = *(v1 + 16);
  sub_22BB36CE0();
  v15 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v2[21] = v9;
  *v9 = v10;
  v9[1] = sub_22BC5B7F8;
  v11 = v2[18];
  v12 = v2[15];
  v13 = v2[16];

  return (v15)(v12, v13, v11, v2 + 7, v4 + 16, v0, v1);
}

uint64_t sub_22BC5B7F8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 136);
    v10 = sub_22BC5B920;
  }

  else
  {
    v11 = *(v3 + 136);
    swift_endAccess();
    sub_22BB58728(v3 + 56, &qword_27D8E2540, &unk_22BDBCC00);
    v10 = sub_22BC5EECC;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BC5B920()
{
  sub_22BB2F0D4();
  swift_endAccess();
  sub_22BB58728(v0 + 56, &qword_27D8E2540, &unk_22BDBCC00);
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();
  v2 = *(v0 + 176);

  return v1();
}

uint64_t sub_22BC5B99C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_22BB361CC(sub_22BC5B9B8, v1);
}

uint64_t sub_22BC5B9B8()
{
  sub_22BB30F5C();
  sub_22BB512F8(v2[8]);
  sub_22BB6B5D0();
  v3 = *(v1 + 24);
  sub_22BB36CE0();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_22BC5BAE0;
  v8 = v2[7];

  return v10(v8, v0, v1);
}

uint64_t sub_22BC5BAE0()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_22BC5BC00;
  }

  else
  {
    v7 = sub_22BC5EECC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22BC5BC00()
{
  sub_22BB2F0D4();
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_22BC5BC5C()
{
  sub_22BB2F0D4();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = sub_22BDB4C34();
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  v1[26] = sub_22BB30ACC();
  v8 = sub_22BDB9564();
  v1[27] = v8;
  sub_22BB30434(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = sub_22BB30ACC();
  v12 = type metadata accessor for ActionExecutionResult(0);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  v1[30] = sub_22BB30ACC();
  v15 = sub_22BDBA1C4();
  v1[31] = v15;
  sub_22BB30434(v15);
  v1[32] = v16;
  v18 = *(v17 + 64);
  v1[33] = sub_22BB30ACC();
  v19 = sub_22BDB84B4();
  v1[34] = v19;
  sub_22BB30434(v19);
  v1[35] = v20;
  v22 = *(v21 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v23 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  v1[38] = sub_22BB30ACC();
  v26 = sub_22BDB43E4();
  v1[39] = v26;
  sub_22BB30434(v26);
  v1[40] = v27;
  v29 = *(v28 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v30 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

void sub_22BC5BE7C()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 184);
  sub_22BDB88B4();
  sub_22BDB88C4();
  sub_22BB31814(v2, 1, v1);
  if (!v4)
  {
    v27 = *(v0 + 296);
    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v30 = *(v0 + 272);
    v31 = *(v0 + 184);
    (*(*(v0 + 320) + 32))(*(v0 + 336), *(v0 + 304), *(v0 + 312));
    sub_22BDB88D4();
    (*(v29 + 104))(v28, *MEMORY[0x277D1DD48], v30);
    sub_22BB331D4();
    v32 = sub_22BDB84A4();
    v33 = *(v29 + 8);
    v33(v28, v30);
    v33(v27, v30);
    if (v32)
    {
      v35 = *(v0 + 328);
      v34 = *(v0 + 336);
      v36 = *(v0 + 312);
      v37 = *(v0 + 320);
      v38 = *(v0 + 264);
      sub_22BB690EC(*(v0 + 200) + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_runtime, v0 + 136);
      v39 = *(v0 + 168);
      sub_22BB69FEC((v0 + 136), *(v0 + 160));
      (*(v37 + 16))(v35, v34, v36);
      sub_22BDBA1B4();
      v40 = *(v39 + 32);
      sub_22BB36CE0();
      v66 = v41 + *v41;
      v43 = *(v42 + 4);
      swift_task_alloc();
      sub_22BB30B34();
      *(v0 + 344) = v44;
      *v44 = v45;
      v44[1] = sub_22BC5C4F8;
      v46 = *(v0 + 264);
      v47 = *(v0 + 176);
      sub_22BB374A0();

      __asm { BRAA            X4, X16 }
    }

    v50 = *(v0 + 336);
    v51 = *(v0 + 312);
    v52 = *(v0 + 320);

    type metadata accessor for ExecutorError(0);
    sub_22BB52DB4();
    sub_22BC56674(v53, v54);
    sub_22BB369E0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v55 = *(v52 + 8);
    v56 = sub_22BB331D4();
    v57(v56);
    v59 = *(v0 + 328);
    v58 = *(v0 + 336);
    sub_22BB30C5C();

    sub_22BB2F09C();
    sub_22BB374A0();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 280);
  v64 = *(v0 + 232);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v62 = *(v0 + 272);
  v9 = *(v0 + 184);
  sub_22BB58728(*(v0 + 304), &qword_27D8E3218, &qword_22BDBE390);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_22BB690EC(v7 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_runtime, v0 + 56);
  v63 = *(v0 + 88);
  sub_22BB69FEC((v0 + 56), *(v0 + 80));
  sub_22BDB88A4();
  sub_22BDBB334();

  MEMORY[0x2318A4C40](0xD000000000000013, 0x800000022BDD1E40);
  sub_22BBE6DE0(&qword_27D8E3220, &off_22BDBE398);
  v10 = (sub_22BBE6DE0(&qword_27D8E3228, &unk_22BDBE3A0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22BDBCBD0;
  v14 = (v13 + v12);
  v15 = v10[14];
  *v14 = 0x6F6974617265706FLL;
  v14[1] = 0xE90000000000006ELL;

  sub_22BDB88D4();
  sub_22BC5CB8C();

  (*(v6 + 8))(v5, v62);
  sub_22BDB9504();
  sub_22BDBAB14();
  sub_22BDB94A4();
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  v16 = *(v63 + 8);
  sub_22BB36CE0();
  v65 = v17 + *v17;
  v19 = *(v18 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 360) = v20;
  *v20 = v21;
  v20[1] = sub_22BC5C734;
  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(v0 + 192);
  sub_22BB374A0();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_22BC5C4F8()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v2[43];
  *v4 = *v1;
  *(v3 + 352) = v0;

  v6 = v2[33];
  v7 = v2[32];
  v8 = v2[31];
  v9 = v2[25];
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = sub_22BC5CAC4;
  }

  else
  {
    v10 = sub_22BC5C668;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BC5C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[41];
  v14 = v12[42];
  v15 = v12[39];
  v16 = v12[40];
  sub_22BB30C5C();
  (*(v17 + 8))(v14);
  sub_22BB32FA4(v12 + 17);

  sub_22BB2F09C();
  sub_22BB33430();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22BC5C734()
{
  sub_22BB34E84();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[45];
  *v4 = *v1;
  v3[46] = v0;

  v6 = v2[29];
  v7 = v2[28];
  v8 = v2[27];
  v9 = v2[25];
  sub_22BB58728((v3 + 12), &qword_27D8E2B28, &unk_22BDBD230);
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = sub_22BC5C9FC;
  }

  else
  {
    v10 = sub_22BC5C8D4;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BC5C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[30];
  sub_22BB32FA4(v12 + 7);
  type metadata accessor for ExecutorError(0);
  sub_22BB52DB4();
  sub_22BC56674(v14, v15);
  sub_22BB369E0();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22BB32A8C();
  sub_22BB58728((v12 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);
  v17 = v12[41];
  v16 = v12[42];
  sub_22BB30C5C();

  sub_22BB2F09C();
  sub_22BB33430();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22BC5C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  sub_22BB58728((v12 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB32FA4(v12 + 7);
  v13 = v12[46];
  v15 = v12[41];
  v14 = v12[42];
  sub_22BB30C5C();

  sub_22BB2F09C();
  sub_22BB33430();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_22BC5CAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  (*(v12[40] + 8))(v12[42], v12[39]);
  sub_22BB32FA4(v12 + 17);
  v13 = v12[44];
  v15 = v12[41];
  v14 = v12[42];
  sub_22BB30C5C();

  sub_22BB2F09C();
  sub_22BB33430();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

void sub_22BC5CB8C()
{
  sub_22BB30F94();
  v1 = v0;
  v50 = v2;
  v3 = sub_22BBE6DE0(&qword_27D8E2F78, &unk_22BDBD980);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v7 = sub_22BBE6DE0(&qword_27D8E2E20, &unk_22BDBF4A0);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BDB84B4();
  v12 = sub_22BB30444(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v19 = v18 - v17;
  v20 = sub_22BDBA634();
  v21 = sub_22BB30444(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  v28 = (v27 - v26);
  v51 = sub_22BDB8CB4();
  v29 = sub_22BB30444(v51);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  v36 = (v35 - v34);
  v37 = swift_allocObject();
  v37[2] = v50;
  v37[3] = v1;
  v37[4] = 0xD00000000000001CLL;
  v37[5] = 0x800000022BDD1E60;
  *v28 = v37;
  (*(v23 + 104))(v28, *MEMORY[0x277D72D28], v20);
  (*(v14 + 104))(v19, *MEMORY[0x277D1DD48], v11);

  sub_22BDB84A4();
  (*(v14 + 8))(v19, v11);
  sub_22BDBA3E4();
  v38 = swift_allocBox();
  sub_22BDBA7D4();
  sub_22BB30B28();
  sub_22BB336D0(v39, v40, v41, v42);
  sub_22BDBA3C4();
  *v36 = v38;
  v43 = *MEMORY[0x277D729E8];
  v44 = sub_22BDBA594();
  sub_22BB2F330(v44);
  (*(v45 + 104))(v36, v43);
  (*(v31 + 104))(v36, *MEMORY[0x277D1E040], v51);
  sub_22BDB5284();
  sub_22BB30B28();
  sub_22BB336D0(v46, v47, v48, v49);
  sub_22BDB94E4();
  sub_22BB314EC();
}

uint64_t sub_22BC5CF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return sub_22BB361CC(sub_22BC5CF48, v3);
}

uint64_t sub_22BC5CF48()
{
  sub_22BB30F5C();
  sub_22BB512F8(v2[10]);
  sub_22BB6B5D0();
  v3 = *(v1 + 40);
  sub_22BB36CE0();
  v13 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v2[11] = v7;
  *v7 = v8;
  v7[1] = sub_22BC5D070;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[7];

  return v13(v11, v9, v10, v0, v1);
}

uint64_t sub_22BC5D070()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v2 + 88);
  *v4 = *v1;
  *(v3 + 96) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_22BC5D1EC;
  }

  else
  {
    v7 = sub_22BC5D190;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22BC5D190()
{
  sub_22BB2F0D4();
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();

  return v1();
}

uint64_t sub_22BC5D1EC()
{
  sub_22BB2F0D4();
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_22BC5D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return sub_22BB361CC(sub_22BC5D26C, v5);
}

uint64_t sub_22BC5D26C()
{
  sub_22BB30F5C();
  v3 = v2[15];
  sub_22BB512F8(v2[17]);
  sub_22BB6B5D0();
  sub_22BB690EC(v3, (v2 + 7));
  v4 = *(v1 + 8);
  sub_22BB3561C();
  v15 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v2[18] = v8;
  *v8 = v9;
  v8[1] = sub_22BC5D3B4;
  v10 = v2[16];
  v11 = v2[13];
  v12 = v2[14];
  v13 = v2[12];

  return (v15)(v13, v11, v12, v2 + 7, v10, v0, v1);
}

uint64_t sub_22BC5D3B4()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = *(v2 + 144);
  *v4 = *v1;
  *(v3 + 152) = v0;

  sub_22BB58728(v3 + 56, &qword_27D8E2B28, &unk_22BDBD230);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_22BC5D4EC;
  }

  else
  {
    v7 = sub_22BC5EECC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22BC5D4EC()
{
  sub_22BB2F0D4();
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();
  v2 = *(v0 + 152);

  return v1();
}

uint64_t sub_22BC5D550()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BC5D624()
{
  result = qword_27D8E31E0;
  if (!qword_27D8E31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E31E0);
  }

  return result;
}

unint64_t sub_22BC5D67C()
{
  result = qword_27D8E31E8;
  if (!qword_27D8E31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E31E8);
  }

  return result;
}

unint64_t sub_22BC5D6D4()
{
  result = qword_27D8E31F0;
  if (!qword_27D8E31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E31F0);
  }

  return result;
}

unint64_t sub_22BC5D72C()
{
  result = qword_27D8E31F8;
  if (!qword_27D8E31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E31F8);
  }

  return result;
}

unint64_t sub_22BC5D784()
{
  result = qword_27D8E3200;
  if (!qword_27D8E3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3200);
  }

  return result;
}

unint64_t sub_22BC5D7DC()
{
  result = qword_27D8E3208;
  if (!qword_27D8E3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3208);
  }

  return result;
}

uint64_t sub_22BC5D830()
{
  v0 = type metadata accessor for ExecutorError(0);
  v1 = sub_22BB2F330(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v6 = v5 - v4;
  sub_22BB3A1D4();
  sub_22BB2F324();
  sub_22BC57A18();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_22BC57968(v6, type metadata accessor for ExecutorError);
      result = 2;
      break;
    case 2:
      sub_22BC57968(v6, type metadata accessor for ExecutorError);
      result = 6;
      break;
    case 3:
      return result;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    default:
      sub_22BC57968(v6, type metadata accessor for ExecutorError);
      result = 1;
      break;
  }

  return result;
}

void sub_22BC5D95C()
{
  sub_22BB30F94();
  v1 = sub_22BDBA634();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB9564();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = type metadata accessor for ExecutorError(0);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB3A1D4();
  sub_22BB331D4();
  sub_22BC57A18();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB51840();
      v31(v18, v0, v10);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22BDBCBD0;
      *(inited + 32) = 0x6E6F69746361;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = v10;
      v33 = sub_22BB8B8A0((inited + 48));
      (*(v13 + 16))(v33, v18, v10);
      sub_22BDBAB14();
      (*(v13 + 8))(v18, v10);
      break;
    case 2u:
      (*(v4 + 32))(v9, v0, v1);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_22BDBCBD0;
      *(v23 + 32) = 0x644965707974;
      *(v23 + 40) = 0xE600000000000000;
      *(v23 + 72) = v1;
      v24 = sub_22BB8B8A0((v23 + 48));
      (*(v4 + 16))(v24, v9, v1);
      sub_22BDBAB14();
      v25 = *(v4 + 8);
      v26 = sub_22BB2F324();
      v27(v26);
      break;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
      goto LABEL_2;
    default:
      v28 = *v0;
      v29 = v0[1];
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_22BDBCBD0;
      *(v30 + 32) = 25705;
      *(v30 + 40) = 0xE200000000000000;
      *(v30 + 72) = MEMORY[0x277D837D0];
      *(v30 + 48) = v28;
      *(v30 + 56) = v29;
LABEL_2:
      sub_22BDBAB14();
      break;
  }

  sub_22BB314EC();
}

uint64_t sub_22BC5DCE4(uint64_t a1)
{
  v2 = sub_22BC56674(&qword_27D8E32B8, type metadata accessor for ExecutorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC5DD50(uint64_t a1)
{
  v2 = sub_22BC56674(&qword_27D8E32B8, type metadata accessor for ExecutorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC5DE28()
{
  sub_22BB34E84();
  v0 = sub_22BDB96E4();
  sub_22BB30434(v0);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_22BB6BCB4(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v7 = sub_22BB34014(v5);

  return sub_22BC5B674(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BC5DF18(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_22BB30444(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v2);
  sub_22BB32FA4((v1 + v8));
  v11 = *(v1 + v9);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v5 | 7);
}

uint64_t sub_22BC5E004()
{
  sub_22BB34E84();
  v0 = sub_22BDB9774();
  sub_22BB30434(v0);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_22BB6BCB4(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v7 = sub_22BB34014(v5);

  return sub_22BC5AA94(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BC5E0F4()
{
  result = sub_22BDB9564();
  if (v1 <= 0x3F)
  {
    result = sub_22BDBA634();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BC5E174()
{
  sub_22BC5E210();
  if (v0 <= 0x3F)
  {
    sub_22BC5E290();
    if (v1 <= 0x3F)
    {
      sub_22BC5E2FC();
      if (v2 <= 0x3F)
      {
        sub_22BDB5AD4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22BC5E210()
{
  if (!qword_27D8E3298)
  {
    sub_22BDB90B4();
    sub_22BBEB2E0(&qword_27D8E32A0, &qword_22BDCE7B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8E3298);
    }
  }
}

void sub_22BC5E290()
{
  if (!qword_27D8E32A8)
  {
    sub_22BDB90B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8E32A8);
    }
  }
}

void sub_22BC5E2FC()
{
  if (!qword_27D8E32B0)
  {
    sub_22BDB9564();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8E32B0);
    }
  }
}

unint64_t sub_22BC5E3B0()
{
  result = qword_27D8E32E8;
  if (!qword_27D8E32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E32E8);
  }

  return result;
}

unint64_t sub_22BC5E404()
{
  result = qword_27D8E32F8;
  if (!qword_27D8E32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E32F8);
  }

  return result;
}

unint64_t sub_22BC5E458()
{
  result = qword_27D8E3308;
  if (!qword_27D8E3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3308);
  }

  return result;
}

unint64_t sub_22BC5E4AC()
{
  result = qword_27D8E3318;
  if (!qword_27D8E3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3318);
  }

  return result;
}

unint64_t sub_22BC5E500()
{
  result = qword_27D8E3328;
  if (!qword_27D8E3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3328);
  }

  return result;
}

uint64_t sub_22BC5E554(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E32A0, &qword_22BDCE7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BC5E5C4()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F330(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BC5E61C()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t getEnumTagSinglePayload for ActionExecutionResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActionExecutionResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BC5E7F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ActionExecutionResult.IntermediateSystemResponseCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BC5E984()
{
  result = qword_27D8E3388;
  if (!qword_27D8E3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3388);
  }

  return result;
}

unint64_t sub_22BC5E9DC()
{
  result = qword_27D8E3390;
  if (!qword_27D8E3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3390);
  }

  return result;
}

unint64_t sub_22BC5EA34()
{
  result = qword_27D8E3398;
  if (!qword_27D8E3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3398);
  }

  return result;
}

unint64_t sub_22BC5EA8C()
{
  result = qword_27D8E33A0;
  if (!qword_27D8E33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33A0);
  }

  return result;
}

unint64_t sub_22BC5EAE4()
{
  result = qword_27D8E33A8;
  if (!qword_27D8E33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33A8);
  }

  return result;
}

unint64_t sub_22BC5EB3C()
{
  result = qword_27D8E33B0;
  if (!qword_27D8E33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33B0);
  }

  return result;
}

unint64_t sub_22BC5EB94()
{
  result = qword_27D8E33B8;
  if (!qword_27D8E33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33B8);
  }

  return result;
}

unint64_t sub_22BC5EBEC()
{
  result = qword_27D8E33C0;
  if (!qword_27D8E33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33C0);
  }

  return result;
}

unint64_t sub_22BC5EC44()
{
  result = qword_27D8E33C8;
  if (!qword_27D8E33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33C8);
  }

  return result;
}

unint64_t sub_22BC5EC9C()
{
  result = qword_27D8E33D0;
  if (!qword_27D8E33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33D0);
  }

  return result;
}

unint64_t sub_22BC5ECF4()
{
  result = qword_27D8E33D8;
  if (!qword_27D8E33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33D8);
  }

  return result;
}

unint64_t sub_22BC5ED4C()
{
  result = qword_27D8E33E0;
  if (!qword_27D8E33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33E0);
  }

  return result;
}

unint64_t sub_22BC5EDA4()
{
  result = qword_27D8E33E8;
  if (!qword_27D8E33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33E8);
  }

  return result;
}

unint64_t sub_22BC5EDFC()
{
  result = qword_27D8E33F0;
  if (!qword_27D8E33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33F0);
  }

  return result;
}

unint64_t sub_22BC5EE54()
{
  result = qword_27D8E33F8;
  if (!qword_27D8E33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E33F8);
  }

  return result;
}

uint64_t sub_22BC5EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v22;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a2;
  v8[25] = a3;
  v8[23] = a1;
  v10 = sub_22BDB43E4();
  v8[30] = v10;
  v11 = *(v10 - 8);
  v8[31] = v11;
  v12 = *(v11 + 64);
  v8[32] = sub_22BB30ACC();
  v13 = *(*(sub_22BDB77E4() - 8) + 64);
  v8[33] = sub_22BB30ACC();
  v14 = *(a8 - 8);
  v8[34] = v14;
  v15 = *(v14 + 64);
  v8[35] = sub_22BB30ACC();
  v16 = sub_22BDB9C14();
  v8[36] = v16;
  v17 = *(v16 - 8);
  v8[37] = v17;
  v18 = *(v17 + 64);
  v8[38] = sub_22BB30ACC();
  v19 = *(*(sub_22BDB5F24() - 8) + 64);
  v8[39] = sub_22BB30ACC();

  return MEMORY[0x2822009F8](sub_22BC5F0A8, 0, 0);
}

uint64_t sub_22BC5F0A8()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 272);
  v27 = *(v0 + 280);
  v28 = *(v0 + 264);
  v6 = *(v0 + 248);
  v31 = *(v0 + 256);
  v32 = *(v0 + 240);
  v30 = *(v0 + 232);
  v26 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 192);
  v33 = *(v0 + 200);
  v29 = *(v0 + 184);
  sub_22BB8C2F4(v29, v1);
  (*(v4 + 16))(v2, v9, v3);
  sub_22BB69088(v8, v0 + 16);
  v10 = type metadata accessor for ShortcutsToolContext(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_22BB8D2F8(v1, v2, (v0 + 16));
  sub_22BBE6DE0(&qword_27D8E3400, &qword_22BDBEB98);
  *(v0 + 176) = v13;
  (*(v5 + 16))(v27, v7, v26);
  v14 = sub_22BDB7FC4();
  v15 = MEMORY[0x277D1D738];
  *(v0 + 80) = v14;
  *(v0 + 88) = v15;
  sub_22BB8B8A0((v0 + 56));

  sub_22BDB7FB4();
  sub_22BDB7804();
  v16 = sub_22BDB7844();
  v17 = MEMORY[0x277D1D530];
  *(v0 + 120) = v16;
  *(v0 + 128) = v17;
  sub_22BB8B8A0((v0 + 96));
  sub_22BDB7824();
  v18 = sub_22BB8BC90(v0 + 176, v27, v0 + 56, (v0 + 96), v26, v30);
  sub_22BB8C2F4(v29, v1);
  (*(v6 + 32))(v31, v1, v32);
  sub_22BB69088(v33, v0 + 136);
  v19 = type metadata accessor for Executor(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = sub_22BC5F518(v31, v18, (v0 + 136), v22);

  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_22BC5F318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_22BC5F3FC;

  return sub_22BC5EEF4(a2, a3, a4, v14, a6, a7, v15, v18);
}

uint64_t sub_22BC5F3FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_22BC5F518(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v12 = sub_22BBE6DE0(&qword_27D8E3400, &qword_22BDBEB98);
  v13 = &off_283F743F0;
  *&v11 = a2;
  swift_defaultActor_initialize();
  *(a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor__isFirstAcceptSinceLoad) = 1;
  v8 = OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_session;
  v9 = sub_22BDB43E4();
  (*(*(v9 - 8) + 32))(a4 + v8, a1, v9);
  sub_22BB382E8(&v11, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_runtime);
  sub_22BB382E8(a3, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_instrumentationSender);
  return a4;
}

uint64_t type metadata accessor for ExecutorSELFContext()
{
  result = qword_27D8E3408;
  if (!qword_27D8E3408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BC5F684()
{
  v0 = sub_22BC5F760();
  if (v1 <= 0x3F)
  {
    v0 = sub_22BDB43E4();
    if (v2 <= 0x3F)
    {
      sub_22BC5F7BC();
      if (v4 > 0x3F)
      {
        return v3;
      }

      sub_22BC5F80C();
      if (v5 > 0x3F)
      {
        return v3;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

unint64_t sub_22BC5F760()
{
  result = qword_27D8E3418;
  if (!qword_27D8E3418)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E3418);
  }

  return result;
}

void sub_22BC5F7BC()
{
  if (!qword_27D8E3420)
  {
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E3420);
    }
  }
}

void sub_22BC5F80C()
{
  if (!qword_28142DD30)
  {
    sub_22BDB43E4();
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_28142DD30);
    }
  }
}

uint64_t sub_22BC5F864()
{
  v1 = v0;
  v2 = 7104878;
  v3 = sub_22BDB43E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD000000000000027, 0x800000022BDD1FD0);
  v12 = type metadata accessor for ExecutorSELFContext();
  v13 = v12[6];
  sub_22BC5FC90(&qword_28142DD38, MEMORY[0x277CC95F0]);
  v14 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v14);

  MEMORY[0x2318A4C40](0x64496E617073202CLL, 0xEA0000000000203ALL);
  v15 = v1 + v12[7];
  if (*(v15 + 8))
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v22[1] = *v15;
    v17 = sub_22BDBB684();
    v16 = v18;
  }

  MEMORY[0x2318A4C40](v17, v16);

  MEMORY[0x2318A4C40](0x757165526669202CLL, 0xEF203A6449747365);
  sub_22BB956CC(v1 + v12[8], v11);
  if (sub_22BB3AA28(v11, 1, v3) == 1)
  {
    v19 = 0xE300000000000000;
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v2 = sub_22BDBB684();
    v19 = v20;
    (*(v4 + 8))(v7, v3);
  }

  MEMORY[0x2318A4C40](v2, v19);

  MEMORY[0x2318A4C40](0xD000000000000013, 0x800000022BDD2000);
  MEMORY[0x2318A4C40](*(v1 + v12[10]), *(v1 + v12[10] + 8));
  MEMORY[0x2318A4C40](41, 0xE100000000000000);
  return v23;
}

uint64_t sub_22BC5FB8C(uint64_t a1)
{
  v3 = *(type metadata accessor for ExecutorSELFContext() + 20);
  v4 = sub_22BDB43E4();
  (*(*(v4 - 8) + 24))(&v1[v3], a1, v4);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  sub_22BB69FEC(v1, v5);
  return (*(v6 + 16))(a1, v5, v6);
}

uint64_t sub_22BC5FC38(uint64_t a1)
{
  result = sub_22BC5FC90(&qword_27D8E3428, type metadata accessor for ExecutorSELFContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BC5FC90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BC5FCD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_22BC5FD3C(v4);
}

uint64_t sub_22BC5FD04()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_22BC5FD3C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ExecutorCapturingSELFLoggerBuilder.__allocating_init()()
{
  sub_22BB36CEC();
  v0 = swift_allocObject();
  ExecutorCapturingSELFLoggerBuilder.init()();
  return v0;
}

uint64_t ExecutorCapturingSELFLoggerBuilder.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_22BC5FE9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22BD7DB04();
  v4 = *(*(a1 + 24) + 16);
  sub_22BD7DB34(v4);
  v5 = *(a1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = sub_22BDB7444();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(a1 + 24) = v5;
  return swift_endAccess();
}

uint64_t ExecutorCapturingSELFLoggerBuilder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ExecutorCapturingSELFLoggerBuilder.__deallocating_deinit()
{
  ExecutorCapturingSELFLoggerBuilder.deinit();
  v0 = sub_22BB36CEC();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s23IntelligenceFlowRuntime28SnippetStreamingCheckInErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22BDBB814();
  MEMORY[0x2318A57F0](v1);
  return sub_22BDBB834();
}

unint64_t sub_22BC60114()
{
  result = qword_27D8E3458;
  if (!qword_27D8E3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3458);
  }

  return result;
}

unint64_t sub_22BC6016C()
{
  result = qword_27D8E3460;
  if (!qword_27D8E3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3460);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ErrorCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchToolQueryType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BC604EC()
{
  v0 = sub_22BDB77D4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_22BDB7584();
  sub_22BC6E604();
  return sub_22BDB75A4();
}

uint64_t sub_22BC60748(uint64_t a1)
{
  v2 = sub_22BDB7444();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = sub_22BDB77D4();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB63F4();
  v14 = *(v3 + 16);
  v14(v9, a1, v2);
  v15 = sub_22BDB77C4();
  v16 = sub_22BDBB0F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[1] = a1;
    v18 = v17;
    v25[0] = swift_slowAlloc();
    *&v28 = v25[0];
    *v18 = 136315394;
    *(v18 + 4) = sub_22BB32EE0(0x6E65764574696D65, 0xED0000293A5F2874, &v28);
    *(v18 + 12) = 2080;
    v14(v7, v9, v2);
    v19 = sub_22BDBAC14();
    v21 = v20;
    (*(v3 + 8))(v9, v2);
    v22 = sub_22BB32EE0(v19, v21, &v28);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_22BB2C000, v15, v16, "[%s] Writing log %s", v18, 0x16u);
    v23 = v25[0];
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v23, -1, -1);
    MEMORY[0x2318A6080](v18, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  result = (*(v26 + 8))(v13, v27);
  if (qword_27D8E2280 != -1)
  {
    result = swift_once();
  }

  if (qword_27D8E3448)
  {
    result = sub_22BB69088(&xmmword_27D8E3430, &v28);
  }

  else
  {
    v28 = xmmword_27D8E3430;
    v29 = unk_27D8E3440;
    v30 = qword_27D8E3450;
  }

  if (*(&v29 + 1))
  {
    sub_22BB69FEC(&v28, *(&v29 + 1));
    sub_22BDB7684();
    return sub_22BB32FA4(&v28);
  }

  return result;
}

uint64_t sub_22BC60B7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  swift_beginAccess();
  v4 = sub_22BDB43E4();
  (*(*(v4 - 8) + 24))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22BC60C0C(uint64_t a1, uint64_t a2, int a3)
{
  v56 = a3;
  v57 = a2;
  v59 = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E3600, &qword_22BDBF060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v50 - v6;
  v7 = sub_22BDB7444();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E3620, &qword_22BDBF080);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v50 - v12;
  v13 = sub_22BDB6F14();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v50 - v18;
  v20 = sub_22BDB43E4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v50 - v27;
  v29 = sub_22BDB6ED4();
  v50 = *(v29 - 8);
  v51 = v29;
  v30 = *(v50 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6EC4();
  v33 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  swift_beginAccess();
  v34 = *(v21 + 16);
  v35 = v3 + v33;
  v36 = v3;
  v34(v24, v35, v20);
  sub_22BDB7664();
  v34(v19, v24, v20);
  sub_22BB336D0(v19, 0, 1, v20);
  sub_22BDB7654();
  (*(v21 + 8))(v24, v20);
  v37 = sub_22BDB7674();
  sub_22BB336D0(v28, 0, 1, v37);
  sub_22BDB6EB4();
  v38 = v62;
  sub_22BDB6F04();
  MEMORY[0x2318A0EC0](1);
  sub_22BDB6EE4();
  v40 = v52;
  v39 = v53;
  v41 = v54;
  (*(v52 + 16))(v54, v38, v53);
  sub_22BB336D0(v41, 0, 1, v39);
  sub_22BDB6E84();
  v42 = v55;
  sub_22BC61184(v59, v55);
  v43 = v50;
  v44 = v51;
  v45 = v58;
  (*(v50 + 16))(v58, v32, v51);
  sub_22BB336D0(v45, 0, 1, v44);
  v46 = v42;
  sub_22BDB73C4();
  v47 = v36[5];
  v48 = v36[6];
  sub_22BB69FEC(v36 + 2, v47);
  (*(v48 + 8))(v46, v47, v48);
  (*(v60 + 8))(v46, v61);
  (*(v40 + 8))(v62, v39);
  return (*(v43 + 8))(v32, v44);
}

uint64_t sub_22BC61184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v48 = a2;
  v4 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v6;
  v7 = sub_22BBE6DE0(&qword_27D8E34D8, &qword_22BDBEF38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v41 - v9;
  v10 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = sub_22BDB7384();
  v43 = *(v24 - 8);
  v44 = v24;
  v25 = *(v43 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB7374();
  v28 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId;
  sub_22BDB7664();
  v29 = sub_22BDB43E4();
  v30 = *(v29 - 8);
  v42 = *(v30 + 16);
  v42(v16, v3 + v28, v29);
  sub_22BB336D0(v16, 0, 1, v29);
  sub_22BDB7654();
  v31 = sub_22BDB7674();
  sub_22BB336D0(v23, 0, 1, v31);
  sub_22BDB7344();
  v32 = *(v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId);
  v33 = *(v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId + 8);
  sub_22BDB7364();
  sub_22BBB7004(v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId, v14, &qword_27D8E3218, &qword_22BDBE390);
  if (sub_22BB3AA28(v14, 1, v29) == 1)
  {
    sub_22BB6B75C(v14, &qword_27D8E3218, &qword_22BDBE390);
    v34 = 1;
  }

  else
  {
    sub_22BDB7664();
    v42(v16, v14, v29);
    sub_22BB336D0(v16, 0, 1, v29);
    sub_22BDB7654();
    (*(v30 + 8))(v14, v29);
    v34 = 0;
  }

  sub_22BB336D0(v21, v34, 1, v31);
  sub_22BDB7354();
  sub_22BDB7434();
  v36 = v43;
  v35 = v44;
  v37 = v45;
  (*(v43 + 16))(v45, v27, v44);
  sub_22BB336D0(v37, 0, 1, v35);
  sub_22BDB7394();
  v38 = sub_22BDB7614();
  v39 = v46;
  (*(*(v38 - 8) + 16))(v46, v47, v38);
  sub_22BB336D0(v39, 0, 1, v38);
  sub_22BDB73A4();
  return (*(v36 + 8))(v27, v35);
}

uint64_t sub_22BC61630(uint64_t a1)
{
  v55 = a1;
  v2 = sub_22BBE6DE0(&qword_27D8E3600, &qword_22BDBF060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v48 - v4;
  v5 = sub_22BDB7444();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E3618, &qword_22BDBF078);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v48 - v10;
  v11 = sub_22BDB6E34();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - v16;
  v18 = sub_22BDB43E4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v48 - v25;
  v27 = sub_22BDB6ED4();
  v48 = *(v27 - 8);
  v49 = v27;
  v28 = *(v48 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6EC4();
  v31 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  swift_beginAccess();
  v32 = *(v19 + 16);
  v33 = v1 + v31;
  v34 = v1;
  v32(v22, v33, v18);
  sub_22BDB7664();
  v32(v17, v22, v18);
  sub_22BB336D0(v17, 0, 1, v18);
  sub_22BDB7654();
  (*(v19 + 8))(v22, v18);
  v35 = sub_22BDB7674();
  sub_22BB336D0(v26, 0, 1, v35);
  sub_22BDB6EB4();
  v36 = v58;
  sub_22BDB6DF4();
  MEMORY[0x2318A0DE0](1);
  v38 = v50;
  v37 = v51;
  v39 = v52;
  (*(v50 + 16))(v52, v36, v51);
  sub_22BB336D0(v39, 0, 1, v37);
  sub_22BDB6E94();
  v40 = v53;
  sub_22BC61184(v55, v53);
  v41 = v48;
  v42 = v49;
  v43 = v54;
  (*(v48 + 16))(v54, v30, v49);
  sub_22BB336D0(v43, 0, 1, v42);
  v44 = v40;
  sub_22BDB73C4();
  v45 = v34[5];
  v46 = v34[6];
  sub_22BB69FEC(v34 + 2, v45);
  (*(v46 + 8))(v44, v45, v46);
  (*(v56 + 8))(v44, v57);
  (*(v38 + 8))(v58, v37);
  return (*(v41 + 8))(v30, v42);
}

uint64_t sub_22BC61B90(char *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = sub_22BBE6DE0(&qword_27D8E3600, &qword_22BDBF060);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v58 - v7;
  v8 = sub_22BDB7444();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E3608, &qword_22BDBF068);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v58 - v13;
  v14 = sub_22BBE6DE0(&qword_27D8E3610, &qword_22BDBF070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v58 - v16;
  v17 = sub_22BDB6E64();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v17);
  v72 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v58 - v22;
  v24 = sub_22BDB43E4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v58 - v31;
  v33 = sub_22BDB6ED4();
  v59 = *(v33 - 8);
  v60 = v33;
  v34 = *(v59 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22BDB6D94();
  v73 = *(v70 - 8);
  v37 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v71 = (&v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74[0] = *a1;
  v58 = v3;
  sub_22BC62228(v74, v71);
  sub_22BDB6EC4();
  v39 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  swift_beginAccess();
  v40 = *(v25 + 16);
  v40(v28, v3 + v39, v24);
  sub_22BDB7664();
  v40(v23, v28, v24);
  sub_22BB336D0(v23, 0, 1, v24);
  sub_22BDB7654();
  (*(v25 + 8))(v28, v24);
  v41 = sub_22BDB7674();
  sub_22BB336D0(v32, 0, 1, v41);
  v42 = sub_22BDB6EB4();
  v43 = v72;
  MEMORY[0x2318A0E20](v42);
  v44 = v61;
  v45 = v70;
  (*(v73 + 16))(v61, v71, v70);
  sub_22BB336D0(v44, 0, 1, v45);
  MEMORY[0x2318A0E10](v44);
  v47 = v62;
  v46 = v63;
  v48 = v64;
  (*(v62 + 16))(v64, v43, v63);
  sub_22BB336D0(v48, 0, 1, v46);
  sub_22BDB6EA4();
  v49 = v65;
  v50 = v58;
  sub_22BC61184(v67, v65);
  v51 = v59;
  v52 = v60;
  v53 = v66;
  (*(v59 + 16))(v66, v36, v60);
  sub_22BB336D0(v53, 0, 1, v52);
  sub_22BDB73C4();
  v54 = v50;
  v55 = *(v50 + 40);
  v56 = *(v54 + 48);
  sub_22BB69FEC((v54 + 16), v55);
  (*(v56 + 8))(v49, v55, v56);
  (*(v68 + 8))(v49, v69);
  (*(v47 + 8))(v72, v46);
  (*(v51 + 8))(v36, v52);
  return (*(v73 + 8))(v71, v70);
}

uint64_t sub_22BC62228@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = MEMORY[0x277D1F948];
    }

    else
    {
      *a2 = 0;
      v3 = MEMORY[0x277D1F9A0];
    }
  }

  else
  {
    v3 = MEMORY[0x277D1F940];
  }

  v4 = *v3;
  v5 = sub_22BDB6D94();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_22BC622C8(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v4 = sub_22BBE6DE0(&qword_27D8E3600, &qword_22BDBF060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v57 - v6;
  v7 = sub_22BDB7444();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E3608, &qword_22BDBF068);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v57 - v12;
  v13 = sub_22BBE6DE0(&qword_27D8E3610, &qword_22BDBF070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v57 - v15;
  v16 = sub_22BDB6E64();
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v16);
  v71 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - v21;
  v23 = sub_22BDB43E4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v57 - v30;
  v32 = sub_22BDB6ED4();
  v58 = *(v32 - 8);
  v59 = v32;
  v33 = *(v58 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22BDB6D94();
  v72 = *(v69 - 8);
  v36 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v70 = (&v57 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v2;
  sub_22BC62958(a1, v70);
  sub_22BDB6EC4();
  v38 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  swift_beginAccess();
  v39 = *(v24 + 16);
  v39(v27, v2 + v38, v23);
  sub_22BDB7664();
  v39(v22, v27, v23);
  sub_22BB336D0(v22, 0, 1, v23);
  sub_22BDB7654();
  (*(v24 + 8))(v27, v23);
  v40 = sub_22BDB7674();
  sub_22BB336D0(v31, 0, 1, v40);
  v41 = sub_22BDB6EB4();
  v42 = v71;
  MEMORY[0x2318A0E20](v41);
  v43 = v60;
  v44 = v69;
  (*(v72 + 16))(v60, v70, v69);
  sub_22BB336D0(v43, 0, 1, v44);
  MEMORY[0x2318A0E10](v43);
  v46 = v61;
  v45 = v62;
  v47 = v63;
  (*(v61 + 16))(v63, v42, v62);
  sub_22BB336D0(v47, 0, 1, v45);
  sub_22BDB6EA4();
  v48 = v64;
  v49 = v57;
  sub_22BC61184(v66, v64);
  v50 = v58;
  v51 = v59;
  v52 = v65;
  (*(v58 + 16))(v65, v35, v59);
  sub_22BB336D0(v52, 0, 1, v51);
  sub_22BDB73C4();
  v53 = v49;
  v54 = *(v49 + 40);
  v55 = *(v53 + 48);
  sub_22BB69FEC((v53 + 16), v54);
  (*(v55 + 8))(v48, v54, v55);
  (*(v67 + 8))(v48, v68);
  (*(v46 + 8))(v71, v45);
  (*(v50 + 8))(v35, v51);
  return (*(v72 + 8))(v70, v69);
}

uint64_t sub_22BC62958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v3 = sub_22BDB4C84();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB4CE4();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB5414();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v53 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = sub_22BDB6D94();
  v62 = *(v22 - 8);
  v63 = v22;
  v23 = *(v62 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v60 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v61 = &v53 - v26;
  v27 = sub_22BDB5404();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, a1, v27);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == *MEMORY[0x277D1CBA0])
  {
    (*(v28 + 96))(v31, v27);
    (*(v11 + 32))(v21, v31, v10);
    v33 = (*(v11 + 88))(v21, v10);
    if (v33 == *MEMORY[0x277D1CC20])
    {
      (*(v11 + 16))(v19, v21, v10);
      (*(v11 + 96))(v19, v10);
      v34 = sub_22BDB5484();
      v35 = *(v34 - 8);
      if ((*(v35 + 88))(v19, v34) == *MEMORY[0x277D1CCE8])
      {
        v36 = MEMORY[0x277D1F8E8];
LABEL_52:
        v44 = v62;
        v43 = v63;
        v46 = v61;
        (*(v62 + 104))(v61, *v36, v63);
        (*(v11 + 8))(v21, v10);
        return (*(v44 + 32))(v64, v46, v43);
      }
    }

    else if (v33 == *MEMORY[0x277D1CC18])
    {
      v19 = v55;
      (*(v11 + 16))(v55, v21, v10);
      (*(v11 + 96))(v19, v10);
      v34 = sub_22BDB4F04();
      v35 = *(v34 - 8);
      v47 = (*(v35 + 88))(v19, v34);
      if (v47 == *MEMORY[0x277D1C5D8])
      {
        v36 = MEMORY[0x277D1F8C0];
        goto LABEL_52;
      }

      if (v47 == *MEMORY[0x277D1C5E0])
      {
        v36 = MEMORY[0x277D1F8C8];
        goto LABEL_52;
      }

      if (v47 == *MEMORY[0x277D1C5E8])
      {
        v36 = MEMORY[0x277D1F8D0];
        goto LABEL_52;
      }
    }

    else
    {
      if (v33 != *MEMORY[0x277D1CC10])
      {
LABEL_51:
        v36 = MEMORY[0x277D1F958];
        goto LABEL_52;
      }

      v19 = v54;
      (*(v11 + 16))(v54, v21, v10);
      (*(v11 + 96))(v19, v10);
      v34 = sub_22BDB5934();
      v35 = *(v34 - 8);
      v51 = (*(v35 + 88))(v19, v34);
      if (v51 == *MEMORY[0x277D1CF28])
      {
        v36 = MEMORY[0x277D1F900];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF58])
      {
        v36 = MEMORY[0x277D1F930];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF20])
      {
        v36 = MEMORY[0x277D1F8F8];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF48])
      {
        v36 = MEMORY[0x277D1F920];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF30])
      {
        v36 = MEMORY[0x277D1F908];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF50])
      {
        v36 = MEMORY[0x277D1F928];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF38])
      {
        v36 = MEMORY[0x277D1F910];
        goto LABEL_52;
      }

      if (v51 == *MEMORY[0x277D1CF40])
      {
        v36 = MEMORY[0x277D1F918];
        goto LABEL_52;
      }
    }

    (*(v35 + 8))(v19, v34);
    goto LABEL_51;
  }

  if (v32 != *MEMORY[0x277D1CBE8])
  {
    *v64 = 1;
    v48 = *MEMORY[0x277D1F9A0];
    (*(v62 + 104))();
    return (*(v28 + 8))(v31, v27);
  }

  (*(v28 + 96))(v31, v27);
  v37 = v56;
  (*(v56 + 32))(v9, v31, v6);
  v38 = v57;
  sub_22BDB4CD4();
  (*(v37 + 8))(v9, v6);
  v40 = v58;
  v39 = v59;
  v41 = (*(v58 + 88))(v38, v59);
  if (v41 != *MEMORY[0x277D1C3F0])
  {
    v44 = v62;
    v43 = v63;
    v46 = v60;
    if (v41 == *MEMORY[0x277D1C388])
    {
      v50 = MEMORY[0x277D1F8F0];
    }

    else if (v41 == *MEMORY[0x277D1C408])
    {
      v50 = MEMORY[0x277D1F990];
    }

    else if (v41 == *MEMORY[0x277D1C3D8])
    {
      v50 = MEMORY[0x277D1F978];
    }

    else if (v41 == *MEMORY[0x277D1C3A8])
    {
      v50 = MEMORY[0x277D1F960];
    }

    else if (v41 == *MEMORY[0x277D1C3E0])
    {
      v50 = MEMORY[0x277D1F980];
    }

    else if (v41 == *MEMORY[0x277D1C390])
    {
      v50 = MEMORY[0x277D1F8D8];
    }

    else if (v41 == *MEMORY[0x277D1C398])
    {
      v50 = MEMORY[0x277D1F8E0];
    }

    else if (v41 == *MEMORY[0x277D1C3E8])
    {
      v50 = MEMORY[0x277D1F988];
    }

    else if (v41 == *MEMORY[0x277D1C410])
    {
      v50 = MEMORY[0x277D1F998];
    }

    else
    {
      if (v41 != *MEMORY[0x277D1C3B8])
      {
        v45 = *(v62 + 104);
        if (v41 != *MEMORY[0x277D1C3D0])
        {
          v42 = *MEMORY[0x277D1F950];
          goto LABEL_8;
        }

        v52 = *MEMORY[0x277D1F970];
LABEL_60:
        v45(v60, v52, v63);
        return (*(v44 + 32))(v64, v46, v43);
      }

      v50 = MEMORY[0x277D1F968];
    }

    v52 = *v50;
    v45 = *(v62 + 104);
    goto LABEL_60;
  }

  v42 = *MEMORY[0x277D1F938];
  v44 = v62;
  v43 = v63;
  v45 = *(v62 + 104);
  v46 = v60;
LABEL_8:
  v45(v46, v42, v43);
  (*(v40 + 8))(v38, v39);
  return (*(v44 + 32))(v64, v46, v43);
}

uint64_t sub_22BC633F0(uint64_t a1, char *a2, uint64_t a3)
{
  v53 = a3;
  v48 = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E35D8, &qword_22BDBF038);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v47 - v6;
  v7 = sub_22BDB7444();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E35F0, &qword_22BDBF050);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v47 - v12;
  v13 = sub_22BBE6DE0(&qword_27D8E35F8, &qword_22BDBF058);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v47 - v15);
  v47 = sub_22BDB7154();
  v17 = *(v47 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v47);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v47 - v23;
  v25 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v47 - v27;
  v29 = sub_22BDB7114();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a2;
  sub_22BDB7104();
  sub_22BDB7664();
  v35 = sub_22BDB43E4();
  (*(*(v35 - 8) + 16))(v24, v48, v35);
  sub_22BB336D0(v24, 0, 1, v35);
  sub_22BDB7654();
  v36 = sub_22BDB7674();
  sub_22BB336D0(v28, 0, 1, v36);
  sub_22BDB70F4();
  sub_22BDB7144();
  MEMORY[0x2318A1100](1);
  v56 = v34;
  v37 = v51;
  sub_22BC63940(&v56, v16);
  v38 = sub_22BDB6E74();
  sub_22BB336D0(v16, 0, 1, v38);
  sub_22BDB7124();
  v39 = v49;
  v40 = v47;
  (*(v17 + 16))(v49, v20, v47);
  sub_22BB336D0(v39, 0, 1, v40);
  sub_22BDB70C4();
  v41 = v50;
  sub_22BC61184(v53, v50);
  v42 = v52;
  (*(v30 + 16))(v52, v33, v29);
  sub_22BB336D0(v42, 0, 1, v29);
  sub_22BDB73F4();
  v43 = v37;
  v44 = *(v37 + 40);
  v45 = *(v43 + 48);
  sub_22BB69FEC((v43 + 16), v44);
  (*(v45 + 8))(v41, v44, v45);
  (*(v54 + 8))(v41, v55);
  (*(v17 + 8))(v20, v40);
  return (*(v30 + 8))(v33, v29);
}

uint64_t sub_22BC63940@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  switch(*a1)
  {
    case 1:
      v3 = MEMORY[0x277D1F9D8];
      break;
    case 2:
      v3 = MEMORY[0x277D1F9E0];
      break;
    case 3:
      v3 = MEMORY[0x277D1F9C8];
      break;
    default:
      *a2 = 0;
      v3 = MEMORY[0x277D1F9D0];
      break;
  }

  v4 = *v3;
  v5 = sub_22BDB6E74();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_22BC63A00(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v43 = a1;
  v2 = sub_22BBE6DE0(&qword_27D8E35D8, &qword_22BDBF038);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v41 - v4;
  v5 = sub_22BDB7444();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E35E8, &qword_22BDBF048);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_22BDB7014();
  v41 = *(v13 - 8);
  v14 = v41;
  v42 = v13;
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - v20;
  v22 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v41 - v24;
  v26 = sub_22BDB7114();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB7104();
  sub_22BDB7664();
  v31 = sub_22BDB43E4();
  (*(*(v31 - 8) + 16))(v21, v43, v31);
  sub_22BB336D0(v21, 0, 1, v31);
  sub_22BDB7654();
  v32 = sub_22BDB7674();
  sub_22BB336D0(v25, 0, 1, v32);
  sub_22BDB70F4();
  sub_22BDB6DF4();
  MEMORY[0x2318A0FC0](1);
  v33 = *(v14 + 16);
  v34 = v42;
  v33(v12, v17, v42);
  sub_22BB336D0(v12, 0, 1, v34);
  sub_22BDB70D4();
  v35 = v46;
  sub_22BC61184(v45, v8);
  v36 = v44;
  (*(v27 + 16))(v44, v30, v26);
  sub_22BB336D0(v36, 0, 1, v26);
  sub_22BDB73F4();
  v37 = v35;
  v38 = *(v35 + 40);
  v39 = *(v37 + 48);
  sub_22BB69FEC((v37 + 16), v38);
  (*(v39 + 8))(v8, v38, v39);
  (*(v47 + 8))(v8, v48);
  (*(v41 + 8))(v17, v34);
  return (*(v27 + 8))(v30, v26);
}

uint64_t sub_22BC63EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a1;
  v3 = sub_22BBE6DE0(&qword_27D8E35D8, &qword_22BDBF038);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v5;
  v6 = sub_22BDB7444();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E35E0, &qword_22BDBF040);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_22BDB7074();
  v42 = *(v14 - 8);
  v15 = v42;
  v43 = v14;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v42 - v21;
  v23 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v42 - v25;
  v27 = sub_22BDB7114();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB7104();
  sub_22BDB7664();
  v32 = sub_22BDB43E4();
  (*(*(v32 - 8) + 16))(v22, v44, v32);
  sub_22BB336D0(v22, 0, 1, v32);
  sub_22BDB7654();
  v33 = sub_22BDB7674();
  sub_22BB336D0(v26, 0, 1, v33);
  sub_22BDB70F4();
  sub_22BDB6DF4();
  MEMORY[0x2318A1020](1);
  v34 = *(v15 + 16);
  v35 = v43;
  v34(v13, v18, v43);
  sub_22BB336D0(v13, 0, 1, v35);
  sub_22BDB70E4();
  v36 = v47;
  sub_22BC61184(v46, v9);
  v37 = v45;
  (*(v28 + 16))(v45, v31, v27);
  sub_22BB336D0(v37, 0, 1, v27);
  sub_22BDB73F4();
  v38 = v36;
  v39 = *(v36 + 40);
  v40 = *(v38 + 48);
  sub_22BB69FEC((v38 + 16), v39);
  (*(v40 + 8))(v9, v39, v40);
  (*(v48 + 8))(v9, v49);
  (*(v42 + 8))(v18, v35);
  return (*(v28 + 8))(v31, v27);
}

uint64_t sub_22BC64358(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E35B8, &qword_22BDBF018);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB6FB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A0F60](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E35D0, &qword_22BDBF030);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1F9E8];
  v22 = sub_22BDB6F84();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB73D4();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC64628(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E35B8, &qword_22BDBF018);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB6F44();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A0EF0](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E35C8, &qword_22BDBF028);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1F9F0];
  v22 = sub_22BDB6F84();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB73D4();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC648F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BBE6DE0(&qword_27D8E35B8, &qword_22BDBF018);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v27 - v7);
  v9 = sub_22BDB7444();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB6F74();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A0F20](1);
  sub_22BC61184(a2, v13);
  sub_22BBE6DE0(&qword_27D8E35C0, &qword_22BDBF020);
  v19 = swift_allocBox();
  v21 = v20;
  (*(v15 + 16))(v20, v18, v14);
  sub_22BB336D0(v21, 0, 1, v14);
  *v8 = v19;
  v22 = *MEMORY[0x277D1F9F8];
  v23 = sub_22BDB6F84();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  sub_22BB336D0(v8, 0, 1, v23);
  sub_22BDB73D4();
  v24 = v3[5];
  v25 = v3[6];
  sub_22BB69FEC(v3 + 2, v24);
  (*(v25 + 8))(v13, v24, v25);
  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_22BC64BC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3598, &qword_22BDBEFF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB7294();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A1240](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E35B0, &qword_22BDBF010);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA30];
  v22 = sub_22BDB7264();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB7414();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC64E98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3598, &qword_22BDBEFF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB7224();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A11D0](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E35A8, &qword_22BDBF008);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA38];
  v22 = sub_22BDB7264();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB7414();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC65168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BBE6DE0(&qword_27D8E3598, &qword_22BDBEFF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v27 - v7);
  v9 = sub_22BDB7444();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB7254();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A1200](1);
  sub_22BC61184(a2, v13);
  sub_22BBE6DE0(&qword_27D8E35A0, &qword_22BDBF000);
  v19 = swift_allocBox();
  v21 = v20;
  (*(v15 + 16))(v20, v18, v14);
  sub_22BB336D0(v21, 0, 1, v14);
  *v8 = v19;
  v22 = *MEMORY[0x277D1FA40];
  v23 = sub_22BDB7264();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  sub_22BB336D0(v8, 0, 1, v23);
  sub_22BDB7414();
  v24 = v3[5];
  v25 = v3[6];
  sub_22BB69FEC(v3 + 2, v24);
  (*(v25 + 8))(v13, v24, v25);
  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_22BC65438(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3578, &qword_22BDBEFD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB7334();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A12E0](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E3590, &qword_22BDBEFF0);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA48];
  v22 = sub_22BDB7304();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB7424();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC65708(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3578, &qword_22BDBEFD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB72C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A1270](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E3588, &qword_22BDBEFE8);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA50];
  v22 = sub_22BDB7304();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB7424();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC659D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BBE6DE0(&qword_27D8E3578, &qword_22BDBEFD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v27 - v7);
  v9 = sub_22BDB7444();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB72F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A12A0](1);
  sub_22BC61184(a2, v13);
  sub_22BBE6DE0(&qword_27D8E3580, &qword_22BDBEFE0);
  v19 = swift_allocBox();
  v21 = v20;
  (*(v15 + 16))(v20, v18, v14);
  sub_22BB336D0(v21, 0, 1, v14);
  *v8 = v19;
  v22 = *MEMORY[0x277D1FA58];
  v23 = sub_22BDB7304();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  sub_22BB336D0(v8, 0, 1, v23);
  sub_22BDB7424();
  v24 = v3[5];
  v25 = v3[6];
  sub_22BB69FEC(v3 + 2, v24);
  (*(v25 + 8))(v13, v24, v25);
  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_22BC65CA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3558, &qword_22BDBEFB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB71F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A11A0](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E3570, &qword_22BDBEFD0);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA18];
  v22 = sub_22BDB71C4();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB7404();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC65F78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3558, &qword_22BDBEFB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB7184();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A1130](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E3568, &qword_22BDBEFC8);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA20];
  v22 = sub_22BDB71C4();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB7404();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC66248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BBE6DE0(&qword_27D8E3558, &qword_22BDBEFB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v27 - v7);
  v9 = sub_22BDB7444();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB71B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A1160](1);
  sub_22BC61184(a2, v13);
  sub_22BBE6DE0(&qword_27D8E3560, &qword_22BDBEFC0);
  v19 = swift_allocBox();
  v21 = v20;
  (*(v15 + 16))(v20, v18, v14);
  sub_22BB336D0(v21, 0, 1, v14);
  *v8 = v19;
  v22 = *MEMORY[0x277D1FA28];
  v23 = sub_22BDB71C4();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  sub_22BB336D0(v8, 0, 1, v23);
  sub_22BDB7404();
  v24 = v3[5];
  v25 = v3[6];
  sub_22BB69FEC(v3 + 2, v24);
  (*(v25 + 8))(v13, v24, v25);
  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_22BC66518(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3538, &qword_22BDBEF98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB70B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A1060](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E3550, &qword_22BDBEFB0);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA00];
  v22 = sub_22BDB7084();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB73E4();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC667E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BBE6DE0(&qword_27D8E3538, &qword_22BDBEF98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - v6);
  v8 = sub_22BDB7444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB6FE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A0F90](1);
  sub_22BC61184(a1, v12);
  sub_22BBE6DE0(&qword_27D8E3548, &qword_22BDBEFA8);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v14 + 16))(v19, v17, v13);
  sub_22BB336D0(v20, 0, 1, v13);
  *v7 = v18;
  v21 = *MEMORY[0x277D1FA08];
  v22 = sub_22BDB7084();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_22BB336D0(v7, 0, 1, v22);
  sub_22BDB73E4();
  v23 = v2[5];
  v24 = v2[6];
  sub_22BB69FEC(v2 + 2, v23);
  (*(v24 + 8))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22BC66AB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22BBE6DE0(&qword_27D8E3538, &qword_22BDBEF98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v27 - v7);
  v9 = sub_22BDB7444();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB7044();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6DF4();
  MEMORY[0x2318A0FF0](1);
  sub_22BC61184(a2, v13);
  sub_22BBE6DE0(&qword_27D8E3540, &qword_22BDBEFA0);
  v19 = swift_allocBox();
  v21 = v20;
  (*(v15 + 16))(v20, v18, v14);
  sub_22BB336D0(v21, 0, 1, v14);
  *v8 = v19;
  v22 = *MEMORY[0x277D1FA10];
  v23 = sub_22BDB7084();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  sub_22BB336D0(v8, 0, 1, v23);
  sub_22BDB73E4();
  v24 = v3[5];
  v25 = v3[6];
  sub_22BB69FEC(v3 + 2, v24);
  (*(v25 + 8))(v13, v24, v25);
  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_22BC66D88(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_22BBE6DE0(&qword_27D8E34B8, &qword_22BDBEF18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v51 - v5);
  v7 = sub_22BDB7444();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E3528, &qword_22BDBEF88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v51 - v13);
  v15 = sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v54 = sub_22BDB6DD4();
  v22 = *(v54 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v54);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318A0D90](v24);
  sub_22BBB7004(a1, v21, &qword_27D8E3510, &qword_22BDBEF70);
  v27 = sub_22BDB9B14();
  if (sub_22BB3AA28(v21, 1, v27) == 1)
  {
    goto LABEL_2;
  }

  sub_22BBB7004(v21, v19, &qword_27D8E3510, &qword_22BDBEF70);
  v30 = *(v27 - 8);
  v31 = (*(v30 + 88))(v19, v27);
  if (v31 == *MEMORY[0x277D1E710])
  {
    v53 = v19;
    v32 = v22;
    v33 = *MEMORY[0x277D20CF0];
    v34 = sub_22BDB76F4();
    v35 = v33;
    v22 = v32;
    (*(*(v34 - 8) + 104))(v14, v35, v34);
    sub_22BB336D0(v14, 0, 1, v34);
    MEMORY[0x2318A0D80](v14);
    (*(v30 + 8))(v53, v27);
    goto LABEL_14;
  }

  v36 = *MEMORY[0x277D1E728];
  v52 = v22;
  if (v31 == v36)
  {
    v37 = MEMORY[0x277D20CF8];
LABEL_13:
    v38 = v30;
    v39 = *v37;
    v40 = sub_22BDB76F4();
    (*(*(v40 - 8) + 104))(v14, v39, v40);
    sub_22BB336D0(v14, 0, 1, v40);
    MEMORY[0x2318A0D80](v14);
    (*(v38 + 8))(v19, v27);
    v22 = v52;
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x277D1E730])
  {
    v37 = MEMORY[0x277D20D00];
    goto LABEL_13;
  }

  if (v31 == *MEMORY[0x277D1E750])
  {
    v37 = MEMORY[0x277D20D08];
    goto LABEL_13;
  }

  if (v31 == *MEMORY[0x277D1E7D8])
  {
    v37 = MEMORY[0x277D20D10];
    goto LABEL_13;
  }

  (*(v30 + 8))(v19, v27);
LABEL_2:
  *v14 = 0;
  v28 = *MEMORY[0x277D20D18];
  v29 = sub_22BDB76F4();
  (*(*(v29 - 8) + 104))(v14, v28, v29);
  sub_22BB336D0(v14, 0, 1, v29);
  MEMORY[0x2318A0D80](v14);
LABEL_14:
  sub_22BB6B75C(v21, &qword_27D8E3510, &qword_22BDBEF70);
  v41 = v58;
  sub_22BC61184(v55, v10);
  sub_22BBE6DE0(&qword_27D8E3530, &qword_22BDBEF90);
  v42 = swift_allocBox();
  v44 = v43;
  v45 = v54;
  (*(v22 + 16))(v43, v26, v54);
  sub_22BB336D0(v44, 0, 1, v45);
  *v6 = v42;
  v46 = *MEMORY[0x277D1F9A8];
  v47 = sub_22BDB6DA4();
  (*(*(v47 - 8) + 104))(v6, v46, v47);
  sub_22BB336D0(v6, 0, 1, v47);
  sub_22BDB73B4();
  v48 = v41[5];
  v49 = v41[6];
  sub_22BB69FEC(v41 + 2, v48);
  (*(v49 + 8))(v10, v48, v49);
  (*(v56 + 8))(v10, v57);
  return (*(v22 + 8))(v26, v45);
}