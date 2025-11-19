uint64_t sub_2297836A8()
{
  v2 = *(*v1 + 552);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_229784D30;
  }

  else
  {
    v3 = sub_2297837B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297837B8()
{
  v109 = v0;
  v1 = *(v0 + 360);
  v2 = sub_22A4DD44C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 528);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    v7 = *(v0 + 464);
    v8 = *(v0 + 416);
    v9 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v5(v7, v9, v8);
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    v15 = *(v0 + 464);
    v16 = *(v0 + 416);
    if (v12)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v108 = v18;
      *v17 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      v19 = sub_22A4DE5CC();
      v21 = v20;
      v14(v15, v16);
      v22 = sub_2295A3E30(v19, v21, &v108);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_229538000, v10, v11, "[HomeID: %s] Guidance stream stopped without an error", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {

      v14(v15, v16);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v33 = *(v0 + 536);
    v34 = *(v0 + 520);
    *(v0 + 568) = v34;
    *(v0 + 560) = v33;
    if (sub_22A4DDAAC())
    {
      if (sub_22A4DDAAC())
      {
        if (qword_27D87BA78 != -1)
        {
          swift_once();
        }

        v35 = *(v0 + 440);
        v36 = *(v0 + 416);
        v37 = *(v0 + 424);
        v38 = *(v0 + 264);
        v39 = sub_22A4DD07C();
        __swift_project_value_buffer(v39, qword_27D880AD0);
        (*(v37 + 16))(v35, v38, v36);
        v40 = sub_22A4DD05C();
        v41 = sub_22A4DDCCC();
        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v0 + 440);
        v44 = *(v0 + 416);
        v45 = *(v0 + 424);
        if (v42)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v108 = v47;
          *v46 = 136315138;
          sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
          v48 = sub_22A4DE5CC();
          v50 = v49;
          (*(v45 + 8))(v43, v44);
          v51 = sub_2295A3E30(v48, v50, &v108);

          *(v46 + 4) = v51;
          _os_log_impl(&dword_229538000, v40, v41, "[HomeID: %s] Task was cancelled, exiting...", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x22AAD4E50](v47, -1, -1);
          MEMORY[0x22AAD4E50](v46, -1, -1);
        }

        else
        {

          (*(v45 + 8))(v43, v44);
        }

        v90 = *(v0 + 488);
        v89 = *(v0 + 496);
        v92 = *(v0 + 472);
        v91 = *(v0 + 480);
        v94 = *(v0 + 456);
        v93 = *(v0 + 464);
        v96 = *(v0 + 440);
        v95 = *(v0 + 448);
        v100 = *(v0 + 432);
        v101 = *(v0 + 408);
        v102 = *(v0 + 384);
        v103 = *(v0 + 360);
        v104 = *(v0 + 352);
        v105 = *(v0 + 328);
        v106 = *(v0 + 304);
        v107 = *(v0 + 296);
        v97 = *(v0 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
        sub_22A4DDA1C();

        v98 = *(v0 + 8);

        return v98();
      }

      else
      {
        *(v0 + 80) = sub_22A4DD39C();
        *(v0 + 88) = &off_283CE7340;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v70 = *(MEMORY[0x277CC5880] + 4);
        v71 = swift_task_alloc();
        *(v0 + 504) = v71;
        *v71 = v0;
        v71[1] = sub_229781D70;
        v72 = *(v0 + 264);

        return MEMORY[0x282116518](boxed_opaque_existential_1, v72);
      }
    }

    else
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 456);
      v53 = *(v0 + 416);
      v54 = *(v0 + 264);
      v55 = *(v0 + 424) + 16;
      v56 = sub_22A4DD07C();
      *(v0 + 576) = __swift_project_value_buffer(v56, qword_27D880AD0);
      *(v0 + 584) = v55 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v34(v52, v54, v53);
      v57 = sub_22A4DD05C();
      v58 = sub_22A4DDCCC();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 456);
      v62 = *(v0 + 416);
      v61 = *(v0 + 424);
      if (v59)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v108 = v64;
        *v63 = 136315394;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
        v65 = sub_22A4DE5CC();
        v67 = v66;
        v33(v60, v62);
        v68 = sub_2295A3E30(v65, v67, &v108);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2048;
        *(v63 + 14) = 0x409C200000000000;
        _os_log_impl(&dword_229538000, v57, v58, "[HomeID: %s] Fetching guidance stream after %f seconds", v63, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x22AAD4E50](v64, -1, -1);
        MEMORY[0x22AAD4E50](v63, -1, -1);
      }

      else
      {

        v33(v60, v62);
      }

      v73 = *(v0 + 328);
      v74 = *(v0 + 304);
      v75 = *(v0 + 312);
      v77 = *(v0 + 288);
      v76 = *(v0 + 296);
      v78 = *(v0 + 280);
      v79 = sub_22A4DE88C();
      v81 = v80;
      sub_22A4DE6AC();
      *(v0 + 240) = v79;
      *(v0 + 248) = v81;
      *(v0 + 224) = 0;
      *(v0 + 216) = 0;
      *(v0 + 232) = 1;
      v82 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928]);
      sub_22A4DE68C();
      sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8]);
      sub_22A4DE2FC();
      v83 = *(v77 + 8);
      *(v0 + 592) = v83;
      *(v0 + 600) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v83(v76, v78);
      v84 = *(MEMORY[0x277D85A58] + 4);
      v85 = swift_task_alloc();
      *(v0 + 608) = v85;
      *v85 = v0;
      v85[1] = sub_229784218;
      v86 = *(v0 + 328);
      v88 = *(v0 + 304);
      v87 = *(v0 + 312);

      return MEMORY[0x2822008C8](v88, v0 + 216, v87, v82);
    }
  }

  else
  {
    v24 = *(v0 + 344);
    v23 = *(v0 + 352);
    v25 = *(v0 + 336);
    v26 = *(v0 + 272);
    *(v0 + 200) = v2;
    *(v0 + 208) = &off_283CE4900;
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    (*(v3 + 32))(v27, v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
    sub_22A4DDA0C();
    (*(v24 + 8))(v23, v25);
    v28 = *(v0 + 160);
    v29 = *(v0 + 168);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 136, v28);
    v30 = *(MEMORY[0x277D856D8] + 4);
    v31 = swift_task_alloc();
    *(v0 + 552) = v31;
    *v31 = v0;
    v31[1] = sub_2297836A8;
    v32 = *(v0 + 360);

    return MEMORY[0x282200310](v32, 0, 0, v0 + 256, v28, v29);
  }
}

uint64_t sub_229784218()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 592);
  v6 = *(*v1 + 304);
  v7 = *(*v1 + 280);
  v10 = *v1;
  *(*v1 + 616) = v0;

  v5(v6, v7);
  if (v0)
  {
    v8 = sub_229784764;
  }

  else
  {
    (*(v2[40] + 8))(v2[41], v2[39]);
    v8 = sub_2297843B0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2297843B0()
{
  v42 = v0;
  if (sub_22A4DDAAC())
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v1 = v0[55];
    v2 = v0[52];
    v3 = v0[53];
    v4 = v0[33];
    v5 = sub_22A4DD07C();
    __swift_project_value_buffer(v5, qword_27D880AD0);
    (*(v3 + 16))(v1, v4, v2);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      v14 = sub_22A4DE5CC();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_2295A3E30(v14, v16, &v41);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_229538000, v6, v7, "[HomeID: %s] Task was cancelled, exiting...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v23 = v0[61];
    v22 = v0[62];
    v25 = v0[59];
    v24 = v0[60];
    v27 = v0[57];
    v26 = v0[58];
    v29 = v0[55];
    v28 = v0[56];
    v33 = v0[54];
    v34 = v0[51];
    v35 = v0[48];
    v36 = v0[45];
    v37 = v0[44];
    v38 = v0[41];
    v39 = v0[38];
    v40 = v0[37];
    v30 = v0[34];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
    sub_22A4DDA1C();

    v31 = v0[1];

    return v31();
  }

  else
  {
    v0[10] = sub_22A4DD39C();
    v0[11] = &off_283CE7340;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    v19 = *(MEMORY[0x277CC5880] + 4);
    v20 = swift_task_alloc();
    v0[63] = v20;
    *v20 = v0;
    v20[1] = sub_229781D70;
    v21 = v0[33];

    return MEMORY[0x282116518](boxed_opaque_existential_1, v21);
  }
}

uint64_t sub_229784764()
{
  v67 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 448);
  v6 = *(v0 + 416);
  v7 = *(v0 + 264);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v4(v5, v7, v6);
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 560);
  v13 = *(v0 + 448);
  v14 = *(v0 + 416);
  v15 = *(v0 + 424) + 8;
  if (v11)
  {
    v62 = *(v0 + 616);
    v16 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66 = v64;
    *v16 = 136315394;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    v12(v13, v14);
    v20 = sub_2295A3E30(v17, v19, &v66);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v62;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v60 = v22;
    _os_log_impl(&dword_229538000, v9, v10, "[HomeID: %s] Sleep threw an error: %@", v16, 0x16u);
    sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v60, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x22AAD4E50](v64, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    if ((sub_22A4DDAAC() & 1) == 0)
    {
LABEL_3:
      *(v0 + 80) = sub_22A4DD39C();
      *(v0 + 88) = &off_283CE7340;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v24 = *(MEMORY[0x277CC5880] + 4);
      v25 = swift_task_alloc();
      *(v0 + 504) = v25;
      *v25 = v0;
      v25[1] = sub_229781D70;
      v26 = *(v0 + 264);

      return MEMORY[0x282116518](boxed_opaque_existential_1, v26);
    }
  }

  else
  {

    v12(v13, v14);
    if ((sub_22A4DDAAC() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27D87BA78 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 440);
  v28 = *(v0 + 416);
  v29 = *(v0 + 424);
  v30 = *(v0 + 264);
  v31 = sub_22A4DD07C();
  __swift_project_value_buffer(v31, qword_27D880AD0);
  (*(v29 + 16))(v27, v30, v28);
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCCC();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 440);
  v36 = *(v0 + 416);
  v37 = *(v0 + 424);
  if (v34)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v66 = v39;
    *v38 = 136315138;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
    v40 = sub_22A4DE5CC();
    v42 = v41;
    (*(v37 + 8))(v35, v36);
    v43 = sub_2295A3E30(v40, v42, &v66);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_229538000, v32, v33, "[HomeID: %s] Task was cancelled, exiting...", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v35, v36);
  }

  v45 = *(v0 + 488);
  v44 = *(v0 + 496);
  v47 = *(v0 + 472);
  v46 = *(v0 + 480);
  v49 = *(v0 + 456);
  v48 = *(v0 + 464);
  v51 = *(v0 + 440);
  v50 = *(v0 + 448);
  v55 = *(v0 + 432);
  v56 = *(v0 + 408);
  v57 = *(v0 + 384);
  v58 = *(v0 + 360);
  v59 = *(v0 + 352);
  v61 = *(v0 + 328);
  v63 = *(v0 + 304);
  v65 = *(v0 + 296);
  v52 = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
  sub_22A4DDA1C();

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_229784D30()
{
  v102 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 432);
  v5 = *(v0 + 416);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v2(v4, v7, v5);
  v8 = v6;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 432);
  v15 = *(v0 + 416);
  if (v11)
  {
    v97 = v9;
    v16 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v101 = v99;
    *v16 = 136315394;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_2295A3E30(v17, v19, &v101);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v6;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v95 = v22;
    _os_log_impl(&dword_229538000, v97, v10, "[HomeID: %s] Guidance stream stopped with error: %@", v16, 0x16u);
    sub_22953EAE4(v95, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v95, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x22AAD4E50](v99, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  else
  {

    v13(v14, v15);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v23 = *(v0 + 536);
  v24 = *(v0 + 520);
  *(v0 + 568) = v24;
  *(v0 + 560) = v23;
  if (sub_22A4DDAAC())
  {
    if (sub_22A4DDAAC())
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 440);
      v26 = *(v0 + 416);
      v27 = *(v0 + 424);
      v28 = *(v0 + 264);
      v29 = sub_22A4DD07C();
      __swift_project_value_buffer(v29, qword_27D880AD0);
      (*(v27 + 16))(v25, v28, v26);
      v30 = sub_22A4DD05C();
      v31 = sub_22A4DDCCC();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 440);
      v34 = *(v0 + 416);
      v35 = *(v0 + 424);
      if (v32)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v101 = v37;
        *v36 = 136315138;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
        v38 = sub_22A4DE5CC();
        v40 = v39;
        (*(v35 + 8))(v33, v34);
        v41 = sub_2295A3E30(v38, v40, &v101);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_229538000, v30, v31, "[HomeID: %s] Task was cancelled, exiting...", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AAD4E50](v37, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);
      }

      else
      {

        (*(v35 + 8))(v33, v34);
      }

      v80 = *(v0 + 488);
      v79 = *(v0 + 496);
      v82 = *(v0 + 472);
      v81 = *(v0 + 480);
      v84 = *(v0 + 456);
      v83 = *(v0 + 464);
      v86 = *(v0 + 440);
      v85 = *(v0 + 448);
      v90 = *(v0 + 432);
      v91 = *(v0 + 408);
      v92 = *(v0 + 384);
      v93 = *(v0 + 360);
      v94 = *(v0 + 352);
      v96 = *(v0 + 328);
      v98 = *(v0 + 304);
      v100 = *(v0 + 296);
      v87 = *(v0 + 272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
      sub_22A4DDA1C();

      v88 = *(v0 + 8);

      return v88();
    }

    else
    {
      *(v0 + 80) = sub_22A4DD39C();
      *(v0 + 88) = &off_283CE7340;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v60 = *(MEMORY[0x277CC5880] + 4);
      v61 = swift_task_alloc();
      *(v0 + 504) = v61;
      *v61 = v0;
      v61[1] = sub_229781D70;
      v62 = *(v0 + 264);

      return MEMORY[0x282116518](boxed_opaque_existential_1, v62);
    }
  }

  else
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 456);
    v43 = *(v0 + 416);
    v44 = *(v0 + 264);
    v45 = *(v0 + 424) + 16;
    v46 = sub_22A4DD07C();
    *(v0 + 576) = __swift_project_value_buffer(v46, qword_27D880AD0);
    *(v0 + 584) = v45 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v42, v44, v43);
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCCC();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 456);
    v52 = *(v0 + 416);
    v51 = *(v0 + 424);
    if (v49)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v101 = v54;
      *v53 = 136315394;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      v55 = sub_22A4DE5CC();
      v57 = v56;
      v23(v50, v52);
      v58 = sub_2295A3E30(v55, v57, &v101);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2048;
      *(v53 + 14) = 0x409C200000000000;
      _os_log_impl(&dword_229538000, v47, v48, "[HomeID: %s] Fetching guidance stream after %f seconds", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    else
    {

      v23(v50, v52);
    }

    v63 = *(v0 + 328);
    v64 = *(v0 + 304);
    v65 = *(v0 + 312);
    v67 = *(v0 + 288);
    v66 = *(v0 + 296);
    v68 = *(v0 + 280);
    v69 = sub_22A4DE88C();
    v71 = v70;
    sub_22A4DE6AC();
    *(v0 + 240) = v69;
    *(v0 + 248) = v71;
    *(v0 + 224) = 0;
    *(v0 + 216) = 0;
    *(v0 + 232) = 1;
    v72 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928]);
    sub_22A4DE68C();
    sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8]);
    sub_22A4DE2FC();
    v73 = *(v67 + 8);
    *(v0 + 592) = v73;
    *(v0 + 600) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73(v66, v68);
    v74 = *(MEMORY[0x277D85A58] + 4);
    v75 = swift_task_alloc();
    *(v0 + 608) = v75;
    *v75 = v0;
    v75[1] = sub_229784218;
    v76 = *(v0 + 328);
    v78 = *(v0 + 304);
    v77 = *(v0 + 312);

    return MEMORY[0x2822008C8](v78, v0 + 216, v77, v72);
  }
}

uint64_t sub_229785674()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22953EAE4(v0 + 64, &unk_27D880B20, &qword_22A582818);

  return swift_deallocClassInstance();
}

void sub_2297856E8()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 14);
  if (*&v1[16]._os_unfair_lock_opaque)
  {
    sub_22A4DDA7C();
  }

  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_22978574C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229569B30;

  return sub_229781670(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_2297858E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22A4DE2CC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2297859E8, 0, 0);
}

uint64_t sub_2297859E8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_22A4DE2EC();
  v7 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928]);
  sub_22A4DE68C();
  sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8]);
  sub_22A4DE2FC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_229785B78;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_229785B78()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229785D34, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_229785D34()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AAD4E50);
  }

  return result;
}

uint64_t sub_229785DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229785E38()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_229785F6C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v4 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v4);
  sub_22978620C(&v4[2], v1, a1);
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

id sub_229786030(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat];
  *v6 = 0;
  v6[4] = 0;
  v7 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage];
  *v7 = 0;
  *(v7 + 5) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 8) = 0u;
  v8 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver];
  *v8 = 0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 5) = 0;
  v9 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserverTask];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator] = 0;
  v10 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_dataSource];
  *v10 = a1;
  *(v10 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_22978620C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564F88(a1, &v19, &qword_27D880BE8, &qword_22A582848);
  if (v20)
  {
    return sub_229557188(&v19, a3);
  }

  v21 = a2;
  sub_22953EAE4(a1, &qword_27D880BE8, &qword_22A582848);
  sub_22953EAE4(&v19, &qword_27D880BE8, &qword_22A582848);
  sub_229785E38();
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_229538000, v12, v13, "Initializing DefaultHAPAccessoryClimateStorage", v14, 2u);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = v21;
  v16 = [v21 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_dataSource);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_22970BCE0(v15, a3);
  swift_unknownObjectRelease();
  return sub_22957F1C4(a3, a1);
}

void sub_229786530()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  sub_229690ADC();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v9 = v0;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v49 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v48 = v14;
    *v13 = 136315138;
    v51 = 91;
    v52 = 0xE100000000000000;
    v53 = v14;
    v15 = [v9 logIdentifier];
    v16 = v6;
    v17 = sub_22A4DD5EC();
    v50 = v2;
    v19 = v18;

    v20 = v17;
    v6 = v16;
    MEMORY[0x22AAD08C0](v20, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(v51, v52, &v53);
    v2 = v50;

    *(v13 + 4) = v21;
    _os_log_impl(&dword_229538000, v10, v11, "%s Configuring swift extensions", v13, 0xCu);
    v22 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    v23 = v13;
    v1 = v49;
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  v24 = *(v2 + 8);
  v24(v8, v1);
  v25 = [v9 home];
  if (v25)
  {
    v26 = v25;
    v27 = [v9 swiftExtensions];
    swift_unknownObjectRelease();
    v28 = [v26 notificationCenter];
    v29 = objc_allocWithZone(type metadata accessor for LocalPresenceBulletinNotificationCoordinator());
    v30 = v9;
    v31 = sub_22983C084(v30, v28);

    sub_22983A244();
    v32 = [v30 swiftExtensions];

    _s15SwiftExtensionsCMa_1();
    v33 = swift_dynamicCastClassUnconditional();
    v34 = *(v33 + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
    *(v33 + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator) = v31;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v35 = v9;
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136315138;
      v51 = 91;
      v52 = 0xE100000000000000;
      v53 = v39;
      v40 = [v35 logIdentifier];
      v50 = v2;
      v41 = v40;
      v42 = sub_22A4DD5EC();
      v49 = v6;
      v43 = v42;
      v45 = v44;

      MEMORY[0x22AAD08C0](v43, v45);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v46 = sub_2295A3E30(v51, v52, &v53);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_229538000, v36, v37, "%s Failed to configure swift extensions. Home is nil", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);

      v47 = v49;
    }

    else
    {

      v47 = v6;
    }

    v24(v47, v1);
  }
}

uint64_t sub_229786A30(void *a1)
{
  v3 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRelease();
    v6 = sub_22983A430(a1);

    result = v6;
    if (v6)
    {
      return result;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_229786B3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = v5[2];
  v20(&v37 - v18, a1, v4);
  v43 = v5;
  v21 = v5[7];
  v21(v19, 0, 1, v4);
  v40 = v2;
  v22 = [v2 swiftExtensions];
  v39 = _s15SwiftExtensionsCMa_1();
  v23 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
  if (v23)
  {
    v24 = v23;
    swift_unknownObjectRelease();
    v25 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID;
    swift_beginAccess();
    v20(v17, &v24[v25], v4);

    v26 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v26 = 1;
  }

  v21(v17, v26, 1, v4);
  v27 = *(v42 + 48);
  sub_229564F88(v19, v10, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229564F88(v17, &v10[v27], &unk_27D87D2A0, &unk_22A578BD0);
  v28 = v43;
  v29 = v43[6];
  if (v29(v10, 1, v4) == 1)
  {
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
    if (v29(&v10[v27], 1, v4) == 1)
    {
      sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_12:
      v34 = [v40 swiftExtensions];
      v31 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
      v35 = v31;
      swift_unknownObjectRelease();
      return v31;
    }

    goto LABEL_9;
  }

  v30 = v41;
  sub_229564F88(v10, v41, &unk_27D87D2A0, &unk_22A578BD0);
  if (v29(&v10[v27], 1, v4) == 1)
  {
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
    (v28[1])(v30, v4);
LABEL_9:
    sub_22953EAE4(v10, &qword_27D87DBA0, &qword_22A57A158);
    return 0;
  }

  v32 = v38;
  (v28[4])(v38, &v10[v27], v4);
  sub_2295B2378();
  LODWORD(v42) = sub_22A4DD58C();
  v33 = v28[1];
  v33(v32, v4);
  sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v19, &unk_27D87D2A0, &unk_22A578BD0);
  v33(v30, v4);
  sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
  if (v42)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_229787078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_229569C24(a1, v22 - v10);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_22A4DD8CC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22A4DD9CC();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

void sub_229787290(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8FC();
  }
}

void sub_229787320(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = [v1 featuresDataSource];
  if (v17)
  {
    v18 = [v17 isActivityHistory2025Enabled];
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_22A4DDBFC();
      v19 = a1;
      v20 = sub_22A4DD05C();
      v21 = sub_22A4DDD0C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v54 = v9;
        v52 = v23;
        v57 = v23;
        *v22 = 136315138;
        v24 = [v19 name];
        v53 = v10;
        v25 = v24;
        v26 = v8;
        v27 = sub_22A4DD5EC();
        v55 = ObjectType;
        v28 = v19;
        v30 = v29;

        v31 = v27;
        v8 = v26;
        v32 = sub_2295A3E30(v31, v30, &v57);
        v19 = v28;
        ObjectType = v55;

        *(v22 + 4) = v32;
        _os_log_impl(&dword_229538000, v20, v21, "[EnergyKit] Received '%s' message", v22, 0xCu);
        v33 = v52;
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x22AAD4E50](v33, -1, -1);
        MEMORY[0x22AAD4E50](v22, -1, -1);

        (*(v53 + 8))(v16, v54);
      }

      else
      {

        (*(v10 + 8))(v16, v9);
      }

      v46 = sub_22A4DD9DC();
      (*(*(v46 - 8) + 56))(v8, 1, 1, v46);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v19;
      v47[5] = v2;
      v47[6] = ObjectType;
      v48 = v19;
      v49 = v2;
      sub_22957F3C0(0, 0, v8, &unk_22A582A30, v47);
    }

    else
    {
      sub_22A4DDBFC();
      v34 = a1;
      v35 = sub_22A4DD05C();
      v36 = sub_22A4DDCCC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315138;
        v39 = [v34 name];
        v55 = v34;
        v40 = v10;
        v41 = v39;
        v42 = sub_22A4DD5EC();
        v44 = v43;

        v45 = sub_2295A3E30(v42, v44, &v57);

        *(v37 + 4) = v45;
        _os_log_impl(&dword_229538000, v35, v36, "[EnergyKit] Ignoring '%s' message", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x22AAD4E50](v38, -1, -1);
        MEMORY[0x22AAD4E50](v37, -1, -1);

        (*(v40 + 8))(v14, v9);
        v34 = v55;
      }

      else
      {

        (*(v10 + 8))(v14, v9);
      }

      type metadata accessor for HMError(0);
      v56 = 48;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_229793150(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v50 = v57;
      v51 = sub_22A4DB3DC();

      [v34 respondWithError_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22978788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_22A4DB7DC();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v13 = sub_22A4DDCBC();
  v6[22] = v13;
  v14 = *(v13 - 8);
  v6[23] = v14;
  v15 = *(v14 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229787A2C, 0, 0);
}

uint64_t sub_229787A2C()
{
  v1 = [v0[11] messagePayload];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_22A4DD49C();
  }

  else
  {
    sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  sub_22979275C();
  sub_229790B38();
  sub_22A4DD0CC();
  v0[26] = 0;
  v60 = v0;
  v3 = v0 + 8;
  v4 = v0[5];
  v5 = v0[6];
  v0[27] = v4;
  v0[28] = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v0[8] = MEMORY[0x277D84F90];
  if (v7 != 1)
  {
LABEL_32:
    v38 = v4;
    v39 = v0[12];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    v41 = swift_task_alloc();
    v42 = v6;
    v43 = v41;
    v0[29] = v41;
    *(v41 + 16) = v39;
    *(v41 + 24) = v38;
    *(v41 + 32) = v5;
    *(v41 + 40) = v42;
    *(v41 + 48) = v3;
    v44 = *(MEMORY[0x277D858E8] + 4);
    v45 = swift_task_alloc();
    v0[30] = v45;
    *v45 = v0;
    v45[1] = sub_229788214;
    v13 = &unk_22A582A40;
    v8 = v0 + 9;
    v9 = v40;
    v10 = v40;
    v11 = 0;
    v12 = 0;
    v14 = v43;
    v15 = v40;

    return MEMORY[0x282200600](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v8 = [v0[12] homes];
  if (v8)
  {
    v16 = v8;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v17 = sub_22A4DD83C();

    if (!(v17 >> 62))
    {
      goto LABEL_7;
    }

LABEL_30:
    v8 = sub_22A4DE0EC();
    v18 = v8;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v17 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_30;
  }

LABEL_7:
  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_8:
  v19 = 0;
  v56 = v17 & 0xC000000000000001;
  v47 = v17 + 32;
  v48 = v17 & 0xFFFFFFFFFFFFFF8;
  v53 = v4 + 56;
  v49 = v0[15];
  v59 = (v49 + 8);
  v52 = v0 + 8;
  v51 = v5;
  v50 = v6;
  v54 = v18;
  v55 = v17;
  while (v56)
  {
    v8 = MEMORY[0x22AAD13F0](v19, v17);
    v20 = __OFADD__(v19, 1);
    v21 = (v19 + 1);
    if (v20)
    {
      goto LABEL_35;
    }

LABEL_17:
    v57 = v21;
    v58 = v8;
    v22 = v0[17];
    v23 = [v8 spiClientIdentifier];
    sub_22A4DB79C();

    v24 = v0[14];
    if (*(v4 + 16))
    {
      v25 = *(v4 + 40);
      sub_229793150(&qword_281403880, MEMORY[0x277CC95F0]);
      v26 = sub_22A4DD4EC();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = v4;
        v30 = ~v27;
        v31 = *(v49 + 72);
        v32 = *(v49 + 16);
        while (1)
        {
          v33 = v60[16];
          v34 = v60[14];
          v32(v33, *(v29 + 48) + v28 * v31, v34);
          sub_229793150(&qword_281403870, MEMORY[0x277CC95F0]);
          v35 = sub_22A4DD58C();
          v36 = *v59;
          (*v59)(v33, v34);
          if (v35)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v4 = v29;
            v5 = v51;
            v3 = v52;
            v6 = v50;
            goto LABEL_24;
          }
        }

        v0 = v60;
        v36(v60[17], v60[14]);
        v37 = v58;
        v3 = v52;
        MEMORY[0x22AAD09E0]();
        if (*((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v4 = v29;
        v5 = v51;
        v6 = v50;
      }

      else
      {
        v36 = *v59;
LABEL_24:
        v0 = v60;
        v36(v60[17], v60[14]);
      }

      v18 = v54;
      v17 = v55;
    }

    else
    {
      (*v59)(v0[17], v0[14]);
    }

    v19 = v57;

    if (v57 == v18)
    {
      goto LABEL_31;
    }
  }

  if (v19 >= *(v48 + 16))
  {
    goto LABEL_36;
  }

  v8 = *(v47 + 8 * v19);
  v20 = __OFADD__(v19, 1);
  v21 = (v19 + 1);
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return MEMORY[0x282200600](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_229788214()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229788348, 0, 0);
}

uint64_t sub_229788348()
{
  v55 = v0;
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[13];
  v8 = v0[11];
  sub_229789BA8(v0[9], v2);

  v9 = v0[8];

  sub_22A4DDBFC();
  (*(v5 + 16))(v3, v2, v4);
  v10 = v8;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[18];
  v19 = v0[19];
  if (v13)
  {
    v20 = v0[11];
    v50 = v12;
    v21 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54[0] = v51;
    *v21 = 136315394;
    v22 = [v20 name];
    v52 = v18;
    v53 = v16;
    v23 = sub_22A4DD5EC();
    v25 = v24;

    v26 = sub_2295A3E30(v23, v25, v54);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_22A4DBA6C();
    v29 = v28;
    v30 = *(v14 + 8);
    v30(v15, v17);
    v31 = sub_2295A3E30(v27, v29, v54);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_229538000, v11, v50, "[EnergyKit] '%s' response: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v51, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    (*(v19 + 8))(v53, v52);
  }

  else
  {

    v30 = *(v14 + 8);
    v30(v15, v17);
    (*(v19 + 8))(v16, v18);
  }

  v32 = v0[25];
  v33 = v0[26];
  v34 = v0[22];
  sub_229793150(&qword_27D880C48, MEMORY[0x277CCE698]);
  sub_22A4DD0BC();
  if (v33)
  {
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A595720);
    swift_getErrorValue();
    v35 = v0[2];
    v36 = v0[3];
    sub_22A4DE5EC();
    return sub_22A4DE39C();
  }

  else
  {
    v38 = v0[25];
    v39 = v0[22];
    v40 = v0[23];
    v41 = v0[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v42 = sub_22A4DD47C();

    [v41 respondWithPayload_];

    v30(v38, v39);
    v44 = v0[24];
    v43 = v0[25];
    v46 = v0[20];
    v45 = v0[21];
    v48 = v0[16];
    v47 = v0[17];

    v49 = v0[1];

    return v49();
  }
}

void sub_22978880C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = [v1 featuresDataSource];
  if (v17)
  {
    v18 = [v17 isActivityHistory2025Enabled];
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_22A4DDBFC();
      v19 = a1;
      v20 = sub_22A4DD05C();
      v21 = sub_22A4DDD0C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v54 = v9;
        v52 = v23;
        v57 = v23;
        *v22 = 136315138;
        v24 = [v19 name];
        v53 = v10;
        v25 = v24;
        v26 = v8;
        v27 = sub_22A4DD5EC();
        v55 = ObjectType;
        v28 = v19;
        v30 = v29;

        v31 = v27;
        v8 = v26;
        v32 = sub_2295A3E30(v31, v30, &v57);
        v19 = v28;
        ObjectType = v55;

        *(v22 + 4) = v32;
        _os_log_impl(&dword_229538000, v20, v21, "[EnergyKit] Received '%s' message", v22, 0xCu);
        v33 = v52;
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x22AAD4E50](v33, -1, -1);
        MEMORY[0x22AAD4E50](v22, -1, -1);

        (*(v53 + 8))(v16, v54);
      }

      else
      {

        (*(v10 + 8))(v16, v9);
      }

      v46 = sub_22A4DD9DC();
      (*(*(v46 - 8) + 56))(v8, 1, 1, v46);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v2;
      v47[5] = v19;
      v47[6] = ObjectType;
      v48 = v19;
      v49 = v2;
      sub_22957F3C0(0, 0, v8, &unk_22A582960, v47);
    }

    else
    {
      sub_22A4DDBFC();
      v34 = a1;
      v35 = sub_22A4DD05C();
      v36 = sub_22A4DDCCC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315138;
        v39 = [v34 name];
        v55 = v34;
        v40 = v10;
        v41 = v39;
        v42 = sub_22A4DD5EC();
        v44 = v43;

        v45 = sub_2295A3E30(v42, v44, &v57);

        *(v37 + 4) = v45;
        _os_log_impl(&dword_229538000, v35, v36, "[EnergyKit] Ignoring '%s' message", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x22AAD4E50](v38, -1, -1);
        MEMORY[0x22AAD4E50](v37, -1, -1);

        (*(v40 + 8))(v14, v9);
        v34 = v55;
      }

      else
      {

        (*(v10 + 8))(v14, v9);
      }

      type metadata accessor for HMError(0);
      v56 = 48;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_229793150(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v50 = v57;
      v51 = sub_22A4DB3DC();

      [v34 respondWithError_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_229788D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v8 = sub_22A4DD07C();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = sub_22A4DDCBC();
  v6[11] = v11;
  v12 = *(v11 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[14] = v14;
  v15 = swift_task_alloc();
  v6[15] = v15;
  *v15 = v6;
  v15[1] = sub_229788EE0;

  return sub_2297893F4(v14, a4);
}

uint64_t sub_229788EE0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229788FDC, 0, 0);
}

uint64_t sub_229788FDC()
{
  v47 = v0;
  v1 = v0[14];
  v2 = v0[11];
  sub_229793150(&qword_27D880C48, MEMORY[0x277CCE698]);
  sub_22A4DD0BC();
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[6];
  v9 = v0[7];
  sub_22A4DDBFC();
  (*(v6 + 16))(v4, v3, v5);
  v10 = v8;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[8];
  v19 = v0[9];
  if (v13)
  {
    v20 = v0[6];
    v42 = v12;
    v21 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v21 = 136315394;
    v22 = [v20 name];
    v44 = v18;
    v45 = v16;
    v23 = sub_22A4DD5EC();
    v25 = v24;

    v26 = sub_2295A3E30(v23, v25, &v46);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_22A4DBA6C();
    v29 = v28;
    v30 = v17;
    v31 = *(v14 + 8);
    v31(v15, v30);
    v32 = sub_2295A3E30(v27, v29, &v46);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_229538000, v11, v42, "[EnergyKit] '%s' response: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v43, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    (*(v19 + 8))(v45, v44);
  }

  else
  {

    v33 = v17;
    v31 = *(v14 + 8);
    v31(v15, v33);
    (*(v19 + 8))(v16, v18);
  }

  v34 = v0[13];
  v35 = v0[14];
  v37 = v0[10];
  v36 = v0[11];
  v38 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v39 = sub_22A4DD47C();

  [v38 respondWithPayload_];

  v31(v35, v36);

  v40 = v0[1];

  return v40();
}

uint64_t sub_2297893F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22A4DD07C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297894B4, 0, 0);
}

uint64_t sub_2297894B4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C50, &qword_22A582978);
  *v4 = v0;
  v4[1] = sub_2297895BC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000021, 0x800000022A595740, sub_229792878, v2, v5);
}

uint64_t sub_2297895BC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297896D4, 0, 0);
}

uint64_t sub_2297896D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  if (v1 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v3 = v0[6];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    v5 = swift_task_alloc();
    v0[14] = v5;
    v5[2] = v1;
    v5[3] = v2;
    v5[4] = v3;
    v6 = *(MEMORY[0x277D858E8] + 4);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_229789970;

    return MEMORY[0x282200600](v0 + 4, v4, v4, 0, 0, &unk_22A582990, v5, v4);
  }

  if (v2 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v8 = v0[9];

  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "[EnergyKit] Current user is not an owner or shared admin of any home", v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];

  (*(v13 + 8))(v12, v14);
  v15 = sub_22956B768(MEMORY[0x277D84F90]);
  v16 = v0[9];
  sub_229789BA8(v15, v0[5]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_229789970()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_229789AC8, 0, 0);
}

uint64_t sub_229789AC8()
{
  v1 = v0[9];
  sub_229789BA8(v0[4], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_229789BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v75 = sub_22A4DDC7C();
  v3 = *(v75 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v75);
  v74 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = v69 - v7;
  v8 = sub_22A4DDC9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v95 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = v69 - v13;
  v14 = sub_22A4DB7DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C60, &qword_22A582998);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v87 = v69 - v26;
  v27 = *(a1 + 64);
  v89 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v88 = (v28 + 63) >> 6;
  v90 = (v15 + 32);
  v91 = (v15 + 16);
  v83 = v9 + 8;
  v84 = (v9 + 16);
  v79 = v15;
  v85 = v9;
  v86 = (v15 + 8);
  v82 = v9 + 32;
  v70 = (v3 + 16);
  v69[1] = v3 + 8;
  v71 = v3;
  v69[0] = v3 + 32;
  v81 = a1;

  v32 = 0;
  v76 = MEMORY[0x277D84F90];
  v77 = v19;
  v96 = MEMORY[0x277D84F90];
  v80 = v8;
  v78 = v14;
  v92 = v25;
  while (1)
  {
    v33 = v89;
    v34 = v88;
    if (!v30)
    {
      break;
    }

    while (1)
    {
      v35 = v32;
LABEL_14:
      v38 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v81;
      v42 = v78;
      v41 = v79;
      (*(v79 + 16))(v93, *(v81 + 48) + *(v79 + 72) * v39, v78);
      v43 = *(v40 + 56) + 16 * v39;
      v44 = *v43;
      v45 = *(v43 + 8);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
      v47 = &v92[*(v46 + 48)];
      v48 = *(v41 + 32);
      v14 = v42;
      v25 = v92;
      v48();
      *v47 = v44;
      v47[8] = v45;
      (*(*(v46 - 8) + 56))(v25, 0, 1, v46);
      sub_229792944(v44, v45);
      v8 = v80;
      v19 = v77;
LABEL_15:
      v49 = v25;
      v50 = v87;
      sub_229792950(v49, v87);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {

        return sub_22A4DDCAC();
      }

      v52 = v50 + *(v51 + 48);
      v53 = *v52;
      v54 = *(v52 + 8);
      (*v90)(v19, v50, v14);
      v55 = v96;
      if (v54 == 1)
      {
        break;
      }

      (*v91)(v93, v19, v14);
      v56 = v94;
      sub_22A4DDC8C();
      (*v84)(v95, v56, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_22958B968(0, v55[2] + 1, 1, v55);
      }

      v58 = v55[2];
      v57 = v55[3];
      v25 = v92;
      if (v58 >= v57 >> 1)
      {
        v55 = sub_22958B968(v57 > 1, v58 + 1, 1, v55);
      }

      v59 = v85;
      (*(v85 + 8))(v94, v8);
      (*v86)(v19, v14);
      v55[2] = v58 + 1;
      v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v96 = v55;
      result = (*(v59 + 32))(v55 + v60 + *(v59 + 72) * v58, v95, v8);
      v33 = v89;
      v34 = v88;
      if (!v30)
      {
        goto LABEL_6;
      }
    }

    (*v91)(v93, v19, v14);
    v62 = v53;
    v63 = v73;
    sub_22A4DDC6C();
    (*v70)(v74, v63, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_22958B940(0, v76[2] + 1, 1, v76);
    }

    v65 = v76[2];
    v64 = v76[3];
    v25 = v92;
    if (v65 >= v64 >> 1)
    {
      v76 = sub_22958B940(v64 > 1, v65 + 1, 1, v76);
    }

    sub_2297929C0(v53, 1);
    v66 = v71;
    v67 = v75;
    (*(v71 + 8))(v73, v75);
    (*v86)(v19, v14);
    v68 = v76;
    v76[2] = v65 + 1;
    result = (*(v66 + 32))(v68 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65, v74, v67);
  }

LABEL_6:
  if (v34 <= v32 + 1)
  {
    v36 = v32 + 1;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v35 >= v34)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
      (*(*(v61 - 8) + 56))(v25, 1, 1, v61);
      v30 = 0;
      v32 = v37;
      goto LABEL_15;
    }

    v30 = *(v33 + 8 * v35);
    ++v32;
    if (v30)
    {
      v32 = v35;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_22978A430(uint64_t a1, void *a2)
{
  v4 = sub_22A4DD26C();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  result = [a2 workQueue];
  if (result)
  {
    v18 = result;
    (*(v13 + 16))(v16, a1, v12);
    v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    (*(v13 + 32))(v20 + v19, v16, v12);
    aBlock[4] = sub_229792EE8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_49;
    v21 = _Block_copy(aBlock);
    v22 = a2;
    sub_22A4DD28C();
    v29 = MEMORY[0x277D84F90];
    sub_229793150(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_22953E5DC();
    v23 = v28;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v11, v7, v21);
    _Block_release(v21);

    (*(v27 + 8))(v7, v23);
    (*(v25 + 8))(v11, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22978A7C4(void *a1, NSObject *a2)
{
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v63 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v69 = v63 - v15;
  MEMORY[0x28223BE20](v14);
  v68 = v63 - v16;
  v82 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  v17 = [a1 homes];
  if (v17)
  {
    v18 = v17;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v19 = sub_22A4DD83C();

    if (v19 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v63[1] = a2;
      v22 = 0;
      v71 = v19 & 0xFFFFFFFFFFFFFF8;
      v76 = &v6[1];
      v77 = v19 & 0xC000000000000001;
      *&v20 = 138412290;
      v70 = v20;
      *&v20 = 138412546;
      v66 = v20;
      v65 = MEMORY[0x277D84F90];
      v64 = MEMORY[0x277D84F90];
      v73 = v13;
      v74 = v19;
      v75 = i;
      v67 = v10;
      while (1)
      {
        if (v77)
        {
          v24 = MEMORY[0x22AAD13F0](v22, v19);
        }

        else
        {
          if (v22 >= *(v71 + 16))
          {
            goto LABEL_40;
          }

          v24 = *(v19 + 8 * v22 + 32);
        }

        v6 = v24;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v25 = [v24 currentUser];
        if (!v25)
        {
          v23 = v22 + 1;
          sub_229562F68(0, &qword_281401BC0, off_2786661B8);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          a2 = v6;
          v6 = sub_22A4DD05C();
          v27 = sub_22A4DDCEC();

          if (os_log_type_enabled(v6, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v28 = v70;
            *(v28 + 4) = a2;
            *v29 = a2;
            v30 = a2;
            _os_log_impl(&dword_229538000, v6, v27, "[EnergyKit] Could not find current user for home %@", v28, 0xCu);
            sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
            v31 = v29;
            i = v75;
            MEMORY[0x22AAD4E50](v31, -1, -1);
            v32 = v28;
            v13 = v73;
            MEMORY[0x22AAD4E50](v32, -1, -1);
          }

          else
          {
            v30 = v6;
            v6 = a2;
          }

          v19 = v74;

          (*v76)(v10, v5);
          goto LABEL_8;
        }

        v2 = v25;
        v26 = [v25 privilege];
        v78 = v22 + 1;
        if (v26 <= 2)
        {
          if (v26 >= 3)
          {
            goto LABEL_45;
          }

LABEL_36:
          sub_229562F68(0, &qword_281401BC0, off_2786661B8);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          a2 = v6;
          v49 = v2;
          v6 = sub_22A4DD05C();
          v50 = sub_22A4DDCCC();

          if (os_log_type_enabled(v6, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v80 = v53;
            *v51 = v66;
            *(v51 + 4) = a2;
            *v52 = a2;
            *(v51 + 12) = 2080;
            v72 = a2;
            v79 = [v49 privilege];
            type metadata accessor for HMDUserPrivilege(0);
            v54 = sub_22A4DBA6C();
            a2 = v5;
            v56 = sub_2295A3E30(v54, v55, &v80);

            *(v51 + 14) = v56;
            v13 = v73;
            _os_log_impl(&dword_229538000, v6, v50, "[EnergyKit] Will not attempt to clear data for %@ because user does not have permission: %s", v51, 0x16u);
            sub_22953EAE4(v52, &qword_27D87D7D0, &unk_22A578D90);
            v57 = v52;
            v19 = v74;
            MEMORY[0x22AAD4E50](v57, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v53);
            v58 = v53;
            v10 = v67;
            MEMORY[0x22AAD4E50](v58, -1, -1);
            MEMORY[0x22AAD4E50](v51, -1, -1);
          }

          else
          {
          }

          (*v76)(v13, v5);
          i = v75;
          goto LABEL_7;
        }

        switch(v26)
        {
          case 3:
            sub_229562F68(0, &qword_281401BC0, off_2786661B8);
            sub_22A4DDC0C();
            sub_22A4DD08C();
            v42 = v6;
            v43 = sub_22A4DD05C();
            a2 = sub_22A4DDCCC();

            if (os_log_type_enabled(v43, a2))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              *v44 = v70;
              *(v44 + 4) = v42;
              *v45 = v42;
              v46 = v42;
              _os_log_impl(&dword_229538000, v43, a2, "[EnergyKit] Will clear data for owned home %@", v44, 0xCu);
              sub_22953EAE4(v45, &qword_27D87D7D0, &unk_22A578D90);
              v47 = v45;
              i = v75;
              MEMORY[0x22AAD4E50](v47, -1, -1);
              v48 = v44;
              v19 = v74;
              MEMORY[0x22AAD4E50](v48, -1, -1);
            }

            (*v76)(v68, v5);
            v6 = v42;
            MEMORY[0x22AAD09E0]();
            if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a2 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();

            v40 = v83;
            v41 = &v84;
            break;
          case 4:
            sub_229562F68(0, &qword_281401BC0, off_2786661B8);
            sub_22A4DDC0C();
            sub_22A4DD08C();
            v33 = v6;
            v34 = sub_22A4DD05C();
            a2 = sub_22A4DDCCC();

            if (os_log_type_enabled(v34, a2))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *v35 = v70;
              *(v35 + 4) = v33;
              *v36 = v33;
              v37 = v33;
              _os_log_impl(&dword_229538000, v34, a2, "[EnergyKit] Will clear data for %@", v35, 0xCu);
              sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
              v38 = v36;
              i = v75;
              MEMORY[0x22AAD4E50](v38, -1, -1);
              v39 = v35;
              v19 = v74;
              MEMORY[0x22AAD4E50](v39, -1, -1);
            }

            (*v76)(v69, v5);
            v6 = v33;
            MEMORY[0x22AAD09E0]();
            if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();

            v40 = v82;
            v41 = &v85;
            break;
          case 5:
            goto LABEL_36;
          default:
            goto LABEL_45;
        }

        *(v41 - 32) = v40;
LABEL_7:
        v23 = v78;
LABEL_8:
        ++v22;
        if (v23 == i)
        {

          v59 = v65;
          v60 = v64;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v59 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
LABEL_43:
    v80 = v60;
    v81 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20);
    return sub_22A4DD8FC();
  }

  else
  {
    __break(1u);
LABEL_45:
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_22A4DE1FC();

    v80 = 0xD000000000000015;
    v81 = 0x800000022A5957C0;
    v79 = [v2 privilege];
    type metadata accessor for HMDUserPrivilege(0);
    v62 = sub_22A4DBA6C();
    MEMORY[0x22AAD08C0](v62);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22978B188(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 168) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a5;
  v8 = sub_22A4DB7DC();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v11 = sub_22A4DD07C();
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978B2D0, 0, 0);
}

uint64_t sub_22978B2D0()
{
  v1 = *(v0 + 128);
  *(v0 + 136) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_229538000, v2, v3, "[EnergyKit] Clearing HomeKitEvents data (deletePrivateCloudZones = %{BOOL}d)", v5, 8u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  v9 = *(v8 + 8);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  v10 = *(MEMORY[0x277D17628] + 4);
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_22978B450;
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 168);

  return MEMORY[0x282171BE0](v13, v12, v14);
}

uint64_t sub_22978B450(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 160);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_22978B550, 0, 0);
}

char *sub_22978B550()
{
  v83 = v0;
  if (*(v0 + 168) == 1)
  {
    v1 = [*(v0 + 56) homes];
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 72);
      v4 = *(v0 + 40);
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v74 = sub_22A4DD83C();

      v80 = MEMORY[0x277D84F90];
      v81 = MEMORY[0x277D84F90];
      v5 = v4 + 56;
      v6 = -1;
      v7 = -1 << *(v4 + 32);
      if (-v7 < 64)
      {
        v6 = ~(-1 << -v7);
      }

      v8 = v6 & *(v4 + 56);
      v9 = (63 - v7) >> 6;
      v71 = v4;
      v72 = v3;
      v70 = (v3 + 8);

      v10 = 0;
      v11 = 0;
      v68 = v9;
      for (i = v5; v8; v10 = v78)
      {
LABEL_13:
        while (1)
        {
          v14 = *(v0 + 88);
          v15 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v16 = *(v72 + 16);
          v16(v14, *(v71 + 48) + *(v72 + 72) * (v15 | (v11 << 6)), *(v0 + 64));
          v17 = swift_task_alloc();
          *(v17 + 16) = v14;
          v18 = sub_22968FFF0(sub_229792E10, v17, v74);
          v78 = v10;

          if (v18)
          {
            break;
          }

          v19 = *(v0 + 120);
          v21 = *(v0 + 80);
          v20 = *(v0 + 88);
          v22 = *(v0 + 64);
          v23 = *(v0 + 136);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          v16(v21, v20, v22);
          v24 = sub_22A4DD05C();
          v73 = sub_22A4DDCEC();
          v25 = os_log_type_enabled(v24, v73);
          v27 = *(v0 + 144);
          v26 = *(v0 + 152);
          v28 = *(v0 + 96);
          v75 = v28;
          v77 = *(v0 + 120);
          v29 = *(v0 + 80);
          v30 = *(v0 + 64);
          if (v25)
          {
            v67 = *(v0 + 144);
            v31 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v82 = v66;
            *v31 = 136315138;
            sub_229793150(&qword_281403860, MEMORY[0x277CC95F0]);
            v32 = sub_22A4DE5CC();
            v34 = v33;
            log = v24;
            v12 = *v70;
            (*v70)(v29, v30);
            v35 = sub_2295A3E30(v32, v34, &v82);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_229538000, log, v73, "[EnergyKit] Somehow can't find home with identifier %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v66);
            MEMORY[0x22AAD4E50](v66, -1, -1);
            MEMORY[0x22AAD4E50](v31, -1, -1);

            v67(v77, v75);
          }

          else
          {

            v12 = *v70;
            (*v70)(v29, v30);
            v27(v77, v75);
          }

          v9 = v68;
          v12(*(v0 + 88), *(v0 + 64));
          v5 = i;
          v10 = v78;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

        v36 = (*v70)(*(v0 + 88), *(v0 + 64));
        MEMORY[0x22AAD09E0](v36);
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v80 = v81;
      }

      while (1)
      {
LABEL_9:
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v13 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v13);
        ++v11;
        if (v8)
        {
          v11 = v13;
          goto LABEL_13;
        }
      }

      v38 = *(v0 + 40);

      v9 = v80;
      if (v80 >> 62)
      {
        goto LABEL_40;
      }

      for (j = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_22A4DE0EC())
      {
        v40 = 0;
        v79 = v9 & 0xC000000000000001;
        v76 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v79)
          {
            v41 = MEMORY[0x22AAD13F0](v40, v9);
          }

          else
          {
            if (v40 >= *(v76 + 16))
            {
              goto LABEL_39;
            }

            v41 = *(v9 + 8 * v40 + 32);
          }

          v42 = v41;
          v43 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          v44 = *(v0 + 112);
          v45 = *(v0 + 136);
          sub_22A4DDC0C();
          sub_22A4DD08C();
          v46 = v42;
          v47 = sub_22A4DD05C();
          v48 = sub_22A4DDCCC();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v49 = 138412290;
            *(v49 + 4) = v46;
            *v50 = v46;
            v51 = v46;
            _os_log_impl(&dword_229538000, v47, v48, "[EnergyKit] Synchronizing cloud share manager for home %@", v49, 0xCu);
            sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v50, -1, -1);
            MEMORY[0x22AAD4E50](v49, -1, -1);
          }

          v53 = *(v0 + 144);
          v52 = *(v0 + 152);
          v54 = *(v0 + 112);
          v55 = *(v0 + 96);

          v53(v54, v55);
          result = [v46 swiftExtensions];
          if (!result)
          {
            __break(1u);
LABEL_43:
            __break(1u);
            return result;
          }

          v57 = result;
          swift_getObjectType();
          result = swift_conformsToProtocol2();
          v9 = v80;
          if (!result)
          {
            goto LABEL_43;
          }

          v58 = *&v57[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager];
          swift_unknownObjectRelease();
          [v58 synchronize];

          ++v40;
          if (v43 == j)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_33:
    }
  }

  v60 = *(v0 + 120);
  v59 = *(v0 + 128);
  v61 = *(v0 + 112);
  v63 = *(v0 + 80);
  v62 = *(v0 + 88);
  **(v0 + 32) = *(v0 + 24);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_22978BC20(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 spiClientIdentifier];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_22978BD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[25] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[30] = v8;
  v9 = *(v8 - 8);
  v7[31] = v9;
  v10 = *(v9 + 64) + 15;
  v7[32] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  v7[34] = v12;
  v13 = *(v12 - 8);
  v7[35] = v13;
  v14 = *(v13 + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v15 = sub_22A4DD07C();
  v7[41] = v15;
  v16 = *(v15 - 8);
  v7[42] = v16;
  v17 = *(v16 + 64) + 15;
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978BF20, 0, 0);
}

uint64_t sub_22978BF20()
{
  v1 = *(v0 + 344);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[EnergyKit] Posting current account message to clear data on other devices", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 328);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v10 = *(v0 + 264);

  (*(v6 + 8))(v5, v7);
  v11 = *MEMORY[0x277CD23C8];
  sub_22A4DD5EC();
  sub_22A4DB75C();

  v12 = (*(v9 + 48))(v10, 1, v8);
  if (v12 == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v16 = *(v0 + 264);
  v17 = *(v15 + 32);
  v18 = *(v0 + 208);
  *(v0 + 352) = v17;
  *(v0 + 360) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v33 = *(v0 + 216);
  v17(v13, v16, v14);
  v19 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
  v20 = sub_22A4DB77C();
  v21 = [v19 initWithTarget:v20 handle:v18 multicast:1];
  *(v0 + 368) = v21;

  v22 = *(v15 + 8);
  *(v0 + 376) = v22;
  *(v0 + 384) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v13, v14);
  *(v0 + 168) = v33;
  *(v0 + 184) = 0;
  sub_229792708();
  sub_229790B38();
  sub_22A4DD0BC();
  v23 = *(v0 + 232);
  v24 = objc_opt_self();
  v25 = sub_22A4DD5AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v26 = sub_22A4DD47C();
  v34 = [v24 secureMessageWithName:v25 qualityOfService:25 destination:v21 messagePayload:v26];
  *(v0 + 392) = v34;

  v12 = [v23 messageDispatcher];
  *(v0 + 400) = v12;
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200938](v12);
  }

  v27 = v12;
  v29 = *(v0 + 248);
  v28 = *(v0 + 256);
  v30 = *(v0 + 240);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22978C444;
  swift_continuation_init();
  *(v0 + 136) = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v29 + 32))(boxed_opaque_existential_1, v28, v30);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229787290;
  *(v0 + 104) = &block_descriptor_37_0;
  [v27 sendMessage:v34 completionHandler:v0 + 80];
  (*(v29 + 8))(boxed_opaque_existential_1, v30);
  v12 = (v0 + 16);

  return MEMORY[0x282200938](v12);
}

uint64_t sub_22978C444()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_22978CBD4;
  }

  else
  {
    v3 = sub_22978C554;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22978C554()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  v3 = *(*(v0 + 224) + 16);
  v4 = v2 + v3;
  if (!__OFADD__(v2, v3))
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C78, &qword_22A5829F8);
    v8 = sub_229793150(&qword_281403880, MEMORY[0x277CC95F0]);
    v9 = MEMORY[0x22AAD0690](v4, v5, v7, v8);
    v10 = v1 + 56;
    v11 = -1;
    v12 = -1 << *(v1 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v1 + 56);
    v14 = (63 - v12) >> 6;
    v107 = v6;
    v99 = v1;

    v15 = 0;
    v95 = v14;
    v97 = v1 + 56;
    while (v13)
    {
      v19 = v15;
LABEL_12:
      v20 = *(v0 + 352);
      v21 = *(v0 + 360);
      v22 = *(v0 + 312);
      v23 = *(v0 + 296);
      v24 = *(v0 + 272);
      v25 = *(v0 + 408) != 0;
      v101 = *(v107 + 72);
      v104 = *(v107 + 16);
      v104(v22, *(v99 + 48) + v101 * (__clz(__rbit64(v13)) | (v19 << 6)), v24);
      v20(v23, v22, v24);
      sub_229792944(0, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = sub_2296DBEC0(v23);
      v29 = v9[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_48;
      }

      v33 = v28;
      if (v9[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v27;
          sub_229899690();
          v27 = v46;
        }
      }

      else
      {
        v34 = *(v0 + 296);
        sub_229895CB4(v32, isUniquelyReferenced_nonNull_native);
        v27 = sub_2296DBEC0(v34);
        if ((v33 & 1) != (v35 & 1))
        {
LABEL_43:
          v94 = *(v0 + 272);

          sub_22A4DE67C();
          return;
        }
      }

      v13 &= v13 - 1;
      v36 = *(v0 + 408);
      v37 = *(v0 + 376);
      v38 = *(v0 + 384);
      v39 = *(v0 + 296);
      v40 = *(v0 + 272);
      if (v33)
      {
        v16 = v9[7] + 16 * v27;
        v17 = *v16;
        v18 = *(v16 + 8);
        *v16 = 0;
        *(v16 + 8) = v36 != 0;
        sub_2297929C0(v17, v18);
        v37(v39, v40);
      }

      else
      {
        v41 = v36 != 0;
        v9[(v27 >> 6) + 8] |= 1 << v27;
        v42 = v27;
        v104(v9[6] + v27 * v101, v39, v40);
        v43 = v9[7] + 16 * v42;
        *v43 = 0;
        *(v43 + 8) = v41;
        v37(v39, v40);
        v44 = v9[2];
        v31 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v31)
        {
          goto LABEL_50;
        }

        v9[2] = v45;
      }

      v15 = v19;
      v14 = v95;
      v10 = v97;
    }

    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v19 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v19);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v47 = *(v0 + 216);
    v48 = *(v0 + 224);

    v49 = v48 + 56;
    v50 = -1;
    v51 = -1 << *(v48 + 32);
    if (-v51 < 64)
    {
      v50 = ~(-1 << -v51);
    }

    v52 = v50 & *(v48 + 56);
    v53 = (63 - v51) >> 6;
    v100 = v48;

    v54 = 0;
    v96 = v53;
    v98 = v48 + 56;
    while (v52)
    {
      v58 = v54;
LABEL_31:
      v59 = *(v0 + 352);
      v60 = *(v0 + 360);
      v61 = *(v0 + 304);
      v62 = *(v0 + 288);
      v63 = *(v0 + 272);
      v64 = *(v0 + 408) != 0;
      v102 = *(v107 + 72);
      v105 = *(v107 + 16);
      v105(v61, *(v100 + 48) + v102 * (__clz(__rbit64(v52)) | (v58 << 6)), v63);
      v59(v62, v61, v63);
      sub_229792944(0, v64);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v66 = sub_2296DBEC0(v62);
      v68 = v9[2];
      v69 = (v67 & 1) == 0;
      v31 = __OFADD__(v68, v69);
      v70 = v68 + v69;
      if (v31)
      {
        goto LABEL_49;
      }

      v71 = v67;
      if (v9[3] >= v70)
      {
        if ((v65 & 1) == 0)
        {
          v84 = v66;
          sub_229899690();
          v66 = v84;
        }
      }

      else
      {
        v72 = *(v0 + 288);
        sub_229895CB4(v70, v65);
        v66 = sub_2296DBEC0(v72);
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_43;
        }
      }

      v52 &= v52 - 1;
      v74 = *(v0 + 408);
      v75 = *(v0 + 376);
      v76 = *(v0 + 384);
      v77 = *(v0 + 288);
      v78 = *(v0 + 272);
      if (v71)
      {
        v55 = v9[7] + 16 * v66;
        v56 = *v55;
        v57 = *(v55 + 8);
        *v55 = 0;
        *(v55 + 8) = v74 != 0;
        sub_2297929C0(v56, v57);
        v75(v77, v78);
      }

      else
      {
        v79 = v74 != 0;
        v9[(v66 >> 6) + 8] |= 1 << v66;
        v80 = v66;
        v105(v9[6] + v66 * v102, v77, v78);
        v81 = v9[7] + 16 * v80;
        *v81 = 0;
        *(v81 + 8) = v79;
        v75(v77, v78);
        v82 = v9[2];
        v31 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v31)
        {
          goto LABEL_51;
        }

        v9[2] = v83;
      }

      v54 = v58;
      v53 = v96;
      v49 = v98;
    }

    while (1)
    {
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v58 >= v53)
      {
        v85 = *(v0 + 392);
        v86 = *(v0 + 368);
        v87 = *(v0 + 344);
        v89 = *(v0 + 312);
        v88 = *(v0 + 320);
        v90 = *(v0 + 304);
        v103 = *(v0 + 296);
        v106 = *(v0 + 288);
        v108 = *(v0 + 264);
        v109 = *(v0 + 256);
        v91 = *(v0 + 224);
        v92 = *(v0 + 200);
        sub_2297929C0(0, *(v0 + 408) != 0);

        *v92 = v9;

        v93 = *(v0 + 8);

        v93();
        return;
      }

      v52 = *(v49 + 8 * v58);
      ++v54;
      if (v52)
      {
        goto LABEL_31;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
}

void sub_22978CBD4()
{
  v1 = v0[50];
  v2 = v0[51];
  swift_willThrow();

  v3 = v0[27];
  v4 = *(v3 + 16);
  v5 = *(v0[28] + 16);
  v6 = v4 + v5;
  if (!__OFADD__(v4, v5))
  {
    v8 = v0[34];
    v7 = v0[35];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C78, &qword_22A5829F8);
    v10 = sub_229793150(&qword_281403880, MEMORY[0x277CC95F0]);
    v11 = MEMORY[0x22AAD0690](v6, v8, v9, v10);
    v12 = v3 + 56;
    v13 = -1;
    v14 = -1 << *(v3 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v3 + 56);
    v16 = (63 - v14) >> 6;
    v110 = v7;
    v103 = v3;

    v17 = 0;
    v112 = v2;
    v99 = v16;
    v101 = v3 + 56;
    while (v15)
    {
      v21 = v17;
LABEL_12:
      v23 = v0[44];
      v22 = v0[45];
      v24 = v0[39];
      v25 = v0[37];
      v26 = v0[34];
      v27 = v0[51] != 0;
      v105 = *(v110 + 72);
      v107 = *(v110 + 16);
      v107(v24, *(v103 + 48) + v105 * (__clz(__rbit64(v15)) | (v21 << 6)), v26);
      v23(v25, v24, v26);
      v2 = v112;
      sub_229792944(v112, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_2296DBEC0(v25);
      v31 = v11[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_48;
      }

      v35 = v30;
      if (v11[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = v29;
          sub_229899690();
          v29 = v47;
        }
      }

      else
      {
        v36 = v0[37];
        sub_229895CB4(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_2296DBEC0(v36);
        if ((v35 & 1) != (v37 & 1))
        {
LABEL_43:
          v95 = v0[34];

          sub_22A4DE67C();
          return;
        }
      }

      v15 &= v15 - 1;
      v38 = v0[51];
      v39 = v0[47];
      v40 = v0[37];
      v41 = v0[34];
      if (v35)
      {
        v18 = v11[7] + 16 * v29;
        v19 = *v18;
        v20 = *(v18 + 8);
        *v18 = v112;
        *(v18 + 8) = v38 != 0;
        sub_2297929C0(v19, v20);
        v39(v40, v41);
      }

      else
      {
        v96 = v0[47];
        v97 = v0[48];
        v42 = v38 != 0;
        v11[(v29 >> 6) + 8] |= 1 << v29;
        v43 = v29;
        v107(v11[6] + v29 * v105, v40, v41);
        v44 = v11[7] + 16 * v43;
        *v44 = v112;
        *(v44 + 8) = v42;
        v96(v40, v41);
        v45 = v11[2];
        v33 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v33)
        {
          goto LABEL_50;
        }

        v11[2] = v46;
      }

      v17 = v21;
      v16 = v99;
      v12 = v101;
    }

    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v21);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    v48 = v0[27];
    v49 = v0[28];

    v50 = v49 + 56;
    v51 = -1;
    v52 = -1 << *(v49 + 32);
    if (-v52 < 64)
    {
      v51 = ~(-1 << -v52);
    }

    v53 = v51 & *(v49 + 56);
    v54 = (63 - v52) >> 6;
    v104 = v49;

    v55 = 0;
    v100 = v54;
    v102 = v49 + 56;
    while (v53)
    {
      v59 = v55;
LABEL_31:
      v61 = v0[44];
      v60 = v0[45];
      v62 = v0[38];
      v63 = v0[36];
      v64 = v0[34];
      v65 = v0[51] != 0;
      v106 = *(v110 + 72);
      v108 = *(v110 + 16);
      v108(v62, *(v104 + 48) + v106 * (__clz(__rbit64(v53)) | (v59 << 6)), v64);
      v61(v63, v62, v64);
      v2 = v112;
      sub_229792944(v112, v65);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v67 = sub_2296DBEC0(v63);
      v69 = v11[2];
      v70 = (v68 & 1) == 0;
      v33 = __OFADD__(v69, v70);
      v71 = v69 + v70;
      if (v33)
      {
        goto LABEL_49;
      }

      v72 = v68;
      if (v11[3] >= v71)
      {
        if ((v66 & 1) == 0)
        {
          v84 = v67;
          sub_229899690();
          v67 = v84;
        }
      }

      else
      {
        v73 = v0[36];
        sub_229895CB4(v71, v66);
        v67 = sub_2296DBEC0(v73);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_43;
        }
      }

      v53 &= v53 - 1;
      v75 = v0[51];
      v76 = v0[47];
      v77 = v0[36];
      v78 = v0[34];
      if (v72)
      {
        v56 = v11[7] + 16 * v67;
        v57 = *v56;
        v58 = *(v56 + 8);
        *v56 = v112;
        *(v56 + 8) = v75 != 0;
        sub_2297929C0(v57, v58);
        v76(v77, v78);
      }

      else
      {
        v98 = v0[48];
        v79 = v75 != 0;
        v11[(v67 >> 6) + 8] |= 1 << v67;
        v80 = v67;
        v108(v11[6] + v67 * v106, v77, v78);
        v81 = v11[7] + 16 * v80;
        *v81 = v112;
        *(v81 + 8) = v79;
        v76(v77, v78);
        v82 = v11[2];
        v33 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v33)
        {
          goto LABEL_51;
        }

        v11[2] = v83;
      }

      v55 = v59;
      v54 = v100;
      v50 = v102;
    }

    while (1)
    {
      v59 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v59 >= v54)
      {
        v85 = v0[49];
        v86 = v0[46];
        v87 = v0[43];
        v89 = v0[39];
        v88 = v0[40];
        v90 = v0[38];
        v109 = v0[37];
        v111 = v0[36];
        v113 = v0[33];
        v114 = v0[32];
        v91 = v2;
        v92 = v0[28];
        v93 = v0[25];
        sub_2297929C0(v91, v0[51] != 0);

        *v93 = v11;

        v94 = v0[1];

        v94();
        return;
      }

      v53 = *(v50 + 8 * v59);
      ++v55;
      if (v53)
      {
        goto LABEL_31;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22978D27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_22978D2A0, 0, 0);
}

uint64_t sub_22978D2A0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C78, &qword_22A5829F8);
  *v3 = v0;
  v3[1] = sub_22978D3A8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000045, 0x800000022A595770, sub_229792CF0, v1, v4);
}

uint64_t sub_22978D3A8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22978D4C0, 0, 0);
}

uint64_t sub_22978D4C0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C80, &unk_22A582A00);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22A576180;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  v11 = [v1 spiClientIdentifier];
  sub_22A4DB79C();

  *v10 = v3;
  *(v10 + 8) = v4;
  v12 = sub_22956B768(v8);
  swift_setDeallocating();
  sub_22953EAE4(v9, &qword_27D87CDD8, &qword_22A577C58);
  swift_deallocClassInstance();
  *v2 = v12;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22978D65C(uint64_t a1, void *a2, void *a3)
{
  v26 = a3;
  v5 = sub_22A4DD26C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD29C();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v27 = [a2 workQueue];
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_229792CF8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_31;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = v20;
  sub_22A4DD28C();
  v31 = MEMORY[0x277D84F90];
  sub_229793150(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  sub_22A4DE03C();
  v24 = v27;
  MEMORY[0x22AAD0F80](0, v12, v8, v21);
  _Block_release(v21);

  (*(v30 + 8))(v8, v5);
  (*(v28 + 8))(v12, v29);
}

void sub_22978D9F4(void *a1, void *a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  v63 = *(v4 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v55 - v15;
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v21 = a1;
  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCCC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v56 = v16;
    v25 = v24;
    v26 = swift_slowAlloc();
    v57 = v4;
    v27 = v26;
    *v25 = 138412290;
    *(v25 + 4) = v21;
    *v26 = v21;
    v28 = v21;
    _os_log_impl(&dword_229538000, v22, v23, "[EnergyKit] Posting account message to owner of shared home %@ to clear data", v25, 0xCu);
    sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
    v29 = v27;
    v4 = v57;
    MEMORY[0x22AAD4E50](v29, -1, -1);
    v30 = v25;
    v16 = v56;
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  v31 = *MEMORY[0x277CD23C8];
  sub_22A4DD5EC();
  sub_22A4DB75C();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __break(1u);
    aBlock = 0;
    v66 = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A595720);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DE39C();
    __break(1u);
  }

  else
  {
    v32 = v58;
    (*(v11 + 32))(v58, v9, v10);
    v33 = [v21 uuid];
    v34 = v59;
    sub_22A4DB79C();

    v35 = objc_allocWithZone(HMDRemoteHomeMessageDestination);
    v36 = sub_22A4DB77C();
    v37 = sub_22A4DB77C();
    v38 = [v35 initWithTarget:v36 homeUUID:v37];

    v40 = *(v11 + 8);
    v39 = v11 + 8;
    v40(v34, v10);
    v40(v32, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
    v41 = *(v39 + 64);
    v42 = (*(v39 + 72) + 32) & ~*(v39 + 72);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22A576180;
    v44 = [v21 spiClientIdentifier];
    sub_22A4DB79C();

    v45 = sub_2296727F4(v43);
    swift_setDeallocating();
    v40((v43 + v42), v10);
    swift_deallocClassInstance();
    aBlock = v45;
    v66 = MEMORY[0x277D84FA0];
    LOWORD(v67) = 257;
    sub_229792708();
    sub_229790B38();
    sub_22A4DD0BC();

    v46 = objc_opt_self();
    v47 = sub_22A4DD5AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v48 = sub_22A4DD47C();

    v49 = [v46 secureMessageWithName:v47 qualityOfService:25 destination:v38 messagePayload:v48];

    v50 = v63;
    v51 = v61;
    (*(v63 + 16))(v61, v62, v4);
    v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v53 = swift_allocObject();
    (*(v50 + 32))(v53 + v52, v51, v4);
    v69 = sub_229792D68;
    v70 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_2295AAF60;
    v68 = &block_descriptor_34;
    v54 = _Block_copy(&aBlock);

    [v64 sendMessage:v49 completionHandler:v54];
    _Block_release(v54);
  }
}

uint64_t sub_22978E17C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
    sub_22A4DD8FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10);
  return sub_22A4DD8FC();
}

uint64_t sub_22978E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[28] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[33] = v8;
  v9 = *(v8 - 8);
  v7[34] = v9;
  v10 = *(v9 + 64) + 15;
  v7[35] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[36] = v11;
  v12 = *(v11 - 8);
  v7[37] = v12;
  v13 = *(v12 + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v7[40] = swift_task_alloc();
  v15 = sub_22A4DB7DC();
  v7[41] = v15;
  v16 = *(v15 - 8);
  v7[42] = v16;
  v17 = *(v16 + 64) + 15;
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978E3D0, 0, 0);
}

uint64_t sub_22978E3D0()
{
  v56 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *MEMORY[0x277CD23C8];
  sub_22A4DD5EC();
  sub_22A4DB75C();

  v5 = (*(v2 + 48))(v3, 1, v1);
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 328);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    (*(v7 + 32))(v6, *(v0 + 320), v8);
    v11 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
    v12 = sub_22A4DB77C();
    v13 = [v11 initWithTarget:v12 handle:v9 multicast:1];
    *(v0 + 352) = v13;

    v14 = *(v7 + 8);
    v14(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
    v15 = *(v7 + 72);
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22A576180;
    v18 = *(v7 + 16);
    *(v0 + 360) = v18;
    *(v0 + 368) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v17 + v16, v10, v8);
    v19 = sub_2296727F4(v17);
    swift_setDeallocating();
    v14(v17 + v16, v8);
    swift_deallocClassInstance();
    *(v0 + 168) = MEMORY[0x277D84FA0];
    *(v0 + 176) = v19;
    *(v0 + 184) = 257;
    sub_229792708();
    sub_229790B38();
    sub_22A4DD0BC();
    v20 = *(v0 + 312);
    v21 = *(v0 + 248);
    v22 = *(v0 + 232);
    v23 = objc_opt_self();
    v24 = sub_22A4DD5AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v25 = sub_22A4DD47C();

    v54 = [v23 secureMessageWithName:v24 qualityOfService:25 destination:v13 messagePayload:v25];
    *(v0 + 376) = v54;

    *(v0 + 384) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v26 = v22;
    v27 = v21;

    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCCC();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 312);
    v33 = *(v0 + 288);
    v32 = *(v0 + 296);
    if (v30)
    {
      v34 = *(v0 + 248);
      v53 = *(v0 + 312);
      v35 = *(v0 + 232);
      v52 = *(v0 + 288);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v36 = 138740483;
      *(v36 + 4) = v35;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v34;
      *v37 = v35;
      v37[1] = v34;
      *(v36 + 22) = 2080;
      *(v0 + 192) = MEMORY[0x277D84FA0];
      *(v0 + 200) = v19;
      *(v0 + 208) = 257;
      v39 = v35;
      v40 = v34;
      v41 = sub_22A4DBA6C();
      v43 = v42;

      v44 = sub_2295A3E30(v41, v43, &v55);

      *(v36 + 24) = v44;
      _os_log_impl(&dword_229538000, v28, v29, "[EnergyKit] Posting account message to shared admin '%{sensitive}@' of shared home %@ to clear data: %s", v36, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);

      v45 = *(v32 + 8);
      v45(v53, v52);
    }

    else
    {

      v45 = *(v32 + 8);
      v45(v31, v33);
    }

    *(v0 + 392) = v45;
    v47 = *(v0 + 272);
    v46 = *(v0 + 280);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_22978EAA4;
    swift_continuation_init();
    *(v0 + 136) = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v47 + 32))(boxed_opaque_existential_1, v46, v48);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_229787290;
    *(v0 + 104) = &block_descriptor_78;
    [v49 sendMessage:v54 completionHandler:v0 + 80];
    (*(v47 + 8))(boxed_opaque_existential_1, v48);
    v5 = v0 + 16;
  }

  return MEMORY[0x282200938](v5);
}

uint64_t sub_22978EAA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_22978ED94;
  }

  else
  {
    v3 = sub_22978EBB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22978EBB4()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[41];
  v4 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C80, &unk_22A582A00);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22A576180;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  v2(v9, v4, v3);
  v11 = v0[47];
  v12 = v0[43];
  v13 = v0[44];
  v14 = v0[39];
  v20 = v0[38];
  v21 = v0[35];
  v15 = v0[28];
  v16 = v0[50] != 0;
  *v10 = 0;
  *(v10 + 8) = v16;
  v17 = sub_22956B768(v8);
  swift_setDeallocating();
  sub_22953EAE4(v9, &qword_27D87CDD8, &qword_22A577C58);
  swift_deallocClassInstance();

  *v15 = v17;

  v18 = v0[1];

  return v18();
}

uint64_t sub_22978ED94()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[38];
  swift_willThrow();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[50];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v5, v6, "[EnergyKit] Failed to send message: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v12 = v0[49];
  v38 = v0[50];
  v14 = v0[45];
  v13 = v0[46];
  v15 = v0[41];
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[36];
  v19 = v0[30];

  v12(v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C80, &unk_22A582A00);
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58) - 8);
  v21 = *(*v20 + 72);
  v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22A576180;
  v24 = v23 + v22;
  v25 = v23 + v22 + v20[14];
  v14(v24, v19, v15);
  v26 = v0[47];
  v27 = v0[43];
  v28 = v0[44];
  v30 = v0[39];
  v29 = v0[40];
  v31 = v0[38];
  v37 = v0[35];
  v32 = v0[28];
  v33 = v0[50] != 0;
  *v25 = v38;
  *(v25 + 8) = v33;
  v34 = sub_22956B768(v23);
  swift_setDeallocating();
  sub_22953EAE4(v24, &qword_27D87CDD8, &qword_22A577C58);
  swift_deallocClassInstance();

  *v32 = v34;

  v35 = v0[1];

  return v35();
}

uint64_t sub_22978F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v9 = *(v8 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22978F228, 0, 0);
}

void sub_22978F228()
{
  v111 = v0;
  v3 = *(v0 + 192);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DDC0C();
  sub_22A4DD08C();

  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 192);
  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  if (v8)
  {
    v12 = *(v0 + 88);
    v107 = *(v0 + 96);
    v108 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v110 = v1;
    *v13 = 136315394;
    v14 = sub_229562F68(0, &qword_2814017B0, off_278666198);
    v15 = MEMORY[0x22AAD0A20](v12, v14);
    v17 = sub_2295A3E30(v15, v16, &v110);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = MEMORY[0x22AAD0A20](v107, v14);
    v2 = sub_2295A3E30(v18, v19, &v110);

    *(v13 + 14) = v2;
    _os_log_impl(&dword_229538000, v6, v7, "[EnergyKit] Current user is the owner of %s, shared admin of %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v1, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v20 = *(v10 + 8);
    v21 = v108;
  }

  else
  {

    v20 = *(v10 + 8);
    v21 = v9;
  }

  v104 = v20;
  v20(v21, v11);
  v22 = *(v0 + 88);
  if (v22 >> 62)
  {
    if (v22 < 0)
    {
      v65 = *(v0 + 88);
    }

    v23 = sub_22A4DE0EC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  v101 = v23;
  if (v23)
  {
    v110 = MEMORY[0x277D84F90];
    sub_22958345C(0, v23 & ~(v23 >> 63), 0);
    if (v101 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v25 = 0;
    v2 = *(v0 + 144);
    v24 = v110;
    v26 = v22 & 0xC000000000000001;
    v27 = *(v0 + 88) + 32;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x22AAD13F0](v25, *(v0 + 88));
      }

      else
      {
        v28 = *(v27 + 8 * v25);
      }

      v29 = v28;
      v30 = *(v0 + 160);
      v31 = [v28 spiClientIdentifier];
      sub_22A4DB79C();

      v110 = v24;
      v7 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v7 >= v32 >> 1)
      {
        sub_22958345C(v32 > 1, v7 + 1, 1);
        v24 = v110;
      }

      v33 = *(v0 + 160);
      v34 = *(v0 + 136);
      ++v25;
      *(v24 + 16) = v7 + 1;
      (*(v2 + 32))(v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v33, v34);
    }

    while (v101 != v25);
  }

  v1 = *(v0 + 96);
  v98 = sub_2296727F4(v24);

  v107 = v1 >> 62;
  if (v1 >> 62)
  {
    v66 = *(v0 + 96);
    if (v1 < 0)
    {
      v67 = *(v0 + 96);
    }

    v35 = sub_22A4DE0EC();
  }

  else
  {
    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = MEMORY[0x277D84F90];
  v100 = v35;
  if (v35)
  {
    v110 = MEMORY[0x277D84F90];
    sub_22958345C(0, v35 & ~(v35 >> 63), 0);
    if ((v35 & 0x8000000000000000) == 0)
    {
      v37 = 0;
      v38 = *(v0 + 144);
      v36 = v110;
      v39 = *(v0 + 96) + 32;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x22AAD13F0](v37, *(v0 + 96));
        }

        else
        {
          v40 = *(v39 + 8 * v37);
        }

        v41 = v40;
        v42 = *(v0 + 152);
        v43 = [v40 spiClientIdentifier];
        sub_22A4DB79C();

        v110 = v36;
        v45 = *(v36 + 16);
        v44 = *(v36 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_22958345C(v44 > 1, v45 + 1, 1);
          v36 = v110;
        }

        v46 = *(v0 + 152);
        v47 = *(v0 + 136);
        ++v37;
        *(v36 + 16) = v45 + 1;
        (*(v38 + 32))(v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, v46, v47);
      }

      while (v100 != v37);
      goto LABEL_26;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_26:
  v48 = *(v0 + 128);
  v49 = *(v0 + 104);
  v50 = *(v0 + 80);
  v51 = sub_2296727F4(v36);

  v52 = sub_22A4DD9DC();
  v2 = *(v52 - 8);
  v108 = v52;
  v106 = *(v2 + 56);
  v106(v48, 1, 1);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = 1;
  *(v53 + 40) = v98;
  *(v53 + 48) = v51;
  *(v53 + 56) = v49;

  v97 = v51;

  v54 = v49;
  sub_229787078(v48, &unk_22A5829B0, v53);
  sub_22953EAE4(v48, &unk_27D87D8F0, &qword_22A578D70);
  v55 = [v54 appleAccountManager];
  if (!v55)
  {
LABEL_78:
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = [v55 account];

  if (!v57)
  {
LABEL_44:
    v68 = *(v0 + 184);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v69 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();
    v70 = os_log_type_enabled(v69, v7);
    v72 = *(v0 + 176);
    v71 = *(v0 + 184);
    v73 = *(v0 + 168);
    if (v70)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_229538000, v69, v7, "[EnergyKit] Cannot signal other devices to clear data because there is no current account handle", v74, 2u);
      MEMORY[0x22AAD4E50](v74, -1, -1);
    }

    v104(v71, v73);
    goto LABEL_47;
  }

  v58 = [v57 handles];

  sub_229562F68(0, &qword_27D880818, off_278666008);
  v7 = sub_22A4DD83C();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (!sub_22A4DE0EC())
  {
LABEL_43:

    goto LABEL_44;
  }

LABEL_30:
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_75:
    v59 = MEMORY[0x22AAD13F0](0, v7);
    goto LABEL_33;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v59 = *(v7 + 32);
LABEL_33:
  v60 = v59;
  v61 = *(v0 + 128);
  v62 = *(v0 + 104);
  v63 = *(v0 + 80);

  (v106)(v61, 1, 1, v108);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v60;
  *(v7 + 40) = v98;
  *(v7 + 48) = v97;
  *(v7 + 56) = v62;

  v64 = v62;
  sub_229787078(v61, &unk_22A5829C0, v7);
  sub_22953EAE4(v61, &unk_27D87D8F0, &qword_22A578D70);
LABEL_47:
  v75 = 0;
  v109 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 < 0)
  {
    v76 = *(v0 + 96);
  }

  v103 = *(v0 + 96) + 32;
  v105 = v1 & 0xC000000000000001;
  v102 = (v2 + 48);
  v99 = (v2 + 8);
  while (1)
  {
    v2 = v108;
    if (v107)
    {
      break;
    }

    if (v75 == *(v109 + 16))
    {
      goto LABEL_68;
    }

LABEL_55:
    if (v105)
    {
      v78 = MEMORY[0x22AAD13F0](v75, *(v0 + 96));
    }

    else
    {
      if (v75 >= *(v109 + 16))
      {
        goto LABEL_73;
      }

      v78 = *(v103 + 8 * v75);
    }

    v79 = v78;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v80 = [*(v0 + 104) messageDispatcher];
    if (!v80)
    {
      goto LABEL_77;
    }

    v81 = v80;
    v83 = *(v0 + 112);
    v82 = *(v0 + 120);
    (v106)(v82, 1, 1, v108);
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    v84 = (v1 + 16);
    *(v1 + 24) = 0;
    *(v1 + 32) = v79;
    *(v1 + 40) = v81;
    sub_229569C24(v82, v83);
    v85 = (*v102)(v83, 1, v108);
    v86 = v79;
    v7 = v81;
    v87 = *(v0 + 112);
    if (v85 == 1)
    {
      sub_22953EAE4(*(v0 + 112), &unk_27D87D8F0, &qword_22A578D70);
      if (*v84)
      {
        goto LABEL_62;
      }
    }

    else
    {
      sub_22A4DD9CC();
      (*v99)(v87, v108);
      if (*v84)
      {
LABEL_62:
        v88 = *(v1 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v89 = sub_22A4DD8CC();
        v91 = v90;
        swift_unknownObjectRelease();
        goto LABEL_65;
      }
    }

    v89 = 0;
    v91 = 0;
LABEL_65:
    v92 = **(v0 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = &unk_22A5829D0;
    *(v93 + 24) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    v94 = v91 | v89;
    if (v91 | v89)
    {
      v94 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v89;
      *(v0 + 40) = v91;
    }

    v77 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v94;
    *(v0 + 64) = v92;
    swift_task_create();

    sub_22953EAE4(v77, &unk_27D87D8F0, &qword_22A578D70);
    ++v75;
  }

  if (v75 != sub_22A4DE0EC())
  {
    goto LABEL_55;
  }

LABEL_68:

  if (__OFADD__(v101, v100))
  {
    goto LABEL_74;
  }

  v95 = swift_task_alloc();
  *(v0 + 200) = v95;
  *v95 = v0;
  v95[1] = sub_22978FD94;
  v96 = *(v0 + 80);

  sub_229790B8C(v96, v101 + v100, 0);
}

uint64_t sub_22978FD94(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_22978FE94, 0, 0);
}

uint64_t sub_22978FE94()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  **(v0 + 72) = *(v0 + 208);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22978FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_22A4DD07C();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229790050, 0, 0);
}

void sub_229790050()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = sub_22A4DD9DC();
  v8 = (*(v7 - 8) + 56);
  v46 = *v8;
  (*v8)(v1, 1, 1, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v3;
  *(v9 + 48) = v4;
  *(v9 + 56) = v6;

  v10 = v6;
  sub_229787078(v1, &unk_22A582A48, v9);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);
  if (v2 != 1)
  {
    goto LABEL_15;
  }

  v11 = [*(v0 + 32) appleAccountManager];
  if (!v11)
  {
    goto LABEL_38;
  }

  v12 = v11;
  v13 = [v11 account];

  if (!v13)
  {
LABEL_12:
    v24 = *(v0 + 80);
    sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_229538000, v25, v26, "[EnergyKit] Cannot signal other devices to clear data because there is no current account handle", v31, 2u);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    goto LABEL_15;
  }

  v14 = [v13 handles];

  sub_229562F68(0, &qword_27D880818, off_278666008);
  v2 = sub_22A4DD83C();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!sub_22A4DE0EC())
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  for (i = *(v2 + 32); ; i = MEMORY[0x22AAD13F0](0, v2))
  {
    v16 = i;
    v17 = *(v0 + 88);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 24);
    v21 = *(v0 + 32);

    v46(v17, 1, 1, v7);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v16;
    v22[5] = v19;
    v22[6] = v18;
    v22[7] = v21;

    v23 = v21;
    sub_229787078(v17, &unk_22A582A50, v22);
    sub_22953EAE4(v17, &unk_27D87D8F0, &qword_22A578D70);
LABEL_15:
    v32 = **(v0 + 56);
    if (!(v32 >> 62))
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

    while (1)
    {
      v33 = sub_22A4DE0EC();
LABEL_17:

      if (!v33)
      {
        break;
      }

      v34 = 0;
      v2 = v32 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x22AAD13F0](v34, v32);
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v38 = [*(v0 + 32) messageDispatcher];
        if (!v38)
        {
          goto LABEL_37;
        }

        v39 = v38;
        sub_2297917B4(*(v0 + 24), v36, v38);

        ++v34;
        if (v37 == v33)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

LABEL_27:
    v40 = *(v0 + 40);
    v7 = *(v0 + 48);

    v41 = *(v40 + 16);
    v42 = *(v7 + 16);
    v43 = v41 + v42;
    if (!__OFADD__(v41, v42))
    {
      break;
    }

    __break(1u);
LABEL_35:
    ;
  }

  v44 = swift_task_alloc();
  *(v0 + 96) = v44;
  *v44 = v0;
  v44[1] = sub_22979052C;
  v45 = *(v0 + 24);

  sub_229790B8C(v45, v43, 0);
}

uint64_t sub_22979052C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22979062C, 0, 0);
}

uint64_t sub_22979062C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  **(v0 + 16) = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2297906A0(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C20, &unk_22A582948);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229792618();
  sub_22A4DE80C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC18, &qword_22A582940);
  sub_22979266C(&qword_27D880C28, &qword_27D880C30);
  sub_22A4DE59C();
  if (v3)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v13;
  v14 = 1;
  sub_22A4DE59C();
  LOBYTE(v15) = 2;
  sub_22A4DE55C();
  LOBYTE(v15) = 3;
  sub_22A4DE55C();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2297908E4()
{
  v1 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000015;
  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_229790958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2297921CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_229790980(uint64_t a1)
{
  v2 = sub_229792618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2297909BC(uint64_t a1)
{
  v2 = sub_229792618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229790A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_229792334(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_229790A58(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 17);
  return sub_2297906A0(a1, *v1, *(v1 + 8));
}

unint64_t sub_229790B38()
{
  result = qword_27D880BF8;
  if (!qword_27D880BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880BF8);
  }

  return result;
}

uint64_t sub_229790B8C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  v4 = sub_22A4DB7DC();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C60, &qword_22A582998) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C70, &qword_22A5829F0);
  *(v3 + 128) = v8;
  v9 = *(v8 - 8);
  *(v3 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229790D20, 0, 0);
}

uint64_t sub_229790D20()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  if ((*(v0 + 160) & 1) == 0)
  {
    v1 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    sub_22A4DD4CC();
  }

  v2 = *(v0 + 144);
  v3 = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
  sub_22A4DD91C();
  v4 = *(MEMORY[0x277D856B0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_229790E34;
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);

  return MEMORY[0x2822002E8](v0 + 24, 0, 0, v7);
}

uint64_t sub_229790E34()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229790F30, 0, 0);
}

uint64_t sub_229790F30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (v5)
  {
    v6 = 0;
    v109 = v4 + 3;
    v110 = v4 + 2;
    v111 = v4[3];
    v7 = *(v5 + 64);
    v108 = v5 + 64;
    v8 = -1;
    v9 = -1 << *(v5 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v7;
    v11 = (63 - v9) >> 6;
    v112 = v11;
    if ((v8 & v7) == 0)
    {
      goto LABEL_7;
    }

    while (1)
    {
      while (1)
      {
        v17 = v6;
LABEL_17:
        v20 = v4[14];
        v118 = v4[13];
        v22 = v4[8];
        v21 = v4[9];
        v23 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v24 = v23 | (v17 << 6);
        v25 = *(v111 + 48) + *(v21 + 72) * v24;
        (*(v21 + 16))();
        v26 = *(v111 + 56) + 16 * v24;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
        v30 = v20 + *(v29 + 48);
        (*(v21 + 32))(v20, v118, v22);
        *v30 = v27;
        *(v30 + 8) = v28;
        (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
        v4 = v121;
        sub_229792944(v27, v28);
        v16 = v17;
LABEL_18:
        v31 = v4[15];
        sub_229792950(v4[14], v31);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
        if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
        {

          v95 = *(MEMORY[0x277D856B0] + 4);
          v96 = swift_task_alloc();
          v4[19] = v96;
          *v96 = v4;
          v96[1] = sub_229790E34;
          v97 = v4[18];
          a4 = v4[16];
          a1 = v109;
          a2 = 0;
          a3 = 0;

          return MEMORY[0x2822002E8](a1, a2, a3, a4);
        }

        v33 = v4[8];
        v34 = v4[15] + *(v32 + 48);
        v35 = *v34;
        v36 = *(v34 + 8);
        (*(v4[9] + 32))(v4[12]);
        v37 = v4[2];
        if (*(v37 + 16))
        {
          v38 = sub_2296DBEC0(v4[12]);
          if (v39)
          {
            break;
          }
        }

        v54 = v4[10];
        v55 = *(v4[9] + 16);
        v55(v54, v4[12], v4[8]);
        v120 = v35;
        sub_229792944(v35, v36);
        v56 = v4[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4[4] = v56;
        a1 = sub_2296DBEC0(v54);
        v58 = *(v56 + 16);
        v59 = (a2 & 1) == 0;
        v48 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v48)
        {
          goto LABEL_56;
        }

        v61 = a2;
        v115 = v16;
        v117 = v36;
        if (*(v56 + 24) >= v60)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v93 = a1;
            sub_229899690();
            a1 = v93;
          }
        }

        else
        {
          v62 = v4[10];
          sub_229895CB4(v60, isUniquelyReferenced_nonNull_native);
          v63 = v4[4];
          a1 = sub_2296DBEC0(v62);
          if ((v61 & 1) != (v64 & 1))
          {
LABEL_52:
            v107 = v4[8];

            return sub_22A4DE67C();
          }
        }

        v65 = v4[4];
        v113 = v4[12];
        v67 = v4[9];
        v66 = v4[10];
        v68 = v4[8];
        v69 = (v67 + 8);
        if (v61)
        {
          v70 = v65[7] + 16 * a1;
          v71 = *v70;
          v72 = *(v70 + 8);
          *v70 = v120;
          *(v70 + 8) = v117;
          sub_2297929C0(v71, v72);
          sub_2297929C0(v120, v117);
          v73 = *v69;
          (*v69)(v66, v68);
          a1 = v73(v113, v68);
        }

        else
        {
          v65[(a1 >> 6) + 8] |= 1 << a1;
          v74 = a1;
          v55(v65[6] + *(v67 + 72) * a1, v66, v68);
          v75 = v65[7] + 16 * v74;
          *v75 = v120;
          *(v75 + 8) = v117;
          sub_2297929C0(v120, v117);
          v76 = *(v67 + 8);
          v76(v66, v68);
          a1 = (v76)(v113, v68);
          v77 = v65[2];
          v48 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v48)
          {
            goto LABEL_57;
          }

          v65[2] = v78;
        }

        *v110 = v65;
LABEL_37:
        v6 = v115;
        v4 = v121;
        v11 = v112;
        if (!v10)
        {
LABEL_7:
          if (v11 <= v6 + 1)
          {
            v15 = v6 + 1;
          }

          else
          {
            v15 = v11;
          }

          v16 = v15 - 1;
          while (1)
          {
            v17 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if (v17 >= v11)
            {
              v18 = v4[14];
              v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C68, &qword_22A5829A0);
              (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
              v10 = 0;
              goto LABEL_18;
            }

            v10 = *(v108 + 8 * v17);
            ++v6;
            if (v10)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return MEMORY[0x2822002E8](a1, a2, a3, a4);
        }
      }

      v40 = *(*(v37 + 56) + 16 * v38 + 8);
      v41 = v4[12];
      if ((v40 & 1) == 0)
      {
        v42 = v4[11];
        v43 = *(v4[9] + 16);
        v43(v42, v4[12], v4[8]);
        v119 = v35;
        sub_229792944(v35, v36);
        v44 = v4[2];
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v4[5] = v44;
        a1 = sub_2296DBEC0(v42);
        v46 = *(v44 + 16);
        v47 = (a2 & 1) == 0;
        v48 = __OFADD__(v46, v47);
        v49 = v46 + v47;
        if (v48)
        {
          goto LABEL_58;
        }

        v50 = a2;
        v115 = v16;
        v116 = v36;
        if (*(v44 + 24) >= v49)
        {
          if ((v45 & 1) == 0)
          {
            v94 = a1;
            sub_229899690();
            a1 = v94;
          }
        }

        else
        {
          v51 = v4[11];
          sub_229895CB4(v49, v45);
          v52 = v4[5];
          a1 = sub_2296DBEC0(v51);
          if ((v50 & 1) != (v53 & 1))
          {
            goto LABEL_52;
          }
        }

        v79 = v4[5];
        v80 = v4[11];
        v114 = v4[12];
        v82 = v4[8];
        v81 = v4[9];
        v83 = (v81 + 8);
        if (v50)
        {
          v84 = v79[7] + 16 * a1;
          v85 = *v84;
          v86 = *(v84 + 8);
          *v84 = v119;
          *(v84 + 8) = v116;
          sub_2297929C0(v85, v86);
          sub_2297929C0(v119, v116);
          v87 = *v83;
          (*v83)(v80, v82);
          a1 = v87(v114, v82);
        }

        else
        {
          v79[(a1 >> 6) + 8] |= 1 << a1;
          v88 = a1;
          v43(v79[6] + *(v81 + 72) * a1, v80, v82);
          v89 = v79[7] + 16 * v88;
          *v89 = v119;
          *(v89 + 8) = v116;
          sub_2297929C0(v119, v116);
          v90 = *(v81 + 8);
          v90(v80, v82);
          a1 = (v90)(v114, v82);
          v91 = v79[2];
          v48 = __OFADD__(v91, 1);
          v92 = v91 + 1;
          if (v48)
          {
            goto LABEL_59;
          }

          v79[2] = v92;
        }

        *v110 = v79;
        goto LABEL_37;
      }

      v12 = v35;
      v13 = v4[8];
      v14 = v4[9];
      sub_2297929C0(v12, v36);
      a1 = (*(v14 + 8))(v41, v13);
      v6 = v16;
      v11 = v112;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  v98 = v4[15];
  v100 = v4[13];
  v99 = v4[14];
  v102 = v4[11];
  v101 = v4[12];
  v103 = v4[10];
  (*(v4[17] + 8))(v4[18], v4[16]);
  v104 = v4[2];

  v105 = v4[1];

  return v105(v104);
}

uint64_t sub_2297917B4(NSObject *a1, void *a2, void *a3)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v71 - v10;
  v81 = sub_22A4DB7DC();
  v83 = *(v81 - 8);
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v81);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v71 - v13;
  v14 = sub_22A4DD07C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x277D84F90];
  v82 = a2;
  v19 = [a2 users];
  if (!v19)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_22A4DE1FC();

    v94 = 0xD000000000000015;
    v95 = 0x800000022A5957C0;
    v93[4] = [a1 v11[250]];
    type metadata accessor for HMDUserPrivilege(0);
    v70 = sub_22A4DBA6C();
    MEMORY[0x22AAD08C0](v70);

    result = sub_22A4DE39C();
    __break(1u);
    return result;
  }

  v20 = v19;
  sub_229562F68(0, &qword_281401790, off_278666348);
  v21 = sub_22A4DD83C();

  if (v21 >> 62)
  {
LABEL_48:
    v77 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_22A4DE0EC();
  }

  else
  {
    v77 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = v9;
  v72 = v11;
  v74 = a1;
  if (!v23)
  {
    v25 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v24 = 0;
  v88 = v21 & 0xC000000000000001;
  v85 = v15 + 8;
  v25 = MEMORY[0x277D84F90];
  v11 = &selRef_preProcessMediaSystemMessage_;
  *&v22 = 138412290;
  v75 = v22;
  v9 = v77;
  v76 = v18;
  v86 = v21;
  for (i = v23; i != v24; v23 = i)
  {
    v15 = v24;
    while (1)
    {
      if (v88)
      {
        v26 = MEMORY[0x22AAD13F0](v15, v21);
      }

      else
      {
        if (v15 >= *(v9 + 2))
        {
          goto LABEL_47;
        }

        v26 = *(v21 + 8 * v15 + 32);
      }

      a1 = v26;
      v24 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v27 = [v26 v11[250]];
      if (v27 <= 2)
      {
        if (v27 > 2)
        {
          goto LABEL_53;
        }

        goto LABEL_8;
      }

      if (v27 != 5)
      {
        break;
      }

LABEL_8:

LABEL_9:
      ++v15;
      if (v24 == v23)
      {
        goto LABEL_30;
      }
    }

    if (v27 != 4)
    {
      if (v27 != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_8;
    }

    v28 = [a1 accountHandle];
    if (!v28)
    {
      sub_229562F68(0, &qword_281401BC0, off_2786661B8);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      a1 = a1;
      v29 = sub_22A4DD05C();
      v30 = sub_22A4DDCEC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v14;
        v33 = swift_slowAlloc();
        *v31 = v75;
        *(v31 + 4) = a1;
        *v33 = a1;
        v34 = a1;
        _os_log_impl(&dword_229538000, v29, v30, "[EnergyKit] Cannot signal other devices for user %@ because there is no current account handle", v31, 0xCu);
        sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
        v35 = v33;
        v14 = v32;
        v9 = v77;
        MEMORY[0x22AAD4E50](v35, -1, -1);
        v36 = v31;
        v18 = v76;
        MEMORY[0x22AAD4E50](v36, -1, -1);
      }

      else
      {
        v34 = v29;
        v29 = a1;
      }

      (*v85)(v18, v14);
      v21 = v86;
      v23 = i;
      v11 = &selRef_preProcessMediaSystemMessage_;
      goto LABEL_9;
    }

    v37 = v28;
    MEMORY[0x22AAD09E0]();
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
      v11 = &selRef_preProcessMediaSystemMessage_;
    }

    sub_22A4DD87C();

    v25 = v96;
  }

LABEL_30:

  v39 = [v82 spiClientIdentifier];
  sub_22A4DB79C();

  if (v25 >> 62)
  {
    v40 = sub_22A4DE0EC();
    if (!v40)
    {
      goto LABEL_50;
    }

LABEL_32:
    if (v40 >= 1)
    {
      v41 = 0;
      *&v75 = v25 & 0xC000000000000001;
      v74 = v74->isa;
      v73 = v83 + 16;
      v72 = (v72 + 7);
      v71 = v83 + 32;
      v77 = v25;
      v76 = v40;
      do
      {
        v88 = v41;
        if (v75)
        {
          v42 = MEMORY[0x22AAD13F0](v41, v25);
        }

        else
        {
          v42 = *(v25 + 8 * v41 + 32);
        }

        i = v42;
        v43 = sub_22A4DD9DC();
        v85 = *(v43 - 8);
        v44 = v89;
        (*(v85 + 56))(v89, 1, 1, v43);
        v45 = v83;
        v46 = v79;
        v47 = v81;
        (*(v83 + 16))(v79, v84, v81);
        v48 = (*(v45 + 80) + 40) & ~*(v45 + 80);
        v49 = (v72 + v48) & 0xFFFFFFFFFFFFFFF8;
        v50 = swift_allocObject();
        v50[2] = 0;
        v86 = v50 + 2;
        v51 = i;
        v50[3] = 0;
        v50[4] = v51;
        v52 = v46;
        v53 = v85;
        (*(v45 + 32))(v50 + v48, v52, v47);
        v54 = v82;
        *(v50 + v49) = v82;
        v55 = v80;
        *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v80;
        v56 = v78;
        sub_229569C24(v44, v78);
        v57 = v43;
        LODWORD(v48) = (*(v53 + 48))(v56, 1, v43);
        v58 = v51;
        v59 = v54;
        v60 = v55;
        if (v48 == 1)
        {
          sub_22953EAE4(v56, &unk_27D87D8F0, &qword_22A578D70);
        }

        else
        {
          sub_22A4DD9CC();
          (*(v53 + 8))(v56, v57);
        }

        v25 = v77;
        v61 = v88;
        if (*v86)
        {
          v62 = v50[3];
          v63 = *v86;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v64 = sub_22A4DD8CC();
          v66 = v65;
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v67 = swift_allocObject();
        *(v67 + 16) = &unk_22A582A60;
        *(v67 + 24) = v50;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
        v68 = (v66 | v64);
        if (v66 | v64)
        {
          v93[0] = 0;
          v93[1] = 0;
          v68 = v93;
          v93[2] = v64;
          v93[3] = v66;
        }

        v41 = v61 + 1;
        v90 = 1;
        v91 = v68;
        v92 = v74;
        swift_task_create();

        sub_22953EAE4(v89, &unk_27D87D8F0, &qword_22A578D70);
      }

      while (v76 != v41);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_52;
  }

  v40 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
    goto LABEL_32;
  }

LABEL_50:

  return (*(v83 + 8))(v84, v81);
}

uint64_t sub_2297921CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000022A5957E0 == a2;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022A595800 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022A595820 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022A595840 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_229792334(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C00, &qword_22A582938);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229792618();
  sub_22A4DE7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC18, &qword_22A582940);
  v11 = 0;
  sub_22979266C(&qword_27D880C10, &qword_27D880C18);
  sub_22A4DE4EC();
  v9 = v12;
  v11 = 1;
  sub_22A4DE4EC();
  LOBYTE(v12) = 2;
  v10[2] = sub_22A4DE4AC();
  LOBYTE(v12) = 3;
  sub_22A4DE4AC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_229792618()
{
  result = qword_27D880C08;
  if (!qword_27D880C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C08);
  }

  return result;
}

uint64_t sub_22979266C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87FC18, &qword_22A582940);
    sub_229793150(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_229792708()
{
  result = qword_27D880C38;
  if (!qword_27D880C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C38);
  }

  return result;
}

unint64_t sub_22979275C()
{
  result = qword_27D880C40;
  if (!qword_27D880C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C40);
  }

  return result;
}

uint64_t sub_2297927B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_229788D78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229792880(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_22978F09C(a1, a2, v6, v7, v8);
}

id sub_229792944(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_229792950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C60, &qword_22A582998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2297929C0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2297929CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22978B188(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_229792AA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22978BD2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_229792B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22978D27C(a1, v4, v5, v7, v6);
}

uint64_t sub_229792C38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_2295850E8(a1, v5);
}

void sub_229792CF8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_22978D9F4(v2, v3, v4);
}

uint64_t sub_229792D68(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C88, &qword_22A582A10) - 8) + 80);

  return sub_22978E17C(a1);
}

uint64_t sub_229792E30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2295850E8(a1, v5);
}

uint64_t sub_229792EE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C90, &qword_22A582A20) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_22978A7C4(v2, v3);
}

uint64_t objectdestroyTm_5(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_229792FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22978788C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229793074(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_229586D38;

  return sub_22978FF4C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_229793150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229793240(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229586D38;

  return sub_22978E200(a1, v8, v9, v10, v1 + v6, v11, v12);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2297933C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_229793410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_229793464()
{
  result = qword_27D880C98;
  if (!qword_27D880C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880C98);
  }

  return result;
}

unint64_t sub_2297934BC()
{
  result = qword_27D880CA0;
  if (!qword_27D880CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880CA0);
  }

  return result;
}

unint64_t sub_229793514()
{
  result = qword_27D880CA8;
  if (!qword_27D880CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880CA8);
  }

  return result;
}

HMDUserActivityReportCoordinatorFactory __swiftcall HMDUserActivityReportCoordinatorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDUserActivityReportCoordinatorFactory()
{
  result = qword_27D880CB0;
  if (!qword_27D880CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D880CB0);
  }

  return result;
}

uint64_t sub_2297936B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22A4DBC7C();
  v16 = v8;
  v17 = sub_229793D48();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, a3, v8);
  swift_defaultActor_initialize();
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight) = 0;
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) = 0;
  v10 = a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry) = 0;
  v11 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v12 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_homeUUID;
  v13 = sub_22A4DB7DC();
  (*(*(v13 - 8) + 32))(a4 + v12, a1, v13);
  *(a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageDispatcher) = a2;
  sub_229557188(&v15, a4 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider);
  return a4;
}

id sub_229793830(void *a1)
{
  v2 = sub_22A4DBC7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = sub_22A4DB7DC();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = [a1 uuid];
  sub_22A4DB79C();
  v18 = [a1 uuid];
  sub_22A4DB79C();
  result = [a1 msgDispatcher];
  if (result)
  {
    v20 = result;

    sub_22A4DBC6C();
    v21 = type metadata accessor for DefaultUserActivityReportMessenger();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    (*(v3 + 16))(v7, v9, v2);
    v25 = sub_2297936B8(v14, v20, v7, v24);
    (*(v3 + 8))(v9, v2);
    v26 = [objc_allocWithZone(MEMORY[0x277D0F798]) init];
    v27 = [objc_opt_self() sharedManager];
    PresenceFeedRefreshInMinutes = getPresenceFeedRefreshInMinutes();
    v55[3] = v21;
    v55[4] = &off_283CDD3E0;
    v29 = PresenceFeedRefreshInMinutes * 60.0;
    v55[0] = v25;
    v30 = type metadata accessor for DefaultUserActivityReportCoordinator();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    v34 = __swift_mutable_project_boxed_opaque_existential_0(v55, v21);
    v35 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v34);
    v37 = (&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v37;
    v54[3] = v21;
    v54[4] = &off_283CDD3E0;
    v54[0] = v39;
    swift_defaultActor_initialize();
    v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating] = 1;
    v40 = MEMORY[0x277D84F98];
    *&v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType] = MEMORY[0x277D84F98];
    *&v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports] = v40;
    v41 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v43 = v49;
    v42 = v50;
    (*(v49 + 16))(&v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_homeUUID], v16, v50);
    sub_22957F1C4(v54, &v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger]);
    *&v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider] = v26;
    *&v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager] = v27;
    *&v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateInterval] = v29;
    v52 = 0;
    v53 = 0xE000000000000000;
    v44 = v27;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A5958B0);
    v45 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v45);

    v46 = v53;
    v47 = &v33[OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier];
    *v47 = v52;
    v47[1] = v46;
    v51.receiver = v33;
    v51.super_class = v30;
    v48 = objc_msgSendSuper2(&v51, sel_init);

    (*(v43 + 8))(v16, v42);
    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v55);
    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_229793D48()
{
  result = qword_281403838;
  if (!qword_281403838)
  {
    sub_22A4DBC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403838);
  }

  return result;
}

void (*sub_229793DA0(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_229796228(v4, a2);
  return sub_229793E18;
}

void sub_229793E18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_229793F64()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageDispatcher);
  v2 = *MEMORY[0x277CCF1C8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22A582080;
  *(v3 + 32) = [objc_opt_self() policyWithEntitlements_];
  *(v3 + 40) = [objc_opt_self() policyWithEntitlementRequirement_];
  sub_229562F68(0, qword_281401B40, 0x277D0F838);
  v4 = sub_22A4DD81C();

  [v1 registerForMessage:v2 receiver:v0 policies:v4 selector:sel_handleActiveAssertionUpdateStateMessage_];

  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
  v6 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport);
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidStartNotification_ name:@"HMDXPCClientConnectionDidStartNotification" object:v6];
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidInvalidateNotification_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:v6];
  v7 = HMDProcessMonitorProcessStateDidChangeNotification;
  v8 = [v6 processMonitor];
  [v5 addObserver:v0 selector:sel_handleProcessInfoStateChangedNotification_ name:v7 object:v8];
}

BOOL sub_2297941D0()
{
  v1 = v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  v2 = *(v1 + 8);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 8);
    }

    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(v2 + 16);
  }

  v5 = v4 != 0;
  os_unfair_lock_unlock(v1);
  return v5;
}

void sub_229794238(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = sub_22A4DD2FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_22A4DD31C();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v19 = v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  v20 = sub_229579398(a1);
  if (!v20)
  {
    os_unfair_lock_unlock(v19);
    return;
  }

  v21 = *(v19 + 8);
  if ((v21 & 0xC000000000000001) != 0)
  {
    if (v21 < 0)
    {
      v22 = *(v19 + 8);
    }

    v23 = sub_22A4DE0EC();
    if (!*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(v21 + 16);
    if (!*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_accessoryBrowser) endActiveAssertion_];
  v24 = *(v19 + 24);
  *(v19 + 24) = 0;
  swift_unknownObjectRelease();
LABEL_8:
  os_unfair_lock_unlock(v19);
  sub_229541CB0(ObjectType, &off_283CE4470);
  v25 = a1;
  v26 = sub_22A4DD05C();
  v27 = sub_22A4DDD0C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v54 = ObjectType;
    v29 = v6;
    v30 = v5;
    v31 = v23;
    v32 = v28;
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v25;
    *v33 = v25;
    v34 = v25;
    _os_log_impl(&dword_229538000, v26, v27, "Removing inactive connection: %@", v32, 0xCu);
    sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    v35 = v32;
    v23 = v31;
    v5 = v30;
    v6 = v29;
    ObjectType = v54;
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  v36 = *(v6 + 8);
  v36(v11, v5);
  v37 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v25 added:0];
  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v25];

  if (!v23)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDD0C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_229538000, v38, v39, "Posting notification because last home manager connection has become inactive", v40, 2u);
      MEMORY[0x22AAD4E50](v40, -1, -1);
    }

    v36(v55, v5);
    v41 = MEMORY[0x277D84F98];
    v60 = MEMORY[0x277D84F98];
    v42 = sub_22A4DD5EC();
    v44 = v43;
    v45 = [v25 clientIdentifier];
    if (v45)
    {
      v46 = v45;
      v47 = sub_22A4DD5EC();
      v49 = v48;

      v59 = MEMORY[0x277D837D0];
      *&v58 = v47;
      *(&v58 + 1) = v49;
      sub_229543C58(&v58, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v41;
      sub_229543C6C(v57, v42, v44, isUniquelyReferenced_nonNull_native);

      v51 = v56;
    }

    else
    {
      sub_2297FD000(v42, v44, &v58);

      sub_22953EAE4(&v58, &unk_27D87DE60, &unk_22A57A960);
      v51 = v60;
    }

    v52 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_229543F58(v51);

    v53 = sub_22A4DD47C();

    [v52 postNotificationName:@"HMDHomeManagerLastProcessDidBecomeInactiveNotification" object:v2 userInfo:v53];
  }
}

void sub_229794820(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v99 - v6;
  v7 = sub_22A4DD07C();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v99 - v16;
  MEMORY[0x28223BE20](v15);
  v112 = &v99 - v18;
  v111 = sub_22A4DB7DC();
  v113 = *(v111 - 8);
  v19 = v113[8];
  v20 = MEMORY[0x28223BE20](v111);
  v109 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v99 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v110 = &v99 - v25;
  MEMORY[0x28223BE20](v24);
  v114 = &v99 - v26;
  v27 = sub_22A4DD2FC();
  v33 = *(v27 - 1);
  v28 = *(v33 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v30 = v31;
  (*(v33 + 104))(v30, *MEMORY[0x277D85200], v27);
  v32 = v31;
  LOBYTE(v31) = sub_22A4DD31C();
  v34 = *(v33 + 8);
  LOBYTE(v33) = v33 + 8;
  v34(v30, v27);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v35 = [a1 proxyConnection];
  v36 = a1;
  if (!v35)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v67 = a1;
    v68 = sub_22A4DD05C();
    v69 = sub_22A4DDCEC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v67;
      *v71 = v67;
      v72 = v67;
      _os_log_impl(&dword_229538000, v68, v69, "Could not find connection for active assertion message: %@", v70, 0xCu);
      sub_22953EAE4(v71, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v71, -1, -1);
      MEMORY[0x22AAD4E50](v70, -1, -1);
    }

    (*(v115 + 8))(v11, v116);
    v73 = objc_opt_self();
    v74 = sub_22A4DD5AC();
    v75 = [v73 hmErrorWithCode:2 description:0 reason:v74 suggestion:0];

    v66 = sub_22A4DB3DC();
    [v67 respondWithError_];

    goto LABEL_14;
  }

  v37 = v35;
  if (![v35 principalClass] || (swift_getObjCClassMetadata(), sub_229562F68(0, &unk_281401BE8, 0x277CD1A90), !swift_dynamicCastMetatype()))
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v59 = v37;
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = v37;
      v64 = v59;
      _os_log_impl(&dword_229538000, v60, v61, "Cannot update assertion for non-home-manager connection: %@", v62, 0xCu);
      sub_22953EAE4(v63, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    (*(v115 + 8))(v14, v116);
    type metadata accessor for HMError(0);
    v118 = 48;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v65 = v117[0];
    v66 = sub_22A4DB3DC();

    [v36 respondWithError_];
LABEL_14:

    return;
  }

  v38 = [a1 uuidForKey_];
  if (!v38)
  {
    sub_229541CB0(ObjectType, &off_283CE4470);
    v76 = sub_22A4DD05C();
    v77 = sub_22A4DDCEC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_229538000, v76, v77, "Could not find assertion UUID in update state message payload", v78, 2u);
      MEMORY[0x22AAD4E50](v78, -1, -1);
    }

    (*(v115 + 8))(v17, v116);
    type metadata accessor for HMError(0);
    v118 = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v79 = v117[0];
    v80 = sub_22A4DB3DC();

    [v36 respondWithError_];
    return;
  }

  v106 = v1;
  v39 = v114;
  v40 = v38;
  sub_22A4DB79C();

  v41 = *MEMORY[0x277CCF1B8];
  v104 = v36;
  v105 = [v36 BOOLForKey_];
  v30 = v112;
  sub_229541CB0(ObjectType, &off_283CE4470);
  v42 = v113;
  v43 = v110;
  v33 = v111;
  v102 = v113[2];
  v103 = v113 + 2;
  v102(v110, v39, v111);
  v44 = v37;
  v45 = sub_22A4DD05C();
  v46 = sub_22A4DDD0C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v117[0] = v101;
    *v47 = 136315650;
    sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0]);
    v48 = sub_22A4DE5CC();
    v30 = v49;
    v50 = v43;
    v51 = v113[1];
    v51(v50, v33);
    v52 = sub_2295A3E30(v48, v30, v117);

    *(v47 + 4) = v52;
    *(v47 + 12) = 1024;
    v53 = v105;
    *(v47 + 14) = v105;
    *(v47 + 18) = 2112;
    *(v47 + 20) = v44;
    v54 = v100;
    *v100 = v37;
    v27 = v51;
    v55 = v44;
    _os_log_impl(&dword_229538000, v45, v46, "Updating assertion with UUID %s to %{BOOL}d for connection: %@", v47, 0x1Cu);
    sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v54, -1, -1);
    v56 = v101;
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x22AAD4E50](v56, -1, -1);
    v57 = v47;
    v42 = v113;
    MEMORY[0x22AAD4E50](v57, -1, -1);

    (*(v115 + 8))(v112, v116);
    v58 = v106;
    v11 = v44;
  }

  else
  {

    v27 = v42[1];
    v27(v43, v33);
    (*(v115 + 8))(v30, v116);
    v58 = v106;
    v11 = v44;
    v53 = v105;
  }

  a1 = v58 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v58 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
  if (!v53)
  {
    v90 = sub_229793DA0(v117, v11);
    if (*v91)
    {
      v92 = v108;
      sub_229578E38(v114, v108);
      sub_22953EAE4(v92, &unk_27D87D2A0, &unk_22A578BD0);
      (v90)(v117, 0);
    }

    else
    {
      (v90)(v117, 0);
      v98 = v108;
      (v42[7])(v108, 1, 1, v33);
      sub_22953EAE4(v98, &unk_27D87D2A0, &unk_22A578BD0);
    }

    v30 = v104;
    goto LABEL_33;
  }

  v102(v109, v114, v33);
  v81 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117[0] = *(a1 + 16);
  v83 = v117[0];
  *(a1 + 16) = 0x8000000000000000;
  ObjectType = sub_2296DC034(v11);
  v85 = v83[2];
  v86 = (v84 & 1) == 0;
  v87 = v85 + v86;
  if (__OFADD__(v85, v86))
  {
    goto LABEL_35;
  }

  LOBYTE(v33) = v84;
  if (v83[3] >= v87)
  {
    v30 = v104;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

LABEL_36:
    sub_229899924();
    v83 = v117[0];
    goto LABEL_28;
  }

  sub_2298960AC(v87, isUniquelyReferenced_nonNull_native);
  v83 = v117[0];
  v88 = sub_2296DC034(v11);
  v30 = v104;
  if ((v33 & 1) == (v89 & 1))
  {
    ObjectType = v88;
LABEL_28:
    v93 = v107;
    v94 = *(a1 + 16);
    *(a1 + 16) = v83;

    v95 = *(a1 + 16);
    if ((v33 & 1) == 0)
    {
      sub_2295AC894(ObjectType, v11, MEMORY[0x277D84FA0], *(a1 + 16));
      v96 = v11;
    }

    v97 = *(v95 + 56) + 8 * ObjectType;
    sub_22957198C(v93, v109);
    v33 = v111;
    v27(v93, v111);
LABEL_33:
    os_unfair_lock_unlock(a1);
    sub_229541DF0(v11);
    [v30 respondWithSuccess];

    v27(v114, v33);
    return;
  }

  sub_229562F68(0, &unk_281401910, off_278666388);
  sub_22A4DE67C();
  __break(1u);
}

void sub_2297955A4(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD07C();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = v58 - v15;
  v16 = sub_22A4DD2FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_22A4DD31C();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = sub_22A4DB20C();
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v64 = sub_22A4DD5EC();
  v65 = v25;
  sub_22A4DE18C();
  if (!*(v24 + 16) || (v26 = sub_2295402E8(v66), (v27 & 1) == 0))
  {

    sub_22954045C(v66);
LABEL_13:
    v67 = 0u;
    v68 = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v24 + 56) + 32 * v26, &v67);
  sub_22954045C(v66);

  if (!*(&v68 + 1))
  {
LABEL_14:
    sub_22953EAE4(&v67, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_15;
  }

  sub_229562F68(0, &unk_281401910, off_278666388);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_229541CB0(ObjectType, &off_283CE4470);
    (*(v6 + 16))(v9, a1, v5);
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136315138;
      *&v67 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v39 = sub_22A4DD64C();
      v41 = v40;
      (*(v6 + 8))(v9, v5);
      v42 = sub_2295A3E30(v39, v41, v66);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_229538000, v35, v36, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v62 + 8))(v14, v63);
    return;
  }

  v28 = v66[0];
  if ([v66[0] principalClass] && (swift_getObjCClassMetadata(), v58[1] = sub_229562F68(0, &unk_281401BE8, 0x277CD1A90), swift_dynamicCastMetatype()))
  {
    v29 = v61;
    v30 = (v61 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState);
    os_unfair_lock_lock((v61 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState));
    v31 = v28;
    sub_22989166C(0, v31);
    os_unfair_lock_unlock(v30);
    sub_229794238(v31);
    v59 = [v31 processInfo];
    v32 = [*(v29 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
    a1 = sub_22A4DD83C();

    v58[0] = v31;
    if (a1 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v34 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x22AAD13F0](v34, a1);
        }

        else
        {
          if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v43 = *(a1 + 8 * v34 + 32);
        }

        v44 = v43;
        v45 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        sub_229562F68(0, &qword_281401760, 0x277D82BB8);
        v46 = [v44 processInfo];
        v47 = sub_22A4DDEDC();

        if (v47)
        {
          v48 = [v44 principalClass];

          if (v48)
          {
            swift_getObjCClassMetadata();
            if (swift_dynamicCastMetatype())
            {

              return;
            }
          }
        }

        else
        {
        }

        ++v34;
        if (v45 == i)
        {
          goto LABEL_36;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v49 = v60;
    sub_229541CB0(ObjectType, &off_283CE4470);
    v50 = v59;
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCCC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_229538000, v51, v52, "Posting notification that no more client connections exist for process: %@", v53, 0xCu);
      sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v62 + 8))(v49, v63);
    v56 = *(v61 + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter);
    v57 = v50;
    [v56 postNotificationName:@"HMDHomeManagerClientProcessDisconnectedNotification" object:v57];
  }

  else
  {
  }
}

HMDHomeManagerXPCClientConnectionsManagerFactory __swiftcall HMDHomeManagerXPCClientConnectionsManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for HomeManagerXPCClientConnectionsManager()
{
  result = qword_281403060;
  if (!qword_281403060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229796114()
{
  result = sub_22A4DB7DC();
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

void (*sub_229796228(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_229796534(v6);
  v6[9] = sub_22979632C(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_2297962CC;
}

void sub_2297962CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22979632C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2296DC034(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_229899924();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2298960AC(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_2296DC034(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_229562F68(0, &unk_281401910, off_278666388);
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_229796484;
}

void sub_229796484(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_2295AC894(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_2297FE434(v6, v7);
  }

  v10 = *v1;

  free(v1);
}

uint64_t (*sub_229796534(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22979655C;
}

id sub_229796568(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v31 = a2;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = v8[2];
  v15(&v28 - v13, a3, v7);
  v15(v12, v14, v7);
  v30 = [objc_opt_self() defaultTransport];
  v29 = [objc_opt_self() defaultCenter];
  v16 = type metadata accessor for HomeManagerXPCClientConnectionsManager();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_lockedState];
  *v18 = 0;
  v19 = MEMORY[0x277D84F98];
  *(v18 + 1) = MEMORY[0x277D84FA0];
  *(v18 + 2) = v19;
  *(v18 + 3) = 0;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_queue] = a1;
  v20 = v31;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageDispatcher] = v31;
  v15(&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageTargetUUID], v12, v7);
  v21 = v33;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_accessoryBrowser] = v32;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_logEventSubmitter] = v21;
  v22 = v29;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_xpcTransport] = v30;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_notificationCenter] = v22;
  v34.receiver = v17;
  v34.super_class = v16;
  v23 = a1;
  v24 = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = v8[1];
  v26(v12, v7);
  v26(v14, v7);
  return v25;
}

void sub_229796818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D70, &qword_22A582D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D78, &qword_22A582D78);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_22A4DB57C();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = type metadata accessor for DemoModeMetadata();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_229796B8C(v7, v3);
  qword_281405070 = v13;
}

uint64_t sub_229796994()
{
  v1 = *(v0 + 112);
  if (*(v1 + 16))
  {

    v2 = sub_229543DBC(0x6E6F6973726556, 0xE700000000000000);
    if (v3)
    {
      sub_2295404B0(*(v1 + 56) + 32 * v2, v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
    }
  }

  return 45;
}

uint64_t sub_229796A4C()
{
  v0 = sub_22A4DB57C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_281405088);
  __swift_project_value_buffer(v0, qword_281405088);
  v6 = demoModeConfigPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  sub_22A4DB4FC();
  return (*(v1 + 8))(v5, v0);
}

void sub_229796B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_22A4DB57C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v32 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D70, &qword_22A582D70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F98];
  (*(v11 + 56))(v3 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL, 1, 1, v10);
  sub_229564F88(a1, v19, &qword_27D880D70, &qword_22A582D70);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D78, &qword_22A582D78);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_22953EAE4(v19, &qword_27D880D70, &qword_22A582D70);
    v22 = [objc_allocWithZone(HMDFileManager) init];
  }

  else
  {
    sub_22A4DBA4C();
    v22 = v37;
    (*(v21 + 8))(v19, v20);
  }

  *(v3 + 120) = v22;
  sub_229564F88(a2, v9, &qword_27D880180, &unk_22A586590);
  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) != 1)
  {
    sub_22953EAE4(a2, &qword_27D880180, &unk_22A586590);
    sub_22953EAE4(a1, &qword_27D880D70, &qword_22A582D70);
    v30 = *(v11 + 32);
    v31 = v36;
    v30(v36, v9, v10);
LABEL_9:
    v30((v3 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_defaultMetadataURL), v31, v10);
    return;
  }

  v33 = a2;
  v34 = a1;
  type metadata accessor for DemoModeManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_22A4DD5AC();
  v27 = sub_22A4DD5AC();
  v28 = [v25 URLForResource:v26 withExtension:v27];

  if (v28)
  {
    v29 = v35;
    sub_22A4DB51C();

    sub_22953EAE4(v33, &qword_27D880180, &unk_22A586590);
    sub_22953EAE4(v34, &qword_27D880D70, &qword_22A582D70);
    v30 = *(v11 + 32);
    v31 = v36;
    v30(v36, v29, v10);
    if (v23(v9, 1, v10) != 1)
    {
      sub_22953EAE4(v9, &qword_27D880180, &unk_22A586590);
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22979704C()
{
  v1 = v0;
  v36 = *v0;
  v2 = sub_22A4DD07C();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DB57C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = v0[15];
  if (qword_2814028E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281405088);
  v19 = sub_22A4DB4EC();
  v20 = [v17 fileExistsAtURL_];

  if (v20)
  {
    (*(v6 + 16))(v16, v18, v5);
  }

  else
  {
    (*(v6 + 16))(v16, v1 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_defaultMetadataURL, v5);
  }

  (*(v6 + 56))(v16, 0, 1, v5);
  v21 = OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL;
  swift_beginAccess();
  sub_22979836C(v16, v1 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL;
  swift_beginAccess();
  sub_229564F88(v1 + v22, v14, &qword_27D880180, &unk_22A586590);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_22953EAE4(v14, &qword_27D880180, &unk_22A586590);
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
    v23 = v40;
    v24 = sub_229797860(v9);
    if (v23)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v26 = v24;
    (*(v6 + 8))(v9, v5);
    v27 = v1[14];
    v1[14] = v26;
  }

  v28 = v37;
  sub_229541CB0(v36, &off_283CE4488);

  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCCC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    v33 = sub_229796994();
    v35 = sub_2295A3E30(v33, v34, &v41);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_229538000, v29, v30, "Refreshed metadata-%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v31, -1, -1);
  }

  return (*(v38 + 8))(v28, v39);
}

void sub_229797534(int a1)
{
  v3 = v1;
  v31 = a1;
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v4, &off_283CE4488);

  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136315138;
    v15 = sub_229796994();
    v17 = sub_2295A3E30(v15, v16, v32);
    v29 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_229538000, v10, v11, "Resetting metadata-%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v6 + 8))(v9, v29);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v19 = v3[15];
  if (qword_2814028E8 != -1)
  {
    swift_once();
  }

  v20 = sub_22A4DB57C();
  __swift_project_value_buffer(v20, qword_281405088);
  v21 = sub_22A4DB4EC();
  v22 = [v19 fileExistsAtURL_];

  if (v22)
  {
    v23 = sub_22A4DB4EC();
    v32[0] = 0;
    v24 = [v19 removeItemAtURL:v23 error:v32];

    if (!v24)
    {
      v26 = v32[0];
      sub_22A4DB3EC();

      swift_willThrow();
      goto LABEL_12;
    }

    v25 = v32[0];
  }

  if (v31)
  {
    sub_22979704C();
  }

LABEL_12:
  v27 = *MEMORY[0x277D85DE8];
}

void *sub_229797860(void *a1)
{
  v58[14] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_22A4DB57C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22A4DD07C();
  v54 = *(v55 - 8);
  v10 = *(v54 + 64);
  v11 = MEMORY[0x28223BE20](v55);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = (&v52 - v14);
  v15 = v1[15];
  v16 = sub_22A4DB4EC();
  LODWORD(v15) = [v15 fileExistsAtURL_];

  if (!v15)
  {
    goto LABEL_13;
  }

  v17 = a1;
  if (sub_22A4DB4AC() == 0x7473696C70 && v18 == 0xE500000000000000)
  {

    goto LABEL_6;
  }

  v17 = v18;
  v19 = sub_22A4DE60C();

  if ((v19 & 1) == 0)
  {
LABEL_13:
    sub_229541CB0(v4, &off_283CE4488);
    (*(v6 + 16))(v9, a1, v5);
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58[0] = v53;
      *v31 = 136315138;
      sub_229798324(&qword_27D87E238, MEMORY[0x277CC9260]);
      v32 = sub_22A4DE5CC();
      v34 = v33;
      (*(v6 + 8))(v9, v5);
      v35 = sub_2295A3E30(v32, v34, v58);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_229538000, v29, v30, "Invalid metadata: %s", v31, 0xCu);
      v36 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v54 + 8))(v13, v55);
    type metadata accessor for HMError(0);
    v17 = v37;
    v57[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v39 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v40;
    *(inited + 48) = 0xD000000000000014;
    *(inited + 56) = 0x800000022A595BF0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_229798324(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
    goto LABEL_17;
  }

LABEL_6:
  v20 = sub_22A4DB59C();
  if (!v2)
  {
    v22 = v20;
    v23 = v21;
    v24 = objc_opt_self();
    v17 = sub_22A4DB61C();
    v57[0] = 0;
    v25 = [v24 propertyListWithData:v17 options:0 format:0 error:v57];

    v26 = v57[0];
    if (!v25)
    {
      v43 = v26;
      sub_22A4DB3EC();

      swift_willThrow();
      sub_2295798D4(v22, v23);
      goto LABEL_17;
    }

    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_2295404B0(v58, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    if (swift_dynamicCast())
    {
      v17 = v56;
      if (*(v56 + 16))
      {
        v27 = sub_229543DBC(0x6E6F6973726556, 0xE700000000000000);
        if (v28)
        {
          sub_2295404B0(v17[7] + 32 * v27, v57);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_0(v58);
            sub_2295798D4(v22, v23);

            goto LABEL_17;
          }
        }
      }
    }

    v44 = v53;
    sub_229541CB0(v4, &off_283CE4488);
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_229538000, v45, v46, "Invalid metadata format", v47, 2u);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    (*(v54 + 8))(v44, v55);
    type metadata accessor for HMError(0);
    v17 = v48;
    v56 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_22A576180;
    v50 = *MEMORY[0x277CCA450];
    *(v49 + 32) = sub_22A4DD5EC();
    *(v49 + 72) = MEMORY[0x277D837D0];
    *(v49 + 40) = v51;
    *(v49 + 48) = 0xD000000000000017;
    *(v49 + 56) = 0x800000022A595C10;
    sub_22956AD8C(v49);
    swift_setDeallocating();
    sub_22953EAE4(v49 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_229798324(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
    sub_2295798D4(v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

LABEL_17:
  v41 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_2297980E0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_defaultMetadataURL;
  v4 = sub_22A4DB57C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon16DemoModeMetadata_currentMetadataURL, &qword_27D880180, &unk_22A586590);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DemoModeMetadata()
{
  result = qword_2814028C8;
  if (!qword_2814028C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2297981DC()
{
  v0 = sub_22A4DB57C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2297982CC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2297982CC()
{
  if (!qword_2814038B8)
  {
    sub_22A4DB57C();
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814038B8);
    }
  }
}

uint64_t sub_229798324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22979836C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297983DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_229798400, 0, 0);
}

uint64_t sub_229798400()
{
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v1 = sub_22A4DD5EC();
  MEMORY[0x22AAD08C0](v1);

  *(v0 + 48) = 0x800000022A595C30;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22979852C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_22979852C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_229798650;
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229798650()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2297986BC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = sub_22A4DD49C();
  }

  v7 = a2;
  v6(a2, v3);
}

void sub_22979876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = a5;
  v20[1] = a4;
  v21 = a2;
  v22 = a3;
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = v20 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v10;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_2295ED9B4(inited + 32);
  sub_22956AC5C(MEMORY[0x277D84F90]);
  v11 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v12 = sub_22A4DD47C();

  v13 = sub_22A4DD47C();

  v14 = sub_22A4DD47C();
  v15 = [v11 initWithName:v21 qualityOfService:25 destination:v22 userInfo:v12 headers:v13 payload:v14];

  v16 = v23;
  (*(v5 + 16))(v8, v24, v23);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v16);
  aBlock[4] = sub_229798B18;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_32;
  v19 = _Block_copy(aBlock);

  [v15 setResponseHandler_];
  _Block_release(v19);
  [v25 sendMessage_];
}

uint64_t sub_229798AA4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

uint64_t sub_229798B18(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8) + 80);

  return sub_229798AA4(a1);
}

uint64_t sub_229798BA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_229562F68(0, &qword_27D880D90, 0x277D17B60);
    v6 = sub_22A4DD83C();
  }

  v9 = a3;
  v10 = a4;
  v8(v6, a3, a4);
}

void sub_229798C64(void *a1)
{
  v52 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v47[-v9];
  v11 = [v1 accessory];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 accessoryServer];
    if (v13)
    {
      v14 = v13;
      sub_2296F8604();
      v15 = v1;
      v16 = sub_22A4DD05C();
      v17 = sub_22A4DDCCC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v49 = v18;
        v51 = swift_slowAlloc();
        v59 = v51;
        *v18 = 136315138;
        aBlock = 91;
        v54 = 0xE100000000000000;
        v19 = [v15 logIdentifier];
        v48 = v17;
        v20 = v19;
        v21 = sub_22A4DD5EC();
        v50 = v3;
        v22 = v21;
        v24 = v23;

        MEMORY[0x22AAD08C0](v22, v24);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v25 = sub_2295A3E30(aBlock, v54, &v59);

        v26 = v49;
        *(v49 + 1) = v25;
        _os_log_impl(&dword_229538000, v16, v48, "%s Fetching matter pairings per request", v26, 0xCu);
        v27 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AAD4E50](v27, -1, -1);
        MEMORY[0x22AAD4E50](v26, -1, -1);

        (*(v4 + 8))(v10, v50);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }

      v40 = swift_allocObject();
      v41 = v52;
      v40[2] = v15;
      v40[3] = v41;
      v40[4] = ObjectType;
      v57 = sub_22979CD5C;
      v58 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_229798BA4;
      v56 = &block_descriptor_34_0;
      v42 = _Block_copy(&aBlock);
      v43 = v15;
      v44 = v42;
      v45 = v43;
      v46 = v41;

      [v14 fetchLastKnownPairingsWithCompletionHandler_];
      _Block_release(v44);

      goto LABEL_12;
    }
  }

  sub_2296F8604();
  v28 = v1;
  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCEC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v59 = v32;
    *v31 = 136315138;
    aBlock = 91;
    v54 = 0xE100000000000000;
    v33 = [v28 logIdentifier];
    v34 = v3;
    v35 = sub_22A4DD5EC();
    v37 = v36;

    MEMORY[0x22AAD08C0](v35, v37);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v38 = sub_2295A3E30(aBlock, v54, &v59);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_229538000, v29, v30, "%s Unable to find accessory server", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v31, -1, -1);

    (*(v4 + 8))(v8, v34);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
  }

  v39 = [objc_opt_self() hmErrorWithCode_];
  v14 = sub_22A4DB3DC();

  [v52 respondWithError_];
LABEL_12:
}

void sub_229799184(unint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_2296F8604();
    v24 = a4;
    v25 = a2;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v46 = v27;
      v47 = a5;
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315394;
      v48 = 91;
      v49 = 0xE100000000000000;
      v50 = v29;
      v30 = [v24 logIdentifier];
      v31 = sub_22A4DD5EC();
      v33 = v32;

      MEMORY[0x22AAD08C0](v31, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(v48, v49, &v50);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      if (a2)
      {
        v35 = a2;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v39 = v46;
      *(v28 + 14) = v36;
      v40 = v44;
      *v44 = v37;
      _os_log_impl(&dword_229538000, v26, v39, "%s Failed to fetch pairings from matter accessory server with error: %@", v28, 0x16u);
      sub_22953EAE4(v40, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      v41 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

      (*(v10 + 8))(v13, v9);
      a5 = v47;
      v38 = a2;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {

      (*(v10 + 8))(v13, v9);
      v38 = a2;
      if (a2)
      {
LABEL_11:
        v42 = a2;
        v22 = sub_22A4DB3DC();

        v23 = &selRef_respondWithError_;
        goto LABEL_12;
      }
    }

    v38 = [objc_opt_self() hmErrorWithCode_];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v15 = *MEMORY[0x277CCE830];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v16;
  sub_229703E88(a1);
  sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
  sub_229707F80();
  v17 = sub_22A4DDB5C();

  v18 = encodeRootObjectForXPC(v17);

  v19 = sub_22A4DB62C();
  v21 = v20;

  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 48) = v19;
  *(inited + 56) = v21;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v22 = sub_22A4DD47C();

  v23 = &selRef_respondWithPayload_;
LABEL_12:
  [a5 *v23];
}

void sub_229799610(uint64_t *a1)
{
  v2 = v1;
  v173 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD26C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v147 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v171 = &v147 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v147 - v19;
  v21 = [v2 accessory];
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v21;
  v172 = ObjectType;
  v23 = [v21 accessoryServer];
  if (!v23)
  {
    v24 = v22;
LABEL_8:

LABEL_9:
    sub_2296F8604();
    v32 = v2;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v179 = v36;
      *v35 = 136315138;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v37 = [v32 logIdentifier];
      v38 = sub_22A4DD5EC();
      v40 = v39;

      MEMORY[0x22AAD08C0](v38, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v41 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v179);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_229538000, v33, v34, "%s Unable to find accessory server", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v42 = [objc_opt_self() hmfErrorWithCode_];
    v43 = sub_22A4DB3DC();

    [v173 respondWithError_];
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v22 home];
  if (!v25)
  {

    goto LABEL_8;
  }

  v156 = v4;
  v157 = v7;
  v168 = v25;
  v170 = v24;
  v26 = *MEMORY[0x277CCE830];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22A5761A0;
  *(v27 + 32) = sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  v161 = sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
  *(v27 + 40) = v161;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
  v29 = sub_22A4DD81C();

  v30 = v173;
  v31 = [v173 unarchivedObjectForKey:v28 ofClasses:v29];

  if (v31)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v179 = 0u;
    v180 = 0u;
  }

  aBlock = v179;
  v175 = v180;
  v162 = v8;
  v163 = v22;
  if (!*(&v180 + 1))
  {
    sub_22953EAE4(&aBlock, &unk_27D87DE60, &unk_22A57A960);
LABEL_20:
    sub_2296F8604();
    v64 = v2;
    v65 = v30;
    v66 = sub_22A4DD05C();
    v67 = sub_22A4DDCEC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *&v179 = v173;
      *v68 = 136315394;
      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v70 = [v64 logIdentifier];
      v71 = sub_22A4DD5EC();
      v73 = v72;

      MEMORY[0x22AAD08C0](v71, v73);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v74 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v179);

      *(v68 + 4) = v74;
      v22 = v163;
      *(v68 + 12) = 2112;
      *(v68 + 14) = v65;
      *v69 = v65;
      v75 = v65;
      _os_log_impl(&dword_229538000, v66, v67, "%s Could not find matter pairings in remote matter pairings message payload: %@", v68, 0x16u);
      sub_22953EAE4(v69, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v69, -1, -1);
      v76 = v173;
      __swift_destroy_boxed_opaque_existential_0(v173);
      MEMORY[0x22AAD4E50](v76, -1, -1);
      MEMORY[0x22AAD4E50](v68, -1, -1);
    }

    (*(v9 + 8))(v16, v162);
    v77 = [objc_opt_self() hmErrorWithCode_];
    v43 = sub_22A4DB3DC();

    [v65 respondWithError_];
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880D80, &unk_22A582DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = v163;
    goto LABEL_20;
  }

  v44 = v178;
  sub_2296F8604();
  v45 = v2;

  v46 = sub_22A4DD05C();
  v47 = sub_22A4DDCCC();

  v48 = os_log_type_enabled(v46, v47);
  v167 = v45;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    *&v179 = v169;
    *v49 = 136315394;
    *&aBlock = 91;
    *(&aBlock + 1) = 0xE100000000000000;
    v50 = [v45 logIdentifier];
    v51 = v44;
    v52 = sub_22A4DD5EC();
    v54 = v53;

    v55 = v52;
    v44 = v51;
    MEMORY[0x22AAD08C0](v55, v54);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v56 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v179);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2080;
    sub_229707F80();
    v57 = sub_22A4DDB7C();
    v59 = sub_2295A3E30(v57, v58, &v179);

    *(v49 + 14) = v59;
    _os_log_impl(&dword_229538000, v46, v47, "%s Removing matter pairings: %s", v49, 0x16u);
    v60 = v169;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v60, -1, -1);
    MEMORY[0x22AAD4E50](v49, -1, -1);

    v61 = *(v9 + 8);
    v62 = v20;
    v63 = v162;
  }

  else
  {

    v61 = *(v9 + 8);
    v62 = v20;
    v63 = v8;
  }

  v154 = v61;
  v61(v62, v63);
  v78 = [v170 rootPublicKey];
  if (v78)
  {
    v79 = v78;
    v158 = sub_22A4DB62C();
    v166 = v80;
  }

  else
  {
    v158 = 0;
    v166 = 0xF000000000000000;
  }

  v165 = dispatch_group_create();
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v164 = v81;
  *(v81 + 20) = 0;
  if ((v44 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229707F80();
    sub_22A4DDBAC();
    v83 = *(&v179 + 1);
    v44 = v179;
    v85 = *(&v180 + 1);
    v84 = v180;
    v86 = v181;
  }

  else
  {
    v85 = 0;
    v87 = -1 << *(v44 + 32);
    v83 = v44 + 56;
    v84 = ~v87;
    v88 = -v87;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    else
    {
      v89 = -1;
    }

    v86 = v89 & *(v44 + 56);
  }

  v152 = v84;
  v90 = (v84 + 64) >> 6;
  v159 = &v175;
  v153 = v9 + 8;
  *&v82 = 136315394;
  v151 = v82;
  v160 = v44;
  if (v44 < 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v91 = v85;
  v92 = v86;
  v93 = v85;
  if (v86)
  {
LABEL_38:
    v94 = (v92 - 1) & v92;
    v95 = *(*(v44 + 48) + ((v93 << 9) | (8 * __clz(__rbit64(v92)))));
    if (!v95)
    {
LABEL_56:
      sub_22953EE84();
      v135 = v163;
      v136 = [v163 workQueue];
      v137 = swift_allocObject();
      v138 = v167;
      v137[2] = v164;
      v137[3] = v138;
      v139 = v172;
      v140 = v173;
      v137[4] = v173;
      v137[5] = v139;
      v176 = sub_22979CD40;
      v177 = v137;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v175 = sub_22953E640;
      *(&v175 + 1) = &block_descriptor_19;
      _Block_copy(&aBlock);
      v178 = MEMORY[0x277D84F90];
      sub_22974B658();
      v141 = v138;

      v142 = v140;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
      sub_22953E5DC();
      sub_22A4DE03C();
      v143 = sub_22A4DD2EC();
      v144 = *(v143 + 48);
      v145 = *(v143 + 52);
      swift_allocObject();
      sub_22A4DD2DC();

      v146 = v165;
      sub_22A4DDD4C();

      sub_229590D18(v158, v166);

      v43 = v168;
LABEL_12:

      return;
    }

    while (1)
    {
      v169 = v94;
      v97 = v165;
      dispatch_group_enter(v165);
      v98 = swift_allocObject();
      v99 = v167;
      v98[2] = v167;
      v98[3] = v95;
      v98[4] = v164;
      v98[5] = v97;
      v98[6] = v172;
      v100 = v99;
      v101 = v95;

      v102 = v97;
      v103 = [v101 home];
      v104 = [v103 ecosystem];

      v105 = [v104 vendor];
      LODWORD(v104) = [v105 isAppleVendor];

      if (v104)
      {
        v155 = v100;
        v106 = [v101 home];
        v107 = [v106 ecosystem];

        v108 = [v107 rootPublicKey];
        v109 = sub_22A4DB62C();
        v111 = v110;

        if (v111 >> 60 == 15)
        {
          if (v166 >> 60 == 15)
          {
            sub_2295AEF1C(v158, v166);
            sub_229590D18(v109, v111);
            v112 = v155;
LABEL_52:
            v119 = v171;
            sub_2296F8604();
            v120 = v112;
            v101 = v101;
            v121 = sub_22A4DD05C();
            v122 = sub_22A4DDCCC();

            LODWORD(v155) = v122;
            if (os_log_type_enabled(v121, v122))
            {
              v123 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              v178 = v150;
              *v123 = v151;
              *&aBlock = 91;
              *(&aBlock + 1) = 0xE100000000000000;
              v124 = [v120 logIdentifier];
              v148 = v121;
              v125 = v124;
              v126 = sub_22A4DD5EC();
              v128 = v127;

              MEMORY[0x22AAD08C0](v126, v128);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v129 = sub_2295A3E30(aBlock, *(&aBlock + 1), &v178);

              *(v123 + 4) = v129;
              *(v123 + 12) = 2112;
              *(v123 + 14) = v101;
              v130 = v149;
              *v149 = v95;
              v131 = v101;
              v132 = v148;
              _os_log_impl(&dword_229538000, v148, v155, "%s Pairing is from apple ecosystem, removing accessory from HomeKit: %@", v123, 0x16u);
              sub_22953EAE4(v130, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v130, -1, -1);
              v133 = v150;
              __swift_destroy_boxed_opaque_existential_0(v150);
              MEMORY[0x22AAD4E50](v133, -1, -1);
              MEMORY[0x22AAD4E50](v123, -1, -1);

              v134 = v171;
            }

            else
            {

              v134 = v119;
            }

            v154(v134, v162);
            v176 = sub_22979CD4C;
            v177 = v98;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v175 = sub_2295AAF60;
            *(&v175 + 1) = &block_descriptor_28;
            v116 = _Block_copy(&aBlock);
            v115 = v163;

            [v168 handleRemoveAccessory:v115 completion:v116];
            goto LABEL_49;
          }

LABEL_47:
          v113 = v158;
          v114 = v166;
          sub_2295AEF1C(v158, v166);
          sub_229590D18(v109, v111);
          sub_229590D18(v113, v114);
          goto LABEL_48;
        }

        if (v166 >> 60 == 15)
        {
          goto LABEL_47;
        }

        v117 = v166;
        v118 = v158;
        sub_2295AEF1C(v158, v166);
        sub_22956C148(v109, v111);
        LODWORD(v150) = sub_2297B7550(v109, v111, v118, v117);
        sub_229590D18(v118, v117);
        sub_2295798D4(v109, v111);
        sub_229590D18(v109, v111);
        v112 = v155;
        if (v150)
        {
          goto LABEL_52;
        }
      }

LABEL_48:
      v115 = [v101 chipPluginPairing];
      v176 = sub_22979CD4C;
      v177 = v98;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v175 = sub_2295AAF60;
      *(&v175 + 1) = &block_descriptor_25_1;
      v116 = _Block_copy(&aBlock);

      [v170 removePairing:v115 completionHandler:v116];
LABEL_49:
      v44 = v160;

      _Block_release(v116);
      v85 = v93;
      v86 = v169;
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_40:
      v96 = sub_22A4DE12C();
      if (v96)
      {
        v178 = v96;
        swift_dynamicCast();
        v95 = aBlock;
        v93 = v85;
        v94 = v86;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_56;
    }
  }

  while (1)
  {
    v93 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v93 >= v90)
    {
      goto LABEL_56;
    }

    v92 = *(v83 + 8 * v93);
    ++v91;
    if (v92)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
}

void sub_22979A8B4(void *a1, void *a2, void *a3, os_unfair_lock_s *a4, NSObject *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  if (a1)
  {
    v63 = a4;
    v18 = a1;
    sub_2296F8604();
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v62 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v60 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v61 = v28;
      *v25 = 136315650;
      v65 = 91;
      v66 = 0xE100000000000000;
      v67 = v28;
      v29 = [v20 logIdentifier];
      v30 = a5;
      v31 = sub_22A4DD5EC();
      v64 = v11;
      v33 = v32;

      v59 = v22;
      v34 = v31;
      a5 = v30;
      MEMORY[0x22AAD08C0](v34, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v65, v66, &v67);

      *(v25 + 4) = v35;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v21;
      *v27 = v21;
      *(v25 + 22) = 2112;
      v36 = a1;
      v37 = v21;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v38;
      v27[1] = v38;
      v39 = v59;
      _os_log_impl(&dword_229538000, v59, v60, "%s Failed to remove chip accessory from HomeKit: %@ with error: %@", v25, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      v40 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);

      (*(v64 + 8))(v17, v62);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v57 = v63;
    os_unfair_lock_lock(v63 + 4);
    LOBYTE(v57[5]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v57 + 4);
  }

  else
  {
    v64 = v11;
    sub_2296F8604();
    v41 = a2;
    v42 = a3;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCCC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = a5;
      v46 = v45;
      v47 = swift_slowAlloc();
      v62 = v10;
      v48 = v47;
      v49 = swift_slowAlloc();
      *v46 = 136315394;
      v65 = 91;
      v66 = 0xE100000000000000;
      v67 = v49;
      v50 = [v41 logIdentifier];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(v65, v66, &v67);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v42;
      *v48 = v42;
      v55 = v42;
      _os_log_impl(&dword_229538000, v43, v44, "%s Successfully removed chip accessory from HomeKit: %@", v46, 0x16u);
      sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      v56 = v46;
      a5 = v63;
      MEMORY[0x22AAD4E50](v56, -1, -1);

      (*(v64 + 8))(v15, v62);
    }

    else
    {

      (*(v64 + 8))(v15, v10);
    }
  }

  dispatch_group_leave(a5);
}

void sub_22979ADDC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  os_unfair_lock_lock((a1 + 16));
  v14 = *(a1 + 20);
  os_unfair_lock_unlock((a1 + 16));
  if (v14)
  {
    sub_2296F8604();
    v15 = a2;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v40 = 91;
      v41 = 0xE100000000000000;
      v42 = v19;
      v20 = [v15 logIdentifier];
      v21 = sub_22A4DD5EC();
      v39 = v6;
      v22 = a3;
      v24 = v23;

      MEMORY[0x22AAD08C0](v21, v24);
      a3 = v22;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v25 = sub_2295A3E30(v40, v41, &v42);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_229538000, v16, v17, "%s Failed to remove some matter pairings", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v7 + 8))(v11, v39);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v37 = [objc_opt_self() hmErrorWithCode_];
    v38 = sub_22A4DB3DC();

    [a3 respondWithError_];
  }

  else
  {
    sub_2296F8604();
    v26 = a2;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      v40 = 91;
      v41 = 0xE100000000000000;
      v42 = v30;
      v31 = [v26 logIdentifier];
      v32 = sub_22A4DD5EC();
      v39 = v6;
      v33 = a3;
      v35 = v34;

      MEMORY[0x22AAD08C0](v32, v35);
      a3 = v33;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v36 = sub_2295A3E30(v40, v41, &v42);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_229538000, v27, v28, "%s Successfully removed all matter pairings", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      (*(v7 + 8))(v13, v39);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    [a3 respondWithSuccess];
  }
}

void sub_22979B218(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 accessory];
  if (!v14)
  {
LABEL_6:
    if (a2)
    {
      v54 = [objc_opt_self() hmErrorWithCode_];
      a2();
      v20 = v54;
    }

    return;
  }

  v15 = v14;
  v54 = [v14 home];
  if (!v54)
  {

    goto LABEL_6;
  }

  v47 = v13;
  v48 = v10;
  v49 = v9;
  v50 = a3;
  v52 = v15;
  v53 = a2;
  v46 = ObjectType;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    sub_22A4DDBAC();
    a1 = v57[2];
    v16 = v57[3];
    v18 = v57[4];
    v17 = v57[5];
    v19 = v57[6];
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(a1 + 56);

    v17 = 0;
  }

  v51 = v18;
  v24 = (v18 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v25 = v17;
  v26 = v19;
  v27 = v17;
  if (v19)
  {
LABEL_19:
    v28 = (v26 - 1) & v26;
    v29 = *(*(a1 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (v29)
    {
      while (1)
      {
        v55 = v29;
        sub_22979B738(&v55, v54);
        if (v31)
        {
          break;
        }

        v17 = v27;
        v19 = v28;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_21:
        v30 = sub_22A4DE12C();
        if (v30)
        {
          v57[0] = v30;
          sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
          swift_dynamicCast();
          v29 = v55;
          v27 = v17;
          v28 = v19;
          if (v55)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      sub_22953EE84();
      v33 = v47;
      sub_2296F8604();
      v34 = v4;
      v35 = sub_22A4DD05C();
      v36 = sub_22A4DDCEC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 136315138;
        v55 = 91;
        v56 = 0xE100000000000000;
        v57[0] = v38;
        v39 = [v34 logIdentifier];
        v40 = sub_22A4DD5EC();
        v42 = v41;

        MEMORY[0x22AAD08C0](v40, v42);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v43 = sub_2295A3E30(v55, v56, v57);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_229538000, v35, v36, "%s System commissioner is unsupported on this platform", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x22AAD4E50](v38, -1, -1);
        MEMORY[0x22AAD4E50](v37, -1, -1);
      }

      (*(v48 + 8))(v33, v49);
      v44 = v53;
      if (v53)
      {
        v45 = [objc_opt_self() hmErrorWithCode_];
        v44();
      }
    }

    else
    {
LABEL_26:
      sub_22953EE84();
      v32 = v52;
      if (v53)
      {
        (v53)(0);
      }
    }
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_26;
      }

      v26 = *(v16 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

void sub_22979B738(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 home];
  v5 = [v4 ecosystem];

  v6 = [v5 vendor];
  LODWORD(v5) = [v6 isSystemCommissionerVendor];

  if (!v5)
  {
    return;
  }

  v7 = [v3 home];
  v8 = [v7 ecosystem];

  v9 = [v8 rootPublicKey];
  v10 = sub_22A4DB62C();
  v12 = v11;
  v13 = [a2 homeManager];
  if (!v13)
  {

    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v13 accessoryBrowser];

  if (!v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v15 chipAccessoryServerBrowser];
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v17 = [v16 systemCommissionerFabricRootPublicKey];
  if (!v17)
  {
LABEL_9:
    v18 = 0;
    v20 = 0xF000000000000000;
    goto LABEL_10;
  }

  v18 = sub_22A4DB62C();
  v20 = v19;

LABEL_10:
  if (v12 >> 60 == 15)
  {
    if (v20 >> 60 == 15)
    {
      sub_229590D18(v10, v12);
      return;
    }

    goto LABEL_14;
  }

  if (v20 >> 60 == 15)
  {
LABEL_14:
    sub_229590D18(v10, v12);
    sub_229590D18(v18, v20);
    return;
  }

  sub_22956C148(v10, v12);
  sub_2295AEF1C(v18, v20);
  sub_2297B7550(v10, v12, v18, v20);
  sub_229590D18(v18, v20);
  sub_229590D18(v18, v20);
  sub_2295798D4(v10, v12);
  sub_229590D18(v10, v12);
}