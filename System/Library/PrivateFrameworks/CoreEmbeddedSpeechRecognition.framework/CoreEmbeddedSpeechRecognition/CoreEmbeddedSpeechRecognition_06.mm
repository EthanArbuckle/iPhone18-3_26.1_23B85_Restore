uint64_t sub_225FD0298()
{
  v111 = v0;
  v1 = *(v0 + 184);
  *(v0 + 16) = v0;
  v105 = [v1 language];
  if (v105)
  {
    v100 = sub_226099A08();
    v101 = v2;
    MEMORY[0x277D82BD8](v105);
    v102 = v100;
    v103 = v101;
  }

  else
  {
    v102 = 0;
    v103 = 0;
  }

  if (!v103)
  {
    return sub_22609A3B8();
  }

  v3 = *(v104 + 200);
  v99 = sub_225FCF95C(v102, v103);

  if ((v99 & 1) == 0)
  {
    v15 = *(v104 + 232);
    v32 = *(v104 + 216);
    v31 = *(v104 + 224);
    v16 = sub_225F7E9BC();
    (*(v31 + 16))(v15, v16, v32);
    v34 = sub_226098C48();
    v33 = sub_22609A088();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v35 = sub_22609A4F8();
    if (os_log_type_enabled(v34, v33))
    {
      v27 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v28 = sub_225EF5468(0);
      v29 = sub_225EF5468(0);
      *(v104 + 48) = v27;
      *(v104 + 56) = v28;
      *(v104 + 64) = v29;
      sub_225EF54BC(0, (v104 + 48));
      sub_225EF54BC(0, (v104 + 48));
      *(v104 + 72) = v35;
      v30 = swift_task_alloc();
      v30[2] = v104 + 48;
      v30[3] = v104 + 56;
      v30[4] = v104 + 64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v34, v33, "Visual context not supported", v27, 2u);
      sub_225EF7AF4(v28);
      sub_225EF7AF4(v29);
      sub_22609A168();
    }

    v25 = *(v104 + 232);
    v26 = *(v104 + 216);
    v24 = *(v104 + 224);
    MEMORY[0x277D82BD8](v34);
    (*(v24 + 8))(v25, v26);
LABEL_31:
    v17 = *(v104 + 256);
    v20 = *(v104 + 248);
    v21 = *(v104 + 240);
    v22 = *(v104 + 232);
    v23 = *(v104 + 208);

    v18 = *(*(v104 + 16) + 8);
    v19 = *(v104 + 16);

    return v18(0);
  }

  v98 = [*(v104 + 184) messagesContext];
  if (v98)
  {
    sub_22601FA78();
    v96 = sub_226099C88();
    MEMORY[0x277D82BD8](v98);
    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  *(v104 + 264) = v97;
  if (!v97)
  {
LABEL_25:
    v13 = *(v104 + 240);
    v44 = *(v104 + 216);
    v43 = *(v104 + 224);
    v14 = sub_225F7E9BC();
    (*(v43 + 16))(v13, v14, v44);
    v46 = sub_226098C48();
    v45 = sub_22609A088();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v47 = sub_22609A4F8();
    if (os_log_type_enabled(v46, v45))
    {
      v39 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v40 = sub_225EF5468(0);
      v41 = sub_225EF5468(0);
      *(v104 + 80) = v39;
      *(v104 + 88) = v40;
      *(v104 + 96) = v41;
      sub_225EF54BC(0, (v104 + 80));
      sub_225EF54BC(0, (v104 + 80));
      *(v104 + 104) = v47;
      v42 = swift_task_alloc();
      v42[2] = v104 + 80;
      v42[3] = v104 + 88;
      v42[4] = v104 + 96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v46, v45, "No visual context entities to fetch", v39, 2u);
      sub_225EF7AF4(v40);
      sub_225EF7AF4(v41);
      sub_22609A168();
    }

    v37 = *(v104 + 240);
    v38 = *(v104 + 216);
    v36 = *(v104 + 224);
    MEMORY[0x277D82BD8](v46);
    (*(v36 + 8))(v37, v38);
    goto LABEL_31;
  }

  *(v104 + 112) = v97;
  *(v104 + 120) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
  sub_22601F9F0();
  if (sub_22609A008())
  {

    goto LABEL_25;
  }

  v95 = *sub_225F82870();

  sub_225F8798C(sub_225FD1CB4, 0, v95, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);

  v94 = *(v104 + 297);
  *(v104 + 296) = v94 & 1;
  if ((v94 & 1) == 0)
  {
    v11 = *(v104 + 248);
    v56 = *(v104 + 216);
    v55 = *(v104 + 224);
    v12 = sub_225F7E9BC();
    (*(v55 + 16))(v11, v12, v56);
    log = sub_226098C48();
    v57 = sub_22609A088();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v59 = sub_22609A4F8();
    if (os_log_type_enabled(log, v57))
    {
      v51 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v52 = sub_225EF5468(0);
      v53 = sub_225EF5468(0);
      *(v104 + 128) = v51;
      *(v104 + 136) = v52;
      *(v104 + 144) = v53;
      sub_225EF54BC(0, (v104 + 128));
      sub_225EF54BC(0, (v104 + 128));
      *(v104 + 152) = v59;
      v54 = swift_task_alloc();
      v54[2] = v104 + 128;
      v54[3] = v104 + 136;
      v54[4] = v104 + 144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, log, v57, "Visual context task in progress. Skip", v51, 2u);
      sub_225EF7AF4(v52);
      sub_225EF7AF4(v53);
      sub_22609A168();
    }

    v49 = *(v104 + 248);
    v50 = *(v104 + 216);
    v48 = *(v104 + 224);
    MEMORY[0x277D82BD8](log);
    (*(v48 + 8))(v49, v50);

    goto LABEL_31;
  }

  v5 = *(v104 + 256);
  v83 = *(v104 + 216);
  v82 = *(v104 + 224);
  v6 = sub_225F7E9BC();
  (*(v82 + 16))(v5, v6, v83);
  v84 = swift_allocObject();
  *(v84 + 16) = v94;
  oslog = sub_226098C48();
  v93 = sub_22609A088();
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = 4;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_225EF3E24;
  *(v85 + 24) = v84;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_225EF70FC;
  *(v86 + 24) = v85;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_225EF7108;
  *(v87 + 24) = v86;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_225EF7150;
  *(v90 + 24) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v91 = v7;

  *v91 = sub_225EF7434;
  v91[1] = v88;

  v91[2] = sub_225EF7434;
  v91[3] = v89;

  v91[4] = sub_225EF715C;
  v91[5] = v90;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v93))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v80 = sub_225EF5468(0);
    v81 = sub_225EF5468(0);
    v106 = buf;
    v107 = v80;
    v108 = v81;
    sub_225EF54BC(0, &v106);
    sub_225EF54BC(1, &v106);
    v109 = sub_225EF7434;
    v110 = v88;
    sub_225EF73E8(&v109, &v106, &v107, &v108);
    v109 = sub_225EF7434;
    v110 = v89;
    sub_225EF73E8(&v109, &v106, &v107, &v108);
    v109 = sub_225EF715C;
    v110 = v90;
    sub_225EF73E8(&v109, &v106, &v107, &v108);
    _os_log_impl(&dword_225EEB000, oslog, v93, "Visual context task proceed = %{BOOL}d", buf, 8u);
    sub_225EF7AF4(v80);
    sub_225EF7AF4(v81);
    sub_22609A168();
  }

  else
  {
  }

  v61 = *(v104 + 256);
  v62 = *(v104 + 216);
  v75 = *(v104 + 208);
  v74 = *(v104 + 200);
  v63 = *(v104 + 192);
  v69 = *(v104 + 184);
  v60 = *(v104 + 224);
  MEMORY[0x277D82BD8](oslog);
  (*(v60 + 8))(v61, v62);
  v72 = sub_226099DA8();
  v73 = *(*(v72 - 8) + 56);
  v73(v75, 1);
  sub_2260998E8();
  v67 = sub_226098A78();
  v66 = *(v67 - 8);
  v64 = *(v66 + 64);
  v70 = swift_task_alloc();
  (*(v66 + 16))(v70, v63, v67);
  MEMORY[0x277D82BE0](v69);
  v65 = (*(v66 + 80) + 40) & ~*(v66 + 80);
  v68 = (v65 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  *(v71 + 2) = 0;
  *(v71 + 3) = 0;
  *(v71 + 4) = v97;
  (*(v66 + 32))(&v71[v65], v70, v67);
  *&v71[v68] = v69;
  *&v71[(v68 + 15) & 0xFFFFFFFFFFFFFFF8] = v74;

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
  v76 = sub_225F38F2C(0, 0, v75, &unk_2260A0A60, v71, v78);
  *(v104 + 272) = v76;
  *(v104 + 160) = v76;
  (v73)(v75, 1, 1, v72);

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v76;
  v8[5] = v74;
  v77 = sub_225F38F2C(0, 0, v75, &unk_2260A0A78, v8, v78);
  *(v104 + 280) = v77;
  *(v104 + 168) = v77;
  v9 = *(MEMORY[0x277D857E0] + 4);
  v10 = swift_task_alloc();
  *(v104 + 288) = v10;
  *v10 = *(v104 + 16);
  v10[1] = sub_225FD1A6C;

  return MEMORY[0x282200460](v104 + 176, v77, v78);
}

uint64_t sub_225FD1A6C()
{
  v4 = *v0;
  v1 = *(*v0 + 288);
  *(v4 + 16) = *v0;

  v2 = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_225FD1B84, 0, 0);
}

uint64_t sub_225FD1B84()
{
  v1 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  v0[2] = v0;
  v12 = v0[22];

  v2 = v0[32];
  v8 = v0[31];
  v9 = v0[30];
  v10 = v0[29];
  v11 = v0[26];

  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3(v12);
}

char *sub_225FD1CB4@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  *result = 1;
  *a2 = (v3 ^ 1) & 1;
  return result;
}

uint64_t sub_225FD1D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 456) = a6;
  *(v6 + 448) = a5;
  *(v6 + 440) = a4;
  *(v6 + 432) = a1;
  *(v6 + 288) = v6;
  *(v6 + 296) = 0;
  *(v6 + 304) = 0;
  *(v6 + 312) = 0;
  *(v6 + 320) = 0;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 504) = 0;
  *(v6 + 376) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 208) = 0;
  *(v6 + 216) = 0;
  *(v6 + 392) = 0;
  memset((v6 + 56), 0, 0x28uLL);
  *(v6 + 408) = 0;
  v7 = sub_226098C58();
  *(v6 + 464) = v7;
  v10 = *(v7 - 8);
  *(v6 + 472) = v10;
  v11 = *(v10 + 64);
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 296) = a4;
  *(v6 + 304) = a5;
  *(v6 + 312) = a6;
  v8 = *(v6 + 288);

  return MEMORY[0x2822009F8](sub_225FD1EB4, 0, 0);
}

void sub_225FD1EB4()
{
  v160 = v0;
  v1 = v0[62];
  v133 = v0[59];
  v134 = v0[58];
  v136 = v0[55];
  v0[36] = v0;
  v2 = sub_225F7E9BC();
  v135 = *(v133 + 16);
  v135(v1, v2, v134);
  sub_2260998E8();
  v137 = swift_allocObject();
  *(v137 + 16) = v136;
  v143 = sub_226098C48();
  v144 = sub_22609A078();
  v139 = swift_allocObject();
  *(v139 + 16) = 32;
  v140 = swift_allocObject();
  *(v140 + 16) = 8;
  v138 = swift_allocObject();
  *(v138 + 16) = sub_22602482C;
  *(v138 + 24) = v137;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_225EF7B84;
  *(v141 + 24) = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v142 = v3;

  *v142 = sub_225EF7434;
  v142[1] = v139;

  v142[2] = sub_225EF7434;
  v142[3] = v140;

  v142[4] = sub_225EF7B90;
  v142[5] = v141;
  sub_225EF5418();

  if (os_log_type_enabled(v143, v144))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v130 = sub_225EF5468(0);
    v131 = sub_225EF5468(1);
    v155 = buf;
    v156 = v130;
    v157 = v131;
    sub_225EF54BC(2, &v155);
    sub_225EF54BC(1, &v155);
    v158 = sub_225EF7434;
    v159 = v139;
    sub_225EF73E8(&v158, &v155, &v156, &v157);
    v158 = sub_225EF7434;
    v159 = v140;
    sub_225EF73E8(&v158, &v155, &v156, &v157);
    v158 = sub_225EF7B90;
    v159 = v141;
    sub_225EF73E8(&v158, &v155, &v156, &v157);
    _os_log_impl(&dword_225EEB000, v143, v144, "Fetch contextual entities from visual context count: %s", buf, 0xCu);
    sub_225EF7AF4(v130);
    sub_225EF7AF4(v131);
    sub_22609A168();
  }

  else
  {
  }

  v122 = *(v132 + 496);
  v123 = *(v132 + 464);
  v126 = *(v132 + 448);
  v127 = *(v132 + 440);
  v121 = *(v132 + 472);
  MEMORY[0x277D82BD8](v143);
  v124 = *(v121 + 8);
  v124(v122, v123);
  sub_226024834();
  v125 = sub_225F26174();
  *(v132 + 320) = v125;
  type metadata accessor for CESASelfHelper();
  sub_22603E620(v126, 0);
  sub_22609A4F8();
  *(v132 + 328) = sub_226099F08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  *(v132 + 336) = sub_22609A4F8();
  sub_2260998E8();
  *(v132 + 344) = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
  sub_22601F9F0();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CC0, &qword_2260A0E48);
    sub_22609A388();
    v120 = *(v132 + 352);
    if (!v120)
    {
      break;
    }

    *(v132 + 376) = v120;
    v119 = [v120 sender];
    if (v119)
    {
      sub_226099A08();
      v107 = v7;
      MEMORY[0x277D82BD8](v119);
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    if (!v108)
    {
LABEL_42:
      sub_22609A3B8();
      return;
    }

    v106 = sub_226099B18();

    if ((v106 & 1) == 0)
    {
      v105 = [v120 sender];
      if (v105)
      {
        v101 = sub_226099A08();
        v102 = v8;
        MEMORY[0x277D82BD8](v105);
        v103 = v101;
        v104 = v102;
      }

      else
      {
        v103 = 0;
        v104 = 0;
      }

      if (!v104)
      {
        goto LABEL_42;
      }

      v99 = *(v132 + 456);
      *(v132 + 272) = v103;
      *(v132 + 280) = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
      sub_226099F48();
      v9 = *(v132 + 264);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
      sub_22609A4F8();
      v98 = v10;
      v11 = sub_22603F678();
      sub_225F4C5E0(v11, v98);
      v100 = [v99 applicationName];
      if (v100)
      {
        v94 = sub_226099A08();
        v95 = v12;
        MEMORY[0x277D82BD8](v100);
        v96 = v94;
        v97 = v95;
      }

      else
      {
        v96 = 0;
        v97 = 0;
      }

      if (!v97)
      {
        goto LABEL_42;
      }

      v98[2] = v96;
      v98[3] = v97;
      v13 = sub_22603F6D8();
      sub_225F4C5E0(v13, v98 + 4);
      v14 = sub_22603F738();
      sub_225F4C5E0(v14, v98 + 6);
      sub_225EF5418();
      *(v132 + 424) = sub_2260998A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
      sub_226099CE8();
    }

    v93 = [v120 messages];
    if (v93)
    {
      v91 = sub_226099C88();
      MEMORY[0x277D82BD8](v93);
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    if (!v92)
    {
      goto LABEL_42;
    }

    *(v132 + 384) = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F156F8();
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
      sub_22609A388();
      v90 = *(v132 + 200);
      if (!v90)
      {
        break;
      }

      *(v132 + 208) = *(v132 + 192);
      *(v132 + 216) = v90;
      sub_2260998E8();
      v88 = sub_2260999F8();

      v89 = [v125 tagEntitiesWithTagNamesIn_];
      MEMORY[0x277D82BD8](v88);
      sub_2260249B0();
      sub_226024A14();
      *(v132 + 392) = sub_226099EE8();
      MEMORY[0x277D82BD8](v89);
      sub_2260998E8();
      sub_226099F18();
      memcpy((v132 + 56), (v132 + 16), 0x28uLL);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D50, &unk_2260A0F08);
        sub_226099F68();
        v87 = *(v132 + 400);
        if (!v87)
        {
          break;
        }

        v85 = *(v132 + 456);
        *(v132 + 408) = v87;
        v83 = [v87 entityContent];
        *(v132 + 240) = sub_226099A08();
        *(v132 + 248) = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
        sub_226099F48();
        MEMORY[0x277D82BD8](v83);
        v16 = *(v132 + 232);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
        sub_22609A4F8();
        v84 = v17;
        v18 = sub_22603F678();
        sub_225F4C5E0(v18, v84);
        v86 = [v85 applicationName];
        if (v86)
        {
          v79 = sub_226099A08();
          v80 = v19;
          MEMORY[0x277D82BD8](v86);
          v81 = v79;
          v82 = v80;
        }

        else
        {
          v81 = 0;
          v82 = 0;
        }

        if (!v82)
        {
          goto LABEL_42;
        }

        v84[2] = v81;
        v84[3] = v82;
        v20 = sub_22603F6D8();
        sub_225F4C5E0(v20, v84 + 4);
        v78 = [v87 tagName];
        v84[6] = sub_226099A08();
        v84[7] = v21;
        sub_225EF5418();
        MEMORY[0x277D82BD8](v78);
        *(v132 + 416) = sub_2260998A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
        sub_226099CE8();
        MEMORY[0x277D82BD8](v87);
      }

      sub_225F15874((v132 + 56));
    }

    sub_225EFE6E8((v132 + 176));
    MEMORY[0x277D82BD8](v120);
  }

  v4 = *(v132 + 488);
  v109 = *(v132 + 464);
  sub_225EFE6E8((v132 + 144));
  v5 = sub_225F7E9BC();
  v135(v4, v5, v109);
  v110 = *(v132 + 328);
  sub_2260998E8();
  sub_2260998E8();
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  oslog = sub_226098C48();
  v118 = sub_22609A0A8();
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_226024898;
  *(v112 + 24) = v111;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_225F2D374;
  *(v115 + 24) = v112;
  sub_22609A4F8();
  v116 = v6;

  *v116 = sub_225EF7434;
  v116[1] = v113;

  v116[2] = sub_225EF7434;
  v116[3] = v114;

  v116[4] = sub_225EF71D0;
  v116[5] = v115;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v118))
  {
    v75 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v76 = sub_225EF5468(0);
    v77 = sub_225EF5468(0);
    v150 = v75;
    v151 = v76;
    v152 = v77;
    sub_225EF54BC(0, &v150);
    sub_225EF54BC(1, &v150);
    v153 = sub_225EF7434;
    v154 = v113;
    sub_225EF73E8(&v153, &v150, &v151, &v152);
    v153 = sub_225EF7434;
    v154 = v114;
    sub_225EF73E8(&v153, &v150, &v151, &v152);
    v153 = sub_225EF71D0;
    v154 = v115;
    sub_225EF73E8(&v153, &v150, &v151, &v152);
    _os_log_impl(&dword_225EEB000, oslog, v118, "Found %ld contextual entities in visual context", v75, 0xCu);
    sub_225EF7AF4(v76);
    sub_225EF7AF4(v77);
    sub_22609A168();
  }

  else
  {
  }

  v72 = *(v132 + 488);
  v73 = *(v132 + 464);
  MEMORY[0x277D82BD8](oslog);
  v124(v72, v73);
  swift_beginAccess();
  swift_endAccess();
  v74 = sub_226099F28();

  if (v74 > 0)
  {
    v69 = *(v132 + 456);
    v68 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
    v70 = swift_task_alloc();
    v71 = [v69 requestIdentifier];
    if (v71)
    {
      v64 = sub_226099A08();
      v65 = v22;
      MEMORY[0x277D82BD8](v71);
      v66 = v64;
      v67 = v65;
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

    *(v132 + 160) = v66;
    *(v132 + 168) = v67;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
    v63 = sub_226098A78();
    sub_225FBE9D0(sub_225FBE98C, 0, v62, MEMORY[0x277D84A98], v63, v128, v70);
    sub_225EFE6BC(v132 + 160);
    type metadata accessor for CESAExperimentationManager();
    v60 = swift_task_alloc();
    sub_225F7BF50(v70, v60);
    v61 = *(v63 - 8);
    if ((*(v61 + 48))(v60, 1) == 1)
    {
      v59 = 0;
    }

    else
    {
      v58 = sub_226098A38();
      (*(v61 + 8))(v60, v63);
      v59 = v58;
    }

    sub_226046714(4u, v59);
    MEMORY[0x277D82BD8](v59);

    sub_225F7C078(v70);
  }

  v53 = *(v132 + 448);
  v54 = *(v132 + 336);
  sub_2260998E8();
  sub_22603F798(v53, v54);

  v55 = *sub_225F1B360();

  v56 = sub_225F1B428();
  *(v132 + 504) = v56 & 1;

  v57 = *sub_225F82870();

  sub_225F8798C(sub_225FD46E0, 0, v57, MEMORY[0x277D839B0], MEMORY[0x277D84F78] + 8);
  v23 = *(v132 + 480);
  v42 = *(v132 + 464);

  v24 = sub_225F7E9BC();
  v135(v23, v24, v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v56 & 1;
  log = sub_226098C48();
  v52 = sub_22609A0A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 4;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225EF3E24;
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_225EF70FC;
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225EF7108;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225EF7150;
  *(v49 + 24) = v46;
  sub_22609A4F8();
  v50 = v25;

  *v50 = sub_225EF7434;
  v50[1] = v47;

  v50[2] = sub_225EF7434;
  v50[3] = v48;

  v50[4] = sub_225EF715C;
  v50[5] = v49;
  sub_225EF5418();

  if (os_log_type_enabled(log, v52))
  {
    v39 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v40 = sub_225EF5468(0);
    v41 = sub_225EF5468(0);
    v145 = v39;
    v146 = v40;
    v147 = v41;
    sub_225EF54BC(0, &v145);
    sub_225EF54BC(1, &v145);
    v148 = sub_225EF7434;
    v149 = v47;
    sub_225EF73E8(&v148, &v145, &v146, &v147);
    v148 = sub_225EF7434;
    v149 = v48;
    sub_225EF73E8(&v148, &v145, &v146, &v147);
    v148 = sub_225EF715C;
    v149 = v49;
    sub_225EF73E8(&v148, &v145, &v146, &v147);
    _os_log_impl(&dword_225EEB000, log, v52, "Visual context config enabled:%{BOOL}d", v39, 8u);
    sub_225EF7AF4(v40);
    sub_225EF7AF4(v41);
    sub_22609A168();
  }

  else
  {
  }

  v37 = *(v132 + 480);
  v38 = *(v132 + 464);
  MEMORY[0x277D82BD8](log);
  v124(v37, v38);
  if (v56)
  {
    swift_beginAccess();
    v33 = *(v132 + 328);
    sub_2260998E8();
    swift_endAccess();
    *(v132 + 360) = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
    v35 = sub_226099628();
    v26 = sub_2260248A0();
    v36 = sub_225F15970(sub_225FD46FC, 0, v34, v35, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v128);
    v32 = *(v132 + 432);
    sub_225EFE6E8((v132 + 360));
    *(v132 + 368) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D20, &qword_2260A0F00);
    sub_226024928();
    *v32 = sub_226099D18();
  }

  else
  {
    **(v132 + 432) = 0;
  }

  sub_225EFE6E8((v132 + 336));
  sub_225EFE6E8((v132 + 328));
  MEMORY[0x277D82BD8](v125);
  v27 = *(v132 + 496);
  v30 = *(v132 + 488);
  v31 = *(v132 + 480);

  v28 = *(*(v132 + 288) + 8);
  v29 = *(v132 + 288);

  v28();
}

uint64_t sub_225FD4630()
{
  sub_22601FA78();
  sub_226099CD8();
  return sub_226099A28();
}

uint64_t sub_225FD4684()
{
  sub_2260998E8();
  v1 = sub_226099F28();

  return v1;
}

uint64_t sub_225FD46FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2260998E8();
  return sub_2260995F8();
}

uint64_t sub_225FD4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 224) = a4;
  *(v4 + 216) = a1;
  *(v4 + 128) = v4;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 416) = 0;
  v5 = sub_22609A358();
  *(v4 + 232) = v5;
  v11 = *(v5 - 8);
  *(v4 + 240) = v11;
  v6 = *(v11 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v7 = sub_22609A348();
  *(v4 + 256) = v7;
  v12 = *(v7 - 8);
  *(v4 + 264) = v12;
  v13 = *(v12 + 64);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v8 = sub_226098C58();
  *(v4 + 288) = v8;
  v14 = *(v8 - 8);
  *(v4 + 296) = v14;
  v15 = *(v14 + 64);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 136) = a4;
  v9 = *(v4 + 128);

  return MEMORY[0x2822009F8](sub_225FD4978, 0, 0);
}

uint64_t sub_225FD4978()
{
  v0[16] = v0;
  v1 = swift_allocObject();
  v0[41] = v1;
  v0[18] = v1 + 16;
  *(v1 + 16) = 0;
  v66 = v0[41];
  swift_beginAccess();
  v67 = *(v66 + 16);
  swift_endAccess();
  if (v67 < 60)
  {
    v54 = *(v65 + 328);
    v2 = *(v65 + 320);
    v52 = *(v65 + 288);
    v51 = *(v65 + 296);
    v3 = sub_225F7E9BC();
    v4 = *(v51 + 16);
    *(v65 + 336) = v4;
    *(v65 + 344) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v2, v3, v52);

    v63 = sub_226098C48();
    v64 = sub_22609A078();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_225FD8A38;
    *(v53 + 24) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_225F2D374;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_225F2D274;
    *(v55 + 24) = v54;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_225F2D374;
    *(v61 + 24) = v55;
    *(v65 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v62 = v5;

    *v62 = sub_225EF7434;
    v62[1] = v56;

    v62[2] = sub_225EF7434;
    v62[3] = v57;

    v62[4] = sub_225EF71D0;
    v62[5] = v58;

    v62[6] = sub_225EF7434;
    v62[7] = v59;

    v62[8] = sub_225EF7434;
    v62[9] = v60;

    v62[10] = sub_225EF71D0;
    v62[11] = v61;
    sub_225EF5418();

    if (os_log_type_enabled(v63, v64))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v49 = sub_225EF5468(0);
      v50 = sub_225EF5468(0);
      *(v65 + 192) = buf;
      *(v65 + 200) = v49;
      *(v65 + 208) = v50;
      sub_225EF54BC(0, (v65 + 192));
      sub_225EF54BC(2, (v65 + 192));
      *(v65 + 112) = sub_225EF7434;
      *(v65 + 120) = v56;
      sub_225EF73E8(v65 + 112, v65 + 192, v65 + 200, v65 + 208);
      *(v65 + 112) = sub_225EF7434;
      *(v65 + 120) = v57;
      sub_225EF73E8(v65 + 112, v65 + 192, v65 + 200, v65 + 208);
      *(v65 + 112) = sub_225EF71D0;
      *(v65 + 120) = v58;
      sub_225EF73E8(v65 + 112, v65 + 192, v65 + 200, v65 + 208);
      *(v65 + 112) = sub_225EF7434;
      *(v65 + 120) = v59;
      sub_225EF73E8(v65 + 112, v65 + 192, v65 + 200, v65 + 208);
      *(v65 + 112) = sub_225EF7434;
      *(v65 + 120) = v60;
      sub_225EF73E8(v65 + 112, v65 + 192, v65 + 200, v65 + 208);
      *(v65 + 112) = sub_225EF71D0;
      *(v65 + 120) = v61;
      sub_225EF73E8(v65 + 112, v65 + 192, v65 + 200, v65 + 208);
      _os_log_impl(&dword_225EEB000, v63, v64, "Start polling for fetching visual context entities at %ldms cadence and total wait %ldms", buf, 0x16u);
      sub_225EF7AF4(v49);
      sub_225EF7AF4(v50);
      sub_22609A168();
    }

    v39 = *(v65 + 320);
    v40 = *(v65 + 288);
    v41 = *(v65 + 280);
    v43 = *(v65 + 272);
    v44 = *(v65 + 256);
    v45 = *(v65 + 248);
    v46 = *(v65 + 232);
    v38 = *(v65 + 296);
    v42 = *(v65 + 264);
    MEMORY[0x277D82BD8](v63);
    v6 = *(v38 + 8);
    *(v65 + 360) = v6;
    *(v65 + 368) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v39, v40);
    sub_22609A328();
    *(v65 + 184) = 20;
    sub_225EF81C4();
    sub_22609A618();
    sub_225FD8A44();
    v7 = *(v42 + 8);
    *(v65 + 376) = v7;
    *(v65 + 384) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v43, v44);
    *(v65 + 88) = 0;
    *(v65 + 96) = 0;
    *(v65 + 104) = 1;
    v47 = sub_225F3E9A8();
    sub_225F7E764();
    v8 = *(MEMORY[0x277D857F0] + 4);
    v9 = swift_task_alloc();
    *(v65 + 392) = v9;
    *v9 = *(v65 + 128);
    v9[1] = sub_225FD58F0;
    v10 = *(v65 + 280);
    v11 = *(v65 + 248);
    v12 = *(v65 + 232);

    return MEMORY[0x282200488](v10, v65 + 88, v11, v12, v47);
  }

  else
  {
    v13 = *(v65 + 304);
    v34 = *(v65 + 288);
    v33 = *(v65 + 296);
    v14 = sub_225F7E9BC();
    (*(v33 + 16))(v13, v14, v34);
    oslog = sub_226098C48();
    v35 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v37 = sub_22609A4F8();
    if (os_log_type_enabled(oslog, v35))
    {
      v29 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v30 = sub_225EF5468(0);
      v31 = sub_225EF5468(0);
      *(v65 + 152) = v29;
      *(v65 + 160) = v30;
      *(v65 + 168) = v31;
      sub_225EF54BC(0, (v65 + 152));
      sub_225EF54BC(0, (v65 + 152));
      *(v65 + 176) = v37;
      v32 = swift_task_alloc();
      v32[2] = v65 + 152;
      v32[3] = v65 + 160;
      v32[4] = v65 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, oslog, v35, "Abort polling fetching visual context entities", v29, 2u);
      sub_225EF7AF4(v30);
      sub_225EF7AF4(v31);
      sub_22609A168();
    }

    v23 = *(v65 + 328);
    v20 = *(v65 + 304);
    v21 = *(v65 + 288);
    v22 = *(v65 + 216);
    v19 = *(v65 + 296);
    MEMORY[0x277D82BD8](oslog);
    (*(v19 + 8))(v20, v21);
    *v22 = 0;

    v15 = *(v65 + 320);
    v24 = *(v65 + 312);
    v25 = *(v65 + 304);
    v26 = *(v65 + 280);
    v27 = *(v65 + 272);
    v28 = *(v65 + 248);

    v16 = *(*(v65 + 128) + 8);
    v17 = *(v65 + 128);

    return v16();
  }
}

uint64_t sub_225FD58F0()
{
  v11 = *v1;
  v2 = *(*v1 + 392);
  v11[16] = *v1;
  v12 = v11 + 16;
  v11[50] = v0;

  if (v0)
  {
    v5 = *v12;
    v4 = sub_225FD7350;
  }

  else
  {
    v9 = v11[48];
    v10 = v11[47];
    v7 = v11[35];
    v8 = v11[32];
    (*(v11[30] + 8))(v11[31], v11[29]);
    v10(v7, v8);
    v3 = *v12;
    v4 = sub_225FD5AB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_225FD5AB8()
{
  v107 = v0;
  v0[16] = v0;
  v99 = v0[50];
  v100 = v0[41];
  swift_beginAccess();
  v101 = *(v100 + 16);
  v1 = swift_endAccess();
  if (__OFADD__(v101, 20))
  {
    __break(1u);
LABEL_27:
    MEMORY[0x282200460](v1, v2, v3);
    return;
  }

  v69 = *(v98 + 328);
  swift_beginAccess();
  *(v69 + 16) = v101 + 20;
  swift_endAccess();
  v70 = *sub_225F82870();

  sub_225F8798C(sub_225F1B4EC, 0, v70, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);
  if (!v99)
  {

    v16 = *(v98 + 105);
    *(v98 + 416) = v16 & 1;
    if ((v16 & 1) == 0)
    {
      v66 = *(v98 + 352);
      v56 = *(v98 + 344);
      v57 = *(v98 + 336);
      v58 = *(v98 + 328);
      v17 = *(v98 + 312);
      v55 = *(v98 + 288);
      v18 = sub_225F7E9BC();
      v57(v17, v18, v55);

      v59 = *(v58 + 16);

      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      log = sub_226098C48();
      v68 = sub_22609A078();
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = 8;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_226024824;
      *(v61 + 24) = v60;
      v64 = swift_allocObject();
      *(v64 + 16) = sub_225F2D374;
      *(v64 + 24) = v61;
      sub_22609A4F8();
      v65 = v19;

      *v65 = sub_225EF7434;
      v65[1] = v62;

      v65[2] = sub_225EF7434;
      v65[3] = v63;

      v65[4] = sub_225EF71D0;
      v65[5] = v64;
      sub_225EF5418();

      if (os_log_type_enabled(log, v68))
      {
        v52 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v53 = sub_225EF5468(0);
        v54 = sub_225EF5468(0);
        v102 = v52;
        v103 = v53;
        v104 = v54;
        sub_225EF54BC(0, &v102);
        sub_225EF54BC(1, &v102);
        v105 = sub_225EF7434;
        v106 = v62;
        sub_225EF73E8(&v105, &v102, &v103, &v104);
        v105 = sub_225EF7434;
        v106 = v63;
        sub_225EF73E8(&v105, &v102, &v103, &v104);
        v105 = sub_225EF71D0;
        v106 = v64;
        sub_225EF73E8(&v105, &v102, &v103, &v104);
        _os_log_impl(&dword_225EEB000, log, v68, "Cancel polling for fetching visual context entities at total wait %ldms", v52, 0xCu);
        sub_225EF7AF4(v53);
        sub_225EF7AF4(v54);
        sub_22609A168();
      }

      else
      {
      }

      v50 = *(v98 + 368);
      v51 = *(v98 + 360);
      v48 = *(v98 + 312);
      v49 = *(v98 + 288);
      MEMORY[0x277D82BD8](log);
      v51(v48, v49);
      v20 = *(MEMORY[0x277D857E0] + 4);
      v21 = swift_task_alloc();
      *(v98 + 408) = v21;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
      *v21 = *(v98 + 128);
      v21[1] = sub_225FD713C;
      v2 = *(v98 + 224);
      v1 = *(v98 + 216);

      goto LABEL_27;
    }

    v46 = *(v98 + 328);
    swift_beginAccess();
    v47 = *(v46 + 16);
    swift_endAccess();
    if (v47 < 60)
    {
      v87 = *(v98 + 328);
      v5 = *(v98 + 320);
      v85 = *(v98 + 288);
      v84 = *(v98 + 296);
      v6 = sub_225F7E9BC();
      v7 = *(v84 + 16);
      *(v98 + 336) = v7;
      *(v98 + 344) = (v84 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v5, v6, v85);

      oslog = sub_226098C48();
      v97 = sub_22609A078();
      v89 = swift_allocObject();
      *(v89 + 16) = 0;
      v90 = swift_allocObject();
      *(v90 + 16) = 8;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_225FD8A38;
      *(v86 + 24) = 0;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_225F2D374;
      *(v91 + 24) = v86;
      v92 = swift_allocObject();
      *(v92 + 16) = 0;
      v93 = swift_allocObject();
      *(v93 + 16) = 8;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_225F2D274;
      *(v88 + 24) = v87;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_225F2D374;
      *(v94 + 24) = v88;
      *(v98 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      sub_22609A4F8();
      v95 = v8;

      *v95 = sub_225EF7434;
      v95[1] = v89;

      v95[2] = sub_225EF7434;
      v95[3] = v90;

      v95[4] = sub_225EF71D0;
      v95[5] = v91;

      v95[6] = sub_225EF7434;
      v95[7] = v92;

      v95[8] = sub_225EF7434;
      v95[9] = v93;

      v95[10] = sub_225EF71D0;
      v95[11] = v94;
      sub_225EF5418();

      if (os_log_type_enabled(oslog, v97))
      {
        buf = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v82 = sub_225EF5468(0);
        v83 = sub_225EF5468(0);
        *(v98 + 192) = buf;
        *(v98 + 200) = v82;
        *(v98 + 208) = v83;
        sub_225EF54BC(0, (v98 + 192));
        sub_225EF54BC(2, (v98 + 192));
        *(v98 + 112) = sub_225EF7434;
        *(v98 + 120) = v89;
        sub_225EF73E8(v98 + 112, v98 + 192, v98 + 200, v98 + 208);
        *(v98 + 112) = sub_225EF7434;
        *(v98 + 120) = v90;
        sub_225EF73E8(v98 + 112, v98 + 192, v98 + 200, v98 + 208);
        *(v98 + 112) = sub_225EF71D0;
        *(v98 + 120) = v91;
        sub_225EF73E8(v98 + 112, v98 + 192, v98 + 200, v98 + 208);
        *(v98 + 112) = sub_225EF7434;
        *(v98 + 120) = v92;
        sub_225EF73E8(v98 + 112, v98 + 192, v98 + 200, v98 + 208);
        *(v98 + 112) = sub_225EF7434;
        *(v98 + 120) = v93;
        sub_225EF73E8(v98 + 112, v98 + 192, v98 + 200, v98 + 208);
        *(v98 + 112) = sub_225EF71D0;
        *(v98 + 120) = v94;
        sub_225EF73E8(v98 + 112, v98 + 192, v98 + 200, v98 + 208);
        _os_log_impl(&dword_225EEB000, oslog, v97, "Start polling for fetching visual context entities at %ldms cadence and total wait %ldms", buf, 0x16u);
        sub_225EF7AF4(v82);
        sub_225EF7AF4(v83);
        sub_22609A168();
      }

      v72 = *(v98 + 320);
      v73 = *(v98 + 288);
      v74 = *(v98 + 280);
      v76 = *(v98 + 272);
      v77 = *(v98 + 256);
      v78 = *(v98 + 248);
      v79 = *(v98 + 232);
      v71 = *(v98 + 296);
      v75 = *(v98 + 264);
      MEMORY[0x277D82BD8](oslog);
      v9 = *(v71 + 8);
      *(v98 + 360) = v9;
      *(v98 + 368) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9(v72, v73);
      sub_22609A328();
      *(v98 + 184) = 20;
      sub_225EF81C4();
      sub_22609A618();
      sub_225FD8A44();
      v10 = *(v75 + 8);
      *(v98 + 376) = v10;
      *(v98 + 384) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v76, v77);
      *(v98 + 88) = 0;
      *(v98 + 96) = 0;
      *(v98 + 104) = 1;
      v80 = sub_225F3E9A8();
      sub_225F7E764();
      v11 = *(MEMORY[0x277D857F0] + 4);
      v12 = swift_task_alloc();
      *(v98 + 392) = v12;
      *v12 = *(v98 + 128);
      v12[1] = sub_225FD58F0;
      v13 = *(v98 + 280);
      v14 = *(v98 + 248);
      v15 = *(v98 + 232);

      MEMORY[0x282200488](v13, v98 + 88, v14, v15, v80);
    }

    else
    {
      v22 = *(v98 + 304);
      v42 = *(v98 + 288);
      v41 = *(v98 + 296);
      v23 = sub_225F7E9BC();
      (*(v41 + 16))(v22, v23, v42);
      v44 = sub_226098C48();
      v43 = sub_22609A078();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v45 = sub_22609A4F8();
      if (os_log_type_enabled(v44, v43))
      {
        v37 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v38 = sub_225EF5468(0);
        v39 = sub_225EF5468(0);
        *(v98 + 152) = v37;
        *(v98 + 160) = v38;
        *(v98 + 168) = v39;
        sub_225EF54BC(0, (v98 + 152));
        sub_225EF54BC(0, (v98 + 152));
        *(v98 + 176) = v45;
        v40 = swift_task_alloc();
        v40[2] = v98 + 152;
        v40[3] = v98 + 160;
        v40[4] = v98 + 168;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, v44, v43, "Abort polling fetching visual context entities", v37, 2u);
        sub_225EF7AF4(v38);
        sub_225EF7AF4(v39);
        sub_22609A168();
      }

      v31 = *(v98 + 328);
      v28 = *(v98 + 304);
      v29 = *(v98 + 288);
      v30 = *(v98 + 216);
      v27 = *(v98 + 296);
      MEMORY[0x277D82BD8](v44);
      (*(v27 + 8))(v28, v29);
      *v30 = 0;

      v24 = *(v98 + 320);
      v32 = *(v98 + 312);
      v33 = *(v98 + 304);
      v34 = *(v98 + 280);
      v35 = *(v98 + 272);
      v36 = *(v98 + 248);

      v25 = *(*(v98 + 128) + 8);
      v26 = *(v98 + 128);

      v25();
    }
  }
}

uint64_t sub_225FD713C()
{
  v4 = *v0;
  v1 = *(*v0 + 408);
  *(v4 + 128) = *v0;

  v2 = *(v4 + 128);

  return MEMORY[0x2822009F8](sub_225FD7254, 0, 0);
}

uint64_t sub_225FD7254()
{
  v1 = v0[41];
  v0[16] = v0;

  v2 = v0[40];
  v6 = v0[39];
  v7 = v0[38];
  v8 = v0[35];
  v9 = v0[34];
  v10 = v0[31];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3();
}

void sub_225FD7350()
{
  v114 = v0;
  v106 = v0[50];
  v104 = v0[48];
  v105 = v0[47];
  v102 = v0[35];
  v103 = v0[32];
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[29];
  v0[16] = v0;
  (*(v2 + 8))(v1, v3);
  v105(v102, v103);

  v107 = v0[41];
  swift_beginAccess();
  v108 = *(v107 + 16);
  v4 = swift_endAccess();
  if (__OFADD__(v108, 20))
  {
    __break(1u);
LABEL_25:
    MEMORY[0x282200460](v4, v5, v6);
    return;
  }

  v72 = *(v101 + 328);
  swift_beginAccess();
  *(v72 + 16) = v108 + 20;
  swift_endAccess();
  v73 = *sub_225F82870();

  sub_225F8798C(sub_225F1B4EC, 0, v73, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);

  v19 = *(v101 + 105);
  *(v101 + 416) = v19 & 1;
  if ((v19 & 1) == 0)
  {
    v69 = *(v101 + 352);
    v59 = *(v101 + 344);
    v60 = *(v101 + 336);
    v61 = *(v101 + 328);
    v20 = *(v101 + 312);
    v58 = *(v101 + 288);
    v21 = sub_225F7E9BC();
    v60(v20, v21, v58);

    v62 = *(v61 + 16);

    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    log = sub_226098C48();
    v71 = sub_22609A078();
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = 8;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_226024824;
    *(v64 + 24) = v63;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_225F2D374;
    *(v67 + 24) = v64;
    sub_22609A4F8();
    v68 = v22;

    *v68 = sub_225EF7434;
    v68[1] = v65;

    v68[2] = sub_225EF7434;
    v68[3] = v66;

    v68[4] = sub_225EF71D0;
    v68[5] = v67;
    sub_225EF5418();

    if (os_log_type_enabled(log, v71))
    {
      v55 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v56 = sub_225EF5468(0);
      v57 = sub_225EF5468(0);
      v109 = v55;
      v110 = v56;
      v111 = v57;
      sub_225EF54BC(0, &v109);
      sub_225EF54BC(1, &v109);
      v112 = sub_225EF7434;
      v113 = v65;
      sub_225EF73E8(&v112, &v109, &v110, &v111);
      v112 = sub_225EF7434;
      v113 = v66;
      sub_225EF73E8(&v112, &v109, &v110, &v111);
      v112 = sub_225EF71D0;
      v113 = v67;
      sub_225EF73E8(&v112, &v109, &v110, &v111);
      _os_log_impl(&dword_225EEB000, log, v71, "Cancel polling for fetching visual context entities at total wait %ldms", v55, 0xCu);
      sub_225EF7AF4(v56);
      sub_225EF7AF4(v57);
      sub_22609A168();
    }

    else
    {
    }

    v53 = *(v101 + 368);
    v54 = *(v101 + 360);
    v51 = *(v101 + 312);
    v52 = *(v101 + 288);
    MEMORY[0x277D82BD8](log);
    v54(v51, v52);
    v23 = *(MEMORY[0x277D857E0] + 4);
    v24 = swift_task_alloc();
    *(v101 + 408) = v24;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
    *v24 = *(v101 + 128);
    v24[1] = sub_225FD713C;
    v5 = *(v101 + 224);
    v4 = *(v101 + 216);

    goto LABEL_25;
  }

  v49 = *(v101 + 328);
  swift_beginAccess();
  v50 = *(v49 + 16);
  swift_endAccess();
  if (v50 < 60)
  {
    v90 = *(v101 + 328);
    v8 = *(v101 + 320);
    v88 = *(v101 + 288);
    v87 = *(v101 + 296);
    v9 = sub_225F7E9BC();
    v10 = *(v87 + 16);
    *(v101 + 336) = v10;
    *(v101 + 344) = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v8, v9, v88);

    oslog = sub_226098C48();
    v100 = sub_22609A078();
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = 8;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_225FD8A38;
    *(v89 + 24) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_225F2D374;
    *(v94 + 24) = v89;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = 8;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_225F2D274;
    *(v91 + 24) = v90;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_225F2D374;
    *(v97 + 24) = v91;
    *(v101 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v98 = v11;

    *v98 = sub_225EF7434;
    v98[1] = v92;

    v98[2] = sub_225EF7434;
    v98[3] = v93;

    v98[4] = sub_225EF71D0;
    v98[5] = v94;

    v98[6] = sub_225EF7434;
    v98[7] = v95;

    v98[8] = sub_225EF7434;
    v98[9] = v96;

    v98[10] = sub_225EF71D0;
    v98[11] = v97;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v100))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v85 = sub_225EF5468(0);
      v86 = sub_225EF5468(0);
      *(v101 + 192) = buf;
      *(v101 + 200) = v85;
      *(v101 + 208) = v86;
      sub_225EF54BC(0, (v101 + 192));
      sub_225EF54BC(2, (v101 + 192));
      *(v101 + 112) = sub_225EF7434;
      *(v101 + 120) = v92;
      sub_225EF73E8(v101 + 112, v101 + 192, v101 + 200, v101 + 208);
      *(v101 + 112) = sub_225EF7434;
      *(v101 + 120) = v93;
      sub_225EF73E8(v101 + 112, v101 + 192, v101 + 200, v101 + 208);
      *(v101 + 112) = sub_225EF71D0;
      *(v101 + 120) = v94;
      sub_225EF73E8(v101 + 112, v101 + 192, v101 + 200, v101 + 208);
      *(v101 + 112) = sub_225EF7434;
      *(v101 + 120) = v95;
      sub_225EF73E8(v101 + 112, v101 + 192, v101 + 200, v101 + 208);
      *(v101 + 112) = sub_225EF7434;
      *(v101 + 120) = v96;
      sub_225EF73E8(v101 + 112, v101 + 192, v101 + 200, v101 + 208);
      *(v101 + 112) = sub_225EF71D0;
      *(v101 + 120) = v97;
      sub_225EF73E8(v101 + 112, v101 + 192, v101 + 200, v101 + 208);
      _os_log_impl(&dword_225EEB000, oslog, v100, "Start polling for fetching visual context entities at %ldms cadence and total wait %ldms", buf, 0x16u);
      sub_225EF7AF4(v85);
      sub_225EF7AF4(v86);
      sub_22609A168();
    }

    v75 = *(v101 + 320);
    v76 = *(v101 + 288);
    v77 = *(v101 + 280);
    v79 = *(v101 + 272);
    v80 = *(v101 + 256);
    v81 = *(v101 + 248);
    v82 = *(v101 + 232);
    v74 = *(v101 + 296);
    v78 = *(v101 + 264);
    MEMORY[0x277D82BD8](oslog);
    v12 = *(v74 + 8);
    *(v101 + 360) = v12;
    *(v101 + 368) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v75, v76);
    sub_22609A328();
    *(v101 + 184) = 20;
    sub_225EF81C4();
    sub_22609A618();
    sub_225FD8A44();
    v13 = *(v78 + 8);
    *(v101 + 376) = v13;
    *(v101 + 384) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v79, v80);
    *(v101 + 88) = 0;
    *(v101 + 96) = 0;
    *(v101 + 104) = 1;
    v83 = sub_225F3E9A8();
    sub_225F7E764();
    v14 = *(MEMORY[0x277D857F0] + 4);
    v15 = swift_task_alloc();
    *(v101 + 392) = v15;
    *v15 = *(v101 + 128);
    v15[1] = sub_225FD58F0;
    v16 = *(v101 + 280);
    v17 = *(v101 + 248);
    v18 = *(v101 + 232);

    MEMORY[0x282200488](v16, v101 + 88, v17, v18, v83);
  }

  else
  {
    v25 = *(v101 + 304);
    v45 = *(v101 + 288);
    v44 = *(v101 + 296);
    v26 = sub_225F7E9BC();
    (*(v44 + 16))(v25, v26, v45);
    v47 = sub_226098C48();
    v46 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v48 = sub_22609A4F8();
    if (os_log_type_enabled(v47, v46))
    {
      v40 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v41 = sub_225EF5468(0);
      v42 = sub_225EF5468(0);
      *(v101 + 152) = v40;
      *(v101 + 160) = v41;
      *(v101 + 168) = v42;
      sub_225EF54BC(0, (v101 + 152));
      sub_225EF54BC(0, (v101 + 152));
      *(v101 + 176) = v48;
      v43 = swift_task_alloc();
      v43[2] = v101 + 152;
      v43[3] = v101 + 160;
      v43[4] = v101 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v47, v46, "Abort polling fetching visual context entities", v40, 2u);
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }

    v34 = *(v101 + 328);
    v31 = *(v101 + 304);
    v32 = *(v101 + 288);
    v33 = *(v101 + 216);
    v30 = *(v101 + 296);
    MEMORY[0x277D82BD8](v47);
    (*(v30 + 8))(v31, v32);
    *v33 = 0;

    v27 = *(v101 + 320);
    v35 = *(v101 + 312);
    v36 = *(v101 + 304);
    v37 = *(v101 + 280);
    v38 = *(v101 + 272);
    v39 = *(v101 + 248);

    v28 = *(*(v101 + 128) + 8);
    v29 = *(v101 + 128);

    v28();
  }
}

uint64_t sub_225FD8AB8()
{
  v0[7] = v0;
  v0[8] = 0;
  v1 = sub_226098C58();
  v0[17] = v1;
  v6 = *(v1 - 8);
  v0[18] = v6;
  v7 = *(v6 + 64);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v2 = sub_22609A358();
  v0[21] = v2;
  v8 = *(v2 - 8);
  v0[22] = v8;
  v3 = *(v8 + 64) + 15;
  v0[23] = swift_task_alloc();
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_225FD8C18, 0, 0);
}

uint64_t sub_225FD8C18()
{
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  *(v0 + 56) = v0;
  v1 = sub_225F7F580();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v10 = sub_225F3E9A8();
  sub_225F7E764();
  v3 = swift_task_alloc();
  v9[24] = v3;
  *v3 = v9[7];
  v3[1] = sub_225FD8D60;
  v4 = v9[23];
  v5 = v9[21];

  return sub_225F7E788(v0 + 40, v0 + 16, v4, v5, v10);
}

uint64_t sub_225FD8D60()
{
  v7 = *v1;
  v2 = *(*v1 + 192);
  v7[7] = *v1;
  v8 = v7 + 7;
  v7[25] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225FD91EC;
  }

  else
  {
    (*(v7[22] + 8))(v7[23], v7[21]);
    v3 = *v8;
    v4 = sub_225FD8EF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FD8EF8()
{
  v1 = *(v0 + 160);
  v12 = *(v0 + 144);
  v13 = *(v0 + 136);
  *(v0 + 56) = v0;
  v2 = sub_225F7E9BC();
  (*(v12 + 16))(v1, v2, v13);
  v15 = sub_226098C48();
  v14 = sub_22609A0A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v16 = sub_22609A4F8();
  if (!os_log_type_enabled(v15, v14))
  {

LABEL_6:
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v5 = *(v0 + 144);
    MEMORY[0x277D82BD8](v15);
    (*(v5 + 8))(v6, v7);
    abort();
  }

  v3 = *(v0 + 200);
  buf = sub_22609A188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
  v9 = sub_225EF5468(0);
  v10 = sub_225EF5468(0);
  *(v0 + 104) = buf;
  *(v0 + 112) = v9;
  *(v0 + 120) = v10;
  sub_225EF54BC(0, (v0 + 104));
  sub_225EF54BC(0, (v0 + 104));
  *(v0 + 128) = v16;
  v11 = swift_task_alloc();
  v11[2] = v0 + 104;
  v11[3] = v0 + 112;
  v11[4] = v0 + 120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
  sub_225EFE598();
  sub_226099C28();
  if (!v3)
  {

    _os_log_impl(&dword_225EEB000, v15, v14, "Crashing since we failed to cancel the previous recognition", buf, 2u);
    sub_225EF7AF4(v9);
    sub_225EF7AF4(v10);
    sub_22609A168();

    goto LABEL_6;
  }
}

uint64_t sub_225FD91EC()
{
  v21 = v0[25];
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[21];
  v4 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v0[7] = v0;
  (*(v2 + 8))(v1, v3);
  v5 = v21;
  v0[8] = v21;
  v6 = sub_225F7E9BC();
  (*(v22 + 16))(v4, v6, v23);
  v25 = sub_226098C48();
  v24 = sub_22609A0A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v26 = sub_22609A4F8();
  if (os_log_type_enabled(v25, v24))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v17 = sub_225EF5468(0);
    v18 = sub_225EF5468(0);
    *(v20 + 72) = buf;
    *(v20 + 80) = v17;
    *(v20 + 88) = v18;
    sub_225EF54BC(0, (v20 + 72));
    sub_225EF54BC(0, (v20 + 72));
    *(v20 + 96) = v26;
    v19 = swift_task_alloc();
    v19[2] = v20 + 72;
    v19[3] = v20 + 80;
    v19[4] = v20 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v25, v24, "Abort timeout to cancel the previous recognition", buf, 2u);
    sub_225EF7AF4(v17);
    sub_225EF7AF4(v18);
    sub_22609A168();
  }

  v12 = *(v20 + 200);
  v13 = *(v20 + 184);
  v14 = *(v20 + 160);
  v15 = *(v20 + 152);
  v11 = *(v20 + 136);
  v10 = *(v20 + 144);
  MEMORY[0x277D82BD8](v25);
  (*(v10 + 8))(v15, v11);

  v7 = *(*(v20 + 56) + 8);
  v8 = *(v20 + 56);

  return v7();
}

uint64_t sub_225FD95D4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_226098C58();
  v1[5] = v2;
  v6 = *(v2 - 8);
  v1[6] = v6;
  v3 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[3] = v0;
  v4 = v1[2];

  return MEMORY[0x2822009F8](sub_225FD96C8, 0, 0);
}

uint64_t sub_225FD96C8()
{
  v41 = v0;
  v1 = v0[7];
  v17 = v0[6];
  v18 = v0[5];
  v19 = v0[4];
  v0[2] = v0;
  v2 = sub_225F7E9BC();
  (*(v17 + 16))(v1, v2, v18);
  MEMORY[0x277D82BE0](v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v34 = sub_226098C48();
  v35 = sub_22609A0A8();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225F3E198;
  *(v21 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E1C8;
  *(v26 + 24) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225FFB60C;
  *(v22 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225EF7B84;
  *(v29 + 24) = v22;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225FFB63C;
  *(v23 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F2D374;
  *(v32 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v33 = v3;

  *v33 = sub_225EF7434;
  v33[1] = v24;

  v33[2] = sub_225EF7434;
  v33[3] = v25;

  v33[4] = sub_225F3E358;
  v33[5] = v26;

  v33[6] = sub_225EF7434;
  v33[7] = v27;

  v33[8] = sub_225EF7434;
  v33[9] = v28;

  v33[10] = sub_225EF7B90;
  v33[11] = v29;

  v33[12] = sub_225EF7434;
  v33[13] = v30;

  v33[14] = sub_225EF7434;
  v33[15] = v31;

  v33[16] = sub_225EF71D0;
  v33[17] = v32;
  sub_225EF5418();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v14 = sub_225EF5468(1);
    v15 = sub_225EF5468(1);
    v36 = buf;
    v37 = v14;
    v38 = v15;
    sub_225EF54BC(2, &v36);
    sub_225EF54BC(3, &v36);
    v39 = sub_225EF7434;
    v40 = v24;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v25;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225F3E358;
    v40 = v26;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v27;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v28;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7B90;
    v40 = v29;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v30;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v31;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF71D0;
    v40 = v32;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_225EEB000, v34, v35, "%@ %s:%ld queue task enqueued", buf, 0x20u);
    sub_225EF7AF4(v14);
    sub_225EF7AF4(v15);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v16[7];
  v9 = v16[5];
  v10 = v16[4];
  v7 = v16[6];
  MEMORY[0x277D82BD8](v34);
  (*(v7 + 8))(v8, v9);
  MEMORY[0x277D82BE0](v10);
  v11 = swift_task_alloc();
  v16[8] = v11;
  *(v11 + 16) = v10;
  v4 = swift_task_alloc();
  v16[9] = v4;
  *v4 = v16[2];
  v4[1] = sub_225FDA234;
  v5 = MEMORY[0x277D84F78] + 8;

  return sub_225FFB2A4(v12, 0, 0, sub_226020200, v11, v5);
}

uint64_t sub_225FDA234()
{
  v6 = *v0;
  v1 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 32);
  *(v6 + 16) = *v0;

  v2 = *(v6 + 16);

  return MEMORY[0x2822009F8](sub_225FDA38C, 0, 0);
}

uint64_t sub_225FDA38C()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t sub_225FDA418(uint64_t a1)
{
  v9 = a1;
  v20 = 0;
  v19 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v2, v3, v4);
  v11 = v8 - v10;
  v20 = v5;
  v19 = v1;
  sub_226020208(v5, v8 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    sub_225EF97AC(v11);
    v16 = 0uLL;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v18 = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
    (*(v13 + 32))(boxed_opaque_existential_0, v11, v12);
  }

  v8[0] = v8[2] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  v8[1] = &v15;
  swift_beginAccess();
  sub_22601E698(&v16, v8[0]);
  swift_endAccess();
  return sub_225EF97AC(v9);
}

uint64_t sub_225FDA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v187 = a6;
  v216 = a5;
  v186 = a4;
  v185 = a3;
  v189 = a2;
  v184 = a1;
  v168 = a6;
  v188 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v231 = 0;
  v225 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
  v169 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10);
  v170 = &v73 - v169;
  v171 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v188, v11, v12, v13);
  v172 = &v73 - v171;
  v173 = sub_226098E68();
  v174 = *(v173 - 8);
  v175 = v174;
  v176 = *(v174 + 64);
  MEMORY[0x28223BE20](v188, v173, v14, v15);
  v178 = (v176 + 15) & 0xFFFFFFFFFFFFFFF0;
  v177 = &v73 - v178;
  MEMORY[0x28223BE20](v16, &v73 - v178, v17, v18);
  v179 = &v73 - v178;
  v244 = &v73 - v178;
  v180 = sub_226099808();
  v181 = *(v180 - 8);
  v182 = v181;
  v19 = *(v181 + 64);
  MEMORY[0x28223BE20](v188, v180, v20, v21);
  v183 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_226098E98();
  v190 = v214;
  v206 = *(v214 - 8);
  v207 = v214 - 8;
  v203 = v206;
  v191 = v206;
  v192 = *(v206 + 64);
  MEMORY[0x28223BE20](v188, v189, v185, v186);
  v194 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  v193 = &v73 - v194;
  MEMORY[0x28223BE20](v23, v24, v25, v26);
  v195 = &v73 - v194;
  v243 = v27;
  v242 = v28;
  v241 = v29;
  v240 = v30;
  v239 = v31;
  v238 = v32;
  v237 = v6;
  v200 = sub_2260996F8();
  v199 = sub_22609A4F8();
  v196 = v33;
  v34 = *MEMORY[0x277CDCDB0];
  v35 = *(v200 - 8);
  v198 = *(v35 + 104);
  v197 = v35 + 104;
  v198();
  (v198)(v196 + *(v197 - 32), *MEMORY[0x277CDCD98], v200);
  v36 = v199;
  sub_225EF5418();
  v201 = v36;
  sub_22602033C();
  v202 = sub_226099F08();
  v236 = v202;
  v213 = sub_22609A4F8();
  v210 = v37;
  v38 = *MEMORY[0x277CDCAB8];
  v212 = *(v203 + 104);
  v211 = v203 + 104;
  v204 = v212;
  v205 = (v203 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v212();
  v208 = *(v206 + 72);
  (v212)(v210 + v208, *MEMORY[0x277CDCAB0], v214);
  v209 = 2 * v208;
  (v212)(v210 + 2 * v208, *MEMORY[0x277CDCAA8], v214);
  (v212)(v210 + v209 + v208, *MEMORY[0x277CDCAA0], v214);
  v39 = v213;
  sub_225EF5418();
  v215 = v39;
  sub_2260203BC();
  v235 = sub_226099F08();
  if (v216)
  {
    (v204)(v193, *MEMORY[0x277CDCAC0], v190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A68, &qword_2260A0AA0);
    sub_226099F48();
    (*(v191 + 8))(v195, v190);
  }

  if (*sub_225F7F4BC())
  {
    sub_2260998E8();
    v154 = sub_226098FC8();
    v147 = sub_22609A4F8();
    v43 = v42;
    v44 = *MEMORY[0x277CDCB08];
    v45 = *(v154 - 8);
    v151 = *(v45 + 104);
    v150 = v45 + 104;
    (v151)(v43, v44);
    v46 = v147;
    sub_225EF5418();
    v233[1] = v46;
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A58, &qword_2260A0A98);
    v156 = sub_22601F4EC();
    v157 = sub_22602043C();
    v153 = sub_226099F38();
    v152 = sub_22609A4F8();
    v149 = v47;
    v48 = *MEMORY[0x277CDCB28];
    v151();
    v148 = *(v150 - 32);
    (v151)(v149 + v148, *MEMORY[0x277CDCB10], v154);
    (v151)(v149 + 2 * v148, *MEMORY[0x277CDCB20], v154);
    v49 = v152;
    sub_225EF5418();
    v233[0] = v49;
    v158 = v233;
    v160 = MEMORY[0x22AA73010]();
    v159 = v160;
    sub_225EFE6E8(v158);
    sub_2260998E8();
    v234 = v160;
    v167 = v159;
  }

  else
  {
    sub_2260998E8();
    v162 = sub_226098FC8();
    v161 = sub_22609A4F8();
    (*(*(v162 - 8) + 104))(v40, *MEMORY[0x277CDCB08]);
    v41 = v161;
    sub_225EF5418();
    v217 = v41;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A58, &qword_2260A0A98);
    v164 = sub_22601F4EC();
    sub_22602043C();
    v166 = sub_226099F38();
    v165 = v166;
    sub_2260998E8();
    v234 = v166;
    v167 = v165;
  }

  v124 = v167;
  sub_2260998E8();
  v140 = 0;
  v132 = sub_226098FC8();
  v138 = 1;
  v125 = sub_22609A4F8();
  v51 = v50;
  v52 = *MEMORY[0x277CDCB00];
  v53 = *(v132 - 8);
  v129 = *(v53 + 104);
  v128 = v53 + 104;
  (v129)(v51, v52);
  v54 = v125;
  sub_225EF5418();
  v232[1] = v54;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A58, &qword_2260A0A98);
  v134 = sub_22601F4EC();
  v135 = sub_22602043C();
  v131 = sub_226099F38();
  v130 = sub_22609A4F8();
  v127 = v55;
  v56 = *MEMORY[0x277CDCB28];
  v129();
  v126 = *(v128 - 32);
  (v129)(v127 + v126, *MEMORY[0x277CDCB10], v132);
  (v129)(v127 + 2 * v126, *MEMORY[0x277CDCB20], v132);
  v57 = v130;
  sub_225EF5418();
  v232[0] = v57;
  v136 = v232;
  v139 = MEMORY[0x22AA73010]();
  v137 = v139;
  sub_225EFE6E8(v136);
  v231 = v139;
  v229 = v140;
  v230 = v140;
  sub_226099AA8();
  v143 = v58;
  v142 = sub_2260999F8();
  v141 = *MEMORY[0x277CEF5E8];
  v59 = v141;
  v144 = _AFPreferencesValueForKeyWithContext();

  v145 = v144;
  v146 = &v228;
  sub_22609A238();
  if (swift_dynamicCast())
  {
    v122 = v226;
    v123 = v227;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v120 = v123;
  v121 = v122;
  if (v123)
  {
    v118 = v121;
    v119 = v120;
    v117 = v120;
    v116 = v121;
    v218 = v121;
    v219 = v120;
    swift_unknownObjectRelease();
    sub_2260998E8();
    v229 = v116;
    v230 = v117;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v225 = 0;
  if ([objc_opt_self() cooldownDisabledForDevice])
  {
    v115 = 1;
  }

  else
  {
    v115 = v168;
  }

  v112 = *(v182 + 16);
  v113 = (v182 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112(v183, v189, v180);
  v114 = (*(v182 + 88))(v183, v180);
  if (v114 == *MEMORY[0x277CDCE50] || v114 == *MEMORY[0x277CDCE28] || v114 == *MEMORY[0x277CDCE20])
  {
    v222 = 0;
    v223 = 0;
  }

  else
  {
    v222 = sub_226098E28();
    v223 = v60;
    (*(v182 + 8))(v183, v180);
  }

  v79 = v222;
  v80 = v223;
  sub_2260998E8();
  v224[0] = v79;
  v224[1] = v80;
  v74 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
  v87 = &v73;
  MEMORY[0x28223BE20](&v73, v61, v62, v63);
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = &v73 - v75;
  v88 = 0;
  v64 = *(*(sub_226098948() - 8) + 56);
  v104 = 1;
  v64(v85, 1);
  v78 = sub_226098E58();
  v86 = &v73;
  MEMORY[0x28223BE20](&v73, v65, v66, v67);
  v81 = &v73 - v75;
  sub_226098E48();
  v82 = sub_226098E38();
  v83 = sub_226098E18();
  v84 = v229;
  v77 = v230;
  sub_2260998E8();
  v76 = sub_226098E08();
  sub_225F49850();
  v103 = 0;
  sub_226098DF8();
  (*(v175 + 32))(v179, v177, v173);
  v92 = sub_226099078();
  v95 = sub_226098AB8();
  v89 = *(v95 - 8);
  v90 = v89;
  v94 = *(v89 + 64);
  v93 = &v73;
  v69 = MEMORY[0x28223BE20](&v73, v184, v95, v68);
  v97 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v73 - v97;
  v96 = *(v90 + 16);
  v98 = v90 + 16;
  v96(v69);
  v112(v172, v189, v180);
  v100 = *(v182 + 56);
  v99 = v182 + 56;
  v100(v172, v103, v104, v180);
  v102 = *(v175 + 16);
  v101 = v175 + 16;
  v102(v170, v179, v173);
  v106 = *(v175 + 56);
  v105 = v175 + 56;
  v106(v170, v103, v104, v173);
  v108 = v235;
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v110 = sub_226099058();
  v221 = v110;
  v109 = &v73;
  v70 = MEMORY[0x28223BE20](&v73, v184, v95, v93);
  v107 = &v73 - v97;
  v71(v70);
  v112(v172, v189, v180);
  v100(v172, v103, v104, v180);
  v102(v170, v179, v173);
  v106(v170, v103, v104, v173);
  sub_2260998E8();
  sub_2260998E8();
  v111 = sub_226099058();
  v220 = v111;
  (*(v175 + 8))(v179, v173);
  sub_225EFE6BC(v224);
  sub_225EFE6BC(&v229);

  sub_225EFE6E8(&v234);
  sub_225EFE6E8(&v235);

  return v110;
}

uint64_t sub_225FDB7E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = a2;
  v5[2] = "Fatal error";
  v5[3] = "Unexpectedly found nil while unwrapping an Optional value";
  v5[4] = "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift";
  v13 = 0;
  v14 = 0;
  v7 = *a1;
  v6 = a1[1];
  v13 = v7;
  v14 = v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v6, v2, v3);
  v9 = v5 - v8;
  sub_226098938();
  v10 = sub_226098948();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return (*(v11 + 32))(v5[0], v9, v10);
}

uint64_t sub_225FDB998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v7 = a1[1];
  v4 = sub_22609A4F8();
  v6 = v2;
  sub_2260998E8();
  result = v4;
  *v6 = v5;
  v6[1] = v7;
  sub_225EF5418();
  *a2 = v4;
  return result;
}

uint64_t sub_225FDBADC()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBB4C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_225FDBBE4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBC48(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FDBCB4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBD18(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FDBD84()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBDE8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FDBE54()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBEBC(uint64_t a1)
{
  sub_2260998E8();
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225FDBF40()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDBFA8(uint64_t a1)
{
  sub_2260998E8();
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225FDC02C()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_225FDC094(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FDC108()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDC16C(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FDC1D8()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FDC23C(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FDC2A8()
{
  *(v1 + 488) = v0;
  *(v1 + 392) = v1;
  *(v1 + 400) = 0;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 424) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 0;
  *(v1 + 448) = 0;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 400) = v0;
  v2 = *(v1 + 392);
  return MEMORY[0x2822009F8](sub_225FDC324, 0, 0);
}

uint64_t sub_225FDC324()
{
  v1 = v0[61];
  v0[49] = v0;
  v48 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
  swift_beginAccess();
  v49 = *v48;
  sub_2260998E8();
  swift_endAccess();
  v0[51] = v49;
  v0[62] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A70, &qword_2260A0AA8);
  sub_2260204C4();
  v50 = sub_22609A008();

  if ((v50 & 1) == 0)
  {
    v44 = *(v47 + 488);
    *(v47 + 424) = sub_226099848();
    v45 = (v44 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData);
    swift_beginAccess();
    v46 = *v45;
    sub_2260998E8();
    swift_endAccess();
    *(v47 + 432) = v46;
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A98, &qword_2260A0AC8);
      sub_22609A388();
      v43 = *(v47 + 376);
      if (*(v47 + 384))
      {
        break;
      }

      v2 = *(v47 + 488);
      *(v47 + 456) = v43;
      v41 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
      swift_beginAccess();
      v42 = *v41;
      swift_endAccess();
      if ((v42 & 0x8000000000000000) != 0 || !v42)
      {
        return sub_22609A3B8();
      }

      v37 = *(v47 + 488);
      *(v47 + 472) = v43 / 2 / v42;
      sub_2260205D4();
      sub_226099EC8();
      v40 = v4 * *sub_225F7F6FC();
      *(v47 + 464) = v40;
      v38 = (v37 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
      swift_beginAccess();
      v39 = *v38;
      swift_endAccess();
      *(v47 + 464) = v40 - v39;
      if (v40 - v39 >= 0.0)
      {
        *(v47 + 480) = (v40 - v39) / *sub_225F7F6FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786AA0, &qword_2260A0AD0);
        sub_226099CE8();
      }
    }

    sub_225EFE6E8((v47 + 328));
    v32 = *(v47 + 424);
    sub_2260998E8();
    *(v47 + 440) = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786AA0, &qword_2260A0AD0);
    v34 = type metadata accessor for CMTime();
    v5 = sub_225F2DEE0();
    v36 = sub_225F15970(sub_225FF5958, 0, v33, v34, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v35);
    *(v47 + 504) = v36;
    v30 = *(v47 + 488);
    sub_225EFE6E8((v47 + 440));
    *(v47 + 448) = v36;
    v31 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    if (*v31)
    {
      *(v47 + 512) = *v31;

      swift_endAccess();
      v6 = *(MEMORY[0x277CDCB68] + 4);
      v7 = swift_task_alloc();
      *(v47 + 520) = v7;
      *v7 = *(v47 + 392);
      v7[1] = sub_225FDCEF8;

      return MEMORY[0x28212BDD8](v36);
    }

    swift_endAccess();
    v8 = *(v47 + 504);

    sub_225EFE6E8((v47 + 424));
  }

  v28 = (*(v47 + 488) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v29 = *v28;
  sub_2260998E8();
  swift_endAccess();
  *(v47 + 416) = v29;
  *(v47 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A80, &qword_2260A0AB0);
  sub_22602054C();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A90, &qword_2260A0AB8);
    sub_22609A388();
    v22 = *(v47 + 16);
    *(v47 + 544) = v22;
    v23 = *(v47 + 24);
    *(v47 + 552) = v23;
    v24 = *(v47 + 32);
    v25 = *(v47 + 40);
    v26 = *(v47 + 48);
    v27 = *(v47 + 56);
    if ((v23 & 0xF000000000000000) == 0xF000000000000000)
    {
      break;
    }

    v9 = *(v47 + 488);
    *(v47 + 296) = v22;
    *(v47 + 304) = v23;
    *(v47 + 344) = v24;
    *(v47 + 352) = v25 & 1;
    *(v47 + 360) = v26;
    *(v47 + 368) = v27 & 1;
    v10 = sub_225EF6A9C(v22, v23);
    v20 = v10;
    v21 = v11;
    *(v47 + 560) = v10;
    *(v47 + 568) = v11;
    if ((v11 & 0xF000000000000000) != 0xF000000000000000)
    {
      *(v47 + 312) = v10;
      *(v47 + 320) = v11;
      v12 = swift_task_alloc();
      *(v47 + 576) = v12;
      *v12 = *(v47 + 392);
      v12[1] = sub_225FDD4E4;
      v13 = *(v47 + 488);

      return sub_225EF6EC8(v20, v21, v24, v25 & 1, v26, v27 & 1);
    }

    sub_225EF5990(*(v47 + 544), *(v47 + 552));
  }

  v19 = *(v47 + 536);
  v17 = *(v47 + 496);
  v18 = *(v47 + 488);
  sub_225EFE6E8((v47 + 280));
  v16 = (v18 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  *v16 = 0;
  swift_endAccess();
  swift_beginAccess();
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  v14 = *(*(v47 + 392) + 8);
  v15 = *(v47 + 392);

  return v14();
}

uint64_t sub_225FDCEF8()
{
  v10 = *v1;
  v8 = *v1 + 16;
  v9 = (v10 + 392);
  v2 = *(*v1 + 520);
  *(v10 + 392) = *v1;
  *(v10 + 528) = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_225FDD9CC;
  }

  else
  {
    v3 = *(v8 + 496);

    v4 = *v9;
    v5 = sub_225FDD078;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FDD078()
{
  v0[49] = v0;
  v1 = v0[63];

  sub_225EFE6E8(v0 + 53);
  v23 = (v0[61] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets);
  swift_beginAccess();
  v24 = *v23;
  sub_2260998E8();
  swift_endAccess();
  v0[52] = v24;
  v0[67] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A80, &qword_2260A0AB0);
  sub_22602054C();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A90, &qword_2260A0AB8);
    sub_22609A388();
    v16 = *(v22 + 16);
    *(v22 + 544) = v16;
    v17 = *(v22 + 24);
    *(v22 + 552) = v17;
    v18 = *(v22 + 32);
    v19 = *(v22 + 40);
    v20 = *(v22 + 48);
    v21 = *(v22 + 56);
    if ((v17 & 0xF000000000000000) == 0xF000000000000000)
    {
      break;
    }

    v2 = *(v22 + 488);
    *(v22 + 296) = v16;
    *(v22 + 304) = v17;
    *(v22 + 344) = v18;
    *(v22 + 352) = v19 & 1;
    *(v22 + 360) = v20;
    *(v22 + 368) = v21 & 1;
    v3 = sub_225EF6A9C(v16, v17);
    v14 = v3;
    v15 = v4;
    *(v22 + 560) = v3;
    *(v22 + 568) = v4;
    if ((v4 & 0xF000000000000000) != 0xF000000000000000)
    {
      *(v22 + 312) = v3;
      *(v22 + 320) = v4;
      v5 = swift_task_alloc();
      *(v22 + 576) = v5;
      *v5 = *(v22 + 392);
      v5[1] = sub_225FDD4E4;
      v6 = *(v22 + 488);

      return sub_225EF6EC8(v14, v15, v18, v19 & 1, v20, v21 & 1);
    }

    sub_225EF5990(*(v22 + 544), *(v22 + 552));
  }

  v13 = *(v22 + 536);
  v11 = *(v22 + 496);
  v12 = *(v22 + 488);
  sub_225EFE6E8((v22 + 280));
  v10 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
  swift_beginAccess();
  *v10 = 0;
  swift_endAccess();
  swift_beginAccess();
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
  sub_225F7B3F4();
  sub_226099CF8();
  swift_endAccess();
  v8 = *(*(v22 + 392) + 8);
  v9 = *(v22 + 392);

  return v8();
}

uint64_t sub_225FDD4E4()
{
  v4 = *v0;
  v1 = *(*v0 + 576);
  *(v4 + 392) = *v0;

  v2 = *(v4 + 392);

  return MEMORY[0x2822009F8](sub_225FDD5FC, 0, 0);
}

uint64_t sub_225FDD5FC()
{
  v1 = v0[71];
  v2 = v0[70];
  v0[49] = v0;
  sub_225EF5990(v2, v1);
  do
  {
    sub_225EF5990(*(v23 + 544), *(v23 + 552));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A90, &qword_2260A0AB8);
    sub_22609A388();
    v19 = *(v23 + 16);
    *(v23 + 544) = v19;
    v20 = *(v23 + 24);
    *(v23 + 552) = v20;
    v15 = *(v23 + 32);
    v16 = *(v23 + 40);
    v17 = *(v23 + 48);
    v18 = *(v23 + 56);
    if ((v20 & 0xF000000000000000) == 0xF000000000000000)
    {
      v14 = *(v23 + 536);
      v12 = *(v23 + 496);
      v13 = *(v23 + 488);
      sub_225EFE6E8((v23 + 280));
      v11 = (v13 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
      swift_beginAccess();
      *v11 = 0;
      swift_endAccess();
      swift_beginAccess();
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
      v9 = *(*(v23 + 392) + 8);
      v10 = *(v23 + 392);

      return v9();
    }

    v3 = *(v23 + 488);
    *(v23 + 296) = v19;
    *(v23 + 304) = v20;
    *(v23 + 344) = v15;
    *(v23 + 352) = v16 & 1;
    *(v23 + 360) = v17;
    *(v23 + 368) = v18 & 1;
    v4 = sub_225EF6A9C(v19, v20);
    v21 = v4;
    v22 = v5;
    *(v23 + 560) = v4;
    *(v23 + 568) = v5;
  }

  while ((v5 & 0xF000000000000000) == 0xF000000000000000);
  *(v23 + 312) = v4;
  *(v23 + 320) = v5;
  v6 = swift_task_alloc();
  *(v23 + 576) = v6;
  *v6 = *(v23 + 392);
  v6[1] = sub_225FDD4E4;
  v7 = *(v23 + 488);

  return sub_225EF6EC8(v21, v22, v15, v16 & 1, v17, v18 & 1);
}

uint64_t sub_225FDD9CC()
{
  v1 = v0[64];
  v6 = v0[63];
  v0[49] = v0;

  sub_225EFE6E8(v0 + 53);
  v2 = *(*(v7 + 392) + 8);
  v3 = *(v7 + 392);
  v4 = *(v7 + 528);

  return v2();
}

uint64_t sub_225FDDA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v92 = a6;
  v144 = a1;
  v145 = a2;
  v146 = a3;
  v156 = a4;
  v147 = a5;
  v93 = MEMORY[0x277CDCB48];
  v94 = MEMORY[0x277CDCCB0];
  v95 = &unk_2260A0B70;
  v96 = &unk_2260A0B80;
  v97 = &unk_2260A0B88;
  v98 = MEMORY[0x277CDCB60];
  v99 = &unk_2260A0B28;
  v100 = &unk_2260A0B38;
  v101 = &unk_2260A0B40;
  v102 = &unk_2260A0B50;
  v103 = &unk_2260A0B58;
  v104 = &unk_2260A0B60;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AB8, &qword_2260A0AD8);
  v106 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105, v7, v8, v9);
  v107 = v64 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AC0, &qword_2260A0AE0);
  v109 = (*(*(v108 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108, v10, v11, v12);
  v110 = v64 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AC8, &qword_2260A0AE8);
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111, v13, v14, v15);
  v115 = v64 - v114;
  v170 = v64 - v114;
  v116 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  v117 = v64 - v116;
  v169 = v64 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AD0, &qword_2260A0AF0);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118, v21, v22, v23);
  v120 = v64 - v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AD8, &qword_2260A0AF8);
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121, v24, v25, v26);
  v125 = v64 - v124;
  v168 = v64 - v124;
  v126 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v29, v30, v31);
  v127 = v64 - v126;
  v167 = v64 - v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AE0, &qword_2260A0B00);
  v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v128, v32, v33, v34);
  v130 = v64 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AE8, &qword_2260A0B08);
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v134 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131, v35, v36, v37);
  v135 = v64 - v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AF0, &qword_2260A0B10);
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136, v38, v39, v40);
  v140 = v64 - v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AF8, &qword_2260A0B18);
  v142 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v41, v42, v43);
  v143 = v64 - v142;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B00, &qword_2260A0B20);
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v152 = *(v149 + 64);
  v151 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v156, v145, v146, v44);
  v153 = v64 - v151;
  v166 = v64 - v151;
  v154 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v46, v47, v48);
  v155 = v64 - v154;
  v165 = v64 - v154;
  v164 = v49;
  v163 = v50;
  v162 = v51;
  v161 = v52;
  v160 = v53 & 1;
  v159 = v6;

  if (v156)
  {
    v91 = v156;
    v90 = v156;
    v158 = v156;

    if (v145)
    {
      v89 = v145;
      v88 = v145;
      v157 = v145;
      sub_226098FD8();
      sub_226099468();
      v74 = 1;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v76 = swift_getOpaqueTypeConformance2();
      sub_226098BB8();
      v78 = *(v132 + 8);
      v77 = v132 + 8;
      v78(v135, v131);
      v80 = *(v137 + 8);
      v79 = v137 + 8;
      v80(v140, v136);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
      v82 = sub_22602097C();
      v84 = 0;
      sub_226099EA8();
      sub_226098FD8();
      sub_226099468();
      sub_226098BB8();
      v78(v135, v131);
      v80(v140, v136);
      sub_226099EA8();
      sub_226020A04();
      sub_226098BB8();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B58, &qword_2260A0B90);
      v92[3] = v54;
      v55 = sub_226020A8C();
      v56 = v92;
      v92[4] = v55;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
      v85 = type metadata accessor for CombinedTranscriberOutput();
      sub_226020B14();
      sub_226099EA8();
      v87 = *(v149 + 8);
      v86 = v149 + 8;
      v87(v153, v148);
      v87(v155, v148);
    }
  }

  if (v147)
  {
    sub_226099008();
    v64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B08, &qword_2260A0B30);
    v64[1] = swift_getOpaqueTypeConformance2();
    v64[3] = 0;
    sub_226099EA8();
    sub_226099008();
    sub_226099EA8();
    sub_22602064C();
    sub_226098BB8();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B18, &qword_2260A0B48);
    v92[3] = v61;
    v62 = sub_2260206D4();
    v63 = v92;
    v92[4] = v62;
    v64[2] = __swift_allocate_boxed_opaque_existential_0(v63);
    sub_22602075C();
    sub_226099EA8();
    v65 = *(v112 + 8);
    v64[4] = v112 + 8;
    v65(v115, v111);
    return (v65)(v117, v111);
  }

  else
  {
    sub_226098FD8();
    v68 = 0;
    v66 = sub_226098FA8();
    v67 = swift_getOpaqueTypeConformance2();
    v70 = 0;
    sub_226099EA8();
    sub_226098FD8();
    sub_226099EA8();
    sub_2260207E4();
    sub_226098BB8();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B38, &qword_2260A0B68);
    v92[3] = v58;
    v59 = sub_22602086C();
    v60 = v92;
    v92[4] = v59;
    v69 = __swift_allocate_boxed_opaque_existential_0(v60);
    v71 = type metadata accessor for CombinedTranscriberOutput();
    sub_2260208F4();
    sub_226099EA8();
    v73 = *(v122 + 8);
    v72 = v122 + 8;
    v73(v125, v121);
    return (v73)(v127, v121);
  }
}

uint64_t sub_225FDEA3C(void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v31 = a2;
  v30 = a3;
  v40 = a4;
  v34 = a5;
  v24 = 0;
  v44 = &unk_2260A0BA0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v53 = a4;
  v42 = 0;
  v41 = sub_22609A198();
  v22 = *(v41 - 8);
  v32 = v22;
  v33 = *(v22 + 64);
  v23 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v6, v7, v8);
  v38 = &v22 - v23;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v31, v30, v24);
  v43 = &v22 - v25;
  v52 = v9;
  v51 = v10;
  v50 = v11;
  v49 = v5;
  v26 = (v5 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  v27 = &v48;
  swift_beginAccess();
  *v26 = 0;
  swift_endAccess();
  sub_225F7FA28();
  v12 = v28;
  v13 = sub_226099DA8();
  (*(*(v13 - 8) + 56))(v43, 0, 1);
  v35 = v47;
  sub_22601FE20(v29, v47);
  MEMORY[0x277D82BE0](v12);
  v36 = v46;
  sub_22601FE20(v30, v46);
  sub_225F317FC(v31, v38, v40, v41);
  v39 = (*(v32 + 80) + 136) & ~*(v32 + 80);
  v14 = swift_allocObject();
  v15 = v34;
  v16 = v35;
  v17 = v40;
  v45 = v14;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v17;
  v14[5] = v15;
  v37 = 40;
  memcpy(v14 + 6, v16, 0x28uLL);
  v18 = v45;
  v19 = v36;
  v20 = v37;
  v45[11] = v12;
  memcpy((v18 + 96), v19, v20);
  sub_226020B9C(v38, v45 + v39, v40, v41);
  return sub_225F38F2C(v42, v42, v43, v44, v45, MEMORY[0x277D84F78] + 8);
}

uint64_t CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:)(uint64_t a1, unint64_t a2)
{
  sub_225EF5A38(a1, a2);
  v6 = sub_226098968();
  sub_225EF5990(a1, a2);
  [v5 addAudioPacket:v6 packetRecordedTime:0 packetReadyUpstreamTime:?];
  return MEMORY[0x277D82BD8](v6);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.pauseRecognition()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FDFCFC;
  v76 = sub_225EF7B84;
  v80 = sub_225FDFD2C;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0BC0;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v0, v1, v2);
  v59 = v44 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v3, v4, v5);
  v64 = v44 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v6, v7, v8);
  v9 = v44 - v65;
  v66 = v44 - v65;
  v113 = v10;
  v11 = sub_225F7E9BC();
  (*(v67 + 16))(v9, v11, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v12 = swift_allocObject();
  v13 = v72;
  v74 = v12;
  *(v12 + 16) = v71;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v74;
  v90 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = v15;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v16 = swift_allocObject();
  v77 = v16;
  *(v16 + 16) = v75;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v77;
  v96 = v17;
  *(v17 + 16) = v76;
  *(v17 + 24) = v18;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v19 = swift_allocObject();
  v84 = v19;
  *(v19 + 16) = v80;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v84;
  v103 = v20;
  *(v20 + 16) = v83;
  *(v20 + 24) = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v22;

  v23 = v86;
  v24 = v104;
  *v104 = v85;
  v24[1] = v23;

  v25 = v88;
  v26 = v104;
  v104[2] = v87;
  v26[3] = v25;

  v27 = v90;
  v28 = v104;
  v104[4] = v89;
  v28[5] = v27;

  v29 = v92;
  v30 = v104;
  v104[6] = v91;
  v30[7] = v29;

  v31 = v94;
  v32 = v104;
  v104[8] = v93;
  v32[9] = v31;

  v33 = v96;
  v34 = v104;
  v104[10] = v95;
  v34[11] = v33;

  v35 = v98;
  v36 = v104;
  v104[12] = v97;
  v36[13] = v35;

  v37 = v100;
  v38 = v104;
  v104[14] = v99;
  v38[15] = v37;

  v39 = v103;
  v40 = v104;
  v104[16] = v102;
  v40[17] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v41 = v54;
    v46 = sub_22609A188();
    v44[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1);
    v48 = sub_225EF5468(v45);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[8] = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[7] = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[6] = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[5] = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[4] = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[3] = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[2] = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v44[1] = 1;
      sub_225EF7AF4(v47);
      sub_225EF7AF4(v48);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v42 = swift_allocObject();
  v43 = v53;
  *(v42 + 16) = v70;
  v112[1] = v43;
  v112[2] = v42;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FDFD38(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[5] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v3 = sub_226098C58();
  v2[9] = v3;
  v6 = *(v3 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[6] = a2;
  v4 = v2[5];

  return MEMORY[0x2822009F8](sub_225FDFE4C, 0, 0);
}

uint64_t sub_225FDFE4C()
{
  v46 = v0;
  v1 = v0[12];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  v0[5] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v22 + 16);
  v0[13] = v3;
  v0[14] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v23);
  MEMORY[0x277D82BE0](v24);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v39 = sub_226098C48();
  v40 = sub_22609A0A8();
  v29 = swift_allocObject();
  *(v29 + 16) = 64;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E198;
  *(v26 + 24) = v25;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F3E1C8;
  *(v31 + 24) = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_225FDFCFC;
  *(v27 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_225EF7B84;
  *(v34 + 24) = v27;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225FE1324;
  *(v28 + 24) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_225F2D374;
  *(v37 + 24) = v28;
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v38 = v4;

  *v38 = sub_225EF7434;
  v38[1] = v29;

  v38[2] = sub_225EF7434;
  v38[3] = v30;

  v38[4] = sub_225F3E358;
  v38[5] = v31;

  v38[6] = sub_225EF7434;
  v38[7] = v32;

  v38[8] = sub_225EF7434;
  v38[9] = v33;

  v38[10] = sub_225EF7B90;
  v38[11] = v34;

  v38[12] = sub_225EF7434;
  v38[13] = v35;

  v38[14] = sub_225EF7434;
  v38[15] = v36;

  v38[16] = sub_225EF71D0;
  v38[17] = v37;
  sub_225EF5418();

  if (os_log_type_enabled(v39, v40))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v19 = sub_225EF5468(1);
    v20 = sub_225EF5468(1);
    v41 = buf;
    v42 = v19;
    v43 = v20;
    sub_225EF54BC(2, &v41);
    sub_225EF54BC(3, &v41);
    v44 = sub_225EF7434;
    v45 = v29;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF7434;
    v45 = v30;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225F3E358;
    v45 = v31;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF7434;
    v45 = v32;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF7434;
    v45 = v33;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF7B90;
    v45 = v34;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF7434;
    v45 = v35;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF7434;
    v45 = v36;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    v44 = sub_225EF71D0;
    v45 = v37;
    sub_225EF73E8(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_225EEB000, v39, v40, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v19);
    sub_225EF7AF4(v20);
    sub_22609A168();
  }

  else
  {
  }

  v14 = v21[12];
  v15 = v21[9];
  v16 = v21[8];
  v13 = v21[10];
  MEMORY[0x277D82BD8](v39);
  v5 = *(v13 + 8);
  v21[16] = v5;
  v21[17] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v14, v15);
  v17 = (v16 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v17)
  {
    v21[18] = *v17;

    swift_endAccess();
    v9 = *(MEMORY[0x277CDCB70] + 4);
    v10 = swift_task_alloc();
    v21[19] = v10;
    *v10 = v21[5];
    v10[1] = sub_225FE0A80;

    return MEMORY[0x28212BDE0]();
  }

  else
  {
    swift_endAccess();
    v11 = v21[12];
    v12 = v21[11];
    sub_225FE1330(v21[8]);

    v6 = *(v21[5] + 8);
    v7 = v21[5];

    return v6();
  }
}

uint64_t sub_225FE0A80()
{
  v8 = *v1;
  v2 = *(*v1 + 152);
  v8[5] = *v1;
  v9 = v8 + 5;
  v8[20] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_225FE0CB4;
  }

  else
  {
    v3 = v8[18];

    v4 = *v9;
    v5 = sub_225FE0BFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FE0BFC()
{
  v0[5] = v0;
  v4 = v0[12];
  v5 = v0[11];
  sub_225FE1330(v0[8]);

  v1 = *(v0[5] + 8);
  v2 = v0[5];

  return v1();
}

uint64_t sub_225FE0CB4()
{
  v40 = v0;
  v24 = v0[20];
  v1 = v0[18];
  v32 = v0[15];
  v22 = v0[14];
  v23 = v0[13];
  v2 = v0[11];
  v21 = v0[9];
  v0[5] = v0;

  v3 = v24;
  v0[7] = v24;
  v4 = sub_225F7E9BC();
  v23(v2, v4, v21);
  v5 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  sub_225F3EAE8();

  v33 = sub_226098C48();
  v34 = sub_22609A098();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3EA68;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_225F3EA70;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225F3E1C8;
  *(v30 + 24) = v27;
  sub_22609A4F8();
  v31 = v6;

  *v31 = sub_225EF7434;
  v31[1] = v28;

  v31[2] = sub_225EF7434;
  v31[3] = v29;

  v31[4] = sub_225F3E358;
  v31[5] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v33, v34))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v18 = sub_225EF5468(1);
    v19 = sub_225EF5468(0);
    v35 = buf;
    v36 = v18;
    v37 = v19;
    sub_225EF54BC(2, &v35);
    sub_225EF54BC(1, &v35);
    v38 = sub_225EF7434;
    v39 = v28;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v29;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225F3E358;
    v39 = v30;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_225EEB000, v33, v34, "Pausing recognition failed with the error: %@", buf, 0xCu);
    sub_225EF7AF4(v18);
    sub_225EF7AF4(v19);
    sub_22609A168();
  }

  else
  {
  }

  v14 = v20[20];
  v12 = v20[17];
  v13 = v20[16];
  v10 = v20[11];
  v11 = v20[9];
  MEMORY[0x277D82BD8](v33);
  v13(v10, v11);

  v15 = v20[12];
  v16 = v20[11];
  sub_225FE1330(v20[8]);

  v7 = *(v20[5] + 8);
  v8 = v20[5];

  return v7();
}

uint64_t sub_225FE1330(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FDFCFC;
  v59 = sub_225EF7B84;
  v63 = sub_22601D474;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.resumeRecognition(withPrefixText:postfixText:selectedText:)(Swift::String withPrefixText, Swift::String postfixText, Swift::String selectedText)
{
  countAndFlagsBits = withPrefixText._countAndFlagsBits;
  object = withPrefixText._object;
  v77 = postfixText;
  v78 = selectedText;
  v87 = sub_225F3E198;
  v89 = sub_225F3E1C8;
  v91 = sub_225FE2EF0;
  v92 = sub_225EF7B84;
  v96 = sub_225FE2F20;
  v99 = sub_225F2D374;
  v101 = sub_225EF7434;
  v103 = sub_225EF7434;
  v105 = sub_225F3E358;
  v107 = sub_225EF7434;
  v109 = sub_225EF7434;
  v111 = sub_225EF7B90;
  v113 = sub_225EF7434;
  v115 = sub_225EF7434;
  v118 = sub_225EF71D0;
  v65 = &unk_2260A0BD0;
  v134 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v129 = 0;
  v66 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67, v3, v4, v5);
  v71 = v56 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72, v6, v7, v8);
  v76 = v56 - v75;
  v85 = sub_226098C58();
  v83 = *(v85 - 8);
  v84 = v85 - 8;
  v81 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](countAndFlagsBits, object, v77._countAndFlagsBits, v77._object);
  v9 = v56 - v81;
  v82 = v56 - v81;
  v134 = v10;
  v135 = v11;
  v132 = v12;
  v133 = v13;
  v130 = v14;
  v131 = v15;
  v129 = v16;
  v17 = sub_225F7E9BC();
  (*(v83 + 16))(v9, v17, v85);
  MEMORY[0x277D82BE0](v86);
  v98 = 7;
  v88 = swift_allocObject();
  *(v88 + 16) = v86;
  v122 = sub_226098C48();
  v123 = sub_22609A0A8();
  v94 = 17;
  v102 = swift_allocObject();
  *(v102 + 16) = 64;
  v104 = swift_allocObject();
  v95 = 8;
  *(v104 + 16) = 8;
  v97 = 32;
  v18 = swift_allocObject();
  v19 = v88;
  v90 = v18;
  *(v18 + 16) = v87;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v90;
  v106 = v20;
  *(v20 + 16) = v89;
  *(v20 + 24) = v21;
  v108 = swift_allocObject();
  *(v108 + 16) = 32;
  v110 = swift_allocObject();
  *(v110 + 16) = v95;
  v22 = swift_allocObject();
  v93 = v22;
  *(v22 + 16) = v91;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v93;
  v112 = v23;
  *(v23 + 16) = v92;
  *(v23 + 24) = v24;
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v95;
  v25 = swift_allocObject();
  v100 = v25;
  *(v25 + 16) = v96;
  *(v25 + 24) = 0;
  v26 = swift_allocObject();
  v27 = v100;
  v119 = v26;
  *(v26 + 16) = v99;
  *(v26 + 24) = v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v117 = sub_22609A4F8();
  v120 = v28;

  v29 = v102;
  v30 = v120;
  *v120 = v101;
  v30[1] = v29;

  v31 = v104;
  v32 = v120;
  v120[2] = v103;
  v32[3] = v31;

  v33 = v106;
  v34 = v120;
  v120[4] = v105;
  v34[5] = v33;

  v35 = v108;
  v36 = v120;
  v120[6] = v107;
  v36[7] = v35;

  v37 = v110;
  v38 = v120;
  v120[8] = v109;
  v38[9] = v37;

  v39 = v112;
  v40 = v120;
  v120[10] = v111;
  v40[11] = v39;

  v41 = v114;
  v42 = v120;
  v120[12] = v113;
  v42[13] = v41;

  v43 = v116;
  v44 = v120;
  v120[14] = v115;
  v44[15] = v43;

  v45 = v119;
  v46 = v120;
  v120[16] = v118;
  v46[17] = v45;
  sub_225EF5418();

  if (os_log_type_enabled(v122, v123))
  {
    v47 = v66;
    v58 = sub_22609A188();
    v56[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v57 = 1;
    v59 = sub_225EF5468(1);
    v60 = sub_225EF5468(v57);
    v61 = v128;
    v128[0] = v58;
    v62 = &v127;
    v127 = v59;
    v63 = &v126;
    v126 = v60;
    sub_225EF54BC(2, v128);
    sub_225EF54BC(3, v61);
    v124 = v101;
    v125 = v102;
    sub_225EF73E8(&v124, v61, v62, v63);
    v64 = v47;
    if (v47)
    {

      __break(1u);
    }

    else
    {
      v124 = v103;
      v125 = v104;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[8] = 0;
      v124 = v105;
      v125 = v106;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[7] = 0;
      v124 = v107;
      v125 = v108;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[6] = 0;
      v124 = v109;
      v125 = v110;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[5] = 0;
      v124 = v111;
      v125 = v112;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[4] = 0;
      v124 = v113;
      v125 = v114;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[3] = 0;
      v124 = v115;
      v125 = v116;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      v56[2] = 0;
      v124 = v118;
      v125 = v119;
      sub_225EF73E8(&v124, v128, &v127, &v126);
      _os_log_impl(&dword_225EEB000, v122, v123, "%@ %s:%ld queue task enqueued", v58, 0x20u);
      v56[1] = 1;
      sub_225EF7AF4(v59);
      sub_225EF7AF4(v60);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v122);
  (*(v83 + 8))(v82, v85);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v86);
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v48 = swift_allocObject();
  v49 = countAndFlagsBits;
  v50 = object;
  v51 = v77._countAndFlagsBits;
  v52 = v77._object;
  v53 = v78._countAndFlagsBits;
  v54 = v78._object;
  v55 = v65;
  *(v48 + 16) = v86;
  *(v48 + 24) = v49;
  *(v48 + 32) = v50;
  *(v48 + 40) = v51;
  *(v48 + 48) = v52;
  *(v48 + 56) = v53;
  *(v48 + 64) = v54;
  v128[1] = v55;
  v128[2] = v48;
  sub_226099DD8();
  (*(v68 + 8))(v71, v67);
  (*(v73 + 8))(v76, v72);
}

uint64_t sub_225FE2F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[28] = a7;
  v8[27] = a6;
  v8[26] = a5;
  v8[25] = a4;
  v8[24] = a3;
  v8[23] = a2;
  v8[14] = v8;
  v8[15] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[13] = 0;
  v8[16] = 0;
  v8[17] = 0;
  v8[18] = 0;
  v8[22] = 0;
  v9 = *(*(sub_2260991E8() - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v10 = sub_226098C58();
  v8[31] = v10;
  v13 = *(v10 - 8);
  v8[32] = v13;
  v14 = *(v13 + 64);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[15] = a2;
  v8[8] = a3;
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v8[13] = a8;
  v11 = v8[14];

  return MEMORY[0x2822009F8](sub_225FE311C, 0, 0);
}

uint64_t sub_225FE311C()
{
  v51 = v0;
  v1 = v0[34];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[23];
  v0[14] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v27 + 16);
  v0[35] = v3;
  v0[36] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v28);
  MEMORY[0x277D82BE0](v29);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v44 = sub_226098C48();
  v45 = sub_22609A0A8();
  v34 = swift_allocObject();
  *(v34 + 16) = 64;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F3E198;
  *(v31 + 24) = v30;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225F3E1C8;
  *(v36 + 24) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225FE2EF0;
  *(v32 + 24) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_225EF7B84;
  *(v39 + 24) = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225FE50EC;
  *(v33 + 24) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_225F2D374;
  *(v42 + 24) = v33;
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v43 = v4;

  *v43 = sub_225EF7434;
  v43[1] = v34;

  v43[2] = sub_225EF7434;
  v43[3] = v35;

  v43[4] = sub_225F3E358;
  v43[5] = v36;

  v43[6] = sub_225EF7434;
  v43[7] = v37;

  v43[8] = sub_225EF7434;
  v43[9] = v38;

  v43[10] = sub_225EF7B90;
  v43[11] = v39;

  v43[12] = sub_225EF7434;
  v43[13] = v40;

  v43[14] = sub_225EF7434;
  v43[15] = v41;

  v43[16] = sub_225EF71D0;
  v43[17] = v42;
  sub_225EF5418();

  if (os_log_type_enabled(v44, v45))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v24 = sub_225EF5468(1);
    v25 = sub_225EF5468(1);
    v46 = buf;
    v47 = v24;
    v48 = v25;
    sub_225EF54BC(2, &v46);
    sub_225EF54BC(3, &v46);
    v49 = sub_225EF7434;
    v50 = v34;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7434;
    v50 = v35;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225F3E358;
    v50 = v36;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7434;
    v50 = v37;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7434;
    v50 = v38;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7B90;
    v50 = v39;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7434;
    v50 = v40;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7434;
    v50 = v41;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF71D0;
    v50 = v42;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_225EEB000, v44, v45, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v24);
    sub_225EF7AF4(v25);
    sub_22609A168();
  }

  else
  {
  }

  v18 = v26[34];
  v19 = v26[31];
  v20 = v26[23];
  v17 = v26[32];
  MEMORY[0x277D82BD8](v44);
  v5 = *(v17 + 8);
  v26[38] = v5;
  v26[39] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v18, v19);
  v21 = (v20 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v22 = *v21;
  v26[40] = *v21;

  swift_endAccess();
  if (v22)
  {
    v6 = v26[23];
    v26[16] = v22;
    v15 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    v16 = *v15;
    v26[41] = *v15;

    swift_endAccess();
    if (v16)
    {
      v26[17] = v16;
      v7 = *(MEMORY[0x277CDCA60] + 4);
      v8 = swift_task_alloc();
      v26[42] = v8;
      *v8 = v26[14];
      v8[1] = sub_225FE3F50;

      return MEMORY[0x28212BC38]();
    }
  }

  sub_225FE50F8(v26[23]);
  v9 = v26[34];
  v13 = v26[33];
  v14 = v26[30];

  v10 = *(v26[14] + 8);
  v11 = v26[14];

  return v10();
}

uint64_t sub_225FE3F50(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 336);
  *(v6 + 112) = *v1;
  *(v6 + 344) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_225FE406C, 0, 0);
}

uint64_t sub_225FE406C()
{
  v7 = v0[43];
  v21 = v0[40];
  v20 = v0[30];
  v19 = v0[29];
  v17 = v0[28];
  v15 = v0[27];
  v13 = v0[26];
  v11 = v0[25];
  v9 = v0[24];
  v0[14] = v0;
  v0[18] = sub_226099188();

  sub_2260991A8();
  v8 = sub_22609A4F8();
  v10 = v1;
  sub_2260998E8();
  *v10 = v9;
  v10[1] = v11;
  sub_225EF5418();
  v0[19] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
  sub_226099948();
  sub_2260991B8();
  v12 = sub_22609A4F8();
  v14 = v2;
  sub_2260998E8();
  *v14 = v13;
  v14[1] = v15;
  sub_225EF5418();
  v0[20] = v12;
  sub_226099948();
  sub_2260991D8();
  v16 = sub_22609A4F8();
  v18 = v3;
  sub_2260998E8();
  *v18 = v17;
  v18[1] = v19;
  sub_225EF5418();
  v0[21] = v16;
  sub_226099948();
  v4 = *(MEMORY[0x277CDCA60] + 4);
  v5 = swift_task_alloc();
  *(v22 + 352) = v5;
  *v5 = *(v22 + 112);
  v5[1] = sub_225FE42D8;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FE42D8(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 352);
  *(v6 + 112) = *v1;
  *(v6 + 360) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_225FE43F4, 0, 0);
}

uint64_t sub_225FE43F4()
{
  v0[14] = v0;
  v6 = v0[18];
  v0[46] = v6;
  sub_2260998E8();
  v1 = *(MEMORY[0x277CDCC00] + 4);
  v2 = swift_task_alloc();
  v5[47] = v2;
  *v2 = v5[14];
  v2[1] = sub_225FE44B4;
  v3 = v5[45];

  return MEMORY[0x28212BEE8](v6);
}

uint64_t sub_225FE44B4()
{
  v8 = *v0;
  v1 = *(*v0 + 376);
  v6 = *(*v0 + 368);
  v7 = *(*v0 + 360);
  v2 = *(*v0 + 328);
  *(v8 + 112) = *v0;

  v3 = *(MEMORY[0x277CDCB80] + 4);
  v4 = swift_task_alloc();
  *(v8 + 384) = v4;
  *v4 = *(v8 + 112);
  v4[1] = sub_225FE4698;

  return MEMORY[0x28212BE10]();
}

uint64_t sub_225FE4698()
{
  v7 = *v1;
  v2 = *(*v1 + 384);
  *(v7 + 112) = *v1;
  v8 = (v7 + 112);
  *(v7 + 392) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225FE4930;
  }

  else
  {
    v3 = *v8;
    v4 = sub_225FE4800;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FE4800()
{
  v0[14] = v0;
  sub_225EFE6E8(v0 + 18);
  v1 = v0[41];
  v6 = v0[40];
  v7 = v0[23];

  sub_225FE50F8(v7);
  v2 = v0[34];
  v8 = v0[33];
  v9 = v0[30];

  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3();
}

uint64_t sub_225FE4930()
{
  v43 = v0;
  v27 = v0[49];
  v35 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v1 = v0[33];
  v24 = v0[31];
  v0[14] = v0;
  sub_225EFE6E8(v0 + 18);
  v2 = v27;
  v0[22] = v27;
  v3 = sub_225F7E9BC();
  v26(v1, v3, v24);
  v4 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  sub_225F3EAE8();

  v36 = sub_226098C48();
  v37 = sub_22609A098();
  v31 = swift_allocObject();
  *(v31 + 16) = 64;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F3EA68;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225F3EA70;
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225F3E1C8;
  *(v33 + 24) = v30;
  sub_22609A4F8();
  v34 = v5;

  *v34 = sub_225EF7434;
  v34[1] = v31;

  v34[2] = sub_225EF7434;
  v34[3] = v32;

  v34[4] = sub_225F3E358;
  v34[5] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v21 = sub_225EF5468(1);
    v22 = sub_225EF5468(0);
    v38 = buf;
    v39 = v21;
    v40 = v22;
    sub_225EF54BC(2, &v38);
    sub_225EF54BC(1, &v38);
    v41 = sub_225EF7434;
    v42 = v31;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v32;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225F3E358;
    v42 = v33;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_225EEB000, v36, v37, "Resuming recognition failed with the error: %@", buf, 0xCu);
    sub_225EF7AF4(v21);
    sub_225EF7AF4(v22);
    sub_22609A168();
  }

  else
  {
  }

  v15 = v23[49];
  v13 = v23[39];
  v14 = v23[38];
  v11 = v23[33];
  v12 = v23[31];
  MEMORY[0x277D82BD8](v36);
  v14(v11, v12);

  v6 = v23[41];
  v17 = v23[23];
  v16 = v23[40];

  sub_225FE50F8(v17);
  v7 = v23[34];
  v18 = v23[33];
  v19 = v23[30];

  v8 = *(v23[14] + 8);
  v9 = v23[14];

  return v8();
}

uint64_t sub_225FE50F8(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FE2EF0;
  v59 = sub_225EF7B84;
  v63 = sub_22601D480;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_225FE6F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = v29;
  v8[32] = v28;
  v8[31] = v27;
  v8[30] = v26;
  v8[29] = v25;
  v8[28] = a8;
  v8[27] = a7;
  v8[26] = a6;
  v8[25] = a5;
  v8[24] = a4;
  v8[23] = a3;
  v8[22] = a2;
  v8[14] = v8;
  v8[15] = 0;
  v8[8] = 0;
  v8[9] = 0;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[13] = 0;
  v8[16] = 0;
  v8[17] = 0;
  v8[18] = 0;
  v8[19] = 0;
  v8[20] = 0;
  v8[21] = 0;
  v11 = sub_2260995B8();
  v8[34] = v11;
  v16 = *(v11 - 8);
  v8[35] = v16;
  v17 = *(v16 + 64);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v12 = sub_226098C58();
  v8[38] = v12;
  v18 = *(v12 - 8);
  v8[39] = v18;
  v13 = *(v18 + 64) + 15;
  v8[40] = swift_task_alloc();
  v8[15] = a2;
  v8[8] = a3;
  v8[9] = a4;
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v8[13] = a8;
  v8[16] = v25;
  v8[17] = v26;
  v8[18] = v27;
  v8[19] = v28;
  v8[20] = v29;
  v14 = v8[14];

  return MEMORY[0x2822009F8](sub_225FE7224, 0, 0);
}

uint64_t sub_225FE7224()
{
  v61 = v0;
  v1 = v0[40];
  v37 = v0[39];
  v38 = v0[38];
  v39 = v0[22];
  v0[14] = v0;
  v2 = sub_225F7E9BC();
  (*(v37 + 16))(v1, v2, v38);
  MEMORY[0x277D82BE0](v39);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v54 = sub_226098C48();
  v55 = sub_22609A0A8();
  v44 = swift_allocObject();
  *(v44 + 16) = 64;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_225F3E198;
  *(v41 + 24) = v40;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F3E1C8;
  *(v46 + 24) = v41;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_225FE6F0C;
  *(v42 + 24) = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225EF7B84;
  *(v49 + 24) = v42;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_225FE9090;
  *(v43 + 24) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F2D374;
  *(v52 + 24) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v53 = v3;

  *v53 = sub_225EF7434;
  v53[1] = v44;

  v53[2] = sub_225EF7434;
  v53[3] = v45;

  v53[4] = sub_225F3E358;
  v53[5] = v46;

  v53[6] = sub_225EF7434;
  v53[7] = v47;

  v53[8] = sub_225EF7434;
  v53[9] = v48;

  v53[10] = sub_225EF7B90;
  v53[11] = v49;

  v53[12] = sub_225EF7434;
  v53[13] = v50;

  v53[14] = sub_225EF7434;
  v53[15] = v51;

  v53[16] = sub_225EF71D0;
  v53[17] = v52;
  sub_225EF5418();

  if (os_log_type_enabled(v54, v55))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v34 = sub_225EF5468(1);
    v35 = sub_225EF5468(1);
    v56 = buf;
    v57 = v34;
    v58 = v35;
    sub_225EF54BC(2, &v56);
    sub_225EF54BC(3, &v56);
    v59 = sub_225EF7434;
    v60 = v44;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF7434;
    v60 = v45;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225F3E358;
    v60 = v46;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF7434;
    v60 = v47;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF7434;
    v60 = v48;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF7B90;
    v60 = v49;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF7434;
    v60 = v50;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF7434;
    v60 = v51;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    v59 = sub_225EF71D0;
    v60 = v52;
    sub_225EF73E8(&v59, &v56, &v57, &v58);
    _os_log_impl(&dword_225EEB000, v54, v55, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v34);
    sub_225EF7AF4(v35);
    sub_22609A168();
  }

  else
  {
  }

  v28 = v36[40];
  v29 = v36[38];
  v30 = v36[22];
  v27 = v36[39];
  MEMORY[0x277D82BD8](v54);
  (*(v27 + 8))(v28, v29);
  v31 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v32 = *v31;
  v36[41] = *v31;

  swift_endAccess();
  if (v32)
  {
    v4 = v36[22];
    v36[21] = v32;
    v25 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    v26 = *v25;

    swift_endAccess();
    if (v26)
    {
      v16 = v36[37];
      v15 = v36[33];
      v14 = v36[32];
      v13 = v36[31];
      v23 = v36[30];
      v22 = v36[29];
      v21 = v36[28];
      v20 = v36[27];
      v19 = v36[26];
      v18 = v36[25];
      v17 = v36[24];
      v24 = v36[23];

      sub_2260998E8();
      sub_2260998E8();
      sub_2260998E8();
      MEMORY[0x277D82BE0](v22);
      MEMORY[0x277D82BE0](v23);
      MEMORY[0x277D82BE0](v13);
      MEMORY[0x277D82BE0](v14);
      MEMORY[0x277D82BE0](v15);
      sub_2260995A8();
      v5 = *(MEMORY[0x277CDCA60] + 4);
      v6 = swift_task_alloc();
      v36[42] = v6;
      *v6 = v36[14];
      v6[1] = sub_225FE8368;

      return MEMORY[0x28212BC38]();
    }
  }

  sub_225FE909C(v36[22]);
  v7 = v36[40];
  v11 = v36[37];
  v12 = v36[36];

  v8 = *(v36[14] + 8);
  v9 = v36[14];

  return v8();
}

uint64_t sub_225FE8368(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 336);
  *(v6 + 112) = *v1;
  *(v6 + 344) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_225FE8484, 0, 0);
}

uint64_t sub_225FE8484()
{
  v11 = v0[37];
  v10 = v0[35];
  v12 = v0[34];
  v0[14] = v0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CD8, &qword_2260A0E70);
  v0[44] = v13;
  sub_22609A4F8();
  v9 = v1;
  v8 = *(v13 + 48);
  sub_226099148();
  *(v9 + v8 + 24) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + v8));
  v3 = *(v10 + 16);
  v0[45] = v3;
  v0[46] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(boxed_opaque_existential_0, v11, v12);
  sub_225EF5418();
  v0[47] = sub_226099158();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CE0, &qword_2260A0E78);
  v0[48] = v15;
  v0[49] = sub_2260239A4();
  v16 = sub_2260998A8();
  v0[50] = v16;
  v4 = *(MEMORY[0x277CDCC08] + 4);
  v5 = swift_task_alloc();
  v14[51] = v5;
  *v5 = v14[14];
  v5[1] = sub_225FE8650;
  v6 = v14[43];

  return MEMORY[0x28212BEF0](v16, v15);
}

uint64_t sub_225FE8650()
{
  v6 = *v0;
  v1 = *(*v0 + 408);
  v4 = *(*v0 + 400);
  v5 = *(*v0 + 344);
  *(v6 + 112) = *v0;

  v2 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_225FE87A8, 0, 0);
}

uint64_t sub_225FE87A8()
{
  v1 = *(v0 + 264);
  v25 = v1;
  *(v0 + 112) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v25)
  {
    v2 = v24[41];
    v15 = v24[36];
    v14 = v24[32];
    v13 = v24[31];
    v22 = v24[30];
    v21 = v24[29];
    v20 = v24[28];
    v19 = v24[27];
    v18 = v24[26];
    v17 = v24[25];
    v16 = v24[24];
    v23 = v24[23];
    MEMORY[0x277D82BD8](v24[33]);
    sub_2260998E8();
    sub_2260998E8();
    sub_2260998E8();
    MEMORY[0x277D82BE0](v21);
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BE0](v13);
    MEMORY[0x277D82BE0](v14);
    sub_2260995A8();
    v3 = *(MEMORY[0x277CDCA60] + 4);
    v4 = swift_task_alloc();
    v24[52] = v4;
    *v4 = v24[14];
    v4[1] = sub_225FE8B0C;

    return MEMORY[0x28212BC38]();
  }

  else
  {
    v10 = v24[22];
    v9 = v24[41];
    (*(v24[35] + 8))(v24[37], v24[34]);

    sub_225FE909C(v10);
    v5 = v24[40];
    v11 = v24[37];
    v12 = v24[36];

    v6 = *(v24[14] + 8);
    v7 = v24[14];

    return v6();
  }
}

uint64_t sub_225FE8B0C(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 416);
  *(v6 + 112) = *v1;
  *(v6 + 424) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_225FE8C28, 0, 0);
}

uint64_t sub_225FE8C28()
{
  v17 = v0[49];
  v16 = v0[48];
  v15 = v0[47];
  v12 = v0[46];
  v13 = v0[45];
  v14 = v0[44];
  v10 = v0[36];
  v11 = v0[34];
  v0[14] = v0;
  sub_22609A4F8();
  v9 = v1;
  v8 = *(v14 + 48);
  sub_226099148();
  *(v9 + v8 + 24) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + v8));
  v13(boxed_opaque_existential_0, v10, v11);
  sub_225EF5418();
  v19 = sub_2260998A8();
  v0[54] = v19;
  v3 = *(MEMORY[0x277CDCC08] + 4);
  v4 = swift_task_alloc();
  v18[55] = v4;
  *v4 = v18[14];
  v4[1] = sub_225FE8D94;
  v5 = v18[53];
  v6 = v18[48];

  return MEMORY[0x28212BEF0](v19, v6);
}

uint64_t sub_225FE8D94()
{
  v6 = *v0;
  v1 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 424);
  *(v6 + 112) = *v0;

  v2 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_225FE8EEC, 0, 0);
}

uint64_t sub_225FE8EEC()
{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[34];
  v0[14] = v0;
  (*(v2 + 8))(v1, v3);
  v8 = v0[41];
  v9 = v0[22];
  (*(v0[35] + 8))(v0[37], v0[34]);

  sub_225FE909C(v9);
  v4 = v0[40];
  v10 = v0[37];
  v11 = v0[36];

  v5 = *(v0[14] + 8);
  v6 = v0[14];

  return v5();
}

uint64_t sub_225FE909C(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FE6F0C;
  v59 = sub_225EF7B84;
  v63 = sub_22601D48C;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.finishAudio()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FEAD88;
  v76 = sub_225EF7B84;
  v80 = sub_225FEADB8;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0BF0;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v0, v1, v2);
  v59 = v44 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v3, v4, v5);
  v64 = v44 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v6, v7, v8);
  v9 = v44 - v65;
  v66 = v44 - v65;
  v113 = v10;
  v11 = sub_225F7E9BC();
  (*(v67 + 16))(v9, v11, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v12 = swift_allocObject();
  v13 = v72;
  v74 = v12;
  *(v12 + 16) = v71;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v74;
  v90 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = v15;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v16 = swift_allocObject();
  v77 = v16;
  *(v16 + 16) = v75;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v77;
  v96 = v17;
  *(v17 + 16) = v76;
  *(v17 + 24) = v18;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v19 = swift_allocObject();
  v84 = v19;
  *(v19 + 16) = v80;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v84;
  v103 = v20;
  *(v20 + 16) = v83;
  *(v20 + 24) = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v22;

  v23 = v86;
  v24 = v104;
  *v104 = v85;
  v24[1] = v23;

  v25 = v88;
  v26 = v104;
  v104[2] = v87;
  v26[3] = v25;

  v27 = v90;
  v28 = v104;
  v104[4] = v89;
  v28[5] = v27;

  v29 = v92;
  v30 = v104;
  v104[6] = v91;
  v30[7] = v29;

  v31 = v94;
  v32 = v104;
  v104[8] = v93;
  v32[9] = v31;

  v33 = v96;
  v34 = v104;
  v104[10] = v95;
  v34[11] = v33;

  v35 = v98;
  v36 = v104;
  v104[12] = v97;
  v36[13] = v35;

  v37 = v100;
  v38 = v104;
  v104[14] = v99;
  v38[15] = v37;

  v39 = v103;
  v40 = v104;
  v104[16] = v102;
  v40[17] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v41 = v54;
    v46 = sub_22609A188();
    v44[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1);
    v48 = sub_225EF5468(v45);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[8] = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[7] = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[6] = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[5] = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[4] = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[3] = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[2] = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v44[1] = 1;
      sub_225EF7AF4(v47);
      sub_225EF7AF4(v48);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v42 = swift_allocObject();
  v43 = v53;
  *(v42 + 16) = v70;
  v112[1] = v43;
  v112[2] = v42;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FEADC4(uint64_t a1, uint64_t a2)
{
  v2[14] = a2;
  v2[11] = v2;
  v2[12] = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v2[16] = v4;
  v11 = *(v4 - 8);
  v2[17] = v11;
  v5 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = sub_226098C58();
  v2[20] = v7;
  v12 = *(v7 - 8);
  v2[21] = v12;
  v8 = *(v12 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[12] = a2;
  v9 = v2[11];

  return MEMORY[0x2822009F8](sub_225FEAFA8, 0, 0);
}

uint64_t sub_225FEAFA8()
{
  v59 = v0;
  v1 = v0[22];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[14];
  v0[11] = v0;
  v2 = sub_225F7E9BC();
  (*(v35 + 16))(v1, v2, v36);
  MEMORY[0x277D82BE0](v37);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  v52 = sub_226098C48();
  v53 = sub_22609A0A8();
  v42 = swift_allocObject();
  *(v42 + 16) = 64;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_225F3E198;
  *(v39 + 24) = v38;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F3E1C8;
  *(v44 + 24) = v39;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_225FEAD88;
  *(v40 + 24) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_225EF7B84;
  *(v47 + 24) = v40;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_225FEBDB0;
  *(v41 + 24) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_225F2D374;
  *(v50 + 24) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v51 = v3;

  *v51 = sub_225EF7434;
  v51[1] = v42;

  v51[2] = sub_225EF7434;
  v51[3] = v43;

  v51[4] = sub_225F3E358;
  v51[5] = v44;

  v51[6] = sub_225EF7434;
  v51[7] = v45;

  v51[8] = sub_225EF7434;
  v51[9] = v46;

  v51[10] = sub_225EF7B90;
  v51[11] = v47;

  v51[12] = sub_225EF7434;
  v51[13] = v48;

  v51[14] = sub_225EF7434;
  v51[15] = v49;

  v51[16] = sub_225EF71D0;
  v51[17] = v50;
  sub_225EF5418();

  if (os_log_type_enabled(v52, v53))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v32 = sub_225EF5468(1);
    v33 = sub_225EF5468(1);
    v54 = buf;
    v55 = v32;
    v56 = v33;
    sub_225EF54BC(2, &v54);
    sub_225EF54BC(3, &v54);
    v57 = sub_225EF7434;
    v58 = v42;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF7434;
    v58 = v43;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225F3E358;
    v58 = v44;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF7434;
    v58 = v45;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF7434;
    v58 = v46;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF7B90;
    v58 = v47;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF7434;
    v58 = v48;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF7434;
    v58 = v49;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    v57 = sub_225EF71D0;
    v58 = v50;
    sub_225EF73E8(&v57, &v54, &v55, &v56);
    _os_log_impl(&dword_225EEB000, v52, v53, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v32);
    sub_225EF7AF4(v33);
    sub_22609A168();
  }

  else
  {
  }

  v26 = v34[22];
  v27 = v34[20];
  v28 = v34[14];
  v25 = v34[21];
  MEMORY[0x277D82BD8](v52);
  (*(v25 + 8))(v26, v27);
  v29 = (v28 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v30 = *v29;

  swift_endAccess();
  v34[13] = v30;
  if (v34[13])
  {
    sub_225EF5A0C(v34 + 13);
  }

  else
  {
    sub_225EF5A0C(v34 + 13);
    v24 = (v34[14] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
    swift_beginAccess();
    *v24 = 1;
    swift_endAccess();
  }

  v22 = v34[19];
  v23 = v34[16];
  v4 = v34[14];
  v21 = v34[17];
  sub_225EF95B0(v22);
  if ((*(v21 + 48))(v22, 1, v23))
  {
    sub_225EF97AC(v34[19]);
  }

  else
  {
    v17 = v34[19];
    v19 = v34[18];
    v20 = v34[16];
    v18 = v34[17];
    (*(v18 + 16))(v19);
    sub_225EF97AC(v17);
    sub_226099DE8();
    (*(v18 + 8))(v19, v20);
  }

  v13 = v34[22];
  v14 = v34[19];
  v15 = v34[18];
  v16 = v34[15];
  v12 = v34[14];
  v5 = sub_226099DA8();
  (*(*(v5 - 8) + 56))(v16, 1);
  v10 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v11 = *v10;

  swift_endAccess();
  MEMORY[0x277D82BE0](v12);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v12;
  v6[5] = v11;
  sub_225F38F2C(0, 0, v16, &unk_2260A0E68, v6, MEMORY[0x277D84F78] + 8);

  sub_225FEBDBC(v12);

  v7 = *(v34[11] + 8);
  v8 = v34[11];

  return v7();
}

uint64_t sub_225FEBDBC(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FEAD88;
  v59 = sub_225EF7B84;
  v63 = sub_22601D498;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_225FEC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v5[7] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[6] = 0;
  v6 = sub_226099D58();
  v5[9] = v6;
  v11 = *(v6 - 8);
  v5[10] = v11;
  v7 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = sub_226098C58();
  v5[12] = v8;
  v12 = *(v8 - 8);
  v5[13] = v12;
  v13 = *(v12 + 64);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  v9 = v5[2];

  return MEMORY[0x2822009F8](sub_225FECB44, 0, 0);
}

uint64_t sub_225FECB44()
{
  v83 = v0;
  v1 = v0[16];
  v54 = v0[13];
  v55 = v0[12];
  v56 = v0[7];
  v0[2] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v54 + 16);
  v0[17] = v3;
  v0[18] = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v55);
  MEMORY[0x277D82BE0](v56);
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  v71 = sub_226098C48();
  v72 = sub_22609A0A8();
  v61 = swift_allocObject();
  *(v61 + 16) = 64;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_225F3E198;
  *(v58 + 24) = v57;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225F3E1C8;
  *(v63 + 24) = v58;
  v64 = swift_allocObject();
  *(v64 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_225FEAD88;
  *(v59 + 24) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225EF7B84;
  *(v66 + 24) = v59;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225FF0120;
  *(v60 + 24) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225F2D374;
  *(v69 + 24) = v60;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v70 = v4;

  *v70 = sub_225EF7434;
  v70[1] = v61;

  v70[2] = sub_225EF7434;
  v70[3] = v62;

  v70[4] = sub_225F3E358;
  v70[5] = v63;

  v70[6] = sub_225EF7434;
  v70[7] = v64;

  v70[8] = sub_225EF7434;
  v70[9] = v65;

  v70[10] = sub_225EF7B90;
  v70[11] = v66;

  v70[12] = sub_225EF7434;
  v70[13] = v67;

  v70[14] = sub_225EF7434;
  v70[15] = v68;

  v70[16] = sub_225EF71D0;
  v70[17] = v69;
  sub_225EF5418();

  if (os_log_type_enabled(v71, v72))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v51 = sub_225EF5468(1);
    v52 = sub_225EF5468(1);
    v78 = buf;
    v79 = v51;
    v80 = v52;
    sub_225EF54BC(2, &v78);
    sub_225EF54BC(3, &v78);
    v81 = sub_225EF7434;
    v82 = v61;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v62;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225F3E358;
    v82 = v63;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v64;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v65;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7B90;
    v82 = v66;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v67;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v68;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF71D0;
    v82 = v69;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    _os_log_impl(&dword_225EEB000, v71, v72, "%@ %s:%ld waiting for finish ", buf, 0x20u);
    sub_225EF7AF4(v51);
    sub_225EF7AF4(v52);
    sub_22609A168();
  }

  else
  {
  }

  v47 = v53[16];
  v48 = v53[12];
  v49 = v53[8];
  v46 = v53[13];
  MEMORY[0x277D82BD8](v71);
  v5 = *(v46 + 8);
  v53[20] = v5;
  v53[21] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v47, v48);

  if (v49)
  {
    v6 = v53[8];
    v7 = *(MEMORY[0x277CDCA48] + 4);
    v8 = swift_task_alloc();
    v53[22] = v8;
    *v8 = v53[2];
    v8[1] = sub_225FEE21C;

    return MEMORY[0x28212BBF0]();
  }

  else
  {
    v43 = v53[19];
    v26 = v53[18];
    v27 = v53[17];
    v9 = v53[15];
    v25 = v53[12];
    v28 = v53[7];
    v10 = sub_225F7E9BC();
    v27(v9, v10, v25);
    MEMORY[0x277D82BE0](v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    oslog = sub_226098C48();
    v45 = sub_22609A0A8();
    v33 = swift_allocObject();
    *(v33 + 16) = 64;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_225F3E198;
    *(v30 + 24) = v29;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_225F3E1C8;
    *(v35 + 24) = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_225FEAD88;
    *(v31 + 24) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_225EF7B84;
    *(v38 + 24) = v31;
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_225FF012C;
    *(v32 + 24) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_225F2D374;
    *(v41 + 24) = v32;
    sub_22609A4F8();
    v42 = v11;

    *v42 = sub_225EF7434;
    v42[1] = v33;

    v42[2] = sub_225EF7434;
    v42[3] = v34;

    v42[4] = sub_225F3E358;
    v42[5] = v35;

    v42[6] = sub_225EF7434;
    v42[7] = v36;

    v42[8] = sub_225EF7434;
    v42[9] = v37;

    v42[10] = sub_225EF7B90;
    v42[11] = v38;

    v42[12] = sub_225EF7434;
    v42[13] = v39;

    v42[14] = sub_225EF7434;
    v42[15] = v40;

    v42[16] = sub_225EF71D0;
    v42[17] = v41;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v45))
    {
      v22 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v23 = sub_225EF5468(1);
      v24 = sub_225EF5468(1);
      v73 = v22;
      v74 = v23;
      v75 = v24;
      sub_225EF54BC(2, &v73);
      sub_225EF54BC(3, &v73);
      v76 = sub_225EF7434;
      v77 = v33;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF7434;
      v77 = v34;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225F3E358;
      v77 = v35;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF7434;
      v77 = v36;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF7434;
      v77 = v37;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF7B90;
      v77 = v38;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF7434;
      v77 = v39;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF7434;
      v77 = v40;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      v76 = sub_225EF71D0;
      v77 = v41;
      sub_225EF73E8(&v76, &v73, &v74, &v75);
      _os_log_impl(&dword_225EEB000, oslog, v45, "%@ %s:%ld finished ", v22, 0x20u);
      sub_225EF7AF4(v23);
      sub_225EF7AF4(v24);
      sub_22609A168();
    }

    else
    {
    }

    v16 = v53[21];
    v17 = v53[20];
    v18 = v53[16];
    v19 = v53[15];
    v20 = v53[14];
    v15 = v53[12];
    v21 = v53[11];
    MEMORY[0x277D82BD8](oslog);
    v17(v19, v15);

    v12 = *(v53[2] + 8);
    v13 = v53[2];

    return v12();
  }
}

uint64_t sub_225FEE21C()
{
  v8 = *v1;
  v2 = *(*v1 + 176);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[23] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_225FEEEFC;
  }

  else
  {
    v3 = v8[8];

    v4 = *v9;
    v5 = sub_225FEE398;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FEE398()
{
  v45 = v0;
  v0[2] = v0;
  v18 = v0[23];
  v37 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v1 = v0[15];
  v19 = v0[12];
  v22 = v0[7];
  v2 = sub_225F7E9BC();
  v21(v1, v2, v19);
  MEMORY[0x277D82BE0](v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v38 = sub_226098C48();
  v39 = sub_22609A0A8();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_225F3E198;
  *(v24 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F3E1C8;
  *(v29 + 24) = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225FEAD88;
  *(v25 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225EF7B84;
  *(v32 + 24) = v25;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225FF012C;
  *(v26 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F2D374;
  *(v35 + 24) = v26;
  sub_22609A4F8();
  v36 = v3;

  *v36 = sub_225EF7434;
  v36[1] = v27;

  v36[2] = sub_225EF7434;
  v36[3] = v28;

  v36[4] = sub_225F3E358;
  v36[5] = v29;

  v36[6] = sub_225EF7434;
  v36[7] = v30;

  v36[8] = sub_225EF7434;
  v36[9] = v31;

  v36[10] = sub_225EF7B90;
  v36[11] = v32;

  v36[12] = sub_225EF7434;
  v36[13] = v33;

  v36[14] = sub_225EF7434;
  v36[15] = v34;

  v36[16] = sub_225EF71D0;
  v36[17] = v35;
  sub_225EF5418();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v15 = sub_225EF5468(1);
    v16 = sub_225EF5468(1);
    v40 = buf;
    v41 = v15;
    v42 = v16;
    sub_225EF54BC(2, &v40);
    sub_225EF54BC(3, &v40);
    v43 = sub_225EF7434;
    v44 = v27;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    if (v18)
    {
    }

    v43 = sub_225EF7434;
    v44 = v28;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225F3E358;
    v44 = v29;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v30;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v31;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7B90;
    v44 = v32;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v33;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v34;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF71D0;
    v44 = v35;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_225EEB000, v38, v39, "%@ %s:%ld finished ", buf, 0x20u);
    sub_225EF7AF4(v15);
    sub_225EF7AF4(v16);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v17[21];
  v9 = v17[20];
  v10 = v17[16];
  v11 = v17[15];
  v12 = v17[14];
  v7 = v17[12];
  v13 = v17[11];
  MEMORY[0x277D82BD8](v38);
  v9(v11, v7);

  v5 = *(v17[2] + 8);
  v6 = v17[2];

  return v5();
}

uint64_t sub_225FEEEFC()
{
  v82 = v0;
  v69 = v0[23];
  v71 = v0[11];
  v70 = v0[9];
  v1 = v0[8];
  v0[2] = v0;

  v2 = v69;
  v0[5] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  if (swift_dynamicCast())
  {
    v36 = *(v68 + 184);
    (*(*(v68 + 80) + 8))(*(v68 + 88), *(v68 + 72));
  }

  else
  {
    v25 = *(v68 + 184);
    v33 = *(v68 + 152);
    v23 = *(v68 + 144);
    v24 = *(v68 + 136);
    v9 = *(v68 + 112);
    v22 = *(v68 + 96);

    v10 = v25;
    *(v68 + 48) = v25;
    v11 = sub_225F7E9BC();
    v24(v9, v11, v22);
    v12 = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    sub_225F3EAE8();

    log = sub_226098C48();
    v35 = sub_22609A098();
    v29 = swift_allocObject();
    *(v29 + 16) = 64;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_225F3EA68;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_225F3EA70;
    *(v28 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_225F3E1C8;
    *(v31 + 24) = v28;
    sub_22609A4F8();
    v32 = v13;

    *v32 = sub_225EF7434;
    v32[1] = v29;

    v32[2] = sub_225EF7434;
    v32[3] = v30;

    v32[4] = sub_225F3E358;
    v32[5] = v31;
    sub_225EF5418();

    if (os_log_type_enabled(log, v35))
    {
      v19 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v20 = sub_225EF5468(1);
      v21 = sub_225EF5468(0);
      v77 = v19;
      v78 = v20;
      v79 = v21;
      sub_225EF54BC(2, &v77);
      sub_225EF54BC(1, &v77);
      v80 = sub_225EF7434;
      v81 = v29;
      sub_225EF73E8(&v80, &v77, &v78, &v79);
      v80 = sub_225EF7434;
      v81 = v30;
      sub_225EF73E8(&v80, &v77, &v78, &v79);
      v80 = sub_225F3E358;
      v81 = v31;
      sub_225EF73E8(&v80, &v77, &v78, &v79);
      _os_log_impl(&dword_225EEB000, log, v35, "Finishing recognition failed with the error: %@", v19, 0xCu);
      sub_225EF7AF4(v20);
      sub_225EF7AF4(v21);
      sub_22609A168();
    }

    else
    {
    }

    v18 = *(v68 + 184);
    v16 = *(v68 + 168);
    v17 = *(v68 + 160);
    v14 = *(v68 + 112);
    v15 = *(v68 + 96);
    MEMORY[0x277D82BD8](log);
    v17(v14, v15);
  }

  v65 = *(v68 + 152);
  v48 = *(v68 + 144);
  v49 = *(v68 + 136);
  v3 = *(v68 + 120);
  v47 = *(v68 + 96);
  v50 = *(v68 + 56);
  v4 = sub_225F7E9BC();
  v49(v3, v4, v47);
  MEMORY[0x277D82BE0](v50);
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  oslog = sub_226098C48();
  v67 = sub_22609A0A8();
  v55 = swift_allocObject();
  *(v55 + 16) = 64;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F3E198;
  *(v52 + 24) = v51;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_225F3E1C8;
  *(v57 + 24) = v52;
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_225FEAD88;
  *(v53 + 24) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225EF7B84;
  *(v60 + 24) = v53;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_225FF012C;
  *(v54 + 24) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225F2D374;
  *(v63 + 24) = v54;
  sub_22609A4F8();
  v64 = v5;

  *v64 = sub_225EF7434;
  v64[1] = v55;

  v64[2] = sub_225EF7434;
  v64[3] = v56;

  v64[4] = sub_225F3E358;
  v64[5] = v57;

  v64[6] = sub_225EF7434;
  v64[7] = v58;

  v64[8] = sub_225EF7434;
  v64[9] = v59;

  v64[10] = sub_225EF7B90;
  v64[11] = v60;

  v64[12] = sub_225EF7434;
  v64[13] = v61;

  v64[14] = sub_225EF7434;
  v64[15] = v62;

  v64[16] = sub_225EF71D0;
  v64[17] = v63;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v67))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = sub_225EF5468(1);
    v46 = sub_225EF5468(1);
    v72 = buf;
    v73 = v45;
    v74 = v46;
    sub_225EF54BC(2, &v72);
    sub_225EF54BC(3, &v72);
    v75 = sub_225EF7434;
    v76 = v55;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF7434;
    v76 = v56;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225F3E358;
    v76 = v57;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF7434;
    v76 = v58;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF7434;
    v76 = v59;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF7B90;
    v76 = v60;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF7434;
    v76 = v61;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF7434;
    v76 = v62;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    v75 = sub_225EF71D0;
    v76 = v63;
    sub_225EF73E8(&v75, &v72, &v73, &v74);
    _os_log_impl(&dword_225EEB000, oslog, v67, "%@ %s:%ld finished ", buf, 0x20u);
    sub_225EF7AF4(v45);
    sub_225EF7AF4(v46);
    sub_22609A168();
  }

  else
  {
  }

  v38 = *(v68 + 168);
  v39 = *(v68 + 160);
  v40 = *(v68 + 128);
  v41 = *(v68 + 120);
  v42 = *(v68 + 112);
  v37 = *(v68 + 96);
  v43 = *(v68 + 88);
  MEMORY[0x277D82BD8](oslog);
  v39(v41, v37);

  v6 = *(*(v68 + 16) + 8);
  v7 = *(v68 + 16);

  return v6();
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.stopAudioDecoding()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FF0FAC;
  v76 = sub_225EF7B84;
  v80 = sub_225FF0FDC;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0C00;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v0, v1, v2);
  v59 = v44 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v3, v4, v5);
  v64 = v44 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v6, v7, v8);
  v9 = v44 - v65;
  v66 = v44 - v65;
  v113 = v10;
  v11 = sub_225F7E9BC();
  (*(v67 + 16))(v9, v11, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v12 = swift_allocObject();
  v13 = v72;
  v74 = v12;
  *(v12 + 16) = v71;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v74;
  v90 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = v15;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v16 = swift_allocObject();
  v77 = v16;
  *(v16 + 16) = v75;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v77;
  v96 = v17;
  *(v17 + 16) = v76;
  *(v17 + 24) = v18;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v19 = swift_allocObject();
  v84 = v19;
  *(v19 + 16) = v80;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v84;
  v103 = v20;
  *(v20 + 16) = v83;
  *(v20 + 24) = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v22;

  v23 = v86;
  v24 = v104;
  *v104 = v85;
  v24[1] = v23;

  v25 = v88;
  v26 = v104;
  v104[2] = v87;
  v26[3] = v25;

  v27 = v90;
  v28 = v104;
  v104[4] = v89;
  v28[5] = v27;

  v29 = v92;
  v30 = v104;
  v104[6] = v91;
  v30[7] = v29;

  v31 = v94;
  v32 = v104;
  v104[8] = v93;
  v32[9] = v31;

  v33 = v96;
  v34 = v104;
  v104[10] = v95;
  v34[11] = v33;

  v35 = v98;
  v36 = v104;
  v104[12] = v97;
  v36[13] = v35;

  v37 = v100;
  v38 = v104;
  v104[14] = v99;
  v38[15] = v37;

  v39 = v103;
  v40 = v104;
  v104[16] = v102;
  v40[17] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v41 = v54;
    v46 = sub_22609A188();
    v44[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1);
    v48 = sub_225EF5468(v45);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[8] = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[7] = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[6] = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[5] = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[4] = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[3] = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[2] = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v44[1] = 1;
      sub_225EF7AF4(v47);
      sub_225EF7AF4(v48);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v42 = swift_allocObject();
  v43 = v53;
  *(v42 + 16) = v70;
  v112[1] = v43;
  v112[2] = v42;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FF0FE8(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[5] = v2;
  v2[6] = 0;
  v3 = sub_226098C58();
  v2[8] = v3;
  v7 = *(v3 - 8);
  v2[9] = v7;
  v4 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[6] = a2;
  v5 = v2[5];

  return MEMORY[0x2822009F8](sub_225FF10E0, 0, 0);
}

uint64_t sub_225FF10E0()
{
  v43 = v0;
  v1 = v0[10];
  v19 = v0[9];
  v20 = v0[8];
  v21 = v0[7];
  v0[5] = v0;
  v2 = sub_225F7E9BC();
  (*(v19 + 16))(v1, v2, v20);
  MEMORY[0x277D82BE0](v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v36 = sub_226098C48();
  v37 = sub_22609A0A8();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3E198;
  *(v23 + 24) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225F3E1C8;
  *(v28 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_225FF0FAC;
  *(v24 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225EF7B84;
  *(v31 + 24) = v24;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225FF1EA0;
  *(v25 + 24) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_225F2D374;
  *(v34 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v35 = v3;

  *v35 = sub_225EF7434;
  v35[1] = v26;

  v35[2] = sub_225EF7434;
  v35[3] = v27;

  v35[4] = sub_225F3E358;
  v35[5] = v28;

  v35[6] = sub_225EF7434;
  v35[7] = v29;

  v35[8] = sub_225EF7434;
  v35[9] = v30;

  v35[10] = sub_225EF7B90;
  v35[11] = v31;

  v35[12] = sub_225EF7434;
  v35[13] = v32;

  v35[14] = sub_225EF7434;
  v35[15] = v33;

  v35[16] = sub_225EF71D0;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = sub_225EF5468(1);
    v17 = sub_225EF5468(1);
    v38 = buf;
    v39 = v16;
    v40 = v17;
    sub_225EF54BC(2, &v38);
    sub_225EF54BC(3, &v38);
    v41 = sub_225EF7434;
    v42 = v26;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v27;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225F3E358;
    v42 = v28;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v29;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v30;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7B90;
    v42 = v31;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v32;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF7434;
    v42 = v33;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    v41 = sub_225EF71D0;
    v42 = v34;
    sub_225EF73E8(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_225EEB000, v36, v37, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v16);
    sub_225EF7AF4(v17);
    sub_22609A168();
  }

  else
  {
  }

  v11 = v18[10];
  v12 = v18[8];
  v13 = v18[7];
  v10 = v18[9];
  MEMORY[0x277D82BD8](v36);
  (*(v10 + 8))(v11, v12);
  v14 = (v13 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  if (*v14)
  {
    v18[11] = *v14;

    swift_endAccess();
    v7 = *(MEMORY[0x277CDCA38] + 4);
    v8 = swift_task_alloc();
    v18[12] = v8;
    *v8 = v18[5];
    v8[1] = sub_225FF1CC4;

    return MEMORY[0x28212BBD8]();
  }

  else
  {
    swift_endAccess();
    v9 = v18[10];
    sub_225FF1EAC(v18[7]);

    v4 = *(v18[5] + 8);
    v5 = v18[5];

    return v4();
  }
}

uint64_t sub_225FF1CC4()
{
  v5 = *v0;
  v1 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  *(v5 + 40) = *v0;

  v2 = *(v5 + 40);

  return MEMORY[0x2822009F8](sub_225FF1DFC, 0, 0);
}

uint64_t sub_225FF1DFC()
{
  v0[5] = v0;
  v4 = v0[10];
  sub_225FF1EAC(v0[7]);

  v1 = *(v0[5] + 8);
  v2 = v0[5];

  return v1();
}

uint64_t sub_225FF1EAC(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FF0FAC;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4A4;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.requestEagerResult()()
{
  v71 = sub_225F3E198;
  v73 = sub_225F3E1C8;
  v75 = sub_225FF38F4;
  v76 = sub_225EF7B84;
  v80 = sub_225FF3924;
  v83 = sub_225F2D374;
  v85 = sub_225EF7434;
  v87 = sub_225EF7434;
  v89 = sub_225F3E358;
  v91 = sub_225EF7434;
  v93 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v97 = sub_225EF7434;
  v99 = sub_225EF7434;
  v102 = sub_225EF71D0;
  v53 = &unk_2260A0C10;
  v113 = 0;
  v54 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v0, v1, v2);
  v59 = v44 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v3, v4, v5);
  v64 = v44 - v63;
  v69 = sub_226098C58();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v6, v7, v8);
  v9 = v44 - v65;
  v66 = v44 - v65;
  v113 = v10;
  v11 = sub_225F7E9BC();
  (*(v67 + 16))(v9, v11, v69);
  MEMORY[0x277D82BE0](v70);
  v82 = 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  v106 = sub_226098C48();
  v107 = sub_22609A0A8();
  v78 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v88 = swift_allocObject();
  v79 = 8;
  *(v88 + 16) = 8;
  v81 = 32;
  v12 = swift_allocObject();
  v13 = v72;
  v74 = v12;
  *(v12 + 16) = v71;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v74;
  v90 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = v15;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = v79;
  v16 = swift_allocObject();
  v77 = v16;
  *(v16 + 16) = v75;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v77;
  v96 = v17;
  *(v17 + 16) = v76;
  *(v17 + 24) = v18;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v79;
  v19 = swift_allocObject();
  v84 = v19;
  *(v19 + 16) = v80;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v84;
  v103 = v20;
  *(v20 + 16) = v83;
  *(v20 + 24) = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v101 = sub_22609A4F8();
  v104 = v22;

  v23 = v86;
  v24 = v104;
  *v104 = v85;
  v24[1] = v23;

  v25 = v88;
  v26 = v104;
  v104[2] = v87;
  v26[3] = v25;

  v27 = v90;
  v28 = v104;
  v104[4] = v89;
  v28[5] = v27;

  v29 = v92;
  v30 = v104;
  v104[6] = v91;
  v30[7] = v29;

  v31 = v94;
  v32 = v104;
  v104[8] = v93;
  v32[9] = v31;

  v33 = v96;
  v34 = v104;
  v104[10] = v95;
  v34[11] = v33;

  v35 = v98;
  v36 = v104;
  v104[12] = v97;
  v36[13] = v35;

  v37 = v100;
  v38 = v104;
  v104[14] = v99;
  v38[15] = v37;

  v39 = v103;
  v40 = v104;
  v104[16] = v102;
  v40[17] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(v106, v107))
  {
    v41 = v54;
    v46 = sub_22609A188();
    v44[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v45 = 1;
    v47 = sub_225EF5468(1);
    v48 = sub_225EF5468(v45);
    v49 = v112;
    v112[0] = v46;
    v50 = &v111;
    v111 = v47;
    v51 = &v110;
    v110 = v48;
    sub_225EF54BC(2, v112);
    sub_225EF54BC(3, v49);
    v108 = v85;
    v109 = v86;
    sub_225EF73E8(&v108, v49, v50, v51);
    v52 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v108 = v87;
      v109 = v88;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[8] = 0;
      v108 = v89;
      v109 = v90;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[7] = 0;
      v108 = v91;
      v109 = v92;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[6] = 0;
      v108 = v93;
      v109 = v94;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[5] = 0;
      v108 = v95;
      v109 = v96;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[4] = 0;
      v108 = v97;
      v109 = v98;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[3] = 0;
      v108 = v99;
      v109 = v100;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      v44[2] = 0;
      v108 = v102;
      v109 = v103;
      sub_225EF73E8(&v108, v112, &v111, &v110);
      _os_log_impl(&dword_225EEB000, v106, v107, "%@ %s:%ld queue task enqueued", v46, 0x20u);
      v44[1] = 1;
      sub_225EF7AF4(v47);
      sub_225EF7AF4(v48);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v67 + 8))(v66, v69);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v70);
  v42 = swift_allocObject();
  v43 = v53;
  *(v42 + 16) = v70;
  v112[1] = v43;
  v112[2] = v42;
  sub_226099DD8();
  (*(v56 + 8))(v59, v55);
  (*(v61 + 8))(v64, v60);
}

uint64_t sub_225FF3930(uint64_t a1, uint64_t a2)
{
  v2[18] = a2;
  v2[14] = v2;
  v2[15] = 0;
  v2[17] = 0;
  v2[26] = 0;
  v2[27] = 0;
  v2[28] = 0;
  v3 = sub_226098C58();
  v2[19] = v3;
  v7 = *(v3 - 8);
  v2[20] = v7;
  v4 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[15] = a2;
  v5 = v2[14];

  return MEMORY[0x2822009F8](sub_225FF3A38, 0, 0);
}

uint64_t sub_225FF3A38()
{
  v57 = v0;
  v1 = v0[21];
  v32 = v0[20];
  v33 = v0[19];
  v34 = v0[18];
  v0[14] = v0;
  v2 = sub_225F7E9BC();
  (*(v32 + 16))(v1, v2, v33);
  MEMORY[0x277D82BE0](v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v49 = sub_226098C48();
  v50 = sub_22609A0A8();
  v39 = swift_allocObject();
  *(v39 + 16) = 64;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225F3E198;
  *(v36 + 24) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_225F3E1C8;
  *(v41 + 24) = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_225FF38F4;
  *(v37 + 24) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225EF7B84;
  *(v44 + 24) = v37;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_225FF4CC0;
  *(v38 + 24) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_225F2D374;
  *(v47 + 24) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v48 = v3;

  *v48 = sub_225EF7434;
  v48[1] = v39;

  v48[2] = sub_225EF7434;
  v48[3] = v40;

  v48[4] = sub_225F3E358;
  v48[5] = v41;

  v48[6] = sub_225EF7434;
  v48[7] = v42;

  v48[8] = sub_225EF7434;
  v48[9] = v43;

  v48[10] = sub_225EF7B90;
  v48[11] = v44;

  v48[12] = sub_225EF7434;
  v48[13] = v45;

  v48[14] = sub_225EF7434;
  v48[15] = v46;

  v48[16] = sub_225EF71D0;
  v48[17] = v47;
  sub_225EF5418();

  if (os_log_type_enabled(v49, v50))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = sub_225EF5468(1);
    v30 = sub_225EF5468(1);
    v52 = buf;
    v53 = v29;
    v54 = v30;
    sub_225EF54BC(2, &v52);
    sub_225EF54BC(3, &v52);
    v55 = sub_225EF7434;
    v56 = v39;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF7434;
    v56 = v40;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225F3E358;
    v56 = v41;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF7434;
    v56 = v42;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF7434;
    v56 = v43;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF7B90;
    v56 = v44;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF7434;
    v56 = v45;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF7434;
    v56 = v46;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    v55 = sub_225EF71D0;
    v56 = v47;
    sub_225EF73E8(&v55, &v52, &v53, &v54);
    _os_log_impl(&dword_225EEB000, v49, v50, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v29);
    sub_225EF7AF4(v30);
    sub_22609A168();
  }

  else
  {
  }

  v23 = v31[21];
  v24 = v31[19];
  v25 = v31[18];
  v22 = v31[20];
  MEMORY[0x277D82BD8](v49);
  (*(v22 + 8))(v23, v24);
  v26 = (v25 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v27 = *v26;
  v31[22] = *v26;

  swift_endAccess();
  if (v27)
  {
    v4 = v31[18];
    v31[17] = v27;
    v20 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
    swift_beginAccess();
    v21 = *v20;
    swift_endAccess();
    if (((*&v21 >> 52) & 0x7FFLL) == 0x7FF || v21 <= -9.22337204e18 || v21 >= 9.22337204e18)
    {
      return sub_22609A3B8();
    }

    else
    {
      v51 = sub_22609A0D8();
      v14 = v8;
      v15 = v9;
      v31[26] = v51;
      v31[27] = v8;
      v31[28] = v9;
      type metadata accessor for CMTime();
      v10 = sub_22609A4F8();
      *v11 = v51;
      v11[1] = v14;
      v11[2] = v15;
      sub_225EF5418();
      v16 = v10;
      v31[23] = v10;
      v12 = *(MEMORY[0x277CDCB68] + 4);
      v13 = swift_task_alloc();
      v31[24] = v13;
      *v13 = v31[14];
      v13[1] = sub_225FF499C;

      return MEMORY[0x28212BDD8](v16);
    }
  }

  else
  {
    v17 = (v31[18] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
    swift_beginAccess();
    v18 = *v17;
    swift_endAccess();
    v31[16] = v18;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A70, &qword_2260A0AA8);
    sub_226099CE8();
    swift_endAccess();
    v19 = v31[21];
    sub_225FF4CCC(v31[18]);

    v5 = *(v31[14] + 8);
    v6 = v31[14];

    return v5();
  }
}

uint64_t sub_225FF499C()
{
  v8 = *v1;
  v2 = *(*v1 + 192);
  v8[14] = *v1;
  v9 = v8 + 14;
  v8[25] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_225FF4BE0;
  }

  else
  {
    v3 = v8[23];

    v4 = *v9;
    v5 = sub_225FF4B18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FF4B18()
{
  v0[14] = v0;
  v1 = v0[22];

  v5 = v0[21];
  sub_225FF4CCC(v0[18]);

  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t sub_225FF4BE0()
{
  v6 = v0[25];
  v1 = v0[23];
  v0[14] = v0;

  v2 = v0[22];

  v7 = v0[21];
  sub_225FF4CCC(v0[18]);

  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3();
}

uint64_t sub_225FF4CCC(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FF38F4;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4B0;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_225FF5958@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = v7 * *sub_225F7F6FC();
  if (((*&v8 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_22609A3B8();
    __break(1u);
  }

  if (v8 <= -9.22337204e18)
  {
    sub_22609A3B8();
    __break(1u);
  }

  if (v8 >= 9.22337204e18)
  {
    sub_22609A3B8();
    __break(1u);
  }

  result = sub_22609A0D8();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t static CoreEmbeddedSpeechAnalyzer.forceCooldownIfIdle()()
{
  v15 = &unk_2260A0C40;
  v16 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v14 = &v11 - v12;
  v16 = v0;
  v13 = 0;
  v5 = sub_226099DA8();
  (*(*(v5 - 8) + 56))(v14, 1);
  v6 = swift_allocObject();
  v7 = v13;
  v8 = v14;
  v9 = v15;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_225F38F2C(v7, v7, v8, v9, v6, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_225FF5CF0()
{
  v4 = v0;
  *(v0 + 16) = v0;
  v1 = *(MEMORY[0x277CDCCD0] + 4);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return MEMORY[0x28212C0B0]();
}

uint64_t static CoreEmbeddedSpeechAnalyzer.resetCache()()
{
  v15 = &unk_2260A0C50;
  v16 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v14 = &v11 - v12;
  v16 = v0;
  v13 = 0;
  v5 = sub_226099DA8();
  (*(*(v5 - 8) + 56))(v14, 1);
  v6 = swift_allocObject();
  v7 = v13;
  v8 = v14;
  v9 = v15;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_225F38F2C(v7, v7, v8, v9, v6, MEMORY[0x277D84F78] + 8);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.invalidate()()
{
  v74 = v0;
  v56 = 0;
  v75 = sub_225F3E198;
  v77 = sub_225F3E1C8;
  v79 = sub_225FF6D8C;
  v80 = sub_225EF7B84;
  v84 = sub_225FF6DBC;
  v87 = sub_225F2D374;
  v89 = sub_225EF7434;
  v91 = sub_225EF7434;
  v93 = sub_225F3E358;
  v95 = sub_225EF7434;
  v97 = sub_225EF7434;
  v99 = sub_225EF7B90;
  v101 = sub_225EF7434;
  v103 = sub_225EF7434;
  v106 = sub_225EF71D0;
  v55 = &unk_2260A0C60;
  ObjectType = swift_getObjectType();
  v117 = 0;
  v58 = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v1, v2, v3);
  v63 = v46 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64, v4, v5, v6);
  v68 = v46 - v67;
  v73 = sub_226098C58();
  v71 = *(v73 - 8);
  v72 = v73 - 8;
  v69 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v7, v8, v9);
  v10 = v46 - v69;
  v70 = v46 - v69;
  v117 = v11;
  v12 = sub_225F7E9BC();
  (*(v71 + 16))(v10, v12, v73);
  MEMORY[0x277D82BE0](v74);
  v86 = 7;
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  v110 = sub_226098C48();
  v111 = sub_22609A0A8();
  v82 = 17;
  v90 = swift_allocObject();
  *(v90 + 16) = 64;
  v92 = swift_allocObject();
  v83 = 8;
  *(v92 + 16) = 8;
  v85 = 32;
  v13 = swift_allocObject();
  v14 = v76;
  v78 = v13;
  *(v13 + 16) = v75;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v78;
  v94 = v15;
  *(v15 + 16) = v77;
  *(v15 + 24) = v16;
  v96 = swift_allocObject();
  *(v96 + 16) = 32;
  v98 = swift_allocObject();
  *(v98 + 16) = v83;
  v17 = swift_allocObject();
  v81 = v17;
  *(v17 + 16) = v79;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  v19 = v81;
  v100 = v18;
  *(v18 + 16) = v80;
  *(v18 + 24) = v19;
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v83;
  v20 = swift_allocObject();
  v88 = v20;
  *(v20 + 16) = v84;
  *(v20 + 24) = 0;
  v21 = swift_allocObject();
  v22 = v88;
  v107 = v21;
  *(v21 + 16) = v87;
  *(v21 + 24) = v22;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v105 = sub_22609A4F8();
  v108 = v23;

  v24 = v90;
  v25 = v108;
  *v108 = v89;
  v25[1] = v24;

  v26 = v92;
  v27 = v108;
  v108[2] = v91;
  v27[3] = v26;

  v28 = v94;
  v29 = v108;
  v108[4] = v93;
  v29[5] = v28;

  v30 = v96;
  v31 = v108;
  v108[6] = v95;
  v31[7] = v30;

  v32 = v98;
  v33 = v108;
  v108[8] = v97;
  v33[9] = v32;

  v34 = v100;
  v35 = v108;
  v108[10] = v99;
  v35[11] = v34;

  v36 = v102;
  v37 = v108;
  v108[12] = v101;
  v37[13] = v36;

  v38 = v104;
  v39 = v108;
  v108[14] = v103;
  v39[15] = v38;

  v40 = v107;
  v41 = v108;
  v108[16] = v106;
  v41[17] = v40;
  sub_225EF5418();

  if (os_log_type_enabled(v110, v111))
  {
    v42 = v58;
    v48 = sub_22609A188();
    v46[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v47 = 1;
    v49 = sub_225EF5468(1);
    v50 = sub_225EF5468(v47);
    v51 = v116;
    v116[0] = v48;
    v52 = &v115;
    v115 = v49;
    v53 = &v114;
    v114 = v50;
    sub_225EF54BC(2, v116);
    sub_225EF54BC(3, v51);
    v112 = v89;
    v113 = v90;
    sub_225EF73E8(&v112, v51, v52, v53);
    v54 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v112 = v91;
      v113 = v92;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[8] = 0;
      v112 = v93;
      v113 = v94;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[7] = 0;
      v112 = v95;
      v113 = v96;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[6] = 0;
      v112 = v97;
      v113 = v98;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[5] = 0;
      v112 = v99;
      v113 = v100;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[4] = 0;
      v112 = v101;
      v113 = v102;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[3] = 0;
      v112 = v103;
      v113 = v104;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v46[2] = 0;
      v112 = v106;
      v113 = v107;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      _os_log_impl(&dword_225EEB000, v110, v111, "%@ %s:%ld queue task enqueued", v48, 0x20u);
      v46[1] = 1;
      sub_225EF7AF4(v49);
      sub_225EF7AF4(v50);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v110);
  (*(v71 + 8))(v70, v73);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v74);
  v43 = swift_allocObject();
  v44 = ObjectType;
  v45 = v55;
  *(v43 + 16) = v74;
  *(v43 + 24) = v44;
  v116[1] = v45;
  v116[2] = v43;
  sub_226099DD8();
  (*(v60 + 8))(v63, v59);
  (*(v65 + 8))(v68, v64);
}

uint64_t sub_225FF6DC8(uint64_t a1, uint64_t a2)
{
  v2[32] = a2;
  v2[29] = v2;
  v2[30] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v2[33] = v3;
  v8 = *(v3 - 8);
  v2[34] = v8;
  v4 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08) - 8) + 64);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v5 = sub_226098C58();
  v2[38] = v5;
  v10 = *(v5 - 8);
  v2[39] = v10;
  v11 = *(v10 + 64);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[30] = a2;
  v6 = v2[29];

  return MEMORY[0x2822009F8](sub_225FF6FA0, 0, 0);
}

uint64_t sub_225FF6FA0()
{
  v105 = v0;
  v1 = v0[41];
  v75 = v0[39];
  v76 = v0[38];
  v78 = v0[32];
  v0[29] = v0;
  v2 = sub_225F7E9BC();
  v77 = *(v75 + 16);
  v77(v1, v2, v76);
  MEMORY[0x277D82BE0](v78);
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  v93 = sub_226098C48();
  v94 = sub_22609A0A8();
  v83 = swift_allocObject();
  *(v83 + 16) = 64;
  v84 = swift_allocObject();
  *(v84 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_225F3E198;
  *(v80 + 24) = v79;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_225F3E1C8;
  *(v85 + 24) = v80;
  v86 = swift_allocObject();
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  *(v87 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_225FF6D8C;
  *(v81 + 24) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_225EF7B84;
  *(v88 + 24) = v81;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = 8;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_225FF85CC;
  *(v82 + 24) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_225F2D374;
  *(v91 + 24) = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v92 = v3;

  *v92 = sub_225EF7434;
  v92[1] = v83;

  v92[2] = sub_225EF7434;
  v92[3] = v84;

  v92[4] = sub_225F3E358;
  v92[5] = v85;

  v92[6] = sub_225EF7434;
  v92[7] = v86;

  v92[8] = sub_225EF7434;
  v92[9] = v87;

  v92[10] = sub_225EF7B90;
  v92[11] = v88;

  v92[12] = sub_225EF7434;
  v92[13] = v89;

  v92[14] = sub_225EF7434;
  v92[15] = v90;

  v92[16] = sub_225EF71D0;
  v92[17] = v91;
  sub_225EF5418();

  if (os_log_type_enabled(v93, v94))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v72 = sub_225EF5468(1);
    v73 = sub_225EF5468(1);
    v100 = buf;
    v101 = v72;
    v102 = v73;
    sub_225EF54BC(2, &v100);
    sub_225EF54BC(3, &v100);
    v103 = sub_225EF7434;
    v104 = v83;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF7434;
    v104 = v84;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225F3E358;
    v104 = v85;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF7434;
    v104 = v86;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF7434;
    v104 = v87;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF7B90;
    v104 = v88;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF7434;
    v104 = v89;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF7434;
    v104 = v90;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    v103 = sub_225EF71D0;
    v104 = v91;
    sub_225EF73E8(&v103, &v100, &v101, &v102);
    _os_log_impl(&dword_225EEB000, v93, v94, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v72);
    sub_225EF7AF4(v73);
    sub_22609A168();
  }

  else
  {
  }

  v65 = v74[41];
  v66 = v74[38];
  v68 = v74[32];
  v64 = v74[39];
  MEMORY[0x277D82BD8](v93);
  v67 = *(v64 + 8);
  v67(v65, v66);
  v69 = (v68 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v70 = *v69;

  swift_endAccess();
  v74[31] = v70;
  if (v74[31])
  {
    sub_225EF5A0C(v74 + 31);
    v4 = v74[40];
    v54 = v74[38];
    v55 = v74[32];
    v5 = sub_225F7E9BC();
    v77(v4, v5, v54);
    MEMORY[0x277D82BE0](v55);
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    oslog = sub_226098C48();
    v63 = sub_22609A0A8();
    v58 = swift_allocObject();
    *(v58 + 16) = 64;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_225F3E198;
    *(v57 + 24) = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_225F3E1C8;
    *(v60 + 24) = v57;
    sub_22609A4F8();
    v61 = v6;

    *v61 = sub_225EF7434;
    v61[1] = v58;

    v61[2] = sub_225EF7434;
    v61[3] = v59;

    v61[4] = sub_225F3E358;
    v61[5] = v60;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v63))
    {
      v26 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v27 = sub_225EF5468(1);
      v28 = sub_225EF5468(0);
      v95 = v26;
      v96 = v27;
      v97 = v28;
      sub_225EF54BC(2, &v95);
      sub_225EF54BC(1, &v95);
      v98 = sub_225EF7434;
      v99 = v58;
      sub_225EF73E8(&v98, &v95, &v96, &v97);
      v98 = sub_225EF7434;
      v99 = v59;
      sub_225EF73E8(&v98, &v95, &v96, &v97);
      v98 = sub_225F3E358;
      v99 = v60;
      sub_225EF73E8(&v98, &v95, &v96, &v97);
      _os_log_impl(&dword_225EEB000, oslog, v63, "%@ has preheated analyzer; not invalidating", v26, 0xCu);
      sub_225EF7AF4(v27);
      sub_225EF7AF4(v28);
      sub_22609A168();
    }

    else
    {
    }

    v23 = v74[40];
    v24 = v74[38];
    v25 = v74[32];
    MEMORY[0x277D82BD8](oslog);
    v67(v23, v24);
    sub_225FF85D8(v25);
  }

  else
  {
    sub_225EF5A0C(v74 + 31);
    v52 = v74[37];
    v53 = v74[33];
    v7 = v74[32];
    v51 = v74[34];
    sub_225EF95B0(v52);
    if ((*(v51 + 48))(v52, 1, v53))
    {
      sub_225EF97AC(v74[37]);
    }

    else
    {
      v47 = v74[37];
      v49 = v74[35];
      v50 = v74[33];
      v48 = v74[34];
      (*(v48 + 16))(v49);
      sub_225EF97AC(v47);
      sub_226099DE8();
      (*(v48 + 8))(v49, v50);
    }

    v46 = (v74[32] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
    swift_beginAccess();
    if (*v46)
    {
      v45 = *v46;

      swift_endAccess();
      sub_226099E38();
    }

    else
    {
      swift_endAccess();
    }

    v39 = v74[36];
    v38 = v74[33];
    v43 = v74[32];
    v37 = v74[34];
    v35 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
    swift_beginAccess();
    v8 = *v35;
    *v35 = 0;

    swift_endAccess();
    v36 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    v9 = *v36;
    *v36 = 0;

    swift_endAccess();
    (*(v37 + 56))(v39, 1, 1, v38);
    sub_225FDA418(v39);
    v40 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
    swift_beginAccess();
    v10 = *v40;
    *v40 = 0;

    swift_endAccess();
    v41 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
    swift_beginAccess();
    v11 = *v41;
    *v41 = 0;

    swift_endAccess();
    v42 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
    swift_beginAccess();
    v12 = *v42;
    *v42 = 0;

    swift_endAccess();
    v44 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    if (*v44)
    {
      v34 = *v44;

      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
      sub_226099E38();
    }

    else
    {
      swift_endAccess();
    }

    v31 = v74[32];
    v30 = (v31 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    v13 = *v30;
    *v30 = 0;

    swift_endAccess();
    v33 = *sub_225F827A0();

    MEMORY[0x277D82BE0](v31);
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
    sub_225F8798C(sub_226023898, v32, v33, v14, MEMORY[0x277D84F78] + 8);
    v29 = v74[32];

    MEMORY[0x277D82BD8](v29);

    sub_225FF85D8(v29);
  }

  v15 = v74[41];
  v19 = v74[40];
  v20 = v74[37];
  v21 = v74[36];
  v22 = v74[35];

  v16 = *(v74[29] + 8);
  v17 = v74[29];

  return v16();
}

uint64_t sub_225FF85D8(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FF6D8C;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4BC;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_225FF91AC(void *a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v11 = *a1;
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v21 = v11;
  v22 = a2;
  if (v11)
  {
    sub_226023224(&v21, &v15);
    if (v22)
    {
      v14 = v15;
      v13 = v22;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v8 = sub_22609A118();
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      sub_225EFE834(&v21);
      v9 = v8;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v15);
    goto LABEL_9;
  }

  if (v22)
  {
LABEL_9:
    sub_2260231DC(&v21);
    v9 = 0;
    goto LABEL_7;
  }

  sub_225EFE834(&v21);
  v9 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v11);
  if (v9)
  {
    v2 = *a1;
    *a1 = 0;
    MEMORY[0x277D82BD8](v2);
  }

  v7 = a1[1];
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v19 = v7;
  v20 = a2;
  if (v7)
  {
    sub_226023224(&v19, &v18);
    if (v20)
    {
      v17 = v18;
      v16 = v20;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v5 = sub_22609A118();
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      sub_225EFE834(&v19);
      v6 = v5;
      goto LABEL_18;
    }

    MEMORY[0x277D82BD8](v18);
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_20:
    sub_2260231DC(&v19);
    v6 = 0;
    goto LABEL_18;
  }

  sub_225EFE834(&v19);
  v6 = 1;
LABEL_18:
  MEMORY[0x277D82BD8](a2);
  result = MEMORY[0x277D82BD8](v7);
  if (v6)
  {
    v4 = a1[1];
    a1[1] = 0;
    return MEMORY[0x277D82BD8](v4);
  }

  return result;
}

uint64_t sub_225FF9584(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v18 = a2;
  v19 = &unk_2260A0F20;
  v32 = 0;
  v31 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v3, v4, v5);
  v23 = &v15 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v6, v7, v8);
  v27 = &v15 - v17;
  v32 = v9;
  v31 = a2;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v18);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v10;
  v13 = v20;
  *(v12 + 16) = v18;
  *(v12 + 24) = v13;
  v29 = v11;
  v30 = v12;
  sub_226099DD8();
  (*(v21 + 8))(v23, v24);
  return (*(v25 + 8))(v27, v28);
}

uint64_t sub_225FF9788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v3[11] = a2;
  v3[8] = v3;
  v3[9] = 0;
  v3[10] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v4 = sub_226098C58();
  v3[13] = v4;
  v8 = *(v4 - 8);
  v3[14] = v8;
  v5 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[9] = a2;
  v3[10] = a3;
  v6 = v3[8];

  return MEMORY[0x2822009F8](sub_225FF98AC, 0, 0);
}

uint64_t sub_225FF98AC()
{
  v38 = v0;
  v1 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[11];
  v0[8] = v0;
  v2 = sub_225F7E9BC();
  (*(v14 + 16))(v1, v2, v15);
  MEMORY[0x277D82BE0](v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v31 = sub_226098C48();
  v32 = sub_22609A0A8();
  v21 = swift_allocObject();
  *(v21 + 16) = 64;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_225F3E198;
  *(v18 + 24) = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3E1C8;
  *(v23 + 24) = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_225FF9548;
  *(v19 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225EF7B84;
  *(v26 + 24) = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_225FFA648;
  *(v20 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F2D374;
  *(v29 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v30 = v3;

  *v30 = sub_225EF7434;
  v30[1] = v21;

  v30[2] = sub_225EF7434;
  v30[3] = v22;

  v30[4] = sub_225F3E358;
  v30[5] = v23;

  v30[6] = sub_225EF7434;
  v30[7] = v24;

  v30[8] = sub_225EF7434;
  v30[9] = v25;

  v30[10] = sub_225EF7B90;
  v30[11] = v26;

  v30[12] = sub_225EF7434;
  v30[13] = v27;

  v30[14] = sub_225EF7434;
  v30[15] = v28;

  v30[16] = sub_225EF71D0;
  v30[17] = v29;
  sub_225EF5418();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v11 = sub_225EF5468(1);
    v12 = sub_225EF5468(1);
    v33 = buf;
    v34 = v11;
    v35 = v12;
    sub_225EF54BC(2, &v33);
    sub_225EF54BC(3, &v33);
    v36 = sub_225EF7434;
    v37 = v21;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v22;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225F3E358;
    v37 = v23;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v24;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v25;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7B90;
    v37 = v26;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v27;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v28;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF71D0;
    v37 = v29;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_225EEB000, v31, v32, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v11);
    sub_225EF7AF4(v12);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v13[15];
  v9 = v13[13];
  v7 = v13[14];
  MEMORY[0x277D82BD8](v31);
  (*(v7 + 8))(v8, v9);
  v4 = swift_task_alloc();
  v13[16] = v4;
  *v4 = v13[8];
  v4[1] = sub_225FFA3EC;
  v5 = v13[11];

  return sub_225FC6040();
}

uint64_t sub_225FFA3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v5 = *(*v3 + 128);
  v8[8] = *v3;
  v8[17] = a1;
  v8[18] = a2;
  v8[19] = a3;

  v6 = v8[8];

  return MEMORY[0x2822009F8](sub_225FFA510, 0, 0);
}

uint64_t sub_225FFA510()
{
  v8 = v0[19];
  v7 = v0[18];
  v6 = v0[17];
  v10 = v0[15];
  v5 = v0[12];
  v9 = v0[11];
  v0[8] = v0;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  sub_226024B60(v6, v7, v8);
  v0[5] = v6;
  v0[6] = v7;
  v0[7] = v8;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A10, &qword_2260A09F0);
  sub_225FFB228((v0 + 5), v5, v1);
  sub_226024BF4(v6, v7, v8);
  sub_225FFA654(v9);

  v2 = *(v0[8] + 8);
  v3 = v0[8];

  return v2();
}

uint64_t sub_225FFA654(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FF9548;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4C8;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}