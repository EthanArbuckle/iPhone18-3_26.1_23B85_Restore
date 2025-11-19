uint64_t sub_225FA63CC()
{
  v4 = *v0;
  v1 = *(*v0 + 2928);
  *(v4 + 1936) = *v0;

  v2 = *(v4 + 1936);

  return MEMORY[0x2822009F8](sub_225FA64EC, 0, 0);
}

uint64_t sub_225FA64EC()
{
  v188 = v0;
  v171 = v0[360];
  v169 = v0[359];
  v170 = v0[358];
  v1 = v0[354];
  v168 = v0[341];
  v0[242] = v0;
  v2 = sub_225F7E9BC();
  v170(v1, v2, v168);
  oslog = sub_226098C48();
  v172 = sub_22609A078();
  v174 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v172))
  {
    v3 = *(v167 + 2920);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v164 = sub_225EF5468(0);
    v165 = sub_225EF5468(0);
    *(v167 + 2392) = buf;
    *(v167 + 2400) = v164;
    *(v167 + 2408) = v165;
    sub_225EF54BC(0, (v167 + 2392));
    sub_225EF54BC(0, (v167 + 2392));
    *(v167 + 2416) = v174;
    v166 = swift_task_alloc();
    v166[2] = v167 + 2392;
    v166[3] = v167 + 2400;
    v166[4] = v167 + 2408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v3)
    {
    }

    _os_log_impl(&dword_225EEB000, oslog, v172, "Cancelled existing recognition", buf, 2u);
    sub_225EF7AF4(v164);
    sub_225EF7AF4(v165);
    sub_22609A168();

    v162 = 0;
  }

  else
  {

    v162 = *(v167 + 2920);
  }

  v151 = *(v167 + 2896);
  v152 = *(v167 + 2888);
  v149 = *(v167 + 2832);
  v150 = *(v167 + 2728);
  v153 = *(v167 + 2912);
  MEMORY[0x277D82BD8](oslog);
  v152(v149, v150);
  MEMORY[0x277D82BD8](v153);
  v158 = *(v167 + 2480);
  v154 = sub_226098A78();
  *(v167 + 2936) = v154;
  v4 = *(v154 - 8);
  v155 = v4;
  *(v167 + 2944) = v4;
  v156 = v4;
  *(v167 + 2952) = *(v4 + 64);
  v157 = swift_task_alloc();
  *(v167 + 2960) = v157;
  v159 = swift_task_alloc();
  v160 = [v158 asrId];
  *(v167 + 2968) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v161 = swift_task_alloc();
  if (v160)
  {
    v148 = swift_task_alloc();
    sub_226098A48();
    (*(v155 + 32))(v161, v148, v154);
    (*(v155 + 56))(v161, 0, 1, v154);

    MEMORY[0x277D82BD8](v160);
  }

  else
  {
    (*(v155 + 56))(v161, 1, 1, v154);
  }

  v147 = *(v155 + 48);
  *(v167 + 2976) = v147;
  *(v167 + 2984) = (v155 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v147(v161, 1, v154) == 1)
  {
    v143 = *(v167 + 2880);
    v141 = *(v167 + 2872);
    v142 = *(v167 + 2864);
    v5 = *(v167 + 2824);
    v140 = *(v167 + 2728);
    sub_225F7C078(v161);

    v6 = sub_225F7E9BC();
    v142(v5, v6, v140);
    log = sub_226098C48();
    v144 = sub_22609A078();
    v146 = sub_22609A4F8();
    if (os_log_type_enabled(log, v144))
    {
      v133 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v134 = sub_225EF5468(0);
      v135 = sub_225EF5468(0);
      *(v167 + 2352) = v133;
      *(v167 + 2360) = v134;
      *(v167 + 2368) = v135;
      sub_225EF54BC(0, (v167 + 2352));
      sub_225EF54BC(0, (v167 + 2352));
      *(v167 + 2376) = v146;
      v136 = swift_task_alloc();
      v136[2] = v167 + 2352;
      v136[3] = v167 + 2360;
      v136[4] = v167 + 2368;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      if (v162)
      {
      }

      _os_log_impl(&dword_225EEB000, log, v144, "SELF: asrId is nil, creating a new UUID for this request.", v133, 2u);
      sub_225EF7AF4(v134);
      sub_225EF7AF4(v135);
      sub_22609A168();

      v132 = 0;
    }

    else
    {

      v132 = v162;
    }

    v129 = *(v167 + 2896);
    v130 = *(v167 + 2888);
    v127 = *(v167 + 2824);
    v128 = *(v167 + 2728);
    MEMORY[0x277D82BD8](log);
    v130(v127, v128);
    v131 = swift_task_alloc();
    sub_226098A68();
    (*(v155 + 32))(v157, v131, v154);

    v139 = v132;
  }

  else
  {
    v137 = *(v155 + 32);
    v137(v159, v161, v154);

    v138 = swift_task_alloc();
    (*(v155 + 16))(v138, v159, v154);
    v137(v157, v138, v154);

    (*(v155 + 8))(v159, v154);

    v139 = v162;
  }

  v126 = [*(v167 + 2480) dictationUIInteractionIdentifier];
  if (v126)
  {
    v122 = sub_226099A08();
    v123 = v7;
    MEMORY[0x277D82BD8](v126);
    v124 = v122;
    v125 = v123;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  *(v167 + 2992) = v125;
  *(v167 + 1664) = v124;
  *(v167 + 1672) = v125;
  sub_2260998E8();
  if (v125)
  {
    v120 = *(v167 + 2480);
    *(v167 + 1904) = v124;
    *(v167 + 1912) = v125;
    lock = sub_225F834E0();
    sub_2260998E8();
    MEMORY[0x277D82BE0](v120);
    os_unfair_lock_lock(lock);
    sub_225FBE488(&lock[2]._os_unfair_lock_opaque, v124, v125, v157, v120);
    if (v139)
    {
      v111 = *(v167 + 2480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
      sub_225F1CB98(lock);

      return MEMORY[0x277D82BD8](v111);
    }

    v108 = *(v167 + 2880);
    v88 = *(v167 + 2872);
    v89 = *(v167 + 2864);
    v11 = *(v167 + 2808);
    v87 = *(v167 + 2728);
    v86 = *(v167 + 2480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_225F1CB98(lock);

    MEMORY[0x277D82BD8](v86);
    v12 = sub_225F7E9BC();
    v89(v11, v12, v87);
    v91 = swift_task_alloc();
    (*(v155 + 16))(v91, v157, v154);
    v90 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v92 = swift_allocObject();
    (*(v155 + 32))(v92 + v90, v91, v154);

    v93 = swift_allocObject();
    *(v93 + 16) = sub_225F7CD90;
    *(v93 + 24) = v92;

    sub_2260998E8();
    v95 = swift_allocObject();
    *(v95 + 16) = v124;
    *(v95 + 24) = v125;
    v109 = sub_226098C48();
    v110 = sub_22609A088();
    v98 = swift_allocObject();
    *(v98 + 16) = 32;
    v99 = swift_allocObject();
    *(v99 + 16) = 8;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_225F7CE04;
    *(v94 + 24) = v93;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_225EF7B84;
    *(v100 + 24) = v94;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v102 = swift_allocObject();
    *(v102 + 16) = 8;
    v96 = swift_allocObject();
    *(v96 + 16) = sub_225EF7450;
    *(v96 + 24) = v95;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_225EF7B84;
    *(v103 + 24) = v96;
    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = 8;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_225FBE834;
    *(v97 + 24) = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_225F2D374;
    *(v106 + 24) = v97;
    sub_22609A4F8();
    v107 = v13;

    *v107 = sub_225EF7434;
    v107[1] = v98;

    v107[2] = sub_225EF7434;
    v107[3] = v99;

    v107[4] = sub_225EF7B90;
    v107[5] = v100;

    v107[6] = sub_225EF7434;
    v107[7] = v101;

    v107[8] = sub_225EF7434;
    v107[9] = v102;

    v107[10] = sub_225EF7B90;
    v107[11] = v103;

    v107[12] = sub_225EF7434;
    v107[13] = v104;

    v107[14] = sub_225EF7434;
    v107[15] = v105;

    v107[16] = sub_225EF71D0;
    v107[17] = v106;
    sub_225EF5418();

    if (os_log_type_enabled(v109, v110))
    {
      v83 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v84 = sub_225EF5468(0);
      v85 = sub_225EF5468(2);
      v183 = v83;
      v184 = v84;
      v185 = v85;
      sub_225EF54BC(2, &v183);
      sub_225EF54BC(3, &v183);
      v186 = sub_225EF7434;
      v187 = v98;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7434;
      v187 = v99;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7B90;
      v187 = v100;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7434;
      v187 = v101;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7434;
      v187 = v102;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7B90;
      v187 = v103;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7434;
      v187 = v104;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF7434;
      v187 = v105;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      v186 = sub_225EF71D0;
      v187 = v106;
      sub_225EF73E8(&v186, &v183, &v184, &v185);
      _os_log_impl(&dword_225EEB000, v109, v110, "Stored asrID %s for interactionID %s. Cache size: %ld", v83, 0x20u);
      sub_225EF7AF4(v84);
      sub_225EF7AF4(v85);
      sub_22609A168();
    }

    else
    {
    }

    v80 = *(v167 + 2896);
    v81 = *(v167 + 2888);
    v78 = *(v167 + 2808);
    v79 = *(v167 + 2728);
    MEMORY[0x277D82BD8](v109);
    v81(v78, v79);

    v82 = 0;
    goto LABEL_34;
  }

  v115 = *(v167 + 2880);
  v113 = *(v167 + 2872);
  v114 = *(v167 + 2864);
  v8 = *(v167 + 2816);
  v112 = *(v167 + 2728);
  v9 = sub_225F7E9BC();
  v114(v8, v9, v112);
  v117 = sub_226098C48();
  v116 = sub_22609A088();
  v118 = sub_22609A4F8();
  if (os_log_type_enabled(v117, v116))
  {
    v74 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v75 = sub_225EF5468(0);
    v76 = sub_225EF5468(0);
    *(v167 + 2320) = v74;
    *(v167 + 2328) = v75;
    *(v167 + 2336) = v76;
    sub_225EF54BC(0, (v167 + 2320));
    sub_225EF54BC(0, (v167 + 2320));
    *(v167 + 2344) = v118;
    v77 = swift_task_alloc();
    v77[2] = v167 + 2320;
    v77[3] = v167 + 2328;
    v77[4] = v167 + 2336;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v139)
    {

      _os_log_impl(&dword_225EEB000, v117, v116, "InteractionID is nil, not updating the cache.", v74, 2u);
      sub_225EF7AF4(v75);
      sub_225EF7AF4(v76);
      sub_22609A168();

      v73 = 0;
      goto LABEL_33;
    }
  }

  v73 = v139;
LABEL_33:
  v71 = *(v167 + 2896);
  v72 = *(v167 + 2888);
  v69 = *(v167 + 2816);
  v70 = *(v167 + 2728);
  MEMORY[0x277D82BD8](v117);
  v72(v69, v70);
  v82 = v73;
LABEL_34:
  v66 = *(v167 + 2480);
  v67 = swift_task_alloc();
  *(v167 + 3000) = v67;
  v68 = [v66 requestIdentifier];
  if (v68)
  {
    v62 = sub_226099A08();
    v63 = v14;
    MEMORY[0x277D82BD8](v68);
    v64 = v62;
    v65 = v63;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  *(v167 + 1680) = v64;
  *(v167 + 1688) = v65;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
  result = sub_225FBE9D0(sub_225FBE98C, 0, v15, MEMORY[0x277D84A98], v154, v121, v67);
  if (!v82)
  {
    sub_225EFE6BC(v167 + 1680);
    v60 = swift_task_alloc();
    v61 = swift_task_alloc();
    sub_225F7BF50(v67, v61);
    if (v147(v61, 1, v154) == 1)
    {
      v59 = *(v167 + 2720);
      v58 = *(v167 + 2712);
      sub_225F7C078(v61);

      v16 = sub_226098D98();
      (*(*(v16 - 8) + 56))(v58, 1);
      sub_226024CB8(v58, v59);
    }

    else
    {
      (*(v155 + 32))(v60, v61, v154);

      sub_2260998E8();
      *(v167 + 1872) = v124;
      *(v167 + 1880) = v125;
      if (*(v167 + 1880))
      {
        v181 = *(v167 + 1872);
        v182 = *(v167 + 1880);
      }

      else
      {
        v181 = sub_226099AA8();
        v182 = v17;
        if (*(v167 + 1880))
        {
          sub_225EFE6BC(v167 + 1872);
        }
      }

      v57 = *(v167 + 2720);
      v56 = *(v167 + 2712);
      *(v167 + 1888) = v181;
      *(v167 + 1896) = v182;
      v55 = swift_task_alloc();
      v53 = *(v155 + 16);
      v53(v55, v157, v154);
      v54 = swift_task_alloc();
      v53(v54, v60, v154);
      sub_226098D88();

      v18 = sub_226098D98();
      (*(*(v18 - 8) + 56))(v56, 0, 1);
      sub_226024CB8(v56, v57);
      (*(v155 + 8))(v60, v154);
    }

    v51 = *(v167 + 2480);
    v19 = sub_225F7F1AC();
    v49 = *v19;
    v50 = v19[1];
    sub_2260998E8();
    v52 = [v51 task];
    if (v52)
    {
      v45 = sub_226099A08();
      v46 = v20;
      MEMORY[0x277D82BD8](v52);
      v47 = v45;
      v48 = v46;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    *(v167 + 1696) = v47;
    *(v167 + 1704) = v48;
    if (*(v167 + 1704))
    {
      v175 = *(v167 + 1696);
      v176 = *(v167 + 1704);
    }

    else
    {
      v175 = sub_226099AA8();
      v176 = v21;
      if (*(v167 + 1704))
      {
        sub_225EFE6BC(v167 + 1696);
      }
    }

    v43 = *(v167 + 2480);
    v22 = *(v167 + 2472);
    sub_225FBECD4(v175, v176);

    v44 = [v43 applicationName];
    if (v44)
    {
      v39 = sub_226099A08();
      v40 = v23;
      MEMORY[0x277D82BD8](v44);
      v41 = v39;
      v42 = v40;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(v167 + 1712) = v41;
    *(v167 + 1720) = v42;
    if (*(v167 + 1720))
    {
      v177 = *(v167 + 1712);
      v178 = *(v167 + 1720);
    }

    else
    {
      sub_226099AA8();
      if (*(v167 + 1720))
      {
        sub_225EFE6BC(v167 + 1712);
      }
    }

    v38 = [*(v167 + 2480) inputOrigin];
    if (v38)
    {
      v34 = sub_226099A08();
      v35 = v24;
      MEMORY[0x277D82BD8](v38);
      v36 = v34;
      v37 = v35;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    *(v167 + 1728) = v36;
    *(v167 + 1736) = v37;
    if (*(v167 + 1736))
    {
      v179 = *(v167 + 1728);
      v180 = *(v167 + 1736);
    }

    else
    {
      sub_226099AA8();
      if (*(v167 + 1736))
      {
        sub_225EFE6BC(v167 + 1728);
      }
    }

    v30 = *(v167 + 2704);
    v31 = *(v167 + 2680);
    v32 = *(v167 + 2480);
    v25 = *(v167 + 2472);
    sub_226024DE0(*(v167 + 2720), *(v167 + 2712));
    sub_226098DA8();
    sub_225FBEFBC(v32, v31);
    v33 = swift_task_alloc();
    *(v167 + 3008) = v33;
    v26 = *(v155 + 16);
    *(v167 + 3016) = v26;
    *(v167 + 3024) = (v155 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v33);
    v27 = swift_task_alloc();
    *(v167 + 3032) = v27;
    *v27 = *(v167 + 1936);
    v27[1] = sub_225FA9044;
    v28 = *(v167 + 2480);
    v29 = *(v167 + 2472);

    return sub_225FBF164(v28, v33);
  }

  return result;
}

uint64_t sub_225FA9044()
{
  v8 = *v0;
  v1 = *(*v0 + 3032);
  v7 = *(*v0 + 3008);
  v5 = *(*v0 + 2944);
  v6 = *(*v0 + 2936);
  v8[242] = *v0;

  v2 = *(v5 + 8);
  v8[380] = v2;
  v8[381] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v7, v6);

  v3 = v8[242];

  return MEMORY[0x2822009F8](sub_225FA91E4, 0, 0);
}

uint64_t sub_225FA91E4()
{
  v23 = v0[310];
  v1 = v0[309];
  v0[242] = v0;
  sub_225FC0284();
  v2 = sub_226098AB8();
  v0[382] = v2;
  v22 = *(v2 - 8);
  v0[383] = v22;
  v0[384] = *(v22 + 64);
  v24 = swift_task_alloc();
  v0[385] = v24;
  v25 = [v23 language];
  if (v25)
  {
    v17 = sub_226099A08();
    v18 = v3;
    MEMORY[0x277D82BD8](v25);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  *(v21 + 3088) = v20;
  if (!v20)
  {
    return sub_22609A3B8();
  }

  v15 = [*(v21 + 2480) modelOverrideURL];
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  *(v21 + 3096) = v16;
  if (v15)
  {
    v13 = sub_226098948();
    v12 = *(v13 - 8);
    v6 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    sub_226098908();
    (*(v12 + 32))(v16, v14, v13);
    (*(v12 + 56))(v16, 0, 1, v13);

    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    v7 = sub_226098948();
    (*(*(v7 - 8) + 56))(v16, 1);
  }

  v8 = swift_task_alloc();
  *(v21 + 3104) = v8;
  *v8 = *(v21 + 1936);
  v8[1] = sub_225FA96C4;
  v9 = *(v21 + 2680);
  v10 = *(v21 + 2648);
  v11 = *(v21 + 2504);

  return sub_225F940CC(v24, v10, v19, v20, v9, v16);
}

uint64_t sub_225FA96C4(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 242;
  v4 = *(*v2 + 3104);
  v12[242] = *v2;
  v12[389] = a1;
  v12[390] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_225FB716C;
  }

  else
  {
    v9 = *(v10 + 3072);
    sub_22601F334(*(v10 + 3080));

    v5 = *v11;
    v6 = sub_225FA9874;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_225FA9874()
{
  v236 = v0;
  v1 = v0[389];
  v2 = v0[309];
  v0[242] = v0;
  v0[250] = v1;
  v227 = [v2 delegate];
  if (v227)
  {
    v224 = *(v226 + 3112);
    v225 = *(v226 + 2472);
    swift_getObjectType();
    MEMORY[0x277D82BE0](v225);
    MEMORY[0x277D82BE0](v224);
    [v227 localSpeechRecognizer:v225 didSelectRecognitionModelWithModelProperties:v224];
    MEMORY[0x277D82BD8](v224);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v206 = *(v226 + 3024);
  v207 = *(v226 + 3016);
  v205 = *(v226 + 2960);
  v210 = *(v226 + 2952);
  v218 = *(v226 + 2936);
  v203 = *(v226 + 2648);
  v213 = *(v226 + 2640);
  v208 = *(v226 + 2624);
  v214 = *(v226 + 2608);
  v219 = *(v226 + 2504);
  v221 = *(v226 + 2480);
  v209 = *(v226 + 2944);
  v202 = *(v226 + 2616);
  MEMORY[0x277D82BE0](v221);
  v204 = *(v202 + 16);
  v204(v213, v203, v214);
  v217 = swift_task_alloc();
  *(v226 + 3128) = v217;
  v207();
  v211 = *(v202 + 80);
  v212 = (v211 + 24) & ~v211;
  v216 = (v212 + v208 + *(v209 + 80)) & ~*(v209 + 80);
  v220 = swift_allocObject();
  *(v226 + 3136) = v220;
  *(v220 + 16) = v221;
  v215 = *(v202 + 32);
  v215(v220 + v212, v213, v214);
  (*(v209 + 32))(v220 + v216, v217, v218);
  *(v220 + ((v216 + v210 + 7) & 0xFFFFFFFFFFFFFFF8)) = v219;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
  swift_asyncLet_begin();
  v222 = [objc_opt_self() sharedInstance];
  v223 = [v221 language];
  if (v223)
  {
    sub_226099A08();
    v200 = v3;
    MEMORY[0x277D82BD8](v223);
    v201 = v200;
  }

  else
  {
    v201 = 0;
  }

  if (!v201)
  {
    sub_22609A3B8();
    return;
  }

  v198 = sub_2260999F8();

  v199 = [v222 lastUsedGeoLMRegionIdForLanguage_];
  MEMORY[0x277D82BD8](v198);
  MEMORY[0x277D82BD8](v222);
  if (v199)
  {
    v194 = sub_226099A08();
    v195 = v4;
    MEMORY[0x277D82BD8](v199);
    v196 = v194;
    v197 = v195;
  }

  else
  {
    v196 = 0;
    v197 = 0;
  }

  *(v226 + 3144) = v197;
  v5 = *(v226 + 2472);
  *(v226 + 1744) = v196;
  *(v226 + 1752) = v197;
  v193 = (v5 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (*v193)
  {
    v192 = *v193;

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
    sub_226099E38();
  }

  else
  {
    swift_endAccess();
  }

  v188 = *(v226 + 2680);
  v190 = *(v226 + 2672);
  v189 = *(v226 + 2656);
  v174 = *(v226 + 2648);
  v178 = *(v226 + 2632);
  v175 = *(v226 + 2624);
  v179 = *(v226 + 2608);
  v182 = *(v226 + 2600);
  v173 = *(v226 + 2544);
  v181 = *(v226 + 2504);
  v176 = *(v226 + 2480);
  v184 = *(v226 + 2472);
  v187 = *(v226 + 2664);
  v172 = *(v226 + 2552);
  sub_226099D78();
  (*(v172 + 56))(v182, 0, 1, v173);
  MEMORY[0x277D82BE0](v176);
  v204(v178, v174, v179);
  sub_2260998E8();
  v177 = (v211 + 40) & ~v211;
  v180 = (v177 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
  v183 = swift_allocObject();
  v183[2] = 0;
  v183[3] = 0;
  v183[4] = v176;
  v215(v183 + v177, v178, v179);
  v6 = (v183 + v180);
  *v6 = v196;
  v6[1] = v197;
  *(v183 + ((v180 + 23) & 0xFFFFFFFFFFFFFFF8)) = v181;
  v186 = sub_225FC40E0(0, 0, v182, &unk_2260A0F60, v183, MEMORY[0x277D839B0]);
  v185 = (v184 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  v7 = *v185;
  *v185 = v186;

  swift_endAccess();
  (*(v187 + 104))(v190, *MEMORY[0x277CDCE28], v189);
  v191 = sub_2260997F8();
  v8 = *(v187 + 8);
  *(v226 + 3152) = v8;
  *(v226 + 3160) = (v187 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v190, v189);
  if (v191 & 1) != 0 && ([objc_opt_self() isDictationWithCombinedEuclidAndASRAlternativesEnabled])
  {
    v160 = *(v226 + 3080);
    v158 = *(v226 + 3072);
    v161 = *(v226 + 3056);
    v166 = *(v226 + 2592);
    v163 = *(v226 + 2576);
    v167 = *(v226 + 2568);
    v169 = *(v226 + 2472);
    v159 = *(v226 + 3064);
    v162 = *(v226 + 2584);
    sub_2260993E8();
    v168 = swift_task_alloc();
    (*(v159 + 16))(v168, v160, v161);
    v9 = sub_225F7F1AC();
    v164 = *v9;
    v165 = v9[1];
    sub_2260998E8();
    (*(v162 + 104))(v166, *MEMORY[0x277CDCC88], v163);
    sub_225F56EB4(v167);
    v171 = sub_2260993B8();

    v170 = (v169 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
    swift_beginAccess();
    v10 = *v170;
    *v170 = v171;

    swift_endAccess();
  }

  v140 = *(v226 + 3080);
  v142 = *(v226 + 2680);
  v143 = *(v226 + 2504);
  v144 = *(v226 + 2480);
  v147 = *(v226 + 2472);
  v11 = sub_225F95208();
  *(v226 + 3640) = v11 & 1;
  v155 = sub_225FC4648(v140, v142, v144, v196, v197, v11 & 1);
  v156 = v12;
  *(v226 + 3168) = v155;
  *(v226 + 3176) = v12;
  *(v226 + 1760) = v155;
  *(v226 + 1768) = v12;

  v141 = (v147 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v13 = *v141;
  *v141 = v155;

  swift_endAccess();

  v157 = sub_225FC53EC(v142, v144);
  *(v226 + 3184) = v157;
  *(v226 + 2016) = v157;
  v146 = [v144 enableVoiceCommands];
  v145 = (v147 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  *v145 = v146;
  swift_endAccess();
  v148 = (v147 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  v149 = *v148;
  swift_endAccess();

  v150 = sub_225F958E8(v149 & 1);
  v151 = v14;
  *(v226 + 3192) = v150;
  *(v226 + 3200) = v14;

  *(v226 + 1776) = v150;
  *(v226 + 1784) = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
  v152 = sub_22609A4F8();
  v154 = v15;

  v153 = sub_226025354();
  *v154 = v155;
  v154[1] = v153;

  v154[2] = v156;
  v154[3] = v153;
  sub_225EF5418();

  *(v226 + 2024) = v152;

  if (v157)
  {
    *(v226 + 2312) = v157;
    sub_22609A4F8();
    v139 = v16;

    v17 = sub_2260256EC();
    *v139 = v157;
    v139[1] = v17;
    sub_225EF5418();
    sub_226099CC8();
  }

  sub_22601FDE0(v150);
  if (v150)
  {
    *(v226 + 1856) = v150;
    *(v226 + 1864) = v151;
    sub_22609A4F8();
    v138 = v18;

    v137 = sub_22602566C();
    *v138 = v150;
    v138[1] = v137;

    v138[2] = v151;
    v138[3] = v137;
    sub_225EF5418();

    sub_226099CC8();
  }

  v19 = *(v226 + 3120);
  v136 = *(v226 + 2904);
  v135 = *sub_225F827A0();

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D70, &qword_2260A0F68);
  sub_225F8798C(sub_225FC5FA8, 0, v135, v136, v20);
  if (!v19)
  {

    v134 = *(v226 + 2032);
    *(v226 + 3208) = v134;
    *(v226 + 2040) = v134;
    MEMORY[0x277D82BE0](v134);
    if (v134)
    {
      v130 = *(v226 + 2880);
      v128 = *(v226 + 2872);
      v129 = *(v226 + 2864);
      v21 = *(v226 + 2792);
      v127 = *(v226 + 2728);
      *(v226 + 2208) = v134;
      v22 = sub_225F7E9BC();
      v129(v21, v22, v127);
      oslog = sub_226098C48();
      v131 = sub_22609A088();
      v133 = sub_22609A4F8();
      if (os_log_type_enabled(oslog, v131))
      {
        buf = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v117 = sub_225EF5468(0);
        v118 = sub_225EF5468(0);
        *(v226 + 2280) = buf;
        *(v226 + 2288) = v117;
        *(v226 + 2296) = v118;
        sub_225EF54BC(0, (v226 + 2280));
        sub_225EF54BC(0, (v226 + 2280));
        *(v226 + 2304) = v133;
        v119 = swift_task_alloc();
        v119[2] = v226 + 2280;
        v119[3] = v226 + 2288;
        v119[4] = v226 + 2296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, oslog, v131, "Waiting for preheated analyzer", buf, 2u);
        sub_225EF7AF4(v117);
        sub_225EF7AF4(v118);
        sub_22609A168();
      }

      *(v226 + 3216) = 0;
      v113 = *(v226 + 2896);
      v114 = *(v226 + 2888);
      v111 = *(v226 + 2792);
      v112 = *(v226 + 2728);
      v115 = *(v226 + 2472);
      MEMORY[0x277D82BD8](oslog);
      v114(v111, v112);
      sub_225F2D6D0();
      if (sub_22609A118())
      {
        v25 = swift_task_alloc();
        *(v226 + 3224) = v25;
        *v25 = *(v226 + 1936);
        v25[1] = sub_225FACD2C;
        v26 = *(v226 + 2472);

        sub_225FC6040();
      }

      else
      {
        v27 = swift_task_alloc();
        *(v226 + 3256) = v27;
        *v27 = *(v226 + 1936);
        v27[1] = sub_225FAF118;

        sub_225FC64E0();
      }

      return;
    }

    v123 = *(v226 + 2880);
    v121 = *(v226 + 2872);
    v122 = *(v226 + 2864);
    v23 = *(v226 + 2800);
    v120 = *(v226 + 2728);
    v24 = sub_225F7E9BC();
    v122(v23, v24, v120);
    log = sub_226098C48();
    v124 = sub_22609A088();
    v126 = sub_22609A4F8();
    if (os_log_type_enabled(log, v124))
    {
      v107 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v108 = sub_225EF5468(0);
      v109 = sub_225EF5468(0);
      *(v226 + 2176) = v107;
      *(v226 + 2184) = v108;
      *(v226 + 2192) = v109;
      sub_225EF54BC(0, (v226 + 2176));
      sub_225EF54BC(0, (v226 + 2176));
      *(v226 + 2200) = v126;
      v110 = swift_task_alloc();
      v110[2] = v226 + 2176;
      v110[3] = v226 + 2184;
      v110[4] = v226 + 2192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, log, v124, "No preheating", v107, 2u);
      sub_225EF7AF4(v108);
      sub_225EF7AF4(v109);
      sub_22609A168();
    }

    v105 = *(v226 + 2896);
    v106 = *(v226 + 2888);
    v103 = *(v226 + 2800);
    v104 = *(v226 + 2728);
    MEMORY[0x277D82BD8](log);
    v106(v103, v104);
    *(v226 + 1080) = 0;
    *(v226 + 1088) = 0;
    *(v226 + 1096) = 0;
    *(v226 + 1144) = 0;
    *(v226 + 1152) = 0;
    *(v226 + 1160) = 1;
    if (*(v226 + 1160) == 1)
    {
      v228 = 0;
      v229 = -1;
      v230 = 0;
    }

    else
    {
      v228 = *(v226 + 1144);
      v229 = *(v226 + 1152);
      v230 = *(v226 + 1160);
    }

    *(v226 + 3288) = v228;
    *(v226 + 1929) = v229;
    *(v226 + 3296) = v230;
    *(v226 + 1920) = v228;
    *(v226 + 1928) = v229;
    *(v226 + 2048) = v230;
    sub_2260998E8();
    if (v230)
    {
      v100 = *(v226 + 2880);
      v92 = *(v226 + 2872);
      v93 = *(v226 + 2864);
      v28 = *(v226 + 2768);
      v91 = *(v226 + 2728);
      *(v226 + 2168) = v230;
      v29 = sub_225F7E9BC();
      v93(v28, v29, v91);
      sub_2260998E8();
      v94 = swift_allocObject();
      *(v94 + 16) = v230;
      v101 = sub_226098C48();
      v102 = sub_22609A0A8();
      v96 = swift_allocObject();
      *(v96 + 16) = 0;
      v97 = swift_allocObject();
      *(v97 + 16) = 8;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_226025600;
      *(v95 + 24) = v94;
      v98 = swift_allocObject();
      *(v98 + 16) = sub_225F2D374;
      *(v98 + 24) = v95;
      sub_22609A4F8();
      v99 = v30;

      *v99 = sub_225EF7434;
      v99[1] = v96;

      v99[2] = sub_225EF7434;
      v99[3] = v97;

      v99[4] = sub_225EF71D0;
      v99[5] = v98;
      sub_225EF5418();

      if (os_log_type_enabled(v101, v102))
      {
        v88 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v89 = sub_225EF5468(0);
        v90 = sub_225EF5468(0);
        v231 = v88;
        v232 = v89;
        v233 = v90;
        sub_225EF54BC(0, &v231);
        sub_225EF54BC(1, &v231);
        v234 = sub_225EF7434;
        v235 = v96;
        sub_225EF73E8(&v234, &v231, &v232, &v233);
        v234 = sub_225EF7434;
        v235 = v97;
        sub_225EF73E8(&v234, &v231, &v232, &v233);
        v234 = sub_225EF71D0;
        v235 = v98;
        sub_225EF73E8(&v234, &v231, &v232, &v233);
        _os_log_impl(&dword_225EEB000, v101, v102, "Sending %ld events", v88, 0xCu);
        sub_225EF7AF4(v89);
        sub_225EF7AF4(v90);
        sub_22609A168();
      }

      else
      {
      }

      v85 = *(v226 + 2896);
      v86 = *(v226 + 2888);
      v83 = *(v226 + 2768);
      v84 = *(v226 + 2728);
      MEMORY[0x277D82BD8](v101);
      v86(v83, v84);
      v87 = [objc_opt_self() sharedAnalytics];
      if (!v87)
      {
        sub_22609A3B8();
        return;
      }

      sub_2260998E8();
      sub_226025608();
      v82 = sub_226099C78();

      [v87 logEvents_];
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v87);
    }

    v31 = *(v226 + 2472);
    v80 = sub_225F83184();
    v81 = [v80 loadedFromTrial];
    MEMORY[0x277D82BD8](v80);
    if (v81)
    {
      v75 = *(v226 + 3000);
      v77 = *(v226 + 2984);
      v78 = *(v226 + 2976);
      v74 = *(v226 + 2968);
      v76 = *(v226 + 2936);
      type metadata accessor for CESAExperimentationManager();
      v79 = swift_task_alloc();
      sub_225F7BF50(v75, v79);
      if (v78(v79, 1, v76) == 1)
      {
        v73 = 0;
      }

      else
      {
        v70 = *(v226 + 3048);
        v71 = *(v226 + 3040);
        v69 = *(v226 + 2936);
        v72 = sub_226098A38();
        v71(v79, v69);
        v73 = v72;
      }

      sub_226046714(0, v73);
      MEMORY[0x277D82BD8](v73);
    }

    *(v226 + 2056) = sub_22609A4F8();
    sub_226025444(v228, v229);
    if (v229 != 255)
    {
      if ((v229 & 1) == 0)
      {
        v68 = *(v226 + 3176);
        v67 = *(v226 + 3168);
        *(v226 + 2160) = v228;

        *(v226 + 2064) = v228;
        *(v226 + 3304) = *(v226 + 2024);
        sub_2260998E8();

        v32 = sub_225FB1504;
        v33 = *(v226 + 1936);
        v34 = v226 + 16;
        v35 = v226 + 2008;
        v36 = v226 + 1296;

_swift_asyncLet_get_throwing:
        MEMORY[0x282200930](v34, v35, v32, v36);
        return;
      }
    }

    v63 = *(v226 + 2880);
    v61 = *(v226 + 2872);
    v62 = *(v226 + 2864);
    v37 = *(v226 + 2760);
    v60 = *(v226 + 2728);
    v38 = sub_225F7E9BC();
    v62(v37, v38, v60);
    v65 = sub_226098C48();
    v64 = sub_22609A078();
    v66 = sub_22609A4F8();
    if (os_log_type_enabled(v65, v64))
    {
      v56 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v57 = sub_225EF5468(0);
      v58 = sub_225EF5468(0);
      *(v226 + 2128) = v56;
      *(v226 + 2136) = v57;
      *(v226 + 2144) = v58;
      sub_225EF54BC(0, (v226 + 2128));
      sub_225EF54BC(0, (v226 + 2128));
      *(v226 + 2152) = v66;
      v59 = swift_task_alloc();
      v59[2] = v226 + 2128;
      v59[3] = v226 + 2136;
      v59[4] = v226 + 2144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v65, v64, "Creating SpeechAnalyzer", v56, 2u);
      sub_225EF7AF4(v57);
      sub_225EF7AF4(v58);
      sub_22609A168();
    }

    v51 = *(v226 + 2896);
    v52 = *(v226 + 2888);
    v49 = *(v226 + 2760);
    v50 = *(v226 + 2728);
    v53 = *(v226 + 2560);
    v54 = *(v226 + 2480);
    v39 = *(v226 + 2472);
    MEMORY[0x277D82BD8](v65);
    v52(v49, v50);
    sub_225F7FA28();
    v55 = [v54 task];
    if (v55)
    {
      v45 = sub_226099A08();
      v46 = v40;
      MEMORY[0x277D82BD8](v55);
      v47 = v45;
      v48 = v46;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    *(v226 + 3360) = v48;
    *(v226 + 3352) = v47;
    v43 = *(v226 + 3176);
    v42 = *(v226 + 3168);
    v44 = *(v226 + 2480);
    *(v226 + 3368) = *(v226 + 2024);
    sub_2260998E8();

    *(v226 + 3376) = [v44 powerContext];
    v32 = sub_225FB1F60;
    v41 = *(v226 + 1936);
    v34 = v226 + 16;
    v35 = v226 + 2008;
    v36 = v226 + 656;

    goto _swift_asyncLet_get_throwing;
  }
}

uint64_t sub_225FACD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v5 = *(*v3 + 3224);
  v8[242] = *v3;
  v8[404] = a1;
  v8[405] = a2;
  v8[406] = a3;

  v6 = v8[242];

  return MEMORY[0x2822009F8](sub_225FACE58, 0, 0);
}

uint64_t sub_225FACE58()
{
  v140 = v0;
  v1 = v0[406];
  v128 = v1;
  v2 = v0[405];
  v127 = v2;
  v3 = v0[404];
  v126 = v3;
  v0[242] = v0;
  sub_226024B60(v3, v2, v1);
  v0[135] = v126;
  v0[136] = v127;
  v0[137] = v128;
  v131 = v0[406];
  v130 = v0[405];
  v129 = v0[404];
  sub_226024B60(v129, v130, v131);
  v0[198] = v129;
  v0[199] = v130;
  v0[200] = v131;
  v124 = v0[200] == 0;
  sub_2260254D4(v125 + 1584);
  if (v124)
  {
    v120 = *(v125 + 2880);
    v118 = *(v125 + 2872);
    v119 = *(v125 + 2864);
    v4 = *(v125 + 2784);
    v117 = *(v125 + 2728);
    v5 = sub_225F7E9BC();
    v119(v4, v5, v117);
    oslog = sub_226098C48();
    v121 = sub_22609A088();
    v123 = sub_22609A4F8();
    if (!os_log_type_enabled(oslog, v121))
    {

      v112 = *(v125 + 3216);
      goto LABEL_7;
    }

    v6 = *(v125 + 3216);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v114 = sub_225EF5468(0);
    v115 = sub_225EF5468(0);
    *(v125 + 2248) = buf;
    *(v125 + 2256) = v114;
    *(v125 + 2264) = v115;
    sub_225EF54BC(0, (v125 + 2248));
    sub_225EF54BC(0, (v125 + 2248));
    *(v125 + 2272) = v123;
    v116 = swift_task_alloc();
    v116[2] = v125 + 2248;
    v116[3] = v125 + 2256;
    v116[4] = v125 + 2264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v6)
    {

      _os_log_impl(&dword_225EEB000, oslog, v121, "Preheating task cleared before results retrieved", buf, 2u);
      sub_225EF7AF4(v114);
      sub_225EF7AF4(v115);
      sub_22609A168();

      v112 = 0;
LABEL_7:
      v109 = *(v125 + 2896);
      v110 = *(v125 + 2888);
      v107 = *(v125 + 2784);
      v108 = *(v125 + 2728);
      MEMORY[0x277D82BD8](oslog);
      v110(v107, v108);
      v111 = v112;
      goto LABEL_14;
    }
  }

  v103 = *(v125 + 2880);
  v101 = *(v125 + 2872);
  v102 = *(v125 + 2864);
  v8 = *(v125 + 2776);
  v100 = *(v125 + 2728);
  v9 = sub_225F7E9BC();
  v102(v8, v9, v100);
  log = sub_226098C48();
  v104 = sub_22609A088();
  v106 = sub_22609A4F8();
  if (os_log_type_enabled(log, v104))
  {
    v10 = *(v125 + 3216);
    v96 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v97 = sub_225EF5468(0);
    v98 = sub_225EF5468(0);
    *(v125 + 2216) = v96;
    *(v125 + 2224) = v97;
    *(v125 + 2232) = v98;
    sub_225EF54BC(0, (v125 + 2216));
    sub_225EF54BC(0, (v125 + 2216));
    *(v125 + 2240) = v106;
    v99 = swift_task_alloc();
    v99[2] = v125 + 2216;
    v99[3] = v125 + 2224;
    v99[4] = v125 + 2232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v10)
    {
    }

    _os_log_impl(&dword_225EEB000, log, v104, "Got preheated analyzer", v96, 2u);
    sub_225EF7AF4(v97);
    sub_225EF7AF4(v98);
    sub_22609A168();

    v95 = 0;
  }

  else
  {

    v95 = *(v125 + 3216);
  }

  v93 = *(v125 + 2896);
  v94 = *(v125 + 2888);
  v91 = *(v125 + 2776);
  v92 = *(v125 + 2728);
  MEMORY[0x277D82BD8](log);
  v94(v91, v92);
  v111 = v95;
LABEL_14:
  MEMORY[0x277D82BD8](*(v125 + 3208));
  if (v131)
  {
    v88 = v129;
    v89 = v130 & 1;
    v90 = v131;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v90 = 1;
  }

  *(v125 + 1144) = v88;
  *(v125 + 1152) = v89;
  *(v125 + 1160) = v90;
  if (*(v125 + 1160) == 1)
  {
    v132 = 0;
    v133 = -1;
    v134 = 0;
  }

  else
  {
    v132 = *(v125 + 1144);
    v133 = *(v125 + 1152);
    v134 = *(v125 + 1160);
  }

  *(v125 + 3288) = v132;
  *(v125 + 1929) = v133;
  *(v125 + 3296) = v134;
  *(v125 + 1920) = v132;
  *(v125 + 1928) = v133;
  *(v125 + 2048) = v134;
  sub_2260998E8();
  if (v134)
  {
    v85 = *(v125 + 2880);
    v77 = *(v125 + 2872);
    v78 = *(v125 + 2864);
    v11 = *(v125 + 2768);
    v76 = *(v125 + 2728);
    *(v125 + 2168) = v134;
    v12 = sub_225F7E9BC();
    v78(v11, v12, v76);
    sub_2260998E8();
    v79 = swift_allocObject();
    *(v79 + 16) = v134;
    v86 = sub_226098C48();
    v87 = sub_22609A0A8();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = 8;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_226025600;
    *(v80 + 24) = v79;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_225F2D374;
    *(v83 + 24) = v80;
    sub_22609A4F8();
    v84 = v13;

    *v84 = sub_225EF7434;
    v84[1] = v81;

    v84[2] = sub_225EF7434;
    v84[3] = v82;

    v84[4] = sub_225EF71D0;
    v84[5] = v83;
    sub_225EF5418();

    if (os_log_type_enabled(v86, v87))
    {
      v72 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v73 = sub_225EF5468(0);
      v74 = sub_225EF5468(0);
      v135 = v72;
      v136 = v73;
      v137 = v74;
      sub_225EF54BC(0, &v135);
      sub_225EF54BC(1, &v135);
      v138 = sub_225EF7434;
      v139 = v81;
      sub_225EF73E8(&v138, &v135, &v136, &v137);
      if (v111)
      {
      }

      v138 = sub_225EF7434;
      v139 = v82;
      sub_225EF73E8(&v138, &v135, &v136, &v137);
      v138 = sub_225EF71D0;
      v139 = v83;
      sub_225EF73E8(&v138, &v135, &v136, &v137);
      _os_log_impl(&dword_225EEB000, v86, v87, "Sending %ld events", v72, 0xCu);
      sub_225EF7AF4(v73);
      sub_225EF7AF4(v74);
      sub_22609A168();

      v71 = 0;
    }

    else
    {

      v71 = v111;
    }

    v68 = *(v125 + 2896);
    v69 = *(v125 + 2888);
    v66 = *(v125 + 2768);
    v67 = *(v125 + 2728);
    MEMORY[0x277D82BD8](v86);
    v69(v66, v67);
    v70 = [objc_opt_self() sharedAnalytics];
    if (!v70)
    {
      return sub_22609A3B8();
    }

    sub_2260998E8();
    sub_226025608();
    v65 = sub_226099C78();

    [v70 logEvents_];
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v70);

    v75 = v71;
  }

  else
  {
    v75 = v111;
  }

  v14 = *(v125 + 2472);
  v63 = sub_225F83184();
  v64 = [v63 loadedFromTrial];
  MEMORY[0x277D82BD8](v63);
  if (v64)
  {
    v58 = *(v125 + 3000);
    v60 = *(v125 + 2984);
    v61 = *(v125 + 2976);
    v57 = *(v125 + 2968);
    v59 = *(v125 + 2936);
    type metadata accessor for CESAExperimentationManager();
    v62 = swift_task_alloc();
    sub_225F7BF50(v58, v62);
    if (v61(v62, 1, v59) == 1)
    {
      v56 = 0;
    }

    else
    {
      v53 = *(v125 + 3048);
      v54 = *(v125 + 3040);
      v52 = *(v125 + 2936);
      v55 = sub_226098A38();
      v54(v62, v52);
      v56 = v55;
    }

    sub_226046714(0, v56);
    MEMORY[0x277D82BD8](v56);
  }

  *(v125 + 2056) = sub_22609A4F8();
  sub_226025444(v132, v133);
  if (v133 != 255)
  {
    if ((v133 & 1) == 0)
    {
      v51 = *(v125 + 3176);
      v50 = *(v125 + 3168);
      *(v125 + 2160) = v132;

      *(v125 + 2064) = v132;
      *(v125 + 3304) = *(v125 + 2024);
      sub_2260998E8();

      v15 = sub_225FB1504;
      v16 = *(v125 + 1936);
      v17 = v125 + 16;
      v18 = v125 + 2008;
      v19 = v125 + 1296;

      return MEMORY[0x282200930](v17, v18, v15, v19);
    }
  }

  v46 = *(v125 + 2880);
  v44 = *(v125 + 2872);
  v45 = *(v125 + 2864);
  v20 = *(v125 + 2760);
  v43 = *(v125 + 2728);
  v21 = sub_225F7E9BC();
  v45(v20, v21, v43);
  v48 = sub_226098C48();
  v47 = sub_22609A078();
  v49 = sub_22609A4F8();
  if (os_log_type_enabled(v48, v47))
  {
    v39 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v40 = sub_225EF5468(0);
    v41 = sub_225EF5468(0);
    *(v125 + 2128) = v39;
    *(v125 + 2136) = v40;
    *(v125 + 2144) = v41;
    sub_225EF54BC(0, (v125 + 2128));
    sub_225EF54BC(0, (v125 + 2128));
    *(v125 + 2152) = v49;
    v42 = swift_task_alloc();
    v42[2] = v125 + 2128;
    v42[3] = v125 + 2136;
    v42[4] = v125 + 2144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v75)
    {
    }

    _os_log_impl(&dword_225EEB000, v48, v47, "Creating SpeechAnalyzer", v39, 2u);
    sub_225EF7AF4(v40);
    sub_225EF7AF4(v41);
    sub_22609A168();
  }

  else
  {
  }

  v34 = *(v125 + 2896);
  v35 = *(v125 + 2888);
  v32 = *(v125 + 2760);
  v33 = *(v125 + 2728);
  v36 = *(v125 + 2560);
  v37 = *(v125 + 2480);
  v22 = *(v125 + 2472);
  MEMORY[0x277D82BD8](v48);
  v35(v32, v33);
  sub_225F7FA28();
  v38 = [v37 task];
  if (v38)
  {
    v28 = sub_226099A08();
    v29 = v23;
    MEMORY[0x277D82BD8](v38);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  *(v125 + 3360) = v31;
  *(v125 + 3352) = v30;
  v26 = *(v125 + 3176);
  v25 = *(v125 + 3168);
  v27 = *(v125 + 2480);
  *(v125 + 3368) = *(v125 + 2024);
  sub_2260998E8();

  *(v125 + 3376) = [v27 powerContext];
  v15 = sub_225FB1F60;
  v24 = *(v125 + 1936);
  v17 = v125 + 16;
  v18 = v125 + 2008;
  v19 = v125 + 656;

  return MEMORY[0x282200930](v17, v18, v15, v19);
}

uint64_t sub_225FAF118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v5 = *(*v3 + 3256);
  v8[242] = *v3;
  v8[408] = a1;
  v8[409] = a2;
  v8[410] = a3;

  v6 = v8[242];

  return MEMORY[0x2822009F8](sub_225FAF244, 0, 0);
}

uint64_t sub_225FAF244()
{
  v140 = v0;
  v1 = v0[410];
  v128 = v1;
  v2 = v0[409];
  v127 = v2;
  v3 = v0[408];
  v126 = v3;
  v0[242] = v0;
  sub_226024B60(v3, v2, v1);
  v0[135] = v126;
  v0[136] = v127;
  v0[137] = v128;
  v131 = v0[410];
  v130 = v0[409];
  v129 = v0[408];
  sub_226024B60(v129, v130, v131);
  v0[198] = v129;
  v0[199] = v130;
  v0[200] = v131;
  v124 = v0[200] == 0;
  sub_2260254D4(v125 + 1584);
  if (v124)
  {
    v120 = *(v125 + 2880);
    v118 = *(v125 + 2872);
    v119 = *(v125 + 2864);
    v4 = *(v125 + 2784);
    v117 = *(v125 + 2728);
    v5 = sub_225F7E9BC();
    v119(v4, v5, v117);
    oslog = sub_226098C48();
    v121 = sub_22609A088();
    v123 = sub_22609A4F8();
    if (!os_log_type_enabled(oslog, v121))
    {

      v112 = *(v125 + 3216);
      goto LABEL_7;
    }

    v6 = *(v125 + 3216);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v114 = sub_225EF5468(0);
    v115 = sub_225EF5468(0);
    *(v125 + 2248) = buf;
    *(v125 + 2256) = v114;
    *(v125 + 2264) = v115;
    sub_225EF54BC(0, (v125 + 2248));
    sub_225EF54BC(0, (v125 + 2248));
    *(v125 + 2272) = v123;
    v116 = swift_task_alloc();
    v116[2] = v125 + 2248;
    v116[3] = v125 + 2256;
    v116[4] = v125 + 2264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v6)
    {

      _os_log_impl(&dword_225EEB000, oslog, v121, "Preheating task cleared before results retrieved", buf, 2u);
      sub_225EF7AF4(v114);
      sub_225EF7AF4(v115);
      sub_22609A168();

      v112 = 0;
LABEL_7:
      v109 = *(v125 + 2896);
      v110 = *(v125 + 2888);
      v107 = *(v125 + 2784);
      v108 = *(v125 + 2728);
      MEMORY[0x277D82BD8](oslog);
      v110(v107, v108);
      v111 = v112;
      goto LABEL_14;
    }
  }

  v103 = *(v125 + 2880);
  v101 = *(v125 + 2872);
  v102 = *(v125 + 2864);
  v8 = *(v125 + 2776);
  v100 = *(v125 + 2728);
  v9 = sub_225F7E9BC();
  v102(v8, v9, v100);
  log = sub_226098C48();
  v104 = sub_22609A088();
  v106 = sub_22609A4F8();
  if (os_log_type_enabled(log, v104))
  {
    v10 = *(v125 + 3216);
    v96 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v97 = sub_225EF5468(0);
    v98 = sub_225EF5468(0);
    *(v125 + 2216) = v96;
    *(v125 + 2224) = v97;
    *(v125 + 2232) = v98;
    sub_225EF54BC(0, (v125 + 2216));
    sub_225EF54BC(0, (v125 + 2216));
    *(v125 + 2240) = v106;
    v99 = swift_task_alloc();
    v99[2] = v125 + 2216;
    v99[3] = v125 + 2224;
    v99[4] = v125 + 2232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v10)
    {
    }

    _os_log_impl(&dword_225EEB000, log, v104, "Got preheated analyzer", v96, 2u);
    sub_225EF7AF4(v97);
    sub_225EF7AF4(v98);
    sub_22609A168();

    v95 = 0;
  }

  else
  {

    v95 = *(v125 + 3216);
  }

  v93 = *(v125 + 2896);
  v94 = *(v125 + 2888);
  v91 = *(v125 + 2776);
  v92 = *(v125 + 2728);
  MEMORY[0x277D82BD8](log);
  v94(v91, v92);
  v111 = v95;
LABEL_14:
  MEMORY[0x277D82BD8](*(v125 + 3208));
  if (v131)
  {
    v88 = v129;
    v89 = v130 & 1;
    v90 = v131;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v90 = 1;
  }

  *(v125 + 1144) = v88;
  *(v125 + 1152) = v89;
  *(v125 + 1160) = v90;
  if (*(v125 + 1160) == 1)
  {
    v132 = 0;
    v133 = -1;
    v134 = 0;
  }

  else
  {
    v132 = *(v125 + 1144);
    v133 = *(v125 + 1152);
    v134 = *(v125 + 1160);
  }

  *(v125 + 3288) = v132;
  *(v125 + 1929) = v133;
  *(v125 + 3296) = v134;
  *(v125 + 1920) = v132;
  *(v125 + 1928) = v133;
  *(v125 + 2048) = v134;
  sub_2260998E8();
  if (v134)
  {
    v85 = *(v125 + 2880);
    v77 = *(v125 + 2872);
    v78 = *(v125 + 2864);
    v11 = *(v125 + 2768);
    v76 = *(v125 + 2728);
    *(v125 + 2168) = v134;
    v12 = sub_225F7E9BC();
    v78(v11, v12, v76);
    sub_2260998E8();
    v79 = swift_allocObject();
    *(v79 + 16) = v134;
    v86 = sub_226098C48();
    v87 = sub_22609A0A8();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = 8;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_226025600;
    *(v80 + 24) = v79;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_225F2D374;
    *(v83 + 24) = v80;
    sub_22609A4F8();
    v84 = v13;

    *v84 = sub_225EF7434;
    v84[1] = v81;

    v84[2] = sub_225EF7434;
    v84[3] = v82;

    v84[4] = sub_225EF71D0;
    v84[5] = v83;
    sub_225EF5418();

    if (os_log_type_enabled(v86, v87))
    {
      v72 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v73 = sub_225EF5468(0);
      v74 = sub_225EF5468(0);
      v135 = v72;
      v136 = v73;
      v137 = v74;
      sub_225EF54BC(0, &v135);
      sub_225EF54BC(1, &v135);
      v138 = sub_225EF7434;
      v139 = v81;
      sub_225EF73E8(&v138, &v135, &v136, &v137);
      if (v111)
      {
      }

      v138 = sub_225EF7434;
      v139 = v82;
      sub_225EF73E8(&v138, &v135, &v136, &v137);
      v138 = sub_225EF71D0;
      v139 = v83;
      sub_225EF73E8(&v138, &v135, &v136, &v137);
      _os_log_impl(&dword_225EEB000, v86, v87, "Sending %ld events", v72, 0xCu);
      sub_225EF7AF4(v73);
      sub_225EF7AF4(v74);
      sub_22609A168();

      v71 = 0;
    }

    else
    {

      v71 = v111;
    }

    v68 = *(v125 + 2896);
    v69 = *(v125 + 2888);
    v66 = *(v125 + 2768);
    v67 = *(v125 + 2728);
    MEMORY[0x277D82BD8](v86);
    v69(v66, v67);
    v70 = [objc_opt_self() sharedAnalytics];
    if (!v70)
    {
      return sub_22609A3B8();
    }

    sub_2260998E8();
    sub_226025608();
    v65 = sub_226099C78();

    [v70 logEvents_];
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v70);

    v75 = v71;
  }

  else
  {
    v75 = v111;
  }

  v14 = *(v125 + 2472);
  v63 = sub_225F83184();
  v64 = [v63 loadedFromTrial];
  MEMORY[0x277D82BD8](v63);
  if (v64)
  {
    v58 = *(v125 + 3000);
    v60 = *(v125 + 2984);
    v61 = *(v125 + 2976);
    v57 = *(v125 + 2968);
    v59 = *(v125 + 2936);
    type metadata accessor for CESAExperimentationManager();
    v62 = swift_task_alloc();
    sub_225F7BF50(v58, v62);
    if (v61(v62, 1, v59) == 1)
    {
      v56 = 0;
    }

    else
    {
      v53 = *(v125 + 3048);
      v54 = *(v125 + 3040);
      v52 = *(v125 + 2936);
      v55 = sub_226098A38();
      v54(v62, v52);
      v56 = v55;
    }

    sub_226046714(0, v56);
    MEMORY[0x277D82BD8](v56);
  }

  *(v125 + 2056) = sub_22609A4F8();
  sub_226025444(v132, v133);
  if (v133 != 255)
  {
    if ((v133 & 1) == 0)
    {
      v51 = *(v125 + 3176);
      v50 = *(v125 + 3168);
      *(v125 + 2160) = v132;

      *(v125 + 2064) = v132;
      *(v125 + 3304) = *(v125 + 2024);
      sub_2260998E8();

      v15 = sub_225FB1504;
      v16 = *(v125 + 1936);
      v17 = v125 + 16;
      v18 = v125 + 2008;
      v19 = v125 + 1296;

      return MEMORY[0x282200930](v17, v18, v15, v19);
    }
  }

  v46 = *(v125 + 2880);
  v44 = *(v125 + 2872);
  v45 = *(v125 + 2864);
  v20 = *(v125 + 2760);
  v43 = *(v125 + 2728);
  v21 = sub_225F7E9BC();
  v45(v20, v21, v43);
  v48 = sub_226098C48();
  v47 = sub_22609A078();
  v49 = sub_22609A4F8();
  if (os_log_type_enabled(v48, v47))
  {
    v39 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v40 = sub_225EF5468(0);
    v41 = sub_225EF5468(0);
    *(v125 + 2128) = v39;
    *(v125 + 2136) = v40;
    *(v125 + 2144) = v41;
    sub_225EF54BC(0, (v125 + 2128));
    sub_225EF54BC(0, (v125 + 2128));
    *(v125 + 2152) = v49;
    v42 = swift_task_alloc();
    v42[2] = v125 + 2128;
    v42[3] = v125 + 2136;
    v42[4] = v125 + 2144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v75)
    {
    }

    _os_log_impl(&dword_225EEB000, v48, v47, "Creating SpeechAnalyzer", v39, 2u);
    sub_225EF7AF4(v40);
    sub_225EF7AF4(v41);
    sub_22609A168();
  }

  else
  {
  }

  v34 = *(v125 + 2896);
  v35 = *(v125 + 2888);
  v32 = *(v125 + 2760);
  v33 = *(v125 + 2728);
  v36 = *(v125 + 2560);
  v37 = *(v125 + 2480);
  v22 = *(v125 + 2472);
  MEMORY[0x277D82BD8](v48);
  v35(v32, v33);
  sub_225F7FA28();
  v38 = [v37 task];
  if (v38)
  {
    v28 = sub_226099A08();
    v29 = v23;
    MEMORY[0x277D82BD8](v38);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  *(v125 + 3360) = v31;
  *(v125 + 3352) = v30;
  v26 = *(v125 + 3176);
  v25 = *(v125 + 3168);
  v27 = *(v125 + 2480);
  *(v125 + 3368) = *(v125 + 2024);
  sub_2260998E8();

  *(v125 + 3376) = [v27 powerContext];
  v15 = sub_225FB1F60;
  v24 = *(v125 + 1936);
  v17 = v125 + 16;
  v18 = v125 + 2008;
  v19 = v125 + 656;

  return MEMORY[0x282200930](v17, v18, v15, v19);
}

uint64_t sub_225FB1504()
{
  *(v1 + 1936) = v1;
  *(v1 + 3312) = v0;
  if (v0)
  {
    v5 = *(v7 + 1936);
    v4 = sub_225FB77B4;
  }

  else
  {
    v3 = *(v7 + 1936);
    v4 = sub_225FB1594;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FB1594()
{
  v12 = v0[411];
  v0[242] = v0;
  v10 = v0[251];
  v0[415] = v10;
  sub_2260998E8();
  v11 = v0[257];
  v0[416] = v11;
  sub_2260998E8();
  v1 = swift_task_alloc();
  v9[417] = v1;
  *v1 = v9[242];
  v1[1] = sub_225FB16D0;
  v2 = v9[413];
  v3 = v9[397];
  v4 = v9[396];
  v5 = v9[338];
  v6 = v9[313];
  v7 = v9[310];

  return sub_225FC73B0(v12, v7, v5, v2, v4, v3, v10, v11);
}

uint64_t sub_225FB16D0()
{
  v15 = *v1;
  v13 = (*v1 + 16);
  v14 = (v15 + 1936);
  v2 = *(*v1 + 3336);
  *(v15 + 1936) = *v1;
  *(v15 + 3344) = v0;

  if (v0)
  {
    v6 = *v14;
    v5 = sub_225FB8064;
  }

  else
  {
    v3 = v13[414];
    v8 = v13[413];
    v11 = v13[411];
    v12 = v13[409];
    v9 = v13[395];
    v10 = v13[394];

    v4 = *v14;
    v5 = sub_225FB18AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FB18AC()
{
  v25 = v0;
  v1 = *(v0 + 3288);
  *(v0 + 1936) = v0;

  if ([*(v0 + 2480) narrowband])
  {
    v24 = 8000;
  }

  else
  {
    v24 = 16000;
  }

  v2 = *(v0 + 2472);
  *(v0 + 2072) = v24;
  v22 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  *v22 = v24;
  swift_endAccess();
  sub_226025568();
  v3 = sub_226025CE0(3, 1u, 0);
  v23 = v3;
  *(v0 + 3432) = v3;
  if (!v3)
  {
    return sub_22609A3B8();
  }

  v19 = *(v0 + 2472);
  *(v0 + 2080) = v3;
  MEMORY[0x277D82BE0](v3);
  v20 = (v19 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v4 = *v20;
  *v20 = v23;
  MEMORY[0x277D82BD8](v4);
  swift_endAccess();
  sub_225EF9338();
  MEMORY[0x277D82BE0](v23);
  v5 = sub_225EF939C(v23);
  v21 = v5;
  *(v0 + 3440) = v5;
  if (v5)
  {
    v17 = *(v0 + 2536);
    v18 = *(v0 + 2512);
    *(v0 + 2088) = v5;
    MEMORY[0x277D82BE0](v5);
    *(swift_task_alloc() + 16) = v21;
    sub_2260990A8();
    sub_225F819F0();
    sub_225F81A04(v18);
    sub_226099E18();

    MEMORY[0x277D82BD8](v21);
    *(v0 + 3448) = *(v0 + 2064);

    v7 = *(MEMORY[0x277CDCA10] + 4);
    v8 = swift_task_alloc();
    v25[432] = v8;
    v9 = sub_22601FB7C();
    *v8 = v25[242];
    v8[1] = sub_225FB2A40;
    v10 = v25[317];
    v11 = v25[315];

    return MEMORY[0x28212BBB0](v10, v11, v9);
  }

  else
  {
    v15 = *(v0 + 2872);
    v16 = *(v0 + 2864);
    v12 = *(v0 + 2752);
    v14 = *(v0 + 2728);
    v13 = sub_225F7E9BC();
    v16(v12, v13, v14);
    return sub_225F7EBDC(sub_225FCAE78, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 639);
  }
}

uint64_t sub_225FB1F60()
{
  *(v1 + 1936) = v1;
  *(v1 + 3384) = v0;
  if (v0)
  {
    v5 = *(v7 + 1936);
    v4 = sub_225FB8930;
  }

  else
  {
    v3 = *(v7 + 1936);
    v4 = sub_225FB1FF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FB1FF0()
{
  v13 = v0[422];
  v12 = v0[310];
  v0[242] = v0;
  v0[424] = v0[251];
  sub_2260998E8();
  MEMORY[0x277D82BE0](v12);
  v0[425] = v0[257];
  sub_2260998E8();
  v1 = swift_task_alloc();
  v11[426] = v1;
  *v1 = v11[242];
  v1[1] = sub_225FB215C;
  v2 = v11[421];
  v3 = v11[420];
  v4 = v11[419];
  v5 = v11[397];
  v6 = v11[396];
  v7 = v11[338];
  v8 = v11[320];
  v9 = v11[313];

  return sub_225F959EC(v7, v8, v4, v3, v2, v6, v5, v13);
}

uint64_t sub_225FB215C(uint64_t a1)
{
  v22 = *v2;
  v20 = (*v2 + 16);
  v21 = v22 + 242;
  v4 = *(*v2 + 3408);
  v22[242] = *v2;
  v22[427] = a1;
  v22[428] = v1;

  if (v1)
  {
    v8 = *v21;
    v7 = sub_225FB9218;
  }

  else
  {
    v5 = v20[423];
    v11 = v20[422];
    v12 = v20[420];
    v15 = v20[419];
    v16 = v20[418];
    v13 = v20[395];
    v14 = v20[394];
    v18 = v20[318];
    v17 = v20[317];
    v19 = v20[316];
    v10 = v20[308];

    (*(v17 + 8))(v18, v19);
    v6 = *v21;
    v7 = sub_225FB2394;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225FB2394()
{
  v25 = v0;
  v1 = *(v0 + 3416);
  *(v0 + 1936) = v0;
  *(v0 + 2064) = v1;
  if ([*(v0 + 2480) narrowband])
  {
    v24 = 8000;
  }

  else
  {
    v24 = 16000;
  }

  v2 = *(v0 + 2472);
  *(v0 + 2072) = v24;
  v22 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  *v22 = v24;
  swift_endAccess();
  sub_226025568();
  v3 = sub_226025CE0(3, 1u, 0);
  v23 = v3;
  *(v0 + 3432) = v3;
  if (!v3)
  {
    return sub_22609A3B8();
  }

  v19 = *(v0 + 2472);
  *(v0 + 2080) = v3;
  MEMORY[0x277D82BE0](v3);
  v20 = (v19 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v4 = *v20;
  *v20 = v23;
  MEMORY[0x277D82BD8](v4);
  swift_endAccess();
  sub_225EF9338();
  MEMORY[0x277D82BE0](v23);
  v5 = sub_225EF939C(v23);
  v21 = v5;
  *(v0 + 3440) = v5;
  if (v5)
  {
    v17 = *(v0 + 2536);
    v18 = *(v0 + 2512);
    *(v0 + 2088) = v5;
    MEMORY[0x277D82BE0](v5);
    *(swift_task_alloc() + 16) = v21;
    sub_2260990A8();
    sub_225F819F0();
    sub_225F81A04(v18);
    sub_226099E18();

    MEMORY[0x277D82BD8](v21);
    *(v0 + 3448) = *(v0 + 2064);

    v7 = *(MEMORY[0x277CDCA10] + 4);
    v8 = swift_task_alloc();
    v25[432] = v8;
    v9 = sub_22601FB7C();
    *v8 = v25[242];
    v8[1] = sub_225FB2A40;
    v10 = v25[317];
    v11 = v25[315];

    return MEMORY[0x28212BBB0](v10, v11, v9);
  }

  else
  {
    v15 = *(v0 + 2872);
    v16 = *(v0 + 2864);
    v12 = *(v0 + 2752);
    v14 = *(v0 + 2728);
    v13 = sub_225F7E9BC();
    v16(v12, v13, v14);
    return sub_225F7EBDC(sub_225FCAE78, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 639);
  }
}

uint64_t sub_225FB2A40()
{
  v13 = *v1;
  v10 = (*v1 + 16);
  v11 = (*v1 + 1936);
  v12 = (*v1 + 2064);
  v2 = *(*v1 + 3456);
  *(v13 + 1936) = *v1;
  *(v13 + 3464) = v0;

  if (v0)
  {
    v8 = *v11;

    return MEMORY[0x2822009F8](sub_225FB9B38, 0, 0);
  }

  else
  {
    v3 = v10[429];

    v9 = *v12;
    v10[432] = *v12;

    v4 = swift_task_alloc();
    v10[433] = v4;
    *v4 = *v11;
    v4[1] = sub_225FB2D04;
    v5 = v10[308];
    v6 = v10[307];

    return sub_225FCB034(v9, v5);
  }
}

uint64_t sub_225FB2D04()
{
  v10 = *v1;
  v8 = *v1 + 16;
  v9 = (v10 + 1936);
  v2 = *(*v1 + 3480);
  *(v10 + 1936) = *v1;
  *(v10 + 3488) = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_225FBA42C;
  }

  else
  {
    v3 = *(v8 + 3456);

    v4 = *v9;
    v5 = sub_225FB2E90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FB2E90()
{
  v1 = v0[436];
  v48 = v0[397];
  v47 = v0[396];
  v44 = v0[309];
  v0[242] = v0;
  v46 = v0[258];

  v45 = (v44 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v2 = *v45;
  *v45 = v46;

  swift_endAccess();
  v50 = *sub_225F8295C();

  v49 = swift_task_alloc();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786938, &qword_2260A0898);
  sub_225F8798C(sub_2260255D4, v49, v50, v3, MEMORY[0x277D84F78] + 8);
  if (v1)
  {
    v21 = v43[397];
    v20 = v43[396];
  }

  else
  {
    v40 = v43[397];
    v39 = v43[396];
    v41 = v43[309];

    v42 = (v41 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    if (*v42)
    {
      v43[437] = *v42;

      swift_endAccess();
      v4 = *(MEMORY[0x277CDCA98] + 4);
      v5 = swift_task_alloc();
      v43[438] = v5;
      *v5 = v43[242];
      v5[1] = sub_225FB4010;

      return MEMORY[0x28212BD10]();
    }

    else
    {
      swift_endAccess();
      v43[226] = 0;
      v43[227] = 0;
      if (v43[227])
      {
        v6 = v43[227];
        v43[224] = v43[226];
        v43[225] = v6;
      }

      else
      {
        v43[224] = sub_226099AA8();
        v43[225] = v7;
        if (v43[227])
        {
          sub_225EFE6BC((v43 + 226));
        }
      }

      v37 = v43[309];
      v34 = v43[224];
      v36 = v43[225];
      v35 = (v37 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
      swift_beginAccess();
      v8 = v35[1];
      *v35 = v34;
      v35[1] = v36;

      swift_endAccess();
      v38 = (v37 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
      swift_beginAccess();
      if (*v38)
      {
        v43[442] = *v38;

        swift_endAccess();
        v9 = *(MEMORY[0x277CDCB50] + 4);
        v10 = swift_task_alloc();
        v43[443] = v10;
        *v10 = v43[242];
        v10[1] = sub_225FB4F90;

        return MEMORY[0x28212BDC0]();
      }

      else
      {
        swift_endAccess();
        v43[230] = 0;
        v43[231] = 0;
        if (v43[231])
        {
          v11 = v43[231];
          v43[228] = v43[230];
          v43[229] = v11;
        }

        else
        {
          v43[228] = sub_226099AA8();
          v43[229] = v12;
          if (v43[231])
          {
            sub_225EFE6BC((v43 + 230));
          }
        }

        v32 = v43[309];
        v29 = v43[228];
        v31 = v43[229];
        v30 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
        swift_beginAccess();
        v13 = v30[1];
        *v30 = v29;
        v30[1] = v31;

        swift_endAccess();
        v33 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
        swift_beginAccess();
        if (*v33)
        {
          v43[447] = *v33;

          swift_endAccess();
          v14 = *(MEMORY[0x277CDCA88] + 4);
          v15 = swift_task_alloc();
          v43[448] = v15;
          *v15 = v43[242];
          v15[1] = sub_225FB5AF8;

          return MEMORY[0x28212BCB8]();
        }

        else
        {
          swift_endAccess();
          v27 = v43[310];
          v26 = (v43[309] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
          swift_beginAccess();
          *v26 = 0;
          swift_endAccess();
          v28 = [v27 language];
          if (v28)
          {
            v22 = sub_226099A08();
            v23 = v16;
            MEMORY[0x277D82BD8](v28);
            v24 = v22;
            v25 = v23;
          }

          else
          {
            v24 = 0;
            v25 = 0;
          }

          v43[450] = v25;
          if (v25)
          {
            v17 = swift_task_alloc();
            v43[451] = v17;
            *v17 = v43[242];
            v17[1] = sub_225FB6240;
            v18 = v43[309];

            return sub_225FCBE84(v24, v25);
          }

          else
          {
            return sub_22609A3B8();
          }
        }
      }
    }
  }
}

uint64_t sub_225FB4010(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 242;
  v5 = *(*v3 + 3504);
  v11[242] = *v3;
  v11[439] = v2;
  v11[440] = a1;
  v11[441] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = sub_225FBAD20;
  }

  else
  {
    v6 = *v10;
    v7 = sub_225FB4194;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225FB4194()
{
  v1 = v0[437];
  v0[242] = v0;

  v2 = v0[441];
  v0[226] = v0[440];
  v0[227] = v2;
  if (v0[227])
  {
    v3 = v34[227];
    v34[224] = v34[226];
    v34[225] = v3;
  }

  else
  {
    v34[224] = sub_226099AA8();
    v34[225] = v4;
    if (v34[227])
    {
      sub_225EFE6BC((v34 + 226));
    }
  }

  v32 = v34[309];
  v29 = v34[224];
  v31 = v34[225];
  v30 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
  swift_beginAccess();
  v5 = v30[1];
  *v30 = v29;
  v30[1] = v31;

  swift_endAccess();
  v33 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v33)
  {
    v34[442] = *v33;

    swift_endAccess();
    v6 = *(MEMORY[0x277CDCB50] + 4);
    v7 = swift_task_alloc();
    v34[443] = v7;
    *v7 = v34[242];
    v7[1] = sub_225FB4F90;

    return MEMORY[0x28212BDC0]();
  }

  else
  {
    swift_endAccess();
    v34[230] = 0;
    v34[231] = 0;
    if (v34[231])
    {
      v8 = v34[231];
      v34[228] = v34[230];
      v34[229] = v8;
    }

    else
    {
      v34[228] = sub_226099AA8();
      v34[229] = v9;
      if (v34[231])
      {
        sub_225EFE6BC((v34 + 230));
      }
    }

    v27 = v34[309];
    v24 = v34[228];
    v26 = v34[229];
    v25 = (v27 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
    swift_beginAccess();
    v10 = v25[1];
    *v25 = v24;
    v25[1] = v26;

    swift_endAccess();
    v28 = (v27 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    if (*v28)
    {
      v34[447] = *v28;

      swift_endAccess();
      v11 = *(MEMORY[0x277CDCA88] + 4);
      v12 = swift_task_alloc();
      v34[448] = v12;
      *v12 = v34[242];
      v12[1] = sub_225FB5AF8;

      return MEMORY[0x28212BCB8]();
    }

    else
    {
      swift_endAccess();
      v22 = v34[310];
      v21 = (v34[309] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
      swift_beginAccess();
      *v21 = 0;
      swift_endAccess();
      v23 = [v22 language];
      if (v23)
      {
        v17 = sub_226099A08();
        v18 = v13;
        MEMORY[0x277D82BD8](v23);
        v19 = v17;
        v20 = v18;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v34[450] = v20;
      if (v20)
      {
        v14 = swift_task_alloc();
        v34[451] = v14;
        *v14 = v34[242];
        v14[1] = sub_225FB6240;
        v15 = v34[309];

        return sub_225FCBE84(v19, v20);
      }

      else
      {
        return sub_22609A3B8();
      }
    }
  }
}

uint64_t sub_225FB4F90(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 242;
  v5 = *(*v3 + 3544);
  v11[242] = *v3;
  v11[444] = v2;
  v11[445] = a1;
  v11[446] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = sub_225FBB614;
  }

  else
  {
    v6 = *v10;
    v7 = sub_225FB5114;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225FB5114()
{
  v1 = v0[442];
  v0[242] = v0;

  v2 = v0[446];
  v0[230] = v0[445];
  v0[231] = v2;
  if (v0[231])
  {
    v3 = v24[231];
    v24[228] = v24[230];
    v24[229] = v3;
  }

  else
  {
    v24[228] = sub_226099AA8();
    v24[229] = v4;
    if (v24[231])
    {
      sub_225EFE6BC((v24 + 230));
    }
  }

  v22 = v24[309];
  v19 = v24[228];
  v21 = v24[229];
  v20 = (v22 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
  swift_beginAccess();
  v5 = v20[1];
  *v20 = v19;
  v20[1] = v21;

  swift_endAccess();
  v23 = (v22 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v23)
  {
    v24[447] = *v23;

    swift_endAccess();
    v6 = *(MEMORY[0x277CDCA88] + 4);
    v7 = swift_task_alloc();
    v24[448] = v7;
    *v7 = v24[242];
    v7[1] = sub_225FB5AF8;

    return MEMORY[0x28212BCB8]();
  }

  else
  {
    swift_endAccess();
    v17 = v24[310];
    v16 = (v24[309] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
    swift_beginAccess();
    *v16 = 0;
    swift_endAccess();
    v18 = [v17 language];
    if (v18)
    {
      v12 = sub_226099A08();
      v13 = v8;
      MEMORY[0x277D82BD8](v18);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v24[450] = v15;
    if (v15)
    {
      v9 = swift_task_alloc();
      v24[451] = v9;
      *v9 = v24[242];
      v9[1] = sub_225FB6240;
      v10 = v24[309];

      return sub_225FCBE84(v14, v15);
    }

    else
    {
      return sub_22609A3B8();
    }
  }
}

uint64_t sub_225FB5AF8(char a1)
{
  v10 = *v2;
  v9 = (v10 + 1936);
  v4 = *(*v2 + 3584);
  *(v10 + 1936) = *v2;
  *(v10 + 1930) = a1;
  *(v10 + 3592) = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_225FBBF08;
  }

  else
  {
    v5 = *v9;
    v6 = sub_225FB5C78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225FB5C78()
{
  v14 = v0;
  v15 = *(v0 + 1930);
  v1 = *(v0 + 3576);
  *(v0 + 1936) = v0;

  if (v15 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v15;
  }

  v11 = *(v0 + 2480);
  v10 = (*(v0 + 2472) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
  swift_beginAccess();
  *v10 = v13 & 1;
  swift_endAccess();
  v12 = [v11 language];
  if (v12)
  {
    v6 = sub_226099A08();
    v7 = v2;
    MEMORY[0x277D82BD8](v12);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(v0 + 3600) = v9;
  if (!v9)
  {
    return sub_22609A3B8();
  }

  v3 = swift_task_alloc();
  v14[451] = v3;
  *v3 = v14[242];
  v3[1] = sub_225FB6240;
  v4 = v14[309];

  return sub_225FCBE84(v8, v9);
}

uint64_t sub_225FB6240()
{
  v5 = *v0;
  v1 = *(*v0 + 3608);
  v4 = *(*v0 + 3600);
  *(v5 + 1936) = *v0;

  v2 = *(v5 + 1936);

  return MEMORY[0x2822009F8](sub_225FB6380, 0, 0);
}

uint64_t sub_225FB6380()
{
  v12 = v0[397];
  v11 = v0[396];
  v1 = v0[309];
  v0[242] = v0;
  sub_225FCDEE0();

  v2 = swift_task_alloc();
  v13[452] = v2;
  *v2 = v13[242];
  v2[1] = sub_225FB64BC;
  v3 = v13[400];
  v4 = v13[399];
  v5 = v13[398];
  v6 = v13[397];
  v7 = v13[396];
  v8 = v13[310];
  v9 = v13[309];

  return sub_225FCDF84(v8, v7, v6, v4, v3, v5);
}

uint64_t sub_225FB64BC()
{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 1936);
  v2 = *(*v1 + 3616);
  *(v11 + 1936) = *v1;
  *(v11 + 3624) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = sub_225FBC7FC;
  }

  else
  {
    v3 = *(v9 + 3160);
    v8 = *(v9 + 3152);

    v4 = *v10;
    v5 = sub_225FB6658;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FB6658()
{
  v37 = v0[360];
  v35 = v0[359];
  v36 = v0[358];
  v1 = v0[343];
  v34 = v0[341];
  v0[242] = v0;
  v2 = sub_225F7E9BC();
  v36(v1, v2, v34);
  oslog = sub_226098C48();
  v38 = sub_22609A078();
  v40 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v38))
  {
    v3 = *(v33 + 3624);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v30 = sub_225EF5468(0);
    v31 = sub_225EF5468(0);
    *(v33 + 2096) = buf;
    *(v33 + 2104) = v30;
    *(v33 + 2112) = v31;
    sub_225EF54BC(0, (v33 + 2096));
    sub_225EF54BC(0, (v33 + 2096));
    *(v33 + 2120) = v40;
    v32 = swift_task_alloc();
    v32[2] = v33 + 2096;
    v32[3] = v33 + 2104;
    v32[4] = v33 + 2112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v3)
    {
    }

    _os_log_impl(&dword_225EEB000, oslog, v38, "Completed startSpeechRecognition", buf, 2u);
    sub_225EF7AF4(v30);
    sub_225EF7AF4(v31);
    sub_22609A168();
  }

  else
  {
  }

  v19 = *(v33 + 3296);
  v21 = *(v33 + 1929);
  v20 = *(v33 + 3288);
  v22 = *(v33 + 3208);
  v23 = *(v33 + 3200);
  v24 = *(v33 + 3192);
  v25 = *(v33 + 3184);
  v27 = *(v33 + 3176);
  v26 = *(v33 + 3168);
  v28 = *(v33 + 3144);
  v13 = *(v33 + 3112);
  v10 = *(v33 + 2896);
  v11 = *(v33 + 2888);
  v8 = *(v33 + 2744);
  v9 = *(v33 + 2728);
  v15 = *(v33 + 2536);
  v16 = *(v33 + 2520);
  v5 = *(v33 + 2496);
  v12 = *(v33 + 2488);
  v17 = *(v33 + 3440);
  v18 = *(v33 + 3432);
  v14 = *(v33 + 2528);
  MEMORY[0x277D82BD8](oslog);
  v11(v8, v9);

  MEMORY[0x277D82BE0](v13);
  v12(v13, 0);
  MEMORY[0x277D82BD8](v13);

  (*(v14 + 8))(v15, v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v6 = *(v33 + 2064);

  sub_225EFE6E8((v33 + 2056));

  sub_22602548C(v20, v21);
  sub_2260254D4(v33 + 1080);
  MEMORY[0x277D82BD8](v22);
  sub_225EFE6E8((v33 + 2024));
  sub_226025528(v24);

  v7 = *(v33 + 1936);

  return MEMORY[0x282200920](v33 + 16, v33 + 2008, sub_225FB6C90, v33 + 1040);
}

uint64_t sub_225FB6C90()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FB6CD4, 0, 0);
}

uint64_t sub_225FB6CD4()
{
  v15 = v0[395];
  v16 = v0[394];
  v1 = v0[392];
  v5 = v0[391];
  v6 = v0[389];
  v12 = v0[385];
  v10 = v0[383];
  v11 = v0[382];
  v24 = v0[381];
  v25 = v0[380];
  v21 = v0[375];
  v22 = v0[374];
  v26 = v0[370];
  v23 = v0[367];
  v27 = v0[364];
  v20 = v0[340];
  v18 = v0[338];
  v17 = v0[337];
  v19 = v0[336];
  v13 = v0[335];
  v14 = v0[332];
  v8 = v0[331];
  v7 = v0[327];
  v9 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v6);
  (*(v7 + 8))(v8, v9);
  (*(v10 + 8))(v12, v11);

  v16(v13, v14);
  (*(v17 + 8))(v18, v19);
  sub_226024F08(v20);
  sub_225F7C078(v21);

  v25(v26, v23);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[392];
  v29 = v0[357];
  v30 = v0[356];
  v31 = v0[355];
  v32 = v0[354];
  v33 = v0[353];
  v34 = v0[352];
  v35 = v0[351];
  v36 = v0[350];
  v37 = v0[349];
  v38 = v0[348];
  v39 = v0[347];
  v40 = v0[346];
  v41 = v0[345];
  v42 = v0[344];
  v43 = v0[343];
  v44 = v0[340];
  v45 = v0[339];
  v46 = v0[338];
  v47 = v0[335];
  v48 = v0[334];
  v49 = v0[331];
  v50 = v0[330];
  v51 = v0[329];
  v52 = v0[325];
  v53 = v0[324];
  v54 = v0[321];
  v55 = v0[320];
  v56 = v0[317];
  v57 = v0[314];
  sub_225FBD100(v0[309]);
  sub_2260215F0(&unk_2260A0F50);

  v2 = *(v0[242] + 8);
  v3 = v0[242];

  return v2();
}

uint64_t sub_225FB716C()
{
  v1 = v0[387];
  v43 = v0[386];
  v44 = v0[385];
  v55 = v0[381];
  v56 = v0[380];
  v52 = v0[375];
  v53 = v0[374];
  v57 = v0[370];
  v54 = v0[367];
  v58 = v0[364];
  v51 = v0[340];
  v49 = v0[338];
  v48 = v0[337];
  v50 = v0[336];
  v46 = v0[335];
  v45 = v0[333];
  v47 = v0[332];
  v0[242] = v0;
  sub_22601F334(v1);

  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v49, v50);
  sub_226024F08(v51);
  sub_225F7C078(v52);

  v56(v57, v54);

  MEMORY[0x277D82BD8](v58);
  v59 = v0[390];
  v2 = v0[309];
  v3 = v59;
  v0[246] = v59;
  v4 = v59;
  v60 = sub_225FCEF44(v59);

  v0[248] = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v61, MEMORY[0x277D84A98], v5, v62, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))();

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(0);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FB77B4()
{
  v4 = *(v0 + 3304);
  v5 = *(v0 + 3296);
  v7 = *(v0 + 1929);
  v6 = *(v0 + 3288);
  v8 = *(v0 + 3208);
  v9 = *(v0 + 3200);
  v10 = *(v0 + 3192);
  v11 = *(v0 + 3184);
  v13 = *(v0 + 3176);
  v12 = *(v0 + 3168);
  v14 = *(v0 + 3144);
  *(v0 + 1936) = v0;

  v1 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v6, v7);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v8);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  v2 = *(v15 + 1936);

  return MEMORY[0x282200920](v15 + 16, v15 + 2008, sub_225FB7928, v15 + 1360);
}

uint64_t sub_225FB7928()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FB796C, 0, 0);
}

uint64_t sub_225FB796C()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[414];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FB8064()
{
  v1 = *(v0 + 3328);
  v5 = *(v0 + 3320);
  v6 = *(v0 + 3304);
  v7 = *(v0 + 3296);
  v9 = *(v0 + 1929);
  v8 = *(v0 + 3288);
  v10 = *(v0 + 3208);
  v11 = *(v0 + 3200);
  v12 = *(v0 + 3192);
  v13 = *(v0 + 3184);
  v15 = *(v0 + 3176);
  v14 = *(v0 + 3168);
  v16 = *(v0 + 3144);
  *(v0 + 1936) = v0;

  v2 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v8, v9);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v10);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v12);

  v3 = *(v17 + 1936);

  return MEMORY[0x282200920](v17 + 16, v17 + 2008, sub_225FB81F4, v17 + 1424);
}

uint64_t sub_225FB81F4()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FB8238, 0, 0);
}

uint64_t sub_225FB8238()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[418];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FB8930()
{
  v1 = *(v0 + 3376);
  v4 = *(v0 + 3368);
  v5 = *(v0 + 3360);
  v9 = *(v0 + 3296);
  v11 = *(v0 + 1929);
  v10 = *(v0 + 3288);
  v12 = *(v0 + 3208);
  v13 = *(v0 + 3200);
  v14 = *(v0 + 3192);
  v15 = *(v0 + 3184);
  v17 = *(v0 + 3176);
  v16 = *(v0 + 3168);
  v18 = *(v0 + 3144);
  v7 = *(v0 + 2560);
  v6 = *(v0 + 2552);
  v8 = *(v0 + 2544);
  *(v0 + 1936) = v0;
  MEMORY[0x277D82BD8](v1);

  (*(v6 + 8))(v7, v8);
  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v10, v11);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v12);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v14);

  v2 = *(v19 + 1936);

  return MEMORY[0x282200920](v19 + 16, v19 + 2008, sub_225FB8AE0, v19 + 720);
}

uint64_t sub_225FB8AE0()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FB8B24, 0, 0);
}

uint64_t sub_225FB8B24()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[423];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FB9218()
{
  v1 = *(v0 + 3400);
  v5 = *(v0 + 3392);
  v6 = *(v0 + 3376);
  v7 = *(v0 + 3368);
  v8 = *(v0 + 3360);
  v12 = *(v0 + 3296);
  v14 = *(v0 + 1929);
  v13 = *(v0 + 3288);
  v15 = *(v0 + 3208);
  v16 = *(v0 + 3200);
  v17 = *(v0 + 3192);
  v18 = *(v0 + 3184);
  v20 = *(v0 + 3176);
  v19 = *(v0 + 3168);
  v21 = *(v0 + 3144);
  v10 = *(v0 + 2560);
  v9 = *(v0 + 2552);
  v11 = *(v0 + 2544);
  v4 = *(v0 + 2480);
  *(v0 + 1936) = v0;

  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v6);

  (*(v9 + 8))(v10, v11);
  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v13, v14);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v15);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v17);

  v2 = *(v22 + 1936);

  return MEMORY[0x282200920](v22 + 16, v22 + 2008, sub_225FB9400, v22 + 784);
}

uint64_t sub_225FB9400()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FB9444, 0, 0);
}

uint64_t sub_225FB9444()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[428];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FB9B38()
{
  v1 = *(v0 + 3448);
  v8 = *(v0 + 3440);
  v9 = *(v0 + 3432);
  v10 = *(v0 + 3296);
  v12 = *(v0 + 1929);
  v11 = *(v0 + 3288);
  v13 = *(v0 + 3208);
  v14 = *(v0 + 3200);
  v15 = *(v0 + 3192);
  v16 = *(v0 + 3184);
  v18 = *(v0 + 3176);
  v17 = *(v0 + 3168);
  v19 = *(v0 + 3144);
  v6 = *(v0 + 2536);
  v5 = *(v0 + 2528);
  v7 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v2 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v11, v12);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v13);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v15);

  v3 = *(v20 + 1936);

  return MEMORY[0x282200920](v20 + 16, v20 + 2008, sub_225FB9CE8, v20 + 848);
}

uint64_t sub_225FB9CE8()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FB9D2C, 0, 0);
}

uint64_t sub_225FB9D2C()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[433];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FBA42C()
{
  v1 = *(v0 + 3472);
  v8 = *(v0 + 3440);
  v9 = *(v0 + 3432);
  v10 = *(v0 + 3296);
  v12 = *(v0 + 1929);
  v11 = *(v0 + 3288);
  v13 = *(v0 + 3208);
  v14 = *(v0 + 3200);
  v15 = *(v0 + 3192);
  v16 = *(v0 + 3184);
  v18 = *(v0 + 3176);
  v17 = *(v0 + 3168);
  v19 = *(v0 + 3144);
  v6 = *(v0 + 2536);
  v5 = *(v0 + 2528);
  v7 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v2 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v11, v12);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v13);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v15);

  v3 = *(v20 + 1936);

  return MEMORY[0x282200920](v20 + 16, v20 + 2008, sub_225FBA5DC, v20 + 912);
}

uint64_t sub_225FBA5DC()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FBA620, 0, 0);
}

uint64_t sub_225FBA620()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[436];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FBAD20()
{
  v1 = *(v0 + 3496);
  v8 = *(v0 + 3440);
  v9 = *(v0 + 3432);
  v10 = *(v0 + 3296);
  v12 = *(v0 + 1929);
  v11 = *(v0 + 3288);
  v13 = *(v0 + 3208);
  v14 = *(v0 + 3200);
  v15 = *(v0 + 3192);
  v16 = *(v0 + 3184);
  v18 = *(v0 + 3176);
  v17 = *(v0 + 3168);
  v19 = *(v0 + 3144);
  v6 = *(v0 + 2536);
  v5 = *(v0 + 2528);
  v7 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v2 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v11, v12);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v13);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v15);

  v3 = *(v20 + 1936);

  return MEMORY[0x282200920](v20 + 16, v20 + 2008, sub_225FBAED0, v20 + 1232);
}

uint64_t sub_225FBAED0()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FBAF14, 0, 0);
}

uint64_t sub_225FBAF14()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[439];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FBB614()
{
  v1 = *(v0 + 3536);
  v8 = *(v0 + 3440);
  v9 = *(v0 + 3432);
  v10 = *(v0 + 3296);
  v12 = *(v0 + 1929);
  v11 = *(v0 + 3288);
  v13 = *(v0 + 3208);
  v14 = *(v0 + 3200);
  v15 = *(v0 + 3192);
  v16 = *(v0 + 3184);
  v18 = *(v0 + 3176);
  v17 = *(v0 + 3168);
  v19 = *(v0 + 3144);
  v6 = *(v0 + 2536);
  v5 = *(v0 + 2528);
  v7 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v2 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v11, v12);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v13);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v15);

  v3 = *(v20 + 1936);

  return MEMORY[0x282200920](v20 + 16, v20 + 2008, sub_225FBB7C4, v20 + 1168);
}

uint64_t sub_225FBB7C4()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FBB808, 0, 0);
}

uint64_t sub_225FBB808()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[444];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FBBF08()
{
  v1 = *(v0 + 3576);
  v8 = *(v0 + 3440);
  v9 = *(v0 + 3432);
  v10 = *(v0 + 3296);
  v12 = *(v0 + 1929);
  v11 = *(v0 + 3288);
  v13 = *(v0 + 3208);
  v14 = *(v0 + 3200);
  v15 = *(v0 + 3192);
  v16 = *(v0 + 3184);
  v18 = *(v0 + 3176);
  v17 = *(v0 + 3168);
  v19 = *(v0 + 3144);
  v6 = *(v0 + 2536);
  v5 = *(v0 + 2528);
  v7 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v2 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v11, v12);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v13);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v15);

  v3 = *(v20 + 1936);

  return MEMORY[0x282200920](v20 + 16, v20 + 2008, sub_225FBC0B8, v20 + 1104);
}

uint64_t sub_225FBC0B8()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FBC0FC, 0, 0);
}

uint64_t sub_225FBC0FC()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[449];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FBC7FC()
{
  v7 = *(v0 + 3440);
  v8 = *(v0 + 3432);
  v9 = *(v0 + 3296);
  v11 = *(v0 + 1929);
  v10 = *(v0 + 3288);
  v12 = *(v0 + 3208);
  v13 = *(v0 + 3200);
  v14 = *(v0 + 3192);
  v15 = *(v0 + 3184);
  v17 = *(v0 + 3176);
  v16 = *(v0 + 3168);
  v18 = *(v0 + 3144);
  v5 = *(v0 + 2536);
  v4 = *(v0 + 2528);
  v6 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v4 + 8))(v5, v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v1 = *(v0 + 2064);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v10, v11);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v12);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v14);

  v2 = *(v19 + 1936);

  return MEMORY[0x282200920](v19 + 16, v19 + 2008, sub_225FBC9B0, v19 + 976);
}

uint64_t sub_225FBC9B0()
{
  *(v0 + 1936) = v0;
  v2 = *(v0 + 1936);

  return MEMORY[0x2822009F8](sub_225FBC9F4, 0, 0);
}

uint64_t sub_225FBC9F4()
{
  v53 = v0[395];
  v54 = v0[394];
  v1 = v0[392];
  v43 = v0[391];
  v44 = v0[389];
  v50 = v0[385];
  v48 = v0[383];
  v49 = v0[382];
  v62 = v0[381];
  v63 = v0[380];
  v59 = v0[375];
  v60 = v0[374];
  v64 = v0[370];
  v61 = v0[367];
  v65 = v0[364];
  v58 = v0[340];
  v56 = v0[338];
  v55 = v0[337];
  v57 = v0[336];
  v51 = v0[335];
  v52 = v0[332];
  v46 = v0[331];
  v45 = v0[327];
  v47 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v44);
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v50, v49);

  v54(v51, v52);
  (*(v55 + 8))(v56, v57);
  sub_226024F08(v58);
  sub_225F7C078(v59);

  v63(v64, v61);

  MEMORY[0x277D82BD8](v65);
  v67 = v0[453];
  v66 = v0[392];
  v2 = v0[309];
  v3 = v67;
  v0[246] = v67;
  v4 = v67;
  v68 = sub_225FCEF44(v67);

  v0[248] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v5 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v69, MEMORY[0x277D84A98], v5, v70, (v0 + 247));
  v40 = *(v42 + 2496);
  sub_226022DA8((v42 + 1984));
  v41 = *(v42 + 1976);
  *(v42 + 1992) = v41;

  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v6 = *(v42 + 2496);
  (*(v42 + 2488))(0);

  MEMORY[0x277D82BD8](v41);

  v10 = *(v42 + 2856);
  v11 = *(v42 + 2848);
  v12 = *(v42 + 2840);
  v13 = *(v42 + 2832);
  v14 = *(v42 + 2824);
  v15 = *(v42 + 2816);
  v16 = *(v42 + 2808);
  v17 = *(v42 + 2800);
  v18 = *(v42 + 2792);
  v19 = *(v42 + 2784);
  v20 = *(v42 + 2776);
  v21 = *(v42 + 2768);
  v22 = *(v42 + 2760);
  v23 = *(v42 + 2752);
  v24 = *(v42 + 2744);
  v25 = *(v42 + 2720);
  v26 = *(v42 + 2712);
  v27 = *(v42 + 2704);
  v28 = *(v42 + 2680);
  v29 = *(v42 + 2672);
  v30 = *(v42 + 2648);
  v31 = *(v42 + 2640);
  v32 = *(v42 + 2632);
  v33 = *(v42 + 2600);
  v34 = *(v42 + 2592);
  v35 = *(v42 + 2568);
  v36 = *(v42 + 2560);
  v37 = *(v42 + 2536);
  v38 = *(v42 + 2512);
  sub_225FBD100(*(v42 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v7 = *(*(v42 + 1936) + 8);
  v8 = *(v42 + 1936);

  return v7();
}

uint64_t sub_225FBD100(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FA1508;
  v59 = sub_225EF7B84;
  v63 = sub_22601D2C0;
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

uint64_t sub_225FBDCD4(void *a1)
{
  v8 = [a1 task];
  if (v8)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_226099AA8();
    v12 = v2;
  }

  return v11;
}

uint64_t sub_225FBDDE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v19 = a1;
  v18 = a2;
  v10 = *a1;
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v16 = v10;
  v17 = a2;
  if (v10)
  {
    sub_226023224(&v16, &v14);
    if (v17)
    {
      v13 = v14;
      v12 = v17;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v6 = sub_22609A118();
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      sub_225EFE834(&v16);
      v7 = v6;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v14);
    goto LABEL_9;
  }

  if (v17)
  {
LABEL_9:
    sub_2260231DC(&v16);
    v7 = 0;
    goto LABEL_7;
  }

  sub_225EFE834(&v16);
  v7 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](a2);
  result = MEMORY[0x277D82BD8](v10);
  if (v7)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v5 = *a1;
    MEMORY[0x277D82BE0](*a1);
    v15 = v5;
    MEMORY[0x277D82BE0](a2);
    v4 = *a1;
    *a1 = a2;
    MEMORY[0x277D82BD8](v4);
    *a3 = 1;
    MEMORY[0x277D82BE0](v5);
    *(a3 + 8) = v5;
    return MEMORY[0x277D82BD8](v5);
  }

  return result;
}

uint64_t sub_225FBE028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[5] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[6] = v3;
  v6 = v4[4];

  return MEMORY[0x2822009F8](sub_225FBE138, 0, 0);
}

uint64_t sub_225FBE138()
{
  v7 = v0[9];
  v0[4] = v0;
  v1 = sub_226099DA8();
  (*(*(v1 - 8) + 56))(v7, 1);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = sub_225F38F2C(0, 0, v7, &unk_2260A0990, v2, MEMORY[0x277D84F78] + 8);
  v0[10] = v3;
  v0[7] = v3;
  v4 = swift_task_alloc();
  v8[11] = v4;
  *v4 = v8[4];
  v4[1] = sub_225FBE2A0;
  v5 = v8[8];

  return sub_225FD95D4();
}

uint64_t sub_225FBE2A0()
{
  v4 = *v0;
  v1 = *(*v0 + 88);
  *(v4 + 32) = *v0;

  v2 = *(v4 + 32);

  return MEMORY[0x2822009F8](sub_225FBE3B8, 0, 0);
}

uint64_t sub_225FBE3B8()
{
  v4 = v0[10];
  v5 = v0[9];
  v0[4] = v0;
  sub_226099E38();

  v1 = *(v0[4] + 8);
  v2 = v0[4];

  return v1();
}

uint64_t *sub_225FBE488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a5;
  v36 = a4;
  v37 = a3;
  v38 = a2;
  v39 = a1;
  v49 = a1;
  v47 = a2;
  v48 = a3;
  v46 = a4;
  v45 = a5;
  v41 = *a1;
  sub_2260998E8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  v42 = sub_2260998C8();

  if (v42 >= 5)
  {
    v33 = sub_225FBE818();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_226099928();
  }

  sub_2260998E8();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BD8, &qword_2260A0CC8) - 8) + 64);
  v27 = &v16;
  v28 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v16, v6, v7, v8);
  v31 = &v16 - v28;
  v29 = &v16 - v28;
  v30 = (&v16 + *(v40 + 48) - v28);
  v9 = sub_226098A78();
  (*(*(v9 - 8) + 16))(v31, v36);
  v32 = [v35 language];
  if (v32)
  {
    v26 = v32;
    v21 = v32;
    v22 = sub_226099A08();
    v23 = v10;

    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v19 = v25;
  v20 = v24;
  if (v25)
  {
    v17 = v20;
    v18 = v19;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v11 = v29;
  v12 = v40;
  v13 = v30;
  v14 = v18;
  v16 = v34;
  *v30 = v17;
  v13[1] = v14;
  (*(*(v12 - 8) + 56))(v11, 0, 1);
  v43 = v38;
  v44 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
  sub_226099948();
  return v27;
}

uint64_t sub_225FBE834()
{
  v1 = sub_225F834E0();
  os_unfair_lock_lock(v1);
  sub_225FBE908(v1 + 1, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
  sub_225F1CB98(v1);
  return v2;
}

uint64_t sub_225FBE908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  *a2 = sub_2260998C8();
}

uint64_t sub_225FBE98C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_226098A18();
}

uint64_t sub_225FBE9D0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19 = a7;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v26 = a6;
  v40 = a4;
  v39 = a5;
  v27 = *(a4 - 8);
  v28 = a4 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, a2, a3, a3);
  v30 = v18 - v29;
  v36 = *(v8 + 16);
  v38 = v36;
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v31 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v18 - v29, v36, v8);
  v32 = v18 - v31;
  v33 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v18 - v31, v12, v10);
  v37 = v18 - v33;
  sub_225F317FC(v13, v18 - v33, v14, v15);
  if ((*(v34 + 48))(v37, 1, v36) == 1)
  {
    result = (*(*(v24 - 8) + 56))(v19, 1);
    v18[1] = v25;
  }

  else
  {
    (*(v34 + 32))(v32, v37, v36);
    v17 = v25;
    v20(v32, v30);
    v18[0] = v17;
    (*(v34 + 8))(v32, v36);
    if (v17)
    {
      return (*(v27 + 32))(v26, v30, v23);
    }

    else
    {
      return v18[0];
    }
  }

  return result;
}

uint64_t sub_225FBECD4(uint64_t a1, uint64_t a2)
{
  v16[2] = 0;
  v16[3] = a1;
  v16[4] = a2;
  sub_2260998E8();
  v16[0] = sub_226099AA8();
  v16[1] = v2;
  v15[2] = a1;
  v15[3] = a2;
  v13 = MEMORY[0x22AA72BD0](v16[0], v2, a1, a2);
  sub_225EFE6BC(v16);
  if (v13)
  {

    return sub_226099AA8();
  }

  else
  {

    sub_2260998E8();
    MEMORY[0x277D82BE0](@"SiriDictation");
    v15[0] = sub_226099A08();
    v15[1] = v3;
    v14[2] = a1;
    v14[3] = a2;
    v9 = MEMORY[0x22AA72BD0](v15[0], v3, a1, a2);
    sub_225EFE6BC(v15);
    MEMORY[0x277D82BD8](@"SiriDictation");
    if (v9)
    {
    }

    else
    {

      sub_2260998E8();
      MEMORY[0x277D82BE0](@"SearchOrMessaging");
      v14[0] = sub_226099A08();
      v14[1] = v4;
      v8 = MEMORY[0x22AA72BD0](v14[0], v4, a1, a2);
      sub_225EFE6BC(v14);
      MEMORY[0x277D82BD8](@"SearchOrMessaging");
      if ((v8 & 1) == 0)
      {

        MEMORY[0x277D82BE0](@"Dictation");
        v6 = sub_226099A08();
        MEMORY[0x277D82BD8](@"Dictation");
        return v6;
      }
    }

    MEMORY[0x277D82BE0](@"Assistant");
    v7 = sub_226099A08();
    MEMORY[0x277D82BD8](@"Assistant");
    return v7;
  }
}

uint64_t sub_225FBEFBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CoreEmbeddedSpeechAnalyzer();
  v15 = [a1 task];
  if (v15)
  {
    v9 = sub_226099A08();
    v10 = v2;
    MEMORY[0x277D82BD8](v15);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v12)
  {
    v7 = v11;
    v8 = v12;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 687;
    LODWORD(v6) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)(v7, v8, [a1 detectUtterances], a2);
}

uint64_t sub_225FBF164(uint64_t a1, uint64_t a2)
{
  *(v3 + 464) = v2;
  *(v3 + 456) = a2;
  *(v3 + 448) = a1;
  *(v3 + 296) = v3;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 640) = 0;
  *(v3 + 648) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 656) = 0;
  *(v3 + 664) = 0;
  *(v3 + 352) = 0;
  *(v3 + 360) = 0;
  *(v3 + 672) = 0;
  *(v3 + 376) = 0;
  *(v3 + 680) = 0;
  *(v3 + 688) = 0;
  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
  v4 = sub_226098BF8();
  *(v3 + 472) = v4;
  v11 = *(v4 - 8);
  *(v3 + 480) = v11;
  v5 = *(v11 + 64) + 15;
  *(v3 + 488) = swift_task_alloc();
  v6 = sub_226098C58();
  *(v3 + 496) = v6;
  v12 = *(v6 - 8);
  *(v3 + 504) = v12;
  v13 = *(v12 + 64);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  v7 = sub_226098C38();
  *(v3 + 552) = v7;
  v14 = *(v7 - 8);
  *(v3 + 560) = v14;
  v8 = *(v14 + 64) + 15;
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;
  *(v3 + 320) = v2;
  v9 = *(v3 + 296);

  return MEMORY[0x2822009F8](sub_225EEE090, 0, 0);
}

uint64_t sub_225FBF408()
{
  v1 = v0[79];
  v2 = v0[78];
  v0[37] = v0;
  sub_225F39778(v2);

  v3 = v0[37];

  return MEMORY[0x2822009F8](sub_225FBF48C, 0, 0);
}

uint64_t sub_225FBF48C()
{
  v65 = v0;
  v51 = v0[75];
  v50 = v0[74];
  v48 = v0[73];
  v49 = v0[72];
  v1 = v0[64];
  v47 = v0[62];
  v0[37] = v0;
  v2 = sub_225F7E9BC();
  v49(v1, v2, v47);
  sub_2260998E8();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  v58 = sub_226098C48();
  v59 = sub_22609A088();
  v54 = swift_allocObject();
  *(v54 + 16) = 32;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_225EF7450;
  *(v53 + 24) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_225EF7B84;
  *(v56 + 24) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v57 = v3;

  *v57 = sub_225EF7434;
  v57[1] = v54;

  v57[2] = sub_225EF7434;
  v57[3] = v55;

  v57[4] = sub_225EF7B90;
  v57[5] = v56;
  sub_225EF5418();

  if (os_log_type_enabled(v58, v59))
  {
    v4 = *(v46 + 608);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v44 = sub_225EF5468(0);
    v45 = sub_225EF5468(1);
    v60 = buf;
    v61 = v44;
    v62 = v45;
    sub_225EF54BC(2, &v60);
    sub_225EF54BC(1, &v60);
    v63 = sub_225EF7434;
    v64 = v54;
    sub_225EF73E8(&v63, &v60, &v61, &v62);
    if (v4)
    {
    }

    v63 = sub_225EF7434;
    v64 = v55;
    sub_225EF73E8(&v63, &v60, &v61, &v62);
    v63 = sub_225EF7B90;
    v64 = v56;
    sub_225EF73E8(&v63, &v60, &v61, &v62);
    _os_log_impl(&dword_225EEB000, v58, v59, "Cached evaluation record with interactionId: %s", buf, 0xCu);
    sub_225EF7AF4(v44);
    sub_225EF7AF4(v45);
    sub_22609A168();
  }

  else
  {
  }

  v37 = *(v46 + 512);
  v38 = *(v46 + 496);
  v39 = *(v46 + 624);
  v36 = *(v46 + 504);
  MEMORY[0x277D82BD8](v58);
  (*(v36 + 8))(v37, v38);

  v41 = *(v46 + 448);
  v40 = (*(v46 + 464) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  v6 = *v40;
  *v40 = 0;

  swift_endAccess();
  v42 = [v41 applicationName];
  if (v42)
  {
    v32 = sub_226099A08();
    v33 = v7;
    MEMORY[0x277D82BD8](v42);
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  sub_2260998E8();
  v8 = sub_225F7F250();
  v30 = *v8;
  v31 = v8[1];
  sub_2260998E8();
  sub_2260998E8();
  *(v46 + 16) = v34;
  *(v46 + 24) = v35;
  *(v46 + 32) = v30;
  *(v46 + 40) = v31;
  if (*(v46 + 24))
  {
    sub_225F4C5E0((v46 + 16), (v46 + 248));
    if (*(v46 + 40))
    {
      *(v46 + 264) = *(v46 + 248);
      *(v46 + 280) = *(v46 + 32);
      v28 = MEMORY[0x22AA72BD0](*(v46 + 264), *(v46 + 272), *(v46 + 280), *(v46 + 288));
      sub_225EFE6BC(v46 + 280);
      sub_225EFE6BC(v46 + 264);
      sub_225EFE6BC(v46 + 16);
      v29 = v28;
      goto LABEL_15;
    }

    sub_225EFE6BC(v46 + 248);
    goto LABEL_17;
  }

  if (*(v46 + 40))
  {
LABEL_17:
    sub_225F4C1C0(v46 + 16);
    v29 = 0;
    goto LABEL_15;
  }

  sub_225EFE6BC(v46 + 16);
  v29 = 1;
LABEL_15:

  if (v29 & 1) != 0 && (*(v46 + 641))
  {
    v25 = *(v46 + 464);
    v27 = sub_225FFE720(*(v46 + 448));
    v26 = (v25 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
    swift_beginAccess();
    v9 = *v26;
    *v26 = v27;

    swift_endAccess();
  }

  v10 = *(v46 + 616);
  v13 = *(v46 + 600);
  v18 = *(v46 + 568);
  v17 = *(v46 + 552);
  v19 = *(v46 + 544);
  v20 = *(v46 + 536);
  v21 = *(v46 + 528);
  v22 = *(v46 + 520);
  v23 = *(v46 + 512);
  v24 = *(v46 + 488);
  v15 = *(v46 + 472);
  v16 = *(v46 + 560);
  v14 = *(v46 + 480);

  sub_225EF5A0C((v46 + 336));
  sub_225EFE834((v46 + 328));

  (*(v14 + 8))(v24, v15);
  (*(v16 + 8))(v18, v17);

  v11 = *(*(v46 + 296) + 8);
  v12 = *(v46 + 296);

  return v11();
}

uint64_t sub_225FC0298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a5;
  v5[9] = a4;
  v5[8] = a3;
  v5[7] = a2;
  v5[6] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v6 = v5[2];
  return MEMORY[0x2822009F8](sub_225FC0304, 0, 0);
}

uint64_t sub_225FC0304()
{
  v8 = v0[9];
  v0[2] = v0;
  v9 = sub_226098A78();
  v0[11] = v9;
  v7 = *(v9 - 8);
  v0[12] = v7;
  v1 = *(v7 + 64) + 15;
  v11 = swift_task_alloc();
  v0[13] = v11;
  (*(v7 + 16))();
  v2 = swift_task_alloc();
  v10[14] = v2;
  *v2 = v10[2];
  v2[1] = sub_225FC0478;
  v3 = v10[10];
  v4 = v10[8];
  v5 = v10[7];

  return sub_225FC073C(v5, v4, v11);
}

uint64_t sub_225FC0478(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 112);
  v11[2] = *v2;
  v12 = v11 + 2;
  v11[15] = a1;
  v11[16] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_225FC0674;
  }

  else
  {
    v10 = v11[13];
    v5 = v11[11];
    (*(v11[12] + 8))();

    v6 = *v12;
    v7 = sub_225FC061C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225FC061C()
{
  v1 = v0[15];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  return v3();
}

uint64_t sub_225FC0674()
{
  v8 = v0[13];
  v1 = v0[12];
  v2 = v0[11];
  v0[2] = v0;
  (*(v1 + 8))();

  v3 = v0;
  v4 = *(v0[2] + 8);
  v5 = v0[2];
  v6 = v3[16];

  return v4();
}

uint64_t sub_225FC073C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a2;
  *(v4 + 144) = a1;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 336) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 136) = 0;
  v5 = sub_2260997E8();
  *(v4 + 160) = v5;
  v10 = *(v5 - 8);
  *(v4 + 168) = v10;
  v6 = *(v10 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v7 = sub_226098C58();
  *(v4 + 184) = v7;
  v11 = *(v7 - 8);
  *(v4 + 192) = v11;
  v12 = *(v11 + 64);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  v8 = swift_task_alloc();
  *(v14 + 232) = v8;
  *v8 = *(v14 + 48);
  v8[1] = sub_225FC099C;

  return sub_225FD00D4(a1, a3);
}

uint64_t sub_225FC099C(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 232);
  *(v6 + 48) = *v1;
  *(v6 + 240) = a1;

  v4 = *(v6 + 48);

  return MEMORY[0x2822009F8](sub_225FC0AB8, 0, 0);
}

uint64_t sub_225FC0AB8()
{
  v104 = v0;
  v1 = *(v0 + 240);
  *(v0 + 48) = v0;
  if (v1)
  {
    v84 = *(v93 + 240);
    v2 = *(v93 + 224);
    v83 = *(v93 + 184);
    v82 = *(v93 + 192);
    *(v93 + 136) = v84;
    v3 = sub_225F7E9BC();
    (*(v82 + 16))(v2, v3, v83);
    sub_2260998E8();
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    oslog = sub_226098C48();
    v92 = sub_22609A078();
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = 8;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_22601FAEC;
    *(v86 + 24) = v85;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_225F2D374;
    *(v89 + 24) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v90 = v4;

    *v90 = sub_225EF7434;
    v90[1] = v87;

    v90[2] = sub_225EF7434;
    v90[3] = v88;

    v90[4] = sub_225EF71D0;
    v90[5] = v89;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v92))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v80 = sub_225EF5468(0);
      v81 = sub_225EF5468(0);
      v99 = buf;
      v100 = v80;
      v101 = v81;
      sub_225EF54BC(0, &v99);
      sub_225EF54BC(1, &v99);
      v102 = sub_225EF7434;
      v103 = v87;
      sub_225EF73E8(&v102, &v99, &v100, &v101);
      v102 = sub_225EF7434;
      v103 = v88;
      sub_225EF73E8(&v102, &v99, &v100, &v101);
      v102 = sub_225EF71D0;
      v103 = v89;
      sub_225EF73E8(&v102, &v99, &v100, &v101);
      _os_log_impl(&dword_225EEB000, oslog, v92, "Visual entities extracted count: %ld", buf, 0xCu);
      sub_225EF7AF4(v80);
      sub_225EF7AF4(v81);
      sub_22609A168();
    }

    else
    {
    }

    v76 = *(v93 + 224);
    v77 = *(v93 + 184);
    v75 = *(v93 + 192);
    MEMORY[0x277D82BD8](oslog);
    (*(v75 + 8))(v76, v77);
    v78 = v84;
    goto LABEL_31;
  }

  v5 = *(v93 + 216);
  v70 = *(v93 + 184);
  v69 = *(v93 + 192);
  v6 = sub_225F7E9BC();
  v71 = *(v69 + 16);
  *(v93 + 248) = v71;
  *(v93 + 256) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v5, v6, v70);
  log = sub_226098C48();
  v72 = sub_22609A078();
  *(v93 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v74 = sub_22609A4F8();
  if (os_log_type_enabled(log, v72))
  {
    v65 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v66 = sub_225EF5468(0);
    v67 = sub_225EF5468(0);
    *(v93 + 104) = v65;
    *(v93 + 112) = v66;
    *(v93 + 120) = v67;
    sub_225EF54BC(0, (v93 + 104));
    sub_225EF54BC(0, (v93 + 104));
    *(v93 + 128) = v74;
    v68 = swift_task_alloc();
    v68[2] = v93 + 104;
    v68[3] = v93 + 112;
    v68[4] = v93 + 120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, log, v72, "Fetch visual entities completed", v65, 2u);
    sub_225EF7AF4(v66);
    sub_225EF7AF4(v67);
    sub_22609A168();
  }

  v60 = *(v93 + 216);
  v61 = *(v93 + 184);
  v63 = *(v93 + 144);
  v59 = *(v93 + 192);
  MEMORY[0x277D82BD8](log);
  v62 = *(v59 + 8);
  *(v93 + 272) = v62;
  *(v93 + 280) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62(v60, v61);
  v64 = [v63 task];
  if (v64)
  {
    v55 = sub_226099A08();
    v56 = v7;
    MEMORY[0x277D82BD8](v64);
    v57 = v55;
    v58 = v56;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  *(v93 + 288) = v58;
  if (!v58)
  {
    goto LABEL_30;
  }

  v8 = *(v93 + 144);
  *(v93 + 16) = v57;
  *(v93 + 24) = v58;
  v54 = [v8 applicationName];
  if (v54)
  {
    v50 = sub_226099A08();
    v51 = v9;
    MEMORY[0x277D82BD8](v54);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  *(v93 + 296) = v53;
  if (!v53)
  {

LABEL_30:
    v78 = 0;
    goto LABEL_31;
  }

  *(v93 + 32) = v52;
  *(v93 + 40) = v53;
  v47 = objc_opt_self();
  sub_2260998E8();
  v48 = sub_2260999F8();

  v49 = [v47 isTaskDictationSpecific_];
  MEMORY[0x277D82BD8](v48);
  sub_2260998E8();
  if ((v49 & 1) == 0)
  {

    *(v93 + 336) = 0;
LABEL_29:
    v16 = *(v93 + 296);
    v24 = *(v93 + 288);

    goto LABEL_30;
  }

  v46 = sub_226099B18() ^ 1;

  *(v93 + 336) = v46 & 1;
  if ((v46 & 1) == 0)
  {
    goto LABEL_29;
  }

  v10 = *(v93 + 208);
  v37 = *(v93 + 184);
  v11 = sub_225F7E9BC();
  v71(v10, v11, v37);
  sub_2260998E8();
  v38 = swift_allocObject();
  *(v38 + 16) = v57;
  *(v38 + 24) = v58;
  v44 = sub_226098C48();
  v45 = sub_22609A078();
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_225EF7450;
  *(v39 + 24) = v38;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_225EF7B84;
  *(v42 + 24) = v39;
  sub_22609A4F8();
  v43 = v12;

  *v43 = sub_225EF7434;
  v43[1] = v40;

  v43[2] = sub_225EF7434;
  v43[3] = v41;

  v43[4] = sub_225EF7B90;
  v43[5] = v42;
  sub_225EF5418();

  if (os_log_type_enabled(v44, v45))
  {
    v34 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v35 = sub_225EF5468(0);
    v36 = sub_225EF5468(1);
    v94 = v34;
    v95 = v35;
    v96 = v36;
    sub_225EF54BC(2, &v94);
    sub_225EF54BC(1, &v94);
    v97 = sub_225EF7434;
    v98 = v40;
    sub_225EF73E8(&v97, &v94, &v95, &v96);
    v97 = sub_225EF7434;
    v98 = v41;
    sub_225EF73E8(&v97, &v94, &v95, &v96);
    v97 = sub_225EF7B90;
    v98 = v42;
    sub_225EF73E8(&v97, &v94, &v95, &v96);
    _os_log_impl(&dword_225EEB000, v44, v45, "Fetching contextual data for task: %s", v34, 0xCu);
    sub_225EF7AF4(v35);
    sub_225EF7AF4(v36);
    sub_22609A168();
  }

  else
  {
  }

  v27 = *(v93 + 208);
  v28 = *(v93 + 184);
  v32 = *(v93 + 176);
  v30 = *(v93 + 160);
  v31 = *(v93 + 152);
  v29 = *(v93 + 168);
  MEMORY[0x277D82BD8](v44);
  v62(v27, v28);
  type metadata accessor for CESAContextualData();
  (*(v29 + 16))(v32, v31, v30);
  sub_2260998E8();
  sub_2260998E8();
  v33 = CESAContextualData.__allocating_init(assets:taskName:applicationName:)(v32, v57, v58, v52, v53);
  *(v93 + 304) = v33;
  *(v93 + 88) = v33;

  if (!v33)
  {
    v15 = *(v93 + 304);
    v25 = *(v93 + 296);
    v26 = *(v93 + 288);

    v78 = 0;
LABEL_31:
    v17 = *(v93 + 224);
    v20 = *(v93 + 216);
    v21 = *(v93 + 208);
    v22 = *(v93 + 200);
    v23 = *(v93 + 176);

    v18 = *(*(v93 + 48) + 8);
    v19 = *(v93 + 48);

    return v18(v78);
  }

  v13 = swift_task_alloc();
  *(v93 + 312) = v13;
  *v13 = *(v93 + 48);
  v13[1] = sub_225FC2178;

  return CESAContextualData.fetchNamedEntities(timeInterval:)(0.0);
}

uint64_t sub_225FC2178(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 312);
  v10[6] = *v2;
  v11 = v10 + 6;
  v10[40] = a1;
  v10[41] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_225FC246C;
  }

  else
  {
    v5 = v10[38];

    v6 = *v11;
    v7 = sub_225FC22FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225FC22FC()
{
  v12 = v0[40];
  v0[6] = v0;
  v1 = v0[38];
  v6 = v0[37];
  v7 = v0[36];

  v2 = v0[28];
  v8 = v0[27];
  v9 = v0[26];
  v10 = v0[25];
  v11 = v0[22];

  v3 = *(v0[6] + 8);
  v4 = v0[6];

  return v3(v12);
}

uint64_t sub_225FC246C()
{
  v45 = v0;
  v29 = v0[41];
  v25 = v0[38];
  v37 = v0[33];
  v27 = v0[32];
  v28 = v0[31];
  v1 = v0[25];
  v26 = v0[23];
  v0[6] = v0;

  v2 = v29;
  v0[12] = v29;
  v3 = sub_225F7E9BC();
  v28(v1, v3, v26);
  v4 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  sub_225F3EAE8();

  v38 = sub_226098C48();
  v39 = sub_22609A098();
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F3EA68;
  *(v31 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F3EA70;
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F3E1C8;
  *(v35 + 24) = v32;
  sub_22609A4F8();
  v36 = v5;

  *v36 = sub_225EF7434;
  v36[1] = v33;

  v36[2] = sub_225EF7434;
  v36[3] = v34;

  v36[4] = sub_225F3E358;
  v36[5] = v35;
  sub_225EF5418();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v22 = sub_225EF5468(1);
    v23 = sub_225EF5468(0);
    v40 = buf;
    v41 = v22;
    v42 = v23;
    sub_225EF54BC(2, &v40);
    sub_225EF54BC(1, &v40);
    v43 = sub_225EF7434;
    v44 = v33;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v34;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225F3E358;
    v44 = v35;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_225EEB000, v38, v39, "Error fetching contextual data: %@", buf, 0xCu);
    sub_225EF7AF4(v22);
    sub_225EF7AF4(v23);
    sub_22609A168();
  }

  else
  {
  }

  v15 = v24[41];
  v13 = v24[35];
  v14 = v24[34];
  v11 = v24[25];
  v12 = v24[23];
  MEMORY[0x277D82BD8](v38);
  v14(v11, v12);

  v6 = v24[37];
  v16 = v24[36];

  v7 = v24[28];
  v17 = v24[27];
  v18 = v24[26];
  v19 = v24[25];
  v20 = v24[22];

  v8 = *(v24[6] + 8);
  v9 = v24[6];

  return v8(0);
}

uint64_t sub_225FC2CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a7;
  v7[22] = a6;
  v7[21] = a1;
  v7[18] = v7;
  v7[19] = 0;
  v7[20] = 0;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v7[19] = a4;
  v7[20] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v8 = swift_task_alloc();
  *(v10 + 192) = v8;
  *v8 = *(v10 + 144);
  v8[1] = sub_225FC2DC4;

  return sub_225FC31F4(a4, a5);
}

uint64_t sub_225FC2DC4(uint64_t a1, uint64_t a2)
{
  v9 = *v3;
  v5 = *(*v3 + 192);
  v9[18] = *v3;
  v10 = v9 + 18;
  v9[25] = a1;
  v9[26] = a2;

  if (v2)
  {
    v7 = *(*v10 + 8);

    return v7();
  }

  else
  {
    v6 = *v10;

    return MEMORY[0x2822009F8](sub_225FC2F70, 0, 0);
  }
}

uint64_t sub_225FC2F70()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[22];
  v0[18] = v0;
  v0[8] = v2;
  v0[9] = v1;
  v0[10] = v2;
  v0[11] = v1;
  v0[12] = v4;
  v0[13] = v3;
  sub_225F4C5E0(v0 + 10, v0 + 2);
  sub_225F4C5E0(v0 + 12, v0 + 4);
  if (v0[3])
  {
    sub_225F4C5E0((v11 + 16), (v11 + 112));
    if (*(v11 + 40))
    {
      *(v11 + 128) = *(v11 + 32);
      v9 = MEMORY[0x22AA72BD0](*(v11 + 112), *(v11 + 120), *(v11 + 128), *(v11 + 136));
      sub_225EFE6BC(v11 + 128);
      sub_225EFE6BC(v11 + 112);
      sub_225EFE6BC(v11 + 16);
      v10 = v9;
      goto LABEL_7;
    }

    sub_225EFE6BC(v11 + 112);
    goto LABEL_10;
  }

  if (*(v11 + 40))
  {
LABEL_10:
    sub_225F4C1C0(v11 + 16);
    v10 = 0;
    goto LABEL_7;
  }

  sub_225EFE6BC(v11 + 16);
  v10 = 1;
LABEL_7:
  v5 = *(v11 + 208);
  **(v11 + 168) = (v10 ^ 1) & 1;

  v6 = *(*(v11 + 144) + 8);
  v7 = *(v11 + 144);

  return v6();
}

uint64_t sub_225FC31F4(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[10] = a1;
  v3[4] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v4 = sub_226098C58();
  v3[12] = v4;
  v8 = *(v4 - 8);
  v3[13] = v8;
  v5 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = v2;
  v6 = v3[4];

  return MEMORY[0x2822009F8](sub_225FC3334, 0, 0);
}

uint64_t sub_225FC3334()
{
  v1 = v0[10];
  v0[4] = v0;
  v16 = [v1 location];
  v0[15] = v16;
  if (v16)
  {
    v15[8] = v16;
    [v16 0x1FB6D2578];
    v13 = v2;
    [v16 0x1FB6D2578];
    v14 = v3;
    v4 = *(MEMORY[0x277CDCDD8] + 4);
    v5 = swift_task_alloc();
    v6.n128_u64[0] = v13;
    v7.n128_u64[0] = v14;
    v15[16] = v5;
    *v5 = v15[4];
    v5[1] = sub_225FC351C;
    v8 = v15[11];

    return MEMORY[0x28212C2E0](v6, v7);
  }

  else
  {
    v9 = v15[14];

    v10 = *(v15[4] + 8);
    v11 = v15[4];

    return v10(0);
  }
}

uint64_t sub_225FC351C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 128);
  v10[4] = *v3;
  v11 = v10 + 4;
  v10[17] = v2;
  v10[18] = a1;
  v10[19] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = sub_225FC39E8;
  }

  else
  {
    v6 = *v11;
    v7 = sub_225FC3690;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225FC3690()
{
  v1 = v0[19];
  v2 = v0[18];
  v17 = v0[10];
  v0[4] = v0;
  v0[2] = v2;
  v0[3] = v1;
  v15 = [objc_opt_self() sharedInstance];
  sub_2260998E8();
  v16 = sub_2260999F8();

  v18 = [v17 language];
  if (v18)
  {
    sub_226099A08();
    v12 = v3;
    MEMORY[0x277D82BD8](v18);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return sub_22609A3B8();
  }

  v11 = v14[19];
  v9 = v14[15];
  v8 = sub_2260999F8();

  [v15 updateGeoLMAssetsInfoDictWithRegionId:v16 language:v8];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v9);
  v10 = v14[18];
  v4 = v14[14];

  v5 = *(v14[4] + 8);
  v6 = v14[4];

  return v5(v10, v11);
}

uint64_t sub_225FC39E8()
{
  v36 = v0;
  v21 = v0[17];
  v1 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v0[4] = v0;
  v2 = v21;
  v0[9] = v21;
  v3 = sub_225F7E9BC();
  (*(v19 + 16))(v1, v3, v20);
  v4 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  sub_225F3EAE8();

  v29 = sub_226098C48();
  v30 = sub_22609A098();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3EA68;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_225F3EA70;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_225F3E1C8;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v28 = v5;

  *v28 = sub_225EF7434;
  v28[1] = v25;

  v28[2] = sub_225EF7434;
  v28[3] = v26;

  v28[4] = sub_225F3E358;
  v28[5] = v27;
  sub_225EF5418();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = sub_225EF5468(1);
    v17 = sub_225EF5468(0);
    v31 = buf;
    v32 = v16;
    v33 = v17;
    sub_225EF54BC(2, &v31);
    sub_225EF54BC(1, &v31);
    v34 = sub_225EF7434;
    v35 = v25;
    sub_225EF73E8(&v34, &v31, &v32, &v33);
    v34 = sub_225EF7434;
    v35 = v26;
    sub_225EF73E8(&v34, &v31, &v32, &v33);
    v34 = sub_225F3E358;
    v35 = v27;
    sub_225EF73E8(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_225EEB000, v29, v30, "Error getting geoLMRegionID: %@", buf, 0xCu);
    sub_225EF7AF4(v16);
    sub_225EF7AF4(v17);
    sub_22609A168();
  }

  else
  {
  }

  v12 = v18[17];
  v14 = v18[14];
  v11 = v18[12];
  v13 = v18[15];
  v10 = v18[13];
  MEMORY[0x277D82BD8](v29);
  (*(v10 + 8))(v14, v11);
  swift_willThrow();

  MEMORY[0x277D82BD8](v13);

  v6 = *(v18[4] + 8);
  v7 = v18[4];
  v8 = v18[17];

  return v6();
}

uint64_t sub_225FC40E0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v44 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v45 = a6;
  v46 = "Fatal error";
  v47 = "Unexpectedly found nil while unwrapping an Optional value";
  v48 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v49 = 0;
  v62 = a6;
  v50 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v6, v7, v8);
  v54 = &v13 - v50;

  v60 = v52;
  v61 = v53;
  sub_225EF7BD0(v51, v54);
  v55 = sub_226099DA8();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  if ((*(v56 + 48))(v54, 1) == 1)
  {
    sub_225EF7CF8(v54);
    v42 = 0;
  }

  else
  {
    v41 = sub_226099D98();
    (*(v56 + 8))(v54, v55);
    v42 = v41;
  }

  v38 = v42 | 0x1C00;
  v40 = *(v53 + 16);
  v39 = *(v53 + 24);
  swift_unknownObjectRetain();

  if (v40)
  {
    v36 = v40;
    v37 = v39;
    v30 = v39;
    v31 = v40;
    swift_getObjectType();
    v32 = sub_226099D48();
    v33 = v9;
    swift_unknownObjectRelease();
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v28 = v35;
  v29 = v34;
  sub_2260998E8();
  if (v44)
  {
    v26 = v43;
    v27 = v44;
    v10 = v49;
    v23 = v44;
    v24 = sub_226099A68();

    v11 = *(v24 + 16);
    sub_22601DDCC(v24 + 32, &v60, &v58);
    if (v10)
    {
      __break(1u);
    }

    v22 = v58;

    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  v21 = v25;
  if (v25)
  {
    v16 = v21;
    v15 = v21;
    sub_225EF7CF8(v51);

    v17 = v15;
  }

  else
  {

    sub_225EF7CF8(v51);
    v18 = v60;
    v19 = v61;

    v20 = 0;
    if (v29 != 0 || v28 != 0)
    {
      v59[0] = 0;
      v59[1] = 0;
      v59[2] = v29;
      v59[3] = v28;
      v20 = v59;
    }

    v17 = swift_task_create();
  }

  v14 = v17;

  return v14;
}

uint64_t sub_225FC4648(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v121 = a3;
  v106 = a2;
  v117 = a1;
  v95 = a6;
  ObjectType = swift_getObjectType();
  v110 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v97 = 0;
  v98 = sub_226098E68();
  v99 = *(v98 - 8);
  v100 = v99;
  v102 = *(v99 + 64);
  MEMORY[0x28223BE20](0, v98, v7, v8);
  v104 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = &v44[-v104];
  MEMORY[0x28223BE20](v9, &v44[-v104], v10, v11);
  v103 = &v44[-v104];
  MEMORY[0x28223BE20](v12, &v44[-v104], v13, v14);
  v105 = &v44[-v104];
  v134 = &v44[-v104];
  v119 = sub_226098FC8();
  v111 = v119;
  v112 = *(v119 - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  MEMORY[0x28223BE20](v110, v119, v121, v107);
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v44[-v116];
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v118 = &v44[-v116];
  v133 = v117;
  v132 = v19;
  v131 = v20;
  v129 = v21;
  v130 = v22;
  v128 = v23;
  v127 = v6;
  v120 = sub_22609A4F8();
  sub_22601F4EC();
  v126 = sub_226099F08();
  if ([v121 censorSpeech])
  {
    (*(v113 + 104))(v115, *MEMORY[0x277CDCB18], v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v113 + 8))(v118, v111);
  }

  if ([v121 enableEmojiRecognition])
  {
    (*(v113 + 104))(v115, *MEMORY[0x277CDCB28], v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v113 + 8))(v118, v111);
  }

  if ([v121 enableAutoPunctuation])
  {
    (*(v113 + 104))(v115, *MEMORY[0x277CDCB10], v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v113 + 8))(v118, v111);
  }

  if ([v121 continuousListening])
  {
    (*(v113 + 104))(v115, *MEMORY[0x277CDCB20], v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v113 + 8))(v118, v111);
  }

  v91 = sub_226098948();
  v125 = sub_226099848();
  v92 = objc_opt_self();
  v93 = [v121 language];
  if (v93)
  {
    v90 = v93;
    v85 = v93;
    v86 = sub_226099A08();
    v87 = v24;

    v88 = v86;
    v89 = v87;
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  v83 = v89;
  v84 = v88;
  if (v89)
  {
    v81 = v84;
    v82 = v83;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v25 = v97;
  v74 = v82;
  v75 = sub_2260999F8();

  v76 = [v92 speechProfilePathsWithLanguage_];

  v78 = sub_226099C88();
  v77 = v78;
  v124 = v78;

  v123 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v26 = sub_225F156F8();
  v80 = sub_225F15970(sub_225FDB7E0, 0, v79, v91, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
  if (v25)
  {
    result = 0;
    __break(1u);
  }

  else
  {
    v62 = v80;
    sub_2260998E8();
    v125 = v62;

    v69 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
    v63 = v44;
    v30.n128_f64[0] = MEMORY[0x28223BE20](v44, v28, v29, v91);
    v72 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
    v64 = &v44[-v72];
    v65 = *(v31 - 8);
    v66 = *(v65 + 56);
    v67 = (v65 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v66(&v44[-v72], 1, v30);
    v68 = [v121 farField];
    sub_2260998E8();
    v70 = [v121 modelOverrideURL];
    v71 = v44;
    v36 = MEMORY[0x28223BE20](v70, v44, v32, v33);
    v73 = &v44[-v72];
    if (v37)
    {
      v61 = v70;
      v60 = v70;
      v38 = *(v65 + 64);
      v59 = v44;
      MEMORY[0x28223BE20](v70, v44, v34, v35);
      v58 = &v44[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
      sub_226098908();
      (*(v65 + 32))(v73, v58, v91);
      (v66)(v73, 0, 1, v91);
    }

    else
    {
      (v66)(v73, 1, 1, v91, v36);
    }

    v51 = (v94 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
    v52 = &v122;
    v55 = 0;
    swift_beginAccess();
    v54 = *v51;
    sub_2260998E8();
    swift_endAccess();
    v53 = sub_225F49850();
    sub_225F49850();
    sub_226098DF8();
    (*(v100 + 32))(v105, v103, v98);
    v56 = v126;
    sub_2260998E8();
    (*(v100 + 16))(v101, v105, v98);
    v57 = [v121 enableVoiceCommands];
    v40 = v121;
    if (v57)
    {
      v50 = 1;
    }

    else
    {
      v50 = [v121 shouldGenerateVoiceCommandCandidates];
    }

    v45 = v50;

    v41 = sub_225F49850();
    v49 = sub_225FDA5C4(v117, v106, v56, v101, v45 & 1, v41 & 1);
    v48 = v42;
    v47 = *(v100 + 8);
    v46 = v100 + 8;
    v47(v101, v98);

    v47(v105, v98);
    sub_225EFE6E8(&v125);
    sub_225EFE6E8(&v126);
    return v49;
  }

  return result;
}

uint64_t sub_225FC53EC(uint64_t a1, void *a2)
{
  v112 = a2;
  v104 = a1;
  v101 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v98 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A00, &qword_2260A09C8);
  v99 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6);
  v100 = &v40 - v99;
  v102 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101, v7, v8, v9);
  v103 = &v40 - v102;
  v105 = sub_226098C58();
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = *(v106 + 64);
  MEMORY[0x28223BE20](v112, v105, v10, v11);
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = &v40 - v110;
  v15 = MEMORY[0x28223BE20](v12, &v40 - v110, v13, v14);
  v111 = &v40 - v110;
  v129 = v16;
  v128 = v17;
  v127 = v2;
  v113 = [v17 disableDeliveringAsrFeatures];
  v18 = v112;
  if (v113)
  {
    [v112 endpointStart];
    v97 = v19 > 0.0;
  }

  else
  {
    v97 = 0;
  }

  v96 = v97;

  if (v96)
  {
    v20 = v111;
    v21 = sub_225F7E9BC();
    (*(v107 + 16))(v20, v21, v105);
    v94 = sub_226098C48();
    v91 = v94;
    v93 = sub_22609A098();
    v92 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v95 = sub_22609A4F8();
    if (os_log_type_enabled(v94, v93))
    {
      v22 = v98;
      v82 = sub_22609A188();
      v78 = v82;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v80 = 0;
      v83 = sub_225EF5468(0);
      v81 = v83;
      v84 = sub_225EF5468(v80);
      v117[0] = v82;
      v116 = v83;
      v115 = v84;
      v85 = 0;
      v86 = v117;
      sub_225EF54BC(0, v117);
      sub_225EF54BC(v85, v86);
      v114 = v95;
      v87 = &v40;
      MEMORY[0x28223BE20](&v40, v23, v24, v25);
      v88 = &v40 - 6;
      *(&v40 - 4) = v26;
      *(&v40 - 3) = &v116;
      *(&v40 - 2) = &v115;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v90 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v91, v92, "EndpointStart > 0 but asr features delivery is disabled!", v78, 2u);
        v76 = 0;
        sub_225EF7AF4(v81);
        sub_225EF7AF4(v84);
        sub_22609A168();

        v77 = v90;
      }
    }

    else
    {

      v77 = v98;
    }

    v74 = v77;

    (*(v107 + 8))(v111, v105);
    v75 = v74;
  }

  else
  {
    v75 = v98;
  }

  v73 = v75;
  [v112 endpointStart];
  if (v27 >= 0.0)
  {
    v52 = v73;
  }

  else
  {
    v28 = v109;
    v29 = sub_225F7E9BC();
    (*(v107 + 16))(v28, v29, v105);
    v71 = sub_226098C48();
    v68 = v71;
    v70 = sub_22609A098();
    v69 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v72 = sub_22609A4F8();
    if (os_log_type_enabled(v71, v70))
    {
      v30 = v73;
      v59 = sub_22609A188();
      v55 = v59;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v57 = 0;
      v60 = sub_225EF5468(0);
      v58 = v60;
      v61 = sub_225EF5468(v57);
      v120 = v59;
      v119 = v60;
      v118 = v61;
      v62 = 0;
      v63 = &v120;
      sub_225EF54BC(0, &v120);
      sub_225EF54BC(v62, v63);
      v117[2] = v72;
      v64 = &v40;
      MEMORY[0x28223BE20](&v40, v31, v32, v33);
      v65 = &v40 - 6;
      *(&v40 - 4) = v34;
      *(&v40 - 3) = &v119;
      *(&v40 - 2) = &v118;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v67 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v68, v69, "EndpointStart < 0", v55, 2u);
        v53 = 0;
        sub_225EF7AF4(v58);
        sub_225EF7AF4(v61);
        sub_22609A168();

        v54 = v67;
      }
    }

    else
    {

      v54 = v73;
    }

    v51 = v54;

    (*(v107 + 8))(v109, v105);
    v52 = v51;
  }

  if ([v112 disableDeliveringAsrFeatures])
  {
    return 0;
  }

  [v112 endpointStart];
  v124 = sub_22609A0E8();
  v125 = v35;
  v126 = v36;
  v45 = v124;
  v44 = v35;
  v46 = v36;
  v43 = HIDWORD(v35);
  v121 = v124;
  v122 = v35;
  v123 = v36;
  v47 = 0;
  sub_226099378();
  v42 = sub_226099808();
  v41 = *(v42 - 8);
  (*(v41 + 16))(v103, v104);
  v37 = *(v41 + 56);
  v49 = 0;
  v48 = 1;
  v37(v103);
  sub_226099338();
  v38 = sub_226099348();
  (*(*(v38 - 8) + 56))(v100, v49, v48);
  return sub_226099368();
}

uint64_t sub_225FC5FA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(a1 + 8);
  (MEMORY[0x277D82BE0])();
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BE0](v6);
  *a2 = v6;
  return MEMORY[0x277D82BD8](v6);
}

uint64_t sub_225FC6040()
{
  v1[16] = v0;
  v1[14] = v1;
  v1[15] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[15] = v0;
  v2 = v1[14];
  return MEMORY[0x2822009F8](sub_225FC6088, 0, 0);
}

uint64_t sub_225FC6088()
{
  v12 = *(v0 + 128);
  *(v0 + 112) = v0;
  v13 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask;
  v14 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  if (*v14)
  {
    v10 = *(v12 + v13);
    v11[17] = v10;

    swift_endAccess();
    v1 = *(MEMORY[0x277D857E0] + 4);
    v2 = swift_task_alloc();
    v11[18] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
    *v2 = v11[14];
    v2[1] = sub_225FC62A0;

    return MEMORY[0x282200460](v11 + 11, v10, v3);
  }

  else
  {
    swift_endAccess();
    v4 = v11[16];
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = 0;
    v9 = (v4 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    v5 = *v9;
    *v9 = 0;

    swift_endAccess();
    v6 = *(v11[14] + 8);
    v7 = v11[14];

    return v6(0, 0);
  }
}

uint64_t sub_225FC62A0()
{
  v4 = *v0;
  v1 = *(*v0 + 144);
  *(v4 + 112) = *v0;

  v2 = *(v4 + 112);

  return MEMORY[0x2822009F8](sub_225FC63B8, 0, 0);
}

uint64_t sub_225FC63B8()
{
  v1 = *(v0 + 136);
  *(v0 + 112) = v0;
  v9 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 104);

  v2 = *(v0 + 128);
  *(v0 + 40) = v9;
  *(v0 + 48) = v7 & 1;
  *(v0 + 56) = v10;
  v8 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v3 = *v8;
  *v8 = 0;

  swift_endAccess();
  v4 = *(*(v0 + 112) + 8);
  v5 = *(v0 + 112);

  return v4(v9, v7 & 1, v10);
}

uint64_t sub_225FC64E0()
{
  v1[10] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v2 = sub_226098C58();
  v1[11] = v2;
  v6 = *(v2 - 8);
  v1[12] = v6;
  v3 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[9] = v0;
  v4 = v1[8];

  return MEMORY[0x2822009F8](sub_225FC65E0, 0, 0);
}

uint64_t sub_225FC65E0()
{
  v40 = v0;
  v1 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v0[8] = v0;
  v2 = sub_225F7E9BC();
  (*(v16 + 16))(v1, v2, v17);
  MEMORY[0x277D82BE0](v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v33 = sub_226098C48();
  v34 = sub_22609A0A8();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_225F3E198;
  *(v20 + 24) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225F3E1C8;
  *(v25 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225FF9548;
  *(v21 + 24) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225EF7B84;
  *(v28 + 24) = v21;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225FF9578;
  *(v22 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F2D374;
  *(v31 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v32 = v3;

  *v32 = sub_225EF7434;
  v32[1] = v23;

  v32[2] = sub_225EF7434;
  v32[3] = v24;

  v32[4] = sub_225F3E358;
  v32[5] = v25;

  v32[6] = sub_225EF7434;
  v32[7] = v26;

  v32[8] = sub_225EF7434;
  v32[9] = v27;

  v32[10] = sub_225EF7B90;
  v32[11] = v28;

  v32[12] = sub_225EF7434;
  v32[13] = v29;

  v32[14] = sub_225EF7434;
  v32[15] = v30;

  v32[16] = sub_225EF71D0;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v33, v34))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v13 = sub_225EF5468(1);
    v14 = sub_225EF5468(1);
    v35 = buf;
    v36 = v13;
    v37 = v14;
    sub_225EF54BC(2, &v35);
    sub_225EF54BC(3, &v35);
    v38 = sub_225EF7434;
    v39 = v23;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v24;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225F3E358;
    v39 = v25;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v26;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v27;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7B90;
    v39 = v28;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v29;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v30;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF71D0;
    v39 = v31;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_225EEB000, v33, v34, "%@ %s:%ld queue task enqueued", buf, 0x20u);
    sub_225EF7AF4(v13);
    sub_225EF7AF4(v14);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v15[13];
  v9 = v15[11];
  v10 = v15[10];
  v7 = v15[12];
  MEMORY[0x277D82BD8](v33);
  (*(v7 + 8))(v8, v9);
  MEMORY[0x277D82BE0](v10);
  v11 = swift_task_alloc();
  v15[14] = v11;
  *(v11 + 16) = v10;
  v4 = swift_task_alloc();
  v15[15] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A10, &qword_2260A09F0);
  *v4 = v15[8];
  v4[1] = sub_225FC715C;

  return sub_225FFB2A4((v15 + 2), 0, 0, sub_22601FAF4, v11, v5);
}

uint64_t sub_225FC715C()
{
  v6 = *v0;
  v1 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 80);
  *(v6 + 64) = *v0;

  v2 = *(v6 + 64);

  return MEMORY[0x2822009F8](sub_225FC72B4, 0, 0);
}

uint64_t sub_225FC72B4()
{
  v1 = v0[13];
  v0[8] = v0;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v7;

  v2 = *(v0[8] + 8);
  v3 = v0[8];

  return v2(v5, v6, v7);
}

uint64_t sub_225FC73B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[59] = a8;
  v9[58] = a7;
  v9[57] = a5;
  v9[56] = a4;
  v9[55] = a2;
  v9[54] = a1;
  v9[26] = v9;
  v9[27] = 0;
  v9[28] = 0;
  v9[29] = 0;
  v9[30] = 0;
  v9[6] = 0;
  v9[7] = 0;
  v9[31] = 0;
  v9[32] = 0;
  v9[33] = 0;
  v9[8] = 0;
  v9[9] = 0;
  v9[10] = 0;
  v9[11] = 0;
  v9[12] = 0;
  v9[13] = 0;
  v9[34] = 0;
  v9[38] = 0;
  v9[14] = 0;
  v9[15] = 0;
  v9[16] = 0;
  v9[17] = 0;
  v9[18] = 0;
  v9[19] = 0;
  v14 = *(*(sub_2260991E8() - 8) + 64);
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v9[27] = a1;
  v9[28] = a2;
  v9[29] = a3;
  v9[30] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[31] = a7;
  v9[32] = a8;
  v9[33] = v8;
  v10 = *(MEMORY[0x277CDCA00] + 4);
  v11 = swift_task_alloc();
  *(v21 + 512) = v11;
  *v11 = *(v21 + 208);
  v11[1] = sub_225FC7618;

  return MEMORY[0x28212BB90](a3);
}

uint64_t sub_225FC7618()
{
  v4 = *v0;
  v1 = *(*v0 + 512);
  *(v4 + 208) = *v0;

  v2 = *(v4 + 208);

  return MEMORY[0x2822009F8](sub_225FC7730, 0, 0);
}

uint64_t sub_225FC7730()
{
  v1 = *(v0 + 440);
  *(v0 + 208) = v0;
  v26 = [v1 prefixText];
  if (v26)
  {
    v21 = sub_226099A08();
    v22 = v2;
    MEMORY[0x277D82BD8](v26);
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25[66] = v24;
  v25[65] = v23;
  v3 = v25[55];
  v25[8] = v23;
  v25[9] = v24;
  v20 = [v3 postfixText];
  if (v20)
  {
    v16 = sub_226099A08();
    v17 = v4;
    MEMORY[0x277D82BD8](v20);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v25[68] = v19;
  v25[67] = v18;
  v5 = v25[55];
  v25[10] = v18;
  v25[11] = v19;
  v15 = [v5 selectedText];
  if (v15)
  {
    v11 = sub_226099A08();
    v12 = v6;
    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v25[70] = v14;
  v25[69] = v13;
  v25[12] = v13;
  v25[13] = v14;
  v7 = *(MEMORY[0x277CDCA60] + 4);
  v8 = swift_task_alloc();
  v25[71] = v8;
  *v8 = v25[26];
  v8[1] = sub_225FC7AF8;
  v9 = v25[54];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC7AF8(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 568);
  *(v6 + 208) = *v1;
  *(v6 + 576) = a1;

  v4 = *(v6 + 208);

  return MEMORY[0x2822009F8](sub_225FC7C14, 0, 0);
}

uint64_t sub_225FC7C14()
{
  v6 = v0[72];
  v5 = v0[58];
  v0[26] = v0;
  sub_2260998E8();
  sub_2260991F8();

  v1 = *(MEMORY[0x277CDCA60] + 4);
  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0[26];
  v2[1] = sub_225FC7CE8;
  v3 = v0[54];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC7CE8(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 584);
  *(v6 + 208) = *v1;
  *(v6 + 592) = a1;

  v4 = *(v6 + 208);

  return MEMORY[0x2822009F8](sub_225FC7E04, 0, 0);
}

uint64_t sub_225FC7E04()
{
  v22 = v0[74];
  v0[26] = v0;
  v0[34] = sub_226099188();

  if (*sub_225F7F4BC())
  {
    v8 = v21[60];
    sub_2260991A8();
    v21[35] = sub_22609A4F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v21[36] = sub_22609A4F8();
    sub_226099948();
    sub_2260991D8();
    v21[37] = sub_22609A4F8();
    sub_226099948();
  }

  else
  {
    v17 = v21[66];
    v16 = v21[65];
    v1 = v21[63];
    sub_2260991A8();
    v21[20] = v16;
    v21[21] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F25E38(sub_225FDB998, 0, v18, MEMORY[0x277D84A98], v20, v19, (v21 + 45));
    v21[46] = v21[45];
    if (v21[46])
    {
      v23 = v21[46];
    }

    else
    {
      v23 = sub_22609A4F8();
      if (v21[46])
      {
        sub_225EFE6E8(v21 + 46);
      }
    }

    v15 = v21[68];
    v14 = v21[67];
    v12 = v21[63];
    v13 = v21[62];
    v21[47] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v21[22] = v14;
    v21[23] = v15;
    sub_225F25E38(sub_225FDB998, 0, v18, MEMORY[0x277D84A98], v20, v19, (v21 + 48));
    v21[49] = v21[48];
    if (v21[49])
    {
      v24 = v21[49];
    }

    else
    {
      v24 = sub_22609A4F8();
      if (v21[49])
      {
        sub_225EFE6E8(v21 + 49);
      }
    }

    v11 = v21[70];
    v10 = v21[69];
    v2 = v21[62];
    v9 = v21[61];
    v21[50] = v24;
    sub_226099948();
    sub_2260991D8();
    v21[24] = v10;
    v21[25] = v11;
    sub_225F25E38(sub_225FDB998, 0, v18, MEMORY[0x277D84A98], v20, v19, (v21 + 51));
    v21[52] = v21[51];
    if (v21[52])
    {
      v25 = v21[52];
    }

    else
    {
      v25 = sub_22609A4F8();
      if (v21[52])
      {
        sub_225EFE6E8(v21 + 52);
      }
    }

    v3 = v21[61];
    v21[53] = v25;
    sub_226099948();
  }

  v4 = *(MEMORY[0x277CDCA60] + 4);
  v5 = swift_task_alloc();
  v21[75] = v5;
  *v5 = v21[26];
  v5[1] = sub_225FC879C;
  v6 = v21[54];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC879C(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 600);
  *(v6 + 208) = *v1;
  *(v6 + 608) = a1;

  v4 = *(v6 + 208);

  return MEMORY[0x2822009F8](sub_225FC88B8, 0, 0);
}

uint64_t sub_225FC88B8()
{
  v0[26] = v0;
  v6 = v0[34];
  v0[77] = v6;
  sub_2260998E8();
  v1 = *(MEMORY[0x277CDCC00] + 4);
  v2 = swift_task_alloc();
  v5[78] = v2;
  *v2 = v5[26];
  v2[1] = sub_225FC8978;
  v3 = v5[76];

  return MEMORY[0x28212BEE8](v6);
}

uint64_t sub_225FC8978()
{
  v6 = *v0;
  v1 = *(*v0 + 624);
  v4 = *(*v0 + 616);
  v5 = *(*v0 + 608);
  *(v6 + 208) = *v0;

  v2 = *(v6 + 208);

  return MEMORY[0x2822009F8](sub_225FC8AD0, 0, 0);
}

uint64_t sub_225FC8AD0()
{
  v9 = v0[55];
  v0[26] = v0;
  sub_22609A4F8();
  v0[38] = sub_226099F08();
  v10 = [v9 jitGrammar];
  if (v10)
  {
    v6 = sub_226099C88();
    MEMORY[0x277D82BD8](v10);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8[39] = v7;
  if (v8[39])
  {
    v11 = v8[39];
  }

  else
  {
    v11 = sub_22609A4F8();
    if (v8[39])
    {
      sub_225EFE6E8(v8 + 39);
    }
  }

  v5 = v8[59];
  v8[40] = v11;
  v8[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  sub_226099F88();
  sub_2260998E8();
  v8[41] = v5;
  if (v8[41])
  {
    v12 = v8[41];
  }

  else
  {
    v12 = sub_22609A4F8();
    if (v8[41])
    {
      sub_225EFE6E8(v8 + 41);
    }
  }

  v8[42] = v12;
  sub_226099F88();
  v1 = *(MEMORY[0x277CDCA60] + 4);
  v2 = swift_task_alloc();
  v8[80] = v2;
  *v2 = v8[26];
  v2[1] = sub_225FC8FCC;
  v3 = v8[54];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC8FCC(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 640);
  *(v6 + 208) = *v1;
  *(v6 + 648) = a1;

  v4 = *(v6 + 208);

  return MEMORY[0x2822009F8](sub_225FC90E8, 0, 0);
}

uint64_t sub_225FC90E8()
{
  v9 = v0[81];
  v6 = v0[79];
  v7 = v0[60];
  v10 = v0[56];
  v0[26] = v0;
  sub_2260991C8();
  v5 = v0[38];
  sub_2260998E8();
  v0[43] = v5;
  sub_22601F6A0();
  v0[44] = sub_226099D18();
  v8 = sub_226099178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
  sub_226099948();
  v8();

  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B8, &qword_2260A0940);
  v12 = sub_22609A378();
  v0[82] = v12;
  v1 = *(MEMORY[0x277CDC9F8] + 4);
  v2 = swift_task_alloc();
  v11[83] = v2;
  *v2 = v11[26];
  v2[1] = sub_225FC92D8;
  v3 = v11[54];

  return MEMORY[0x28212BB88](v12);
}

uint64_t sub_225FC92D8()
{
  v9 = *v1;
  v2 = *(*v1 + 664);
  v9[26] = *v1;
  v10 = v9 + 26;
  v9[84] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = sub_225FCA83C;
  }

  else
  {
    v3 = v9[82];
    v8 = v9[56];

    v4 = *v10;
    v5 = sub_225FC9464;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225FC9464()
{
  *(v0 + 208) = v0;
  if (*sub_225F7F4BC())
  {
    goto LABEL_14;
  }

  v28 = v29[66];
  sub_2260998E8();
  if (v28)
  {
    v27 = v29[66];
    v29[18] = v29[65];
    v29[19] = v27;
    v1 = *(MEMORY[0x277CDCAF8] + 4);
    v2 = swift_task_alloc();
    v29[85] = v2;
    *v2 = v29[26];
    v2[1] = sub_225FC9A68;
    v3 = v29[65];
    v4 = v29[57];

    return MEMORY[0x28212BDA8](v3, v27);
  }

  v26 = v29[68];
  sub_2260998E8();
  if (v26)
  {
    v25 = v29[68];
    v29[16] = v29[67];
    v29[17] = v25;
    v5 = *(MEMORY[0x277CDCAE0] + 4);
    v6 = swift_task_alloc();
    v29[87] = v6;
    *v6 = v29[26];
    v6[1] = sub_225FCA074;
    v7 = v29[67];
    v8 = v29[57];

    return MEMORY[0x28212BD20](v7, v25);
  }

  v24 = v29[70];
  sub_2260998E8();
  if (!v24)
  {
LABEL_14:
    v16 = v29[70];
    v17 = v29[68];
    v18 = v29[66];
    v19 = v29[63];
    v20 = v29[62];
    v21 = v29[61];
    v22 = v29[60];
    sub_225EFE6E8(v29 + 38);
    sub_225EFE6E8(v29 + 34);

    v13 = *(v29[26] + 8);
    v14 = v29[26];

    return v13();
  }

  else
  {
    v23 = v29[70];
    v29[14] = v29[69];
    v29[15] = v23;
    v9 = *(MEMORY[0x277CDCAE8] + 4);
    v10 = swift_task_alloc();
    v29[89] = v10;
    *v10 = v29[26];
    v10[1] = sub_225FCA518;
    v11 = v29[69];
    v12 = v29[57];

    return MEMORY[0x28212BD28](v11, v23);
  }
}

uint64_t sub_225FC9A68()
{
  v7 = *v1;
  v2 = *(*v1 + 680);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 688) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225FCA9D4;
  }

  else
  {
    v3 = *v8;
    v4 = sub_225FC9BD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FC9BD0()
{
  v1 = v0[66];
  v0[26] = v0;

  v23 = v0[68];
  sub_2260998E8();
  if (v23)
  {
    v22 = v0[68];
    v0[16] = v0[67];
    v0[17] = v22;
    v2 = *(MEMORY[0x277CDCAE0] + 4);
    v3 = swift_task_alloc();
    v0[87] = v3;
    *v3 = v0[26];
    v3[1] = sub_225FCA074;
    v4 = v0[67];
    v5 = v0[57];

    return MEMORY[0x28212BD20](v4, v22);
  }

  else
  {
    v21 = v0[70];
    sub_2260998E8();
    if (v21)
    {
      v20 = v0[70];
      v0[14] = v0[69];
      v0[15] = v20;
      v6 = *(MEMORY[0x277CDCAE8] + 4);
      v7 = swift_task_alloc();
      v0[89] = v7;
      *v7 = v0[26];
      v7[1] = sub_225FCA518;
      v8 = v0[69];
      v9 = v0[57];

      return MEMORY[0x28212BD28](v8, v20);
    }

    else
    {
      v13 = v0[70];
      v14 = v0[68];
      v15 = v0[66];
      v16 = v0[63];
      v17 = v0[62];
      v18 = v0[61];
      v19 = v0[60];
      sub_225EFE6E8(v0 + 38);
      sub_225EFE6E8(v0 + 34);

      v10 = *(v0[26] + 8);
      v11 = v0[26];

      return v10();
    }
  }
}

uint64_t sub_225FCA074()
{
  v7 = *v1;
  v2 = *(*v1 + 696);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 704) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225FCAB60;
  }

  else
  {
    v3 = *v8;
    v4 = sub_225FCA1DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FCA1DC()
{
  v1 = v0[68];
  v0[26] = v0;

  v17 = v0[70];
  sub_2260998E8();
  if (v17)
  {
    v2 = v0[70];
    v0[14] = v0[69];
    v0[15] = v2;
    v3 = *(MEMORY[0x277CDCAE8] + 4);
    v4 = swift_task_alloc();
    v0[89] = v4;
    *v4 = v0[26];
    v4[1] = sub_225FCA518;
    v5 = v0[69];
    v6 = v0[57];

    JUMPOUT(0x226098EB8);
  }

  v10 = v0[70];
  v11 = v0[68];
  v12 = v0[66];
  v13 = v0[63];
  v14 = v0[62];
  v15 = v0[61];
  v16 = v0[60];
  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v7 = *(v0[26] + 8);
  v8 = v0[26];

  return v7();
}

uint64_t sub_225FCA518()
{
  v7 = *v1;
  v2 = *(*v1 + 712);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 720) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225FCACEC;
  }

  else
  {
    v3 = *v8;
    v4 = sub_225FCA680;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FCA680()
{
  v1 = v0[70];
  v0[26] = v0;

  v5 = v0[70];
  v6 = v0[68];
  v7 = v0[66];
  v8 = v0[63];
  v9 = v0[62];
  v10 = v0[61];
  v11 = v0[60];
  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v2 = *(v0[26] + 8);
  v3 = v0[26];

  return v2();
}

uint64_t sub_225FCA83C()
{
  v1 = v0[82];
  v8 = v0[70];
  v9 = v0[68];
  v10 = v0[66];
  v7 = v0[56];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v2 = v0[84];
  v3 = v0[63];
  v11 = v0[62];
  v12 = v0[61];
  v13 = v0[60];

  v4 = *(v0[26] + 8);
  v5 = v0[26];

  return v4();
}

uint64_t sub_225FCA9D4()
{
  v6 = v0[70];
  v7 = v0[68];
  v8 = v0[66];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = v0[86];
  v2 = v0[63];
  v9 = v0[62];
  v10 = v0[61];
  v11 = v0[60];

  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t sub_225FCAB60()
{
  v6 = v0[70];
  v7 = v0[68];
  v8 = v0[66];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = v0[88];
  v2 = v0[63];
  v9 = v0[62];
  v10 = v0[61];
  v11 = v0[60];

  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t sub_225FCACEC()
{
  v6 = v0[70];
  v7 = v0[68];
  v8 = v0[66];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 38);
  sub_225EFE6E8(v0 + 34);

  v1 = v0[90];
  v2 = v0[63];
  v9 = v0[62];
  v10 = v0[61];
  v11 = v0[60];

  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t sub_225FCAEA8(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v14 = a2;
  v23 = 0;
  v22 = 0;
  v3 = sub_2260990A8();
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v15 = &v12 - v12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v13 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v7, v8, v9);
  v19 = &v12 - v13;
  v23 = a1;
  v22 = v10;
  MEMORY[0x277D82BE0](v10);
  sub_226099098();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  sub_226099DD8();
  (*(v17 + 8))(v19, v20);
  return sub_226099DE8();
}

uint64_t sub_225FCB034(uint64_t a1, uint64_t a2)
{
  v3[10] = v2;
  v3[9] = a1;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A20, &unk_2260A0A10);
  v3[12] = v5;
  v11 = *(v5 - 8);
  v3[13] = v11;
  v6 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v3[15] = v7;
  v12 = *(v7 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A28, &qword_2260A1000);
  v3[19] = v8;
  v14 = *(v8 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = v2;
  v9 = v3[5];

  return MEMORY[0x2822009F8](sub_225FCB2C4, 0, 0);
}

uint64_t sub_225FCB2C4()
{
  v8 = v0[22];
  v9 = v0[21];
  v7 = v0[20];
  v10 = v0[19];
  v12 = v0[18];
  v11 = v0[17];
  v13 = v0[16];
  v14 = v0[15];
  v5 = v0[14];
  v4 = v0[13];
  v6 = v0[12];
  v15 = v0[11];
  v17 = v0[10];
  v16 = v0[9];
  v0[5] = v0;
  sub_2260990A8();
  sub_225F819F0();
  sub_225F81A04(v5);
  sub_226099DB8();
  (*(v4 + 8))(v5, v6);
  (*(v7 + 32))(v8, v9, v10);
  (*(v13 + 32))(v12, v11, v14);
  (*(v13 + 16))(v15, v12, v14);
  (*(v13 + 56))(v15, 0, 1, v14);
  sub_225FDA418(v15);
  v0[23] = swift_allocObject();
  MEMORY[0x277D82BE0](v17);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v17);

  sub_226098D78();
  sub_22601FAFC();
  v18 = sub_226099D48();
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_225FCB51C, v18, v1);
}

uint64_t sub_225FCB51C()
{
  v4 = v0[23];
  v1 = v0[9];
  v0[5] = v0;
  sub_226098D28();

  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_225FCB5B4, 0, 0);
}

uint64_t sub_225FCB5B4()
{
  v1 = v0[10];
  v0[5] = v0;
  v10 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v2 = *v10;
  v12 = *v10;
  v0[24] = *v10;
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  v3 = *(MEMORY[0x277CDCA30] + 4);
  v4 = swift_task_alloc();
  v11[25] = v4;
  v5 = sub_22601FB7C();
  *v4 = v11[5];
  v4[1] = sub_225FCB6D4;
  v6 = v11[22];
  v7 = v11[19];
  v8 = v11[9];

  return MEMORY[0x28212BBD0](v6, v12, v7, v5);
}

uint64_t sub_225FCB6D4()
{
  v7 = *v1;
  v2 = *(*v1 + 200);
  *(v7 + 40) = *v1;
  v8 = (v7 + 40);
  *(v7 + 208) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225FCB98C;
  }

  else
  {

    v3 = *v8;
    v4 = sub_225FCB850;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FCB850()
{
  v8 = v0[22];
  v9 = v0[21];
  v6 = v0[20];
  v7 = v0[19];
  v10 = v0[18];
  v11 = v0[17];
  v1 = v0[16];
  v2 = v0[15];
  v12 = v0[14];
  v13 = v0[11];
  v0[5] = v0;
  (*(v1 + 8))();
  (*(v6 + 8))(v8, v7);

  v3 = *(v0[5] + 8);
  v4 = v0[5];

  return v3();
}

uint64_t sub_225FCB98C()
{
  v1 = v0[24];
  v11 = v0[22];
  v12 = v0[21];
  v9 = v0[20];
  v10 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v7 = v0[16];
  v8 = v0[15];
  v15 = v0[14];
  v16 = v0[11];
  v0[5] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v7 + 8))(v13, v8);
  (*(v9 + 8))(v11, v10);

  v2 = v0;
  v3 = *(v0[5] + 8);
  v4 = v0[5];
  v5 = v2[26];

  return v3();
}

uint64_t sub_225FCBAF8(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v33 = a2;
  v32 = a3;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v4, v32, v5);
  v30 = &v19 - v29;
  v31 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v19 - v29, v8, v9);
  v34 = &v19 - v31;
  v45 = v10;
  v43 = a2;
  v44 = v11;

  sub_226098E78();

  v35 = sub_226098E68();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = *(v36 + 48);
  v39 = v36 + 48;
  if (v38(v34, 1) == 1)
  {

    sub_226022FCC(v34);
    v27 = 0;
  }

  else
  {
    v26 = sub_226098E38();
    (*(v36 + 8))(v34, v35);

    v27 = v26;
  }

  v41 = v27;
  if (v27)
  {
    v42 = v41;
  }

  else
  {
    v25 = 0;
    sub_226098948();
    v42 = sub_22609A4F8();
    if (v41)
    {
      sub_225EFE6E8(&v41);
    }
  }

  v24 = v42;

  sub_226098E78();

  if ((v38)(v30, 1, v35) == 1)
  {

    sub_226022FCC(v30);
    v23 = 2;
  }

  else
  {
    v22 = sub_226098E58();
    (*(v36 + 8))(v30, v35);

    v23 = v22 & 1;
  }

  v40 = v23;
  if (v23 == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v40;
  }

  v20 = 1;
  sub_225F829FC();
  v12 = v28;
  v14 = v13;
  v16 = v15 & v20;
  v17 = *v28;
  *v28 = v14;
  *(v12 + 8) = v16;
}

uint64_t sub_225FCBE84(uint64_t a1, uint64_t a2)
{
  v3[27] = v2;
  v3[26] = a2;
  v3[25] = a1;
  v3[9] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[10] = 0;
  v3[11] = 0;
  v3[16] = 0;
  v3[18] = 0;
  v3[24] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = sub_226098C58();
  v3[28] = v4;
  v7 = *(v4 - 8);
  v3[29] = v7;
  v8 = *(v7 + 64);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;
  v3[10] = v2;
  v5 = v3[9];

  return MEMORY[0x2822009F8](sub_225FCC008, 0, 0);
}

uint64_t sub_225FCC008()
{
  v88 = v0;
  v1 = v0[27];
  v0[9] = v0;
  v81 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v82 = *v81;
  v0[34] = *v81;

  swift_endAccess();
  if (v82)
  {
    v76 = *(v80 + 208);
    v75 = *(v80 + 200);
    *(v80 + 88) = v82;
    v77 = objc_opt_self();
    sub_2260998E8();
    v78 = sub_2260999F8();

    v79 = [v77 speechProfilePathsWithLanguage_];
    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      v73 = sub_226099C88();
      MEMORY[0x277D82BD8](v79);
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    *(v80 + 280) = v74;
    if (v74)
    {
      *(v80 + 128) = v74;
      *(v80 + 136) = v74;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
      v70 = sub_226098948();
      *(v80 + 288) = v70;
      v2 = sub_225F156F8();
      v72 = sub_225F15970(sub_225F951C4, 0, v69, v70, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v71);
      *(v80 + 296) = v72;
      *(v80 + 144) = v72;
      v67 = *(v70 - 8);
      *(v80 + 304) = v67;
      v65 = *(v67 + 64);
      v66 = swift_task_alloc();
      *(v80 + 312) = v66;
      *(v80 + 152) = v72;
      v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15;
      v68 = swift_task_alloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A30, &qword_2260A0A28);
      sub_22601FC04();
      sub_226099FE8();
      if ((*(v67 + 48))(v68, 1, v70) != 1)
      {
        (*(v67 + 32))(v66, v68, v70);

        v63 = sub_226098958();
        v64 = v4;
        *(v80 + 320) = v63;
        *(v80 + 328) = v4;
        v5 = *(v80 + 264);
        v54 = *(v80 + 224);
        v53 = *(v80 + 232);
        *(v80 + 56) = v63;
        *(v80 + 64) = v4;
        v6 = sub_225F7E9BC();
        (*(v53 + 16))(v5, v6, v54);
        sub_225EF5A38(v63, v64);
        v55 = swift_allocObject();
        *(v55 + 16) = v63;
        *(v55 + 24) = v64;
        oslog = sub_226098C48();
        v62 = sub_22609A088();
        v57 = swift_allocObject();
        *(v57 + 16) = 0;
        v58 = swift_allocObject();
        *(v58 + 16) = 8;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_22601FDD4;
        *(v56 + 24) = v55;
        v59 = swift_allocObject();
        *(v59 + 16) = sub_225F2D374;
        *(v59 + 24) = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        sub_22609A4F8();
        v60 = v7;

        *v60 = sub_225EF7434;
        v60[1] = v57;

        v60[2] = sub_225EF7434;
        v60[3] = v58;

        v60[4] = sub_225EF71D0;
        v60[5] = v59;
        sub_225EF5418();

        if (os_log_type_enabled(oslog, v62))
        {
          buf = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v51 = sub_225EF5468(0);
          v52 = sub_225EF5468(0);
          v83 = buf;
          v84 = v51;
          v85 = v52;
          sub_225EF54BC(0, &v83);
          sub_225EF54BC(1, &v83);
          v86 = sub_225EF7434;
          v87 = v57;
          sub_225EF73E8(&v86, &v83, &v84, &v85);
          v86 = sub_225EF7434;
          v87 = v58;
          sub_225EF73E8(&v86, &v83, &v84, &v85);
          v86 = sub_225EF71D0;
          v87 = v59;
          sub_225EF73E8(&v86, &v83, &v84, &v85);
          _os_log_impl(&dword_225EEB000, oslog, v62, "Saving profile snapshot: %ld bytes", buf, 0xCu);
          sub_225EF7AF4(v51);
          sub_225EF7AF4(v52);
          sub_22609A168();
        }

        else
        {
        }

        v48 = *(v80 + 264);
        v49 = *(v80 + 224);
        v47 = *(v80 + 232);
        MEMORY[0x277D82BD8](oslog);
        (*(v47 + 8))(v48, v49);
        v8 = *(v80 + 72);

        return MEMORY[0x2822009F8](sub_225FCDCEC, v82, 0);
      }

      v9 = *(v80 + 256);
      v43 = *(v80 + 224);
      v42 = *(v80 + 232);
      sub_22601F334(v68);

      v10 = sub_225F7E9BC();
      (*(v42 + 16))(v9, v10, v43);
      log = sub_226098C48();
      v44 = sub_22609A098();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v46 = sub_22609A4F8();
      if (os_log_type_enabled(log, v44))
      {
        v38 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v39 = sub_225EF5468(0);
        v40 = sub_225EF5468(0);
        *(v80 + 160) = v38;
        *(v80 + 168) = v39;
        *(v80 + 176) = v40;
        sub_225EF54BC(0, (v80 + 160));
        sub_225EF54BC(0, (v80 + 160));
        *(v80 + 184) = v46;
        v41 = swift_task_alloc();
        v41[2] = v80 + 160;
        v41[3] = v80 + 168;
        v41[4] = v80 + 176;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, log, v44, "No speech profile paths available", v38, 2u);
        sub_225EF7AF4(v39);
        sub_225EF7AF4(v40);
        sub_22609A168();
      }

      v36 = *(v80 + 256);
      v37 = *(v80 + 224);
      v35 = *(v80 + 232);
      MEMORY[0x277D82BD8](log);
      (*(v35 + 8))(v36, v37);
      v11 = *(v80 + 296);
      v34 = *(v80 + 280);
    }

    else
    {
      v12 = *(v80 + 248);
      v30 = *(v80 + 224);
      v29 = *(v80 + 232);
      v13 = sub_225F7E9BC();
      (*(v29 + 16))(v12, v13, v30);
      v32 = sub_226098C48();
      v31 = sub_22609A098();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v33 = sub_22609A4F8();
      if (os_log_type_enabled(v32, v31))
      {
        v25 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v26 = sub_225EF5468(0);
        v27 = sub_225EF5468(0);
        *(v80 + 96) = v25;
        *(v80 + 104) = v26;
        *(v80 + 112) = v27;
        sub_225EF54BC(0, (v80 + 96));
        sub_225EF54BC(0, (v80 + 96));
        *(v80 + 120) = v33;
        v28 = swift_task_alloc();
        v28[2] = v80 + 96;
        v28[3] = v80 + 104;
        v28[4] = v80 + 112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, v32, v31, "Failed to load speech profile paths when trying to update Fides record", v25, 2u);
        sub_225EF7AF4(v26);
        sub_225EF7AF4(v27);
        sub_22609A168();
      }

      v23 = *(v80 + 248);
      v24 = *(v80 + 224);
      v22 = *(v80 + 232);
      MEMORY[0x277D82BD8](v32);
      (*(v22 + 8))(v23, v24);
    }

    v14 = *(v80 + 272);
  }

  v15 = *(v80 + 264);
  v19 = *(v80 + 256);
  v20 = *(v80 + 248);
  v21 = *(v80 + 240);

  v16 = *(*(v80 + 72) + 8);
  v17 = *(v80 + 72);

  return v16();
}

uint64_t sub_225FCDCEC()
{
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[34];
  v0[9] = v0;
  sub_225F321DC(v2, v1);
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_225FCDD68, 0, 0);
}

uint64_t sub_225FCDD68()
{
  v1 = v0[41];
  v2 = v0[40];
  v0[9] = v0;
  sub_225EF5990(v2, v1);
  v10 = v0[39];
  v3 = v0[36];
  (*(v0[38] + 8))();

  v4 = v0[37];
  v11 = v0[35];

  v5 = v0[34];

  v6 = v0[33];
  v12 = v0[32];
  v13 = v0[31];
  v14 = v0[30];

  v7 = *(v0[9] + 8);
  v8 = v0[9];

  return v7();
}

uint64_t sub_225FCDEE0()
{
  v3 = [objc_opt_self() processInfo];
  [v3 systemUptime];
  v5 = v1;
  MEMORY[0x277D82BD8](v3);
  v4 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  *v4 = v5;
  return swift_endAccess();
}

uint64_t sub_225FCDF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[54] = v6;
  v7[53] = a6;
  v7[52] = a5;
  v7[51] = a4;
  v7[50] = a3;
  v7[49] = a2;
  v7[55] = swift_getObjectType();
  v7[41] = v7;
  v7[42] = 0;
  v7[37] = 0;
  v7[38] = 0;
  v7[39] = 0;
  v7[40] = 0;
  v7[43] = 0;
  v7[44] = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A38, &qword_2260A0A38) - 8) + 64) + 15;
  v7[56] = swift_task_alloc();
  v9 = sub_226098C58();
  v7[57] = v9;
  v14 = *(v9 - 8);
  v7[58] = v14;
  v10 = *(v14 + 64) + 15;
  v7[59] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08) - 8) + 64) + 15;
  v7[60] = swift_task_alloc();
  v7[42] = a1;
  v7[37] = a2;
  v7[38] = a3;
  v7[39] = a4;
  v7[40] = a5;
  v7[43] = a6;
  v7[44] = v6;
  v12 = v7[41];

  return MEMORY[0x2822009F8](sub_225FCE1A4, 0, 0);
}

uint64_t sub_225FCE1A4()
{
  v5 = *(v0 + 432);
  *(v0 + 328) = v0;
  v4 = (v5 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
  swift_beginAccess();
  *v4 = 0;
  swift_endAccess();
  v6 = (v5 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  *v6 = 0;
  swift_endAccess();
  v1 = swift_task_alloc();
  v7[61] = v1;
  *v1 = v7[41];
  v1[1] = sub_225FCE2F0;
  v2 = v7[54];

  return sub_225FDC2A8();
}

uint64_t sub_225FCE2F0()
{
  v11 = *v1;
  v9 = (*v1 + 16);
  v10 = *v1 + 328;
  v2 = *(*v1 + 488);
  *(v11 + 328) = *v1;
  *(v11 + 496) = v0;

  if (v0)
  {
    v4 = v9[58];
    v7 = v9[57];
    v8 = v9[54];

    v5 = *(*v10 + 8);

    return v5();
  }

  else
  {
    v3 = *v10;

    return MEMORY[0x2822009F8](sub_225FCE4E4, 0, 0);
  }
}

uint64_t sub_225FCE4E4()
{
  v58 = v0;
  v1 = *(v0 + 432);
  *(v0 + 328) = v0;
  v54 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
  swift_beginAccess();
  v55 = *v54;
  swift_endAccess();
  if (v55)
  {
    v50 = *(v53 + 480);
    v2 = *(v53 + 432);
    sub_225EF95B0(v50);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v50, 1) == 1)
    {
      return sub_22609A3B8();
    }

    v47 = *(v53 + 480);
    v48 = *(v53 + 432);
    sub_226099DE8();
    (*(v52 + 8))(v47, v51);
    v49 = (v48 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded);
    swift_beginAccess();
    *v49 = 0;
    swift_endAccess();
  }

  v4 = *(v53 + 472);
  v43 = *(v53 + 456);
  v42 = *(v53 + 464);
  v5 = sub_225F7E9BC();
  (*(v42 + 16))(v4, v5, v43);
  v45 = sub_226098C48();
  v44 = sub_22609A078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v46 = sub_22609A4F8();
  if (os_log_type_enabled(v45, v44))
  {
    v6 = *(v53 + 496);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = sub_225EF5468(0);
    v40 = sub_225EF5468(0);
    *(v53 + 360) = buf;
    *(v53 + 368) = v39;
    *(v53 + 376) = v40;
    sub_225EF54BC(0, (v53 + 360));
    sub_225EF54BC(0, (v53 + 360));
    *(v53 + 384) = v46;
    v41 = swift_task_alloc();
    v41[2] = v53 + 360;
    v41[3] = v53 + 368;
    v41[4] = v53 + 376;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v6)
    {
    }

    _os_log_impl(&dword_225EEB000, v45, v44, "Configuring analyzer to produce single-user transcriber results.", buf, 2u);
    sub_225EF7AF4(v39);
    sub_225EF7AF4(v40);
    sub_22609A168();
  }

  else
  {
  }

  v34 = *(v53 + 472);
  v35 = *(v53 + 456);
  v36 = *(v53 + 416);
  v37 = *(v53 + 408);
  v33 = *(v53 + 464);
  MEMORY[0x277D82BD8](v45);
  (*(v33 + 8))(v34, v35);
  sub_22601FDE0(v37);
  if (v37)
  {
    v7 = *(v53 + 416);
    v31 = *(v53 + 408);

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v8 = *(v53 + 416);
  v30 = *(v53 + 408);
  sub_22601FDE0(v30);
  if (v30)
  {
    v28 = *(v53 + 416);
    v9 = *(v53 + 408);

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v10 = *(v53 + 440);
  v27 = *(v53 + 424);
  sub_225FDDA80(*(v53 + 392), v32, *(v53 + 400), v29, 0, v56);

  memcpy((v53 + 16), v56, 0x28uLL);
  memset(v57, 0, sizeof(v57));
  memcpy((v53 + 56), v57, 0x28uLL);
  sub_22601FE20((v53 + 16), (v53 + 96));

  if (v27)
  {
    v25 = *(v53 + 424);
    v26 = *(v53 + 448);
    sub_226099358();

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
    (*(*(v11 - 8) + 56))(v26, 0, 1);
  }

  else
  {
    v17 = *(v53 + 448);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
    (*(*(v16 - 8) + 56))(v17, 1);
  }

  v22 = *(v53 + 480);
  v23 = *(v53 + 472);
  v24 = *(v53 + 448);
  v19 = *(v53 + 432);
  sub_22601FE20((v53 + 56), (v53 + 136));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_225FDEA3C((v53 + 96), v24, (v53 + 136), v18, OpaqueTypeConformance2);
  sub_225F186BC((v53 + 136));
  sub_225F062D0(v24);
  sub_225F186BC((v53 + 96));
  v20 = (v19 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
  swift_beginAccess();
  v13 = *v20;
  *v20 = v21;

  swift_endAccess();
  sub_225F186BC((v53 + 56));
  sub_225F186BC((v53 + 16));

  v14 = *(*(v53 + 328) + 8);
  v15 = *(v53 + 328);

  return v14();
}

id sub_225FCEF44(void *a1)
{
  v75 = a1;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v84 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  v74 = v75;
  v64 = v75;
  v1 = v75;
  v82 = v75;
  v72 = 0;
  v71 = sub_2260987A8();
  v65 = v71;
  v66 = *(v71 - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  v69 = v24;
  MEMORY[0x28223BE20](v24, v71, v2, v3);
  v73 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  v44 = v24;
  v6 = MEMORY[0x28223BE20](v24, v70, v65, v5);
  v45 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v45;
  (*(v67 + 16))(v45, v6);
  v59 = sub_226098798();
  v46 = v59;
  v47 = *(v59 - 8);
  v53 = v47;
  v50 = *(v47 + 64);
  v48 = v50;
  v62 = v24;
  MEMORY[0x28223BE20](v24, v59, v8, v9);
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = v24 - v51;
  v49 = sub_22601FEB4();
  sub_226098888();
  v57 = v24;
  MEMORY[0x28223BE20](v24, v10, v11, v12);
  v54 = v24 - v51;
  sub_226098788();
  v52 = sub_22601FF2C();
  v63 = sub_22609A508();
  v61 = *(v53 + 8);
  v60 = v53 + 8;
  v55 = v61;
  v56 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v54, v59);
  v61(v58, v59);
  if ((v63 & 1) == 0)
  {
    v27 = *(v67 + 8);
    v28 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v45, v65);
    v29 = v24;
    v15 = MEMORY[0x28223BE20](v24, v70, v65, v14);
    v30 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = v30;
    (*(v67 + 32))(v30, v15);
    v35 = v24;
    MEMORY[0x28223BE20](v65, v49, v24, v17);
    v31 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = v24 - v31;
    sub_226098888();
    v33 = v24;
    MEMORY[0x28223BE20](v24, v18, v19, v20);
    v32 = v24 - v31;
    sub_226098778();
    v36 = sub_22609A508();
    v55(v32, v46);
    v55(v34, v46);
    if (v36)
    {
      v80 = v30;
      v24[0] = type metadata accessor for AFError();
      v78 = 1101;
      v24[1] = sub_2260988A8();
      sub_225F1A478();
      sub_2260988C8();
      v25 = v79;
      v21 = v79;
      v26 = v25;

      v27(v30, v65);
      return v26;
    }

    v27(v30, v65);

LABEL_9:
    v22 = v75;
    return v75;
  }

  v81 = v45;
  v37 = type metadata accessor for AFError();
  v76 = 1107;
  v38 = sub_2260988A8();
  sub_225F1A478();
  sub_2260988C8();
  v39 = v77;
  v13 = v77;
  v42 = v39;

  v41 = *(v67 + 8);
  v40 = v67 + 8;
  v41(v45, v65);
  v41(v70, v65);

  return v42;
}

void sub_225FCF714(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v2 = *a1;
  *a2 = sub_2260988D8();
}

uint64_t sub_225FCF84C(uint64_t a1, id a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = sub_2260988D8();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, a1);
  return MEMORY[0x277D82BD8](v6);
}

uint64_t sub_225FCF95C(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_225EF7450;
  v60 = sub_225EF7B84;
  v62 = sub_225EF7434;
  v64 = sub_225EF7434;
  v67 = sub_225EF7B90;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v79 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v54, v2, v3);
  v4 = &v30[-v48];
  v49 = &v30[-v48];
  v81 = v5;
  v82 = v6;
  v80 = v7;
  v8 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v8, v52);
  sub_2260998E8();
  v57 = 32;
  v58 = 7;
  v9 = swift_allocObject();
  v10 = v54;
  v59 = v9;
  *(v9 + 16) = v53;
  *(v9 + 24) = v10;
  v71 = sub_226098C48();
  v72 = sub_22609A088();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v59;
  v61 = v11;
  *(v11 + 16) = v56;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v61;
  v68 = v13;
  *(v13 + 16) = v60;
  *(v13 + 24) = v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v66 = sub_22609A4F8();
  v69 = v15;

  v16 = v63;
  v17 = v69;
  *v69 = v62;
  v17[1] = v16;

  v18 = v65;
  v19 = v69;
  v69[2] = v64;
  v19[3] = v18;

  v20 = v68;
  v21 = v69;
  v69[4] = v67;
  v21[5] = v20;
  sub_225EF5418();

  if (os_log_type_enabled(v71, v72))
  {
    v22 = v47;
    v40 = sub_22609A188();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v41 = sub_225EF5468(0);
    v42 = sub_225EF5468(1);
    v43 = &v77;
    v77 = v40;
    v44 = &v76;
    v76 = v41;
    v45 = &v75;
    v75 = v42;
    sub_225EF54BC(2, &v77);
    sub_225EF54BC(1, v43);
    v73 = v62;
    v74 = v63;
    sub_225EF73E8(&v73, v43, v44, v45);
    v46 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      v38 = 0;
      v73 = v67;
      v74 = v68;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      _os_log_impl(&dword_225EEB000, v71, v72, "Visual context requested for language:%s", v40, 0xCu);
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v71);
  (*(v50 + 8))(v49, v52);
  v34 = MEMORY[0x277D837D0];
  v33 = sub_22609A4F8();
  v32 = v23;
  v24 = sub_226099AA8();
  v25 = v32;
  v26 = v24;
  v27 = v33;
  *v32 = v26;
  v25[1] = v28;
  sub_225EF5418();
  v35 = v27;
  v79 = v27;
  v78[2] = v27;
  v37 = v78;
  v78[0] = v53;
  v78[1] = v54;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  if (sub_226099C38())
  {

    v31 = 1;
  }

  else
  {

    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_225FD00D4(uint64_t a1, uint64_t a2)
{
  *(v3 + 200) = v2;
  *(v3 + 192) = a2;
  *(v3 + 184) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 112) = 0;
  *(v3 + 296) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_226098C58();
  *(v3 + 216) = v5;
  v8 = *(v5 - 8);
  *(v3 + 224) = v8;
  v9 = *(v8 + 64);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  v6 = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_225FD0298, 0, 0);
}