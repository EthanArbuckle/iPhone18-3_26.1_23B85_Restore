uint64_t sub_22C7BC5B0()
{
  sub_22C369980();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v0[7] = v7;
  v8 = sub_22C90384C();
  v0[14] = v8;
  sub_22C3699B8(v8);
  v0[15] = v9;
  v11 = *(v10 + 64);
  v0[16] = sub_22C3699D4();
  v12 = sub_22C9099FC();
  v0[17] = v12;
  sub_22C3699B8(v12);
  v0[18] = v13;
  v15 = *(v14 + 64);
  v0[19] = sub_22C3699D4();
  v16 = sub_22C9036EC();
  v0[20] = v16;
  sub_22C3699B8(v16);
  v0[21] = v17;
  v19 = *(v18 + 64);
  v0[22] = sub_22C3699D4();
  v20 = sub_22C908EAC();
  v0[23] = v20;
  sub_22C3699B8(v20);
  v0[24] = v21;
  v23 = *(v22 + 64);
  v0[25] = sub_22C3699D4();
  v24 = type metadata accessor for RetrievedToolWithAttribution();
  sub_22C3699B8(v24);
  v0[26] = v25;
  v27 = *(v26 + 64);
  v0[27] = sub_22C3699D4();
  v28 = sub_22C9063DC();
  v0[28] = v28;
  sub_22C3699B8(v28);
  v0[29] = v29;
  v31 = *(v30 + 64);
  v0[30] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_22C7BC7DC()
{
  v10 = *(v0 + 56);
  v1 = *(v10 + 80);
  v2 = *(v10 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  sub_22C374168((v10 + 56), v1);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v2 + 8))(inited, v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  v4[1] = v10;
  v4[2] = v9;
  v4[3] = v8;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_22C7BC91C;
  v6 = *(v0 + 88);

  return sub_22C7B9EE4(&unk_22C926788, v4, v6);
}

uint64_t sub_22C7BC91C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 264) = v7;
  *(v8 + 272) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7BCA3C()
{
  v108 = v0;
  v1 = v0[33];
  v2 = v0[30];
  sub_22C90400C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();

  if (!os_log_type_enabled(v3, v4))
  {
    v63 = v0[29];
    v62 = v0[30];
    v64 = v0[28];

    v65 = *(v63 + 8);
    v66 = sub_22C36BBCC();
    v67(v66);
    goto LABEL_23;
  }

  v5 = v0[33];
  sub_22C37FE78();
  v6 = swift_slowAlloc();
  sub_22C36FE8C();
  v106 = swift_slowAlloc();
  *v6 = 136315394;
  *(v6 + 4) = sub_22C36F9F4(0xD000000000000070, 0x800000022C9356E0, &v106);
  *(v6 + 12) = 2080;
  v7 = *(v5 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_22;
  }

  v90 = v4;
  v91 = v6;
  v92 = v3;
  v9 = v0[33];
  v10 = v0[26];
  v100 = v0[24];
  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[15];
  v107 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v8 = v107;
  v14 = *(v10 + 80);
  sub_22C36BA94();
  v16 = v9 + v15;
  v103 = (v11 + 88);
  v104 = *(v10 + 72);
  v102 = *MEMORY[0x277D1ECE0];
  v99 = *MEMORY[0x277D1ECE8];
  v98 = *MEMORY[0x277D1ECD8];
  v97 = *MEMORY[0x277D1ECD0];
  v93 = (v13 + 8);
  v94 = (v13 + 32);
  v95 = *MEMORY[0x277D1ECF8];
  v101 = (v11 + 96);
  v96 = (v12 + 8);
  do
  {
    v17 = v0[27];
    v18 = v0[22];
    v19 = v0[20];
    sub_22C373A34();
    sub_22C7C2788(v16, v17);
    sub_22C90371C();
    v20 = (*v103)(v18, v19);
    if (v20 == v102)
    {
LABEL_5:
      v21 = v0[27];
      v22 = v0[25];
      v24 = v0[22];
      v23 = v0[23];
      (*v101)(v24, v0[20]);
      v25 = sub_22C38C41C();
      v26(v25, v24, v23);
      v27 = sub_22C908E7C();
      v29 = v28;
      v30 = sub_22C38C41C();
      v31(v30, v23);
      sub_22C36B740();
      v33 = v21;
      goto LABEL_9;
    }

    if (v20 == v99)
    {
      v34 = v0[27];
      v35 = v0[22];
      v36 = v0[19];
      v37 = v0[17];
      (*v101)(v35, v0[20]);
      v38 = sub_22C38C41C();
      v39(v38, v35, v37);
      v27 = sub_22C9099DC();
      v29 = v40;
      v41 = *v96;
      v42 = sub_22C36BBCC();
      goto LABEL_8;
    }

    if (v20 == v98 || v20 == v97)
    {
      goto LABEL_5;
    }

    v34 = v0[27];
    v48 = v0[22];
    v49 = v0[20];
    if (v20 == v95)
    {
      v50 = v0[16];
      v51 = v0[14];
      v52 = sub_22C38C41C();
      v53(v52, v49);
      v54 = *v94;
      v55 = sub_22C36BA00();
      v56(v55);
      v27 = sub_22C9037FC();
      v29 = v57;
      v58 = *v93;
      v42 = sub_22C36BAFC();
LABEL_8:
      v43(v42);
      sub_22C36B740();
      v33 = v34;
LABEL_9:
      sub_22C7C27E0(v33, v32);
      goto LABEL_10;
    }

    sub_22C36B740();
    sub_22C7C27E0(v34, v59);
    v60 = sub_22C38C41C();
    v61(v60, v49);
    v27 = 0xD000000000000013;
    v29 = 0x800000022C935760;
LABEL_10:
    v107 = v8;
    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_22C369AB0(v44);
      sub_22C3B5E2C();
      v8 = v107;
    }

    *(v8 + 16) = v45 + 1;
    v46 = v8 + 16 * v45;
    *(v46 + 32) = v27;
    *(v46 + 40) = v29;
    v16 += v104;
    --v7;
  }

  while (v7);
  v6 = v91;
  v3 = v92;
  v4 = v90;
LABEL_22:
  v68 = v0[29];
  v69 = v0[30];
  v70 = v0[28];
  MEMORY[0x2318B7AD0](v8, MEMORY[0x277D837D0]);

  v71 = sub_22C50B478();
  v74 = sub_22C36F9F4(v71, v72, v73);

  *(v6 + 14) = v74;
  _os_log_impl(&dword_22C366000, v3, v4, "%s optimizedTools: %s", v6, 0x16u);
  swift_arrayDestroy();
  v75 = sub_22C36D66C();
  MEMORY[0x2318B9880](v75);
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  v76 = *(v68 + 8);
  v77 = sub_22C372FA4();
  v78(v77);
LABEL_23:
  v105 = v0[33];
  v79 = v0[30];
  v80 = v0[27];
  v81 = v0[25];
  v82 = v0[22];
  v83 = v0[19];
  v84 = v0[16];
  v86 = v0[5];
  v85 = v0[6];
  sub_22C374168(v0 + 2, v86);
  sub_22C7C293C(v85);
  v87(v86, v85);
  sub_22C36FF94(v0 + 2);

  sub_22C36D5E0();

  return v88(v105);
}

uint64_t sub_22C7BCFFC()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  sub_22C7C293C(v7);
  v8 = sub_22C36CC9C();
  v9(v8);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  v11 = v0[34];

  return v10();
}

uint64_t sub_22C7BD0EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C7BD1D4();
}

uint64_t sub_22C7BD1D4()
{
  sub_22C369980();
  v0[28] = v1;
  v0[29] = v2;
  v0[26] = v3;
  v0[27] = v4;
  v0[24] = v5;
  v0[25] = v6;
  v0[22] = v7;
  v0[23] = v8;
  v9 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v0[30] = sub_22C3699D4();
  v12 = sub_22C9037EC();
  v0[31] = v12;
  sub_22C3699B8(v12);
  v0[32] = v13;
  v15 = *(v14 + 64);
  v0[33] = sub_22C36D0D4();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v16 = sub_22C90977C();
  v0[37] = v16;
  sub_22C3699B8(v16);
  v0[38] = v17;
  v19 = *(v18 + 64);
  v0[39] = sub_22C3699D4();
  v20 = type metadata accessor for RetrievedToolWithAttribution();
  v0[40] = v20;
  sub_22C3699B8(v20);
  v0[41] = v21;
  v23 = *(v22 + 64);
  v0[42] = sub_22C36D0D4();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v24 = sub_22C908EAC();
  v0[48] = v24;
  sub_22C3699B8(v24);
  v0[49] = v25;
  v27 = *(v26 + 64);
  v0[50] = sub_22C36D0D4();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v28 = sub_22C9063DC();
  v0[53] = v28;
  sub_22C3699B8(v28);
  v0[54] = v29;
  v31 = *(v30 + 64);
  v0[55] = sub_22C36D0D4();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v0[62] = swift_task_alloc();
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v32 = sub_22C9036EC();
  v0[65] = v32;
  sub_22C3699B8(v32);
  v0[66] = v33;
  v35 = *(v34 + 64);
  v0[67] = sub_22C3699D4();
  v36 = sub_22C9099FC();
  v0[68] = v36;
  sub_22C3699B8(v36);
  v0[69] = v37;
  v39 = *(v38 + 64);
  v0[70] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_22C7BD560()
{
  v350 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v5[10];
  v7 = v5[11];
  sub_22C374168(v5 + 7, v6);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v7 + 8))(inited, v6, v7);
  sub_22C90371C();
  v9 = *(v2 + 88);
  v10 = sub_22C36BAFC();
  if (v11(v10) != *MEMORY[0x277D1ECE8])
  {
    v29 = v0[25];
    v30 = v0[22];
    (*(v0[66] + 8))(v0[67], v0[65]);
    sub_22C373A34();
    v31 = sub_22C36BBCC();
    sub_22C7C2788(v31, v32);
LABEL_45:
    v216 = v0[70];
    v217 = v0[67];
    v219 = v0[63];
    v218 = v0[64];
    v220 = v0[61];
    v221 = v0[62];
    v302 = v0[60];
    v304 = v0[59];
    v306 = v0[58];
    v308 = v0[57];
    v310 = v0[56];
    v312 = v0[55];
    v314 = v0[52];
    v316 = v0[51];
    v318 = v0[50];
    v320 = v0[47];
    v321 = v0[46];
    v322 = v0[45];
    v323 = v0[44];
    v326 = v0[43];
    v328 = v0[42];
    v330 = v0[39];
    v332 = v0[36];
    v335 = v0[35];
    v339 = v0[34];
    v344 = v0[33];
    v347 = v0[30];
    v222 = v0[6];
    sub_22C374168(v0 + 2, v0[5]);
    sub_22C7C293C(v222);
    v223 = sub_22C36CA88();
    v224(v223);
    sub_22C36FF94(v0 + 2);

    sub_22C369A24();

    return v225();
  }

  v12 = v0[70];
  v13 = v0[69];
  v14 = v0[68];
  v15 = v0[24];
  (*(v0[66] + 96))(v0[67], v0[65]);
  v16 = *(v13 + 32);
  v17 = sub_22C36BAFC();
  v18(v17);
  sub_22C908A3C();
  v19 = v0[11];
  sub_22C374168(v0 + 7, v0[10]);
  sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
  sub_22C369A48();
  v20 = sub_22C908D4C();
  sub_22C369824(v20);
  v22 = v21;
  v24 = *(v23 + 72);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22C90F800;
  v27 = (v26 + v25);
  *v27 = sub_22C9099DC();
  v27[1] = v28;
  (*(v22 + 104))(v27, *MEMORY[0x277D720F0], v20);
  sub_22C36BB08();
  v33 = sub_22C90667C();
  v34 = v0[64];

  sub_22C36FF94(v0 + 7);
  sub_22C90400C();
  v35 = sub_22C9063CC();
  v36 = sub_22C90AACC();
  v37 = os_log_type_enabled(v35, v36);
  v346 = v0;
  if (v37)
  {
    v331 = v36;
    sub_22C37FE78();
    v38 = swift_slowAlloc();
    sub_22C36FE8C();
    v348 = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_22C36F9F4(0xD00000000000006CLL, 0x800000022C935780, &v348);
    v333 = v38;
    *(v38 + 12) = 2080;
    v39 = *(v33 + 16);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v324 = v35;
      v41 = v346[49];
      v349[0] = MEMORY[0x277D84F90];

      sub_22C3B5E2C();
      v40 = v349[0];
      v42 = *(v41 + 16);
      v41 += 16;
      v341 = v42;
      v43 = *(v41 + 64);
      sub_22C36BA94();
      v45 = v33 + v44;
      v336 = *(v41 + 56);
      v46 = (v41 - 8);
      do
      {
        v47 = v346[48];
        v341(v346[52], v45, v47);
        v48 = sub_22C908E7C();
        v50 = v49;
        v51 = *v46;
        v52 = sub_22C36BBCC();
        v53(v52);
        v349[0] = v40;
        v55 = *(v40 + 16);
        v54 = *(v40 + 24);
        sub_22C7C2A88();
        if (v57)
        {
          sub_22C369AB0(v56);
          sub_22C3B5E2C();
          v40 = v349[0];
        }

        *(v40 + 16) = v47;
        v58 = v40 + 16 * v55;
        *(v58 + 32) = v48;
        *(v58 + 40) = v50;
        v45 += v336;
        --v39;
      }

      while (v39);

      v35 = v324;
    }

    v66 = v346[64];
    v68 = v346[53];
    v67 = v346[54];
    v69 = MEMORY[0x2318B7AD0](v40, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_22C36F9F4(v69, v71, &v348);

    *(v333 + 14) = v72;
    _os_log_impl(&dword_22C366000, v35, v331, "%s implementingTools: %s", v333, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v73 = *(v67 + 8);
    v74 = v68;
    v59 = v346;
    v73(v66, v74);
    v65 = v73;
  }

  else
  {
    v59 = v0;
    v60 = v0[64];
    v61 = v0[54];
    v62 = *(v59 + 424);

    v63 = *(v61 + 8);
    v64 = sub_22C36BBCC();
    v63(v64);
    v65 = v63;
  }

  *(v59 + 568) = v65;
  v75 = *(v59 + 504);
  v76 = *(v59 + 216);
  v77 = *(v59 + 192);

  v78 = sub_22C36D264();
  v80 = sub_22C7BF4A4(v78, v79, v76);
  *(v59 + 576) = v80;
  swift_bridgeObjectRelease_n();
  sub_22C90400C();

  v81 = sub_22C9063CC();
  v82 = sub_22C90AACC();
  v83 = sub_22C370048(v82);
  v84 = *(v59 + 504);
  v86 = *(v59 + 424);
  v85 = *(v59 + 432);
  v329 = v65;
  if (v83)
  {
    sub_22C37FE78();
    v87 = swift_slowAlloc();
    sub_22C36FE8C();
    v59 = swift_slowAlloc();
    v349[0] = v59;
    *v87 = 136315394;
    *(v87 + 4) = sub_22C383478("<unknown tool type>");
    *(v87 + 12) = 2080;
    sub_22C7BFC90(v80);

    v88 = sub_22C36CC9C();
    v91 = sub_22C36F9F4(v88, v89, v90);

    *(v87 + 14) = v91;
    _os_log_impl(&dword_22C366000, v81, v82, "%s implementingTools post filtering: %s", v87, 0x16u);
    swift_arrayDestroy();
    sub_22C7C2A30();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v65 = v329;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v92 = sub_22C36D264();
  v65(v92);
  v93 = v80;
  if (!*(v80 + 16))
  {
    v143 = *(v59 + 496);
    v144 = *(v59 + 376);
    v145 = *(v59 + 200);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v145, v144);
    v146 = sub_22C9063CC();
    v147 = sub_22C90AABC();
    v148 = sub_22C36DB24(v147);
    v149 = *(v59 + 560);
    v150 = *(v59 + 552);
    v151 = *(v59 + 544);
    v152 = *(v59 + 496);
    v153 = v59;
    v154 = *(v59 + 432);
    v155 = *(v153 + 424);
    v156 = *(v153 + 376);
    if (v148)
    {
      sub_22C37FE78();
      v157 = swift_slowAlloc();
      sub_22C36FE8C();
      v349[0] = swift_slowAlloc();
      *v157 = 136315394;
      v158 = sub_22C383478("<unknown tool type>");
      sub_22C7C292C(v158);
      sub_22C7FE524();
      sub_22C36B740();
      sub_22C7C27E0(v156, v159);
      v160 = sub_22C50B478();
      v163 = sub_22C36F9F4(v160, v161, v162);

      *(v157 + 14) = v163;
      sub_22C3838EC(&dword_22C366000, v164, v165, "%s No implementation, pass-thru the original protocol: %s");
      sub_22C7C2A3C();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v329)(v152, v155);
      (*(v150 + 8))(v149, v151);
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v156, v207);
      (v329)(v152, v155);
      v208 = *(v150 + 8);
      v209 = sub_22C36D264();
      v211(v209, v210);
    }

LABEL_44:
    v0 = v346;
    v212 = v346[25];
    v213 = v346[22];
    sub_22C373A34();
    sub_22C7C2788(v214, v215);

    goto LABEL_45;
  }

  v94 = *(v59 + 392);
  v95 = *(v59 + 304);
  static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(*(v59 + 208), *(v59 + 216), v349);
  v337 = sub_22C3AE694(v349[0]);
  v342 = *(v80 + 16);
  v96 = (v95 + 8);
  v325 = (v94 + 32);

  v98 = 0;
  v327 = MEMORY[0x277D84F90];
  while (v342 != v98)
  {
    if (v98 >= *(v93 + 16))
    {
      __break(1u);
      return result;
    }

    v99 = *(v59 + 312);
    v100 = *(v59 + 296);
    v101 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v102 = v93;
    v103 = v93 + v101;
    v104 = *(v94 + 72);
    (*(v94 + 16))(*(v59 + 408), v103 + v104 * v98, *(v59 + 384));
    sub_22C47FCDC();
    sub_22C9096FC();
    sub_22C386DDC();
    v105 = *v96;
    v106 = sub_22C36CA88();
    v107(v106);
    v108 = sub_22C5E935C(v99, v59, v337);
    sub_22C7C2A30();

    v109 = *(v59 + 408);
    if (v108)
    {
      v110 = *v325;
      (*v325)(*(v59 + 400), *(v59 + 408), *(v59 + 384));
      v111 = v327;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v349[0] = v327;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7AE0(0, *(v327 + 16) + 1, 1);
        v111 = v349[0];
      }

      v114 = *(v111 + 16);
      v113 = *(v111 + 24);
      if (v114 >= v113 >> 1)
      {
        v118 = sub_22C369AB0(v113);
        sub_22C3B7AE0(v118, v114 + 1, 1);
        v111 = v349[0];
      }

      ++v98;
      v115 = v346[50];
      v116 = v346[48];
      *(v111 + 16) = v114 + 1;
      v327 = v111;
      v117 = v111 + v101 + v114 * v104;
      v59 = v346;
      result = v110(v117, v115, v116);
      v93 = v102;
    }

    else
    {
      result = (*(v94 + 8))(*(v59 + 408), *(v59 + 384));
      ++v98;
      v93 = v102;
    }
  }

  v119 = *(v327 + 16);

  if (v119)
  {
    v120 = *(v59 + 488);
    v121 = *(v59 + 368);
    v122 = *(v59 + 200);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v122, v121);
    v123 = sub_22C9063CC();
    v124 = sub_22C90AABC();
    v125 = sub_22C36DB24(v124);
    v126 = *(v59 + 560);
    v127 = *(v59 + 552);
    v128 = *(v59 + 544);
    v129 = *(v59 + 488);
    v130 = v59;
    v131 = *(v59 + 432);
    v132 = *(v130 + 424);
    v133 = *(v130 + 368);
    if (v125)
    {
      sub_22C37FE78();
      v134 = swift_slowAlloc();
      sub_22C36FE8C();
      v349[0] = swift_slowAlloc();
      *v134 = 136315394;
      v135 = sub_22C383478("<unknown tool type>");
      sub_22C7C292C(v135);
      sub_22C7FE524();
      sub_22C36B740();
      sub_22C7C27E0(v133, v136);
      v137 = sub_22C50B478();
      v140 = sub_22C36F9F4(v137, v138, v139);

      *(v134 + 14) = v140;
      sub_22C3838EC(&dword_22C366000, v141, v142, "%s not a candidate for protocol round-trip optimization, pass-thru the original protocol: %s");
      sub_22C7C2A3C();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v329)(v129, v132);
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v133, v205);
      v206 = sub_22C50B478();
      v329(v206);
    }

    (*(v127 + 8))(v126, v128);
    goto LABEL_44;
  }

  v166 = *(v59 + 232);
  v167 = *(v59 + 200);
  *(swift_task_alloc() + 16) = v167;

  sub_22C3B5058();
  v338 = v168;

  sub_22C7C26C0(v166, v59 + 136);
  if (!*(v59 + 160))
  {
    v228 = *(v59 + 448);
    v229 = *(v59 + 344);
    v230 = *(v59 + 200);

    sub_22C36DD28(v59 + 136, &qword_27D9C0278, &qword_22C9267A0);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v230, v229);
    v231 = sub_22C9063CC();
    v232 = sub_22C90AADC();
    v233 = os_log_type_enabled(v231, v232);
    v234 = *(v59 + 448);
    v236 = *(v59 + 424);
    v235 = *(v59 + 432);
    v237 = *(v59 + 344);
    if (v233)
    {
      sub_22C37FE78();
      v59 = swift_slowAlloc();
      sub_22C36FE8C();
      v349[0] = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_22C383478("<unknown tool type>");
      *(v59 + 12) = 2080;
      v238 = sub_22C7FE524();
      v239 = v234;
      v241 = v240;
      sub_22C36B740();
      sub_22C7C27E0(v237, v242);
      v243 = sub_22C36F9F4(v238, v241, v349);

      *(v59 + 14) = v243;
      _os_log_impl(&dword_22C366000, v231, v232, "%s No ToolCandidateRanker instantiated, pass-thru the original protocol: %s", v59, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C7C2A30();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v244 = v239;
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v237, v269);
      v244 = v234;
    }

    (v329)(v244, v236);
    v270 = *(v59 + 440);
    v271 = *(v59 + 336);
    v272 = *(v59 + 200);
    sub_22C90400C();
    sub_22C373A34();
    sub_22C7C2788(v272, v271);
    v273 = sub_22C9063CC();
    v274 = sub_22C90AABC();
    v275 = sub_22C36DB24(v274);
    v276 = *(v59 + 560);
    v277 = *(v59 + 552);
    v278 = *(v59 + 544);
    v279 = v59;
    v282 = v59 + 432;
    v281 = *(v59 + 432);
    v280 = *(v282 + 8);
    v283 = *(v279 + 424);
    v284 = *(v279 + 336);
    if (v275)
    {
      sub_22C37FE78();
      v340 = v283;
      v285 = swift_slowAlloc();
      sub_22C36FE8C();
      v349[0] = swift_slowAlloc();
      *v285 = 136315394;
      v286 = sub_22C383478("<unknown tool type>");
      sub_22C7C292C(v286);
      sub_22C7FE524();
      sub_22C36B740();
      sub_22C7C27E0(v284, v287);
      v288 = sub_22C50B478();
      v291 = sub_22C36F9F4(v288, v289, v290);

      *(v285 + 14) = v291;
      sub_22C3838EC(&dword_22C366000, v292, v293, "QDInternal: Protocol substitution | %s\nNo ToolCandidateRanker instantiated, pass-thru the original protocol: %s");
      sub_22C7C2A3C();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v329)(v280, v340);
      (*(v277 + 8))(v276, v278);
    }

    else
    {

      sub_22C36B740();
      sub_22C7C27E0(v284, v294);
      (v329)(v280, v283);
      v295 = *(v277 + 8);
      v296 = sub_22C36D264();
      v298(v296, v297);
    }

    goto LABEL_44;
  }

  v169 = *(v59 + 480);
  sub_22C36C730((v59 + 136), v59 + 96);
  sub_22C90400C();
  v170 = sub_22C9063CC();
  v171 = sub_22C90AABC();
  v172 = sub_22C370048(v171);
  v173 = *(v59 + 480);
  v175 = *(v59 + 424);
  v174 = *(v59 + 432);
  if (v172)
  {
    v176 = sub_22C36FB44();
    sub_22C370220();
    v59 = swift_slowAlloc();
    v349[0] = v59;
    *v176 = 136315138;
    *(v176 + 4) = sub_22C383478("<unknown tool type>");
    sub_22C7C29D0();
    _os_log_impl(v177, v178, v179, v180, v181, 0xCu);
    sub_22C36FF94(v59);
    sub_22C7C2A30();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v182 = sub_22C3816C4();
    MEMORY[0x2318B9880](v182);
  }

  v183 = v329;
  (v329)(v173, v175);
  v184 = sub_22C374168(*(v59 + 224), *(*(v59 + 224) + 24));
  v185 = v184;
  v186 = *(v338 + 16);
  if (v186)
  {
    v334 = v184;
    v187 = *(v59 + 328);
    v188 = *(v59 + 256);
    v349[0] = MEMORY[0x277D84F90];
    sub_22C3B60C0(0, v186, 0);
    v189 = v349[0];
    v190 = v338 + ((*(v187 + 80) + 32) & ~*(v187 + 80));
    v343 = *(v187 + 72);
    do
    {
      v191 = *(v59 + 360);
      v192 = v59;
      v193 = *(v59 + 288);
      v194 = *(v192 + 248);
      sub_22C373A34();
      v195 = sub_22C36CA88();
      sub_22C7C2788(v195, v196);
      (*(v188 + 16))(v193, v191, v194);
      sub_22C36B740();
      sub_22C7C27E0(v191, v197);
      v349[0] = v189;
      v199 = *(v189 + 16);
      v198 = *(v189 + 24);
      if (v199 >= v198 >> 1)
      {
        v204 = sub_22C369AB0(v198);
        sub_22C3B60C0(v204, v199 + 1, 1);
        v189 = v349[0];
      }

      v200 = *(v192 + 288);
      v201 = *(v192 + 248);
      *(v189 + 16) = v199 + 1;
      v202 = *(v188 + 80);
      sub_22C36BA94();
      (*(v188 + 32))(v189 + v203 + *(v188 + 72) * v199);
      v190 += v343;
      --v186;
      v59 = v192;
    }

    while (v186);

    v183 = v329;
    v185 = v334;
  }

  else
  {

    v189 = MEMORY[0x277D84F90];
  }

  v245 = *(v59 + 472);
  sub_22C7E7254(v189, MEMORY[0x277D84F90], MEMORY[0x277D84F90], *v185, *(v185 + 8), v185[2], v226, v227, v299, v300, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319);
  v247 = v246;

  *(v59 + 584) = v247;
  sub_22C90400C();

  v248 = sub_22C9063CC();
  v249 = sub_22C90AACC();

  v250 = os_log_type_enabled(v248, v249);
  v251 = *(v59 + 472);
  v253 = *(v59 + 424);
  v252 = *(v59 + 432);
  if (v250)
  {
    sub_22C37FE78();
    v345 = v251;
    v254 = swift_slowAlloc();
    sub_22C36FE8C();
    v59 = swift_slowAlloc();
    v349[0] = v59;
    *v254 = 136315394;
    *(v254 + 4) = sub_22C383478("<unknown tool type>");
    *(v254 + 12) = 2080;
    DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
    v256 = MEMORY[0x2318B7AD0](v247, DecorationTuple);
    v258 = sub_22C36F9F4(v256, v257, v349);

    *(v254 + 14) = v258;
    sub_22C7C29D0();
    _os_log_impl(v259, v260, v261, v262, v263, 0x16u);
    swift_arrayDestroy();
    sub_22C7C2A30();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v264 = sub_22C3816C4();
    MEMORY[0x2318B9880](v264);

    v265 = v345;
  }

  else
  {

    v265 = v251;
  }

  v183(v265, v253);
  v266 = *sub_22C374168((v59 + 96), *(v59 + 120));
  v267 = swift_task_alloc();
  *(v59 + 592) = v267;
  *v267 = v59;
  v267[1] = sub_22C7BEB6C;
  v268 = *(v59 + 184);

  return (sub_22C7C229C)(v268, v247);
}

uint64_t sub_22C7BEB6C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 592);
  *v6 = *v1;
  *(v5 + 600) = v9;
  *(v5 + 608) = v0;

  if (v0)
  {
    v10 = *(v5 + 584);
  }

  else
  {
    *(v5 + 616) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7BEC8C()
{
  v93 = v0;
  if (*(v0 + 616))
  {
    v1 = *(v0 + 584);
  }

  else
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    sub_22C7C00B0(*(v0 + 600), *(v0 + 584), v3);

    if (sub_22C370B74(v3, 1, v2) != 1)
    {
      v34 = *(v0 + 464);
      v36 = *(v0 + 272);
      v35 = *(v0 + 280);
      v37 = *(v0 + 248);
      v38 = *(v0 + 256);
      v91 = *(v38 + 32);
      v91(v35, *(v0 + 240), v37);
      sub_22C90400C();
      v39 = *(v38 + 16);
      v39(v36, v35, v37);
      v40 = sub_22C9063CC();
      v41 = sub_22C90AABC();
      v87 = v40;
      v42 = os_log_type_enabled(v40, v41);
      v89 = *(v0 + 568);
      v43 = *(v0 + 552);
      v44 = *(v0 + 544);
      v86 = *(v0 + 464);
      v84 = *(v0 + 432);
      v85 = *(v0 + 424);
      v45 = *(v0 + 272);
      if (v42)
      {
        v83 = *(v0 + 560);
        v47 = *(v0 + 256);
        v46 = *(v0 + 264);
        v82 = v41;
        v48 = *(v0 + 248);
        sub_22C37FE78();
        v49 = swift_slowAlloc();
        sub_22C36FE8C();
        v92 = swift_slowAlloc();
        *v49 = 136315394;
        sub_22C36EE00();
        *(v49 + 4) = sub_22C36F9F4(0xD00000000000006CLL, v50, &v92);
        *(v49 + 12) = 2080;
        v39(v46, v45, v48);
        sub_22C36BBCC();
        v51 = sub_22C90A1AC();
        v52 = v44;
        v54 = v53;
        (*(v47 + 8))(v45, v48);
        v55 = sub_22C36F9F4(v51, v54, &v92);

        *(v49 + 14) = v55;
        _os_log_impl(&dword_22C366000, v87, v82, "QDInternal: Protocol substitution | %s\nBest Direct Executable rowIndex resolved by Joint Resolver. Returning %s", v49, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        v56 = sub_22C7C2A94();
        v57(v56);
        (*(v43 + 8))(v83, v52);
      }

      else
      {
        v59 = *(v0 + 248);
        v58 = *(v0 + 256);

        (*(v58 + 8))(v45, v59);
        v60 = sub_22C7C2A94();
        v61(v60);
        v62 = *(v43 + 8);
        v63 = sub_22C36D264();
        v65(v63, v64);
      }

      v66 = *(v0 + 576);
      v67 = *(v0 + 320);
      v68 = *(v0 + 176);
      if (*(*(v0 + 200) + *(v67 + 20)) == 6)
      {
        v69 = 0;
      }

      else
      {
        v69 = *(*(v0 + 200) + *(v67 + 20));
      }

      v91(*(v0 + 176), *(v0 + 280), *(v0 + 248));
      *(v68 + *(v67 + 20)) = v69;
      goto LABEL_16;
    }

    sub_22C36DD28(*(v0 + 240), &qword_27D9BD2A8, &qword_22C920540);
  }

  v4 = *(v0 + 456);
  v5 = *(v0 + 352);
  v6 = *(v0 + 200);
  sub_22C90400C();
  sub_22C373A34();
  sub_22C7C2788(v6, v5);
  v7 = sub_22C9063CC();
  v8 = sub_22C90AABC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 456);
  v15 = *(v0 + 432);
  v90 = *(v0 + 424);
  v16 = *(v0 + 352);
  if (v9)
  {
    sub_22C37FE78();
    v88 = v10;
    v17 = swift_slowAlloc();
    sub_22C36FE8C();
    v92 = swift_slowAlloc();
    *v17 = 136315394;
    sub_22C36EE00();
    *(v17 + 4) = sub_22C36F9F4(0xD00000000000006CLL, v18, &v92);
    *(v17 + 12) = 2080;
    sub_22C7FE524();
    sub_22C36B740();
    sub_22C7C27E0(v16, v19);
    v20 = sub_22C36BAFC();
    v23 = sub_22C36F9F4(v20, v21, v22);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_22C366000, v7, v8, "QDInternal: Protocol substitution | %s\nJoint Resolver did not resolve to a Direct Execute tool, pass-thru the original protocol: %s", v17, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v88(v14, v90);
    (*(v12 + 8))(v11, v13);
  }

  else
  {

    sub_22C36B740();
    sub_22C7C27E0(v16, v24);
    v10(v14, v90);
    v25 = *(v12 + 8);
    v26 = sub_22C36BAFC();
    v28(v26, v27);
  }

  v29 = *(v0 + 576);
  v30 = *(v0 + 200);
  v31 = *(v0 + 176);
  sub_22C373A34();
  sub_22C7C2788(v32, v33);
LABEL_16:
  sub_22C36FF94((v0 + 96));

  v70 = *(v0 + 560);
  v71 = *(v0 + 536);
  v73 = *(v0 + 504);
  v72 = *(v0 + 512);
  v74 = *(v0 + 488);
  v75 = *(v0 + 496);
  sub_22C371D74();
  sub_22C7C2A18(v76);
  v77 = *(v0 + 48);
  sub_22C374168((v0 + 16), *(v0 + 40));
  sub_22C7C293C(v77);
  v78 = sub_22C36CA88();
  v79(v78);
  sub_22C36FF94((v0 + 16));

  sub_22C369A24();

  return v80();
}

uint64_t sub_22C7BF2DC()
{
  v1 = v0[72];
  v2 = sub_22C6B02C0();
  v3(v2);
  sub_22C36FF94(v0 + 12);

  v16 = v0[76];
  v4 = v0[70];
  v5 = v0[67];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[61];
  v9 = v0[62];
  sub_22C371D74();
  sub_22C7C2A18(v10);
  v11 = v0[5];
  v12 = v0[6];
  sub_22C374168(v0 + 2, v11);
  sub_22C7C293C(v12);
  v13(v11, v12);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();

  return v14();
}

uint64_t sub_22C7BF4A4(uint64_t a1, char *a2, uint64_t a3)
{
  v60 = a1;
  v5 = sub_22C908D6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v59 - v11;
  v73 = sub_22C908EAC();
  v12 = *(v73 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v73);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v59 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  type metadata accessor for ContextRetrievalService();
  result = static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(a3);
  v69 = v12;
  if (result)
  {
    v65 = v20;
    v24 = 0;
    v74 = *(a2 + 2);
    v68 = v12 + 16;
    v66 = (v12 + 8);
    v25 = MEMORY[0x277D84F90];
    v67 = (v12 + 32);
    v71 = a2;
    for (i = v22; ; v22 = i)
    {
      v70 = v25;
LABEL_4:
      if (v24 == v74)
      {
        break;
      }

      v76 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v75 = *(v12 + 72);
      (*(v12 + 16))(v22, &a2[v76 + v75 * v24], v73);
      if (qword_27D9BA7B0 != -1)
      {
        swift_once();
      }

      ++v24;
      v26 = qword_27D9E4018;
      v27 = sub_22C908E7C();
      v29 = v28;
      if (*(v26 + 16))
      {
        v30 = v27;
        v31 = *(v26 + 40);
        sub_22C90B62C();
        sub_22C909FFC();
        v32 = sub_22C90B66C();
        v33 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v34 = v32 & v33;
          if (((*(v26 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
          {
            break;
          }

          v35 = (*(v26 + 48) + 16 * v34);
          if (*v35 != v30 || v35[1] != v29)
          {
            v37 = sub_22C90B4FC();
            v32 = v34 + 1;
            if ((v37 & 1) == 0)
            {
              continue;
            }
          }

          v22 = i;
          (*v66)(i, v73);

          v12 = v69;
          v25 = v70;
          a2 = v71;
          goto LABEL_4;
        }
      }

      v38 = *v67;
      v39 = v65;
      (*v67)(v65, i, v73);
      v25 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7AE0(0, *(v25 + 2) + 1, 1);
        v25 = v80;
      }

      v12 = v69;
      v42 = *(v25 + 2);
      v41 = *(v25 + 3);
      if (v42 >= v41 >> 1)
      {
        sub_22C3B7AE0(v41 > 1, v42 + 1, 1);
        v25 = v80;
      }

      *(v25 + 2) = v42 + 1;
      result = (v38)(&v25[v76 + v42 * v75], v39, v73);
      a2 = v71;
    }
  }

  else
  {

    v25 = a2;
  }

  v43 = 0;
  v66 = *(v25 + 2);
  v65 = (v12 + 16);
  v76 = v6 + 32;
  i = (v6 + 16);
  v44 = *MEMORY[0x277D72188];
  LODWORD(v75) = *MEMORY[0x277D72180];
  LODWORD(v74) = *MEMORY[0x277D72178];
  v45 = (v6 + 8);
  v64 = (v12 + 8);
  v61 = (v12 + 32);
  v63 = MEMORY[0x277D84F90];
  v70 = v25;
  while (1)
  {
LABEL_23:
    if (v43 == v66)
    {

      MEMORY[0x28223BE20](v58);
      *(&v59 - 2) = v60;
      return sub_22C47B8F0(sub_22C6AE7D8, (&v59 - 4), v63);
    }

    if (v43 >= *(v25 + 2))
    {
      break;
    }

    v68 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v67 = *(v12 + 72);
    (*(v12 + 16))(v72, &v25[v68 + v67 * v43], v73);
    v71 = (v43 + 1);
    result = sub_22C908DEC();
    v46 = result;
    v47 = 0;
    v48 = *(result + 16);
    while (v48 != v47)
    {
      if (v47 >= *(v46 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v49 = v78;
      (*(v6 + 16))(v78, v46 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v47, v5);
      (*(v6 + 32))(v10, v49, v5);
      v50 = (*(v6 + 88))(v10, v5);
      if (v50 == v44)
      {

        (*v45)(v10, v5);
        goto LABEL_39;
      }

      if (v50 == v75 || v50 == v74)
      {

LABEL_39:
        result = (*v64)(v72, v73);
        v12 = v69;
        v25 = v70;
        v43 = v71;
        goto LABEL_23;
      }

      result = (*v45)(v10, v5);
      ++v47;
    }

    v51 = *v61;
    (*v61)(v62, v72, v73);
    v52 = v63;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v52;
    v79 = v52;
    if ((v53 & 1) == 0)
    {
      sub_22C3B7AE0(0, *(v52 + 16) + 1, 1);
      v54 = v79;
    }

    v12 = v69;
    v25 = v70;
    v56 = *(v54 + 16);
    v55 = *(v54 + 24);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v63 = v56 + 1;
      sub_22C3B7AE0(v55 > 1, v56 + 1, 1);
      v57 = v63;
      v25 = v70;
      v54 = v79;
    }

    *(v54 + 16) = v57;
    v63 = v54;
    result = (v51)(v54 + v68 + v56 * v67, v62, v73);
    v43 = v71;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22C7BFC90(uint64_t a1)
{
  v28 = sub_22C908EAC();
  v2 = sub_22C369824(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v11 = v29;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = *(v12 + 64);
    sub_22C36BA94();
    v16 = a1 + v15;
    v26 = *(v12 + 56);
    v27 = v17;
    v25 = (v12 - 8);
    do
    {
      v18 = v12;
      v27(v9, v16, v28);
      v19 = sub_22C908E7C();
      v21 = v20;
      (*v25)(v9, v28);
      v22 = *(v29 + 16);
      if (v22 >= *(v29 + 24) >> 1)
      {
        sub_22C3B5E2C();
      }

      *(v29 + 16) = v22 + 1;
      v23 = v29 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      v16 += v26;
      --v10;
      v12 = v18;
    }

    while (v10);
  }

  MEMORY[0x2318B7AD0](v11, MEMORY[0x277D837D0]);

  return sub_22C36BA00();
}

uint64_t sub_22C7BFE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v4 = sub_22C9037DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22C90377C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22C908EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9037EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v22, v8);
  sub_22C90374C();
  sub_22C90378C();
  sub_22C90379C();
  sub_22C90372C();
  v18 = type metadata accessor for RetrievedToolWithAttribution();
  if (*(a2 + *(v18 + 20)) == 6)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + *(v18 + 20));
  }

  v20 = v23;
  result = (*(v14 + 32))(v23, v17, v13);
  *(v20 + *(v18 + 20)) = v19;
  return result;
}

uint64_t sub_22C7C00B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || *(a2 + 16) <= a1)
  {
    v17 = sub_22C9037EC();
    v15 = a3;
    v16 = 1;
  }

  else
  {
    DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
    sub_22C3699B8(DecorationTuple);
    v9 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * a1;
    v10 = sub_22C9037EC();
    sub_22C36985C(v10);
    v12 = *(v11 + 16);
    v13 = sub_22C36BA00();
    v14(v13);
    v15 = a3;
    v16 = 0;
    v17 = v10;
  }

  return sub_22C36C640(v15, v16, 1, v17);
}

uint64_t sub_22C7C01B4()
{
  sub_22C369980();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = sub_22C90292C();
  v1[29] = v5;
  sub_22C3699B8(v5);
  v1[30] = v6;
  v8 = *(v7 + 64);
  v1[31] = sub_22C3699D4();
  v9 = sub_22C90622C();
  v1[32] = v9;
  sub_22C3699B8(v9);
  v1[33] = v10;
  v12 = *(v11 + 64);
  v1[34] = sub_22C3699D4();
  v13 = sub_22C90069C();
  v1[35] = v13;
  sub_22C3699B8(v13);
  v1[36] = v14;
  v16 = *(v15 + 64);
  v1[37] = sub_22C3699D4();
  v17 = _s10ModelInputVMa();
  v1[38] = v17;
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  v1[39] = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  v1[40] = sub_22C36D0D4();
  v1[41] = swift_task_alloc();
  v23 = type metadata accessor for JointResolution.DeviceContext();
  v1[42] = v23;
  sub_22C369914(v23);
  v25 = *(v24 + 64);
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v26 = sub_22C90063C();
  v1[45] = v26;
  sub_22C3699B8(v26);
  v1[46] = v27;
  v29 = *(v28 + 64);
  v1[47] = sub_22C3699D4();
  v30 = sub_22C9063DC();
  v1[48] = v30;
  sub_22C3699B8(v30);
  v1[49] = v31;
  v33 = *(v32 + 64);
  v1[50] = sub_22C36D0D4();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

void sub_22C7C0458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22C7C2AA8();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 440);
  sub_22C90407C();
  v32 = sub_22C9063CC();
  v33 = sub_22C90AACC();
  v34 = sub_22C36D08C(v33);
  v35 = *(v28 + 440);
  v36 = *(v28 + 384);
  v37 = *(v28 + 392);
  if (v34)
  {
    v38 = sub_22C36FB44();
    sub_22C370220();
    v39 = swift_slowAlloc();
    a16 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_22C37B0CC(v39, 0x800000022C935810, &a16);
    sub_22C374ED0();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    sub_22C36FF94(v39);
    v45 = sub_22C3816C4();
    MEMORY[0x2318B9880](v45);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v46 = *(v37 + 8);
  v47 = sub_22C36BAFC();
  v46(v47);
  *(v28 + 448) = v46;
  v48 = *(*(v28 + 216) + 16);
  if (v48)
  {
    v49 = *(v28 + 432);
    v50 = *(v28 + 376);
    sub_22C90052C();
    sub_22C90407C();
    v51 = sub_22C9063CC();
    v52 = sub_22C90AACC();
    v53 = sub_22C370048(v52);
    v54 = *(v28 + 432);
    v55 = *(v28 + 384);
    v56 = *(v28 + 392);
    if (v53)
    {
      v57 = sub_22C36FB44();
      sub_22C370220();
      v58 = swift_slowAlloc();
      a16 = v58;
      *v57 = 136315138;
      sub_22C36EE00();
      *(v57 + 4) = sub_22C37B0CC(v59, v60, &a16);
      sub_22C7C29D0();
      _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
      sub_22C36FF94(v58);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v66 = sub_22C3816C4();
      MEMORY[0x2318B9880](v66);
    }

    v67 = sub_22C36D264();
    v46(v67);
    v68 = *(v28 + 216);
    a16 = MEMORY[0x277D84F90];
    sub_22C3B781C(0, v48, 0);
    v69 = a16;
    DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
    sub_22C3699B8(DecorationTuple);
    v72 = v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v74 = *(v73 + 72);
    do
    {
      sub_22C7C1FA4(v72);
      v76 = v75;
      a16 = v69;
      v78 = *(v69 + 16);
      v77 = *(v69 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_22C3B781C((v77 > 1), v78 + 1, 1);
        v69 = a16;
      }

      *(v69 + 16) = v78 + 1;
      *(v69 + 8 * v78 + 32) = v76;
      v72 += v74;
      --v48;
    }

    while (v48);
    swift_getKeyPath();
    v79 = *(v69 + 16);
    *(v28 + 456) = v79;
    if (v79)
    {
      a16 = MEMORY[0x277D84F90];
      sub_22C3B7698();
      v80 = a16;
      v81 = (v69 + 32);
      do
      {
        *(v28 + 192) = *v81;

        swift_getAtKeyPath();

        v82 = *(v28 + 184);
        a16 = v80;
        v84 = v80[2];
        v83 = v80[3];
        if (v84 >= v83 >> 1)
        {
          sub_22C369AB0(v83);
          sub_22C3B7698();
          v80 = a16;
        }

        v80[2] = v84 + 1;
        v80[v84 + 4] = v82;
        ++v81;
        --v79;
      }

      while (v79);
    }

    else
    {

      v80 = MEMORY[0x277D84F90];
    }

    v90 = sub_22C3D0D14(v80);
    v92 = v91;

    *(v28 + 464) = v90;
    *(v28 + 73) = v92;
    *(v28 + 472) = sub_22C74C164(v69, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    *(v28 + 480) = v93;
    *(v28 + 488) = v94;
    *(v28 + 496) = v95;
    v104 = *(v28 + 208);
    v105 = sub_22C374168((*(v28 + 224) + 64), *(*(v28 + 224) + 88));
    *(v28 + 504) = *(v104 + 96);
    sub_22C903C0C();
    *(v28 + 512) = v106;
    v107 = *v105;
    swift_task_alloc();
    sub_22C36CC90();
    *(v28 + 520) = v108;
    *v108 = v109;
    v108[1] = sub_22C7C0A34;
    sub_22C378644();

    sub_22C740278(v110, v111, v112, v113, v114);
  }

  else
  {
    v86 = *(v28 + 432);
    v85 = *(v28 + 440);
    v88 = *(v28 + 416);
    v87 = *(v28 + 424);
    sub_22C388A34();
    v89 = *(v28 + 200);

    v89[1] = 0u;
    v89[2] = 0u;
    *v89 = 0u;
    sub_22C369A24();
    sub_22C378644();

    v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_22C7C0A34()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 520);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[66] = v0;

  v9 = v3[64];
  if (v0)
  {
    v11 = v3[61];
    v10 = v3[62];
    v14 = v3 + 59;
    v12 = v3[59];
    v13 = v14[1];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C7C1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  (*(v18[46] + 8))(v18[47], v18[45]);
  v19 = v18[66];
  sub_22C7C28C4();
  sub_22C386B20();

  sub_22C369A24();
  sub_22C375E04();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7C115C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v6 = v3[68];
  v7 = v3[67];
  v8 = v3[41];
  v9 = v3[40];
  v10 = *v1;
  *v5 = *v1;
  v4[69] = a1;

  sub_22C36DD28(v9, &qword_27D9BF2C0, &qword_22C925300);
  sub_22C36DD28(v8, &qword_27D9BF2C0, &qword_22C925300);
  v11 = swift_task_alloc();
  v4[70] = v11;
  *v11 = v10;
  v11[1] = sub_22C7C1378;
  v12 = v3[62];
  v13 = v3[61];
  v14 = v3[60];
  v15 = v3[59];
  v16 = v3[47];

  return sub_22C755550();
}

uint64_t sub_22C7C1378(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_22C369970();
  *v8 = v7;
  v9 = v6[70];
  *v8 = *v3;
  v7[71] = v2;

  v10 = v6[69];

  if (!v2)
  {
    v7[72] = a2;
    v7[73] = a1;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7C1830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 568);
  v30 = *(v26 + 416);
  sub_22C90401C();
  v31 = v29;
  v32 = sub_22C9063CC();
  v33 = sub_22C90AADC();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v26 + 568);
  if (v34)
  {
    v36 = sub_22C36FB44();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v35;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_22C366000, v32, v33, "[RECOVERABLE_ERROR]: %@", v36, 0xCu);
    sub_22C36DD28(v37, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v40 = sub_22C36D66C();
    MEMORY[0x2318B9880](v40);
  }

  else
  {
  }

  v41 = *(v26 + 456);
  v90 = *(v26 + 400);
  v43 = *(v26 + 344);
  v42 = *(v26 + 352);
  v45 = *(v26 + 304);
  v44 = *(v26 + 312);
  v46 = *(v26 + 296);
  v48 = *(v26 + 264);
  v47 = *(v26 + 272);
  v89 = *(v26 + 256);
  v49 = *(v26 + 208);
  v88 = *(v26 + 472);
  v91 = *(v26 + 488);
  v50 = (*(v26 + 392) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v26 + 448))(*(v26 + 416), *(v26 + 384));
  sub_22C3875B8();
  sub_22C7C2788(v42, v43);
  v51 = sub_22C5C8B28(0x7FFuLL);
  v52 = (v51 + 1) & ~((v51 + 1) >> 63);
  sub_22C7C28AC();
  sub_22C7C2730(v43, v44);
  v53 = (v44 + v45[5]);
  *v53 = v88;
  v53[1] = v91;
  v54 = MEMORY[0x277D84F90];
  v55 = (v44 + v45[6]);
  *v55 = MEMORY[0x277D84F90];
  v55[1] = v54;
  *(v44 + v45[7]) = v54;
  v56 = (v44 + v45[8]);
  *v56 = v54;
  v56[1] = v41;
  v57 = v44 + v45[9];
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = v52;
  *(v44 + v45[10]) = 1;
  *(v44 + v45[11]) = v54;
  sub_22C90068C();
  v58 = v49[5];
  v59 = v49[6];
  sub_22C374168(v49 + 2, v58);
  sub_22C90621C();
  (*(v59 + 96))(v46, v47, v58, v59);
  (*(v48 + 8))(v47, v89);
  sub_22C90407C();
  v60 = sub_22C9063CC();
  v61 = sub_22C90AACC();
  v62 = sub_22C36D08C(v61);
  v63 = *(v26 + 448);
  v65 = *(v26 + 392);
  v64 = *(v26 + 400);
  v66 = *(v26 + 384);
  if (v62)
  {
    v67 = sub_22C36FB44();
    sub_22C370220();
    v68 = swift_slowAlloc();
    a15 = v68;
    *v67 = 136315138;
    sub_22C36EE00();
    *(v67 + 4) = sub_22C37B0CC(v69, v70, &a15);
    sub_22C374ED0();
    _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
    sub_22C36FF94(v68);
    v76 = sub_22C3816C4();
    MEMORY[0x2318B9880](v76);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v77 = sub_22C36BAFC();
  v63(v77);
  v78 = sub_22C7C2948();
  sub_22C7C29A0(v78, v79);
  v80 = v49[6];
  sub_22C374168(v49 + 2, v49[5]);
  v81 = sub_22C3776E4();
  v82(v81);
  v83 = *v66;
  swift_task_alloc();
  sub_22C36CC90();
  *(v26 + 600) = v84;
  *v84 = v85;
  sub_22C3787B0(v84);
  sub_22C375E04();

  return sub_22C750500();
}

uint64_t sub_22C7C1BC8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 600);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 608) = v0;

  if (v0)
  {
    v9 = *(v3 + 592);
    (*(*(v3 + 240) + 8))(*(v3 + 248), *(v3 + 232));
  }

  else
  {
    v10 = *(v3 + 592);
    v12 = *(v3 + 240);
    v11 = *(v3 + 248);
    v13 = *(v3 + 232);
    v14 = *(v3 + 160);
    *(v3 + 616) = *(v3 + 144);
    *(v3 + 632) = v14;
    *(v3 + 648) = *(v3 + 176);
    (*(v12 + 8))(v11, v13);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C7C1D24()
{
  v19 = *(v0 + 648);
  v18 = *(v0 + 632);
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = sub_22C38B504();
  v4(v3);
  sub_22C7C2904();
  sub_22C7C28DC();
  v5 = *(v2 + 8);
  v6 = sub_22C36BBCC();
  v7(v6);
  v17 = *(v0 + 616);
  if (*(v0 + 73))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + 464);
  }

  v16 = v8;
  v10 = *(v0 + 432);
  v9 = *(v0 + 440);
  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  sub_22C388A34();
  v13 = *(v0 + 200);

  *v13 = v17;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 40) = v16;
  sub_22C369A24();

  return v14();
}

uint64_t sub_22C7C1E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v20 = v18[46];
  v19 = v18[47];
  v21 = sub_22C38B504();
  v22(v21);
  sub_22C7C2904();
  sub_22C7C28DC();
  v23 = *(v20 + 8);
  v24 = sub_22C36BBCC();
  v25(v24);
  v26 = v18[76];
  sub_22C7C28C4();
  sub_22C386B20();

  sub_22C369A24();
  sub_22C375E04();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_22C7C1FA4(uint64_t a1)
{
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  v37 = *(DecorationTupleParameter - 8);
  v38 = DecorationTupleParameter;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](DecorationTupleParameter);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C7E60B0(&v39);
  v33 = v40;
  v34 = v39;
  v32 = v41;
  v31 = v42;
  v5 = *(a1 + *(type metadata accessor for QueryDecorationTuple(0) + 20));
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v43 = v5;

  v11 = 0;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v36;
    sub_22C7C2788(*(v43 + 48) + *(v37 + 72) * (v13 | (v11 << 6)), v36);
    v15 = v14 + *(v38 + 20);
    sub_22C7E4F60();
    sub_22C7C27E0(v14, type metadata accessor for QueryDecorationTupleParameter);
    v16 = v39;
    v17 = v40;
    v18 = v41;
    v19 = v42;
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v35 + 16);
        sub_22C594258();
        v35 = v25;
      }

      v20 = *(v35 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v35 + 24) >> 1)
      {
        v29 = *(v35 + 16);
        v30 = v20 + 1;
        sub_22C594258();
        v20 = v29;
        v21 = v30;
        v35 = v26;
      }

      v22 = v35;
      *(v35 + 16) = v21;
      v23 = v22 + 40 * v20;
      *(v23 + 32) = v16;
      *(v23 + 40) = v17;
      *(v23 + 48) = v18;
      *(v23 + 56) = v19;
    }

    else
    {
      sub_22C7C2838(v39, 0);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      sub_22C3A5908(&qword_27D9BAC10, &qword_22C90D4B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22C90F800;
      v28 = v33;
      *(v27 + 32) = v34;
      *(v27 + 40) = v28;
      *(v27 + 48) = v32;
      *(v27 + 56) = v31;
      v39 = v27;
      sub_22C3CEF98(v35);
      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C7C229C()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_22C7C2348;

  return sub_22C7C01B4();
}

uint64_t sub_22C7C2348()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 104);
  v4 = *v1;
  v5 = *(v2 + 32);
  *(v2 + 120) = *(v2 + 16);
  *(v2 + 112) = v0;
  *(v2 + 136) = v5;
  *(v2 + 152) = *(v2 + 48);

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C7C2498()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 112);
    *(v0 + 64) = *(v0 + 120);
    *(v0 + 80) = v1;
    *(v0 + 88) = v3;
    *(v0 + 96) = v2;
    sub_22C7432D0();
    v6 = v5;

    if (v4)
    {
      sub_22C369A24();

      return v7();
    }

    if (v6 - 1 >= 2 && v6)
    {
      v9 = sub_22C36BBCC();
      sub_22C601E0C(v9, v10, 3);
    }
  }

  v11 = *(v0 + 8);
  v12 = sub_22C792134();

  return v13(v12);
}

uint64_t sub_22C7C25C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_22C382AF4;

  return sub_22C7BD0EC();
}

uint64_t sub_22C7C26C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0278, &qword_22C9267A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7C2730(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C7C2788(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C7C27E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C7C2838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C7C28C4()
{
  v2 = v0[54];
  result = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[47];
  v9 = v0[43];
  v8 = v0[44];
  return result;
}

uint64_t sub_22C7C28DC()
{

  return sub_22C7C27E0(v0, type metadata accessor for JointResolution.DeviceContext);
}

uint64_t sub_22C7C2904()
{

  return sub_22C7C27E0(v0, _s10ModelInputVMa);
}

uint64_t sub_22C7C292C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22C7C2948()
{
  v1 = v0[63];
  v2 = v0[31];
  sub_22C374168((v0[28] + 16), *(v0[28] + 40));

  return sub_22C903C0C();
}

uint64_t sub_22C7C2984()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 376);
  return result;
}

uint64_t sub_22C7C29E0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22C7C2A00()
{
  v1 = *(*(v0 - 184) + 8);
  result = *(v0 - 336);
  v3 = *(v0 - 224);
  return result;
}

void sub_22C7C2A18(uint64_t a1@<X8>)
{
  *(v3 - 120) = v1;
  *(v3 - 112) = a1;
  v4 = v2[33];
  *(v3 - 104) = v2[34];
  *(v3 - 96) = v4;
  *(v3 - 88) = v2[30];
}

uint64_t sub_22C7C2A30()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_22C7C2A3C()
{

  return swift_arrayDestroy();
}

BOOL sub_22C7C2A58(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C7C2A94()
{
  v2 = *(v0 - 120);
  result = *(v0 - 112);
  v3 = *(v0 - 96);
  return result;
}

uint64_t sub_22C7C2AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_22C9037EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = v6 + 16;
  v24 = (v6 + 8);
  v25 = a1;
  v26 = v11;
LABEL_2:
  if (v10 == v11)
  {
    v21 = 1;
    v20 = v27;
  }

  else
  {
    v28 = v10 + 1;
    v13 = v12;
    (*(v6 + 16))(v9, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v14 = a2;
    v15 = *(*a2 + 16);

    v16 = 0;
    while (v15 != v16)
    {
      v17 = *(type metadata accessor for RetrievedToolWithAttribution() - 8);
      v18 = *(v17 + 80);
      v19 = *(v17 + 72);
      ++v16;
      if (sub_22C90375C())
      {

        (*v24)(v9, v5);
        v10 = v28;
        a2 = v14;
        a1 = v25;
        v11 = v26;
        v12 = v13;
        goto LABEL_2;
      }
    }

    v20 = v27;
    (*(v6 + 32))(v27, v9, v5);
    v21 = 0;
  }

  return sub_22C36C640(v20, v21, 1, v5);
}

void sub_22C7C2CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22C36BA7C();
  a20 = v22;
  a21 = v23;
  v454 = v24;
  v462 = v25;
  v27 = v26;
  v444 = sub_22C9063DC();
  v28 = sub_22C369824(v444);
  v443 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  sub_22C3698F8(v33);
  v505 = type metadata accessor for RetrievedToolWithAttribution();
  v34 = sub_22C369824(v505);
  v509 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C3698F8(v44);
  v45 = sub_22C908D6C();
  v46 = sub_22C369824(v45);
  v450 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  v519 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  v518 = v52;
  v53 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  sub_22C3698F8(v57);
  v491 = sub_22C9036EC();
  v58 = sub_22C369824(v491);
  v489 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA64();
  sub_22C3698F8(v64);
  v497 = sub_22C908EAC();
  v65 = sub_22C369824(v497);
  v484 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  sub_22C3698F8(v70 - v69);
  v507 = sub_22C90377C();
  v71 = sub_22C369824(v507);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C36BA64();
  sub_22C3698F8(v83);
  v84 = sub_22C9037EC();
  v85 = sub_22C369824(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v90);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v93);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v96);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v97);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v98);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v102);
  sub_22C36BA58();
  v512 = v103;
  MEMORY[0x28223BE20](v104);
  v106 = &v441 - v105;
  v107 = *sub_22C374168((v21 + 16), *(v21 + 40));
  sub_22C37931C();
  v109 = sub_22C37FACC(v108, &v519);
  sub_22C377700(v109);
  v111 = *sub_22C37FACC(v110, &v481);
  sub_22C37931C();
  v113 = sub_22C37FACC(v112, &v480);
  sub_22C377700(v113);
  v446 = v114;
  v115 = 0;
  v499 = v27;
  v502 = *(v27 + 16);
  v513 = (v87 + 16);
  v503 = *MEMORY[0x277D1ED28];
  v498 = (v73 + 104);
  v455 = v73;
  v506 = (v73 + 8);
  v495 = *MEMORY[0x277D1ED30];
  v488 = *MEMORY[0x277D1ED40];
  v510 = v87 + 8;
  v515 = v87;
  v508 = v87 + 32;
  v116 = MEMORY[0x277D84F90];
  v511 = v84;
  v480 = v45;
  while (1)
  {
    v117 = v501;
    v118 = v500;
    if (v502 == v115)
    {
      break;
    }

    v119 = v116;
    sub_22C371DC0();
    v516 = v121 & ~v120;
    v517 = v115;
    v514 = *(v122 + 72);
    (*(v122 + 16))(v106, v499 + v516 + v514 * v115, v84);
    sub_22C90378C();
    v123 = *v498;
    v124 = v507;
    (*v498)(v117, v503, v507);
    v125 = sub_22C90376C();
    v73 = v506;
    v126 = *v506;
    v127 = sub_22C37BD98();
    v126(v127);
    (v126)(v118, v124);
    if (v125)
    {
      goto LABEL_7;
    }

    sub_22C90378C();
    v123(v117, v495, v124);
    v128 = sub_22C90376C();
    v129 = sub_22C37BD98();
    v126(v129);
    (v126)(v118, v124);
    if (v128 & 1) != 0 || (sub_22C90378C(), v123(v117, v488, v124), v130 = sub_22C90376C(), v131 = sub_22C37BD98(), v126(v131), (v126)(v118, v124), (v130))
    {
LABEL_7:
      sub_22C3892B0();
      v134 = *v133;
      (*v133)(v512, v106, v511);
      v116 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v520 = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36DB40(*(v119 + 2));
        v116 = v520;
      }

      v45 = v480;
      v136 = v517;
      v138 = *(v116 + 2);
      v137 = *(v116 + 3);
      if (v138 >= v137 >> 1)
      {
        v139 = sub_22C369AB0(v137);
        sub_22C3B60C0(v139, v138 + 1, 1);
        v136 = v517;
        v116 = v520;
      }

      v115 = v136 + 1;
      *(v116 + 2) = v138 + 1;
      v84 = v511;
      sub_22C388A64();
      v134();
    }

    else
    {
      sub_22C37ED90();
      v84 = v511;
      v132(v106, v511);
      v115 = v517 + 1;
      v116 = v119;
      v45 = v480;
    }
  }

  v140 = *(v116 + 2);

  v141 = 0;
  v479 = MEMORY[0x277D84F90];
  sub_22C7C61D8();
  v142 = v490;
  v143 = v450;
  while (v140 != v141)
  {
    if (v141 >= *(v116 + 2))
    {
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    sub_22C371DC0();
    v145 = *(v144 + 72);
    v146 = *(v144 + 16);
    v147 = sub_22C372DC8();
    v148(v147);
    sub_22C7C5788();
    if (v149)
    {
      sub_22C37ED90();
      v150(v142, v84);
      ++v141;
    }

    else
    {
      v517 = v116;
      sub_22C3892B0();
      v152 = *v151;
      (*v151)(v494, v142, v84);
      v153 = v479;
      v154 = swift_isUniquelyReferenced_nonNull_native();
      v520 = v153;
      if ((v154 & 1) == 0)
      {
        sub_22C36DB40(*(v153 + 2));
        v142 = v490;
        v153 = v520;
      }

      v156 = *(v153 + 2);
      v155 = *(v153 + 3);
      v73 = v156 + 1;
      if (v156 >= v155 >> 1)
      {
        v157 = sub_22C369AB0(v155);
        sub_22C3B60C0(v157, v156 + 1, 1);
        v142 = v490;
        v153 = v520;
      }

      ++v141;
      *(v153 + 2) = v73;
      v479 = v153;
      v84 = v511;
      sub_22C388A64();
      v152();
      sub_22C7C61D8();
      v116 = v517;
      v45 = v480;
    }
  }

  v158 = v479;

  v159 = 0;
  v477 = *(v158 + 2);
  v490 = v489 + 1;
  v473 = v484 + 32;
  v516 = v143 + 32;
  v517 = (v143 + 16);
  v160 = *MEMORY[0x277D72188];
  LODWORD(v514) = *MEMORY[0x277D72180];
  LODWORD(v512) = *MEMORY[0x277D72178];
  v161 = (v143 + 8);
  v489 = (v484 + 8);
  v478 = MEMORY[0x277D84F90];
  while (v159 != v477)
  {
    if (v159 >= *(v158 + 2))
    {
      goto LABEL_221;
    }

    sub_22C37054C();
    v484 = v162;
    v483 = *(v163 + 72);
    v164 = *(v163 + 16);
    v165 = sub_22C372DC8();
    v167 = v166;
    v168(v165);
    v494 = v167 + 1;
    v169 = v475;
    sub_22C90371C();
    v170 = v476;
    sub_22C9036BC();
    sub_22C36BA4C(v522);
    v171(v169, v491);
    sub_22C3724D4(v170);
    if (!v212)
    {
      sub_22C36BA4C(&v505);
      v172(v493, v170, v73);
      v173 = sub_22C908DEC();
      v174 = 0;
      v84 = *(v173 + 16);
      while (1)
      {
        if (v84 == v174)
        {
          sub_22C36BA4C(&v521);
          v180(v493, v497);

          v84 = v511;
          goto LABEL_35;
        }

        if (v174 >= *(v173 + 16))
        {
          break;
        }

        v175 = *(v143 + 80);
        sub_22C36BA94();
        v177 = v518;
        (*(v143 + 16))(v518, v173 + v176 + *(v143 + 72) * v174, v45);
        v178 = v519;
        (*(v143 + 32))(v519, v177, v45);
        v179 = (*(v143 + 88))(v178, v45);
        if (v179 == v160)
        {

          (*v161)(v519, v45);
          goto LABEL_41;
        }

        if (v179 == v514 || v179 == v512)
        {

LABEL_41:
          sub_22C36BA4C(&v521);
          v73 = v497;
          v186(v493, v497);
          sub_22C37ED90();
          v187 = sub_22C383498();
          v188(v187);
          goto LABEL_42;
        }

        (*v161)(v519, v45);
        ++v174;
      }

      __break(1u);
      goto LABEL_220;
    }

    sub_22C3770B0(v170, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_35:
    sub_22C3892B0();
    v182 = *v181;
    (*v181)(v466, v496, v84);
    v183 = v478;
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v520 = v183;
    if ((v184 & 1) == 0)
    {
      sub_22C36DB40(*(v183 + 2));
      v183 = v520;
    }

    v73 = *(v183 + 2);
    v185 = *(v183 + 3);
    if (v73 >= v185 >> 1)
    {
      v189 = sub_22C369AB0(v185);
      sub_22C3B60C0(v189, v73 + 1, 1);
      v183 = v520;
    }

    *(v183 + 2) = v73 + 1;
    v478 = v183;
    sub_22C388A64();
    v182();
    sub_22C7C61D8();
LABEL_42:
    v158 = v479;
    v159 = v494;
  }

  v190 = v478;
  v526 = v478;
  v191 = type metadata accessor for ContextRetrievalService();
  v192 = v454;
  if (static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(v454))
  {
    v518 = v191;
    v193 = 0;
    v194 = MEMORY[0x277D84F90];
    v519 = *(v190 + 16);
    for (i = v190; ; i = v478)
    {
      v196 = v465;
LABEL_47:
      if (v193 == v519)
      {
        break;
      }

      if (v193 >= *(i + 16))
      {
        goto LABEL_226;
      }

      sub_22C371DC0();
      v198 = *(v197 + 72);
      v199 = *(v197 + 16);
      v200 = sub_22C372DC8();
      v201(v200);
      v193 = (v193 + 1);
      v202 = v464;
      sub_22C90371C();
      sub_22C9036BC();
      sub_22C36BA4C(v522);
      v203(v202, v491);
      sub_22C3724D4(v196);
      if (v212)
      {
        sub_22C3770B0(v196, &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else
      {
        v204 = sub_22C908E7C();
        v205 = v73;
        v73 = v204;
        v84 = v206;
        (*v489)(v196, v205);
        if (qword_27D9BA7B0 != -1)
        {
          sub_22C370A64();
          swift_once();
        }

        v207 = qword_27D9E4018;
        if (*(qword_27D9E4018 + 16))
        {
          v208 = *(qword_27D9E4018 + 40);
          sub_22C90B62C();
          sub_22C909FFC();
          sub_22C90B66C();
          sub_22C3724BC();
          while (1)
          {
            sub_22C382950(v209);
            if ((v210 & 1) == 0)
            {
              break;
            }

            v211 = (*(v207 + 48) + 16 * v196);
            v212 = *v211 == v73 && v211[1] == v84;
            if (!v212)
            {
              v213 = sub_22C90B4FC();
              v209 = v196 + 1;
              if ((v213 & 1) == 0)
              {
                continue;
              }
            }

            sub_22C37ED90();
            v214 = sub_22C383498();
            v215(v214);
            sub_22C7C61D8();
            v196 = v465;
            i = v478;
            goto LABEL_47;
          }
        }

        v84 = v511;
      }

      sub_22C3892B0();
      v217 = *v216;
      (*v216)(v461, v474, v84);
      v218 = swift_isUniquelyReferenced_nonNull_native();
      v525 = v194;
      if ((v218 & 1) == 0)
      {
        v219 = *(v194 + 16);
        v220 = sub_22C373310();
        sub_22C3B60C0(v220, v221, v222);
        v194 = v525;
      }

      v224 = *(v194 + 16);
      v223 = *(v194 + 24);
      v73 = v224 + 1;
      if (v224 >= v223 >> 1)
      {
        v225 = sub_22C369AB0(v223);
        sub_22C3B60C0(v225, v224 + 1, 1);
        v194 = v525;
      }

      *(v194 + 16) = v73;
      sub_22C388A64();
      v217();
      sub_22C7C61D8();
    }

    v526 = v194;
    v192 = v454;
  }

  if (static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(v192))
  {
    if (v462)
    {
      v226 = 0;
      v227 = MEMORY[0x277D84F90];
      v519 = *(v462 + 16);
LABEL_72:
      while (v226 != v519)
      {
        sub_22C371DC0();
        v229 = *(v228 + 72);
        v230 = *(v228 + 16);
        v231 = sub_22C372DC8();
        v232(v231);
        v226 = (v226 + 1);
        v233 = v459;
        sub_22C90371C();
        v234 = v460;
        sub_22C9036BC();
        sub_22C36BA4C(v522);
        v235(v233, v491);
        v236 = v497;
        if (sub_22C370B74(v234, 1, v497) == 1)
        {
          sub_22C3770B0(v234, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v84 = sub_22C908E7C();
          v238 = v237;
          sub_22C36BA4C(&v521);
          v239(v234, v236);
          if (qword_27D9BA7B0 != -1)
          {
            sub_22C370A64();
            swift_once();
          }

          v240 = qword_27D9E4018;
          if (*(qword_27D9E4018 + 16))
          {
            v241 = *(qword_27D9E4018 + 40);
            sub_22C90B62C();
            sub_22C909FFC();
            sub_22C90B66C();
            sub_22C3724BC();
            while (1)
            {
              sub_22C382950(v242);
              if ((v243 & 1) == 0)
              {
                break;
              }

              v244 = (*(v240 + 48) + 16 * v234);
              if (*v244 != v84 || v244[1] != v238)
              {
                v246 = sub_22C90B4FC();
                v242 = v234 + 1;
                if ((v246 & 1) == 0)
                {
                  continue;
                }
              }

              sub_22C37ED90();
              v247 = sub_22C383498();
              v248(v247);
              goto LABEL_72;
            }
          }

          v84 = v511;
        }

        sub_22C3892B0();
        v250 = *v249;
        (*v249)(v458, v468, v84);
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v525 = v227;
        if ((v251 & 1) == 0)
        {
          v252 = *(v227 + 16);
          v253 = sub_22C373310();
          sub_22C3B60C0(v253, v254, v255);
          v227 = v525;
        }

        v257 = *(v227 + 16);
        v256 = *(v227 + 24);
        if (v257 >= v256 >> 1)
        {
          v258 = sub_22C369AB0(v256);
          sub_22C3B60C0(v258, v257 + 1, 1);
          v227 = v525;
        }

        *(v227 + 16) = v257 + 1;
        sub_22C388A64();
        v250();
      }

      v462 = v227;
    }

    else
    {
      v462 = 0;
    }
  }

  else
  {
  }

  v259 = 0;
  LODWORD(v518) = *MEMORY[0x277D1ED38];
  v517 = MEMORY[0x277D84F90];
  v260 = v453;
  while (v502 != v259)
  {
    sub_22C371DC0();
    v262 = *(v261 + 72);
    v263 = *(v261 + 16);
    v264 = sub_22C372DC8();
    v265(v264);
    v266 = v500;
    sub_22C90378C();
    sub_22C36BA4C(&v525);
    v267 = v501;
    v268 = v507;
    v269(v501, v518, v507);
    LODWORD(v519) = sub_22C90376C();
    v270 = *v506;
    (*v506)(v267, v268);
    (v270)(v266, v268);
    if (v519)
    {
      sub_22C3892B0();
      v273 = *v272;
      (*v272)(v457, v260, v84);
      v274 = v517;
      v275 = swift_isUniquelyReferenced_nonNull_native();
      v276 = v274;
      v520 = v274;
      if ((v275 & 1) == 0)
      {
        sub_22C36DB40(*(v274 + 2));
        v260 = v453;
        v276 = v520;
      }

      v278 = *(v276 + 2);
      v277 = *(v276 + 3);
      if (v278 >= v277 >> 1)
      {
        v279 = sub_22C369AB0(v277);
        sub_22C3B60C0(v279, v278 + 1, 1);
        v260 = v453;
        v276 = v520;
      }

      ++v259;
      *(v276 + 2) = v278 + 1;
      v517 = v276;
      sub_22C388A64();
      v273();
    }

    else
    {
      sub_22C37ED90();
      v271(v260, v84);
      ++v259;
    }
  }

  v520 = v517;
  v280 = sub_22C7C524C(v449);
  v281 = *(v280 + 16);
  if (v281)
  {
    v525 = MEMORY[0x277D84F90];
    sub_22C3B7CA0();
    v282 = 0;
    v283 = v525;
    v284 = *(v515 + 80);
    sub_22C36BA94();
    v519 = (v280 + v285);
    v286 = (v455 + 16);
    v287 = (v455 + 88);
    while (v282 < *(v280 + 16))
    {
      v288 = v281;
      v289 = v519 + *(v515 + 72) * v282;
      v290 = *(v515 + 16);
      v291 = sub_22C372DC8();
      v292(v291);
      v293 = v486;
      sub_22C90378C();
      v294 = v469;
      v295 = v507;
      (*v286)(v469, v293, v507);
      (*v287)(v294, v295);
      sub_22C369908(&a12);
      if (v212)
      {
        v296 = 1;
      }

      else
      {
        sub_22C369908(v523);
        if (v297)
        {
          v296 = 2;
        }

        else
        {
          sub_22C369908(&v520 + 4);
          if (v298)
          {
            v296 = 3;
          }

          else
          {
            if (v299 != v518)
            {
              goto LABEL_229;
            }

            v296 = 4;
          }
        }
      }

      sub_22C36BA4C(&a15);
      v300(v486, v507);
      sub_22C36BA4C(&a17);
      v301 = v470;
      v302(v470, v485, v84);
      sub_22C3875D0();
      *(v301 + v303) = v296;
      v525 = v283;
      v305 = *(v283 + 16);
      v304 = *(v283 + 24);
      if (v305 >= v304 >> 1)
      {
        sub_22C369AB0(v304);
        sub_22C3B7CA0();
        v283 = v525;
      }

      ++v282;
      *(v283 + 16) = v305 + 1;
      sub_22C7C61C0();
      sub_22C7C615C(v308, v283 + v306 + *(v307 + 72) * v305);
      v281 = v288;
      v84 = v511;
      if (v288 == v282)
      {

        goto LABEL_123;
      }
    }

LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v283 = MEMORY[0x277D84F90];
LABEL_123:
  v309 = MEMORY[0x277D84F90];

  v310 = sub_22C7C524C(v448);
  v311 = *(v310 + 16);
  if (v311)
  {
    v525 = v309;
    sub_22C3B7CA0();
    v312 = v525;
    sub_22C37054C();
    v519 = v310;
    v314 = v310 + v313;
    v316 = *(v315 + 72);
    v317 = *(v315 + 16);
    v318 = v442;
    do
    {
      v317(v318, v314, v511);
      sub_22C3875D0();
      *(v318 + v319) = 4;
      v525 = v312;
      v321 = *(v312 + 16);
      v320 = *(v312 + 24);
      if (v321 >= v320 >> 1)
      {
        sub_22C369AB0(v320);
        sub_22C3B7CA0();
        v318 = v442;
        v312 = v525;
      }

      *(v312 + 16) = v321 + 1;
      sub_22C7C61C0();
      sub_22C7C615C(v318, v312 + v322 + *(v323 + 72) * v321);
      v314 += v316;
      --v311;
    }

    while (v311);

    v84 = v511;
  }

  else
  {

    v312 = MEMORY[0x277D84F90];
  }

  v324 = *(v283 + 16);

  v325 = *(v312 + 16);

  v326 = v324 + v325;
  v327 = v507;
  if (__OFADD__(v324, v325))
  {
    goto LABEL_228;
  }

  while (1)
  {
    v328 = v520;
    if (!*(v520 + 2) || v326 >= v487)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887698(v328);
      v328 = v343;
    }

    v330 = *(v328 + 16);
    if (!v330)
    {
      goto LABEL_222;
    }

    v331 = v330 - 1;
    v332 = v515;
    v333 = *(v515 + 80);
    sub_22C36BA94();
    v335 = v328 + v334;
    (*(v332 + 32))(v504, v328 + v334, v84);
    v336 = *(v332 + 72);
    if (v336 > 0 || v335 >= v335 + v336 + v336 * v331)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v336)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(v328 + 16) = v331;
    v520 = v328;
    sub_22C3875D0();
    *(v504 + v338) = 4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v344 = *(v312 + 16);
      sub_22C373310();
      sub_22C595EE4();
      v312 = v345;
    }

    v340 = *(v312 + 16);
    v339 = *(v312 + 24);
    if (v340 >= v339 >> 1)
    {
      sub_22C369AB0(v339);
      sub_22C595EE4();
      v312 = v346;
    }

    *(v312 + 16) = v340 + 1;
    sub_22C7C61C0();
    sub_22C7C615C(v504, v312 + v341 + *(v342 + 72) * v340);
    ++v326;
  }

  v519 = (v455 + 16);
  v517 = (v455 + 88);
  v347 = v515;
  while (v326 < v487)
  {
    v348 = v526;
    if (!*(v526 + 16))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887698(v348);
      v348 = v372;
    }

    v349 = *(v348 + 16);
    if (!v349)
    {
      goto LABEL_227;
    }

    v350 = v349 - 1;
    v351 = *(v347 + 80);
    sub_22C36BA94();
    v353 = v348 + v352;
    (*(v347 + 32))(v492, v348 + v352, v511);
    v354 = *(v347 + 72);
    if (v354 > 0 || v353 >= v353 + v354 + v354 * v350)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v354)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(v348 + 16) = v350;
    v526 = v348;
    sub_22C90378C();
    v356 = *v519;
    v357 = v463;
    v358 = sub_22C37BD98();
    v359(v358);
    (*v517)(v357, v327);
    sub_22C369908(&a12);
    if (v212)
    {
      v360 = 1;
    }

    else
    {
      sub_22C369908(v523);
      if (v361)
      {
        v360 = 2;
      }

      else
      {
        sub_22C369908(&v520 + 4);
        if (v362)
        {
          v360 = 3;
        }

        else
        {
          if (v363 != v518)
          {
            goto LABEL_229;
          }

          v360 = 4;
        }
      }
    }

    sub_22C36BA4C(&a15);
    v364(v471, v327);
    v365 = v472;
    (*v513)(v472, v492, v511);
    sub_22C3875D0();
    *(v365 + v366) = v360;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v373 = *(v283 + 16);
      sub_22C373310();
      sub_22C595EE4();
      v283 = v374;
    }

    v368 = *(v283 + 16);
    v367 = *(v283 + 24);
    if (v368 >= v367 >> 1)
    {
      sub_22C369AB0(v367);
      sub_22C595EE4();
      v283 = v375;
    }

    sub_22C37ED90();
    v369(v492, v511);
    *(v283 + 16) = v368 + 1;
    sub_22C7C61C0();
    sub_22C7C615C(v472, v283 + v370 + *(v371 + 72) * v368);
    ++v326;
  }

  v525 = v312;

  sub_22C3CF02C(v376);
  v377 = v525;
  if (v446 >= 1)
  {
    sub_22C7C5368();
    v377 = v525;
  }

  v378 = v447;
  v379 = MEMORY[0x277D84F90];
  v512 = v377;
  sub_22C7C5BB0();

  v380 = sub_22C7C524C(0x14uLL);
  v381 = *(v380 + 16);
  if (!v381)
  {

    v383 = MEMORY[0x277D84F90];
LABEL_202:
    v401 = 0;
    v402 = *(v383 + 16);
    v403 = MEMORY[0x277D84F90];
    v404 = v452;
    while (v402 != v401)
    {
      if (v401 >= *(v383 + 16))
      {
        goto LABEL_223;
      }

      v405 = (*(v509 + 80) + 32) & ~*(v509 + 80);
      v406 = *(v509 + 72);
      sub_22C7C609C(v383 + v405 + v406 * v401, v404);
      sub_22C7C5788();
      if (v407)
      {
        sub_22C7C6100(v404);
        ++v401;
      }

      else
      {
        sub_22C7C615C(v404, v456);
        v408 = swift_isUniquelyReferenced_nonNull_native();
        v524 = v403;
        if ((v408 & 1) == 0)
        {
          v409 = *(v403 + 16);
          sub_22C373310();
          sub_22C3B7CA0();
          v404 = v452;
          v403 = v524;
        }

        v411 = *(v403 + 16);
        v410 = *(v403 + 24);
        v412 = v411 + 1;
        if (v411 >= v410 >> 1)
        {
          sub_22C369AB0(v410);
          v414 = v413;
          v519 = v415;
          sub_22C3B7CA0();
          v412 = v414;
          v411 = v519;
          v404 = v452;
          v403 = v524;
        }

        ++v401;
        *(v403 + 16) = v412;
        sub_22C7C615C(v456, v403 + v405 + v411 * v406);
      }
    }

    v416 = v445;
    sub_22C90400C();

    v417 = v512;

    v418 = sub_22C9063CC();
    v419 = sub_22C90AACC();
    if (os_log_type_enabled(v418, v419))
    {
      v420 = sub_22C370060();
      v421 = v403;
      v422 = sub_22C370060();
      v524 = v422;
      *v420 = 136315650;
      *(v420 + 4) = sub_22C3769D4();
      *(v420 + 12) = 2048;
      *(v420 + 14) = *(v417 + 16);

      *(v420 + 22) = 2048;
      v423 = *(v421 + 16);

      *(v420 + 24) = v423;

      _os_log_impl(&dword_22C366000, v418, v419, "%s selected tools %ld, substitution candidates %ld", v420, 0x20u);
      sub_22C36FF94(v422);
      v403 = v421;
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {
    }

    v424 = *(v443 + 8);
    v425 = v444;
    v424(v416, v444);
    v426 = v451;
    sub_22C90400C();

    v427 = sub_22C9063CC();
    v428 = sub_22C90AABC();

    if (os_log_type_enabled(v427, v428))
    {
      v429 = swift_slowAlloc();
      v524 = swift_slowAlloc();
      *v429 = 136315394;
      *(v429 + 4) = sub_22C3769D4();
      *(v429 + 12) = 2080;
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v403, v430, v431, v432, v433, v434, v435, v436, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452);
      v439 = sub_22C36F9F4(v437, v438, &v524);

      *(v429 + 14) = v439;
      _os_log_impl(&dword_22C366000, v427, v428, "%s substitutionCandidates list:\n%s", v429, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      v440 = v451;
    }

    else
    {

      v440 = v426;
    }

    v424(v440, v425);

    sub_22C36CC48();
    return;
  }

  v524 = v379;
  v516 = v381;
  sub_22C3B7CA0();
  v382 = 0;
  v383 = v524;
  v384 = *(v515 + 80);
  sub_22C36BA94();
  v514 = v380 + v385;
  while (v382 < *(v380 + 16))
  {
    v386 = v283;
    v387 = v380;
    (*(v515 + 16))(v481, v514 + *(v515 + 72) * v382, v511);
    v388 = v482;
    sub_22C90378C();
    v389 = v467;
    (*v519)(v467, v388, v327);
    (*v517)(v389, v327);
    sub_22C369908(&a12);
    if (v212)
    {
      v390 = 1;
    }

    else
    {
      sub_22C369908(v523);
      if (v391)
      {
        v390 = 2;
      }

      else
      {
        sub_22C369908(&v520 + 4);
        if (v392)
        {
          v390 = 3;
        }

        else
        {
          if (v393 != v518)
          {
            goto LABEL_229;
          }

          v390 = 4;
        }
      }
    }

    sub_22C36BA4C(&a15);
    v394(v482, v327);
    sub_22C36BA4C(&a17);
    v395(v378, v481, v511);
    sub_22C3875D0();
    *(v378 + v396) = v390;
    v524 = v383;
    v398 = *(v383 + 16);
    v397 = *(v383 + 24);
    if (v398 >= v397 >> 1)
    {
      sub_22C369AB0(v397);
      sub_22C3B7CA0();
      v383 = v524;
    }

    ++v382;
    *(v383 + 16) = v398 + 1;
    sub_22C7C61C0();
    sub_22C7C615C(v378, v383 + v399 + *(v400 + 72) * v398);
    v327 = v507;
    v380 = v387;
    v283 = v386;
    if (v516 == v382)
    {

      goto LABEL_202;
    }
  }

LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C7C524C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(*v2 + 16) >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *(*v2 + 16);
  }

  v1 = sub_22C60607C(0, v6, *v2);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  sub_22C7C79EC(v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_16;
  }

  if (v13 != (v5 >> 1) - v4)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
LABEL_6:
    sub_22C46FEFC(v1, v3, v4, v5);
    v11 = v10;
LABEL_13:
    swift_unknownObjectRelease();
    return v11;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return v11;
}

void sub_22C7C5368()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v64 = type metadata accessor for RetrievedToolWithAttribution();
  v4 = sub_22C369824(v64);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C9063DC();
  v13 = sub_22C369824(v12);
  v62 = v14;
  v63 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v53 - v22;
  v24 = sub_22C9037EC();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v53 - v33;
  if (v1)
  {
    v61 = v6;
    sub_22C7C2AC4(v1, v3, v23);
    if (sub_22C370B74(v23, 1, v24) == 1)
    {
      sub_22C3770B0(v23, &qword_27D9BD2A8, &qword_22C920540);
    }

    else
    {
      (*(v27 + 32))(v34, v23, v24);
      sub_22C90407C();
      v60 = *(v27 + 16);
      v60(v32, v34, v24);
      v35 = sub_22C9063CC();
      v36 = sub_22C90AACC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v56 = v3;
        v38 = v37;
        v57 = sub_22C370060();
        v65 = v57;
        *v38 = 136315138;
        v55 = v35;
        v53 = sub_22C7FE524();
        v40 = v39;
        v41 = *(v27 + 8);
        v58 = v11;
        v59 = v41;
        v54 = v36;
        v42 = sub_22C37BC38();
        v43(v42);
        v11 = v58;
        v44 = sub_22C36F9F4(v53, v40, &v65);

        v45 = v38;
        *(v38 + 4) = v44;
        v46 = v55;
        v3 = v56;
        _os_log_impl(&dword_22C366000, v55, v54, "Adding %s to the ranked list", v45, 0xCu);
        sub_22C36FF94(v57);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {

        v59 = *(v27 + 8);
        v47 = sub_22C37BC38();
        v48(v47);
      }

      (*(v62 + 8))(v19, v63);
      v60(v11, v34, v24);
      *(v11 + *(v64 + 20)) = 5;
      sub_22C3D1010();
      v49 = *(*v3 + 16);
      sub_22C3D11D4(v49);
      v59(v34, v24);
      v50 = *v3;
      *(*v3 + 16) = v49 + 1;
      sub_22C37054C();
      sub_22C7C615C(v11, v50 + v51 + *(v52 + 72) * v49);
      *v3 = v50;
    }
  }

  sub_22C36CC48();
}

void sub_22C7C5788()
{
  sub_22C36BA7C();
  v0 = sub_22C9063DC();
  v1 = sub_22C369824(v0);
  v38 = v2;
  v39 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_22C9036EC();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v38 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - v24;
  sub_22C90371C();
  (*(v15 + 32))(v23, v25, v12);
  LODWORD(v25) = (*(v15 + 88))(v23, v12);
  v26 = *MEMORY[0x277D1ECE8];
  v27 = *(v15 + 8);
  v27(v23, v12);
  if (v25 == v26)
  {
    sub_22C90371C();
    sub_22C57709C();
    v27(v20, v12);
    v28 = sub_22C9099FC();
    sub_22C3724D4(v11);
    if (v29)
    {
      sub_22C3770B0(v11, &qword_27D9BDC50, &unk_22C91B470);
    }

    else
    {
      v30 = sub_22C9099DC();
      v32 = v31;
      (*(*(v28 - 8) + 8))(v11, v28);
      v42[0] = 0xD00000000000001CLL;
      v42[1] = 0x800000022C932110;
      v40 = v30;
      v41 = v32;
      sub_22C3858B4();
      v33 = sub_22C90AD8C();
      if (v33)
      {
        sub_22C90400C();

        v34 = sub_22C9063CC();
        v35 = sub_22C90AACC();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v42[0] = swift_slowAlloc();
          *v36 = 136315394;
          *(v36 + 4) = sub_22C36F9F4(0xD000000000000029, 0x800000022C9359F0, v42);
          *(v36 + 12) = 2080;
          v37 = sub_22C36F9F4(v30, v32, v42);

          *(v36 + 14) = v37;
          _os_log_impl(&dword_22C366000, v34, v35, "%s filtering out assistantSchema that should be ignored %s", v36, 0x16u);
          swift_arrayDestroy();
          sub_22C3699EC();
          sub_22C3699EC();
        }

        else
        {
        }

        (*(v38 + 8))(v7, v39);
      }

      else
      {
      }
    }
  }

  sub_22C36CC48();
}

void sub_22C7C5BB0()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  sub_22C90407C();

  v15 = sub_22C9063CC();
  v16 = sub_22C90AABC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = sub_22C370060();
    v22 = v18;
    *v17 = 136315138;
    v19 = sub_22C7C5D58(v5, v3, v1);
    v21 = sub_22C36F9F4(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22C366000, v15, v16, "%s", v17, 0xCu);
    sub_22C36FF94(v18);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v9 + 8))(v14, v6);
  sub_22C36CC48();
}

uint64_t sub_22C7C5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RetrievedToolWithAttribution();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9037EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(a1);
  v31 = v16;
  v32 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(a2);
  v18 = v17;
  v19 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v29 = v17;
    v35 = MEMORY[0x277D84F90];
    sub_22C3B60C0(0, v19, 0);
    v20 = v35;
    v21 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v33 = v12 + 32;
    v34 = v22;
    do
    {
      sub_22C7C609C(v21, v10);
      (*(v12 + 16))(v15, v10, v11);
      sub_22C7C6100(v10);
      v35 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22C3B60C0(v23 > 1, v24 + 1, 1);
        v20 = v35;
      }

      *(v20 + 16) = v24 + 1;
      (*(v12 + 32))(v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v15, v11);
      v21 += v34;
      --v19;
    }

    while (v19);
    v18 = v29;
  }

  v25 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v20);
  v27 = v26;

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000058, 0x800000022C935950);
  MEMORY[0x2318B7850](v30, v31);

  MEMORY[0x2318B7850](0xD00000000000001ALL, 0x800000022C9359B0);
  MEMORY[0x2318B7850](v32, v18);

  MEMORY[0x2318B7850](0xD000000000000015, 0x800000022C9359D0);
  MEMORY[0x2318B7850](v25, v27);

  return v35;
}

uint64_t sub_22C7C609C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedToolWithAttribution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7C6100(uint64_t a1)
{
  v2 = type metadata accessor for RetrievedToolWithAttribution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C7C615C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedToolWithAttribution();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7C61E4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_22C9036EC();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RetrievedToolWithAttribution();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  v14 = 0;
  v38 = *(a1 + 16);
  v15 = (v3 + 8);
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v38 == v14)
    {

      return v34;
    }

    if (v14 >= *(a1 + 16))
    {
      break;
    }

    v16 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v17 = *(v35 + 72);
    v18 = a1;
    sub_22C7E4208(a1 + v16 + v17 * v14, v13);
    sub_22C90371C();
    RetrievedTool.Definition.toCandidateIdentifier()();
    (*v15)(v6, v36);
    v19 = v39[0];
    v20 = v39[1];

    sub_22C6A4514(v39, v19, v20, v21, v22, v23, v24, v25, v32[0], v32[1]);
    LOBYTE(v19) = v26;

    if (v19)
    {
      sub_22C7E4260(v13, v33);
      v27 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v27 + 16);
        sub_22C3B7CA0();
        v27 = v40;
      }

      v30 = *(v27 + 16);
      v31 = v30 + 1;
      if (v30 >= *(v27 + 24) >> 1)
      {
        v34 = v30 + 1;
        sub_22C3B7CA0();
        v31 = v34;
        v27 = v40;
      }

      ++v14;
      *(v27 + 16) = v31;
      v34 = v27;
      result = sub_22C7E4260(v33, v27 + v16 + v30 * v17);
      a1 = v18;
    }

    else
    {
      result = sub_22C7E42B8(v13, type metadata accessor for RetrievedToolWithAttribution);
      ++v14;
      a1 = v18;
    }
  }

  __break(1u);
  return result;
}

void sub_22C7C650C()
{
  sub_22C3BDA38();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C901FAC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v11 = v0[1];
  v34[2] = *v0;
  v34[3] = v11;
  v34[4] = v2;
  v12 = sub_22C7D5D1C(sub_22C7E435C, v34, v11, MEMORY[0x277D1C338]);
  if (v13)
  {
    if (v4 != 3)
    {
      sub_22C7D4F14();
      v16 = v0[2];
      v14 = v0 + 2;
      v15 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v15 + 16);
        sub_22C36D270();
        sub_22C3B6F24();
        v15 = *v14;
      }

      v19 = *(v15 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v15 + 24) >> 1)
      {
        v33 = *(v15 + 16);
        sub_22C3B6F24();
        v19 = v33;
        v15 = *v14;
      }

      *(v15 + 16) = v20;
      *(v15 + v19 + 32) = v4;
      *v14 = v15;
    }

    v21 = *(v8 + 8);
    v22 = sub_22C37BD98();
    v23(v22);
    goto LABEL_16;
  }

  v24 = v12;
  if (v4 == 3)
  {
    sub_22C7DEF20(v12);
    v25 = *(v8 + 8);
    v26 = sub_22C36D384();
    v25(v26);
    sub_22C7DFB7C(v24);
    v27 = sub_22C37BD98();
    v25(v27);
LABEL_16:
    sub_22C3BDA24();
    return;
  }

  v28 = v0[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2D0(v28);
    v28 = v29;
  }

  v30 = *(v8 + 8);
  v31 = sub_22C37BD98();
  v32(v31);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 < *(v28 + 16))
  {
    *(v28 + v24 + 32) = v4;
    v0[2] = v28;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_22C7C6728()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C901FAC();
  v8 = sub_22C369824(v7);
  v54 = v9;
  v55 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C36BA0C();
  v12 = sub_22C9070DC();
  v13 = sub_22C369824(v12);
  v57 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v53 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v52 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C387D8C();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  v51 = v22;
  v23 = (sub_22C3A5908(&qword_27D9C02A8, &unk_22C9269C8) - 8);
  v24 = *(*v23 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v25);
  sub_22C38059C();
  v26 = v1[1];
  v58[2] = *v1;
  v58[3] = v26;
  v56 = v4;
  v58[4] = v4;
  v27 = sub_22C7D5D1C(sub_22C7E3F94, v58, v26, MEMORY[0x277D1C338]);
  v29 = v28;
  v30 = v23[14];
  sub_22C4E719C(v6, v2 + v30, &qword_27D9BAA18, &qword_22C911C40);
  sub_22C36D0A8(v2 + v30, 1, v12);
  if (v29)
  {
    if (v31)
    {
      sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
      (*(v54 + 8))(v56, v55);
    }

    else
    {
      v35 = *(v57 + 32);
      v35(v52, v2 + v30, v12);
      sub_22C7D4F14();
      (*(v57 + 16))(v53, v52, v12);
      v38 = v1[2];
      v37 = v1 + 2;
      v36 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = *(v36 + 16);
        sub_22C36D270();
        sub_22C3B6D88();
        v36 = *v37;
      }

      v41 = *(v36 + 16);
      if (v41 >= *(v36 + 24) >> 1)
      {
        sub_22C3B6D88();
      }

      sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
      v42 = *(v57 + 8);
      v43 = sub_22C3806B8();
      v44(v43);
      v45 = *v37;
      *(*v37 + 16) = v41 + 1;
      v46 = *(v57 + 80);
      sub_22C36BA94();
      v35(v45 + v47 + *(v57 + 72) * v41, v53, v12);
      *v37 = v45;
      (*(v54 + 8))(v56, v55);
    }

    goto LABEL_18;
  }

  if (v31)
  {
    v32 = sub_22C37335C();
    sub_22C7DEF20(v32);
    v33 = *(v54 + 8);
    v34 = sub_22C36ECB4();
    v33(v34);
    sub_22C7DFBF4();
    sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
    (*(v57 + 8))(v0, v12);
    (v33)(v56, v55);
LABEL_18:
    sub_22C36CC48();
    return;
  }

  (*(v57 + 32))(v51, v2 + v30, v12);
  v48 = v1[2];
  v49 = swift_isUniquelyReferenced_nonNull_native();
  if ((v49 & 1) == 0)
  {
    sub_22C56C2E8(v48);
    v48 = v50;
  }

  sub_22C36DD28(v6, &qword_27D9BAA18, &qword_22C911C40);
  (*(v54 + 8))(v56, v55);
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v27 < *(v48 + 16))
  {
    (*(v57 + 40))(v48 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v27, v51, v12);
    v1[2] = v48;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_22C7C6C34()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C90981C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v11 = v0[1];
  v63[2] = *v0;
  v63[3] = v11;
  v63[4] = v2;
  v12 = sub_22C7D5D1C(sub_22C7E41EC, v63, v11, MEMORY[0x277D73148]);
  v15 = *v4;
  v14 = v4[1];
  v17 = v4[2];
  v16 = v4[3];
  v18 = v4[4];
  if (v19)
  {
    if (v17 != 1)
    {
      v57 = v4[4];
      v60 = v4[3];
      sub_22C7D50A0(v2, v13);
      v22 = v0[2];
      v20 = v0 + 2;
      v21 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v21 + 16);
        sub_22C36D270();
        sub_22C3B6AB4();
        v21 = *v20;
      }

      v25 = v60;
      v26 = *(v21 + 16);
      if (v26 >= *(v21 + 24) >> 1)
      {
        sub_22C375CCC();
        sub_22C3B6AB4();
        v25 = v60;
        v21 = *v20;
      }

      *(v21 + 16) = v26 + 1;
      v27 = (v21 + 40 * v26);
      v27[4] = v15;
      v27[5] = v14;
      v27[6] = v17;
      v27[7] = v25;
      v27[8] = v57;
      *v20 = v21;
    }

    v28 = *(v8 + 8);
    v29 = sub_22C37BD98();
    goto LABEL_14;
  }

  v31 = v12;
  if (v17 == 1)
  {
    sub_22C7DF218(v12);
    v32 = *(v8 + 8);
    v33 = sub_22C36D384();
    v32(v33);
    if ((sub_22C7E4E44() & 1) == 0)
    {
      sub_22C56C330(v4);
      v4 = v34;
    }

    sub_22C7E4AA8();
    if (!v36)
    {
      v37 = v35 - 1;
      v38 = &v4[5 * v31];
      v39 = *(v38 + 4);
      v38 += 32;
      v40 = *(v38 + 3);
      v58 = *(v38 + 4);
      v61 = v32;
      v42 = *(v38 + 1);
      v41 = *(v38 + 2);
      sub_22C38D04C(v38 + 40, v35 - 1 - v31, v38);
      v4[2] = v37;

      sub_22C7E4C80();
      sub_22C456D48(v43, v44);
      v0[2] = v4;
      v29 = sub_22C37BD98();
      v30 = v61;
LABEL_14:
      v30(v29);
LABEL_20:
      sub_22C36CC48();
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  v59 = v4[4];
  v62 = v4[3];
  if ((sub_22C7E4E44() & 1) == 0)
  {
    sub_22C56C330(v4);
    v4 = v45;
  }

  v46 = *(v8 + 8);
  v47 = sub_22C37BD98();
  v48(v47);
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_22C7E4AA8();
  if (!v36)
  {
    v49 = &v4[5 * v31];
    v50 = v49[4];
    v51 = v49[5];
    v52 = v49[6];
    v53 = v49[7];
    v54 = v49[8];
    v49[4] = v15;
    v49[5] = v14;
    v49[6] = v17;
    v49[7] = v62;
    v49[8] = v59;

    v55 = sub_22C36BAFC();
    sub_22C456D48(v55, v56);
    v0[2] = v4;
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
}

void sub_22C7C6EE4()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = sub_22C369914(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  v15 = sub_22C369824(v14);
  v70 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v69 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v68 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v67 = v24;
  v25 = (sub_22C3A5908(&qword_27D9C02B8, &unk_22C9269F0) - 8);
  v26 = *(*v25 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v30 = v0[1];
  v73[2] = *v0;
  v73[3] = v30;
  v72 = v4;
  v73[4] = v4;
  sub_22C7D5D1C(sub_22C7E4050, v73, v30, type metadata accessor for PromptTreeIdentifier);
  sub_22C7E4AB4();
  v32 = v31;
  v33 = v25[14];
  v71 = v6;
  sub_22C4E719C(v6, &v29[v33], &qword_27D9BD0E8, &qword_22C9175D0);
  sub_22C36D0A8(&v29[v33], 1, v14);
  if (v1)
  {
    if (v34)
    {
      sub_22C36DD28(v71, &qword_27D9BD0E8, &qword_22C9175D0);
      sub_22C7E438C();
      v36 = v72;
    }

    else
    {
      v37 = v68;
      sub_22C7E48F0();
      sub_22C4E7208(v38, v39, v40, v41);
      v42 = v72;
      sub_22C7D4550();
      v43 = v69;
      sub_22C7E48F0();
      sub_22C4E719C(v44, v45, v46, v47);
      v50 = v0[2];
      v49 = v0 + 2;
      v48 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v49 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = *(v48 + 16);
        sub_22C36D270();
        sub_22C3B661C();
        v48 = *v49;
      }

      v53 = *(v48 + 16);
      if (v53 >= *(v48 + 24) >> 1)
      {
        sub_22C3B661C();
      }

      sub_22C36DD28(v71, &qword_27D9BD0E8, &qword_22C9175D0);
      sub_22C36DD28(v37, &qword_27D9BAEC8, &unk_22C90D770);
      v54 = *v49;
      *(*v49 + 16) = v53 + 1;
      sub_22C37054C();
      sub_22C4E7208(v43, v54 + v55 + *(v56 + 72) * v53, &qword_27D9BAEC8, &unk_22C90D770);
      *v49 = v54;
      sub_22C7E438C();
      v36 = v42;
    }

    goto LABEL_13;
  }

  if (v34)
  {
    sub_22C7DF510(0, v32);
    sub_22C7E42B8(v13, type metadata accessor for PromptTreeIdentifier);
    sub_22C7DFCD0(0, v2);
    sub_22C36DD28(v71, &qword_27D9BD0E8, &qword_22C9175D0);
    sub_22C36DD28(v2, &qword_27D9BAEC8, &unk_22C90D770);
    v36 = v72;
    v35 = type metadata accessor for PromptTreeIdentifier;
LABEL_13:
    sub_22C7E42B8(v36, v35);
LABEL_18:
    sub_22C36CC48();
    return;
  }

  v57 = &v29[v33];
  v58 = v67;
  sub_22C4E7208(v57, v67, &qword_27D9BAEC8, &unk_22C90D770);
  v59 = sub_22C7E4E44();
  if ((v59 & 1) == 0)
  {
    sub_22C56C390(v14);
    v14 = v60;
  }

  v61 = v72;
  sub_22C36DD28(v71, &qword_27D9BD0E8, &qword_22C9175D0);
  sub_22C7E438C();
  sub_22C7E42B8(v61, v62);
  sub_22C7E4AA8();
  if (!v63)
  {
    sub_22C37054C();
    v65 = *(v64 + 72);
    sub_22C7E406C(v58, v14 + v66);
    v0[2] = v14;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_22C7C7320(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C37BDA4();
  v10 = v2[1];
  v32 = *v2;
  v33 = v10;
  v34 = a2;
  v11 = sub_22C7D5D1C(sub_22C7E41D0, v31, v10, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
  v13 = a1 & 0xF000000000000007;
  if (v14)
  {
    if (v13 != 0xF000000000000007)
    {
      sub_22C7D55EC(a2, v12);
      v17 = v2[2];
      v15 = v2 + 2;
      v16 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = *(v16 + 16);
        sub_22C36D270();
        sub_22C3B66A4();
        v16 = *v15;
      }

      v20 = *(v16 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_22C375CCC();
        v30 = v29;
        sub_22C3B66A4();
        v20 = v30;
        v16 = *v15;
      }

      *(v16 + 16) = v21;
      *(v16 + 8 * v20 + 32) = a1;
      *v15 = v16;
    }

    v22 = type metadata accessor for PromptTreeIdentifier.TranscriptReference;
    v23 = a2;
    goto LABEL_11;
  }

  v24 = v11;
  if (v13 == 0xF000000000000007)
  {
    sub_22C7DF764(v11, v12);
    sub_22C7E42B8(v3, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    sub_22C7DFDE0(v24);

    v23 = sub_22C37BD98();
LABEL_11:
    sub_22C7E42B8(v23, v22);
    return;
  }

  if ((sub_22C7E4E44() & 1) == 0)
  {
    sub_22C56C3C0(v3);
    v3 = v25;
  }

  sub_22C7E42B8(a2, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4AA8();
    if (!v26)
    {
      v27 = v3 + 8 * v24;
      v28 = *(v27 + 32);
      *(v27 + 32) = a1;

      v2[2] = v3;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22C7C752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RetrievedToolWithAttribution();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v44 = &v43 - v16;
  v17 = sub_22C3A5908(&qword_27D9C0298, &qword_22C9269A0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v23 = *v3;
  v22 = v3[1];
  v43 = a2;
  v53[0] = a2;
  v53[1] = a3;
  v50 = v23;
  v51 = v22;
  v52 = v53;
  v24 = sub_22C7D5C1C(sub_22C7E3E64, v49, v22);
  v26 = v25;
  v28 = v27;
  v29 = *(v18 + 56);
  v48 = a1;
  sub_22C4E719C(a1, &v21[v29], &qword_27D9C0288, &qword_22C926990);
  if (v26)
  {
    if (sub_22C370B74(&v21[v29], 1, v7) == 1)
    {
      sub_22C36DD28(v48, &qword_27D9C0288, &qword_22C926990);
    }

    else
    {
      v31 = v45;
      sub_22C7E4260(&v21[v29], v45);
      sub_22C7D4160();

      v32 = v46;
      sub_22C7E4208(v31, v46);
      v35 = v3[2];
      v34 = v3 + 2;
      v33 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = *(v33 + 16);
        sub_22C3B7CA0();
        v33 = *v34;
      }

      v38 = *(v33 + 16);
      if (v38 >= *(v33 + 24) >> 1)
      {
        sub_22C3B7CA0();
      }

      sub_22C36DD28(v48, &qword_27D9C0288, &qword_22C926990);
      sub_22C7E42B8(v31, type metadata accessor for RetrievedToolWithAttribution);
      v39 = *v34;
      *(v39 + 16) = v38 + 1;
      result = sub_22C7E4260(v32, v39 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v38);
      *v34 = v39;
    }
  }

  else
  {

    if (sub_22C370B74(&v21[v29], 1, v7) == 1)
    {
      sub_22C7DF9B8(v24, v28);

      sub_22C7DFE58();
      sub_22C36DD28(v48, &qword_27D9C0288, &qword_22C926990);
      return sub_22C7E42B8(v15, type metadata accessor for RetrievedToolWithAttribution);
    }

    v40 = v44;
    sub_22C7E4260(&v21[v29], v44);
    v41 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C558(v41);
      v41 = v42;
    }

    result = sub_22C36DD28(v48, &qword_27D9C0288, &qword_22C926990);
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v41 + 16))
    {
      result = sub_22C7E3E80(v40, v41 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v24);
      v3[2] = v41;
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_22C7C7A40(uint64_t a1, uint64_t (*a2)(void, uint64_t, void))
{
  if (a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = a2(0, a1, *(*v2 + 16));
      if (v4)
      {
LABEL_9:
        __break(1u);
        return;
      }

      if ((v3 & 0x8000000000000000) == 0)
      {
        sub_22C7DD8CC();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t static QueryDecorationToolSelectorService.isEnabled()()
{
  v0 = sub_22C90363C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  (*(v3 + 104))(v7 - v6, *MEMORY[0x277D1EC00], v0);
  v8 = sub_22C90362C();
  v9 = *(v3 + 8);
  v10 = sub_22C36BBCC();
  v11(v10);
  return v8 & 1;
}

uint64_t sub_22C7C7BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8F8];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_22C7C7C0C()
{
  sub_22C369980();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = sub_22C905A5C();
  v1[18] = v6;
  sub_22C3699B8(v6);
  v1[19] = v7;
  v9 = *(v8 + 64);
  v1[20] = sub_22C3856B8();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v10 = sub_22C90384C();
  v1[23] = v10;
  sub_22C3699B8(v10);
  v1[24] = v11;
  v13 = *(v12 + 64);
  v1[25] = sub_22C3699D4();
  v14 = sub_22C9099FC();
  v1[26] = v14;
  sub_22C3699B8(v14);
  v1[27] = v15;
  v17 = *(v16 + 64);
  v1[28] = sub_22C3699D4();
  v18 = sub_22C9036EC();
  v1[29] = v18;
  sub_22C3699B8(v18);
  v1[30] = v19;
  v21 = *(v20 + 64);
  v1[31] = sub_22C3699D4();
  v22 = sub_22C908EAC();
  v1[32] = v22;
  sub_22C3699B8(v22);
  v1[33] = v23;
  v25 = *(v24 + 64);
  v1[34] = sub_22C3699D4();
  v26 = sub_22C9037EC();
  v1[35] = v26;
  sub_22C3699B8(v26);
  v1[36] = v27;
  v29 = *(v28 + 64);
  v1[37] = sub_22C3699D4();
  v30 = sub_22C903F4C();
  v1[38] = v30;
  sub_22C3699B8(v30);
  v1[39] = v31;
  v33 = *(v32 + 64);
  v1[40] = sub_22C3699D4();
  v34 = sub_22C9063DC();
  v1[41] = v34;
  sub_22C3699B8(v34);
  v1[42] = v35;
  v37 = *(v36 + 64);
  v1[43] = sub_22C3856B8();
  v1[44] = swift_task_alloc();
  v38 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_22C7C7EF0()
{
  v1 = v0[22].i64[0];
  v3 = v0[19].i64[1];
  v2 = v0[20].i64[0];
  v4 = v0[19].i64[0];
  v5 = v0[7].i64[1];
  sub_22C90407C();
  v6 = *(v3 + 16);
  v7 = sub_22C36D39C();
  v8(v7);
  v9 = sub_22C9063CC();
  v10 = sub_22C90AACC();
  if (os_log_type_enabled(v9, v10))
  {
    v110 = v10;
    log = v9;
    v11 = v0[20].i64[0];
    v12 = sub_22C36FB44();
    v109 = sub_22C370060();
    buf = v12;
    *v12 = 136315138;
    v13 = sub_22C903F1C();
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v0[18].i64[0];
      v125 = v0[16].i64[1];
      v16 = v0[15].i64[0];
      v17 = v0[13].i64[1];
      v18 = v0[12].i64[0];
      v127 = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v19 = v127;
      v20 = *(v15 + 16);
      v15 += 16;
      v124 = v20;
      v21 = *(v15 + 64);
      sub_22C36BA94();
      v23 = v13 + v22;
      v122 = *(v15 + 56);
      v119 = *MEMORY[0x277D1ECE0];
      v116 = *MEMORY[0x277D1ECE8];
      v114 = *MEMORY[0x277D1ECD0];
      v115 = *MEMORY[0x277D1ECD8];
      v117 = (v16 + 96);
      v113 = *MEMORY[0x277D1ECF8];
      v24 = (v15 - 8);
      while (1)
      {
        v25 = v0[15].i64[1];
        v26 = v0[14].i64[1];
        v124(v0[18].i64[1], v23, v0[17].i64[1]);
        sub_22C90371C();
        v27 = sub_22C36D400();
        v29 = v28(v27, v26);
        if (v29 != v119)
        {
          if (v29 == v116)
          {
            v42 = v0[15].i64[1];
            v44 = v0[14].i64[0];
            v43 = v0[14].i64[1];
            v45 = v0[13].i64[0];
            v46 = sub_22C38C41C();
            v47(v46);
            v48 = sub_22C36D400();
            v49(v48, v42, v45);
            v35 = sub_22C9099DC();
            v37 = v50;
LABEL_8:
            v39 = sub_22C36D400();
            v40 = v45;
            goto LABEL_9;
          }

          if (v29 != v115 && v29 != v114)
          {
            v55 = v0[15].i64[1];
            v56 = v0[14].i64[1];
            if (v29 != v113)
            {
              v63 = sub_22C38C41C();
              v64(v63);
              v35 = 0xD000000000000013;
              v37 = 0x800000022C935760;
              goto LABEL_10;
            }

            v57 = v0[12].i64[1];
            v45 = v0[11].i64[1];
            v58 = sub_22C38C41C();
            v59(v58);
            v60 = sub_22C36D400();
            v61(v60, v55, v45);
            v35 = sub_22C9037FC();
            v37 = v62;
            goto LABEL_8;
          }
        }

        v30 = v0[17].i64[0];
        v32 = v0[15].i64[1];
        v31 = v0[16].i64[0];
        (*v117)(v32, v0[14].i64[1]);
        v33 = sub_22C38C41C();
        v34(v33, v32, v31);
        v35 = sub_22C908E7C();
        v37 = v36;
        v38 = *(v125 + 8);
        v39 = sub_22C37170C();
LABEL_9:
        v41(v39, v40);
LABEL_10:
        (*v24)(v0[18].i64[1], v0[17].i64[1]);
        v52 = *(v127 + 16);
        v51 = *(v127 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_22C369AB0(v51);
          sub_22C7E4C74();
          sub_22C3B5E2C();
        }

        *(v127 + 16) = v52 + 1;
        v53 = v127 + 16 * v52;
        *(v53 + 32) = v35;
        *(v53 + 40) = v37;
        v23 += v122;
        if (!--v14)
        {

          goto LABEL_23;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_23:
    v77 = v0[22].i64[0];
    v79 = v0[20].i64[1];
    v78 = v0[21].i64[0];
    v81 = v0[19].i64[1];
    v80 = v0[20].i64[0];
    v82 = v0[19].i64[0];
    MEMORY[0x2318B7AD0](v19, MEMORY[0x277D837D0]);

    (*(v81 + 8))(v80, v82);
    v83 = sub_22C6AFC04();
    v86 = sub_22C36F9F4(v83, v84, v85);

    *(buf + 4) = v86;
    _os_log_impl(&dword_22C366000, log, v110, "toolRetrievalResponse: %s", buf, 0xCu);
    sub_22C36FF94(v109);
    sub_22C370510();
    sub_22C36D69C();

    v87 = *(v78 + 8);
    v75 = sub_22C372FA4();
  }

  else
  {
    v65 = v0[22].i64[0];
    v67 = v0[20].i64[1];
    v66 = v0[21].i64[0];
    v69 = v0[19].i64[1];
    v68 = v0[20].i64[0];
    v70 = v0[19].i64[0];

    v71 = *(v69 + 8);
    v72 = sub_22C36ECB4();
    v73(v72);
    v74 = *(v66 + 8);
    v75 = sub_22C37170C();
  }

  v76(v75);
  v88 = v0[8].i64[0];
  v89 = v88[10];
  v90 = v88[11];
  sub_22C374168(v88 + 7, v89);
  if (qword_27D9BA780 != -1)
  {
    swift_once();
  }

  v91 = v0[11].i64[0];
  v93 = v0[9].i64[0];
  v92 = v0[9].i64[1];
  v121 = v93;
  v94 = v0[8].i64[0];
  v95 = v0[8].i64[1];
  v126 = v0[10].i64[1];
  v120 = v0[6].i64[1];
  v118 = v0[7];
  (*(v90 + 8))(qword_27D9C05F8, v89, v90);
  v96 = v94[5];
  v123 = v94[6];
  sub_22C374168(v94 + 2, v96);
  v97 = *MEMORY[0x277D20048];
  v98 = *(v92 + 104);
  v0[22].i64[1] = v98;
  v0[23].i64[0] = (v92 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v98(v91, v97, v93);
  v99 = swift_task_alloc();
  *(v99 + 16) = v95;
  *(v99 + 24) = v120;
  *(v99 + 32) = vextq_s8(v118, v118, 8uLL);
  QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)(v91, sub_22C7D3F78, v99, v96, &type metadata for QueryDecorationTupleBuilderOutput, v123, v0[5].i64);

  v100 = *(v92 + 8);
  v0[23].i64[1] = v100;
  v0[24].i64[0] = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v100(v91, v93);
  LOBYTE(v123) = v0[5].i8[0];
  v101 = v0[5].i64[1];
  v0[24].i64[1] = v101;
  v102 = v0[2].i64[1];
  v103 = v0[3].i64[0];
  sub_22C374168(v0[1].i64, v102);
  (*(v103 + 8))(v102, v103);
  v104 = v94[6];
  sub_22C374168(v94 + 2, v94[5]);
  v98(v126, *MEMORY[0x277D20070], v121);
  v105 = swift_task_alloc();
  v0[25].i64[0] = v105;
  *(v105 + 16) = v95;
  *(v105 + 24) = v123;
  *(v105 + 32) = v101;
  *(v105 + 40) = v94;
  v106 = swift_task_alloc();
  v0[25].i64[1] = v106;
  sub_22C3A5908(&qword_27D9C0280, &qword_22C926858);
  *v106 = v0;
  v106[1] = sub_22C7C86A4;
  v107 = v0[10].i64[1];

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C7C86A4()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  *(v3 + 416) = v0;

  v6 = v2[50];
  v7 = v2[49];
  v8 = v2[48];
  v9 = v2[47];
  v10 = v2[21];
  v11 = v2[18];
  v12 = v2[17];
  v9(v10, v11);

  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C7C8858()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  *(v0 + 432) = v2;
  *(v0 + 440) = v3;
  *(v0 + 424) = v1;
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = v8[6];
  v13 = *(v0 + 104);
  sub_22C374168(v8 + 2, v8[5]);
  v4(v6, *MEMORY[0x277D20050], v7);
  v10 = swift_task_alloc();
  *(v0 + 448) = v10;
  *(v10 + 16) = v14;
  *(v10 + 24) = v9;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2;
  *(v10 + 48) = v3;
  *(v10 + 56) = v13;
  *(v10 + 72) = v8;
  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  sub_22C903DCC();
  *v11 = v0;
  v11[1] = sub_22C7C89B0;
  sub_22C7E4598();

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C7C89B0()
{
  sub_22C3743E4();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  v5 = v2[57];
  *v4 = *v1;
  *(v3 + 464) = v0;

  v6 = v2[56];
  v7 = v2[55];
  v8 = v2[54];
  v9 = v2[53];
  v10 = v2[48];
  v11 = v2[47];
  v12 = v2[20];
  v13 = v2[18];
  v14 = v2[17];
  v11(v12, v13);
  sub_22C7E4C80();
  sub_22C7D4114(v15);

  if (v0)
  {
    v16 = sub_22C7C8F3C;
  }

  else
  {
    v16 = sub_22C7C8B9C;
  }

  return MEMORY[0x2822009F8](v16, v14, 0);
}

uint64_t sub_22C7C8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  sub_22C7E479C();
  v26 = v16;
  v27 = v15;
  v28 = *(v14 + 96);
  sub_22C36FF94((v14 + 16));

  sub_22C36D5E0();
  sub_22C36D5F8();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, a12, a13, a14);
}

uint64_t sub_22C7C8C6C()
{
  v49 = v0;
  v2 = v0[52];
  v3 = v0[43];
  sub_22C90408C();
  v4 = v2;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (sub_22C7E4AC0())
  {
    v7 = v0[52];
    v9 = v0[42];
    v8 = v0[43];
    v10 = v0[41];
    v11 = sub_22C383050();
    swift_slowAlloc();
    v12 = sub_22C385814();
    v48 = v12;
    *v11 = 136315394;
    sub_22C36EE00();
    *(v11 + 4) = sub_22C36F9F4(0xD000000000000059, v13, &v48);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v1 = v15;
    _os_log_impl(&dword_22C366000, v5, v6, "%s JointResolver ranking failed with underlying error %@. Original ranking will be used as fallback.", v11, 0x16u);
    sub_22C36DD28(v1, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36C30C();
    sub_22C36FF94(v12);
    sub_22C370510();
    sub_22C36D69C();

    v16 = *(v9 + 8);
    v17 = sub_22C36BAFC();
    v18(v17);
  }

  else
  {
    v20 = v0[42];
    v19 = v0[43];
    v21 = v0[41];

    v22 = *(v20 + 8);
    v23 = sub_22C36BAFC();
    v24(v23);
  }

  v25 = v0[52];
  v26 = v0[17];
  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[13];
  sub_22C903F1C();
  sub_22C36CA88();
  sub_22C7C9E54();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v0[54] = v33;
  v0[55] = v35;
  v0[53] = v31;
  v36 = v0[45];
  v37 = v0[46];
  v38 = v0[20];
  v39 = v0[18];
  v41 = v0[15];
  v40 = v0[16];
  v46 = v0[17];
  v47 = v40[6];
  v45 = *(v0 + 13);
  sub_22C374168(v40 + 2, v40[5]);
  v36(v38, *MEMORY[0x277D20050], v39);
  v42 = swift_task_alloc();
  v0[56] = v42;
  *(v42 + 16) = v46;
  *(v42 + 24) = v41;
  *(v42 + 32) = v31;
  *(v42 + 40) = v33;
  *(v42 + 48) = v35;
  *(v42 + 56) = v45;
  *(v42 + 72) = v40;
  v43 = swift_task_alloc();
  v0[57] = v43;
  sub_22C903DCC();
  *v43 = v0;
  v43[1] = sub_22C7C89B0;
  sub_22C7E4598();

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C7C8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  sub_22C7E479C();
  v27 = v16;
  v28 = v15;
  sub_22C36FF94((v14 + 16));

  sub_22C369A24();
  v17 = *(v14 + 464);
  sub_22C36D5F8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_22C7C9088(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22C7C90AC, a2, 0);
}

uint64_t sub_22C7C90AC()
{
  sub_22C36D5EC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *(v4 + 232);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  v7 = *(MEMORY[0x277D61CC0] + 4);

  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  sub_22C3A5908(&qword_27D9C0280, &qword_22C926858);
  *v8 = v0;
  v8[1] = sub_22C7C91D8;
  v9 = *(v0 + 16);
  v10.n128_u64[0] = v5;

  return MEMORY[0x2821C8618](v9, &unk_22C9269E8, v6, v10);
}

uint64_t sub_22C7C91D8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[3];

    return MEMORY[0x2822009F8](sub_22C7C92F8, v9, 0);
  }

  else
  {
    v10 = v3[6];

    sub_22C369A24();

    return v11();
  }
}

uint64_t sub_22C7C92F8()
{
  sub_22C369980();
  v1 = *(v0 + 48);

  sub_22C369A24();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_22C7C9354(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C7C940C;

  return sub_22C7CA470();
}

uint64_t sub_22C7C940C()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C369A3C();
  v9 = v8;
  sub_22C36D994();
  *v10 = v9;
  v12 = *(v11 + 24);
  v13 = *v1;
  sub_22C369970();
  *v14 = v13;

  if (v0)
  {
    v15 = *(v13 + 8);
    sub_22C7E4EBC();

    __asm { BRAA            X1, X16 }
  }

  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v7;
  sub_22C36BB08();
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C7C954C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2[1].i64[0] = v1;
  return sub_22C37A3A0();
}

uint64_t sub_22C7C9568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v24;
  v8[6] = a5;
  v8[7] = a7;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = *(*(sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0) - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v11 = sub_22C903F4C();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v8[13] = swift_task_alloc();
  v14 = sub_22C90622C();
  v8[14] = v14;
  v15 = *(v14 - 8);
  v8[15] = v15;
  v16 = *(v15 + 64) + 15;
  v8[16] = swift_task_alloc();
  v17 = *(type metadata accessor for RetrievedToolWithAttribution() - 8);
  v8[17] = v17;
  v18 = *(v17 + 64) + 15;
  v8[18] = swift_task_alloc();
  v19 = sub_22C9037EC();
  v8[19] = v19;
  v20 = *(v19 - 8);
  v8[20] = v20;
  v21 = *(v20 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7C9794, a2, 0);
}

uint64_t sub_22C7C9794()
{
  sub_22C372634();
  sub_22C37F038();
  v2 = v0[4];
  v1 = v0[5];
  v0[23] = sub_22C903F1C();
  if (v1)
  {
    v3 = v0[6];
    v4 = *(v3 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = v0[20];
      v7 = v0[17];
      v32 = MEMORY[0x277D84F90];
      sub_22C3B60C0(0, v4, 0);
      v8 = v6;
      v5 = v32;
      v9 = *(v7 + 80);
      sub_22C36BA94();
      v11 = v3 + v10;
      v31 = *(v7 + 72);
      v12 = (v8 + 32);
      do
      {
        v13 = v0[22];
        v15 = v0[18];
        v14 = v0[19];
        sub_22C373A4C();
        sub_22C7E4208(v11, v15);
        v16 = *v12;
        (*v12)(v13, v15, v14);
        v18 = *(v32 + 16);
        v17 = *(v32 + 24);
        if (v18 >= v17 >> 1)
        {
          v23 = sub_22C369AB0(v17);
          sub_22C3B60C0(v23, v18 + 1, 1);
        }

        v19 = v0[22];
        v20 = v0[19];
        *(v32 + 16) = v18 + 1;
        v21 = *(v8 + 80);
        sub_22C36BA94();
        v16(v32 + v22 + *(v8 + 72) * v18);
        v11 += v31;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v5 = 0;
  }

  v0[24] = v5;
  v24 = swift_task_alloc();
  v0[25] = v24;
  *v24 = v0;
  v24[1] = sub_22C7C9960;
  v25 = v0[8];
  v26 = v0[9];
  v27 = v0[7];
  v28 = v0[3];
  sub_22C36D5F8();

  return sub_22C7CACD8();
}

uint64_t sub_22C7C9960()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = v5[25];
  v7 = v5[24];
  v8 = v5[23];
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v3[26] = v11;

  if (v0)
  {
    v13 = v3[21];
    v12 = v3[22];
    v14 = v3[18];
    v15 = v3[16];
    v16 = v3[13];
    v17 = v3[10];

    sub_22C369A24();
    sub_22C7E4EBC();

    __asm { BRAA            X1, X16 }
  }

  v20 = v3[3];
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22C7C9B04()
{
  if (v0[5])
  {
    v1 = v0[26];
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = v5[6];
    sub_22C374168(v5 + 2, v5[5]);
    sub_22C90621C();
    v9 = *(v8 + 56);
    v10 = sub_22C3806B8();
    v11(v10);
    v12 = *(v3 + 8);
    v13 = sub_22C36BAFC();
    v14(v13);
  }

  v15 = v0[26];
  v16 = v0[4];
  sub_22C903EEC();
  sub_22C903EFC();
  sub_22C903F0C();
  v17 = *(v15 + 16);
  v18 = v0[26];
  if (v17)
  {
    v19 = v0[20];
    v20 = v0[17];
    v58 = MEMORY[0x277D84F90];
    sub_22C3B60C0(0, v17, 0);
    v21 = *(v20 + 80);
    sub_22C36BA94();
    v23 = v18 + v22;
    v56 = *(v20 + 72);
    do
    {
      v24 = v0[21];
      v26 = v0[18];
      v25 = v0[19];
      sub_22C373A4C();
      v27 = sub_22C36D39C();
      sub_22C7E4208(v27, v28);
      (*(v19 + 16))(v24, v26, v25);
      sub_22C36B758();
      sub_22C7E42B8(v26, v29);
      v30 = *(v58 + 16);
      if (v30 >= *(v58 + 24) >> 1)
      {
        sub_22C7E4C74();
        sub_22C3B60C0(v35, v36, v37);
      }

      v31 = v0[21];
      v32 = v0[19];
      *(v58 + 16) = v30 + 1;
      v33 = *(v19 + 80);
      sub_22C36BA94();
      (*(v19 + 32))(v58 + v34 + *(v19 + 72) * v30);
      v23 += v56;
      --v17;
    }

    while (v17);
  }

  v38 = v0[26];

  v53 = v0[22];
  v54 = v0[21];
  v55 = v0[18];
  v57 = v0[16];
  v39 = v0[12];
  v40 = v0[13];
  v42 = v0[10];
  v41 = v0[11];
  v44 = v0[7];
  v43 = v0[8];
  v45 = v0[4];
  v46 = v0[2];
  sub_22C903F3C();
  sub_22C903EDC();
  type metadata accessor for ContextRetrievalService();
  static ContextRetrievalService.filterMediaRetrievedContext(retrievedContext:)(v43);
  (*(v39 + 16))(v42, v40, v41);
  sub_22C36BECC();
  sub_22C36C640(v47, v48, v49, v41);
  objc_allocWithZone(sub_22C903DCC());

  v50 = sub_22C903D9C();
  (*(v39 + 8))(v40, v41);
  *v46 = v50;

  sub_22C369A24();

  return v51();
}

void sub_22C7C9E54()
{
  sub_22C36BA7C();
  v91 = v2;
  v92 = v1;
  v4 = v3;
  v5 = type metadata accessor for RetrievedToolWithAttribution();
  v99 = sub_22C369824(v5);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22C3698A8();
  v90 = v8;
  v9 = sub_22C3A5908(&qword_27D9BB680, &unk_22C90FA50);
  v98 = sub_22C369824(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v100 = v13;
  v14 = sub_22C3A5908(&qword_27D9C02B0, &qword_22C9269D8);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C37BDA4();
  v18 = sub_22C3A5908(&qword_27D9BB678, &unk_22C926970);
  sub_22C369824(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C36D5B4();
  v96 = v22;
  sub_22C36BA0C();
  v89 = sub_22C90399C();
  v23 = sub_22C369824(v89);
  v101 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v29 = v28 - v27;
  v30 = sub_22C9039FC();
  v31 = sub_22C369824(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v37 = v36 - v35;
  v38 = *(v4 + 16);
  if (v38)
  {
    v95 = *(v34 + 16);
    v39 = *(v34 + 80);
    sub_22C36BA94();
    v41 = v4 + v40;
    v43 = (v42 - 8);
    v44 = MEMORY[0x277D84F90];
    v94 = *(v42 + 56);
    v93 = v18;
    do
    {
      v45 = sub_22C36BAFC();
      v95(v45);
      sub_22C7D32E4();
      (*v43)(v37, v30);
      sub_22C36D0A8(v0, 1, v18);
      if (v46)
      {
        sub_22C36DD28(v0, &qword_27D9C02B0, &qword_22C9269D8);
      }

      else
      {
        sub_22C4E7208(v0, v96, &qword_27D9BB678, &unk_22C926970);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C7E43A4();
          sub_22C596438();
          v44 = v54;
        }

        v49 = *(v44 + 16);
        v48 = *(v44 + 24);
        v50 = v44;
        if (v49 >= v48 >> 1)
        {
          sub_22C369AB0(v48);
          sub_22C596438();
          v50 = v55;
        }

        *(v50 + 16) = v49 + 1;
        v44 = v50;
        sub_22C37054C();
        sub_22C4E7208(v96, v51 + v52 + *(v53 + 72) * v49, &qword_27D9BB678, &unk_22C926970);
        v18 = v93;
      }

      v41 += v94;
      --v38;
    }

    while (v38);
  }

  v56 = *(v91 + 16);
  if (v56)
  {
    v57 = v100;
    v58 = *(v101 + 16);
    v59 = *(v101 + 80);
    sub_22C36BA94();
    v62 = v61 + v60;
    v97 = *(v63 + 56);
    v64 = (v63 - 8);
    v65 = MEMORY[0x277D84F90];
    do
    {
      v66 = sub_22C36BBCC();
      v58(v66);
      v67 = (v57 + *(v98 + 48));
      (v58)(v57, v29, v89);
      v68 = sub_22C90390C();
      v70 = v69;
      (*v64)(v29, v89);
      *v67 = v68;
      v67[1] = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = *(v65 + 16);
        sub_22C36D270();
        sub_22C59636C();
        v65 = v77;
      }

      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_22C369AB0(v71);
        sub_22C59636C();
        v65 = v78;
      }

      *(v65 + 16) = v72 + 1;
      sub_22C37054C();
      v75 = v65 + v73 + *(v74 + 72) * v72;
      v57 = v100;
      sub_22C4E7208(v100, v75, &qword_27D9BB680, &unk_22C90FA50);
      v62 += v97;
      --v56;
    }

    while (v56);
  }

  v79 = *(v92 + 16);
  if (v79)
  {
    v103 = MEMORY[0x277D84F90];
    sub_22C36D6CC();
    sub_22C3B7CA0();
    v102 = sub_22C9037EC();
    sub_22C36985C(v102);
    v81 = *(v80 + 16);
    v82 = v92 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v83 = *(v80 + 72);
    do
    {
      v81(v90, v82, v102);
      *(v90 + *(v99 + 20)) = 6;
      v85 = *(v103 + 16);
      v84 = *(v103 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_22C369AB0(v84);
        sub_22C3B7CA0();
      }

      *(v103 + 16) = v85 + 1;
      sub_22C37054C();
      v87 = *(v86 + 72);
      sub_22C3787F0();
      sub_22C7E4260(v90, v88);
      v82 += v83;
      --v79;
    }

    while (v79);
  }

  sub_22C36CC48();
}

uint64_t sub_22C7CA470()
{
  sub_22C369980();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 136) = v3;
  *(v1 + 256) = v4;
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  sub_22C3699B8(DecorationTuple);
  *(v1 + 160) = v6;
  v8 = *(v7 + 64);
  *(v1 + 168) = sub_22C3699D4();
  v9 = type metadata accessor for RetrievedToolWithAttribution();
  *(v1 + 176) = v9;
  sub_22C3699B8(v9);
  *(v1 + 184) = v10;
  v12 = *(v11 + 64);
  *(v1 + 192) = sub_22C3699D4();
  v13 = sub_22C90622C();
  *(v1 + 200) = v13;
  sub_22C3699B8(v13);
  *(v1 + 208) = v14;
  v16 = *(v15 + 64);
  *(v1 + 216) = sub_22C3699D4();
  v17 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C7CA5B0()
{
  sub_22C3743E4();
  v1 = *(v0 + 144);
  v2 = v1[11];
  sub_22C374168(v1 + 7, v1[10]);
  if (qword_27D9BA788 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 152);
  v4 = *(v2 + 8);
  sub_22C37275C();
  v5();
  sub_22C4E719C(v3 + 192, v0 + 96, &qword_27D9C0278, &qword_22C9267A0);
  if (*(v0 + 120))
  {
    sub_22C36C730((v0 + 96), v0 + 56);
    v6 = *sub_22C374168((v0 + 56), *(v0 + 80));
    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_22C7CA7D0;
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);

    return sub_22C7D3734(v9, v8);
  }

  else
  {
    sub_22C36DD28(v0 + 96, &qword_27D9C0278, &qword_22C9267A0);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 48);
    sub_22C374168((v0 + 16), *(v0 + 40));
    v15 = *(v14 + 8);
    v16 = sub_22C38B194();
    v17(v16, v14);
    sub_22C36FF94((v0 + 16));

    v18 = *(v0 + 8);
    sub_22C36BB08();

    return v19();
  }
}

uint64_t sub_22C7CA7D0()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[28];
  v8 = *v1;
  sub_22C36D994();
  *v9 = v8;
  v5[29] = v10;
  v5[30] = v0;

  v11 = v4[19];
  if (!v0)
  {
    v5[31] = v3;
  }

  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C7CA8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 248);
  v73 = *(v14 + 232);
  v17 = *(v14 + 208);
  v16 = *(v14 + 216);
  v18 = *(v14 + 200);
  v20 = *(v14 + 136);
  v19 = *(v14 + 144);
  v21 = *(v14 + 256);
  v22 = v19[6];
  sub_22C374168(v19 + 2, v19[5]);
  v23 = *(v20 + 16);
  sub_22C90621C();
  v24 = *(v22 + 64);
  v25 = sub_22C4F6088();
  v26(v25);
  v27 = *(v17 + 8);
  v28 = sub_22C36BAFC();
  v29(v28);
  v30 = *(v73 + 16);
  v31 = *(v14 + 232);
  if (v30)
  {
    v33 = *(v14 + 176);
    v32 = *(v14 + 184);
    v34 = *(v14 + 160);
    v74 = MEMORY[0x277D84F90];
    sub_22C36D6CC();
    sub_22C3B7CA0();
    v35 = v74;
    v36 = *(v34 + 80);
    sub_22C36BA94();
    v38 = v31 + v37;
    v39 = *(v34 + 72);
    do
    {
      v40 = *(v14 + 192);
      v41 = *(v14 + 168);
      sub_22C7E4208(v38, v41);
      v42 = sub_22C9037EC();
      sub_22C36985C(v42);
      v44 = *(v43 + 16);
      v45 = sub_22C36ECB4();
      v46(v45);
      sub_22C7E42B8(v41, type metadata accessor for QueryDecorationTuple);
      *(v40 + *(v33 + 20)) = 6;
      a11 = v35;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_22C369AB0(v47);
        sub_22C375CCC();
        sub_22C3B7CA0();
      }

      v49 = *(v14 + 192);
      *(v35 + 16) = v48 + 1;
      v50 = *(v32 + 80);
      sub_22C36BA94();
      v51 = *(v32 + 72);
      sub_22C3787F0();
      sub_22C7E4260(v52, v53);
      v38 += v39;
      --v30;
    }

    while (v30);
    v54 = *(v14 + 232);
  }

  else
  {
    v55 = *(v14 + 232);

    v35 = MEMORY[0x277D84F90];
  }

  sub_22C7CAC54(v35);
  sub_22C7E4E74();
  sub_22C36FF94((v14 + 56));
  v56 = *(v14 + 216);
  v57 = *(v14 + 192);
  v58 = *(v14 + 168);
  v59 = *(v14 + 48);
  sub_22C374168((v14 + 16), *(v14 + 40));
  v60 = *(v59 + 8);
  v61 = sub_22C36FC2C();
  v62(v61);
  sub_22C36FF94((v14 + 16));

  v63 = *(v14 + 8);
  sub_22C36D5F8();

  return v68(v64, v65, v66, v67, v68, v69, v70, v71, a9, v73, a11, a12, a13, a14);
}

void sub_22C7CAB94()
{
  sub_22C36D5EC();
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  sub_22C36FF94(v0 + 7);
  v4 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v5 = *(v4 + 8);
  v6 = sub_22C38B194();
  v7(v6, v4);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  v8 = v0[30];
  sub_22C7E4EBC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C7CAC54(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    v4 = MEMORY[0x2318B7DB0]();

    v1 = sub_22C7C61E4(v2, &v4);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22C7CACD8()
{
  sub_22C369980();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[26] = v5;
  v1[27] = v6;
  v7 = sub_22C90377C();
  v1[32] = v7;
  sub_22C3699B8(v7);
  v1[33] = v8;
  v10 = *(v9 + 64);
  v1[34] = sub_22C3856B8();
  v1[35] = swift_task_alloc();
  v11 = sub_22C3A5908(&qword_27D9C0288, &qword_22C926990);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[36] = sub_22C3856B8();
  v1[37] = swift_task_alloc();
  v14 = type metadata accessor for RetrievedToolWithAttribution();
  v1[38] = v14;
  sub_22C3699B8(v14);
  v1[39] = v15;
  v17 = *(v16 + 64);
  v1[40] = sub_22C3856B8();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v18 = sub_22C9063DC();
  v1[46] = v18;
  sub_22C3699B8(v18);
  v1[47] = v19;
  v21 = *(v20 + 64);
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v22 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22C7CAEE4()
{
  v219 = v0;
  v1 = v0[30];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  if (qword_27D9BA790 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v204 = v0[27];
  v208 = v0[54];
  v193 = v0[26];
  (*(v3 + 8))(qword_27D9C0608, v2, v3);
  static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(v6, v5, &v213);
  v197 = v213;
  sub_22C378A4C(v4 + 152, (v0 + 14));
  v7 = v0[17];
  v8 = sub_22C36D1E4((v0 + 14), v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = sub_22C3699D4();
  (*(v9 + 16))(v11, v8, v7);
  v12 = *v11;
  v0[22] = &type metadata for QueryDecorationFeatureControl;
  v0[23] = &off_283FC14D0;
  v0[19] = v12;
  type metadata accessor for QueryDecorationToolSelector();
  inited = swift_initStackObject();
  v14 = v0[22];
  v15 = sub_22C36D1E4((v0 + 19), v14);
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v18 = sub_22C3699D4();
  (*(v16 + 16))(v18, v15, v14);
  v19 = *v18;
  inited[5] = &type metadata for QueryDecorationFeatureControl;
  inited[6] = &off_283FC14D0;
  inited[2] = v19;
  sub_22C36FF94(v0 + 19);

  sub_22C36FF94(v0 + 14);
  sub_22C7C2CF8(v193, v204, v5, v20, v21, v22, v23, v24, v188, v193, v197, SHIDWORD(v197), v6, v204, v208, v213, v214, v215, v216, v217, v218);
  v26 = v25;
  v205 = v27;
  swift_setDeallocating();
  sub_22C36FF94(inited + 2);

  sub_22C90400C();

  v28 = sub_22C9063CC();
  v29 = sub_22C90AABC();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[54];
  v33 = v0[46];
  v32 = v0[47];
  if (v30)
  {
    v210 = v0[54];
    v34 = sub_22C383050();
    v35 = sub_22C37A180();
    v213 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_22C7E4AD8(v35, 0x800000022C935DD0, v36, v37, v38, v39, v40, v41);
    *(v34 + 12) = 2080;
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v26, v42, v43, v44, v45, v46, v47, v48, v189, v194, v198, v201, v205, v210, v213, v214, v215, v216, v217, v218);
    v51 = sub_22C36F9F4(v49, v50, &v213);

    *(v34 + 14) = v51;
    _os_log_impl(&dword_22C366000, v28, v29, "%s starting toolSelectionResponse.selectedTools:\n%s", v34, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C37B09C();

    v52 = *(v32 + 8);
    v52(v209, v33);
  }

  else
  {

    v52 = *(v32 + 8);
    v52(v31, v33);
  }

  v0[55] = v52;
  sub_22C7CDB30(v26, v53, v54, v55, v56, v57, v58, v59, v52, v194, v198, v201, v205, v209, v213, v214, v215, v216, v217, v218);
  v61 = v60;
  v0[56] = v60;
  v62 = *(v26 + 16);
  v195 = v26;
  if (v62)
  {
    v63 = v0[39];
    type metadata accessor for QueryDecorationToolSelectorService();
    v64 = v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v65 = *(v63 + 72);
    v66 = MEMORY[0x277D84F90];
    do
    {
      v67 = v0[45];
      v69 = v0[37];
      v68 = v0[38];
      sub_22C373A4C();
      v70 = sub_22C36BBCC();
      sub_22C7E4208(v70, v71);
      sub_22C7CC754(v67, v61, v69);
      sub_22C36B758();
      sub_22C7E42B8(v67, v72);
      sub_22C36D0A8(v69, 1, v68);
      if (v73)
      {
        sub_22C36DD28(v0[37], &qword_27D9C0288, &qword_22C926990);
      }

      else
      {
        v74 = v0[43];
        v75 = v0[37];
        sub_22C3787F0();
        sub_22C7E4260(v76, v77);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = *(v66 + 16);
          sub_22C36D270();
          sub_22C595EE4();
          v66 = v85;
        }

        v80 = *(v66 + 16);
        v79 = *(v66 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_22C369AB0(v79);
          sub_22C7E4C74();
          sub_22C595EE4();
          v66 = v86;
        }

        v81 = v0[43];
        *(v66 + 16) = v80 + 1;
        sub_22C3787F0();
        sub_22C7E4260(v82, v83);
      }

      v64 += v65;
      --v62;
    }

    while (v62);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v87 = *(v206 + 16);
  if (v87)
  {
    v88 = v0[39];
    type metadata accessor for QueryDecorationToolSelectorService();
    v89 = *(v88 + 80);
    sub_22C36BA94();
    v211 = v90;
    v91 = v206 + v90;
    v92 = *(v88 + 72);
    v93 = MEMORY[0x277D84F90];
    do
    {
      v94 = v0[44];
      v95 = v0[38];
      v96 = v0[36];
      sub_22C373A4C();
      sub_22C7E4208(v91, v94);
      sub_22C7CC754(v94, v61, v96);
      sub_22C36B758();
      sub_22C7E42B8(v94, v97);
      sub_22C36D0A8(v96, 1, v95);
      if (v73)
      {
        sub_22C36DD28(v0[36], &qword_27D9C0288, &qword_22C926990);
      }

      else
      {
        v98 = v0[42];
        v99 = v0[36];
        sub_22C3787F0();
        sub_22C7E4260(v100, v101);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        if ((v102 & 1) == 0)
        {
          v108 = *(v93 + 16);
          sub_22C36D270();
          sub_22C595EE4();
          v93 = v109;
        }

        v104 = *(v93 + 16);
        v103 = *(v93 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_22C369AB0(v103);
          sub_22C595EE4();
          v93 = v110;
        }

        v105 = v0[42];
        *(v93 + 16) = v104 + 1;
        sub_22C3787F0();
        sub_22C7E4260(v106, v107);
      }

      v91 += v92;
      --v87;
    }

    while (v87);
  }

  v112 = v0[29];
  v111 = v0[30];

  v113 = v202;
  sub_22C7D2380();
  v115 = v114;

  if (*(v115 + 16))
  {
    v116 = v0[39];
    sub_22C3A5908(&qword_27D9C0290, &qword_22C926998);
    v117 = *(v116 + 72);
    v118 = (*(v116 + 80) + 40) & ~*(v116 + 80);
    v119 = swift_allocObject();
    v119[2] = sub_22C7E2DBC();
    v119[3] = 0;
    v119[4] = 0;
    sub_22C7E48F0();
    sub_22C7E2D0C(v120, v121, v122, v123);
  }

  else
  {
    v119 = *sub_22C9031FC();
  }

  v124 = v0[53];
  v125 = v0[31];

  v0[24] = v119;
  sub_22C7CED88(v66, (v0 + 24), v61, v126, v127, v128, v129, v130, v190, v195, v199, v202, v206, v211, v213, v214, v215, v216, v217, v218);

  sub_22C90400C();
  v131 = sub_22C9063CC();
  v132 = sub_22C90AACC();
  v133 = sub_22C370048(v132);
  v134 = v0[53];
  v135 = v0[46];
  v136 = v0[47];
  if (v133)
  {
    v137 = sub_22C36FB44();
    v138 = sub_22C370060();
    v213 = v138;
    *v137 = 136315138;
    sub_22C36EE00();
    *(v137 + 4) = sub_22C7E4AD8(v139, v140, v141, v142, v143, v144, v145, v146);
    _os_log_impl(&dword_22C366000, v131, v132, "%s calling runResolveProtocolsToSingularImplementationTools for selected tool list", v137, 0xCu);
    sub_22C36FF94(v138);
    sub_22C36C30C();
    sub_22C3699EC();
  }

  v147 = sub_22C36ECB4();
  v191(v147);
  v148 = v0[52];
  v150 = v0[29];
  v149 = v0[30];
  sub_22C7D2380();
  v152 = v151;
  v0[57] = v151;

  sub_22C90400C();

  v153 = sub_22C9063CC();
  sub_22C90AABC();

  v154 = sub_22C7E4AC0();
  v155 = v0[52];
  v157 = v0[46];
  v156 = v0[47];
  if (v154)
  {
    sub_22C383050();
    v213 = sub_22C37ACD0();
    *v155 = 136315394;
    sub_22C36EE00();
    v166 = sub_22C7E4AD8(v158, v159, v160, v161, v162, v163, v164, v165);
    sub_22C388400(v166);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v152, v167, v168, v169, v170, v171, v172, v173, v191, v196, v200, v203, v207, v155, v213, v214, v215, v216, v217, v218);
    sub_22C36F9F4(v174, v175, &v213);
    sub_22C7E4854();

    *(v155 + 14) = v113;
    sub_22C7E44E0(&dword_22C366000, v176, v177, "%s tools at the end of runResolveProtocolsToSingularImplementationTools:\n%s");
    sub_22C7E48C8();
    sub_22C36C30C();
    sub_22C370510();

    v192(v212, v157);
  }

  else
  {

    (v191)(v155, v157);
  }

  v179 = v0[30];
  v178 = v0[31];
  v181 = v0[28];
  v180 = v0[29];
  v182 = *(v178 + 232);
  v183 = swift_allocObject();
  v0[58] = v183;
  v183[2] = v178;
  v183[3] = v179;
  v183[4] = v181;
  v183[5] = v180;
  v183[6] = v152;
  v184 = *(MEMORY[0x277D61CC0] + 4);

  v185 = swift_task_alloc();
  v0[59] = v185;
  sub_22C3A5908(&qword_27D9C02A0, &qword_22C9269B8);
  *v185 = v0;
  v185[1] = sub_22C7CB8D4;
  v186.n128_u64[0] = v182;

  return MEMORY[0x2821C8618](v0 + 25, &unk_22C9269B0, v183, v186);
}

uint64_t sub_22C7CB8D4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[60] = v0;

  if (v0)
  {
    v9 = v3[31];
    v10 = sub_22C7CC000;
  }

  else
  {
    v11 = v3[57];
    v12 = v3[58];
    v13 = v3[31];

    v10 = sub_22C7CB9EC;
    v9 = v13;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

void sub_22C7CB9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[25];
  v10 = v8[56];
  sub_22C7E4B74(a1, a2, a3, a4, a5, a6, a7, a8, v99, v101, v103, v105, v108, v111, v113, v115, v117, v119, v122, v124);
  v12 = v11;

  sub_22C90400C();

  v13 = sub_22C9063CC();
  sub_22C90AABC();

  v14 = sub_22C7E4AC0();
  v125 = v8[55];
  v15 = v8[51];
  v16 = byte_22C90F000;
  v18 = v8[46];
  v17 = v8[47];
  v127 = v12;
  if (v14)
  {
    sub_22C383050();
    v19 = sub_22C37ACD0();
    sub_22C7E4A9C(v19);
    *"selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)" = 136315394;
    v20 = sub_22C37AD58("ols:appDirectedApps:)");
    sub_22C388400(v20);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v12, v21, v22, v23, v24, v25, v26, v27, v100, v102, v104, v106, v109, v112, v114, v116, v118, v120, v8, v125);
    sub_22C7E4BC8(v28, v29);
    sub_22C7E4854();

    *"lList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)" = "selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)";
    v16 = byte_22C90F000;
    sub_22C7E44E0(&dword_22C366000, v30, v31, "%s tools after final de-duplicating and substitute replacement:\n%s");
    swift_arrayDestroy();
    sub_22C7E4CD4();
    v8 = v123;
    sub_22C3699EC();
    sub_22C370510();
  }

  v32 = sub_22C376018();
  v125(v32);
  v33 = v8[31];
  v34 = sub_22C7CFEA4();
  if (v34 < *(v12 + 16))
  {
    v107 = v34;
    v35 = v8[50];
    sub_22C90400C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    v38 = sub_22C370048(v37);
    v39 = v8[55];
    v40 = v8[50];
    v42 = v8[46];
    v41 = v8[47];
    if (v38)
    {
      sub_22C383050();
      v128 = sub_22C385814();
      *v12 = *(v16 + 363);
      *(v12 + 4) = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      *(v12 + 12) = 2048;
      *(v12 + 14) = v107;
      sub_22C7E4B18(&dword_22C366000, v43, v37, "%s final count of tools is greater than expected count %ld! Please clone off a radar to IntelligenceFlow | Query Decoration");
      sub_22C36FF94(v128);
      sub_22C37B09C();
      sub_22C7E4CD4();
      sub_22C3699EC();
    }

    v44 = sub_22C36ECB4();
    v39(v44);
    sub_22C7E4D70();
    v121 = *(v12 + 16);
    LODWORD(v116) = *MEMORY[0x277D1ED28];
    v46 = v45 + 104;
    LODWORD(v114) = *MEMORY[0x277D1ED30];
    LODWORD(v112) = *MEMORY[0x277D1ED40];
    v110 = MEMORY[0x277D84F90];
    while (v121 != v42)
    {
      if (v42 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      v47 = v8[41];
      v49 = v8[34];
      v48 = v8[35];
      v50 = v8[32];
      sub_22C37054C();
      v123 = *(v51 + 72);
      sub_22C373A4C();
      sub_22C7E4208(v52, v47);
      sub_22C90378C();
      v53 = sub_22C7E4D50();
      (v12)(v53);
      sub_22C36CC9C();
      sub_22C90376C();
      v54 = sub_22C7E4D90();
      v42(v54);
      v55 = sub_22C38BD8C();
      v42(v55);
      if (v47)
      {
        goto LABEL_13;
      }

      sub_22C7E4740();
      (v12)(v48, v114, v49);
      sub_22C634750();
      v56 = sub_22C90376C();
      v57 = sub_22C36CC9C();
      v42(v57);
      v58 = sub_22C459028();
      v42(v58);
      if (v56)
      {
        goto LABEL_13;
      }

      sub_22C7E4740();
      (v12)(v48, v112, v49);
      sub_22C634750();
      v59 = sub_22C90376C();
      v60 = sub_22C36CC9C();
      v42(v60);
      v61 = sub_22C459028();
      v42(v61);
      if (v59)
      {
LABEL_13:
        v66 = v8[40];
        v65 = v8[41];
        sub_22C3787F0();
        sub_22C7E4260(v67, v68);
        v69 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = *(v110 + 16);
          sub_22C373310();
          sub_22C3B7CA0();
          v69 = v110;
        }

        v12 = v127;
        v16 = byte_22C90F000;
        sub_22C7E4D14();
        if (v72)
        {
          sub_22C369AB0(v71);
          sub_22C379C28();
          sub_22C3B7CA0();
          v69 = v110;
        }

        v42 = (v42 + 1);
        v73 = v8[40];
        *(v69 + 16) = v48;
        v110 = v69;
        sub_22C3787F0();
        sub_22C7E4260(v74, v75);
      }

      else
      {
        v62 = v8[41];
        sub_22C36B758();
        sub_22C7E42B8(v63, v64);
        v42 = (v42 + 1);
        v12 = v127;
        v16 = byte_22C90F000;
      }
    }

    v76 = v8[49];

    v77 = sub_22C7CD9C4(v107);

    sub_22C90400C();

    v78 = sub_22C9063CC();
    sub_22C90AACC();

    sub_22C7E4AC0();
    sub_22C7E4D00();
    if (v79)
    {
      sub_22C383050();
      v80 = sub_22C37ACD0();
      sub_22C7E4A9C(v80);
      *v46 = *(v16 + 363);
      v81 = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      sub_22C388400(v81);
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v77, v82, v83, v84, v85, v86, v87, v88, v100, v102, v104, v107, v110, v112, v114, v116, v118, v121, v123, v46);
      sub_22C7E4BC8(v89, v90);
      sub_22C7E4854();

      *(v46 + 14) = v16;
      sub_22C7E44E0(&dword_22C366000, v91, v92, "%s trimmed tools down to expected count. Returning these tools: %s");
      sub_22C7E48C8();
      sub_22C36C30C();
      sub_22C370510();

      v93 = sub_22C376018();
      v126(v93);
    }

    else
    {

      v94 = sub_22C376018();
      (v46)(v94);
    }
  }

  v95 = v8[24];

  v96 = sub_22C7E4618();
  v97(v96);
  sub_22C36FF94(v8 + 9);

  sub_22C36D5E0();

  v98(v127);
}

void sub_22C7CC000()
{
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[48];

  sub_22C90400C();
  v5 = sub_22C9063CC();
  sub_22C90AADC();

  v6 = sub_22C7E4AC0();
  v7 = v0[60];
  v8 = byte_22C90F000;
  v135 = v0;
  if (v6)
  {
    v9 = v0[57];
    v10 = v0[47];
    v155 = v0[48];
    v158 = v0[55];
    v11 = v0[46];
    sub_22C383050();
    v12 = sub_22C37ACD0();
    sub_22C7E4A9C(v12);
    *v1 = 136315394;
    v13 = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
    sub_22C388400(v13);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v9, v14, v15, v16, v17, v18, v19, v20, v128, v130, v132, v0, v138, v141, v143, v145, v147, v149, v152, v155);
    sub_22C7E4BC8(v21, v22);
    sub_22C7E4854();

    *(v1 + 14) = byte_22C90F000;
    v8 = byte_22C90F000;
    sub_22C7E44E0(&dword_22C366000, v23, v24, "%s timed out in protocol resolution step. Passing through tools without protocol round-trip optimization applied:\n%s");
    swift_arrayDestroy();
    v0 = v135;
    sub_22C3699EC();
    sub_22C370510();

    v25 = v158(v154, v11);
  }

  else
  {
    v33 = v0[55];
    v35 = v0[47];
    v34 = v0[48];
    v36 = v0[46];

    v25 = v33(v34, v36);
  }

  v38 = v0[56];
  v37 = v0[57];
  sub_22C7E4B74(v25, v26, v27, v28, v29, v30, v31, v32, v128, v130, v132, v135, v138, v141, v143, v145, v147, v149, v152, v154);
  v40 = v39;

  sub_22C90400C();

  v41 = sub_22C9063CC();
  sub_22C90AABC();

  v42 = sub_22C7E4AC0();
  v43 = v0[55];
  v44 = v0[51];
  v46 = v0[46];
  v45 = v0[47];
  v159 = v40;
  if (v42)
  {
    sub_22C383050();
    v47 = sub_22C37ACD0();
    sub_22C7E4A9C(v47);
    *v43 = *(v8 + 363);
    v48 = sub_22C37AD58("ols:appDirectedApps:)");
    sub_22C388400(v48);
    static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v40, v49, v50, v51, v52, v53, v54, v55, v129, v131, v133, v136, v139, v142, v144, v146, v148, v150, v153, v43);
    sub_22C7E4BC8(v56, v57);
    sub_22C7E4854();

    *(v43 + 14) = v8;
    v8 = byte_22C90F000;
    sub_22C7E44E0(&dword_22C366000, v58, v59, "%s tools after final de-duplicating and substitute replacement:\n%s");
    sub_22C7E48C8();
    sub_22C7E4CD4();
    v0 = v136;
    sub_22C3699EC();
    sub_22C370510();

    v60 = sub_22C376018();
    v156(v60);
  }

  else
  {

    v61 = sub_22C376018();
    (v43)(v61);
  }

  v62 = v0[31];
  v63 = sub_22C7CFEA4();
  if (v63 < *(v40 + 16))
  {
    v134 = v63;
    v64 = v0[50];
    sub_22C90400C();
    v65 = sub_22C9063CC();
    v66 = sub_22C90AADC();
    v67 = sub_22C370048(v66);
    v68 = v0[55];
    v69 = v0[50];
    v71 = v0[46];
    v70 = v0[47];
    if (v67)
    {
      sub_22C383050();
      v160 = sub_22C385814();
      *v40 = *(v8 + 363);
      *(v40 + 4) = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      *(v40 + 12) = 2048;
      *(v40 + 14) = v134;
      sub_22C7E4B18(&dword_22C366000, v72, v66, "%s final count of tools is greater than expected count %ld! Please clone off a radar to IntelligenceFlow | Query Decoration");
      sub_22C36FF94(v160);
      sub_22C37B09C();
      sub_22C7E4CD4();
      v0 = v136;
      sub_22C3699EC();
    }

    v73 = sub_22C36ECB4();
    v68(v73);
    sub_22C7E4D70();
    v151 = *(v40 + 16);
    LODWORD(v146) = *MEMORY[0x277D1ED28];
    v75 = v74 + 104;
    LODWORD(v144) = *MEMORY[0x277D1ED30];
    LODWORD(v142) = *MEMORY[0x277D1ED40];
    v140 = MEMORY[0x277D84F90];
    while (v151 != v71)
    {
      if (v71 >= *(v40 + 16))
      {
        __break(1u);
        return;
      }

      v76 = v0[41];
      v78 = v0[34];
      v77 = v0[35];
      v79 = v0[32];
      sub_22C37054C();
      v153 = *(v80 + 72);
      sub_22C373A4C();
      sub_22C7E4208(v81, v76);
      sub_22C90378C();
      v82 = sub_22C7E4D50();
      (v40)(v82);
      sub_22C36CC9C();
      sub_22C90376C();
      v83 = sub_22C7E4D90();
      v71(v83);
      v84 = sub_22C38BD8C();
      v71(v84);
      if (v76)
      {
        goto LABEL_17;
      }

      sub_22C7E4740();
      (v40)(v77, v144, v78);
      sub_22C634750();
      v85 = sub_22C90376C();
      v86 = sub_22C36CC9C();
      v71(v86);
      v87 = sub_22C459028();
      v71(v87);
      if (v85)
      {
        goto LABEL_17;
      }

      sub_22C7E4740();
      (v40)(v77, v142, v78);
      sub_22C634750();
      v88 = sub_22C90376C();
      v89 = sub_22C36CC9C();
      v71(v89);
      v90 = sub_22C459028();
      v71(v90);
      if (v88)
      {
LABEL_17:
        v95 = v0[40];
        v94 = v0[41];
        sub_22C3787F0();
        sub_22C7E4260(v96, v97);
        v98 = v140;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = *(v140 + 16);
          sub_22C373310();
          sub_22C3B7CA0();
          v98 = v140;
        }

        v40 = v159;
        v8 = byte_22C90F000;
        sub_22C7E4D14();
        if (v101)
        {
          sub_22C369AB0(v100);
          sub_22C379C28();
          sub_22C3B7CA0();
          v98 = v140;
        }

        v71 = (v71 + 1);
        v102 = v0[40];
        *(v98 + 16) = v77;
        v140 = v98;
        sub_22C3787F0();
        sub_22C7E4260(v103, v104);
      }

      else
      {
        v91 = v0[41];
        sub_22C36B758();
        sub_22C7E42B8(v92, v93);
        v71 = (v71 + 1);
        v40 = v159;
        v8 = byte_22C90F000;
      }
    }

    v105 = v0[49];

    v106 = sub_22C7CD9C4(v134);

    sub_22C90400C();

    v107 = sub_22C9063CC();
    sub_22C90AACC();

    sub_22C7E4AC0();
    sub_22C7E4D00();
    if (v108)
    {
      sub_22C383050();
      v109 = sub_22C37ACD0();
      sub_22C7E4A9C(v109);
      *v75 = *(v8 + 363);
      v110 = sub_22C7E44BC("selectFinalToolList(semanticallyRankedTools:queryDecorationRankedTools:spans:context:qdContext:)");
      sub_22C388400(v110);
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v106, v111, v112, v113, v114, v115, v116, v117, v129, v131, v134, v136, v140, v142, v144, v146, v148, v151, v153, v75);
      sub_22C7E4BC8(v118, v119);
      sub_22C7E4854();

      *(v75 + 14) = v8;
      sub_22C7E44E0(&dword_22C366000, v120, v121, "%s trimmed tools down to expected count. Returning these tools: %s");
      sub_22C7E48C8();
      v0 = v137;
      sub_22C3699EC();
      sub_22C370510();

      v122 = sub_22C376018();
      v157(v122);
    }

    else
    {

      v123 = sub_22C376018();
      (v75)(v123);
    }
  }

  v124 = v0[24];

  v125 = sub_22C7E4618();
  v126(v125);
  sub_22C36FF94(v0 + 9);

  sub_22C36D5E0();

  v127(v159);
}

uint64_t sub_22C7CC754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v226 = a2;
  v6 = sub_22C9037DC();
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C3698F8(v10);
  v219 = sub_22C90377C();
  v11 = sub_22C369824(v219);
  v217 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v15);
  v222 = sub_22C9037EC();
  v16 = sub_22C369824(v222);
  v221 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C36D234(v20);
  v225 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824(v225);
  v224 = v21;
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C36D5B4();
  sub_22C36D234(v25);
  v26 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v233 = v30;
  sub_22C36BA0C();
  v239 = sub_22C9036EC();
  v31 = sub_22C369824(v239);
  v237 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v232 = v38;
  sub_22C36BA0C();
  v241 = sub_22C9099FC();
  v39 = sub_22C369824(v241);
  v234 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  v238 = v43;
  sub_22C36BA0C();
  v44 = type metadata accessor for RetrievedToolWithAttribution();
  v45 = sub_22C36985C(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v53);
  sub_22C373000();
  v54 = sub_22C9063DC();
  v55 = sub_22C369824(v54);
  v243 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  v231 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
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
  v66 = &v215 - v65;
  sub_22C90400C();
  sub_22C373A4C();
  v240 = a1;
  sub_22C7E4208(a1, v3);
  v67 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C7E4C24();
  v69 = os_log_type_enabled(v67, v68);
  v235 = v44;
  v236 = a3;
  v242 = v54;
  if (v69)
  {
    sub_22C383050();
    v246 = sub_22C7E482C();
    *v54 = 136315394;
    v70 = sub_22C36F9F4(0xD000000000000036, 0x800000022C935E40, &v246);
    sub_22C7E455C(v70);
    sub_22C373A4C();
    v71 = sub_22C36CC9C();
    sub_22C7E4208(v71, v72);
    v73 = sub_22C90A1AC();
    v75 = v74;
    sub_22C36B758();
    sub_22C7E42B8(v3, v76);
    v77 = sub_22C36F9F4(v73, v75, &v246);

    *(v54 + 14) = v77;
    _os_log_impl(&dword_22C366000, v67, a1, "%s handling %s", v54, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C372FB0();

    v78 = *(v243 + 8);
    v78(v66, v242);
  }

  else
  {

    sub_22C36B758();
    sub_22C7E42B8(v3, v79);
    v78 = *(v243 + 8);
    v80 = sub_22C37170C();
    v78(v80, v81);
  }

  v82 = v232;
  v83 = v240;
  sub_22C90371C();
  v84 = v233;
  sub_22C57709C();
  v85 = v237;
  v86 = v237 + 8;
  v87 = *(v237 + 8);
  v88 = v82;
  v89 = v239;
  v87(v88, v239);
  sub_22C36D0A8(v84, 1, v241);
  v90 = v238;
  v229 = v87;
  if (v91)
  {
    v241 = v86;
    sub_22C36DD28(v84, &qword_27D9BDC50, &unk_22C91B470);
    v92 = v231;
    sub_22C90400C();
    sub_22C373A4C();
    v93 = v228;
    sub_22C7E4208(v83, v228);
    v94 = sub_22C9063CC();
    v95 = sub_22C90AACC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = v89;
      v97 = sub_22C383050();
      v98 = sub_22C37A180();
      v244 = v98;
      *v97 = 136315394;
      v99 = sub_22C7E4810(v98, 0x800000022C935E40);
      sub_22C389260(v99);
      sub_22C374490(&v252);
      sub_22C90371C();
      RetrievedTool.Definition.toCandidateIdentifier()();
      v229(byte_22C90F000, v96);
      sub_22C36B758();
      sub_22C7E42B8(v93, v100);
      v101 = v78;
      v102 = v246;

      v103 = sub_22C36BA00();
      sub_22C36F9F4(v103, v104, v105);
      sub_22C7E4E74();
      *(v97 + 14) = v102;
      _os_log_impl(&dword_22C366000, v94, v95, "%s tool does not conform to an assistantSchema and is not an instance of an assistantSchema %s", v97, 0x16u);
      swift_arrayDestroy();
      v106 = v240;
      sub_22C3699EC();
      sub_22C372A84();

      sub_22C7E497C();
      v101(v231);
    }

    else
    {
      v106 = v83;

      sub_22C36B758();
      sub_22C7E42B8(v93, v136);
      sub_22C7E497C();
      (v78)(v92);
    }

    v135 = v235;
    v137 = v236;
    sub_22C373A4C();
    v138 = v106;
    goto LABEL_26;
  }

  v232 = v78;
  v107 = *(v234 + 32);
  v108 = sub_22C36CC9C();
  v109(v108);
  sub_22C374490(&v251);
  sub_22C90371C();
  v110 = *(v85 + 32);
  v111 = sub_22C5CAC54();
  v112(v111, v67, v89);
  v113 = (*(v85 + 88))(v84, v89);
  v114 = *MEMORY[0x277D1ECE8];
  v87(v84, v89);
  if (v113 == v114)
  {
    sub_22C37A078(&v249);
    sub_22C90400C();
    sub_22C373A4C();
    v115 = v223;
    sub_22C7E4208(v83, v223);
    v116 = sub_22C9063CC();
    v117 = sub_22C90AABC();
    v118 = sub_22C7E4928(v117);
    v119 = v242;
    if (v118)
    {
      sub_22C383050();
      v120 = sub_22C7E482C();
      sub_22C7E4D64(v120);
      *v119 = 136315394;
      sub_22C36EE00();
      v123 = sub_22C7E4810(v121, v122);
      sub_22C7E455C(v123);
      sub_22C7E49D8();
      sub_22C90371C();
      sub_22C7E4E2C();
      v124 = sub_22C386690();
      v125(v124);
      sub_22C36B758();
      sub_22C7E42B8(v115, v126);
      sub_22C36C8C0();
      v127 = sub_22C372FA4();
      sub_22C36F9F4(v127, v128, v129);
      sub_22C38B194();
      v130 = v240;

      *(v119 + 14) = v115;
      sub_22C37EFA0(&dword_22C366000, v131, v132, "%s tool is an assistantSchema %s");
      sub_22C7E48AC();
      sub_22C36D69C();
      v133 = v238;
      sub_22C3699EC();

      v134 = sub_22C38BD8C();
      (v232)(v134);
      v135 = v235;
    }

    else
    {
      v130 = v83;

      sub_22C36B758();
      sub_22C7E42B8(v115, v159);
      v160 = sub_22C37170C();
      (v232)(v160);
      v135 = v235;
      v133 = v90;
    }

    v246 = sub_22C9099EC();
    v247 = v161;
    v244 = sub_22C9099DC();
    v245 = v162;
    sub_22C37A078(&v250);
    sub_22C90678C();
    sub_22C5E985C();
    v164 = v163;
    (*(v224 + 8))(v133, v225);
    if (v164)
    {
      sub_22C37A078(v248);
      sub_22C90400C();
      sub_22C373A4C();
      v165 = v130;
      v166 = v220;
      sub_22C7E4208(v165, v220);
      v167 = sub_22C9063CC();
      v168 = sub_22C90AABC();
      if (sub_22C7E4928(v168))
      {
        sub_22C383050();
        v169 = sub_22C7E482C();
        sub_22C7E4D64(v169);
        *v119 = 136315394;
        sub_22C36EE00();
        v172 = sub_22C7E4810(v170, v171);
        sub_22C7E455C(v172);
        sub_22C7E49D8();
        sub_22C90371C();
        sub_22C7E4E2C();
        v173 = sub_22C386690();
        v174(v173);
        sub_22C36B758();
        sub_22C7E42B8(v166, v175);
        sub_22C36C8C0();
        v176 = sub_22C372FA4();
        sub_22C36F9F4(v176, v177, v178);
        sub_22C38B194();

        *(v119 + 14) = v166;
        sub_22C37EFA0(&dword_22C366000, v179, v180, "%s discarding schema that has overlap %s");
        sub_22C7E48AC();
        sub_22C3699EC();
        sub_22C372FB0();

        sub_22C7E497C();
        (v232)(v133);
        sub_22C7E4C30();
        v182 = v238;
      }

      else
      {

        sub_22C36B758();
        sub_22C7E42B8(v166, v208);
        v209 = sub_22C37170C();
        (v232)(v209);
        sub_22C7E4C30();
        v182 = v133;
      }

      v181(v182, v241);
      v206 = 1;
      v137 = v236;
      return sub_22C36C640(v137, v206, 1, v135);
    }

    sub_22C7E4C30();
    v203(v133, v241);
    goto LABEL_25;
  }

  sub_22C3819C0();
  v246 = 0xD00000000000001CLL;
  v247 = v139;
  v140 = sub_22C9099DC();
  v142 = v141;
  v244 = v140;
  v245 = v141;
  sub_22C3858B4();
  v143 = sub_22C90AD8C();

  if (v143)
  {
    sub_22C374490(&v240);
    sub_22C90400C();
    sub_22C373A4C();
    v130 = v83;
    v144 = v215;
    sub_22C7E4208(v83, v215);
    v145 = sub_22C9063CC();
    v146 = sub_22C90AACC();
    if (sub_22C7E4928(v146))
    {
      sub_22C383050();
      v147 = sub_22C7E482C();
      sub_22C7E4D64(v147);
      *v142 = 136315394;
      sub_22C36EE00();
      v150 = sub_22C7E4810(v148, v149);
      sub_22C7E455C(v150);
      sub_22C7E49D8();
      sub_22C90371C();
      sub_22C7E4E2C();
      v151 = sub_22C386690();
      v152(v151);
      sub_22C36B758();
      sub_22C7E42B8(v144, v153);
      sub_22C36C8C0();
      v154 = sub_22C372FA4();
      sub_22C36F9F4(v154, v155, v156);
      sub_22C38B194();
      v130 = v240;

      *(v142 + 14) = v144;
      sub_22C37EFA0(&dword_22C366000, v157, v158, "%s not replacing app-directed tool implementation with conforming schema %s");
      sub_22C7E48AC();
      sub_22C36D69C();
      sub_22C372FB0();
    }

    else
    {

      sub_22C36B758();
      sub_22C7E42B8(v144, v204);
    }

    sub_22C7E497C();
    (v232)(v67);
    sub_22C7E4C30();
    v205(v90, v241);
    v135 = v235;
LABEL_25:
    sub_22C373A4C();
    v138 = v130;
    v137 = v236;
LABEL_26:
    sub_22C7E4208(v138, v137);
    v206 = 0;
    return sub_22C36C640(v137, v206, 1, v135);
  }

  v183 = v234;
  v184 = *(v234 + 16);
  v185 = v230;
  v186 = sub_22C634750();
  v187(v186);
  (*(v237 + 104))(v185, v114, v239);
  sub_22C90373C();
  (*(v217 + 104))(v218, *MEMORY[0x277D1ED28], v219);
  sub_22C36D818(&v246);
  sub_22C90379C();
  sub_22C9036FC();
  sub_22C36D818(&v242);
  sub_22C90400C();
  sub_22C373A4C();
  v188 = v114;
  v189 = v216;
  sub_22C7E4208(v83, v216);
  v190 = sub_22C9063CC();
  v191 = v183;
  v192 = sub_22C90AABC();
  if (os_log_type_enabled(v190, v192))
  {
    sub_22C383050();
    v193 = sub_22C7E482C();
    sub_22C7E4D64(v193);
    *v185 = 136315394;
    sub_22C36EE00();
    v196 = sub_22C7E4810(v194, v195);
    sub_22C7E455C(v196);
    sub_22C90371C();
    sub_22C7E4E2C();
    v197 = sub_22C386690();
    v198(v197);
    sub_22C36B758();
    sub_22C7E42B8(v189, v199);
    sub_22C36C8C0();
    v200 = sub_22C372FA4();
    sub_22C36F9F4(v200, v201, v202);
    sub_22C38B194();

    *(v185 + 14) = v189;
    _os_log_impl(&dword_22C366000, v190, v192, "%s replacing tool with its conforming schema for later duplicate removal and substitution %s", v185, 0x16u);
    sub_22C7E48AC();
    sub_22C36D69C();
    sub_22C372FB0();

    sub_22C7E497C();
    (v232)(v188);
    (*(v191 + 8))(v238, v241);
  }

  else
  {

    sub_22C36B758();
    sub_22C7E42B8(v189, v210);
    sub_22C7E497C();
    (v232)(v188);
    v211 = *(v191 + 8);
    v212 = sub_22C37FE24();
    v214(v212, v213);
  }

  v135 = v235;
  v137 = v236;
  (*(v221 + 32))(v236, v227, v222);
  v206 = 0;
  *(v137 + *(v135 + 20)) = 2;
  return sub_22C36C640(v137, v206, 1, v135);
}

uint64_t sub_22C7CD7C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C7CD890;

  return sub_22C7D28E4();
}

uint64_t sub_22C7CD890(uint64_t a1)
{
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  sub_22C369970();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = a1;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C7CD9C4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(*v2 + 16) >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *(*v2 + 16);
  }

  v1 = sub_22C606154(0, v6, *v2);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  sub_22C7C7A40(v6, sub_22C88842C);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_16;
  }

  if (v13 != (v5 >> 1) - v4)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
LABEL_6:
    sub_22C4705E4(v1, v3, v4, v5);
    v11 = v10;
LABEL_13:
    swift_unknownObjectRelease();
    return v11;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return v11;
}

void sub_22C7CDB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  sub_22C369A48();
  v144 = sub_22C9036EC();
  v25 = sub_22C369824(v144);
  v156 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  sub_22C3698F8(v29);
  v151 = sub_22C9063DC();
  v30 = sub_22C369824(v151);
  v155 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C36D234(v34);
  v35 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  v36 = sub_22C369824(v35);
  v159 = v37;
  v160 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  v152 = v41;
  sub_22C36BA0C();
  v163 = sub_22C9099FC();
  v42 = sub_22C369824(v163);
  v154 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  v47 = MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v47);
  v49 = &v141 - v48;
  v50 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v51 = sub_22C369914(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369ABC();
  sub_22C387D8C();
  MEMORY[0x28223BE20](v54);
  sub_22C7E4D3C();
  v55 = type metadata accessor for RetrievedToolWithAttribution();
  v56 = sub_22C3699B8(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  v158 = v61;
  sub_22C369930();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  v164 = v63;
  sub_22C369930();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  v161 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  v69 = &v141 - v68;
  v70 = 0;
  v162 = v21;
  v71 = *(v21 + 16);
  v146 = MEMORY[0x277D84F90];
  v165 = v20;
  while (v71 != v70)
  {
    v72 = v49;
    v73 = v67;
    v74 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v75 = *(v58 + 72);
    sub_22C373A4C();
    sub_22C7E4208(v76, v69);
    type metadata accessor for QueryDecorationToolSelectorService();
    sub_22C7CE4C0(v69, v22);
    sub_22C36D0A8(v22, 1, v163);
    if (v77)
    {
      sub_22C36B758();
      sub_22C7E42B8(v69, v78);
      sub_22C36DD28(v22, &qword_27D9BDC50, &unk_22C91B470);
      ++v70;
    }

    else
    {
      sub_22C36DD28(v22, &qword_27D9BDC50, &unk_22C91B470);
      sub_22C3787F0();
      sub_22C7E4260(v69, v161);
      v79 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166 = v79;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = *(v79 + 16);
        sub_22C373310();
        sub_22C3B7CA0();
        v79 = v166;
      }

      v83 = *(v79 + 16);
      v82 = *(v79 + 24);
      v84 = (v83 + 1);
      if (v83 >= v82 >> 1)
      {
        sub_22C369AB0(v82);
        v157 = v86;
        v153 = v87;
        sub_22C3B7CA0();
        v84 = v157;
        v79 = v166;
      }

      ++v70;
      *(v79 + 16) = v84;
      v146 = v79;
      sub_22C3787F0();
      sub_22C7E4260(v161, v85);
    }

    v67 = v73;
    v49 = v72;
    v20 = v165;
  }

  v169[1] = MEMORY[0x277D84FA0];
  v88 = sub_22C37B56C();
  v90 = *(v88 + 16);
  if (v90)
  {
    v148 = v89;
    v91 = v88;
    type metadata accessor for QueryDecorationToolSelectorService();
    v92 = *(v58 + 80);
    sub_22C36BA94();
    v94 = v91 + v93;
    v161 = *(v58 + 72);
    v162 = v95;
    v157 = v154 + 4;
    ++v159;
    v96 = v154 + 2;
    v150 = v155 + 8;
    v143 = "ools:substitutes:ignoreSet:)";
    v142 = v156 + 1;
    *&v97 = 136315650;
    v141 = v97;
    v156 = v154 + 1;
    v149 = &v154[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v98 = v145;
    v99 = v152;
    v100 = v163;
    while (1)
    {
      v101 = v96;
      sub_22C373A4C();
      v103 = v102;
      sub_22C7E4208(v94, v102);
      sub_22C7CE4C0(v103, v20);
      sub_22C36D0A8(v20, 1, v100);
      if (v77)
      {
        sub_22C36B758();
        sub_22C7E42B8(v103, v104);
        sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
      }

      else
      {
        (v157->isa)(v49, v20, v100);
        v166 = sub_22C9099EC();
        v167 = v105;
        v168 = sub_22C9099DC();
        v169[0] = v106;
        sub_22C90678C();
        sub_22C5E985C();
        v108 = v107;
        v109 = *v159;
        (*v159)(v99, v160);
        if ((v108 & 1) == 0)
        {
          v155 = v109;
          sub_22C90400C();
          v96 = v101;
          isa = v101->isa;
          (v101->isa)(v148, v49, v100);
          sub_22C373A4C();
          sub_22C7E4208(v164, v158);
          v114 = sub_22C9063CC();
          LODWORD(v153) = sub_22C90AACC();
          v154 = v114;
          if (os_log_type_enabled(v114, v153))
          {
            v115 = sub_22C370060();
            v147 = swift_slowAlloc();
            v168 = v147;
            *v115 = v141;
            sub_22C7E4C68();
            *(v115 + 4) = sub_22C36F9F4(0xD000000000000045, v116 | 0x8000000000000000, &v168);
            *(v115 + 12) = 2080;
            v117 = sub_22C37170C();
            isa(v117);
            sub_22C90A1AC();
            v119 = v118;
            v120 = v156->isa;
            v121 = sub_22C634750();
            (v120)(v121);
            v122 = sub_22C36BBCC();
            v125 = sub_22C36F9F4(v122, v123, v124);

            *(v115 + 14) = v125;
            *(v115 + 22) = 2080;
            sub_22C36D818(&a9);
            v126 = v158;
            sub_22C90371C();
            RetrievedTool.Definition.toCandidateIdentifier()();
            sub_22C36BA4C(v169);
            v127(v119, v144);
            sub_22C36B758();
            sub_22C7E42B8(v126, v128);
            v129 = v166;

            v130 = sub_22C36BA00();
            sub_22C36F9F4(v130, v131, v132);
            sub_22C7E4E74();
            *(v115 + 24) = v129;
            v133 = v154;
            _os_log_impl(&dword_22C366000, v154, v153, "%s adding to ignoreSchemas: %s %s", v115, 0x20u);
            swift_arrayDestroy();
            sub_22C3699EC();
            v96 = v101;
            v134 = v120;
            v98 = v145;
            sub_22C3699EC();
          }

          else
          {

            sub_22C36B758();
            sub_22C7E42B8(v158, v136);
            v134 = v156->isa;
            v137 = sub_22C634750();
            (v134)(v137);
          }

          sub_22C37BFAC();
          v135(v98, v151);
          v166 = sub_22C9099EC();
          v167 = v138;
          v168 = sub_22C9099DC();
          v169[0] = v139;
          sub_22C36D818(&a17);
          sub_22C90678C();
          v99 = v152;
          sub_22C6A637C();
          (v155)(v99, v160);
          sub_22C50B578();
          sub_22C7E4C00();
          v134();
          sub_22C36B758();
          sub_22C7E42B8(v164, v140);
          v20 = v165;
          goto LABEL_24;
        }

        sub_22C7E49CC();
        v110 = sub_22C50B578();
        v111(v110);
        sub_22C36B758();
        sub_22C7E42B8(v164, v112);
        v20 = v165;
      }

      v96 = v101;
LABEL_24:
      v94 += v161;
      if (!--v90)
      {
        sub_22C37B56C();
        break;
      }
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C7CE4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_22C908D6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v76 - v10;
  v11 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v83 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v82 = &v76 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v76 - v19;
  v20 = sub_22C9099FC();
  v96 = *(v20 - 8);
  v21 = *(v96 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v99 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v87 = &v76 - v24;
  v25 = sub_22C9036EC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v85 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v84 = &v76 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v76 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v76 - v35;
  v37 = a1;
  sub_22C90371C();
  LOBYTE(a1) = sub_22C57F13C();
  v86 = v26;
  v39 = *(v26 + 8);
  v38 = v26 + 8;
  v40 = v36;
  v41 = v25;
  v42 = v39;
  v39(v40, v41);
  if ((a1 & 1) == 0)
  {
    v47 = 1;
    v46 = v90;
    return sub_22C36C640(v46, v47, 1, v20);
  }

  v81 = v37;
  sub_22C90371C();
  v43 = v89;
  sub_22C9036BC();
  v80 = v38;
  v42(v34, v41);
  v44 = sub_22C908EAC();
  if (sub_22C370B74(v43, 1, v44) == 1)
  {
    sub_22C36DD28(v43, &qword_27D9BC1E8, &qword_22C9123B0);
    v45 = v88;
    sub_22C36C640(v88, 1, 1, v20);
    v46 = v90;
    goto LABEL_25;
  }

  v79 = v44;
  v77 = v42;
  v78 = v41;
  result = sub_22C908DEC();
  v49 = result;
  v50 = 0;
  v51 = *(result + 16);
  v98 = *MEMORY[0x277D72148];
  v92 = (v4 + 96);
  v93 = (v4 + 8);
  v52 = v96;
  v91 = 0x800000022C932110;
  v96 += 8;
  v97 = (v52 + 32);
  v94 = v4;
  v95 = result;
  while (v51 != v50)
  {
    (*(v4 + 16))(v7, v49 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v50, v3);
    v53 = (*(v4 + 88))(v7, v3);
    if (v53 == v98)
    {
      (*v92)(v7, v3);
      v54 = *v97;
      v55 = v20;
      (*v97)(v99, v7, v20);
      if (sub_22C9099DC() == 0xD00000000000001CLL && v91 == v56)
      {
      }

      else
      {
        v58 = sub_22C90B4FC();

        if ((v58 & 1) == 0)
        {
          v74 = v100;
          v20 = v55;
          v75 = v97;
          v54(v100, v99, v55);
          sub_22C36C640(v74, 0, 1, v55);
          result = sub_22C36DD28(v74, &qword_27D9BDC50, &unk_22C91B470);
          v4 = v94;
          v49 = v95;
          goto LABEL_19;
        }
      }

      v20 = v55;
      (*v96)(v99, v55);
      v4 = v94;
      v49 = v95;
    }

    else
    {
      (*v93)(v7, v3);
    }

    v59 = v100;
    sub_22C36C640(v100, 1, 1, v20);
    result = sub_22C36DD28(v59, &qword_27D9BDC50, &unk_22C91B470);
    ++v50;
  }

  v50 = v51;
  v75 = v97;
LABEL_19:
  v60 = *(v49 + 16);
  v46 = v90;
  if (v50 == v60)
  {
    v61 = 1;
    v45 = v88;
    v62 = v89;
    goto LABEL_24;
  }

  if (v50 >= v60)
  {
    __break(1u);
  }

  else
  {
    v63 = v49 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v50;
    v64 = v82;
    sub_22C5791C0();
    v65 = v83;
    sub_22C4E719C(v64, v83, &qword_27D9BDC50, &unk_22C91B470);
    result = sub_22C370B74(v65, 1, v20);
    if (result != 1)
    {
      v45 = v88;
      (*v75)(v88, v65, v20);
      sub_22C36DD28(v64, &qword_27D9BDC50, &unk_22C91B470);
      v61 = 0;
      v62 = v89;
LABEL_24:
      v66 = v87;
      sub_22C36C640(v45, v61, 1, v20);

      (*(*(v79 - 8) + 8))(v62);
      if (sub_22C370B74(v45, 1, v20) != 1)
      {
        v67 = *v75;
        (*v75)(v66, v45, v20);
        v68 = v84;
        sub_22C90371C();
        v70 = v85;
        v69 = v86;
        v71 = v68;
        v72 = v78;
        (*(v86 + 32))(v85, v71, v78);
        LODWORD(v69) = (*(v69 + 88))(v70, v72);
        v73 = *MEMORY[0x277D1ECE8];
        v77(v70, v72);
        if (v69 != v73)
        {
          v67(v46, v66, v20);
          v47 = 0;
          return sub_22C36C640(v46, v47, 1, v20);
        }

        (*v96)(v66, v20);
        goto LABEL_26;
      }

LABEL_25:
      sub_22C36DD28(v45, &qword_27D9BDC50, &unk_22C91B470);
LABEL_26:
      v47 = 1;
      return sub_22C36C640(v46, v47, 1, v20);
    }
  }

  __break(1u);
  return result;
}

void sub_22C7CED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v234 = v24;
  v26 = v25;
  v223 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824(v223);
  v221 = v27;
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C36D5B4();
  sub_22C36D234(v31);
  v32 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D5B4();
  sub_22C3698F8(v36);
  v226 = sub_22C9099FC();
  v37 = sub_22C369824(v226);
  v220 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v231 = sub_22C9063DC();
  v41 = sub_22C369824(v231);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  sub_22C36D234(v48);
  v49 = sub_22C3A5908(&qword_27D9C0288, &qword_22C926990);
  v50 = sub_22C369914(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  v232 = v54;
  sub_22C369930();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  v235 = v57;
  sub_22C36BA0C();
  v58 = sub_22C9036EC();
  v59 = sub_22C369824(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C7E4D28();
  v241 = type metadata accessor for RetrievedToolWithAttribution();
  v65 = sub_22C369824(v241);
  v237 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  v233 = v71;
  sub_22C369930();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C373000();
  v74 = 0;
  v247 = 0;
  v248 = MEMORY[0x277D84F90];
  v249 = MEMORY[0x277D84F90];
  v236 = *(v26 + 16);
  v75 = (v61 + 8);
  v238 = v20;
  v239 = v58;
  v240 = (v61 + 8);
  while (v236 != v74)
  {
    v76 = (*(v237 + 80) + 32) & ~*(v237 + 80);
    v77 = *(v237 + 72);
    v242 = v74;
    sub_22C373A4C();
    sub_22C7E4208(v78, v21);
    sub_22C90371C();
    sub_22C7E4EA4();
    v79 = *v75;
    v80 = sub_22C3806B8();
    v79(v80);
    v81 = v244;

    v82 = v249;
    v83 = *(v248 + 16);
    if (v247)
    {

      v84 = sub_22C7E47D4();
      sub_22C7DA844(v84, v85, v86, v87, v88);
      sub_22C7E4AB4();
    }

    else
    {
      v89 = sub_22C7E47D4();
      sub_22C7D9010(v89, v90, v91, v92);
      sub_22C7E4AB4();
    }

    if (v83)
    {
      v93 = sub_22C381B6C();
      sub_22C36C640(v93, v94, v95, v241);
      sub_22C36DD28(v235, &qword_27D9C0288, &qword_22C926990);
      sub_22C90371C();
      sub_22C7E4EA4();
      (v79)(v238, v239);
      v75 = v240;
      v96 = v245;

      sub_22C373A4C();
      sub_22C7E4208(v21, v230);
      sub_22C36BECC();
      sub_22C36C640(v97, v98, v99, v241);
      v100 = sub_22C36BAFC();
      sub_22C7C752C(v100, v101, v96);
      sub_22C36B758();
      v103 = v21;
LABEL_12:
      sub_22C7E42B8(v103, v102);
      goto LABEL_14;
    }

    if (v81 < 0)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    sub_22C7E4AA8();
    if (v104)
    {
      goto LABEL_52;
    }

    sub_22C7E4208(v82 + v76 + v81 * v77, v235);
    sub_22C36BECC();
    sub_22C36C640(v105, v106, v107, v241);
    sub_22C36DD28(v235, &qword_27D9C0288, &qword_22C926990);
    sub_22C36D818(&a18);
    sub_22C90400C();
    sub_22C7E4208(v21, v229);
    v108 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C7E4C24();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = sub_22C383050();
      v111 = sub_22C37A180();
      *v110 = sub_22C7E4A28(v111).n128_u32[0];
      v112 = sub_22C7E45B8();
      sub_22C389260(v112);
      sub_22C90371C();
      RetrievedTool.Definition.toCandidateIdentifier()();
      (v79)(v238, v239);
      sub_22C36B758();
      v228 = v113;
      sub_22C7E42B8(v229, v114);
      v115 = v244;
      v116 = v245;

      v117 = sub_22C36F9F4(v115, v116, v243);

      *(v110 + 14) = v117;
      v75 = v240;
      _os_log_impl(&dword_22C366000, v108, v83, "%s duplicate tool dropped %s", v110, 0x16u);
      swift_arrayDestroy();
      sub_22C372FB0();
      sub_22C372A84();

      sub_22C37BFAC();
      sub_22C7E4804();
      v118();
      v103 = v21;
      v102 = v228;
      goto LABEL_12;
    }

    sub_22C37B420();
    sub_22C7E42B8(v229, v119);
    sub_22C37BFAC();
    sub_22C7E4804();
    v120();
    v121 = sub_22C4F6088();
    sub_22C7E42B8(v121, v122);
    v75 = v240;
LABEL_14:
    v74 = (v242 + 1);
  }

  v242 = (v220 + 32);
  while (1)
  {
    v123 = v249;
    v124 = *(v249 + 16);
    v125 = sub_22C7CFEA4();
    v126 = *(*v234 + 24);
    if (v124 >= v125)
    {
      break;
    }

    if (!v126)
    {
      goto LABEL_44;
    }

    if (v126 < 1)
    {
      v148 = sub_22C381B6C();
      sub_22C36C640(v148, v149, v150, v241);
      sub_22C36DD28(v232, &qword_27D9C0288, &qword_22C926990);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C7E2E58();
      }

      v127 = *v234;
      v128 = *(v237 + 80);
      v129 = *(*v234 + 32);
      v130 = *(v237 + 72);
      sub_22C3787F0();
      sub_22C7E4260(v131, v232);
      v132 = v127[4];
      v133 = __OFADD__(v132, 1);
      v134 = v132 + 1;
      if (v133)
      {
        goto LABEL_53;
      }

      v135 = v127[3];
      if (v134 >= v127[2])
      {
        v134 = 0;
      }

      v127[4] = v134;
      if (__OFSUB__(v135, 1))
      {
        goto LABEL_54;
      }

      v127[3] = v135 - 1;
      sub_22C36BECC();
      sub_22C36C640(v136, v137, v138, v241);
      sub_22C3787F0();
      sub_22C7E4260(v232, v233);
      sub_22C90371C();
      sub_22C7E4EA4();
      v139 = *v240;
      v140 = sub_22C3806B8();
      v139(v140);
      v141 = v244;

      v142 = *(v248 + 16);
      if (v247)
      {

        v143 = sub_22C7E47D4();
        sub_22C7DA844(v143, v144, v145, v146, v147);
        sub_22C7E4AB4();
      }

      else
      {
        v151 = sub_22C7E47D4();
        sub_22C7D9010(v151, v152, v153, v154);
        sub_22C7E4AB4();
      }

      if (v142)
      {
        v155 = sub_22C381B6C();
        sub_22C36C640(v155, v156, v157, v241);
        sub_22C36DD28(v227, &qword_27D9C0288, &qword_22C926990);
        sub_22C37BA44(&v246);
        sub_22C90371C();
        sub_22C36D818(&v247);
        sub_22C57709C();
        (v139)(v141, v239);
        sub_22C36D0A8(v227, 1, v226);
        if (v158)
        {
          sub_22C36DD28(v227, &qword_27D9BDC50, &unk_22C91B470);
          v166 = v238;
LABEL_40:
          sub_22C90371C();
          sub_22C7E4EA4();
          v189 = sub_22C3806B8();
          v139(v189);

          sub_22C7E4208(v233, v230);
          sub_22C36BECC();
          sub_22C36C640(v190, v191, v192, v241);
          sub_22C37275C();
          sub_22C7C752C(v193, v194, v195);
          sub_22C37A078(&v248);
          sub_22C90400C();
          sub_22C7E4208(v233, v224);
          v196 = sub_22C9063CC();
          sub_22C90AACC();
          sub_22C7E4C24();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = sub_22C383050();
            v199 = sub_22C37A180();
            *v198 = sub_22C7E4A28(v199).n128_u32[0];
            v200 = sub_22C7E45B8();
            sub_22C389260(v200);
            sub_22C90371C();
            RetrievedTool.Definition.toCandidateIdentifier()();
            (v139)(v166, v239);
            sub_22C37B420();
            sub_22C7E42B8(v224, v201);

            v202 = sub_22C36FC2C();
            v205 = sub_22C36F9F4(v202, v203, v204);

            *(v198 + 14) = v205;
            _os_log_impl(&dword_22C366000, v196, v166, "%s replaced duplicate with substitute tool %s", v198, 0x16u);
            swift_arrayDestroy();
            sub_22C372FB0();
            sub_22C372A84();

            sub_22C37BFAC();
            sub_22C7E4804();
            v206();
            sub_22C7E42B8(v233, v166);
          }

          else
          {

            sub_22C7E46E8();
            sub_22C7E42B8(v224, v207);
            sub_22C37BFAC();
            sub_22C7E4804();
            v208();
            sub_22C7E42B8(v233, v196);
          }
        }

        else
        {
          v159 = *v242;
          v160 = sub_22C36BBCC();
          v161(v160);
          v244 = sub_22C9099EC();
          v245 = v162;
          v243[0] = sub_22C9099DC();
          v243[1] = v163;
          sub_22C90678C();
          sub_22C5E985C();
          v165 = v164;
          (*(v221 + 8))(v222, v223);
          v166 = v238;
          if ((v165 & 1) == 0)
          {
            sub_22C37ED90();
            v187 = sub_22C37170C();
            v188(v187);
            goto LABEL_40;
          }

          sub_22C37BA44(&v241);
          sub_22C90400C();
          sub_22C373A4C();
          sub_22C7E4208(v233, v225);
          v167 = sub_22C9063CC();
          v168 = sub_22C90AACC();
          if (sub_22C7E4928(v168))
          {
            sub_22C383050();
            v169 = sub_22C37ACD0();
            *v128 = sub_22C7E4A28(v169).n128_u32[0];
            v170 = sub_22C7E45B8();
            sub_22C388400(v170);
            sub_22C90371C();
            RetrievedTool.Definition.toCandidateIdentifier()();
            (v139)(v238, v239);
            sub_22C37B420();
            sub_22C7E42B8(v225, v171);
            v172 = v244;
            v173 = v245;

            v174 = sub_22C36F9F4(v172, v173, v243);

            *(v128 + 14) = v174;
            _os_log_impl(&dword_22C366000, v167, v222, "%s skipped overlapping schema tool %s", v128, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C370510();

            sub_22C37BFAC();
            sub_22C7E4804();
            v175();
            sub_22C37ED90();
            v176 = sub_22C7E4CE0();
            v177(v176);
            sub_22C7E42B8(v233, v238);
          }

          else
          {

            sub_22C7E46E8();
            sub_22C7E42B8(v225, v183);
            sub_22C37BFAC();
            sub_22C7E4804();
            v184();
            sub_22C37ED90();
            v185 = sub_22C7E4CE0();
            v186(v185);
            sub_22C7E42B8(v233, v167);
          }
        }
      }

      else
      {
        if ((v141 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v141 >= *(v123 + 16))
        {
          goto LABEL_56;
        }

        sub_22C373A4C();
        sub_22C7E4208(v178, v227);
        sub_22C36BECC();
        sub_22C36C640(v179, v180, v181, v241);
        sub_22C36B758();
        sub_22C7E42B8(v233, v182);
        sub_22C36DD28(v227, &qword_27D9C0288, &qword_22C926990);
      }
    }
  }

  if (v126)
  {
    goto LABEL_47;
  }

LABEL_44:
  sub_22C90400C();
  v209 = sub_22C9063CC();
  v210 = sub_22C90AADC();
  if (sub_22C370048(v210))
  {
    v211 = swift_slowAlloc();
    *v211 = 0;
    _os_log_impl(&dword_22C366000, v209, v210, "QDInternal: Query Decoration ran out of tool substitutes! Please clone off a radar to IntelligenceFlow | Query Decoration", v211, 2u);
    sub_22C372A84();
  }

  sub_22C37BFAC();
  sub_22C7E4804();
  v212();
LABEL_47:
  sub_22C7E4CC8();
  sub_22C90400C();

  v213 = sub_22C9063CC();
  v214 = sub_22C90AACC();
  if (sub_22C370048(v214))
  {
    v215 = sub_22C370060();
    v216 = sub_22C370060();
    v244 = v216;
    *v215 = 136315650;
    *(v215 + 4) = sub_22C36F9F4(0xD00000000000003CLL, 0x800000022C935D40, &v244);
    *(v215 + 12) = 2048;
    *(v215 + 14) = v236;

    *(v215 + 22) = 2048;
    *(v215 + 24) = *(v123 + 16);
    _os_log_impl(&dword_22C366000, v213, v214, "%s Tools in %ld out %ld", v215, 0x20u);
    sub_22C36FF94(v216);
    sub_22C36D69C();
    sub_22C372A84();
  }

  else
  {
  }

  sub_22C37BFAC();
  sub_22C7E4804();
  v217();
  swift_beginAccess();

  v218 = sub_22C37170C();
  sub_22C4704E8(v218, v219, v123);

  sub_22C36CC48();
}

uint64_t sub_22C7CFEA4()
{
  v1 = sub_22C374168((v0 + 152), *(v0 + 176));
  sub_22C7E4A90(v1);
  sub_22C37931C();
  v3 = v2;
  v4 = sub_22C374168((v0 + 152), *(v0 + 176));
  sub_22C7E4A90(v4);
  sub_22C37931C();
  v6 = v5;
  v7 = sub_22C374168((v0 + 152), *(v0 + 176));
  sub_22C7E4A90(v7);
  sub_22C37931C();
  if (v3 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v3;
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_22C7CFF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v25;
  a20 = v26;
  v27 = v20;
  v29 = v28;
  v397 = v30;
  v399 = v31;
  v442 = sub_22C90941C();
  v32 = sub_22C369824(v442);
  v391 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  v441 = v36;
  sub_22C36BA0C();
  v440 = sub_22C90981C();
  v37 = sub_22C369824(v440);
  v443 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  v439 = v41;
  v42 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v42);
  v44 = *(v43 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  sub_22C36D5B4();
  sub_22C36D234(v46);
  v47 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v48 = sub_22C369914(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  v430 = v52;
  v53 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v54 = sub_22C369914(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  v429 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA64();
  v433 = v59;
  sub_22C36BA0C();
  v438 = sub_22C90952C();
  v60 = sub_22C369824(v438);
  v413 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA64();
  v426 = v65;
  sub_22C36BA0C();
  v412 = sub_22C9039FC();
  v66 = sub_22C369824(v412);
  v432 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C3698A8();
  v437 = v70;
  sub_22C36BA0C();
  v393 = sub_22C90384C();
  v71 = sub_22C369824(v393);
  v390 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C3698A8();
  sub_22C3698F8(v75);
  v406 = sub_22C9099FC();
  v76 = sub_22C369824(v406);
  v389 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22C3698A8();
  sub_22C3698F8(v80);
  v436 = sub_22C9036EC();
  v81 = sub_22C369824(v436);
  v394 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  v428 = v87;
  sub_22C369930();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA64();
  v425 = v89;
  sub_22C36BA0C();
  v431 = sub_22C908EAC();
  v90 = sub_22C369824(v431);
  v392 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA58();
  v427 = v96;
  sub_22C369930();
  MEMORY[0x28223BE20](v97);
  sub_22C36BA64();
  sub_22C3698F8(v98);
  v99 = sub_22C9037EC();
  v100 = sub_22C369824(v99);
  v434 = v101;
  v435 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v104);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v105);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v106);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA64();
  sub_22C3698F8(v108);
  v398 = sub_22C9063DC();
  v109 = sub_22C369824(v398);
  v405 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v113);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v114);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v115);
  v117 = &v373 - v116;
  v118 = *sub_22C374168(v27 + 19, v27[22]);
  sub_22C586B68();
  v120 = v119;
  sub_22C90407C();
  v121 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C7E4C24();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 67109120;
    *(v123 + 4) = v120 & 1;
    _os_log_impl(&dword_22C366000, v121, v22, "Using filtered tools for ranking: %{BOOL}d", v123, 8u);
    sub_22C3699EC();
  }

  v124 = *(v405 + 8);
  v125 = v398;
  v405 += 8;
  v395 = v124;
  v124(v117, v398);
  if ((v120 & 1) == 0)
  {
    v175 = sub_22C374168(v27 + 14, v27[17]);
    sub_22C7E7254(v397, v399, v29, *v175, *(v175 + 8), v175[2], v176, v177, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384);
LABEL_132:
    sub_22C36CC48();
    return;
  }

  sub_22C90407C();
  v126 = v397;

  v127 = sub_22C9063CC();
  v128 = sub_22C90AACC();
  v129 = sub_22C370048(v128);
  v383 = v29;
  v384 = v27;
  if (!v129)
  {

    sub_22C7E43F0();
    v178();
    v132 = v430;
    goto LABEL_29;
  }

  HIDWORD(v380) = v128;
  v381 = v127;
  v130 = sub_22C383050();
  v378 = sub_22C370060();
  v445 = v378;
  *v130 = 134218242;
  v131 = *(v126 + 16);
  *(v130 + 4) = v131;

  v379 = v130;
  *(v130 + 12) = 2080;
  v23 = MEMORY[0x277D84F90];
  v132 = v430;
  if (!v131)
  {
    goto LABEL_28;
  }

  v373 = v24;
  v444 = MEMORY[0x277D84F90];
  sub_22C36D6CC();
  sub_22C3B5E2C();
  v23 = v444;
  v421 = *(v434 + 16);
  v133 = *(v434 + 80);
  sub_22C36BA94();
  v135 = v126 + v134;
  v420 = *(v136 + 56);
  v409 = v394 + 88;
  LODWORD(v408) = *MEMORY[0x277D1ECE0];
  LODWORD(v396) = *MEMORY[0x277D1ECE8];
  LODWORD(v388) = *MEMORY[0x277D1ECD8];
  v387 = *MEMORY[0x277D1ECD0];
  sub_22C3819C0();
  v377 = v137;
  v376 = v138 + 8;
  v407 = v138 + 96;
  sub_22C7E4A18();
  v375 = v139;
  v374 = v140 + 8;
  v401 = v392 + 32;
  HIDWORD(v382) = *MEMORY[0x277D1ECF8];
  v386 = v389 + 32;
  v385 = v389 + 8;
  v400 = v392 + 8;
  v423 = v141;
  v142 = (v141 - 8);
  do
  {
    v143 = v424;
    (v421)(v424, v135, v435);
    sub_22C90371C();
    sub_22C36BA4C(&v441);
    v144 = sub_22C3864EC();
    v145(v144);
    sub_22C369908(&v440);
    if (v156)
    {
LABEL_9:
      sub_22C36BA4C(&v439);
      v146 = v425;
      v147(v425, v436);
      sub_22C36BA4C(&v432);
      v148 = v404;
      v149 = v431;
      v150(v404, v146, v431);
      v151 = sub_22C908E7C();
      v153 = v152;
      sub_22C36BA4C(&v431);
      v155 = v148;
      goto LABEL_14;
    }

    sub_22C369908(&v427);
    if (v156)
    {
      sub_22C36BA4C(&v439);
      v157 = sub_22C3864EC();
      v158(v157);
      sub_22C36BA4C(&v414);
      v159 = sub_22C36EE48();
      v149 = v406;
      v160(v159);
      v151 = sub_22C9099DC();
      v153 = v161;
      v162 = &v413;
      goto LABEL_13;
    }

    sub_22C369908(&v416);
    if (v166)
    {
      v168 = 1;
    }

    else
    {
      v168 = v167 == v387;
    }

    if (v168)
    {
      goto LABEL_9;
    }

    sub_22C369908(&v410 + 4);
    if (v156)
    {
      sub_22C36BA4C(&v439);
      v169 = sub_22C3864EC();
      v170(v169);
      sub_22C36BA4C(&v404);
      v171 = sub_22C36EE48();
      v149 = v393;
      v172(v171);
      v151 = sub_22C9037FC();
      v153 = v173;
      v162 = &v403;
LABEL_13:
      sub_22C36BA4C(v162);
      v155 = v143;
LABEL_14:
      v154(v155, v149);
      goto LABEL_15;
    }

    sub_22C36BA4C(&v405);
    v174(v425, v436);
    v151 = 0xD000000000000013;
    v153 = v377;
LABEL_15:
    (*v142)(v424, v435);
    v444 = v23;
    v164 = v23[2];
    v163 = v23[3];
    if (v164 >= v163 >> 1)
    {
      sub_22C369AB0(v163);
      sub_22C7E4C74();
      sub_22C3B5E2C();
      v23 = v444;
    }

    v23[2] = v164 + 1;
    v165 = &v23[2 * v164];
    v165[4] = v151;
    v165[5] = v153;
    v135 += v420;
    --v131;
    v132 = v430;
  }

  while (v131);
  v27 = v384;
  v125 = v398;
  v24 = v373;
LABEL_28:
  v179 = MEMORY[0x2318B7AD0](v23, MEMORY[0x277D837D0]);

  v180 = sub_22C36BA00();
  sub_22C36F9F4(v180, v181, v182);
  sub_22C7E4E74();
  v183 = v379;
  *(v379 + 14) = v179;
  v184 = v381;
  _os_log_impl(&dword_22C366000, v381, BYTE4(v380), "Starting with %ld tools when filtering for QDR tuple generation: %s", v183, 0x16u);
  sub_22C36FF94(v378);
  sub_22C372FB0();
  sub_22C3699EC();

  sub_22C7E43F0();
  v185();
LABEL_29:
  v186 = sub_22C374168(v27 + 19, v27[22]);
  sub_22C7E4A90(v186);
  v187 = 0xD000000000000013;
  sub_22C37931C();
  v189 = v188;
  v190 = sub_22C374168(v27 + 19, v27[22]);
  sub_22C7E4A90(v190);
  sub_22C37931C();
  v396 = v191;

  v388 = v189;
  v192 = sub_22C37170C();
  v401 = sub_22C812724(v192, v193);
  v407 = v194;
  v400 = v195;
  v404 = v196;
  v197 = *(v399 + 16);
  if (v197)
  {
    v424 = *(v432 + 16);
    v198 = *(v432 + 80);
    sub_22C36BA94();
    v187 = (v399 + v199);
    v423 = *(v200 + 56);
    sub_22C7E4C68();
    v409 = v201 + 16;
    v408 = v201 + 8;
    v432 = v202;
    v420 = v202 - 8;
    v421 = (v201 + 32);
    v425 = MEMORY[0x277D84F90];
    v21 = v438;
    v23 = v412;
    do
    {
      v203 = sub_22C36BBCC();
      v424(v203);
      sub_22C9039CC();
      v204 = sub_22C9093BC();
      sub_22C36D0A8(v132, 1, v204);
      if (v156)
      {
        v206 = v429;
        sub_22C36C640(v429, 1, 1, v21);
        v24 = &qword_27D9BB908;
      }

      else
      {
        v205 = v411;
        v24 = &qword_27D9BB908;
        sub_22C4E719C(v132, v411, &qword_27D9BB908, &qword_22C910960);
        sub_22C374490(&v442);
        sub_22C90935C();
        sub_22C36BA4C(&v441);
        v206 = v429;
        v207(v429, v23, v438);
        sub_22C36BECC();
        sub_22C36C640(v208, v209, v210, v438);
        sub_22C36BA4C(&v440);
        v211 = v23;
        v23 = v412;
        v212(v211, v438);
        v213 = v205;
        v21 = v438;
        (*(*(v204 - 8) + 8))(v213, v204);
      }

      v125 = v132;
      sub_22C36DD28(v132, &qword_27D9BB908, &qword_22C910960);
      v214 = v206;
      v215 = v433;
      sub_22C4E7208(v214, v433, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36BA4C(&a14);
      v216(v437, v23);
      sub_22C36D0A8(v215, 1, v21);
      if (v156)
      {
        sub_22C36DD28(v433, &qword_27D9BB0C0, &qword_22C90D960);
      }

      else
      {
        sub_22C7E4C00();
        v125 = *v217;
        (*v217)(v426, v433, v21);
        v24 = v425;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v224 = v24[2];
          sub_22C36D270();
          sub_22C591AD0();
          v24 = v225;
        }

        v220 = v24[2];
        v219 = v24[3];
        if (v220 >= v219 >> 1)
        {
          sub_22C369AB0(v219);
          sub_22C591AD0();
          v24 = v226;
        }

        v24[2] = v220 + 1;
        sub_22C37054C();
        v425 = v24;
        v223 = v24 + v221 + *(v222 + 72) * v220;
        sub_22C7E4C00();
        (v125)();
        v132 = v430;
      }

      v187 = (v187 + v423);
      --v197;
    }

    while (v197);
  }

  else
  {
    v425 = MEMORY[0x277D84F90];
  }

  sub_22C3AD9E8();
  v438 = v227;
  v228 = (v404 >> 1) - v400;
  if (__OFSUB__(v404 >> 1, v400))
  {
    goto LABEL_137;
  }

  v229 = *(v397 + 16);
  if (v229 < v228)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v412 = (v404 >> 1);
  v410 = (v404 >> 1) - v400;
  v411 = sub_22C60607C(v228, v229, v397);
  v132 = v230;
  v197 = v231;
  v426 = v232 >> 1;
  v433 = v434 + 16;
  v429 = v394 + 8;
  v424 = (v392 + 32);
  v437 = (v443 + 16);
  v24 = (v391 + 8);
  v125 = v443 + 8;
  v423 = v392 + 8;
  v413 = v434 + 32;
  v432 = v434 + 8;
  v421 = MEMORY[0x277D84F90];
  v233 = v435;
  sub_22C7E4C3C();
  v23 = v431;
  v420 = v234;
LABEL_48:
  while (v197 != v426)
  {
    if (v197 >= v426)
    {
      goto LABEL_134;
    }

    v430 = *(v434 + 72);
    (*(v434 + 16))(v21, v132 + v430 * v197++, v233);
    sub_22C90371C();
    sub_22C9036BC();
    sub_22C7E49CC();
    v235 = sub_22C3864EC();
    v236(v235);
    sub_22C36D0A8(v187, 1, v23);
    if (!v156)
    {
      v425 = v197;
      sub_22C37ED90();
      v238 = sub_22C36BBCC();
      v239(v238);
      v240 = sub_22C908DCC();
      v132 = 0;
      v23 = *(v240 + 16);
      while (1)
      {
        if (v23 == v132)
        {

          sub_22C36BA4C(&a17);
          v23 = v431;
          v262(v427, v431);
          sub_22C3704B8();
          v21 = v422;
          v233 = v435;
          v263(v422, v435);
          v187 = v415;
LABEL_62:
          v132 = v420;
          v197 = v425;
          goto LABEL_48;
        }

        if (v132 >= *(v240 + 16))
        {
          break;
        }

        v241 = v443;
        v242 = *(v443 + 80);
        sub_22C36BA94();
        v21 = v440;
        v244 = (*(v241 + 16))(v439, v240 + v243 + *(v241 + 72) * v132++, v440);
        v245 = v441;
        MEMORY[0x2318B6CE0](v244);
        v246 = sub_22C9093DC();
        (*v24)(v245, v442);
        v197 = sub_22C7D1FCC(v438, v246);

        v247 = *(v241 + 8);
        v248 = sub_22C37335C();
        v249(v248);
        if ((v197 & 1) == 0)
        {
          sub_22C36BA4C(&a17);
          v23 = v431;
          v250(v427, v431);

          sub_22C7E4C68();
          v252 = *v251;
          (*v251)(v414, v422, v435);
          v187 = v421;
          v253 = swift_isUniquelyReferenced_nonNull_native();
          v445 = v187;
          if ((v253 & 1) == 0)
          {
            v254 = v187[2];
            v255 = sub_22C373310();
            sub_22C3B60C0(v255, v256, v257);
            v187 = v445;
          }

          v259 = v187[2];
          v258 = v187[3];
          if (v259 >= v258 >> 1)
          {
            v264 = sub_22C369AB0(v258);
            sub_22C3B60C0(v264, v259 + 1, 1);
            v187 = v445;
          }

          v187[2] = v259 + 1;
          v260 = *(v434 + 80);
          sub_22C36BA94();
          v421 = v187;
          v261 = v435;
          sub_22C7E4C68();
          v252();
          v233 = v261;
          sub_22C7E4C3C();
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    sub_22C3704B8();
    v237(v21, v233);
    sub_22C36DD28(v187, &qword_27D9BC1E8, &qword_22C9123B0);
  }

  swift_unknownObjectRelease();

  v24 = sub_22C812724(v396, v421);
  v443 = v265;
  v439 = v266;
  v268 = v267;
  sub_22C36D818(&v420);
  sub_22C90407C();
  sub_22C7E4CC8();
  swift_unknownObjectRetain();
  v269 = sub_22C9063CC();
  v132 = sub_22C90AACC();
  swift_unknownObjectRelease();
  v270 = os_log_type_enabled(v269, v132);
  v427 = v24;
  v440 = v268;
  if (!v270)
  {

    sub_22C7E4BE0(&v429);
    sub_22C7E43F0();
    v311();
    goto LABEL_87;
  }

  v125 = sub_22C383050();
  v271 = sub_22C370060();
  v23 = v271;
  v445 = v271;
  *v125 = 134218242;
  *(v125 + 4) = v388;
  *(v125 + 12) = 2080;
  v24 = MEMORY[0x277D84F90];
  if (!v410)
  {
    goto LABEL_86;
  }

  v414 = v271;
  v415 = v125;
  LODWORD(v420) = v132;
  v421 = v269;
  v444 = MEMORY[0x277D84F90];
  v272 = v410;
  sub_22C3B5E2C();
  if (v272 < 0)
  {
    __break(1u);
    goto LABEL_144;
  }

  v24 = v444;
  v23 = (v394 + 88);
  v273 = *MEMORY[0x277D1ECE0];
  LODWORD(v442) = *MEMORY[0x277D1ECE8];
  LODWORD(v441) = *MEMORY[0x277D1ECD8];
  sub_22C3819C0();
  v426 = v274;
  v197 = v275 + 96;
  sub_22C7E4A18();
  v425 = v276;
  v422 = v277 + 8;
  LODWORD(v438) = *MEMORY[0x277D1ECD0];
  v437 = (v389 + 32);
  v430 = v389 + 8;
  v21 = v400;
  LODWORD(v428) = *MEMORY[0x277D1ECF8];
  v278 = v412;
  while (2)
  {
    if (v21 >= v278)
    {
      goto LABEL_135;
    }

    v279 = v407 + *(v434 + 72) * v21;
    v280 = *(v434 + 16);
    v281 = sub_22C7E4BEC();
    v282(v281);
    sub_22C37BA44(&a13);
    sub_22C90371C();
    v283 = *v23;
    v284 = sub_22C3864EC();
    v286 = v285(v284);
    if (v286 == v273)
    {
LABEL_69:
      v287 = sub_22C38B51C();
      v288(v287);
      sub_22C37ED90();
      v289 = sub_22C36EE48();
      v290(v289);
      sub_22C908E7C();
      sub_22C7E49C0();
      v291 = &a17;
      goto LABEL_70;
    }

    if (v286 == v442)
    {
      v293 = sub_22C38B51C();
      v294(v293);
      v295 = *v437;
      v296 = sub_22C36EE48();
      v297(v296);
      sub_22C9099DC();
      sub_22C7E49C0();
      v292 = v430;
      goto LABEL_73;
    }

    if (v286 == v441 || v286 == v438)
    {
      goto LABEL_69;
    }

    if (v286 == v428)
    {
      v305 = sub_22C38B51C();
      v306(v305);
      v307 = *v425;
      v308 = sub_22C36EE48();
      v309(v308);
      sub_22C9037FC();
      sub_22C7E49C0();
      v291 = &a16;
LABEL_70:
      v292 = *(v291 - 32);
LABEL_73:
      v298 = *v292;
      v299 = sub_22C372FA4();
      v300(v299);
    }

    else
    {
      sub_22C7E49CC();
      v310(v419, v436);
      v132 = 0xD000000000000013;
      v268 = v426;
    }

    sub_22C3704B8();
    v301(v418, v233);
    v444 = v24;
    v125 = v24[2];
    v302 = v24[3];
    if (v125 >= v302 >> 1)
    {
      sub_22C369AB0(v302);
      sub_22C379C28();
      sub_22C3B5E2C();
      v24 = v444;
    }

    v24[2] = v125 + 1;
    v303 = &v24[2 * v125];
    v303[4] = v132;
    v303[5] = v268;
    ++v21;
    v278 = v412;
    v233 = v435;
    if (v412 != v21)
    {
      continue;
    }

    break;
  }

  v269 = v421;
  v132 = v420;
  v125 = v415;
  v23 = v414;
LABEL_86:
  MEMORY[0x2318B7AD0](v24, MEMORY[0x277D837D0]);

  v312 = sub_22C37170C();
  v315 = sub_22C36F9F4(v312, v313, v314);

  *(v125 + 14) = v315;
  _os_log_impl(&dword_22C366000, v269, v132, "QDR Filtered to top-%ld semantic tools: %s", v125, 0x16u);
  sub_22C36FF94(v23);
  sub_22C370510();
  sub_22C3699EC();

  sub_22C7E4BE0(&v429);
  sub_22C7E43F0();
  v316();
  sub_22C7E4CC8();
  v24 = v427;
LABEL_87:
  sub_22C37A078(&v421);
  sub_22C90407C();
  swift_unknownObjectRetain();
  v21 = sub_22C9063CC();
  v317 = sub_22C90AACC();
  swift_unknownObjectRelease();
  LODWORD(v425) = v317;
  os_log_type_enabled(v21, v317);
  v125 = v440 >> 1;
  sub_22C7E4960();
  v442 = v125;
  if (!v318)
  {

    sub_22C37170C();
    sub_22C7E43F0();
    v357();
    v21 = v440;
LABEL_112:
    v125 = sub_22C374168(v317 + 14, v317[17]);
    if ((v404 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_114:
      sub_22C46FEFC(v197, v407, v400, v404);
      v364 = v363;
      goto LABEL_123;
    }

    sub_22C90B50C();
    swift_unknownObjectRetain_n();
    v365 = swift_dynamicCastClass();
    if (!v365)
    {
      swift_unknownObjectRelease();
      v365 = MEMORY[0x277D84F90];
    }

    v366 = *(v365 + 16);

    if (v366 == v410)
    {
      v364 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v364)
      {
        if (v21)
        {
LABEL_124:
          sub_22C90B50C();
          swift_unknownObjectRetain_n();
          v369 = swift_dynamicCastClass();
          if (!v369)
          {
            swift_unknownObjectRelease();
            v369 = MEMORY[0x277D84F90];
          }

          v370 = *(v369 + 16);

          if (__OFSUB__(v442, v439))
          {
            __break(1u);
          }

          else if (v370 == v442 - v439)
          {
            v368 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v368)
            {
LABEL_131:
              v445 = v364;
              sub_22C3CF058(v368);
              sub_22C7E7254(v445, v23, v132, *v125, *(v125 + 8), *(v125 + 16), v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_132;
            }

            v368 = MEMORY[0x277D84F90];
LABEL_130:
            swift_unknownObjectRelease();
            goto LABEL_131;
          }

          swift_unknownObjectRelease();
LABEL_121:
          sub_22C46FEFC(v24, v443, v439, v21);
          v368 = v367;
          goto LABEL_130;
        }

LABEL_120:
        swift_unknownObjectRetain();
        goto LABEL_121;
      }

      v364 = MEMORY[0x277D84F90];
LABEL_123:
      swift_unknownObjectRelease();
      if (v21)
      {
        goto LABEL_124;
      }

      goto LABEL_120;
    }

LABEL_140:
    swift_unknownObjectRelease();
    goto LABEL_114;
  }

  v422 = v21;
  sub_22C383050();
  v319 = sub_22C385814();
  v445 = v319;
  *v197 = 134218242;
  *(v197 + 4) = v396;
  *(v197 + 12) = 2080;
  v320 = v125 - v439;
  if (__OFSUB__(v125, v439))
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v421 = v319;
  v24 = MEMORY[0x277D84F90];
  v23 = v431;
  v132 = v422;
  v21 = v440;
  if (!v320)
  {
LABEL_111:
    MEMORY[0x2318B7AD0](v24, MEMORY[0x277D837D0]);

    v358 = sub_22C37170C();
    v361 = sub_22C36F9F4(v358, v359, v360);

    *(v197 + 14) = v361;
    _os_log_impl(&dword_22C366000, v132, v425, "QDR Filtered to top-%ld tools with compatible span matches: %s", v197, 0x16u);
    v317 = v421;
    sub_22C36FF94(v421);
    sub_22C3699EC();
    sub_22C36C30C();

    sub_22C7E43F0();
    v362();
    sub_22C7E4960();
    sub_22C7E4CC8();
    v24 = v427;
    goto LABEL_112;
  }

  v321 = v125;
  v415 = v197;
  v444 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  if ((v320 & 0x8000000000000000) == 0)
  {
    v24 = v444;
    v322 = (v394 + 88);
    v125 = *MEMORY[0x277D1ECE0];
    LODWORD(v441) = *MEMORY[0x277D1ECE8];
    LODWORD(v438) = *MEMORY[0x277D1ECD8];
    sub_22C3819C0();
    v420 = v323;
    v21 = v324 + 96;
    sub_22C7E4A18();
    v419 = v325;
    v418 = v326 + 8;
    LODWORD(v437) = *MEMORY[0x277D1ECD0];
    v430 = v389 + 32;
    v428 = v389 + 8;
    v197 = v439;
    LODWORD(v426) = *MEMORY[0x277D1ECF8];
    while (1)
    {
      if (v197 >= v321)
      {
        goto LABEL_136;
      }

      v327 = v443 + *(v434 + 72) * v197;
      v328 = *(v434 + 16);
      v329 = sub_22C7E4BEC();
      v330(v329);
      sub_22C37BA44(&a11);
      sub_22C90371C();
      v331 = *v322;
      v332 = sub_22C3864EC();
      v334 = v333(v332);
      if (v334 != v125)
      {
        if (v334 == v441)
        {
          v340.isa = *v21;
          v321 = v417;
          v341 = sub_22C3864EC();
          v342(v341);
          v343 = *v430;
          v344 = sub_22C36EE48();
          v23 = v406;
          v345(v344);
          sub_22C9099DC();
          sub_22C7E49C0();
LABEL_97:
          v339 = sub_22C38C41C();
          goto LABEL_98;
        }

        if (v334 != v438 && v334 != v437)
        {
          if (v334 != v426)
          {
            sub_22C7E49CC();
            v356(v417, v436);
            v132 = 0xD000000000000013;
            v321 = v420;
            goto LABEL_99;
          }

          v351.isa = *v21;
          v321 = v417;
          v352 = sub_22C3864EC();
          v353(v352);
          sub_22C36BA4C(&a13);
          v354 = sub_22C36EE48();
          v23 = v393;
          v355(v354);
          sub_22C9037FC();
          sub_22C7E49C0();
          goto LABEL_97;
        }
      }

      (*v21)(v417, v436);
      sub_22C37ED90();
      v335 = v402;
      v336 = sub_22C4F6088();
      v337(v336);
      sub_22C908E7C();
      sub_22C7E49C0();
      sub_22C36BA4C(&a17);
      v339 = v335;
      v233 = v435;
LABEL_98:
      v338(v339, v23);
LABEL_99:
      sub_22C3704B8();
      v346(v416, v233);
      v444 = v24;
      v348 = v24[2];
      v347 = v24[3];
      if (v348 >= v347 >> 1)
      {
        sub_22C369AB0(v347);
        sub_22C379C28();
        sub_22C3B5E2C();
        v24 = v444;
      }

      v24[2] = v348 + 1;
      v349 = &v24[2 * v348];
      v349[4] = v132;
      v349[5] = v321;
      ++v197;
      v321 = v442;
      v23 = v431;
      v233 = v435;
      if (v442 == v197)
      {
        v21 = v440;
        v132 = v422;
        v197 = v415;
        goto LABEL_111;
      }
    }
  }

LABEL_144:
  __break(1u);
}