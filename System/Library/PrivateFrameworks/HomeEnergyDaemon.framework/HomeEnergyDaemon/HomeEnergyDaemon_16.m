uint64_t sub_22B2B131C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *(*v1 + 464);
  v5 = *(*v1 + 456);
  v6 = *v1;
  *(*v1 + 480) = v0;

  sub_22B12F174(v5, v4);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_22B2B2ACC;
  }

  else
  {
    v8 = sub_22B2B1484;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2B1484()
{
  v66 = v0;
  v1 = *(v0 + 272);
  if ((sub_22B36005C() & 1) == 0)
  {
    v2 = *(v0 + 360);
    goto LABEL_7;
  }

  v2 = *(v0 + 360);
  *(v0 + 488) = v2;
  v3 = *(v0 + 272);
  v4 = sub_22B36006C();
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      sub_22B12F174(v4, v5);
      if (v14 != v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_22B12F174(v4, v5);
    }

LABEL_7:
    *(v0 + 592) = v2;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v8 = swift_task_alloc();
    *(v0 + 600) = v8;
    *v8 = v0;
    v8[1] = sub_22B2B2754;
    v9 = *(v0 + 296);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);

    return sub_22B17877C(v11, v10, 0, 0xC000000000000000, v9);
  }

  if (v6)
  {
    v15 = v4;
    sub_22B12F174(v4, v5);
    if (v15 != v15 >> 32)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v7 = v5;
  sub_22B12F174(v4, v5);
  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (sub_22B360BFC())
  {
    v16 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);
    v22 = *(v0 + 280);
    v61 = *(v0 + 272);
    v63 = *(v0 + 400);
    v23 = *(v0 + 248);
    v24 = *(v0 + 256);
    v59 = v23;
    v60 = *(v0 + 392);
    v25 = *(v0 + 192);
    v26 = *(v0 + 152);
    if (v19)
    {
      v58 = *(v0 + 296);
      v27 = swift_slowAlloc();
      v57 = v22;
      v28 = swift_slowAlloc();
      v65 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_22B1A7B20(0xD00000000000005CLL, 0x800000022B36DAF0, &v65);
      *(v27 + 12) = 2048;
      *(v27 + 14) = 323;
      _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Task is cancelled at marker %s:%ld", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);

      v60(v25, v26);
      (*(v24 + 8))(v61, v59);
      (*(v21 + 8))(v58, v57);
    }

    else
    {

      v60(v25, v26);
      (*(v24 + 8))(v61, v59);
      (*(v21 + 8))(v20, v22);
    }

    v47 = *(v0 + 296);
    v49 = *(v0 + 264);
    v48 = *(v0 + 272);
    v51 = *(v0 + 232);
    v50 = *(v0 + 240);
    v53 = *(v0 + 200);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v62 = *(v0 + 176);
    v64 = *(v0 + 168);

    v56 = *(v0 + 8);

    return v56(v2);
  }

  else
  {
    v30 = *(v0 + 312);
    v29 = *(v0 + 320);
    v31 = *(v0 + 616);
    v32 = *(v0 + 272);
    v33 = *(v0 + 232);
    v34 = *(v0 + 216);
    v35 = sub_22B36006C();
    v37 = v36;
    *(v0 + 496) = v35;
    *(v0 + 504) = v36;
    v30(v33, v31, v34);
    v38 = *(MEMORY[0x277D18240] + 4);
    v39 = swift_task_alloc();
    *(v0 + 512) = v39;
    *v39 = v0;
    v39[1] = sub_22B2B1924;
    v40 = *(v0 + 304);
    v41 = *(v0 + 264);
    v42 = *(v0 + 232);
    v43 = *(v0 + 80);
    v44 = *(v0 + 48);
    v45 = *(v0 + 56);
    v46 = *(v0 + 40);

    return MEMORY[0x282172608](v41, v46, v44, v45, v42, v35, v37, v43);
  }
}

uint64_t sub_22B2B1924()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = v2[44];
  v6 = v2[43];
  v7 = v2[29];
  v8 = v2[27];
  v9 = v2[18];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_22B2B2BF0;
  }

  else
  {
    v10 = sub_22B2B1AA8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2B1AA8()
{
  (*(*(v0 + 256) + 40))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  v1 = sub_22B36007C();
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 488);

  v5 = v3 + v2;
  *(v0 + 528) = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 184), *(v0 + 368), *(v0 + 152));
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = v5;
      _os_log_impl(&dword_22B116000, v7, v8, "[Dropbox] Received %{public}ld records for UsageSummary in this session", v9, 0xCu);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v11 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = *(v0 + 272);
    v13 = *(v0 + 184);
    v14 = *(v0 + 152);

    v11(v13, v14);
    v15 = sub_22B36007C();
    *(v0 + 536) = v15;
    v16 = swift_task_alloc();
    *(v0 + 544) = v16;
    *v16 = v0;
    v16[1] = sub_22B2B1C7C;
    v17 = *(v0 + 424);
    v18 = *(v0 + 128);
    v19 = *(v0 + 136);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);

    return sub_22B1D59F4(v15, v22, v20, v21, v18, v19);
  }

  return result;
}

uint64_t sub_22B2B1C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  v6 = *(v2 + 144);

  if (v0)
  {
    v7 = sub_22B2B2D24;
  }

  else
  {

    v7 = sub_22B2B1DE4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B2B1DE4()
{
  v1 = *(v0 + 272);
  if ((sub_22B36005C() & 1) == 0)
  {
    sub_22B12F174(*(v0 + 496), *(v0 + 504));
LABEL_19:
    *(v0 + 592) = *(v0 + 528);
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v31 = swift_task_alloc();
    *(v0 + 600) = v31;
    *v31 = v0;
    v31[1] = sub_22B2B2754;
    v32 = *(v0 + 296);
    v33 = *(v0 + 96);
    v34 = *(v0 + 88);
    v35 = 0;
    v36 = 0xC000000000000000;
    goto LABEL_22;
  }

  v2 = *(v0 + 272);
  v3 = sub_22B36006C();
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      sub_22B12F174(v3, v4);
      goto LABEL_15;
    }

    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    sub_22B12F174(v3, v4);
    if (v7 == v8)
    {
LABEL_15:
      v28 = *(v0 + 384);
      (*(v0 + 376))(*(v0 + 176), *(v0 + 368), *(v0 + 152));
      v17 = sub_22B36050C();
      v18 = sub_22B360D1C();
      v29 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 496);
      v20 = *(v0 + 504);
      v23 = *(v0 + 392);
      v30 = *(v0 + 400);
      v24 = *(v0 + 176);
      v25 = *(v0 + 152);
      if (v29)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "[Dropbox] Error: Response indicates more to come, however offset is empty";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v5)
  {
    v9 = v3;
    sub_22B12F174(v3, v4);
    if (v9 == v9 >> 32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = v4;
    sub_22B12F174(v3, v4);
    if ((v6 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = *(v0 + 496);
  v10 = *(v0 + 504);
  v12 = *(v0 + 272);
  v13 = sub_22B36006C();
  v15 = v14;
  LOBYTE(v10) = sub_22B2E77BC(v13, v14, v11, v10);
  sub_22B12F174(v13, v15);
  if (v10)
  {
    v16 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 168), *(v0 + 368), *(v0 + 152));
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 496);
    v20 = *(v0 + 504);
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);
    v24 = *(v0 + 168);
    v25 = *(v0 + 152);
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "[Dropbox] Error: Response indicates more to come, however offset is same as previous";
LABEL_17:
      _os_log_impl(&dword_22B116000, v17, v18, v27, v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

LABEL_18:
    sub_22B12F174(v21, v20);

    v23(v24, v25);
    goto LABEL_19;
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 272);
  v39 = sub_22B36006C();
  v41 = v40;
  *(v0 + 560) = v39;
  *(v0 + 568) = v40;
  v42 = swift_task_alloc();
  *(v0 + 576) = v42;
  *v42 = v0;
  v42[1] = sub_22B2B2160;
  v33 = *(v0 + 96);
  v32 = *(v0 + 56);
  v34 = *(v0 + 88);
  v35 = v39;
  v36 = v41;
LABEL_22:

  return sub_22B17877C(v34, v33, v35, v36, v32);
}

uint64_t sub_22B2B2160()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = v2[71];
  v6 = v2[70];
  v7 = v2[18];
  sub_22B12F174(v6, v5);
  if (v0)
  {
    v8 = sub_22B2B2E58;
  }

  else
  {
    v8 = sub_22B2B22BC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2B22BC()
{
  v67 = v0;
  v1 = *(v0 + 272);
  sub_22B12F174(*(v0 + 496), *(v0 + 504));
  v2 = sub_22B36005C();
  v3 = *(v0 + 528);
  if ((v2 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(v0 + 488) = v3;
  v4 = *(v0 + 272);
  v5 = sub_22B36006C();
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_22B12F174(v5, v6);
      goto LABEL_14;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_22B12F174(v5, v6);
LABEL_9:
    if (v10 != v9)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v0 + 592) = v3;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v25 = swift_task_alloc();
    *(v0 + 600) = v25;
    *v25 = v0;
    v25[1] = sub_22B2B2754;
    v26 = *(v0 + 296);
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);

    return sub_22B17877C(v28, v27, 0, 0xC000000000000000, v26);
  }

  if (v7)
  {
    v11 = v5;
    sub_22B12F174(v5, v6);
    v10 = v11;
    v9 = v11 >> 32;
    goto LABEL_9;
  }

  v8 = v6;
  sub_22B12F174(v5, v6);
  if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (sub_22B360BFC())
  {
    v12 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 280);
    v62 = *(v0 + 272);
    v64 = *(v0 + 400);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v60 = v19;
    v61 = *(v0 + 392);
    v21 = *(v0 + 192);
    v22 = *(v0 + 152);
    if (v15)
    {
      v59 = *(v0 + 296);
      v23 = swift_slowAlloc();
      v58 = v18;
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_22B1A7B20(0xD00000000000005CLL, 0x800000022B36DAF0, &v66);
      *(v23 + 12) = 2048;
      *(v23 + 14) = 323;
      _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox] Task is cancelled at marker %s:%ld", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);

      v61(v21, v22);
      (*(v20 + 8))(v62, v60);
      (*(v17 + 8))(v59, v58);
    }

    else
    {

      v61(v21, v22);
      (*(v20 + 8))(v62, v60);
      (*(v17 + 8))(v16, v18);
    }

    v48 = *(v0 + 296);
    v50 = *(v0 + 264);
    v49 = *(v0 + 272);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v54 = *(v0 + 200);
    v53 = *(v0 + 208);
    v56 = *(v0 + 184);
    v55 = *(v0 + 192);
    v63 = *(v0 + 176);
    v65 = *(v0 + 168);

    v57 = *(v0 + 8);

    return v57(v3);
  }

  else
  {
    v31 = *(v0 + 312);
    v30 = *(v0 + 320);
    v32 = *(v0 + 616);
    v33 = *(v0 + 272);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v36 = sub_22B36006C();
    v38 = v37;
    *(v0 + 496) = v36;
    *(v0 + 504) = v37;
    v31(v34, v32, v35);
    v39 = *(MEMORY[0x277D18240] + 4);
    v40 = swift_task_alloc();
    *(v0 + 512) = v40;
    *v40 = v0;
    v40[1] = sub_22B2B1924;
    v41 = *(v0 + 304);
    v42 = *(v0 + 264);
    v43 = *(v0 + 232);
    v44 = *(v0 + 80);
    v45 = *(v0 + 48);
    v46 = *(v0 + 56);
    v47 = *(v0 + 40);

    return MEMORY[0x282172608](v42, v47, v45, v46, v43, v36, v38, v44);
  }
}

uint64_t sub_22B2B2754()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_22B2B2F8C;
  }

  else
  {
    v6 = sub_22B2B2880;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B2880()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[74];

  v14 = v0[1];

  return v14(v17);
}

uint64_t sub_22B2B29A8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[56];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2B2ACC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[60];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2B2BF0()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[62], v0[63]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v19 = v0[21];
  v20 = v0[65];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2B2D24()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[62], v0[63]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v19 = v0[21];
  v20 = v0[69];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2B2E58()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[62], v0[63]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v19 = v0[21];
  v20 = v0[73];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2B2F8C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[76];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2B30B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[313] = v8;
  v9[312] = a8;
  v9[311] = a7;
  v9[310] = a6;
  v9[309] = a5;
  v9[308] = a4;
  v9[307] = a3;
  v9[306] = a2;
  v9[305] = a1;
  v10 = sub_22B36033C();
  v9[314] = v10;
  v11 = *(v10 - 8);
  v9[315] = v11;
  v12 = *(v11 + 64) + 15;
  v9[316] = swift_task_alloc();
  v9[317] = swift_task_alloc();
  v13 = sub_22B3602FC();
  v9[318] = v13;
  v14 = *(v13 - 8);
  v9[319] = v14;
  v15 = *(v14 + 64) + 15;
  v9[320] = swift_task_alloc();
  v16 = sub_22B35DE9C();
  v9[321] = v16;
  v17 = *(v16 - 8);
  v9[322] = v17;
  v18 = *(v17 + 64) + 15;
  v9[323] = swift_task_alloc();
  v9[324] = swift_task_alloc();
  v19 = sub_22B36052C();
  v9[325] = v19;
  v20 = *(v19 - 8);
  v9[326] = v20;
  v21 = *(v20 + 64) + 15;
  v9[327] = swift_task_alloc();
  v9[328] = swift_task_alloc();
  v9[329] = swift_task_alloc();
  v9[330] = swift_task_alloc();
  v9[331] = swift_task_alloc();
  v9[332] = swift_task_alloc();
  v9[333] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2B3304, v8, 0);
}

uint64_t sub_22B2B3304()
{
  v178 = v0;
  v1 = *(v0 + 2504);
  if (*(v1 + 113) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 2664);
    v3 = *(v0 + 2608);
    v4 = *(v0 + 2600);
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v6 = *(v3 + 16);
    v6(v2, v5, v4);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v175 = (v0 + 2432);
    v10 = *(v0 + 2664);
    v11 = *(v0 + 2656);
    v12 = *(v0 + 2608);
    v13 = *(v0 + 2600);

    v14 = *(v12 + 8);
    v14(v10, v13);
    v6(v11, v5, v13);
    v15 = sub_22B36050C();
    v16 = sub_22B360D2C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v15, v16, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v18 = *(v0 + 2656);
    v19 = *(v0 + 2608);
    v20 = *(v0 + 2600);

    v14(v18, v20);
    sub_22B134CDC();
    v21 = swift_allocError();
    *v22 = 27;
    swift_willThrow();
    v23 = *(v0 + 2560);
    v24 = *(v0 + 2544);
    *(v0 + 2432) = v21;
    v25 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v26 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
      if (v26 == *MEMORY[0x277D182B8])
      {
        v27 = *(v0 + 2560);
        v28 = *(v0 + 2536);
        v29 = *(v0 + 2528);
        v30 = *(v0 + 2520);
        v31 = *(v0 + 2512);
        (*(*(v0 + 2552) + 96))(v27, *(v0 + 2544));
        (*(v30 + 32))(v28, v27, v31);
        (*(v30 + 16))(v29, v28, v31);
        v32 = (*(v30 + 88))(v29, v31);
        if (v32 == *MEMORY[0x277D18310])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v33 = 0;
        }

        else if (v32 == *MEMORY[0x277D18308])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v33 = 1;
        }

        else if (v32 == *MEMORY[0x277D18318])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v33 = 2;
        }

        else if (v32 == *MEMORY[0x277D18300])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v33 = 3;
        }

        else
        {
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v99 = *(v0 + 2648);
          v100 = *(v0 + 2608);
          v101 = *(v0 + 2600);
          v102 = *(v0 + 2464);
          v103 = __swift_project_value_buffer(v101, qword_28140BD10);
          swift_beginAccess();
          (*(v100 + 16))(v99, v103, v101);

          v104 = sub_22B36050C();
          v105 = sub_22B360D1C();

          v106 = os_log_type_enabled(v104, v105);
          v107 = *(v0 + 2648);
          v108 = *(v0 + 2608);
          v109 = *(v0 + 2600);
          v110 = *(v0 + 2536);
          v111 = *(v0 + 2520);
          v112 = *(v0 + 2512);
          if (v106)
          {
            v169 = *(v0 + 2648);
            v173 = *(v0 + 2512);
            v113 = *(v0 + 2464);
            v114 = *(v0 + 2456);
            v165 = *(v0 + 2600);
            v115 = swift_slowAlloc();
            v167 = v110;
            v116 = swift_slowAlloc();
            v177[0] = v116;
            *v115 = 136446210;
            *(v115 + 4) = sub_22B1A7B20(v114, v113, v177);
            _os_log_impl(&dword_22B116000, v104, v105, "[Dropbox] Unknown internal error %{public}s", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v116);
            MEMORY[0x23188F650](v116, -1, -1);
            MEMORY[0x23188F650](v115, -1, -1);

            (*(v108 + 8))(v169, v165);
            v117 = *(v111 + 8);
            v117(v167, v173);
          }

          else
          {

            (*(v108 + 8))(v107, v109);
            v117 = *(v111 + 8);
            v117(v110, v112);
          }

          v117(*(v0 + 2528), *(v0 + 2512));
          v33 = 4;
        }

        v56 = 0;
        v55 = 0;
        v57 = 1;
        v58 = 4;
        goto LABEL_64;
      }

      if (v26 == *MEMORY[0x277D182A8])
      {
        v54 = *(v0 + 2560);
        (*(*(v0 + 2552) + 96))(v54, *(v0 + 2544));
        v55 = *v54;

        v56 = 0;
        v57 = 0;
        v58 = 5;
LABEL_63:
        v33 = 4;
LABEL_64:
        if ((*(*(v0 + 2504) + 115) & 1) == 0)
        {
          v132 = *(v0 + 2496);
          v133 = *(v0 + 2488);
          LOBYTE(v177[0]) = 0;
          *(v0 + 1824) = v55;
          *(v0 + 1832) = v57;
          *(v0 + 1840) = 0u;
          *(v0 + 1856) = 0u;
          *(v0 + 1872) = 2;
          *(v0 + 1880) = v133;
          *(v0 + 1888) = v132;
          *(v0 + 1896) = 0;
          *(v0 + 1904) = 1;
          *(v0 + 1912) = 0;
          *(v0 + 1920) = 1;
          *(v0 + 1928) = 0;
          *(v0 + 1936) = 1;
          *(v0 + 1944) = 0;
          *(v0 + 1952) = 0;
          *(v0 + 1960) = v58;
          *(v0 + 1968) = 0;
          *(v0 + 1976) = v33;
          v134 = v177[0];
          *(v0 + 1984) = v177[0];
          *(v0 + 1656) = v55;
          *(v0 + 1664) = v57;
          *(v0 + 1672) = 0u;
          *(v0 + 1688) = 0u;
          *(v0 + 1704) = 2;
          *(v0 + 1712) = v133;
          *(v0 + 1720) = v132;
          *(v0 + 1728) = 0;
          *(v0 + 1736) = 1;
          *(v0 + 1744) = 0;
          *(v0 + 1752) = 1;
          *(v0 + 1760) = 0;
          *(v0 + 1768) = 1;
          *(v0 + 1776) = 0;
          *(v0 + 1784) = 0;
          *(v0 + 1792) = v58;
          *(v0 + 1800) = 0;
          *(v0 + 1808) = v33;
          *(v0 + 1816) = v134;

          sub_22B2556F4(v0 + 1824, v0 + 1992);
          sub_22B2EC164(v0 + 1656);
          v135 = *(v0 + 1968);
          *(v0 + 1616) = *(v0 + 1952);
          *(v0 + 1632) = v135;
          *(v0 + 1648) = *(v0 + 1984);
          v136 = *(v0 + 1904);
          *(v0 + 1552) = *(v0 + 1888);
          *(v0 + 1568) = v136;
          v137 = *(v0 + 1936);
          *(v0 + 1584) = *(v0 + 1920);
          *(v0 + 1600) = v137;
          v138 = *(v0 + 1840);
          *(v0 + 1488) = *(v0 + 1824);
          *(v0 + 1504) = v138;
          v139 = *(v0 + 1872);
          *(v0 + 1520) = *(v0 + 1856);
          *(v0 + 1536) = v139;
          nullsub_1(v0 + 1488);
          type metadata accessor for EnergyKitAnalyticsEvent();
          v140 = swift_allocObject();
          sub_22B23E8B0(v0 + 1320);
          v141 = *(v0 + 1464);
          *(v0 + 1280) = *(v0 + 1448);
          *(v0 + 1296) = v141;
          v142 = *(v0 + 1400);
          *(v0 + 1216) = *(v0 + 1384);
          *(v0 + 1232) = v142;
          v143 = *(v0 + 1432);
          *(v0 + 1248) = *(v0 + 1416);
          *(v0 + 1264) = v143;
          v144 = *(v0 + 1336);
          *(v0 + 1152) = *(v0 + 1320);
          *(v0 + 1168) = v144;
          v145 = *(v0 + 1368);
          *(v0 + 1184) = *(v0 + 1352);
          *(v0 + 1200) = v145;
          v146 = *(v0 + 1584);
          *(v140 + 136) = *(v0 + 1600);
          v147 = *(v0 + 1632);
          *(v140 + 152) = *(v0 + 1616);
          *(v140 + 168) = v147;
          v148 = *(v0 + 1520);
          *(v140 + 72) = *(v0 + 1536);
          v149 = *(v0 + 1568);
          *(v140 + 88) = *(v0 + 1552);
          *(v140 + 104) = v149;
          *(v140 + 120) = v146;
          v150 = *(v0 + 1504);
          *(v140 + 24) = *(v0 + 1488);
          *(v140 + 40) = v150;
          *(v140 + 16) = 5;
          *(v0 + 1312) = *(v0 + 1480);
          *(v140 + 184) = *(v0 + 1648);
          *(v140 + 56) = v148;
          sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
          sub_22B1A81C0(v140);

          if (v56)
          {
            v151 = [objc_opt_self() processInfo];
            v152 = [v151 processName];

            v153 = sub_22B36084C();
            v155 = v154;

            LOWORD(v177[0]) = 258;
            BYTE2(v177[0]) = 18;
            v177[1] = v153;
            v177[2] = v155;
            v177[3] = 0;
            static AutoBugCaptureManager.sendIssue(_:)(v177);
          }
        }

        v156 = *(v0 + 2664);
        v157 = *(v0 + 2656);
        v158 = *(v0 + 2648);
        v159 = *(v0 + 2640);
        v160 = *(v0 + 2632);
        v161 = *(v0 + 2624);
        v162 = *(v0 + 2616);
        v166 = *(v0 + 2592);
        v168 = *(v0 + 2584);
        v170 = *(v0 + 2560);
        v174 = *(v0 + 2536);
        v176 = *(v0 + 2528);
        swift_willThrow();

        v163 = *(v0 + 8);

        return v163();
      }

      if (v26 == *MEMORY[0x277D182D0])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v59 = *(v0 + 2640);
        v60 = *(v0 + 2608);
        v61 = *(v0 + 2600);
        v62 = *(v0 + 2448);
        v63 = __swift_project_value_buffer(v61, qword_28140BD10);
        swift_beginAccess();
        (*(v60 + 16))(v59, v63, v61);

        v64 = sub_22B36050C();
        v65 = sub_22B360D1C();

        v66 = os_log_type_enabled(v64, v65);
        v67 = *(v0 + 2640);
        v68 = *(v0 + 2608);
        v69 = *(v0 + 2600);
        if (v66)
        {
          v70 = *(v0 + 2448);
          v71 = *(v0 + 2440);
          v72 = swift_slowAlloc();
          v171 = v67;
          v73 = swift_slowAlloc();
          v177[0] = v73;
          *v72 = 136446210;
          *(v72 + 4) = sub_22B1A7B20(v71, v70, v177);
          _os_log_impl(&dword_22B116000, v64, v65, "[Dropbox] Failed CK Token %{public}s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x23188F650](v73, -1, -1);
          MEMORY[0x23188F650](v72, -1, -1);

          (*(v68 + 8))(v171, v69);
        }

        else
        {

          (*(v68 + 8))(v67, v69);
        }

        v58 = 0;
        v55 = 0;
        v56 = 1;
LABEL_38:
        v33 = 4;
        v57 = 1;
        goto LABEL_64;
      }

      if (v26 == *MEMORY[0x277D182E0])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2624);
        v75 = *(v0 + 2608);
        v76 = *(v0 + 2600);
        v77 = __swift_project_value_buffer(v76, qword_28140BD10);
        swift_beginAccess();
        (*(v75 + 16))(v74, v77, v76);
        v78 = sub_22B36050C();
        v79 = sub_22B360D1C();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_22B116000, v78, v79, "[Dropbox] Re authentication required. Notify user", v80, 2u);
          MEMORY[0x23188F650](v80, -1, -1);
        }

        v81 = *(v0 + 2624);
        v82 = *(v0 + 2608);
        v83 = *(v0 + 2600);

        (*(v82 + 8))(v81, v83);
        v55 = 0;
        v56 = 1;
        v58 = 2;
        goto LABEL_38;
      }

      if (v26 == *MEMORY[0x277D182C8])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v84 = *(v0 + 2632);
        v85 = *(v0 + 2608);
        v86 = *(v0 + 2600);
        v87 = *(v0 + 2464);
        v88 = __swift_project_value_buffer(v86, qword_28140BD10);
        swift_beginAccess();
        (*(v85 + 16))(v84, v88, v86);

        v89 = sub_22B36050C();
        v90 = sub_22B360D1C();

        v91 = os_log_type_enabled(v89, v90);
        v92 = *(v0 + 2632);
        v93 = *(v0 + 2608);
        v94 = *(v0 + 2600);
        if (v91)
        {
          v95 = *(v0 + 2464);
          v96 = *(v0 + 2456);
          v97 = swift_slowAlloc();
          v172 = v92;
          v98 = swift_slowAlloc();
          v177[0] = v98;
          *v97 = 136446210;
          *(v97 + 4) = sub_22B1A7B20(v96, v95, v177);
          _os_log_impl(&dword_22B116000, v89, v90, "[Dropbox] Failed Refresh Token %{public}s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v98);
          MEMORY[0x23188F650](v98, -1, -1);
          MEMORY[0x23188F650](v97, -1, -1);

          (*(v93 + 8))(v172, v94);
        }

        else
        {

          (*(v93 + 8))(v92, v94);
        }

        v55 = 0;
        v56 = 1;
        v33 = 4;
        v58 = 1;
        v57 = 1;
        goto LABEL_64;
      }

      if (v26 == *MEMORY[0x277D18298])
      {

        v56 = 0;
        v55 = 0;
        v57 = 1;
        v58 = 3;
        goto LABEL_63;
      }

      (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v118 = *(v0 + 2616);
    v119 = *(v0 + 2608);
    v120 = *(v0 + 2600);
    v121 = __swift_project_value_buffer(v120, qword_28140BD10);
    swift_beginAccess();
    (*(v119 + 16))(v118, v121, v120);
    v122 = v21;
    v123 = sub_22B36050C();
    v124 = sub_22B360D1C();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v125 = 138543362;
      v127 = v21;
      v128 = _swift_stdlib_bridgeErrorToNSError();
      *(v125 + 4) = v128;
      *v126 = v128;
      _os_log_impl(&dword_22B116000, v123, v124, "[Dropbox] Error refreshing access token %{public}@", v125, 0xCu);
      sub_22B123284(v126, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v126, -1, -1);
      MEMORY[0x23188F650](v125, -1, -1);
    }

    v129 = *(v0 + 2616);
    v130 = *(v0 + 2608);
    v131 = *(v0 + 2600);

    (*(v130 + 8))(v129, v131);
    v56 = 0;
    v55 = 0;
    v57 = 1;
    v58 = 6;
    goto LABEL_63;
  }

  if ((*(v1 + 115) & 1) == 0)
  {
    v34 = *(v0 + 2496);
    v35 = *(v0 + 2488);
    LOBYTE(v177[0]) = 1;
    *(v0 + 816) = 0;
    *(v0 + 824) = 1;
    *(v0 + 832) = 0u;
    *(v0 + 848) = 0u;
    *(v0 + 864) = 2;
    *(v0 + 872) = v35;
    *(v0 + 880) = v34;
    *(v0 + 888) = 0;
    *(v0 + 896) = 1;
    *(v0 + 904) = 0;
    *(v0 + 912) = 1;
    *(v0 + 920) = 0;
    *(v0 + 928) = 1;
    *(v0 + 936) = 0;
    *(v0 + 944) = 0;
    *(v0 + 952) = 0;
    *(v0 + 960) = 1;
    *(v0 + 968) = 0;
    v36 = v177[0];
    *(v0 + 976) = v177[0];
    *(v0 + 648) = 0;
    *(v0 + 656) = 1;
    *(v0 + 664) = 0u;
    *(v0 + 680) = 0u;
    *(v0 + 696) = 2;
    *(v0 + 704) = v35;
    *(v0 + 712) = v34;
    *(v0 + 720) = 0;
    *(v0 + 728) = 1;
    *(v0 + 736) = 0;
    *(v0 + 744) = 1;
    *(v0 + 752) = 0;
    *(v0 + 760) = 1;
    *(v0 + 768) = 0;
    *(v0 + 776) = 0;
    *(v0 + 784) = 0;
    *(v0 + 792) = 1;
    *(v0 + 800) = 0;
    *(v0 + 808) = v36;

    sub_22B2556F4(v0 + 816, v0 + 984);
    sub_22B2EC164(v0 + 648);
    v37 = *(v0 + 960);
    *(v0 + 608) = *(v0 + 944);
    *(v0 + 624) = v37;
    *(v0 + 640) = *(v0 + 976);
    v38 = *(v0 + 896);
    *(v0 + 544) = *(v0 + 880);
    *(v0 + 560) = v38;
    v39 = *(v0 + 928);
    *(v0 + 576) = *(v0 + 912);
    *(v0 + 592) = v39;
    v40 = *(v0 + 832);
    *(v0 + 480) = *(v0 + 816);
    *(v0 + 496) = v40;
    v41 = *(v0 + 864);
    *(v0 + 512) = *(v0 + 848);
    *(v0 + 528) = v41;
    nullsub_1(v0 + 480);
    type metadata accessor for EnergyKitAnalyticsEvent();
    v42 = swift_allocObject();
    sub_22B23E8B0(v0 + 312);
    v43 = *(v0 + 456);
    *(v0 + 272) = *(v0 + 440);
    *(v0 + 288) = v43;
    v44 = *(v0 + 392);
    *(v0 + 208) = *(v0 + 376);
    *(v0 + 224) = v44;
    v45 = *(v0 + 424);
    *(v0 + 240) = *(v0 + 408);
    *(v0 + 256) = v45;
    v46 = *(v0 + 328);
    *(v0 + 144) = *(v0 + 312);
    *(v0 + 160) = v46;
    v47 = *(v0 + 360);
    *(v0 + 176) = *(v0 + 344);
    *(v0 + 192) = v47;
    v48 = *(v0 + 576);
    *(v42 + 136) = *(v0 + 592);
    v49 = *(v0 + 624);
    *(v42 + 152) = *(v0 + 608);
    *(v42 + 168) = v49;
    v50 = *(v0 + 512);
    *(v42 + 72) = *(v0 + 528);
    v51 = *(v0 + 560);
    *(v42 + 88) = *(v0 + 544);
    *(v42 + 104) = v51;
    *(v42 + 120) = v48;
    v52 = *(v0 + 496);
    *(v42 + 24) = *(v0 + 480);
    *(v42 + 40) = v52;
    *(v42 + 16) = 6;
    *(v0 + 304) = *(v0 + 472);
    *(v42 + 184) = *(v0 + 640);
    *(v42 + 56) = v50;
    sub_22B123284(v0 + 144, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v42);
  }

  *(v0 + 2672) = sub_22B36012C();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v53 = qword_28140BDD8;
  *(v0 + 2680) = qword_28140BDD8;

  return MEMORY[0x2822009F8](sub_22B2B45FC, v53, 0);
}

uint64_t sub_22B2B45FC()
{
  v1 = *(v0[335] + 120);
  v0[336] = v1;
  v2 = *(MEMORY[0x277D181C0] + 4);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[337] = v4;
  *v4 = v0;
  v4[1] = sub_22B2B46C0;
  v5 = v0[334];
  v6 = v0[312];
  v7 = v0[311];
  v8 = v0[308];
  v9 = v0[307];

  return MEMORY[0x2821724E8](v9, v8, v7, v6, v3);
}

uint64_t sub_22B2B46C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2696);
  v9 = *v2;
  *(v3 + 2704) = a1;
  *(v3 + 2712) = v1;

  if (v1)
  {
    v5 = *(v3 + 2504);
    v6 = sub_22B2B5808;
  }

  else
  {
    v7 = *(v3 + 2680);

    v6 = sub_22B2B47EC;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B47EC()
{
  v1 = v0[313];
  v2 = *(v0[335] + 120);
  v0[340] = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_22B2B4864, v1, 0);
}

uint64_t sub_22B2B4864()
{
  v1 = v0[340];
  v0[2] = v0;
  v0[3] = sub_22B2B497C;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[341] = v3;
  v0[277] = v3;
  v0[274] = v2;
  v0[270] = MEMORY[0x277D85DD0];
  v0[271] = 1107296256;
  v0[272] = sub_22B30F28C;
  v0[273] = &block_descriptor_111;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B2B497C()
{
  v1 = *(*v0 + 2504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2B4A70, v1, 0);
}

uint64_t sub_22B2B4A70()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2592);
  v3 = *(v0 + 2584);
  v4 = *(v0 + 2576);
  v5 = *(v0 + 2568);

  sub_22B35DE6C();
  sub_22B36017C();
  sub_22B35DDCC();
  v6 = *(v4 + 8);
  *(v0 + 2736) = v6;
  *(v0 + 2744) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  *(v0 + 2752) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B364620;
  *(v7 + 32) = 0x6F54737365636361;
  *(v7 + 40) = 0xEB000000006E656BLL;
  v8 = sub_22B36015C();
  v9 = MEMORY[0x277D837D0];
  *(v7 + 48) = v8;
  *(v7 + 56) = v10;
  *(v7 + 72) = v9;
  strcpy((v7 + 80), "refreshToken");
  *(v7 + 93) = 0;
  *(v7 + 94) = -5120;
  *(v7 + 96) = sub_22B36016C();
  *(v7 + 104) = v11;
  *(v7 + 120) = v9;
  *(v7 + 128) = 0xD000000000000019;
  *(v7 + 136) = 0x800000022B36CE80;
  *(v7 + 168) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 144));
  v13 = *(v4 + 16);
  *(v0 + 2760) = v13;
  *(v0 + 2768) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(boxed_opaque_existential_1, v2, v5);
  v14 = sub_22B321AAC(v7);
  *(v0 + 2776) = v14;
  swift_setDeallocating();
  *(v0 + 2784) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v15 = swift_task_alloc();
  *(v0 + 2792) = v15;
  *v15 = v0;
  v15[1] = sub_22B2B4CD0;
  v16 = *(v0 + 2680);
  v17 = *(v0 + 2480);
  v18 = *(v0 + 2472);

  return sub_22B2244D0(v18, v17, v14);
}

uint64_t sub_22B2B4CD0(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2792);
  v6 = *v2;
  *(*v2 + 2800) = v1;

  v7 = *(v4 + 2776);
  v8 = *(v4 + 2504);
  if (v1)
  {

    v9 = sub_22B2B6688;
  }

  else
  {

    v9 = sub_22B2B4E34;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2B4E34()
{
  v1 = v0[338];
  v2 = v0[335];
  v0[351] = sub_22B36015C();
  v0[352] = v3;

  return MEMORY[0x2822009F8](sub_22B2B4EA8, v2, 0);
}

uint64_t sub_22B2B4EA8()
{
  v1 = *(v0[335] + 120);
  v0[353] = v1;
  v2 = *(MEMORY[0x277D18200] + 4);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[354] = v4;
  *v4 = v0;
  v4[1] = sub_22B2B4F74;
  v5 = v0[352];
  v6 = v0[351];
  v7 = v0[334];
  v8 = v0[312];
  v9 = v0[311];
  v10 = v0[306];
  v11 = v0[305];

  return MEMORY[0x2821724F8](v9, v8, v11, v10, v6, v5, v3);
}

uint64_t sub_22B2B4F74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 2832);
  v8 = *v3;
  v6[355] = v2;

  v9 = v6[353];
  v10 = v6[352];
  if (v2)
  {
    v11 = v6[313];

    v12 = sub_22B2B7524;
  }

  else
  {
    v11 = v6[335];

    v6[356] = a2;
    v6[357] = a1;
    v12 = sub_22B2B50F0;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_22B2B50F0()
{
  v1 = v0[313];
  v2 = *(v0[335] + 120);
  v0[358] = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_22B2B5168, v1, 0);
}

uint64_t sub_22B2B5168()
{
  v1 = v0[358];
  v2 = v0[341];
  v0[10] = v0;
  v0[11] = sub_22B2B5268;
  v3 = swift_continuation_init();
  v0[285] = v2;
  v0[282] = v3;
  v0[278] = MEMORY[0x277D85DD0];
  v0[279] = 1107296256;
  v0[280] = sub_22B30F28C;
  v0[281] = &block_descriptor_116;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_22B2B5268()
{
  v1 = *(*v0 + 2504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2B535C, v1, 0);
}

uint64_t sub_22B2B535C()
{
  v19 = *(v0 + 2848);
  v20 = *(v0 + 2856);
  v21 = *(v0 + 2784);
  v1 = *(v0 + 2768);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2752);
  v4 = *(v0 + 2704);
  v5 = *(v0 + 2592);
  v6 = *(v0 + 2568);

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B364840;
  *(v7 + 32) = 0x6F54737365636361;
  *(v7 + 40) = 0xEB000000006E656BLL;
  v8 = sub_22B36015C();
  v9 = MEMORY[0x277D837D0];
  *(v7 + 48) = v8;
  *(v7 + 56) = v10;
  *(v7 + 72) = v9;
  strcpy((v7 + 80), "refreshToken");
  *(v7 + 93) = 0;
  *(v7 + 94) = -5120;
  *(v7 + 96) = sub_22B36016C();
  *(v7 + 104) = v11;
  *(v7 + 120) = v9;
  *(v7 + 128) = 0xD000000000000019;
  *(v7 + 136) = 0x800000022B36CE80;
  *(v7 + 168) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 144));
  v2(boxed_opaque_existential_1, v5, v6);
  *(v7 + 176) = 0x6974636E75466B63;
  *(v7 + 184) = 0xEF6E656B6F546E6FLL;
  *(v7 + 216) = v9;
  *(v7 + 192) = v20;
  *(v7 + 200) = v19;
  v13 = sub_22B321AAC(v7);
  *(v0 + 2872) = v13;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  *(v0 + 2880) = v14;
  *v14 = v0;
  v14[1] = sub_22B2B5574;
  v15 = *(v0 + 2680);
  v16 = *(v0 + 2480);
  v17 = *(v0 + 2472);

  return sub_22B2244D0(v17, v16, v13);
}

uint64_t sub_22B2B5574(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2880);
  v6 = *v2;
  v4[361] = v1;

  v7 = v4[359];
  v8 = v4[313];

  if (v1)
  {
    v9 = sub_22B2B83C0;
  }

  else
  {
    v4[362] = a1;
    v9 = sub_22B2B56CC;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2B56CC()
{
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2664);
  v4 = *(v0 + 2656);
  v5 = *(v0 + 2648);
  v6 = *(v0 + 2640);
  v7 = *(v0 + 2632);
  v13 = *(v0 + 2624);
  v14 = *(v0 + 2616);
  v8 = *(v0 + 2592);
  v9 = *(v0 + 2568);
  v15 = *(v0 + 2584);
  v16 = *(v0 + 2560);
  v17 = *(v0 + 2536);
  v18 = *(v0 + 2528);

  v2(v8, v9);

  v10 = *(v0 + 8);
  v11 = *(v0 + 2896);

  return v10(v11);
}

uint64_t sub_22B2B5808()
{
  v137 = v0;
  v1 = (v0 + 2432);

  v2 = *(v0 + 2712);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2544);
  *(v0 + 2432) = v2;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v6 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v6 == *MEMORY[0x277D182B8])
  {
    v7 = *(v0 + 2560);
    v8 = *(v0 + 2536);
    v9 = *(v0 + 2528);
    v10 = *(v0 + 2520);
    v11 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v7, *(v0 + 2544));
    (*(v10 + 32))(v8, v7, v11);
    (*(v10 + 16))(v9, v8, v11);
    v12 = (*(v10 + 88))(v9, v11);
    if (v12 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v13 = 0;
    }

    else if (v12 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v13 = 1;
    }

    else if (v12 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v13 = 2;
    }

    else if (v12 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v13 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 2648);
      v60 = *(v0 + 2608);
      v61 = *(v0 + 2600);
      v62 = *(v0 + 2464);
      v63 = __swift_project_value_buffer(v61, qword_28140BD10);
      swift_beginAccess();
      (*(v60 + 16))(v59, v63, v61);

      v64 = sub_22B36050C();
      v65 = sub_22B360D1C();

      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 2648);
      v68 = *(v0 + 2608);
      v69 = *(v0 + 2600);
      v70 = *(v0 + 2536);
      v71 = *(v0 + 2520);
      v72 = *(v0 + 2512);
      if (v66)
      {
        v130 = *(v0 + 2648);
        v134 = *(v0 + 2512);
        v73 = *(v0 + 2464);
        v74 = *(v0 + 2456);
        v126 = *(v0 + 2600);
        v75 = swift_slowAlloc();
        v128 = v70;
        v76 = swift_slowAlloc();
        v136[0] = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_22B1A7B20(v74, v73, v136);
        _os_log_impl(&dword_22B116000, v64, v65, "[Dropbox] Unknown internal error %{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x23188F650](v76, -1, -1);
        MEMORY[0x23188F650](v75, -1, -1);

        (*(v68 + 8))(v130, v126);
        v77 = *(v71 + 8);
        v77(v128, v134);
      }

      else
      {

        (*(v68 + 8))(v67, v69);
        v77 = *(v71 + 8);
        v77(v70, v72);
      }

      v77(*(v0 + 2528), *(v0 + 2512));
      v13 = 4;
    }

    v16 = 0;
    v15 = 0;
    v17 = 1;
    v18 = 4;
    goto LABEL_50;
  }

  if (v6 == *MEMORY[0x277D182A8])
  {
    v14 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v14, *(v0 + 2544));
    v15 = *v14;

    v16 = 0;
    v17 = 0;
    v18 = 5;
LABEL_49:
    v13 = 4;
    goto LABEL_50;
  }

  if (v6 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 2640);
    v20 = *(v0 + 2608);
    v21 = *(v0 + 2600);
    v22 = *(v0 + 2448);
    v23 = __swift_project_value_buffer(v21, qword_28140BD10);
    swift_beginAccess();
    (*(v20 + 16))(v19, v23, v21);

    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 2640);
    v28 = *(v0 + 2608);
    v29 = *(v0 + 2600);
    if (v26)
    {
      v30 = *(v0 + 2448);
      v31 = *(v0 + 2440);
      v32 = swift_slowAlloc();
      v132 = v27;
      v33 = swift_slowAlloc();
      v136[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22B1A7B20(v31, v30, v136);
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox] Failed CK Token %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);

      (*(v28 + 8))(v132, v29);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v18 = 0;
    v15 = 0;
    v16 = 1;
LABEL_24:
    v13 = 4;
    v17 = 1;
    goto LABEL_50;
  }

  if (v6 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2624);
    v35 = *(v0 + 2608);
    v36 = *(v0 + 2600);
    v37 = __swift_project_value_buffer(v36, qword_28140BD10);
    swift_beginAccess();
    (*(v35 + 16))(v34, v37, v36);
    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22B116000, v38, v39, "[Dropbox] Re authentication required. Notify user", v40, 2u);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    v41 = *(v0 + 2624);
    v42 = *(v0 + 2608);
    v43 = *(v0 + 2600);

    (*(v42 + 8))(v41, v43);
    v15 = 0;
    v16 = 1;
    v18 = 2;
    goto LABEL_24;
  }

  if (v6 != *MEMORY[0x277D182C8])
  {
    if (v6 == *MEMORY[0x277D18298])
    {

      v16 = 0;
      v15 = 0;
      v17 = 1;
      v18 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v78 = *(v0 + 2616);
    v79 = *(v0 + 2608);
    v80 = *(v0 + 2600);
    v81 = __swift_project_value_buffer(v80, qword_28140BD10);
    swift_beginAccess();
    (*(v79 + 16))(v78, v81, v80);
    v82 = v2;
    v83 = sub_22B36050C();
    v84 = sub_22B360D1C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138543362;
      v87 = v2;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 4) = v88;
      *v86 = v88;
      _os_log_impl(&dword_22B116000, v83, v84, "[Dropbox] Error refreshing access token %{public}@", v85, 0xCu);
      sub_22B123284(v86, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v86, -1, -1);
      MEMORY[0x23188F650](v85, -1, -1);
    }

    v89 = *(v0 + 2616);
    v90 = *(v0 + 2608);
    v91 = *(v0 + 2600);

    (*(v90 + 8))(v89, v91);
    v16 = 0;
    v15 = 0;
    v17 = 1;
    v18 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 2632);
  v45 = *(v0 + 2608);
  v46 = *(v0 + 2600);
  v47 = *(v0 + 2464);
  v48 = __swift_project_value_buffer(v46, qword_28140BD10);
  swift_beginAccess();
  (*(v45 + 16))(v44, v48, v46);

  v49 = sub_22B36050C();
  v50 = sub_22B360D1C();

  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 2632);
  v53 = *(v0 + 2608);
  v54 = *(v0 + 2600);
  if (v51)
  {
    v55 = *(v0 + 2464);
    v56 = *(v0 + 2456);
    v57 = swift_slowAlloc();
    v133 = v52;
    v58 = swift_slowAlloc();
    v136[0] = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_22B1A7B20(v56, v55, v136);
    _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Failed Refresh Token %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x23188F650](v58, -1, -1);
    MEMORY[0x23188F650](v57, -1, -1);

    (*(v53 + 8))(v133, v54);
  }

  else
  {

    (*(v53 + 8))(v52, v54);
  }

  v15 = 0;
  v16 = 1;
  v13 = 4;
  v18 = 1;
  v17 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v92 = *(v0 + 2496);
    v93 = *(v0 + 2488);
    LOBYTE(v136[0]) = 0;
    *(v0 + 1824) = v15;
    *(v0 + 1832) = v17;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v93;
    *(v0 + 1888) = v92;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v18;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v13;
    v94 = v136[0];
    *(v0 + 1984) = v136[0];
    *(v0 + 1656) = v15;
    *(v0 + 1664) = v17;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v93;
    *(v0 + 1720) = v92;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 0;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v18;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v13;
    *(v0 + 1816) = v94;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v95 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v95;
    *(v0 + 1648) = *(v0 + 1984);
    v96 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v96;
    v97 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v97;
    v98 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v98;
    v99 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v99;
    nullsub_1(v0 + 1488);
    type metadata accessor for EnergyKitAnalyticsEvent();
    v100 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v101 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v101;
    v102 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v102;
    v103 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v103;
    v104 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v104;
    v105 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v105;
    v106 = *(v0 + 1584);
    *(v100 + 136) = *(v0 + 1600);
    v107 = *(v0 + 1632);
    *(v100 + 152) = *(v0 + 1616);
    *(v100 + 168) = v107;
    v108 = *(v0 + 1520);
    *(v100 + 72) = *(v0 + 1536);
    v109 = *(v0 + 1568);
    *(v100 + 88) = *(v0 + 1552);
    *(v100 + 104) = v109;
    *(v100 + 120) = v106;
    v110 = *(v0 + 1504);
    *(v100 + 24) = *(v0 + 1488);
    *(v100 + 40) = v110;
    *(v100 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v100 + 184) = *(v0 + 1648);
    *(v100 + 56) = v108;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v100);

    if (v16)
    {
      v111 = [objc_opt_self() processInfo];
      v112 = [v111 processName];

      v113 = sub_22B36084C();
      v115 = v114;

      LOWORD(v136[0]) = 258;
      BYTE2(v136[0]) = 18;
      v136[1] = v113;
      v136[2] = v115;
      v136[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v136);
    }
  }

  v116 = *(v0 + 2664);
  v117 = *(v0 + 2656);
  v118 = *(v0 + 2648);
  v119 = *(v0 + 2640);
  v120 = *(v0 + 2632);
  v121 = *(v0 + 2624);
  v122 = *(v0 + 2616);
  v125 = *(v0 + 2592);
  v127 = *(v0 + 2584);
  v129 = *(v0 + 2560);
  v131 = *(v0 + 2536);
  v135 = *(v0 + 2528);
  swift_willThrow();

  v123 = *(v0 + 8);

  return v123();
}

uint64_t sub_22B2B6688()
{
  v141 = v0;
  v1 = (v0 + 2432);
  v2 = *(v0 + 2744);
  v3 = *(v0 + 2736);
  v4 = *(v0 + 2592);
  v5 = *(v0 + 2568);

  v3(v4, v5);
  v6 = *(v0 + 2800);
  v7 = *(v0 + 2560);
  v8 = *(v0 + 2544);
  *(v0 + 2432) = v6;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v10 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v10 == *MEMORY[0x277D182B8])
  {
    v11 = *(v0 + 2560);
    v12 = *(v0 + 2536);
    v13 = *(v0 + 2528);
    v14 = *(v0 + 2520);
    v15 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v11, *(v0 + 2544));
    (*(v14 + 32))(v12, v11, v15);
    (*(v14 + 16))(v13, v12, v15);
    v16 = (*(v14 + 88))(v13, v15);
    if (v16 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 0;
    }

    else if (v16 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 1;
    }

    else if (v16 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 2;
    }

    else if (v16 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v63 = *(v0 + 2648);
      v64 = *(v0 + 2608);
      v65 = *(v0 + 2600);
      v66 = *(v0 + 2464);
      v67 = __swift_project_value_buffer(v65, qword_28140BD10);
      swift_beginAccess();
      (*(v64 + 16))(v63, v67, v65);

      v68 = sub_22B36050C();
      v69 = sub_22B360D1C();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 2648);
      v72 = *(v0 + 2608);
      v73 = *(v0 + 2600);
      v74 = *(v0 + 2536);
      v75 = *(v0 + 2520);
      v76 = *(v0 + 2512);
      if (v70)
      {
        v134 = *(v0 + 2648);
        v138 = *(v0 + 2512);
        v77 = *(v0 + 2464);
        v78 = *(v0 + 2456);
        v130 = *(v0 + 2600);
        v79 = swift_slowAlloc();
        v132 = v74;
        v80 = swift_slowAlloc();
        v140[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_22B1A7B20(v78, v77, v140);
        _os_log_impl(&dword_22B116000, v68, v69, "[Dropbox] Unknown internal error %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x23188F650](v80, -1, -1);
        MEMORY[0x23188F650](v79, -1, -1);

        (*(v72 + 8))(v134, v130);
        v81 = *(v75 + 8);
        v81(v132, v138);
      }

      else
      {

        (*(v72 + 8))(v71, v73);
        v81 = *(v75 + 8);
        v81(v74, v76);
      }

      v81(*(v0 + 2528), *(v0 + 2512));
      v17 = 4;
    }

    v20 = 0;
    v19 = 0;
    v21 = 1;
    v22 = 4;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182A8])
  {
    v18 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v18, *(v0 + 2544));
    v19 = *v18;

    v20 = 0;
    v21 = 0;
    v22 = 5;
LABEL_49:
    v17 = 4;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 2640);
    v24 = *(v0 + 2608);
    v25 = *(v0 + 2600);
    v26 = *(v0 + 2448);
    v27 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v24 + 16))(v23, v27, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 2640);
    v32 = *(v0 + 2608);
    v33 = *(v0 + 2600);
    if (v30)
    {
      v34 = *(v0 + 2448);
      v35 = *(v0 + 2440);
      v36 = swift_slowAlloc();
      v136 = v31;
      v37 = swift_slowAlloc();
      v140[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_22B1A7B20(v35, v34, v140);
      _os_log_impl(&dword_22B116000, v28, v29, "[Dropbox] Failed CK Token %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23188F650](v37, -1, -1);
      MEMORY[0x23188F650](v36, -1, -1);

      (*(v32 + 8))(v136, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v22 = 0;
    v19 = 0;
    v20 = 1;
LABEL_24:
    v17 = 4;
    v21 = 1;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 2624);
    v39 = *(v0 + 2608);
    v40 = *(v0 + 2600);
    v41 = __swift_project_value_buffer(v40, qword_28140BD10);
    swift_beginAccess();
    (*(v39 + 16))(v38, v41, v40);
    v42 = sub_22B36050C();
    v43 = sub_22B360D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22B116000, v42, v43, "[Dropbox] Re authentication required. Notify user", v44, 2u);
      MEMORY[0x23188F650](v44, -1, -1);
    }

    v45 = *(v0 + 2624);
    v46 = *(v0 + 2608);
    v47 = *(v0 + 2600);

    (*(v46 + 8))(v45, v47);
    v19 = 0;
    v20 = 1;
    v22 = 2;
    goto LABEL_24;
  }

  if (v10 != *MEMORY[0x277D182C8])
  {
    if (v10 == *MEMORY[0x277D18298])
    {

      v20 = 0;
      v19 = 0;
      v21 = 1;
      v22 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v82 = *(v0 + 2616);
    v83 = *(v0 + 2608);
    v84 = *(v0 + 2600);
    v85 = __swift_project_value_buffer(v84, qword_28140BD10);
    swift_beginAccess();
    (*(v83 + 16))(v82, v85, v84);
    v86 = v6;
    v87 = sub_22B36050C();
    v88 = sub_22B360D1C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138543362;
      v91 = v6;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v92;
      *v90 = v92;
      _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Error refreshing access token %{public}@", v89, 0xCu);
      sub_22B123284(v90, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v90, -1, -1);
      MEMORY[0x23188F650](v89, -1, -1);
    }

    v93 = *(v0 + 2616);
    v94 = *(v0 + 2608);
    v95 = *(v0 + 2600);

    (*(v94 + 8))(v93, v95);
    v20 = 0;
    v19 = 0;
    v21 = 1;
    v22 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 2632);
  v49 = *(v0 + 2608);
  v50 = *(v0 + 2600);
  v51 = *(v0 + 2464);
  v52 = __swift_project_value_buffer(v50, qword_28140BD10);
  swift_beginAccess();
  (*(v49 + 16))(v48, v52, v50);

  v53 = sub_22B36050C();
  v54 = sub_22B360D1C();

  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 2632);
  v57 = *(v0 + 2608);
  v58 = *(v0 + 2600);
  if (v55)
  {
    v59 = *(v0 + 2464);
    v60 = *(v0 + 2456);
    v61 = swift_slowAlloc();
    v137 = v56;
    v62 = swift_slowAlloc();
    v140[0] = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_22B1A7B20(v60, v59, v140);
    _os_log_impl(&dword_22B116000, v53, v54, "[Dropbox] Failed Refresh Token %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x23188F650](v62, -1, -1);
    MEMORY[0x23188F650](v61, -1, -1);

    (*(v57 + 8))(v137, v58);
  }

  else
  {

    (*(v57 + 8))(v56, v58);
  }

  v19 = 0;
  v20 = 1;
  v17 = 4;
  v22 = 1;
  v21 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v96 = *(v0 + 2496);
    v97 = *(v0 + 2488);
    LOBYTE(v140[0]) = 0;
    *(v0 + 1824) = v19;
    *(v0 + 1832) = v21;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v97;
    *(v0 + 1888) = v96;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 1;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v22;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v17;
    v98 = v140[0];
    *(v0 + 1984) = v140[0];
    *(v0 + 1656) = v19;
    *(v0 + 1664) = v21;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v97;
    *(v0 + 1720) = v96;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 1;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v22;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v17;
    *(v0 + 1816) = v98;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v99 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v99;
    *(v0 + 1648) = *(v0 + 1984);
    v100 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v100;
    v101 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v101;
    v102 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v102;
    v103 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v103;
    nullsub_1(v0 + 1488);
    type metadata accessor for EnergyKitAnalyticsEvent();
    v104 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v105 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v105;
    v106 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v106;
    v107 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v107;
    v108 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v108;
    v109 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v109;
    v110 = *(v0 + 1584);
    *(v104 + 136) = *(v0 + 1600);
    v111 = *(v0 + 1632);
    *(v104 + 152) = *(v0 + 1616);
    *(v104 + 168) = v111;
    v112 = *(v0 + 1520);
    *(v104 + 72) = *(v0 + 1536);
    v113 = *(v0 + 1568);
    *(v104 + 88) = *(v0 + 1552);
    *(v104 + 104) = v113;
    *(v104 + 120) = v110;
    v114 = *(v0 + 1504);
    *(v104 + 24) = *(v0 + 1488);
    *(v104 + 40) = v114;
    *(v104 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v104 + 184) = *(v0 + 1648);
    *(v104 + 56) = v112;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v104);

    if (v20)
    {
      v115 = [objc_opt_self() processInfo];
      v116 = [v115 processName];

      v117 = sub_22B36084C();
      v119 = v118;

      LOWORD(v140[0]) = 258;
      BYTE2(v140[0]) = 18;
      v140[1] = v117;
      v140[2] = v119;
      v140[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v140);
    }
  }

  v120 = *(v0 + 2664);
  v121 = *(v0 + 2656);
  v122 = *(v0 + 2648);
  v123 = *(v0 + 2640);
  v124 = *(v0 + 2632);
  v125 = *(v0 + 2624);
  v126 = *(v0 + 2616);
  v129 = *(v0 + 2592);
  v131 = *(v0 + 2584);
  v133 = *(v0 + 2560);
  v135 = *(v0 + 2536);
  v139 = *(v0 + 2528);
  swift_willThrow();

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_22B2B7524()
{
  v141 = v0;
  v1 = (v0 + 2432);
  v2 = *(v0 + 2744);
  v3 = *(v0 + 2736);
  v4 = *(v0 + 2592);
  v5 = *(v0 + 2568);

  v3(v4, v5);
  v6 = *(v0 + 2840);
  v7 = *(v0 + 2560);
  v8 = *(v0 + 2544);
  *(v0 + 2432) = v6;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v10 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v10 == *MEMORY[0x277D182B8])
  {
    v11 = *(v0 + 2560);
    v12 = *(v0 + 2536);
    v13 = *(v0 + 2528);
    v14 = *(v0 + 2520);
    v15 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v11, *(v0 + 2544));
    (*(v14 + 32))(v12, v11, v15);
    (*(v14 + 16))(v13, v12, v15);
    v16 = (*(v14 + 88))(v13, v15);
    if (v16 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 0;
    }

    else if (v16 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 1;
    }

    else if (v16 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 2;
    }

    else if (v16 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v63 = *(v0 + 2648);
      v64 = *(v0 + 2608);
      v65 = *(v0 + 2600);
      v66 = *(v0 + 2464);
      v67 = __swift_project_value_buffer(v65, qword_28140BD10);
      swift_beginAccess();
      (*(v64 + 16))(v63, v67, v65);

      v68 = sub_22B36050C();
      v69 = sub_22B360D1C();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 2648);
      v72 = *(v0 + 2608);
      v73 = *(v0 + 2600);
      v74 = *(v0 + 2536);
      v75 = *(v0 + 2520);
      v76 = *(v0 + 2512);
      if (v70)
      {
        v134 = *(v0 + 2648);
        v138 = *(v0 + 2512);
        v77 = *(v0 + 2464);
        v78 = *(v0 + 2456);
        v130 = *(v0 + 2600);
        v79 = swift_slowAlloc();
        v132 = v74;
        v80 = swift_slowAlloc();
        v140[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_22B1A7B20(v78, v77, v140);
        _os_log_impl(&dword_22B116000, v68, v69, "[Dropbox] Unknown internal error %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x23188F650](v80, -1, -1);
        MEMORY[0x23188F650](v79, -1, -1);

        (*(v72 + 8))(v134, v130);
        v81 = *(v75 + 8);
        v81(v132, v138);
      }

      else
      {

        (*(v72 + 8))(v71, v73);
        v81 = *(v75 + 8);
        v81(v74, v76);
      }

      v81(*(v0 + 2528), *(v0 + 2512));
      v17 = 4;
    }

    v20 = 0;
    v19 = 0;
    v21 = 1;
    v22 = 4;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182A8])
  {
    v18 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v18, *(v0 + 2544));
    v19 = *v18;

    v20 = 0;
    v21 = 0;
    v22 = 5;
LABEL_49:
    v17 = 4;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 2640);
    v24 = *(v0 + 2608);
    v25 = *(v0 + 2600);
    v26 = *(v0 + 2448);
    v27 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v24 + 16))(v23, v27, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 2640);
    v32 = *(v0 + 2608);
    v33 = *(v0 + 2600);
    if (v30)
    {
      v34 = *(v0 + 2448);
      v35 = *(v0 + 2440);
      v36 = swift_slowAlloc();
      v136 = v31;
      v37 = swift_slowAlloc();
      v140[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_22B1A7B20(v35, v34, v140);
      _os_log_impl(&dword_22B116000, v28, v29, "[Dropbox] Failed CK Token %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23188F650](v37, -1, -1);
      MEMORY[0x23188F650](v36, -1, -1);

      (*(v32 + 8))(v136, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v22 = 0;
    v19 = 0;
    v20 = 1;
LABEL_24:
    v17 = 4;
    v21 = 1;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 2624);
    v39 = *(v0 + 2608);
    v40 = *(v0 + 2600);
    v41 = __swift_project_value_buffer(v40, qword_28140BD10);
    swift_beginAccess();
    (*(v39 + 16))(v38, v41, v40);
    v42 = sub_22B36050C();
    v43 = sub_22B360D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22B116000, v42, v43, "[Dropbox] Re authentication required. Notify user", v44, 2u);
      MEMORY[0x23188F650](v44, -1, -1);
    }

    v45 = *(v0 + 2624);
    v46 = *(v0 + 2608);
    v47 = *(v0 + 2600);

    (*(v46 + 8))(v45, v47);
    v19 = 0;
    v20 = 1;
    v22 = 2;
    goto LABEL_24;
  }

  if (v10 != *MEMORY[0x277D182C8])
  {
    if (v10 == *MEMORY[0x277D18298])
    {

      v20 = 0;
      v19 = 0;
      v21 = 1;
      v22 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v82 = *(v0 + 2616);
    v83 = *(v0 + 2608);
    v84 = *(v0 + 2600);
    v85 = __swift_project_value_buffer(v84, qword_28140BD10);
    swift_beginAccess();
    (*(v83 + 16))(v82, v85, v84);
    v86 = v6;
    v87 = sub_22B36050C();
    v88 = sub_22B360D1C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138543362;
      v91 = v6;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v92;
      *v90 = v92;
      _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Error refreshing access token %{public}@", v89, 0xCu);
      sub_22B123284(v90, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v90, -1, -1);
      MEMORY[0x23188F650](v89, -1, -1);
    }

    v93 = *(v0 + 2616);
    v94 = *(v0 + 2608);
    v95 = *(v0 + 2600);

    (*(v94 + 8))(v93, v95);
    v20 = 0;
    v19 = 0;
    v21 = 1;
    v22 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 2632);
  v49 = *(v0 + 2608);
  v50 = *(v0 + 2600);
  v51 = *(v0 + 2464);
  v52 = __swift_project_value_buffer(v50, qword_28140BD10);
  swift_beginAccess();
  (*(v49 + 16))(v48, v52, v50);

  v53 = sub_22B36050C();
  v54 = sub_22B360D1C();

  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 2632);
  v57 = *(v0 + 2608);
  v58 = *(v0 + 2600);
  if (v55)
  {
    v59 = *(v0 + 2464);
    v60 = *(v0 + 2456);
    v61 = swift_slowAlloc();
    v137 = v56;
    v62 = swift_slowAlloc();
    v140[0] = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_22B1A7B20(v60, v59, v140);
    _os_log_impl(&dword_22B116000, v53, v54, "[Dropbox] Failed Refresh Token %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x23188F650](v62, -1, -1);
    MEMORY[0x23188F650](v61, -1, -1);

    (*(v57 + 8))(v137, v58);
  }

  else
  {

    (*(v57 + 8))(v56, v58);
  }

  v19 = 0;
  v20 = 1;
  v17 = 4;
  v22 = 1;
  v21 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v96 = *(v0 + 2496);
    v97 = *(v0 + 2488);
    LOBYTE(v140[0]) = 0;
    *(v0 + 1824) = v19;
    *(v0 + 1832) = v21;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v97;
    *(v0 + 1888) = v96;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 2;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v22;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v17;
    v98 = v140[0];
    *(v0 + 1984) = v140[0];
    *(v0 + 1656) = v19;
    *(v0 + 1664) = v21;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v97;
    *(v0 + 1720) = v96;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 2;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v22;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v17;
    *(v0 + 1816) = v98;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v99 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v99;
    *(v0 + 1648) = *(v0 + 1984);
    v100 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v100;
    v101 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v101;
    v102 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v102;
    v103 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v103;
    nullsub_1(v0 + 1488);
    type metadata accessor for EnergyKitAnalyticsEvent();
    v104 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v105 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v105;
    v106 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v106;
    v107 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v107;
    v108 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v108;
    v109 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v109;
    v110 = *(v0 + 1584);
    *(v104 + 136) = *(v0 + 1600);
    v111 = *(v0 + 1632);
    *(v104 + 152) = *(v0 + 1616);
    *(v104 + 168) = v111;
    v112 = *(v0 + 1520);
    *(v104 + 72) = *(v0 + 1536);
    v113 = *(v0 + 1568);
    *(v104 + 88) = *(v0 + 1552);
    *(v104 + 104) = v113;
    *(v104 + 120) = v110;
    v114 = *(v0 + 1504);
    *(v104 + 24) = *(v0 + 1488);
    *(v104 + 40) = v114;
    *(v104 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v104 + 184) = *(v0 + 1648);
    *(v104 + 56) = v112;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v104);

    if (v20)
    {
      v115 = [objc_opt_self() processInfo];
      v116 = [v115 processName];

      v117 = sub_22B36084C();
      v119 = v118;

      LOWORD(v140[0]) = 258;
      BYTE2(v140[0]) = 18;
      v140[1] = v117;
      v140[2] = v119;
      v140[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v140);
    }
  }

  v120 = *(v0 + 2664);
  v121 = *(v0 + 2656);
  v122 = *(v0 + 2648);
  v123 = *(v0 + 2640);
  v124 = *(v0 + 2632);
  v125 = *(v0 + 2624);
  v126 = *(v0 + 2616);
  v129 = *(v0 + 2592);
  v131 = *(v0 + 2584);
  v133 = *(v0 + 2560);
  v135 = *(v0 + 2536);
  v139 = *(v0 + 2528);
  swift_willThrow();

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_22B2B83C0()
{
  v141 = v0;
  v1 = (v0 + 2432);
  v2 = *(v0 + 2744);
  v3 = *(v0 + 2736);
  v4 = *(v0 + 2592);
  v5 = *(v0 + 2568);

  v3(v4, v5);
  v6 = *(v0 + 2888);
  v7 = *(v0 + 2560);
  v8 = *(v0 + 2544);
  *(v0 + 2432) = v6;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v10 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v10 == *MEMORY[0x277D182B8])
  {
    v11 = *(v0 + 2560);
    v12 = *(v0 + 2536);
    v13 = *(v0 + 2528);
    v14 = *(v0 + 2520);
    v15 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v11, *(v0 + 2544));
    (*(v14 + 32))(v12, v11, v15);
    (*(v14 + 16))(v13, v12, v15);
    v16 = (*(v14 + 88))(v13, v15);
    if (v16 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 0;
    }

    else if (v16 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 1;
    }

    else if (v16 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 2;
    }

    else if (v16 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v17 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v63 = *(v0 + 2648);
      v64 = *(v0 + 2608);
      v65 = *(v0 + 2600);
      v66 = *(v0 + 2464);
      v67 = __swift_project_value_buffer(v65, qword_28140BD10);
      swift_beginAccess();
      (*(v64 + 16))(v63, v67, v65);

      v68 = sub_22B36050C();
      v69 = sub_22B360D1C();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 2648);
      v72 = *(v0 + 2608);
      v73 = *(v0 + 2600);
      v74 = *(v0 + 2536);
      v75 = *(v0 + 2520);
      v76 = *(v0 + 2512);
      if (v70)
      {
        v134 = *(v0 + 2648);
        v138 = *(v0 + 2512);
        v77 = *(v0 + 2464);
        v78 = *(v0 + 2456);
        v130 = *(v0 + 2600);
        v79 = swift_slowAlloc();
        v132 = v74;
        v80 = swift_slowAlloc();
        v140[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_22B1A7B20(v78, v77, v140);
        _os_log_impl(&dword_22B116000, v68, v69, "[Dropbox] Unknown internal error %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x23188F650](v80, -1, -1);
        MEMORY[0x23188F650](v79, -1, -1);

        (*(v72 + 8))(v134, v130);
        v81 = *(v75 + 8);
        v81(v132, v138);
      }

      else
      {

        (*(v72 + 8))(v71, v73);
        v81 = *(v75 + 8);
        v81(v74, v76);
      }

      v81(*(v0 + 2528), *(v0 + 2512));
      v17 = 4;
    }

    v20 = 0;
    v19 = 0;
    v21 = 1;
    v22 = 4;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182A8])
  {
    v18 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v18, *(v0 + 2544));
    v19 = *v18;

    v20 = 0;
    v21 = 0;
    v22 = 5;
LABEL_49:
    v17 = 4;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 2640);
    v24 = *(v0 + 2608);
    v25 = *(v0 + 2600);
    v26 = *(v0 + 2448);
    v27 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v24 + 16))(v23, v27, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 2640);
    v32 = *(v0 + 2608);
    v33 = *(v0 + 2600);
    if (v30)
    {
      v34 = *(v0 + 2448);
      v35 = *(v0 + 2440);
      v36 = swift_slowAlloc();
      v136 = v31;
      v37 = swift_slowAlloc();
      v140[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_22B1A7B20(v35, v34, v140);
      _os_log_impl(&dword_22B116000, v28, v29, "[Dropbox] Failed CK Token %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23188F650](v37, -1, -1);
      MEMORY[0x23188F650](v36, -1, -1);

      (*(v32 + 8))(v136, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v22 = 0;
    v19 = 0;
    v20 = 1;
LABEL_24:
    v17 = 4;
    v21 = 1;
    goto LABEL_50;
  }

  if (v10 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 2624);
    v39 = *(v0 + 2608);
    v40 = *(v0 + 2600);
    v41 = __swift_project_value_buffer(v40, qword_28140BD10);
    swift_beginAccess();
    (*(v39 + 16))(v38, v41, v40);
    v42 = sub_22B36050C();
    v43 = sub_22B360D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22B116000, v42, v43, "[Dropbox] Re authentication required. Notify user", v44, 2u);
      MEMORY[0x23188F650](v44, -1, -1);
    }

    v45 = *(v0 + 2624);
    v46 = *(v0 + 2608);
    v47 = *(v0 + 2600);

    (*(v46 + 8))(v45, v47);
    v19 = 0;
    v20 = 1;
    v22 = 2;
    goto LABEL_24;
  }

  if (v10 != *MEMORY[0x277D182C8])
  {
    if (v10 == *MEMORY[0x277D18298])
    {

      v20 = 0;
      v19 = 0;
      v21 = 1;
      v22 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v82 = *(v0 + 2616);
    v83 = *(v0 + 2608);
    v84 = *(v0 + 2600);
    v85 = __swift_project_value_buffer(v84, qword_28140BD10);
    swift_beginAccess();
    (*(v83 + 16))(v82, v85, v84);
    v86 = v6;
    v87 = sub_22B36050C();
    v88 = sub_22B360D1C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138543362;
      v91 = v6;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v92;
      *v90 = v92;
      _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Error refreshing access token %{public}@", v89, 0xCu);
      sub_22B123284(v90, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v90, -1, -1);
      MEMORY[0x23188F650](v89, -1, -1);
    }

    v93 = *(v0 + 2616);
    v94 = *(v0 + 2608);
    v95 = *(v0 + 2600);

    (*(v94 + 8))(v93, v95);
    v20 = 0;
    v19 = 0;
    v21 = 1;
    v22 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 2632);
  v49 = *(v0 + 2608);
  v50 = *(v0 + 2600);
  v51 = *(v0 + 2464);
  v52 = __swift_project_value_buffer(v50, qword_28140BD10);
  swift_beginAccess();
  (*(v49 + 16))(v48, v52, v50);

  v53 = sub_22B36050C();
  v54 = sub_22B360D1C();

  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 2632);
  v57 = *(v0 + 2608);
  v58 = *(v0 + 2600);
  if (v55)
  {
    v59 = *(v0 + 2464);
    v60 = *(v0 + 2456);
    v61 = swift_slowAlloc();
    v137 = v56;
    v62 = swift_slowAlloc();
    v140[0] = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_22B1A7B20(v60, v59, v140);
    _os_log_impl(&dword_22B116000, v53, v54, "[Dropbox] Failed Refresh Token %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x23188F650](v62, -1, -1);
    MEMORY[0x23188F650](v61, -1, -1);

    (*(v57 + 8))(v137, v58);
  }

  else
  {

    (*(v57 + 8))(v56, v58);
  }

  v19 = 0;
  v20 = 1;
  v17 = 4;
  v22 = 1;
  v21 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v96 = *(v0 + 2496);
    v97 = *(v0 + 2488);
    LOBYTE(v140[0]) = 0;
    *(v0 + 1824) = v19;
    *(v0 + 1832) = v21;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v97;
    *(v0 + 1888) = v96;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 3;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v22;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v17;
    v98 = v140[0];
    *(v0 + 1984) = v140[0];
    *(v0 + 1656) = v19;
    *(v0 + 1664) = v21;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v97;
    *(v0 + 1720) = v96;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 3;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v22;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v17;
    *(v0 + 1816) = v98;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v99 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v99;
    *(v0 + 1648) = *(v0 + 1984);
    v100 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v100;
    v101 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v101;
    v102 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v102;
    v103 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v103;
    nullsub_1(v0 + 1488);
    type metadata accessor for EnergyKitAnalyticsEvent();
    v104 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v105 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v105;
    v106 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v106;
    v107 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v107;
    v108 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v108;
    v109 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v109;
    v110 = *(v0 + 1584);
    *(v104 + 136) = *(v0 + 1600);
    v111 = *(v0 + 1632);
    *(v104 + 152) = *(v0 + 1616);
    *(v104 + 168) = v111;
    v112 = *(v0 + 1520);
    *(v104 + 72) = *(v0 + 1536);
    v113 = *(v0 + 1568);
    *(v104 + 88) = *(v0 + 1552);
    *(v104 + 104) = v113;
    *(v104 + 120) = v110;
    v114 = *(v0 + 1504);
    *(v104 + 24) = *(v0 + 1488);
    *(v104 + 40) = v114;
    *(v104 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v104 + 184) = *(v0 + 1648);
    *(v104 + 56) = v112;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v104);

    if (v20)
    {
      v115 = [objc_opt_self() processInfo];
      v116 = [v115 processName];

      v117 = sub_22B36084C();
      v119 = v118;

      LOWORD(v140[0]) = 258;
      BYTE2(v140[0]) = 18;
      v140[1] = v117;
      v140[2] = v119;
      v140[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v140);
    }
  }

  v120 = *(v0 + 2664);
  v121 = *(v0 + 2656);
  v122 = *(v0 + 2648);
  v123 = *(v0 + 2640);
  v124 = *(v0 + 2632);
  v125 = *(v0 + 2624);
  v126 = *(v0 + 2616);
  v129 = *(v0 + 2592);
  v131 = *(v0 + 2584);
  v133 = *(v0 + 2560);
  v135 = *(v0 + 2536);
  v139 = *(v0 + 2528);
  swift_willThrow();

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_22B2B9260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 568) = v8;
  *(v9 + 560) = v26;
  *(v9 + 544) = v25;
  *(v9 + 536) = a8;
  *(v9 + 528) = a7;
  *(v9 + 520) = a6;
  *(v9 + 504) = a4;
  *(v9 + 512) = a5;
  *(v9 + 488) = a2;
  *(v9 + 496) = a3;
  *(v9 + 480) = a1;
  v10 = sub_22B3602EC();
  *(v9 + 576) = v10;
  v11 = *(v10 - 8);
  *(v9 + 584) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 592) = swift_task_alloc();
  v13 = sub_22B3602FC();
  *(v9 + 600) = v13;
  v14 = *(v13 - 8);
  *(v9 + 608) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 616) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v9 + 624) = swift_task_alloc();
  v17 = sub_22B35DE9C();
  *(v9 + 632) = v17;
  v18 = *(v17 - 8);
  *(v9 + 640) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  v20 = sub_22B36052C();
  *(v9 + 664) = v20;
  v21 = *(v20 - 8);
  *(v9 + 672) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  *(v9 + 776) = swift_task_alloc();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2B954C, v8, 0);
}

uint64_t sub_22B2B954C()
{
  if (*(*(v0 + 568) + 115) != 1)
  {
    goto LABEL_38;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
    v185 = *(v0 + 568);
  }

  v1 = *(v0 + 792);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 568);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v9 + 120);

    _os_log_impl(&dword_22B116000, v6, v7, "Token Error Inducer enabled with value %ld", v10, 0xCu);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
    v11 = *(v0 + 568);
  }

  v12 = *(v0 + 568);
  v13 = *(*(v0 + 672) + 8);
  v13(*(v0 + 792), *(v0 + 664));
  v14 = *(v12 + 120);
  if (v14 > 4)
  {
    if ((v14 - 996) >= 3)
    {
      if (v14 != 5)
      {
        if (v14 == 999)
        {
          v5(*(v0 + 744), v4, *(v0 + 664));
          v15 = sub_22B36050C();
          v16 = sub_22B360D2C();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_22B116000, v15, v16, "Token Inducer. Force refresh all tokens", v17, 2u);
            MEMORY[0x23188F650](v17, -1, -1);
          }

          v18 = *(v0 + 744);
          v19 = *(v0 + 664);

          v13(v18, v19);
          v20 = swift_task_alloc();
          *(v0 + 800) = v20;
          *v20 = v0;
          v21 = sub_22B2BAC28;
          goto LABEL_95;
        }

        goto LABEL_34;
      }

      v5(*(v0 + 752), v4, *(v0 + 664));
      v51 = sub_22B36050C();
      v52 = sub_22B360D2C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_22B116000, v51, v52, "Token Error Inducer throwing NetworkError.subscriptionNotFound", v53, 2u);
        MEMORY[0x23188F650](v53, -1, -1);
      }

      v54 = *(v0 + 752);
      v55 = *(v0 + 664);
      v27 = *(v0 + 608);
      v28 = *(v0 + 600);

      v13(v54, v55);
      sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8]);
      v29 = swift_allocError();
      v31 = v56;
      v32 = MEMORY[0x277D182D8];
LABEL_20:
      (*(v27 + 104))(v31, *v32, v28);
      swift_willThrow();
      goto LABEL_52;
    }

LABEL_17:
    v5(*(v0 + 776), v4, *(v0 + 664));
    v22 = sub_22B36050C();
    v23 = sub_22B360D2C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "Token Error Inducer throwing NetworkError.accessTokenExpired", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    v25 = *(v0 + 776);
    v26 = *(v0 + 664);
    v27 = *(v0 + 608);
    v28 = *(v0 + 600);

    v13(v25, v26);
    sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8]);
    v29 = swift_allocError();
    v31 = v30;
    v32 = MEMORY[0x277D182C0];
    goto LABEL_20;
  }

  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v5(*(v0 + 768), v4, *(v0 + 664));
      v45 = sub_22B36050C();
      v46 = sub_22B360D2C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22B116000, v45, v46, "Token Error Inducer throwing NetworkError.refreshTokenExpired", v47, 2u);
        MEMORY[0x23188F650](v47, -1, -1);
      }

      v48 = *(v0 + 768);
      v49 = *(v0 + 664);
      v27 = *(v0 + 608);
      v28 = *(v0 + 600);

      v13(v48, v49);
      sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8]);
      v29 = swift_allocError();
      v31 = v50;
      v32 = MEMORY[0x277D182C8];
    }

    else
    {
      v5(*(v0 + 760), v4, *(v0 + 664));
      v33 = sub_22B36050C();
      v34 = sub_22B360D2C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22B116000, v33, v34, "Token Error Inducer throwing NetworkError.authorizationCodeExpired", v35, 2u);
        MEMORY[0x23188F650](v35, -1, -1);
      }

      v36 = *(v0 + 760);
      v37 = *(v0 + 664);
      v27 = *(v0 + 608);
      v28 = *(v0 + 600);

      v13(v36, v37);
      sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8]);
      v29 = swift_allocError();
      v31 = v38;
      v32 = MEMORY[0x277D182E0];
    }

    goto LABEL_20;
  }

  if (v14 == 1)
  {
    v5(*(v0 + 784), v4, *(v0 + 664));
    v39 = sub_22B36050C();
    v40 = sub_22B360D2C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22B116000, v39, v40, "Token Error Inducer throwing NetworkError.unauthorizedRequest", v41, 2u);
      MEMORY[0x23188F650](v41, -1, -1);
    }

    v42 = *(v0 + 784);
    v43 = *(v0 + 664);
    v27 = *(v0 + 608);
    v28 = *(v0 + 600);

    v13(v42, v43);
    sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8]);
    v29 = swift_allocError();
    v31 = v44;
    v32 = MEMORY[0x277D182D0];
    goto LABEL_20;
  }

  if (v14 == 2)
  {
    goto LABEL_17;
  }

LABEL_34:
  v57 = *(v0 + 568);
  v5(*(v0 + 736), v4, *(v0 + 664));

  v58 = sub_22B36050C();
  v59 = sub_22B360D2C();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 568);
  if (v60)
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = *(v12 + 120);

    _os_log_impl(&dword_22B116000, v58, v59, "Invalid error inducer code %ld. Skipping error inducer", v62, 0xCu);
    MEMORY[0x23188F650](v62, -1, -1);
  }

  else
  {
    v63 = *(v0 + 568);
  }

  v13(*(v0 + 736), *(v0 + 664));
LABEL_38:
  v64 = *(v0 + 656);
  v65 = *(v0 + 640);
  v66 = *(v0 + 632);
  v67 = *(v0 + 624);
  v68 = *(v0 + 560);
  sub_22B35DE6C();
  sub_22B1B05B4(v68, v67);
  v69 = *(v65 + 48);
  if (v69(v67, 1, v66) == 1)
  {
    v70 = *(v0 + 632);
    v71 = *(v0 + 624);
    (*(*(v0 + 640) + 16))(*(v0 + 648), *(v0 + 656), v70);
    if (v69(v71, 1, v70) != 1)
    {
      sub_22B123284(*(v0 + 624), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 624), *(v0 + 632));
  }

  v72 = *(v0 + 656);
  v73 = *(v0 + 648);
  v74 = *(v0 + 640);
  v75 = *(v0 + 632);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_22B3634B0;
  *(v76 + 56) = v75;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v76 + 32));
  (*(v74 + 16))(boxed_opaque_existential_1, v73, v75);
  sub_22B36147C();

  sub_22B2EC1B8(&qword_28140B490, MEMORY[0x277CC9578]);
  if ((sub_22B36074C() & 1) == 0)
  {
    v103 = *(v0 + 656);
    v104 = *(v0 + 648);
    v105 = *(v0 + 640);
    v106 = *(v0 + 632);
    v107 = *(v0 + 608);
    v108 = *(v0 + 600);
    sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8]);
    v29 = swift_allocError();
    (*(v107 + 104))(v109, *MEMORY[0x277D182C0], v108);
    swift_willThrow();
    v110 = *(v105 + 8);
    v110(v104, v106);
    v110(v103, v106);
    goto LABEL_52;
  }

  if (*(*(v0 + 568) + 113) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v78 = *(v0 + 728);
    v79 = *(v0 + 672);
    v80 = *(v0 + 664);
    v81 = __swift_project_value_buffer(v80, qword_28140BD10);
    swift_beginAccess();
    v82 = *(v79 + 16);
    v82(v78, v81, v80);
    v83 = sub_22B36050C();
    v84 = sub_22B360D1C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_22B116000, v83, v84, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v85, 2u);
      MEMORY[0x23188F650](v85, -1, -1);
    }

    v86 = *(v0 + 728);
    v87 = *(v0 + 720);
    v88 = *(v0 + 672);
    v89 = *(v0 + 664);

    v90 = *(v88 + 8);
    v90(v86, v89);
    v82(v87, v81, v89);
    v91 = sub_22B36050C();
    v92 = sub_22B360D2C();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_22B116000, v91, v92, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v93, 2u);
      MEMORY[0x23188F650](v93, -1, -1);
    }

    v94 = *(v0 + 720);
    v95 = *(v0 + 672);
    v96 = *(v0 + 664);
    v97 = *(v0 + 656);
    v98 = *(v0 + 648);
    v99 = *(v0 + 640);
    v100 = *(v0 + 632);

    v90(v94, v96);
    sub_22B134CDC();
    v29 = swift_allocError();
    *v101 = 27;
    swift_willThrow();
    v102 = *(v99 + 8);
    v102(v98, v100);
    v102(v97, v100);
LABEL_52:
    *(v0 + 904) = v29;
    v111 = *(v0 + 616);
    v112 = *(v0 + 600);
    *(v0 + 464) = v29;
    v113 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v114 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
      if (v114 == *MEMORY[0x277D182D0])
      {
LABEL_54:

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 712);
        v116 = *(v0 + 672);
        v117 = *(v0 + 664);
        v118 = __swift_project_value_buffer(v117, qword_28140BD10);
        swift_beginAccess();
        (*(v116 + 16))(v115, v118, v117);
        v119 = sub_22B36050C();
        v120 = sub_22B360D1C();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&dword_22B116000, v119, v120, "[Dropbox] Access Token Expired. Refresh all tokens", v121, 2u);
          MEMORY[0x23188F650](v121, -1, -1);
        }

        v122 = *(v0 + 712);
        v123 = *(v0 + 672);
        v124 = *(v0 + 664);

        (*(v123 + 8))(v122, v124);
        v20 = swift_task_alloc();
        *(v0 + 912) = v20;
        *v20 = v0;
        v21 = sub_22B2BB794;
        goto LABEL_95;
      }

      if (v114 == *MEMORY[0x277D182D8])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v125 = *(v0 + 704);
        v126 = *(v0 + 672);
        v127 = *(v0 + 664);
        v128 = __swift_project_value_buffer(v127, qword_28140BD10);
        swift_beginAccess();
        (*(v126 + 16))(v125, v128, v127);
        v129 = sub_22B36050C();
        v130 = sub_22B360D1C();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_22B116000, v129, v130, "[Dropbox] Subscription offboarded from server. Notify user", v131, 2u);
          MEMORY[0x23188F650](v131, -1, -1);
        }

        v132 = *(v0 + 704);
LABEL_76:
        v140 = *(v0 + 672);
        v141 = *(v0 + 664);

        (*(v140 + 8))(v132, v141);
        swift_willThrow();

LABEL_91:
        v165 = *(v0 + 792);
        v166 = *(v0 + 784);
        v167 = *(v0 + 776);
        v168 = *(v0 + 768);
        v169 = *(v0 + 760);
        v170 = *(v0 + 752);
        v171 = *(v0 + 744);
        v172 = *(v0 + 736);
        v173 = *(v0 + 728);
        v174 = *(v0 + 720);
        v187 = *(v0 + 712);
        v188 = *(v0 + 704);
        v189 = *(v0 + 696);
        v190 = *(v0 + 688);
        v191 = *(v0 + 680);
        v192 = *(v0 + 656);
        v193 = *(v0 + 648);
        v194 = *(v0 + 624);
        v195 = *(v0 + 616);
        v196 = *(v0 + 592);

        v175 = *(v0 + 8);

        return v175();
      }

      if (v114 == *MEMORY[0x277D182E0])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v134 = *(v0 + 688);
        v135 = *(v0 + 672);
        v136 = *(v0 + 664);
        v137 = __swift_project_value_buffer(v136, qword_28140BD10);
        swift_beginAccess();
        (*(v135 + 16))(v134, v137, v136);
        v129 = sub_22B36050C();
        v138 = sub_22B360D1C();
        if (os_log_type_enabled(v129, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&dword_22B116000, v129, v138, "[Dropbox] Authorization Code expired. Notify user", v139, 2u);
          MEMORY[0x23188F650](v139, -1, -1);
        }

        v132 = *(v0 + 688);
        goto LABEL_76;
      }

      if (v114 == *MEMORY[0x277D182C0])
      {
        goto LABEL_54;
      }

      if (v114 == *MEMORY[0x277D182C8])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v142 = *(v0 + 696);
        v143 = *(v0 + 672);
        v144 = *(v0 + 664);
        v145 = __swift_project_value_buffer(v144, qword_28140BD10);
        swift_beginAccess();
        (*(v143 + 16))(v142, v145, v144);
        v129 = sub_22B36050C();
        v146 = sub_22B360D1C();
        if (os_log_type_enabled(v129, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&dword_22B116000, v129, v146, "[Dropbox] Refresh Token expired. Notify user", v147, 2u);
          MEMORY[0x23188F650](v147, -1, -1);
        }

        v132 = *(v0 + 696);
        goto LABEL_76;
      }

      (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v148 = *(v0 + 680);
    v149 = *(v0 + 672);
    v150 = *(v0 + 664);
    v151 = __swift_project_value_buffer(v150, qword_28140BD10);
    swift_beginAccess();
    (*(v149 + 16))(v148, v151, v150);
    v152 = v29;
    v153 = sub_22B36050C();
    v154 = sub_22B360D1C();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *v155 = 138543362;
      v157 = v29;
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v155 + 4) = v158;
      *v156 = v158;
      _os_log_impl(&dword_22B116000, v153, v154, "[Dropbox] Error refreshing authorization token %{public}@", v155, 0xCu);
      sub_22B123284(v156, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v156, -1, -1);
      MEMORY[0x23188F650](v155, -1, -1);
    }

    v159 = *(v0 + 680);
    v160 = *(v0 + 672);
    v161 = *(v0 + 664);
    v162 = *(v0 + 592);
    v163 = *(v0 + 576);

    (*(v160 + 8))(v159, v161);
    *(v0 + 472) = v29;
    v164 = v29;
    if (!swift_dynamicCast())
    {
      v20 = swift_task_alloc();
      *(v0 + 928) = v20;
      *v20 = v0;
      v21 = sub_22B2BBA58;
LABEL_95:
      v20[1] = v21;
      v176 = *(v0 + 568);
      v177 = *(v0 + 552);
      v178 = *(v0 + 544);
      v179 = *(v0 + 536);
      v180 = *(v0 + 528);
      v181 = *(v0 + 520);
      v182 = *(v0 + 512);
      v184 = *(v0 + 480);
      v183 = *(v0 + 488);

      return sub_22B2B30B0(v184, v183, v182, v181, v180, v179, v178, v177);
    }

    (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
    swift_willThrow();
    goto LABEL_91;
  }

  *(v0 + 816) = sub_22B36012C();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v133 = qword_28140BDD8;
  *(v0 + 824) = qword_28140BDD8;

  return MEMORY[0x2822009F8](sub_22B2BAE9C, v133, 0);
}

uint64_t sub_22B2BAC28(uint64_t a1)
{
  v4 = *(*v2 + 800);
  v5 = *v2;
  v5[101] = v1;

  if (v1)
  {
    v6 = v5[71];

    return MEMORY[0x2822009F8](sub_22B2BBD1C, v6, 0);
  }

  else
  {
    v7 = v5[99];
    v8 = v5[98];
    v29 = a1;
    v9 = v5[97];
    v10 = v5[96];
    v11 = v5[95];
    v12 = v5[94];
    v13 = v5[93];
    v14 = v5[92];
    v15 = v5[91];
    v19 = v5[90];
    v20 = v5[89];
    v21 = v5[88];
    v22 = v5[87];
    v23 = v5[86];
    v24 = v5[85];
    v25 = v5[82];
    v26 = v5[81];
    v27 = v5[78];
    v28 = v5[77];
    v16 = v5[74];

    v17 = v5[1];

    return v17(v29);
  }
}

uint64_t sub_22B2BAE9C()
{
  v1 = *(v0[103] + 120);
  v0[104] = v1;
  v2 = *(MEMORY[0x277D18200] + 4);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[105] = v4;
  *v4 = v0;
  v4[1] = sub_22B2BAF60;
  v5 = v0[102];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[62];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[61];

  return MEMORY[0x2821724F8](v7, v6, v10, v11, v8, v9, v3);
}

uint64_t sub_22B2BAF60(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 840);
  v8 = *v3;
  v6[106] = v2;

  v9 = v6[104];
  if (v2)
  {
    v10 = v6[71];

    v11 = sub_22B2BC63C;
  }

  else
  {
    v10 = v6[103];

    v6[107] = a2;
    v6[108] = a1;
    v11 = sub_22B2BB0B8;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22B2BB0B8()
{
  v1 = v0[71];
  v2 = *(v0[103] + 120);
  v0[109] = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_22B2BB130, v1, 0);
}

uint64_t sub_22B2BB130()
{
  v1 = v0[109];
  v0[2] = v0;
  v0[3] = sub_22B2BB244;
  v2 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_22B30F28C;
  v0[23] = &block_descriptor_23;
  v0[24] = v2;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B2BB244()
{
  v1 = *(*v0 + 568);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2BB338, v1, 0);
}

uint64_t sub_22B2BB338()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = 0x6974636E75466B63;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF6E656B6F546E6FLL;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v5 = sub_22B321AAC(inited);
  *(v0 + 880) = v5;
  swift_setDeallocating();
  sub_22B123284(v4, &unk_27D8BAD00, &qword_22B3656C0);
  v6 = swift_task_alloc();
  *(v0 + 888) = v6;
  *v6 = v0;
  v6[1] = sub_22B2BB484;
  v7 = *(v0 + 824);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  return sub_22B2244D0(v9, v8, v5);
}

uint64_t sub_22B2BB484(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[49] = v2;
  v4[50] = a1;
  v4[51] = v1;
  v5 = v3[111];
  v6 = *v2;
  v4[112] = v1;

  v7 = v3[110];
  v8 = v3[71];

  if (v1)
  {
    v9 = sub_22B2BCF94;
  }

  else
  {
    v9 = sub_22B2BB5D4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2BB5D4()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = *(v0[80] + 8);
  v3(v0[81], v2);
  v3(v1, v2);
  v26 = v0[50];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[90];
  v16 = v0[89];
  v17 = v0[88];
  v18 = v0[87];
  v19 = v0[86];
  v20 = v0[85];
  v21 = v0[82];
  v22 = v0[81];
  v23 = v0[78];
  v24 = v0[77];
  v25 = v0[74];

  v14 = v0[1];

  return v14(v26);
}

uint64_t sub_22B2BB794(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[52] = v2;
  v4[53] = a1;
  v4[54] = v1;
  v5 = v3[114];
  v6 = *v2;
  v4[115] = v1;

  v7 = v3[71];
  if (v1)
  {
    v8 = sub_22B2BDA78;
  }

  else
  {
    v8 = sub_22B2BB8C8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2BB8C8()
{
  v23 = *(v0 + 424);
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 624);
  v21 = *(v0 + 616);
  v22 = *(v0 + 592);

  v11 = *(v0 + 8);

  return v11(v23);
}

uint64_t sub_22B2BBA58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[55] = v2;
  v4[56] = a1;
  v4[57] = v1;
  v5 = v3[116];
  v6 = *v2;
  v4[117] = v1;

  v7 = v3[71];
  if (v1)
  {
    v8 = sub_22B2BD8EC;
  }

  else
  {
    v8 = sub_22B2BBB8C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2BBB8C()
{
  v23 = *(v0 + 448);
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 624);
  v21 = *(v0 + 616);
  v22 = *(v0 + 592);

  v11 = *(v0 + 8);

  return v11(v23);
}

uint64_t sub_22B2BBD1C()
{
  v1 = *(v0 + 808);
  *(v0 + 904) = v1;
  v2 = *(v0 + 616);
  v3 = *(v0 + 600);
  *(v0 + 464) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
    if (v5 == *MEMORY[0x277D182D0])
    {
LABEL_3:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 712);
      v7 = *(v0 + 672);
      v8 = *(v0 + 664);
      v9 = __swift_project_value_buffer(v8, qword_28140BD10);
      swift_beginAccess();
      (*(v7 + 16))(v6, v9, v8);
      v10 = sub_22B36050C();
      v11 = sub_22B360D1C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox] Access Token Expired. Refresh all tokens", v12, 2u);
        MEMORY[0x23188F650](v12, -1, -1);
      }

      v13 = *(v0 + 712);
      v14 = *(v0 + 672);
      v15 = *(v0 + 664);

      (*(v14 + 8))(v13, v15);
      v16 = swift_task_alloc();
      *(v0 + 912) = v16;
      *v16 = v0;
      v17 = sub_22B2BB794;
      goto LABEL_39;
    }

    if (v5 == *MEMORY[0x277D182D8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 704);
      v19 = *(v0 + 672);
      v20 = *(v0 + 664);
      v21 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      (*(v19 + 16))(v18, v21, v20);
      v22 = sub_22B36050C();
      v23 = sub_22B360D1C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22B116000, v22, v23, "[Dropbox] Subscription offboarded from server. Notify user", v24, 2u);
        MEMORY[0x23188F650](v24, -1, -1);
      }

      v25 = *(v0 + 704);
LABEL_20:
      v32 = *(v0 + 672);
      v33 = *(v0 + 664);

      (*(v32 + 8))(v25, v33);
      swift_willThrow();

      goto LABEL_35;
    }

    if (v5 == *MEMORY[0x277D182E0])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 688);
      v27 = *(v0 + 672);
      v28 = *(v0 + 664);
      v29 = __swift_project_value_buffer(v28, qword_28140BD10);
      swift_beginAccess();
      (*(v27 + 16))(v26, v29, v28);
      v22 = sub_22B36050C();
      v30 = sub_22B360D1C();
      if (os_log_type_enabled(v22, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22B116000, v22, v30, "[Dropbox] Authorization Code expired. Notify user", v31, 2u);
        MEMORY[0x23188F650](v31, -1, -1);
      }

      v25 = *(v0 + 688);
      goto LABEL_20;
    }

    if (v5 == *MEMORY[0x277D182C0])
    {
      goto LABEL_3;
    }

    if (v5 == *MEMORY[0x277D182C8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 696);
      v35 = *(v0 + 672);
      v36 = *(v0 + 664);
      v37 = __swift_project_value_buffer(v36, qword_28140BD10);
      swift_beginAccess();
      (*(v35 + 16))(v34, v37, v36);
      v22 = sub_22B36050C();
      v38 = sub_22B360D1C();
      if (os_log_type_enabled(v22, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_22B116000, v22, v38, "[Dropbox] Refresh Token expired. Notify user", v39, 2u);
        MEMORY[0x23188F650](v39, -1, -1);
      }

      v25 = *(v0 + 696);
      goto LABEL_20;
    }

    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 680);
  v41 = *(v0 + 672);
  v42 = *(v0 + 664);
  v43 = __swift_project_value_buffer(v42, qword_28140BD10);
  swift_beginAccess();
  (*(v41 + 16))(v40, v43, v42);
  v44 = v1;
  v45 = sub_22B36050C();
  v46 = sub_22B360D1C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138543362;
    v49 = v1;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 4) = v50;
    *v48 = v50;
    _os_log_impl(&dword_22B116000, v45, v46, "[Dropbox] Error refreshing authorization token %{public}@", v47, 0xCu);
    sub_22B123284(v48, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v48, -1, -1);
    MEMORY[0x23188F650](v47, -1, -1);
  }

  v51 = *(v0 + 680);
  v52 = *(v0 + 672);
  v53 = *(v0 + 664);
  v54 = *(v0 + 592);
  v55 = *(v0 + 576);

  (*(v52 + 8))(v51, v53);
  *(v0 + 472) = v1;
  v56 = v1;
  if (!swift_dynamicCast())
  {
    v16 = swift_task_alloc();
    *(v0 + 928) = v16;
    *v16 = v0;
    v17 = sub_22B2BBA58;
LABEL_39:
    v16[1] = v17;
    v69 = *(v0 + 568);
    v70 = *(v0 + 552);
    v71 = *(v0 + 544);
    v72 = *(v0 + 536);
    v73 = *(v0 + 528);
    v74 = *(v0 + 520);
    v75 = *(v0 + 512);
    v77 = *(v0 + 480);
    v76 = *(v0 + 488);

    return sub_22B2B30B0(v77, v76, v75, v74, v73, v72, v71, v70);
  }

  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
  swift_willThrow();
LABEL_35:
  v57 = *(v0 + 792);
  v58 = *(v0 + 784);
  v59 = *(v0 + 776);
  v60 = *(v0 + 768);
  v61 = *(v0 + 760);
  v62 = *(v0 + 752);
  v63 = *(v0 + 744);
  v64 = *(v0 + 736);
  v65 = *(v0 + 728);
  v66 = *(v0 + 720);
  v78 = *(v0 + 712);
  v79 = *(v0 + 704);
  v80 = *(v0 + 696);
  v81 = *(v0 + 688);
  v82 = *(v0 + 680);
  v83 = *(v0 + 656);
  v84 = *(v0 + 648);
  v85 = *(v0 + 624);
  v86 = *(v0 + 616);
  v87 = *(v0 + 592);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_22B2BC63C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(*(v0 + 640) + 8);
  v3(*(v0 + 648), v2);
  v3(v1, v2);
  v4 = *(v0 + 848);
  *(v0 + 904) = v4;
  v5 = *(v0 + 616);
  v6 = *(v0 + 600);
  *(v0 + 464) = v4;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v8 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
    if (v8 == *MEMORY[0x277D182D0])
    {
LABEL_3:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 712);
      v10 = *(v0 + 672);
      v11 = *(v0 + 664);
      v12 = __swift_project_value_buffer(v11, qword_28140BD10);
      swift_beginAccess();
      (*(v10 + 16))(v9, v12, v11);
      v13 = sub_22B36050C();
      v14 = sub_22B360D1C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox] Access Token Expired. Refresh all tokens", v15, 2u);
        MEMORY[0x23188F650](v15, -1, -1);
      }

      v16 = *(v0 + 712);
      v17 = *(v0 + 672);
      v18 = *(v0 + 664);

      (*(v17 + 8))(v16, v18);
      v19 = swift_task_alloc();
      *(v0 + 912) = v19;
      *v19 = v0;
      v20 = sub_22B2BB794;
      goto LABEL_39;
    }

    if (v8 == *MEMORY[0x277D182D8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 704);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);
      v24 = __swift_project_value_buffer(v23, qword_28140BD10);
      swift_beginAccess();
      (*(v22 + 16))(v21, v24, v23);
      v25 = sub_22B36050C();
      v26 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22B116000, v25, v26, "[Dropbox] Subscription offboarded from server. Notify user", v27, 2u);
        MEMORY[0x23188F650](v27, -1, -1);
      }

      v28 = *(v0 + 704);
LABEL_20:
      v35 = *(v0 + 672);
      v36 = *(v0 + 664);

      (*(v35 + 8))(v28, v36);
      swift_willThrow();

      goto LABEL_35;
    }

    if (v8 == *MEMORY[0x277D182E0])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 688);
      v30 = *(v0 + 672);
      v31 = *(v0 + 664);
      v32 = __swift_project_value_buffer(v31, qword_28140BD10);
      swift_beginAccess();
      (*(v30 + 16))(v29, v32, v31);
      v25 = sub_22B36050C();
      v33 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_22B116000, v25, v33, "[Dropbox] Authorization Code expired. Notify user", v34, 2u);
        MEMORY[0x23188F650](v34, -1, -1);
      }

      v28 = *(v0 + 688);
      goto LABEL_20;
    }

    if (v8 == *MEMORY[0x277D182C0])
    {
      goto LABEL_3;
    }

    if (v8 == *MEMORY[0x277D182C8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 696);
      v38 = *(v0 + 672);
      v39 = *(v0 + 664);
      v40 = __swift_project_value_buffer(v39, qword_28140BD10);
      swift_beginAccess();
      (*(v38 + 16))(v37, v40, v39);
      v25 = sub_22B36050C();
      v41 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_22B116000, v25, v41, "[Dropbox] Refresh Token expired. Notify user", v42, 2u);
        MEMORY[0x23188F650](v42, -1, -1);
      }

      v28 = *(v0 + 696);
      goto LABEL_20;
    }

    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 680);
  v44 = *(v0 + 672);
  v45 = *(v0 + 664);
  v46 = __swift_project_value_buffer(v45, qword_28140BD10);
  swift_beginAccess();
  (*(v44 + 16))(v43, v46, v45);
  v47 = v4;
  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138543362;
    v52 = v4;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v53;
    *v51 = v53;
    _os_log_impl(&dword_22B116000, v48, v49, "[Dropbox] Error refreshing authorization token %{public}@", v50, 0xCu);
    sub_22B123284(v51, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v51, -1, -1);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v54 = *(v0 + 680);
  v55 = *(v0 + 672);
  v56 = *(v0 + 664);
  v57 = *(v0 + 592);
  v58 = *(v0 + 576);

  (*(v55 + 8))(v54, v56);
  *(v0 + 472) = v4;
  v59 = v4;
  if (!swift_dynamicCast())
  {
    v19 = swift_task_alloc();
    *(v0 + 928) = v19;
    *v19 = v0;
    v20 = sub_22B2BBA58;
LABEL_39:
    v19[1] = v20;
    v72 = *(v0 + 568);
    v73 = *(v0 + 552);
    v74 = *(v0 + 544);
    v75 = *(v0 + 536);
    v76 = *(v0 + 528);
    v77 = *(v0 + 520);
    v78 = *(v0 + 512);
    v80 = *(v0 + 480);
    v79 = *(v0 + 488);

    return sub_22B2B30B0(v80, v79, v78, v77, v76, v75, v74, v73);
  }

  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
  swift_willThrow();
LABEL_35:
  v60 = *(v0 + 792);
  v61 = *(v0 + 784);
  v62 = *(v0 + 776);
  v63 = *(v0 + 768);
  v64 = *(v0 + 760);
  v65 = *(v0 + 752);
  v66 = *(v0 + 744);
  v67 = *(v0 + 736);
  v68 = *(v0 + 728);
  v69 = *(v0 + 720);
  v81 = *(v0 + 712);
  v82 = *(v0 + 704);
  v83 = *(v0 + 696);
  v84 = *(v0 + 688);
  v85 = *(v0 + 680);
  v86 = *(v0 + 656);
  v87 = *(v0 + 648);
  v88 = *(v0 + 624);
  v89 = *(v0 + 616);
  v90 = *(v0 + 592);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_22B2BCF94()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(*(v0 + 640) + 8);
  v3(*(v0 + 648), v2);
  v3(v1, v2);
  v4 = *(v0 + 896);
  *(v0 + 904) = v4;
  v5 = *(v0 + 616);
  v6 = *(v0 + 600);
  *(v0 + 464) = v4;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v8 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
    if (v8 == *MEMORY[0x277D182D0])
    {
LABEL_3:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 712);
      v10 = *(v0 + 672);
      v11 = *(v0 + 664);
      v12 = __swift_project_value_buffer(v11, qword_28140BD10);
      swift_beginAccess();
      (*(v10 + 16))(v9, v12, v11);
      v13 = sub_22B36050C();
      v14 = sub_22B360D1C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox] Access Token Expired. Refresh all tokens", v15, 2u);
        MEMORY[0x23188F650](v15, -1, -1);
      }

      v16 = *(v0 + 712);
      v17 = *(v0 + 672);
      v18 = *(v0 + 664);

      (*(v17 + 8))(v16, v18);
      v19 = swift_task_alloc();
      *(v0 + 912) = v19;
      *v19 = v0;
      v20 = sub_22B2BB794;
      goto LABEL_39;
    }

    if (v8 == *MEMORY[0x277D182D8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 704);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);
      v24 = __swift_project_value_buffer(v23, qword_28140BD10);
      swift_beginAccess();
      (*(v22 + 16))(v21, v24, v23);
      v25 = sub_22B36050C();
      v26 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22B116000, v25, v26, "[Dropbox] Subscription offboarded from server. Notify user", v27, 2u);
        MEMORY[0x23188F650](v27, -1, -1);
      }

      v28 = *(v0 + 704);
LABEL_20:
      v35 = *(v0 + 672);
      v36 = *(v0 + 664);

      (*(v35 + 8))(v28, v36);
      swift_willThrow();

      goto LABEL_35;
    }

    if (v8 == *MEMORY[0x277D182E0])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 688);
      v30 = *(v0 + 672);
      v31 = *(v0 + 664);
      v32 = __swift_project_value_buffer(v31, qword_28140BD10);
      swift_beginAccess();
      (*(v30 + 16))(v29, v32, v31);
      v25 = sub_22B36050C();
      v33 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_22B116000, v25, v33, "[Dropbox] Authorization Code expired. Notify user", v34, 2u);
        MEMORY[0x23188F650](v34, -1, -1);
      }

      v28 = *(v0 + 688);
      goto LABEL_20;
    }

    if (v8 == *MEMORY[0x277D182C0])
    {
      goto LABEL_3;
    }

    if (v8 == *MEMORY[0x277D182C8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 696);
      v38 = *(v0 + 672);
      v39 = *(v0 + 664);
      v40 = __swift_project_value_buffer(v39, qword_28140BD10);
      swift_beginAccess();
      (*(v38 + 16))(v37, v40, v39);
      v25 = sub_22B36050C();
      v41 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_22B116000, v25, v41, "[Dropbox] Refresh Token expired. Notify user", v42, 2u);
        MEMORY[0x23188F650](v42, -1, -1);
      }

      v28 = *(v0 + 696);
      goto LABEL_20;
    }

    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 680);
  v44 = *(v0 + 672);
  v45 = *(v0 + 664);
  v46 = __swift_project_value_buffer(v45, qword_28140BD10);
  swift_beginAccess();
  (*(v44 + 16))(v43, v46, v45);
  v47 = v4;
  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138543362;
    v52 = v4;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v53;
    *v51 = v53;
    _os_log_impl(&dword_22B116000, v48, v49, "[Dropbox] Error refreshing authorization token %{public}@", v50, 0xCu);
    sub_22B123284(v51, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v51, -1, -1);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v54 = *(v0 + 680);
  v55 = *(v0 + 672);
  v56 = *(v0 + 664);
  v57 = *(v0 + 592);
  v58 = *(v0 + 576);

  (*(v55 + 8))(v54, v56);
  *(v0 + 472) = v4;
  v59 = v4;
  if (!swift_dynamicCast())
  {
    v19 = swift_task_alloc();
    *(v0 + 928) = v19;
    *v19 = v0;
    v20 = sub_22B2BBA58;
LABEL_39:
    v19[1] = v20;
    v72 = *(v0 + 568);
    v73 = *(v0 + 552);
    v74 = *(v0 + 544);
    v75 = *(v0 + 536);
    v76 = *(v0 + 528);
    v77 = *(v0 + 520);
    v78 = *(v0 + 512);
    v80 = *(v0 + 480);
    v79 = *(v0 + 488);

    return sub_22B2B30B0(v80, v79, v78, v77, v76, v75, v74, v73);
  }

  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
  swift_willThrow();
LABEL_35:
  v60 = *(v0 + 792);
  v61 = *(v0 + 784);
  v62 = *(v0 + 776);
  v63 = *(v0 + 768);
  v64 = *(v0 + 760);
  v65 = *(v0 + 752);
  v66 = *(v0 + 744);
  v67 = *(v0 + 736);
  v68 = *(v0 + 728);
  v69 = *(v0 + 720);
  v81 = *(v0 + 712);
  v82 = *(v0 + 704);
  v83 = *(v0 + 696);
  v84 = *(v0 + 688);
  v85 = *(v0 + 680);
  v86 = *(v0 + 656);
  v87 = *(v0 + 648);
  v88 = *(v0 + 624);
  v89 = *(v0 + 616);
  v90 = *(v0 + 592);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_22B2BD8EC()
{
  v23 = *(v0 + 936);
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 624);
  v21 = *(v0 + 616);
  v22 = *(v0 + 592);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B2BDA78()
{
  v23 = *(v0 + 920);
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  v13 = *(v0 + 712);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 624);
  v21 = *(v0 + 616);
  v22 = *(v0 + 592);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B2BDC04(uint64_t a1)
{
  v2[200] = v1;
  v2[199] = a1;
  v3 = sub_22B3602EC();
  v2[201] = v3;
  v4 = *(v3 - 8);
  v2[202] = v4;
  v5 = *(v4 + 64) + 15;
  v2[203] = swift_task_alloc();
  v6 = sub_22B3602FC();
  v2[204] = v6;
  v7 = *(v6 - 8);
  v2[205] = v7;
  v8 = *(v7 + 64) + 15;
  v2[206] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v2[207] = swift_task_alloc();
  v10 = sub_22B35E0BC();
  v2[208] = v10;
  v11 = *(v10 - 8);
  v2[209] = v11;
  v12 = *(v11 + 64) + 15;
  v2[210] = swift_task_alloc();
  v13 = sub_22B35EE4C();
  v2[211] = v13;
  v14 = *(v13 - 8);
  v2[212] = v14;
  v15 = *(v14 + 64) + 15;
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v2[218] = swift_task_alloc();
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  v17 = sub_22B35DE9C();
  v2[223] = v17;
  v18 = *(v17 - 8);
  v2[224] = v18;
  v19 = *(v18 + 64) + 15;
  v2[225] = swift_task_alloc();
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();
  v2[233] = swift_task_alloc();
  v2[234] = swift_task_alloc();
  v20 = sub_22B36052C();
  v2[235] = v20;
  v21 = *(v20 - 8);
  v2[236] = v21;
  v22 = *(v21 + 64) + 15;
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v2[260] = swift_task_alloc();
  v2[261] = swift_task_alloc();
  v2[262] = swift_task_alloc();
  v2[263] = swift_task_alloc();
  v23 = sub_22B36037C();
  v2[264] = v23;
  v24 = *(v23 - 8);
  v2[265] = v24;
  v25 = *(v24 + 64) + 15;
  v2[266] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2BE164, v1, 0);
}

uint64_t sub_22B2BE164()
{
  v508 = v0;
  v1 = v0[199];
  v0[198] = v1;
  v2 = v1;
  v3 = sub_22B35F14C();
  v0[267] = v4;
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v3;
  v6 = v4;
  v7 = v0[199];
  v8 = sub_22B35F06C();
  v0[268] = v9;
  if (!v9)
  {
LABEL_23:

LABEL_24:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v31 = v0[243];
    v32 = v0[236];
    v33 = v0[235];
    v34 = v0[199];
    v35 = __swift_project_value_buffer(v33, qword_28140BD10);
    swift_beginAccess();
    (*(v32 + 16))(v31, v35, v33);
    v36 = v34;
    v37 = sub_22B36050C();
    v38 = sub_22B360D1C();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[243];
    v41 = v0[236];
    v42 = v0[235];
    v43 = v0[199];
    if (v39)
    {
      v498 = v0[243];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v507[0] = v45;
      *v44 = 136446210;
      v46 = sub_22B35F3AC();
      v48 = sub_22B1A7B20(v46, v47, v507);

      *(v44 + 4) = v48;

      _os_log_impl(&dword_22B116000, v37, v38, "[Dropbox] Failed to refresh AMI Data for %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x23188F650](v45, -1, -1);
      MEMORY[0x23188F650](v44, -1, -1);

      (*(v41 + 8))(v498, v42);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    goto LABEL_30;
  }

  v10 = v8;
  v11 = v9;
  v12 = v0[199];
  v13 = sub_22B35F0BC();
  v0[269] = v14;
  if (!v14)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = v13;
  v16 = v14;
  v17 = v0[199];
  v18 = sub_22B35F43C();
  v0[270] = v18;
  v0[271] = v19;
  v354 = v0;
  if (!v19)
  {
LABEL_21:

    goto LABEL_22;
  }

  v20 = v19;
  v497 = v18;
  v21 = v0[199];
  v22 = sub_22B35F12C();
  v0[272] = v22;
  v0[273] = v23;
  if (!v23)
  {
LABEL_20:

    goto LABEL_21;
  }

  v24 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v24 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_19;
  }

  v25 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v25 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v26 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
LABEL_19:

    goto LABEL_20;
  }

  v454 = v22;
  v477 = v23;
  v27 = v0[199];
  v28 = sub_22B35F14C();
  if (!v29)
  {
    sub_22B134CDC();
    v61 = swift_allocError();
    *v62 = 23;
    swift_willThrow();
    v69 = v0[199];
    v0[332] = v69;
    v0[331] = v61;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v500 = v69;
    v70 = v0[242];
    v71 = v0[236];
    v72 = v0[235];
    v73 = __swift_project_value_buffer(v354[235], qword_28140BD10);
    swift_beginAccess();
    v472 = *(v71 + 16);
    v479 = v73;
    v472(v70, v73, v72);
    v74 = v61;
    v75 = v61;
    v76 = sub_22B36050C();
    v77 = sub_22B360D1C();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v354[242];
    v80 = v354[236];
    v81 = v354[235];
    if (v78)
    {
      v82 = v61;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v507[0] = v85;
      *v83 = 136446466;
      v456 = v79;
      v86 = v500;
      v451 = v81;
      v87 = sub_22B35F3AC();
      v89 = v88;

      v90 = sub_22B1A7B20(v87, v89, v507);

      *(v83 + 4) = v90;
      *(v83 + 12) = 2114;
      v91 = v82;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v92;
      *v84 = v92;

      _os_log_impl(&dword_22B116000, v76, v77, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v83, 0x16u);
      sub_22B123284(v84, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v84, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x23188F650](v85, -1, -1);
      v93 = v83;
      v61 = v82;
      MEMORY[0x23188F650](v93, -1, -1);

      v94 = *(v80 + 8);
      v94(v456, v451);
    }

    else
    {

      v94 = *(v80 + 8);
      v94(v79, v81);
    }

    v95 = v354;
    v96 = v354[206];
    v97 = v354[204];
    v354[195] = v61;
    v98 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v99 = (*(v354[205] + 88))(v354[206], v354[204]);
      if (v99 == *MEMORY[0x277D182D0])
      {
        goto LABEL_45;
      }

      if (v99 == *MEMORY[0x277D182D8])
      {
        v104 = v354[273];
        v105 = v354[271];
        v106 = v354[269];
        v107 = v354[268];
        v108 = v354[267];
        v109 = v354[213];
        v110 = v354[212];
        v111 = v354[211];

        (*(v110 + 104))(v109, *MEMORY[0x277D07348], v111);
        v112 = v500;
        sub_22B35EE3C();
        (*(v110 + 8))(v109, v111);
        sub_22B35F39C();

        v112;
        v113 = swift_task_alloc();
        v354[333] = v113;
        *v113 = v354;
        v114 = sub_22B2CC1C8;
        goto LABEL_130;
      }

      if (v99 == *MEMORY[0x277D182E0] || v99 == *MEMORY[0x277D182C8])
      {
LABEL_45:

        if (qword_281408E18 != -1)
        {
          swift_once();
        }

        v100 = qword_28140BCA0;
        v354[334] = qword_28140BCA0;
        if (v100 && (v101 = sub_22B36081C(), v102 = [v100 dictionaryForKey_], v101, v102))
        {
          v103 = sub_22B3606EC();
        }

        else
        {
          v103 = sub_22B321AAC(MEMORY[0x277D84F90]);
        }

        v115 = v354[199];
        v354[193] = v103;
        v116 = sub_22B35F3AC();
        sub_22B2AC400(v116, v117, v103, v354 + 68);

        if (v354[139])
        {
          v118 = MEMORY[0x277D83B88];
          if (swift_dynamicCast())
          {
            v119 = v354[192];
            v120 = v354[235];
            if (v119 < 10)
            {
              v472(v354[240], v479, v120);
              v121 = sub_22B36050C();
              v122 = sub_22B360D1C();
              v123 = os_log_type_enabled(v121, v122);
              v124 = v354[273];
              v457 = v354[271];
              v463 = v354[269];
              v473 = v354[268];
              v480 = v354[267];
              v125 = v354[240];
              v126 = v354[236];
              v127 = v354[235];
              if (v123)
              {
                v128 = swift_slowAlloc();
                v129 = swift_slowAlloc();
                v507[0] = v129;
                *v128 = 136315394;
                v130 = v500;
                v501 = v125;
                v131 = v130;
                v442 = v127;
                v132 = sub_22B35F3AC();
                v488 = v94;
                v134 = v133;

                v135 = sub_22B1A7B20(v132, v134, v507);

                *(v128 + 4) = v135;
                *(v128 + 12) = 2048;
                v136 = v119 + 1;
                *(v128 + 14) = v136;

                _os_log_impl(&dword_22B116000, v121, v122, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v128, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v129);
                v137 = v129;
                v95 = v354;
                MEMORY[0x23188F650](v137, -1, -1);
                MEMORY[0x23188F650](v128, -1, -1);

                v488(v501, v442);
              }

              else
              {

                v94(v125, v127);
                v136 = v119 + 1;
              }

              v344 = v95[199];
              v198 = sub_22B35F3AC();
              v200 = v345;
              v95[155] = v118;
              v95[152] = v136;
              sub_22B172454(v95 + 76, v95 + 78);
              v346 = v95[193];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v507[0] = v346;
              v203 = v95 + 156;
LABEL_75:
              sub_22B33F298(v203, v198, v200, isUniquelyReferenced_nonNull_native);

              v95[193] = v507[0];
              v204 = v95[334];
              if (v204)
              {
                v205 = sub_22B3606CC();
                v206 = sub_22B36081C();
                [v204 setObject:v205 forKey:v206];
              }

              goto LABEL_78;
            }

            v472(v354[241], v479, v120);
            v284 = sub_22B36050C();
            v285 = sub_22B360D1C();
            v286 = os_log_type_enabled(v284, v285);
            v287 = v354[273];
            v288 = v354[271];
            v485 = v354[269];
            v289 = v354[268];
            v290 = v354[267];
            v291 = v354[241];
            v292 = v354[236];
            v293 = v354[235];
            if (v286)
            {
              v496 = v94;
              v294 = swift_slowAlloc();
              v295 = swift_slowAlloc();
              v507[0] = v295;
              *v294 = 136315138;
              v296 = v500;
              v469 = v291;
              v297 = v500;
              v460 = v293;
              v298 = sub_22B35F3AC();
              v300 = v299;

              v301 = sub_22B1A7B20(v298, v300, v507);

              *(v294 + 4) = v301;

              _os_log_impl(&dword_22B116000, v284, v285, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v294, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v295);
              MEMORY[0x23188F650](v295, -1, -1);
              MEMORY[0x23188F650](v294, -1, -1);

              v496(v469, v460);
            }

            else
            {

              v94(v291, v293);
              v296 = v500;
            }

            v347 = v354[213];
            v348 = v354[212];
            v349 = v354[211];
            (*(v348 + 104))(v347, *MEMORY[0x277D07350], v349);
            v350 = v296;
            sub_22B35EE3C();
            (*(v348 + 8))(v347, v349);
            sub_22B35F39C();

            v350;
            v113 = swift_task_alloc();
            v354[335] = v113;
            *v113 = v354;
            v114 = sub_22B2CC67C;
LABEL_130:
            v113[1] = v114;

            return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
          }
        }

        else
        {
          sub_22B123284((v354 + 136), &unk_27D8BA950, &qword_22B364940);
        }

        v472(v354[239], v479, v354[235]);
        v179 = sub_22B36050C();
        v180 = sub_22B360D1C();
        v181 = os_log_type_enabled(v179, v180);
        v182 = v354[273];
        v183 = v354[271];
        v184 = v354[269];
        v483 = v354[268];
        v185 = v354[267];
        v186 = v354[239];
        v187 = v354[236];
        v188 = v354[235];
        if (v181)
        {
          v490 = v94;
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v507[0] = v190;
          *v189 = 136315138;
          v191 = v500;
          v503 = v186;
          v192 = v191;
          v464 = v188;
          v193 = sub_22B35F3AC();
          v195 = v194;

          v196 = sub_22B1A7B20(v193, v195, v507);

          *(v189 + 4) = v196;

          _os_log_impl(&dword_22B116000, v179, v180, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v189, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v190);
          MEMORY[0x23188F650](v190, -1, -1);
          MEMORY[0x23188F650](v189, -1, -1);

          v490(v503, v464);
        }

        else
        {

          v94(v186, v188);
        }

        v95 = v354;
        v197 = v354[199];
        v198 = sub_22B35F3AC();
        v200 = v199;
        v354[143] = MEMORY[0x277D83B88];
        v354[140] = 1;
        sub_22B172454(v95 + 70, v95 + 72);
        v201 = v354[193];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v507[0] = v201;
        v203 = v354 + 144;
        goto LABEL_75;
      }

      (*(v354[205] + 8))(v354[206], v354[204]);
    }

    v138 = v354[203];
    v139 = v354[201];

    v354[194] = v61;
    v140 = v61;
    v141 = swift_dynamicCast();
    v142 = v354[235];
    if (v141)
    {
      v143 = v354[238];
      (*(v354[202] + 8))(v354[203], v354[201]);
      v472(v143, v479, v142);
      v144 = v61;
      v145 = v61;
      v146 = sub_22B36050C();
      v147 = sub_22B360D1C();
      v148 = os_log_type_enabled(v146, v147);
      v149 = v354[273];
      v150 = v354[271];
      v151 = v354[269];
      v474 = v354[268];
      v481 = v354[267];
      v152 = v354[238];
      v153 = v354[236];
      v154 = v354[235];
      if (v148)
      {
        v155 = swift_slowAlloc();
        v458 = v154;
        v156 = swift_slowAlloc();
        v452 = swift_slowAlloc();
        v507[0] = v452;
        *v155 = 136446466;
        v443 = v146;
        v157 = v500;
        v489 = v94;
        v502 = v152;
        v158 = sub_22B35F3AC();
        v160 = v159;

        v161 = sub_22B1A7B20(v158, v160, v507);

        *(v155 + 4) = v161;
        *(v155 + 12) = 2114;
        v162 = v61;
        v163 = _swift_stdlib_bridgeErrorToNSError();
        *(v155 + 14) = v163;
        *v156 = v163;

        v164 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_67:
        _os_log_impl(&dword_22B116000, v443, v147, v164, v155, 0x16u);
        sub_22B123284(v156, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v156, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v452);
        MEMORY[0x23188F650](v452, -1, -1);
        MEMORY[0x23188F650](v155, -1, -1);

        v489(v502, v458);
LABEL_69:
        v95 = v354;
LABEL_78:
        v207 = v95[332];
        v208 = v95[331];
        v209 = v95[266];
        v210 = v95[263];
        v211 = v95[262];
        v212 = v95[261];
        v213 = v95[260];
        v214 = v95;
        v215 = v95[259];
        v216 = v214[258];
        v351 = v214[257];
        v352 = v214[256];
        v353 = v214[255];
        v356 = v214[254];
        v358 = v214[253];
        v360 = v214[252];
        v362 = v214[251];
        v364 = v214[250];
        v366 = v214[249];
        v368 = v214[248];
        v370 = v214[247];
        v372 = v214[246];
        v374 = v214[245];
        v376 = v214[244];
        v378 = v214[243];
        v380 = v214[242];
        v382 = v214[241];
        v384 = v214[240];
        v386 = v214[239];
        v388 = v214[238];
        v390 = v214[237];
        v392 = v214[234];
        v394 = v214[233];
        v396 = v214[232];
        v398 = v214[231];
        v400 = v214[230];
        v402 = v214[229];
        v404 = v214[228];
        v406 = v214[227];
        v408 = v214[226];
        v411 = v214[225];
        v415 = v214[222];
        v419 = v214[221];
        v424 = v214[220];
        v426 = v214[219];
        v431 = v214[218];
        v437 = v214[217];
        v444 = v214[216];
        v453 = v214[215];
        v459 = v214[214];
        v465 = v214[213];
        v476 = v214[210];
        v484 = v214[207];
        v491 = v214[206];
        v504 = v214[203];
        swift_willThrow();

        v59 = v214[1];
        v217 = v214[331];
        goto LABEL_31;
      }
    }

    else
    {
      v472(v354[237], v479, v354[235]);
      v165 = v61;
      v166 = v61;
      v146 = sub_22B36050C();
      v147 = sub_22B360D1C();
      v167 = os_log_type_enabled(v146, v147);
      v168 = v354[273];
      v169 = v354[271];
      v170 = v354[269];
      v475 = v354[268];
      v482 = v354[267];
      v152 = v354[237];
      v171 = v354[236];
      v154 = v354[235];
      if (v167)
      {
        v155 = swift_slowAlloc();
        v458 = v154;
        v156 = swift_slowAlloc();
        v452 = swift_slowAlloc();
        v507[0] = v452;
        *v155 = 136446466;
        v443 = v146;
        v172 = v500;
        v489 = v94;
        v502 = v152;
        v173 = sub_22B35F3AC();
        v175 = v174;

        v176 = sub_22B1A7B20(v173, v175, v507);

        *(v155 + 4) = v176;
        *(v155 + 12) = 2114;
        v177 = v61;
        v178 = _swift_stdlib_bridgeErrorToNSError();
        *(v155 + 14) = v178;
        *v156 = v178;

        v164 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_67;
      }
    }

    v94(v152, v154);
    goto LABEL_69;
  }

  v449 = v15;
  v470 = v29;
  v422 = v28;
  v30 = v0[266];
  v461 = MEMORY[0x23188EEB0]();

  sub_22B36034C();
  v63 = v0[266];
  v64 = v0[200];
  v65 = sub_22B36035C();
  v66 = v65;
  if (*(v64 + 117))
  {
    v487 = v65;
    v67 = v0[224];
    v436 = v0[222];
    v441 = v0[223];
    sub_22B36036C();
    if ((*(v67 + 48))(v436, 1, v441) == 1)
    {
      v68 = v0[222];
      (*(v0[265] + 8))(v0[266], v0[264]);
      sub_22B123284(v68, &qword_27D8BA340, &qword_22B363FB0);
      v66 = v487;
    }

    else
    {
      v438 = v0[232];
      v445 = v0[233];
      v218 = v0[223];
      v427 = v0[265];
      v432 = v0[264];
      v219 = v0[222];
      v220 = v0[224];
      v416 = v354[234];
      v420 = v354[266];
      (*(v220 + 32))();
      sub_22B35F62C();
      sub_22B35DDCC();
      sub_22B35DE6C();
      sub_22B2EC1B8(&qword_28140B490, MEMORY[0x277CC9578]);
      v412 = sub_22B36074C();
      v221 = *(v220 + 8);
      v221(v438, v218);
      v221(v445, v218);
      v221(v416, v218);
      (*(v427 + 8))(v420, v432);
      v66 |= v412 ^ 1;
    }
  }

  else
  {
    (*(v0[265] + 8))(v0[266], v0[264]);
  }

  objc_autoreleasePoolPop(v461);
  v492 = v66;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v222 = v354[262];
  v223 = v354[236];
  v446 = v354[235];
  v466 = v354[199];
  v224 = __swift_project_value_buffer(v446, qword_28140BD10);
  v354[274] = v224;
  swift_beginAccess();
  v225 = *(v223 + 16);
  v354[275] = v225;
  v354[276] = (v223 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v433 = v224;
  v428 = v225;
  v225(v222, v224, v446);
  v226 = v466;
  v227 = sub_22B36050C();
  v421 = sub_22B360D2C();
  v228 = os_log_type_enabled(v227, v421);
  v467 = v354[262];
  v229 = v354[236];
  v447 = v354[235];
  v230 = v354[199];
  if (v228)
  {
    v231 = swift_slowAlloc();
    v413 = swift_slowAlloc();
    v507[0] = v413;
    *v231 = 136315394;
    v232 = sub_22B35F3AC();
    v417 = v229;
    v409 = v227;
    v234 = sub_22B1A7B20(v232, v233, v507);

    *(v231 + 4) = v234;

    *(v231 + 12) = 2080;
    v235 = v492;
    if (v492)
    {
      v236 = 0x64657269707865;
    }

    else
    {
      v236 = 0x64696C6176;
    }

    if (v492)
    {
      v237 = 0xE700000000000000;
    }

    else
    {
      v237 = 0xE500000000000000;
    }

    v238 = sub_22B1A7B20(v236, v237, v507);

    *(v231 + 14) = v238;
    _os_log_impl(&dword_22B116000, v409, v421, "[Dropbox] CKToken for %s: %s", v231, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v413, -1, -1);
    MEMORY[0x23188F650](v231, -1, -1);

    v239 = *(v417 + 8);
    v239(v467, v447);
  }

  else
  {

    v239 = *(v229 + 8);
    v239(v467, v447);
    v235 = v492;
  }

  v354[277] = v239;
  v468 = v239;
  if ((v235 & 1) != 0 || *(v354[200] + 115) == 1)
  {
    v240 = v354[199];
    v428(v354[261], v433, v354[235]);
    v241 = v240;
    swift_bridgeObjectRetain_n();
    v242 = v241;
    v243 = sub_22B36050C();
    v439 = sub_22B360D2C();
    v244 = os_log_type_enabled(v243, v439);
    v245 = v354[261];
    v448 = v354[236];
    v493 = v354[235];
    v246 = v354[199];
    if (v244)
    {
      v247 = swift_slowAlloc();
      v429 = swift_slowAlloc();
      v507[0] = v429;
      *v247 = 136446466;
      v248 = sub_22B35F3AC();
      v434 = v245;
      v250 = sub_22B1A7B20(v248, v249, v507);

      *(v247 + 4) = v250;

      *(v247 + 12) = 2082;

      v251 = sub_22B1A7B20(v454, v477, v507);

      *(v247 + 14) = v251;

      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_22B116000, v243, v439, "[Dropbox] Refreshing ck token for %{public}s subscription: %{public}s", v247, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v429, -1, -1);
      MEMORY[0x23188F650](v247, -1, -1);

      v252 = v434;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v252 = v245;
    }

    v468(v252, v493);
    v253 = v354[221];
    v254 = v354[199];
    v494 = sub_22B35F3AC();
    v256 = v255;
    v354[278] = v255;
    sub_22B35F2CC();
    v257 = swift_task_alloc();
    v354[279] = v257;
    *v257 = v354;
    v257[1] = sub_22B2C0B1C;
    v258 = v354[221];
    v259 = v354[200];
    v511 = v20;
    v512 = v258;
    v510 = v497;

    return sub_22B2B9260(v5, v6, v10, v11, v449, v16, v494, v256);
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v260 = qword_28140BCA0;
  v261 = v354;
  if (qword_28140BCA0 && (v262 = sub_22B36081C(), v263 = [v260 dictionaryForKey_], v262, v263))
  {
    v264 = sub_22B3606EC();
  }

  else
  {
    v264 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  v265 = v354[199];
  v266 = sub_22B35F3AC();
  sub_22B2AC400(v266, v267, v264, v354 + 82);

  if (v354[167])
  {
    if (swift_dynamicCast())
    {
      v428(v354[258], v433, v354[235]);
      v268 = sub_22B36050C();
      v269 = sub_22B360D2C();
      v270 = os_log_type_enabled(v268, v269);
      v271 = v354[258];
      v272 = v354[236];
      v273 = v354[235];
      if (v270)
      {
        v505 = v354[258];
        v274 = v354[199];
        v495 = v354[235];
        v275 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        v507[0] = v276;
        *v275 = 136315138;
        v277 = v274;
        v278 = sub_22B35F3AC();
        v280 = v279;

        v261 = v354;
        v281 = sub_22B1A7B20(v278, v280, v507);

        *(v275 + 4) = v281;
        _os_log_impl(&dword_22B116000, v268, v269, "[Dropbox] Token is valid.Clearing UtilityExpiredAttempts for %s", v275, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v276);
        MEMORY[0x23188F650](v276, -1, -1);
        MEMORY[0x23188F650](v275, -1, -1);

        v283 = v495;
        v282 = v505;
      }

      else
      {

        v282 = v271;
        v283 = v273;
      }

      v468(v282, v283);
      v302 = v261[199];
      v303 = sub_22B35F3AC();
      sub_22B2E641C(v303, v304, v261 + 66);

      sub_22B123284((v261 + 132), &unk_27D8BA950, &qword_22B364940);
      if (v260)
      {
        v305 = sub_22B3606CC();
        v306 = sub_22B36081C();
        [v260 setObject:v305 forKey:v306];
      }
    }
  }

  else
  {
    sub_22B123284((v354 + 164), &unk_27D8BA950, &qword_22B364940);
  }

  v307 = v261[199];
  v261[284] = v307;
  v261[283] = v470;
  v261[282] = 0;
  v308 = v261[200];
  v261[285] = v422;
  if (*(v308 + 113) == 1)
  {
    v506 = v307;
    v309 = v261[276];
    v310 = v261;
    v311 = v261[275];
    v312 = v261[274];
    v313 = v261[273];
    v314 = v310[271];
    v315 = v310[269];
    v316 = v310[268];
    v317 = v310[267];
    v318 = v310[257];
    v319 = v310[235];

    v311(v318, v312, v319);
    v320 = sub_22B36050C();
    v321 = sub_22B360D1C();
    if (os_log_type_enabled(v320, v321))
    {
      v322 = swift_slowAlloc();
      *v322 = 0;
      _os_log_impl(&dword_22B116000, v320, v321, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v322, 2u);
      MEMORY[0x23188F650](v322, -1, -1);
    }

    v0 = v354;
    v323 = v354[277];
    v324 = v354[276];
    v325 = v354[275];
    v326 = v354[274];
    v327 = v354[257];
    v328 = v354[256];
    v329 = v354[236];
    v330 = v354[235];

    v323(v327, v330);
    v325(v328, v326, v330);
    v331 = sub_22B36050C();
    v332 = sub_22B360D2C();
    v333 = os_log_type_enabled(v331, v332);
    v334 = v354[277];
    v335 = v354[256];
    v336 = v354[236];
    v337 = v354[235];
    if (v333)
    {
      v338 = swift_slowAlloc();
      *v338 = 0;
      _os_log_impl(&dword_22B116000, v331, v332, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v338, 2u);
      MEMORY[0x23188F650](v338, -1, -1);
    }

    v334(v335, v337);
LABEL_30:
    v49 = v0[266];
    v50 = v0[263];
    v51 = v0[262];
    v52 = v0[261];
    v53 = v0[260];
    v54 = v0[259];
    v55 = v0[258];
    v56 = v0[257];
    v57 = v0[256];
    v58 = v0[255];
    v355 = v0[254];
    v357 = v0[253];
    v359 = v0[252];
    v361 = v0[251];
    v363 = v0[250];
    v365 = v0[249];
    v367 = v0[248];
    v369 = v0[247];
    v371 = v0[246];
    v373 = v0[245];
    v375 = v0[244];
    v377 = v0[243];
    v379 = v0[242];
    v381 = v0[241];
    v383 = v0[240];
    v385 = v0[239];
    v387 = v0[238];
    v389 = v0[237];
    v391 = v0[234];
    v393 = v0[233];
    v395 = v0[232];
    v397 = v0[231];
    v399 = v0[230];
    v401 = v0[229];
    v403 = v0[228];
    v405 = v0[227];
    v407 = v0[226];
    v410 = v0[225];
    v414 = v0[222];
    v418 = v0[221];
    v423 = v0[220];
    v425 = v0[219];
    v430 = v0[218];
    v435 = v0[217];
    v440 = v0[216];
    v450 = v0[215];
    v455 = v0[214];
    v462 = v0[213];
    v471 = v0[210];
    v478 = v0[207];
    v486 = v0[206];
    v499 = v0[203];

    v59 = v0[1];
LABEL_31:

    return v59();
  }

  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v339 = qword_28140BDD0;
  v261[286] = qword_28140BDD0;
  v340 = v307;
  v341 = sub_22B35F04C();
  v343 = v342;

  v261[287] = v341;
  v261[288] = v343;

  return MEMORY[0x2822009F8](sub_22B2C2C04, v339, 0);
}

uint64_t sub_22B2C0B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2232);
  v6 = *v2;
  v4[280] = a1;
  v4[281] = v1;

  v7 = v3[278];
  v8 = v3[221];
  v9 = v3[200];
  sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);

  if (v1)
  {
    v10 = sub_22B2CCBE8;
  }

  else
  {
    v10 = sub_22B2C0C9C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2C0C9C()
{
  v401 = v0;
  v1 = *(v0 + 2240);

  *(v0 + 1584) = v1;
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v2 = qword_28140BCA0;
  if (qword_28140BCA0 && (v3 = sub_22B36081C(), v4 = [v2 dictionaryForKey_], v3, v4))
  {
    v5 = sub_22B3606EC();
  }

  else
  {
    v5 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  v6 = *(v0 + 1592);
  v7 = sub_22B35F3AC();
  sub_22B2AC400(v7, v8, v5, (v0 + 1024));

  if (*(v0 + 1048))
  {
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 2208);
      (*(v0 + 2200))(*(v0 + 2080), *(v0 + 2192), *(v0 + 1880));
      v10 = sub_22B36050C();
      v11 = sub_22B360D2C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 2240);
        v381 = *(v0 + 2080);
        v391 = *(v0 + 2216);
        v13 = *(v0 + 1888);
        v370 = *(v0 + 1880);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v400[0] = v15;
        *v14 = 136315138;
        v16 = v12;
        v17 = sub_22B35F3AC();
        v19 = v18;

        v20 = sub_22B1A7B20(v17, v19, v400);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox] Successful token refresh.Clearing UtilityExpiredAttempts for %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x23188F650](v15, -1, -1);
        MEMORY[0x23188F650](v14, -1, -1);

        v391(v381, v370);
      }

      else
      {
        v21 = *(v0 + 2216);
        v22 = *(v0 + 2080);
        v23 = *(v0 + 1888);
        v24 = *(v0 + 1880);

        v21(v22, v24);
      }

      v25 = *(v0 + 1592);
      v26 = sub_22B35F3AC();
      sub_22B2E641C(v26, v27, (v0 + 1280));

      sub_22B123284(v0 + 1280, &unk_27D8BA950, &qword_22B364940);
      if (v2)
      {
        v28 = sub_22B3606CC();
        v29 = sub_22B36081C();
        [v2 setObject:v28 forKey:v29];
      }
    }
  }

  else
  {
    sub_22B123284(v0 + 1024, &unk_27D8BA950, &qword_22B364940);
  }

  v30 = *(v0 + 2240);
  v31 = sub_22B35F14C();
  v33 = v32;

  if (!v33)
  {
    sub_22B134CDC();
    v51 = swift_allocError();
    *v52 = 23;
    swift_willThrow();

    v53 = *(v0 + 2240);
    *(v0 + 2656) = v53;
    *(v0 + 2648) = v51;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 1936);
    v55 = *(v0 + 1888);
    v56 = *(v0 + 1880);
    v57 = __swift_project_value_buffer(v56, qword_28140BD10);
    swift_beginAccess();
    v372 = v57;
    v362 = *(v55 + 16);
    v362(v54, v57, v56);
    v58 = v51;
    v59 = v51;
    v60 = sub_22B36050C();
    v61 = sub_22B360D1C();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 1936);
    v64 = *(v0 + 1888);
    v65 = *(v0 + 1880);
    v355 = v53;
    if (v62)
    {
      v66 = swift_slowAlloc();
      v349 = v65;
      v67 = swift_slowAlloc();
      v340 = swift_slowAlloc();
      v400[0] = v340;
      *v66 = 136446466;
      v344 = v63;
      v68 = v53;
      v69 = sub_22B35F3AC();
      v71 = v70;

      v72 = sub_22B1A7B20(v69, v71, v400);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2114;
      v73 = v51;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v74;
      *v67 = v74;

      _os_log_impl(&dword_22B116000, v60, v61, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v66, 0x16u);
      sub_22B123284(v67, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v340);
      MEMORY[0x23188F650](v340, -1, -1);
      MEMORY[0x23188F650](v66, -1, -1);

      v75 = *(v64 + 8);
      v75(v344, v349);
    }

    else
    {

      v75 = *(v64 + 8);
      v75(v63, v65);
    }

    v106 = *(v0 + 1648);
    v107 = *(v0 + 1632);
    *(v0 + 1560) = v51;
    v108 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v109 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
      if (v109 == *MEMORY[0x277D182D0])
      {
        goto LABEL_32;
      }

      if (v109 == *MEMORY[0x277D182D8])
      {
        v131 = *(v0 + 2184);
        v132 = *(v0 + 2168);
        v133 = *(v0 + 2152);
        v134 = *(v0 + 2144);
        v135 = *(v0 + 2136);
        v136 = *(v0 + 1704);
        v137 = *(v0 + 1696);
        v138 = *(v0 + 1688);

        (*(v137 + 104))(v136, *MEMORY[0x277D07348], v138);
        v139 = v355;
        sub_22B35EE3C();
        (*(v137 + 8))(v136, v138);
        sub_22B35F39C();

        v139;
        v140 = swift_task_alloc();
        *(v0 + 2664) = v140;
        *v140 = v0;
        v141 = sub_22B2CC1C8;
        goto LABEL_81;
      }

      if (v109 == *MEMORY[0x277D182E0] || v109 == *MEMORY[0x277D182C8])
      {
LABEL_32:

        if (qword_281408E18 != -1)
        {
          swift_once();
        }

        v110 = qword_28140BCA0;
        *(v0 + 2672) = qword_28140BCA0;
        if (v110 && (v111 = sub_22B36081C(), v112 = [v110 dictionaryForKey_], v111, v112))
        {
          v113 = sub_22B3606EC();
        }

        else
        {
          v113 = sub_22B321AAC(MEMORY[0x277D84F90]);
        }

        v142 = *(v0 + 1592);
        *(v0 + 1544) = v113;
        v143 = sub_22B35F3AC();
        sub_22B2AC400(v143, v144, v113, (v0 + 1088));

        if (*(v0 + 1112))
        {
          v145 = MEMORY[0x277D83B88];
          if (swift_dynamicCast())
          {
            v146 = *(v0 + 1536);
            v147 = *(v0 + 1880);
            if (v146 < 10)
            {
              v395 = v75;
              v362(*(v0 + 1920), v372, v147);
              v148 = sub_22B36050C();
              v149 = sub_22B360D1C();
              v150 = os_log_type_enabled(v148, v149);
              v151 = *(v0 + 2184);
              v351 = *(v0 + 2168);
              v364 = *(v0 + 2152);
              v375 = *(v0 + 2144);
              v385 = *(v0 + 2136);
              v152 = *(v0 + 1920);
              v153 = *(v0 + 1888);
              v154 = *(v0 + 1880);
              if (v150)
              {
                v346 = *(v0 + 1880);
                v155 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                v400[0] = v156;
                *v155 = 136315394;
                v157 = v355;
                v357 = v152;
                v158 = v157;
                v159 = sub_22B35F3AC();
                v161 = v160;

                v162 = v159;
                v145 = MEMORY[0x277D83B88];
                v163 = sub_22B1A7B20(v162, v161, v400);

                *(v155 + 4) = v163;
                *(v155 + 12) = 2048;
                v164 = v146 + 1;
                *(v155 + 14) = v164;

                _os_log_impl(&dword_22B116000, v148, v149, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v155, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v156);
                MEMORY[0x23188F650](v156, -1, -1);
                MEMORY[0x23188F650](v155, -1, -1);

                v395(v357, v346);
              }

              else
              {

                v395(v152, v154);
                v164 = v146 + 1;
              }

              v256 = *(v0 + 1592);
              v257 = sub_22B35F3AC();
              v259 = v258;
              *(v0 + 1240) = v145;
              *(v0 + 1216) = v164;
              sub_22B172454((v0 + 1216), (v0 + 1248));
              v260 = *(v0 + 1544);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v400[0] = v260;
              sub_22B33F298((v0 + 1248), v257, v259, isUniquelyReferenced_nonNull_native);
LABEL_68:

              *(v0 + 1544) = v400[0];
              v226 = *(v0 + 2672);
              if (v226)
              {
                v227 = sub_22B3606CC();
                v228 = sub_22B36081C();
                [v226 setObject:v227 forKey:v228];
              }

              goto LABEL_71;
            }

            v362(*(v0 + 1928), v372, v147);
            v239 = sub_22B36050C();
            v240 = sub_22B360D1C();
            v241 = os_log_type_enabled(v239, v240);
            v242 = *(v0 + 2184);
            v380 = *(v0 + 2168);
            v390 = *(v0 + 2152);
            v243 = *(v0 + 2144);
            v244 = *(v0 + 2136);
            v245 = *(v0 + 1928);
            v246 = *(v0 + 1888);
            v247 = *(v0 + 1880);
            if (v241)
            {
              v248 = swift_slowAlloc();
              v369 = v247;
              v249 = swift_slowAlloc();
              v400[0] = v249;
              *v248 = 136315138;
              v250 = v355;
              v354 = v245;
              v251 = v355;
              v399 = v75;
              v252 = sub_22B35F3AC();
              v254 = v253;

              v255 = sub_22B1A7B20(v252, v254, v400);

              *(v248 + 4) = v255;

              _os_log_impl(&dword_22B116000, v239, v240, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v248, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v249);
              MEMORY[0x23188F650](v249, -1, -1);
              MEMORY[0x23188F650](v248, -1, -1);

              v399(v354, v369);
            }

            else
            {

              v75(v245, v247);
              v250 = v355;
            }

            v262 = *(v0 + 1704);
            v263 = *(v0 + 1696);
            v264 = *(v0 + 1688);
            (*(v263 + 104))(v262, *MEMORY[0x277D07350], v264);
            v265 = v250;
            sub_22B35EE3C();
            (*(v263 + 8))(v262, v264);
            sub_22B35F39C();

            v265;
            v140 = swift_task_alloc();
            *(v0 + 2680) = v140;
            *v140 = v0;
            v141 = sub_22B2CC67C;
LABEL_81:
            v140[1] = v141;

            return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
          }
        }

        else
        {
          sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
        }

        v362(*(v0 + 1912), v372, *(v0 + 1880));
        v204 = sub_22B36050C();
        v205 = sub_22B360D1C();
        v206 = os_log_type_enabled(v204, v205);
        v207 = *(v0 + 2184);
        v367 = *(v0 + 2168);
        v378 = *(v0 + 2152);
        v388 = *(v0 + 2144);
        v208 = *(v0 + 2136);
        v209 = *(v0 + 1912);
        v210 = *(v0 + 1888);
        v211 = *(v0 + 1880);
        if (v206)
        {
          v212 = swift_slowAlloc();
          v213 = swift_slowAlloc();
          v400[0] = v213;
          *v212 = 136315138;
          v214 = v355;
          v359 = v209;
          v215 = v214;
          v397 = v75;
          v216 = sub_22B35F3AC();
          v218 = v217;

          v219 = sub_22B1A7B20(v216, v218, v400);

          *(v212 + 4) = v219;

          _os_log_impl(&dword_22B116000, v204, v205, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v212, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v213);
          MEMORY[0x23188F650](v213, -1, -1);
          MEMORY[0x23188F650](v212, -1, -1);

          v397(v359, v211);
        }

        else
        {

          v75(v209, v211);
        }

        v220 = *(v0 + 1592);
        v221 = sub_22B35F3AC();
        v223 = v222;
        *(v0 + 1144) = MEMORY[0x277D83B88];
        *(v0 + 1120) = 1;
        sub_22B172454((v0 + 1120), (v0 + 1152));
        v224 = *(v0 + 1544);
        v225 = swift_isUniquelyReferenced_nonNull_native();
        v400[0] = v224;
        sub_22B33F298((v0 + 1152), v221, v223, v225);
        goto LABEL_68;
      }

      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
    }

    v165 = *(v0 + 1624);
    v166 = *(v0 + 1608);

    *(v0 + 1552) = v51;
    v167 = v51;
    v168 = swift_dynamicCast();
    v169 = *(v0 + 1880);
    if (v168)
    {
      v170 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v362(v170, v372, v169);
      v171 = v51;
      v172 = v51;
      v173 = sub_22B36050C();
      v174 = sub_22B360D1C();
      v175 = os_log_type_enabled(v173, v174);
      v176 = *(v0 + 2184);
      v177 = *(v0 + 2168);
      v178 = *(v0 + 2152);
      v365 = *(v0 + 2144);
      v376 = *(v0 + 2136);
      v179 = *(v0 + 1904);
      v386 = *(v0 + 1888);
      v180 = *(v0 + 1880);
      if (v175)
      {
        v396 = v75;
        v181 = swift_slowAlloc();
        v337 = swift_slowAlloc();
        v347 = swift_slowAlloc();
        v400[0] = v347;
        *v181 = 136446466;
        v342 = v173;
        v182 = v355;
        v352 = v180;
        v358 = v179;
        v183 = sub_22B35F3AC();
        v185 = v184;

        v186 = sub_22B1A7B20(v183, v185, v400);

        *(v181 + 4) = v186;
        *(v181 + 12) = 2114;
        v187 = v51;
        v188 = _swift_stdlib_bridgeErrorToNSError();
        *(v181 + 14) = v188;
        v189 = v337;
        *v337 = v188;

        v190 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_61:
        _os_log_impl(&dword_22B116000, v342, v174, v190, v181, 0x16u);
        sub_22B123284(v189, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v189, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v347);
        MEMORY[0x23188F650](v347, -1, -1);
        MEMORY[0x23188F650](v181, -1, -1);

        v396(v358, v352);
LABEL_71:
        v229 = *(v0 + 2656);
        v230 = *(v0 + 2648);
        v231 = *(v0 + 2128);
        v232 = *(v0 + 2104);
        v233 = *(v0 + 2096);
        v234 = *(v0 + 2088);
        v235 = *(v0 + 2080);
        v236 = *(v0 + 2072);
        v237 = *(v0 + 2064);
        v267 = *(v0 + 2056);
        v268 = *(v0 + 2048);
        v269 = *(v0 + 2040);
        v271 = *(v0 + 2032);
        v273 = *(v0 + 2024);
        v275 = *(v0 + 2016);
        v277 = *(v0 + 2008);
        v279 = *(v0 + 2000);
        v281 = *(v0 + 1992);
        v283 = *(v0 + 1984);
        v285 = *(v0 + 1976);
        v287 = *(v0 + 1968);
        v289 = *(v0 + 1960);
        v291 = *(v0 + 1952);
        v293 = *(v0 + 1944);
        v295 = *(v0 + 1936);
        v297 = *(v0 + 1928);
        v299 = *(v0 + 1920);
        v301 = *(v0 + 1912);
        v303 = *(v0 + 1904);
        v305 = *(v0 + 1896);
        v307 = *(v0 + 1872);
        v309 = *(v0 + 1864);
        v311 = *(v0 + 1856);
        v313 = *(v0 + 1848);
        v315 = *(v0 + 1840);
        v317 = *(v0 + 1832);
        v319 = *(v0 + 1824);
        v321 = *(v0 + 1816);
        v323 = *(v0 + 1808);
        v325 = *(v0 + 1800);
        v327 = *(v0 + 1776);
        v329 = *(v0 + 1768);
        v331 = *(v0 + 1760);
        v333 = *(v0 + 1752);
        v335 = *(v0 + 1744);
        v339 = *(v0 + 1736);
        v343 = *(v0 + 1728);
        v348 = *(v0 + 1720);
        v353 = *(v0 + 1712);
        v360 = *(v0 + 1704);
        v368 = *(v0 + 1680);
        v379 = *(v0 + 1656);
        v389 = *(v0 + 1648);
        v398 = *(v0 + 1624);
        swift_willThrow();

        v125 = *(v0 + 8);
        v238 = *(v0 + 2648);
        goto LABEL_72;
      }
    }

    else
    {
      v362(*(v0 + 1896), v372, *(v0 + 1880));
      v191 = v51;
      v192 = v51;
      v173 = sub_22B36050C();
      v174 = sub_22B360D1C();
      v193 = os_log_type_enabled(v173, v174);
      v194 = *(v0 + 2184);
      v195 = *(v0 + 2168);
      v196 = *(v0 + 2152);
      v366 = *(v0 + 2144);
      v377 = *(v0 + 2136);
      v179 = *(v0 + 1896);
      v387 = *(v0 + 1888);
      v180 = *(v0 + 1880);
      if (v193)
      {
        v396 = v75;
        v181 = swift_slowAlloc();
        v338 = swift_slowAlloc();
        v347 = swift_slowAlloc();
        v400[0] = v347;
        *v181 = 136446466;
        v342 = v173;
        v197 = v355;
        v352 = v180;
        v358 = v179;
        v198 = sub_22B35F3AC();
        v200 = v199;

        v201 = sub_22B1A7B20(v198, v200, v400);

        *(v181 + 4) = v201;
        *(v181 + 12) = 2114;
        v202 = v51;
        v203 = _swift_stdlib_bridgeErrorToNSError();
        *(v181 + 14) = v203;
        v189 = v338;
        *v338 = v203;

        v190 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_61;
      }
    }

    v75(v179, v180);
    goto LABEL_71;
  }

  if (sub_22B360BFC())
  {
    v34 = *(v0 + 2208);
    v35 = *(v0 + 2200);
    v36 = *(v0 + 2192);
    v37 = *(v0 + 2072);
    v38 = *(v0 + 1880);

    v35(v37, v36, v38);
    v39 = sub_22B36050C();
    v40 = sub_22B360D1C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 2216);
    v43 = *(v0 + 2184);
    v44 = *(v0 + 2168);
    v45 = *(v0 + 2152);
    v46 = *(v0 + 2144);
    v47 = *(v0 + 2136);
    v48 = *(v0 + 2072);
    v382 = *(v0 + 1888);
    v392 = *(v0 + 1880);
    if (v41)
    {
      v371 = *(v0 + 2072);
      v49 = swift_slowAlloc();
      v361 = v42;
      v50 = swift_slowAlloc();
      v400[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, v400);
      *(v49 + 12) = 2048;
      *(v49 + 14) = 995;

      _os_log_impl(&dword_22B116000, v39, v40, "[Dropbox] Task is cancelled at marker %s:%ld", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x23188F650](v50, -1, -1);
      MEMORY[0x23188F650](v49, -1, -1);

      v361(v371, v392);
    }

    else
    {

      v42(v48, v392);
    }

    v114 = *(v0 + 2240);

LABEL_39:
    v115 = *(v0 + 2128);
    v116 = *(v0 + 2104);
    v117 = *(v0 + 2096);
    v118 = *(v0 + 2088);
    v119 = *(v0 + 2080);
    v120 = *(v0 + 2072);
    v121 = *(v0 + 2064);
    v122 = *(v0 + 2056);
    v123 = *(v0 + 2048);
    v124 = *(v0 + 2040);
    v270 = *(v0 + 2032);
    v272 = *(v0 + 2024);
    v274 = *(v0 + 2016);
    v276 = *(v0 + 2008);
    v278 = *(v0 + 2000);
    v280 = *(v0 + 1992);
    v282 = *(v0 + 1984);
    v284 = *(v0 + 1976);
    v286 = *(v0 + 1968);
    v288 = *(v0 + 1960);
    v290 = *(v0 + 1952);
    v292 = *(v0 + 1944);
    v294 = *(v0 + 1936);
    v296 = *(v0 + 1928);
    v298 = *(v0 + 1920);
    v300 = *(v0 + 1912);
    v302 = *(v0 + 1904);
    v304 = *(v0 + 1896);
    v306 = *(v0 + 1872);
    v308 = *(v0 + 1864);
    v310 = *(v0 + 1856);
    v312 = *(v0 + 1848);
    v314 = *(v0 + 1840);
    v316 = *(v0 + 1832);
    v318 = *(v0 + 1824);
    v320 = *(v0 + 1816);
    v322 = *(v0 + 1808);
    v324 = *(v0 + 1800);
    v326 = *(v0 + 1776);
    v328 = *(v0 + 1768);
    v330 = *(v0 + 1760);
    v332 = *(v0 + 1752);
    v334 = *(v0 + 1744);
    v336 = *(v0 + 1736);
    v341 = *(v0 + 1728);
    v345 = *(v0 + 1720);
    v350 = *(v0 + 1712);
    v356 = *(v0 + 1704);
    v363 = *(v0 + 1680);
    v374 = *(v0 + 1656);
    v384 = *(v0 + 1648);
    v394 = *(v0 + 1624);

    v125 = *(v0 + 8);
LABEL_72:

    return v125();
  }

  v76 = *(v0 + 2248);
  v77 = *(v0 + 2240);
  *(v0 + 2272) = v77;
  *(v0 + 2264) = v33;
  *(v0 + 2256) = v76;
  v78 = *(v0 + 1600);
  *(v0 + 2280) = v31;
  if (*(v78 + 113) == 1)
  {
    v383 = *(v0 + 2208);
    v393 = v77;
    v373 = *(v0 + 2200);
    v79 = *(v0 + 2192);
    v80 = *(v0 + 2184);
    v81 = *(v0 + 2168);
    v82 = *(v0 + 2152);
    v83 = *(v0 + 2144);
    v84 = *(v0 + 2136);
    v85 = *(v0 + 2056);
    v86 = *(v0 + 1880);

    v373(v85, v79, v86);
    v87 = sub_22B36050C();
    v88 = sub_22B360D1C();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_22B116000, v87, v88, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v89, 2u);
      MEMORY[0x23188F650](v89, -1, -1);
    }

    v90 = *(v0 + 2216);
    v91 = *(v0 + 2208);
    v92 = *(v0 + 2200);
    v93 = *(v0 + 2192);
    v94 = *(v0 + 2056);
    v95 = *(v0 + 2048);
    v96 = *(v0 + 1888);
    v97 = *(v0 + 1880);

    v90(v94, v97);
    v92(v95, v93, v97);
    v98 = sub_22B36050C();
    v99 = sub_22B360D2C();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v0 + 2216);
    v102 = *(v0 + 2048);
    v103 = *(v0 + 1888);
    v104 = *(v0 + 1880);
    if (v100)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_22B116000, v98, v99, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v105, 2u);
      MEMORY[0x23188F650](v105, -1, -1);
    }

    v101(v102, v104);
    goto LABEL_39;
  }

  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v126 = qword_28140BDD0;
  *(v0 + 2288) = qword_28140BDD0;
  v127 = v77;
  v128 = sub_22B35F04C();
  v130 = v129;

  *(v0 + 2296) = v128;
  *(v0 + 2304) = v130;

  return MEMORY[0x2822009F8](sub_22B2C2C04, v126, 0);
}

uint64_t sub_22B2C2C04()
{
  v1 = v0[286];
  v2 = v0[282];
  sub_22B143598(v0[287], v0[288], 0);
  v0[289] = v3;
  v0[290] = v2;
  v4 = v0[288];
  if (v2)
  {
    v5 = v0[283];
    v6 = v0[200];

    v7 = sub_22B2CE068;
    v8 = v6;
  }

  else
  {
    v9 = v0[200];

    v7 = sub_22B2C2CC8;
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22B2C2CC8()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 2272);
  sub_22B35F30C();

  v5 = *(v1 + 48);
  *(v0 + 2328) = v5;
  *(v0 + 2336) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1864);
    v7 = *(v0 + 1848);
    v8 = *(v0 + 1792);
    v9 = *(v0 + 1784);
    v10 = *(v0 + 1760);
    sub_22B35DE6C();
    sub_22B35DDCC();
    (*(v8 + 8))(v6, v9);
    if (v5(v10, 1, v9) != 1)
    {
      sub_22B123284(*(v0 + 1760), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(*(v0 + 1792) + 32))(*(v0 + 1848), *(v0 + 1760), *(v0 + 1784));
  }

  v11 = *(v0 + 1864);
  v12 = *(v0 + 1856);
  v13 = *(v0 + 1848);
  v14 = *(v0 + 1792);
  v15 = *(v0 + 1784);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v16 = *(v14 + 8);
  *(v0 + 2344) = v16;
  *(v0 + 2352) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v15);
  LOBYTE(v12) = sub_22B35DDEC();
  v16(v11, v15);
  if ((v12 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
  {
    v59 = *(v0 + 2208);
    v60 = *(v0 + 1848);
    v61 = *(v0 + 1840);
    v62 = *(v0 + 1792);
    v63 = *(v0 + 1784);
    (*(v0 + 2200))(*(v0 + 2040), *(v0 + 2192), *(v0 + 1880));
    (*(v62 + 16))(v61, v60, v63);
    v64 = sub_22B36050C();
    v194 = sub_22B360D2C();
    v65 = os_log_type_enabled(v64, v194);
    v66 = *(v0 + 2216);
    v67 = *(v0 + 2040);
    v68 = *(v0 + 1888);
    v69 = *(v0 + 1880);
    v70 = *(v0 + 1840);
    v71 = *(v0 + 1784);
    if (v65)
    {
      v190 = *(v0 + 1880);
      v72 = swift_slowAlloc();
      v186 = v67;
      v73 = swift_slowAlloc();
      v204 = v73;
      *v72 = 136446210;
      sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
      v74 = sub_22B36131C();
      v180 = v66;
      v76 = sub_22B1A7B20(v74, v75, &v204);

      *(v72 + 4) = v76;
      v16(v70, v71);
      _os_log_impl(&dword_22B116000, v64, v194, "[DropBox] UsagePoint last updated under an hour ago at %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x23188F650](v73, -1, -1);
      MEMORY[0x23188F650](v72, -1, -1);

      v180(v186, v190);
    }

    else
    {
      v16(*(v0 + 1840), *(v0 + 1784));

      v66(v67, v69);
    }

    v77 = *(v0 + 2336);
    v78 = *(v0 + 2328);
    v79 = *(v0 + 1784);
    v80 = *(v0 + 1752);
    v81 = *(v0 + 2272);
    sub_22B35F34C();

    if (v78(v80, 1, v79) == 1)
    {
      v82 = *(v0 + 2352);
      v83 = *(v0 + 2344);
      v84 = *(v0 + 2336);
      v85 = *(v0 + 2328);
      v86 = *(v0 + 1864);
      v87 = *(v0 + 1832);
      v88 = *(v0 + 1784);
      v89 = *(v0 + 1752);
      sub_22B35DE6C();
      sub_22B35DDCC();
      v83(v86, v88);
      if (v85(v89, 1, v88) != 1)
      {
        sub_22B123284(*(v0 + 1752), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v0 + 1792) + 32))(*(v0 + 1832), *(v0 + 1752), *(v0 + 1784));
    }

    v90 = *(v0 + 2352);
    v91 = *(v0 + 2344);
    v92 = *(v0 + 1864);
    v93 = *(v0 + 1856);
    v94 = *(v0 + 1832);
    v95 = *(v0 + 1784);
    sub_22B35DE6C();
    sub_22B35DDCC();
    v91(v93, v95);
    LOBYTE(v93) = sub_22B35DDEC();
    v91(v92, v95);
    if ((v93 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
    {
      v137 = *(v0 + 2208);
      v138 = *(v0 + 1848);
      v139 = *(v0 + 1824);
      v140 = *(v0 + 1792);
      v141 = *(v0 + 1784);
      (*(v0 + 2200))(*(v0 + 2016), *(v0 + 2192), *(v0 + 1880));
      (*(v140 + 16))(v139, v138, v141);
      v142 = sub_22B36050C();
      v143 = sub_22B360D2C();
      v144 = os_log_type_enabled(v142, v143);
      v145 = *(v0 + 2352);
      v146 = *(v0 + 2344);
      v147 = *(v0 + 2216);
      v148 = *(v0 + 2016);
      v149 = *(v0 + 1888);
      v150 = *(v0 + 1880);
      v151 = *(v0 + 1824);
      v152 = *(v0 + 1784);
      if (v144)
      {
        v188 = *(v0 + 2352);
        v196 = *(v0 + 2016);
        v153 = swift_slowAlloc();
        v192 = v150;
        v154 = swift_slowAlloc();
        v204 = v154;
        *v153 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
        v155 = sub_22B36131C();
        v182 = v147;
        v157 = sub_22B1A7B20(v155, v156, &v204);

        *(v153 + 4) = v157;
        v146(v151, v152);
        _os_log_impl(&dword_22B116000, v142, v143, "[DropBox] UsageSummary last updated under an hour ago at %{public}s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x23188F650](v154, -1, -1);
        MEMORY[0x23188F650](v153, -1, -1);

        v182(v196, v192);
      }

      else
      {
        v146(*(v0 + 1824), *(v0 + 1784));

        v147(v148, v150);
      }

      v158 = *(v0 + 2336);
      v159 = *(v0 + 2328);
      v160 = *(v0 + 1784);
      v161 = *(v0 + 1744);
      v162 = *(v0 + 2272);
      sub_22B35F36C();

      if (v159(v161, 1, v160) == 1)
      {
        v163 = *(v0 + 2352);
        v164 = *(v0 + 2344);
        v165 = *(v0 + 2336);
        v166 = *(v0 + 2328);
        v167 = *(v0 + 1864);
        v168 = *(v0 + 1816);
        v169 = *(v0 + 1784);
        v170 = *(v0 + 1744);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v164(v167, v169);
        if (v166(v170, 1, v169) != 1)
        {
          sub_22B123284(*(v0 + 1744), &qword_27D8BA340, &qword_22B363FB0);
        }
      }

      else
      {
        (*(*(v0 + 1792) + 32))(*(v0 + 1816), *(v0 + 1744), *(v0 + 1784));
      }

      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v171 = *(v0 + 2184);
      v172 = *(v0 + 2168);
      v173 = swift_task_alloc();
      *(v0 + 2440) = v173;
      *v173 = v0;
      v173[1] = sub_22B2C5238;
      v174 = *(v0 + 2176);
      v175 = *(v0 + 2160);
      v176 = *(v0 + 1736);

      return sub_22B306350(v176, v174, v171, v175, v172);
    }

    else
    {
      v96 = *(v0 + 2208);
      v97 = *(v0 + 2200);
      v98 = *(v0 + 2192);
      v99 = *(v0 + 2184);
      v100 = *(v0 + 2008);
      v101 = *(v0 + 1880);
      v102 = *(v0 + 2272);
      v103 = sub_22B35F26C();
      v105 = v104;

      *(v0 + 2400) = v103;
      *(v0 + 2408) = v105;
      v97(v100, v98, v101);
      swift_bridgeObjectRetain_n();
      v106 = sub_22B36050C();
      v107 = sub_22B360D2C();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = *(v0 + 2272);
        v109 = *(v0 + 2184);
        v110 = *(v0 + 2176);
        v184 = *(v0 + 2008);
        v187 = *(v0 + 2216);
        v178 = *(v0 + 1888);
        v181 = *(v0 + 1880);
        v195 = v103;
        v111 = swift_slowAlloc();
        v191 = v105;
        v112 = swift_slowAlloc();
        v204 = v112;
        *v111 = 136446466;
        v113 = v108;
        v114 = sub_22B35F3AC();
        v116 = v115;

        v117 = sub_22B1A7B20(v114, v116, &v204);

        *(v111 + 4) = v117;
        *(v111 + 12) = 2082;

        v118 = sub_22B1A7B20(v110, v109, &v204);

        *(v111 + 14) = v118;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_22B116000, v106, v107, "[Dropbox] Refreshing UsageSummary for %{public}s subscription: %{public}s", v111, 0x16u);
        swift_arrayDestroy();
        v119 = v112;
        v105 = v191;
        MEMORY[0x23188F650](v119, -1, -1);
        v120 = v111;
        v103 = v195;
        MEMORY[0x23188F650](v120, -1, -1);

        v187(v184, v181);
      }

      else
      {
        v121 = *(v0 + 2216);
        v122 = *(v0 + 2184);
        v123 = *(v0 + 2008);
        v124 = *(v0 + 1888);
        v125 = *(v0 + 1880);

        swift_bridgeObjectRelease_n();
        v121(v123, v125);
      }

      v126 = *(v0 + 2184);
      v127 = *(v0 + 2168);
      v128 = *(v0 + 2272);
      v129 = sub_22B35F3AC();
      v131 = v130;

      *(v0 + 2416) = v131;
      v132 = swift_task_alloc();
      *(v0 + 2424) = v132;
      *v132 = v0;
      v132[1] = sub_22B2C4980;
      v133 = *(v0 + 2280);
      v134 = *(v0 + 2264);
      v135 = *(v0 + 1832);
      v136 = *(v0 + 1600);
      v203 = *(v0 + 2312);
      v201 = *(v0 + 2160);
      v199 = *(v0 + 2176);

      return sub_22B2B0150(v133, v134, v135, v103, v105, 100, v129, v131);
    }
  }

  else
  {
    v17 = *(v0 + 2208);
    v18 = *(v0 + 2200);
    v19 = *(v0 + 2192);
    v20 = *(v0 + 2184);
    v21 = *(v0 + 2032);
    v22 = *(v0 + 1880);
    v23 = *(v0 + 2272);
    v24 = sub_22B35F24C();
    v26 = v25;

    *(v0 + 2360) = v24;
    *(v0 + 2368) = v26;
    v18(v21, v19, v22);
    swift_bridgeObjectRetain_n();
    v27 = sub_22B36050C();
    v28 = sub_22B360D2C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 2272);
      v30 = *(v0 + 2184);
      v31 = *(v0 + 2176);
      v183 = *(v0 + 2032);
      v185 = *(v0 + 2216);
      v177 = *(v0 + 1888);
      v179 = *(v0 + 1880);
      v193 = v24;
      v32 = swift_slowAlloc();
      v189 = v26;
      v33 = swift_slowAlloc();
      v204 = v33;
      *v32 = 136446466;
      v34 = v29;
      v35 = sub_22B35F3AC();
      v37 = v36;

      v38 = sub_22B1A7B20(v35, v37, &v204);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2082;

      v39 = sub_22B1A7B20(v31, v30, &v204);

      *(v32 + 14) = v39;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_22B116000, v27, v28, "[Dropbox] Refreshing UsagePoints for %{public}s subscription: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      v40 = v33;
      v26 = v189;
      MEMORY[0x23188F650](v40, -1, -1);
      v41 = v32;
      v24 = v193;
      MEMORY[0x23188F650](v41, -1, -1);

      v185(v183, v179);
    }

    else
    {
      v42 = *(v0 + 2216);
      v43 = *(v0 + 2184);
      v44 = *(v0 + 2032);
      v45 = *(v0 + 1888);
      v46 = *(v0 + 1880);

      swift_bridgeObjectRelease_n();
      v42(v44, v46);
    }

    v47 = *(v0 + 2184);
    v48 = *(v0 + 2168);
    v49 = *(v0 + 2272);
    v50 = sub_22B35F3AC();
    v52 = v51;

    *(v0 + 2376) = v52;
    v53 = swift_task_alloc();
    *(v0 + 2384) = v53;
    *v53 = v0;
    v53[1] = sub_22B2C3AF0;
    v54 = *(v0 + 2280);
    v55 = *(v0 + 2264);
    v56 = *(v0 + 1848);
    v57 = *(v0 + 1600);
    v202 = *(v0 + 2312);
    v200 = *(v0 + 2160);
    v198 = *(v0 + 2176);

    return sub_22B2AC578(v54, v55, v56, v24, v26, 5, v50, v52);
  }
}

uint64_t sub_22B2C3AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 2384);
  v4 = *v1;
  v2[299] = v0;

  v5 = v2[297];
  if (v0)
  {
    v6 = v2[283];
    v7 = v2[200];

    v8 = sub_22B2CF4E8;
    v9 = v7;
  }

  else
  {
    v10 = v2[200];

    v8 = sub_22B2C3C48;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B2C3C48()
{
  if (sub_22B360BFC())
  {
    v1 = *(v0 + 2264);
    v2 = *(v0 + 2208);
    v3 = *(v0 + 2200);
    v4 = *(v0 + 2192);
    v5 = *(v0 + 2024);
    v6 = *(v0 + 1880);

    v3(v5, v4, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v166 = *(v0 + 2360);
    v168 = *(v0 + 2368);
    v10 = *(v0 + 2352);
    v11 = *(v0 + 2272);
    v185 = *(v0 + 2216);
    v189 = *(v0 + 2344);
    v12 = *(v0 + 2184);
    v13 = *(v0 + 2168);
    v14 = *(v0 + 2152);
    v15 = *(v0 + 2144);
    v16 = *(v0 + 2136);
    v170 = *(v0 + 1888);
    v172 = *(v0 + 1880);
    v175 = *(v0 + 2024);
    v179 = *(v0 + 1784);
    v182 = *(v0 + 1848);
    if (v9)
    {
      v161 = *(v0 + 2312);
      v164 = *(v0 + 2272);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v197 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v197);
      *(v17 + 12) = 2048;
      *(v17 + 14) = 1070;

      _os_log_impl(&dword_22B116000, v7, v8, "[Dropbox] Task is cancelled at marker %s:%ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);

      sub_22B12F174(v166, v168);
      v185(v175, v172);
      v189(v182, v179);
    }

    else
    {

      sub_22B12F174(v166, v168);

      v185(v175, v172);
      v189(v182, v179);
    }

    v32 = *(v0 + 2128);
    v33 = *(v0 + 2104);
    v34 = *(v0 + 2096);
    v35 = *(v0 + 2088);
    v36 = *(v0 + 2080);
    v37 = *(v0 + 2072);
    v38 = *(v0 + 2064);
    v39 = *(v0 + 2056);
    v40 = *(v0 + 2048);
    v41 = *(v0 + 2040);
    v131 = *(v0 + 2032);
    v132 = *(v0 + 2024);
    v133 = *(v0 + 2016);
    v134 = *(v0 + 2008);
    v135 = *(v0 + 2000);
    v136 = *(v0 + 1992);
    v137 = *(v0 + 1984);
    v138 = *(v0 + 1976);
    v139 = *(v0 + 1968);
    v140 = *(v0 + 1960);
    v141 = *(v0 + 1952);
    v142 = *(v0 + 1944);
    v143 = *(v0 + 1936);
    v144 = *(v0 + 1928);
    v145 = *(v0 + 1920);
    v146 = *(v0 + 1912);
    v147 = *(v0 + 1904);
    v148 = *(v0 + 1896);
    v149 = *(v0 + 1872);
    v150 = *(v0 + 1864);
    v151 = *(v0 + 1856);
    v152 = *(v0 + 1848);
    v153 = *(v0 + 1840);
    v154 = *(v0 + 1832);
    v155 = *(v0 + 1824);
    v156 = *(v0 + 1816);
    v157 = *(v0 + 1808);
    v158 = *(v0 + 1800);
    v159 = *(v0 + 1776);
    v160 = *(v0 + 1768);
    v162 = *(v0 + 1760);
    v163 = *(v0 + 1752);
    v165 = *(v0 + 1744);
    v167 = *(v0 + 1736);
    v169 = *(v0 + 1728);
    v171 = *(v0 + 1720);
    v173 = *(v0 + 1712);
    v176 = *(v0 + 1704);
    v180 = *(v0 + 1680);
    v183 = *(v0 + 1656);
    v186 = *(v0 + 1648);
    v190 = *(v0 + 1624);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    sub_22B12F174(*(v0 + 2360), *(v0 + 2368));
    v19 = *(v0 + 2336);
    v20 = *(v0 + 2328);
    v21 = *(v0 + 1784);
    v22 = *(v0 + 1752);
    v23 = *(v0 + 2272);
    sub_22B35F34C();

    if (v20(v22, 1, v21) == 1)
    {
      v24 = *(v0 + 2352);
      v25 = *(v0 + 2344);
      v26 = *(v0 + 2336);
      v27 = *(v0 + 2328);
      v28 = *(v0 + 1864);
      v29 = *(v0 + 1832);
      v30 = *(v0 + 1784);
      v31 = *(v0 + 1752);
      sub_22B35DE6C();
      sub_22B35DDCC();
      v25(v28, v30);
      if (v27(v31, 1, v30) != 1)
      {
        sub_22B123284(*(v0 + 1752), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v0 + 1792) + 32))(*(v0 + 1832), *(v0 + 1752), *(v0 + 1784));
    }

    v44 = *(v0 + 2352);
    v45 = *(v0 + 2344);
    v46 = *(v0 + 1864);
    v47 = *(v0 + 1856);
    v48 = *(v0 + 1832);
    v49 = *(v0 + 1784);
    sub_22B35DE6C();
    sub_22B35DDCC();
    v45(v47, v49);
    LOBYTE(v47) = sub_22B35DDEC();
    v45(v46, v49);
    if ((v47 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
    {
      v91 = *(v0 + 2208);
      v92 = *(v0 + 1848);
      v93 = *(v0 + 1824);
      v94 = *(v0 + 1792);
      v95 = *(v0 + 1784);
      (*(v0 + 2200))(*(v0 + 2016), *(v0 + 2192), *(v0 + 1880));
      (*(v94 + 16))(v93, v92, v95);
      v96 = sub_22B36050C();
      v97 = sub_22B360D2C();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 2352);
      v100 = *(v0 + 2344);
      v101 = *(v0 + 2216);
      v102 = *(v0 + 2016);
      v103 = *(v0 + 1888);
      v104 = *(v0 + 1880);
      v105 = *(v0 + 1824);
      v106 = *(v0 + 1784);
      if (v98)
      {
        v192 = *(v0 + 2016);
        v107 = swift_slowAlloc();
        v188 = v104;
        v108 = swift_slowAlloc();
        v197 = v108;
        *v107 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
        v109 = sub_22B36131C();
        v178 = v101;
        v111 = sub_22B1A7B20(v109, v110, &v197);

        *(v107 + 4) = v111;
        v100(v105, v106);
        _os_log_impl(&dword_22B116000, v96, v97, "[DropBox] UsageSummary last updated under an hour ago at %{public}s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x23188F650](v108, -1, -1);
        MEMORY[0x23188F650](v107, -1, -1);

        v178(v192, v188);
      }

      else
      {
        v100(*(v0 + 1824), *(v0 + 1784));

        v101(v102, v104);
      }

      v112 = *(v0 + 2336);
      v113 = *(v0 + 2328);
      v114 = *(v0 + 1784);
      v115 = *(v0 + 1744);
      v116 = *(v0 + 2272);
      sub_22B35F36C();

      if (v113(v115, 1, v114) == 1)
      {
        v117 = *(v0 + 2352);
        v118 = *(v0 + 2344);
        v119 = *(v0 + 2336);
        v120 = *(v0 + 2328);
        v121 = *(v0 + 1864);
        v122 = *(v0 + 1816);
        v123 = *(v0 + 1784);
        v124 = *(v0 + 1744);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v118(v121, v123);
        if (v120(v124, 1, v123) != 1)
        {
          sub_22B123284(*(v0 + 1744), &qword_27D8BA340, &qword_22B363FB0);
        }
      }

      else
      {
        (*(*(v0 + 1792) + 32))(*(v0 + 1816), *(v0 + 1744), *(v0 + 1784));
      }

      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v125 = *(v0 + 2184);
      v126 = *(v0 + 2168);
      v127 = swift_task_alloc();
      *(v0 + 2440) = v127;
      *v127 = v0;
      v127[1] = sub_22B2C5238;
      v128 = *(v0 + 2176);
      v129 = *(v0 + 2160);
      v130 = *(v0 + 1736);

      return sub_22B306350(v130, v128, v125, v129, v126);
    }

    else
    {
      v50 = *(v0 + 2208);
      v51 = *(v0 + 2200);
      v52 = *(v0 + 2192);
      v53 = *(v0 + 2184);
      v54 = *(v0 + 2008);
      v55 = *(v0 + 1880);
      v56 = *(v0 + 2272);
      v57 = sub_22B35F26C();
      v59 = v58;

      *(v0 + 2400) = v57;
      *(v0 + 2408) = v59;
      v51(v54, v52, v55);
      swift_bridgeObjectRetain_n();
      v60 = sub_22B36050C();
      v61 = sub_22B360D2C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 2272);
        v63 = *(v0 + 2184);
        v64 = *(v0 + 2176);
        v181 = *(v0 + 2008);
        v184 = *(v0 + 2216);
        v174 = *(v0 + 1888);
        v177 = *(v0 + 1880);
        v191 = v57;
        v65 = swift_slowAlloc();
        v187 = v59;
        v66 = swift_slowAlloc();
        v197 = v66;
        *v65 = 136446466;
        v67 = v62;
        v68 = sub_22B35F3AC();
        v70 = v69;

        v71 = sub_22B1A7B20(v68, v70, &v197);

        *(v65 + 4) = v71;
        *(v65 + 12) = 2082;

        v72 = sub_22B1A7B20(v64, v63, &v197);

        *(v65 + 14) = v72;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_22B116000, v60, v61, "[Dropbox] Refreshing UsageSummary for %{public}s subscription: %{public}s", v65, 0x16u);
        swift_arrayDestroy();
        v73 = v66;
        v59 = v187;
        MEMORY[0x23188F650](v73, -1, -1);
        v74 = v65;
        v57 = v191;
        MEMORY[0x23188F650](v74, -1, -1);

        v184(v181, v177);
      }

      else
      {
        v75 = *(v0 + 2216);
        v76 = *(v0 + 2184);
        v77 = *(v0 + 2008);
        v78 = *(v0 + 1888);
        v79 = *(v0 + 1880);

        swift_bridgeObjectRelease_n();
        v75(v77, v79);
      }

      v80 = *(v0 + 2184);
      v81 = *(v0 + 2168);
      v82 = *(v0 + 2272);
      v83 = sub_22B35F3AC();
      v85 = v84;

      *(v0 + 2416) = v85;
      v86 = swift_task_alloc();
      *(v0 + 2424) = v86;
      *v86 = v0;
      v86[1] = sub_22B2C4980;
      v87 = *(v0 + 2280);
      v88 = *(v0 + 2264);
      v89 = *(v0 + 1832);
      v90 = *(v0 + 1600);
      v196 = *(v0 + 2312);
      v195 = *(v0 + 2160);
      v194 = *(v0 + 2176);

      return sub_22B2B0150(v87, v88, v89, v57, v59, 100, v83, v85);
    }
  }
}

uint64_t sub_22B2C4980()
{
  v2 = *v1;
  v3 = *(*v1 + 2424);
  v4 = *v1;
  v2[304] = v0;

  v5 = v2[302];
  if (v0)
  {
    v6 = v2[283];
    v7 = v2[200];

    v8 = sub_22B2D09A0;
    v9 = v7;
  }

  else
  {
    v10 = v2[200];

    v8 = sub_22B2C4AD8;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B2C4AD8()
{
  v105 = v0;
  if (sub_22B360BFC())
  {
    v1 = *(v0 + 2264);
    v2 = *(v0 + 2208);
    v3 = *(v0 + 2200);
    v4 = *(v0 + 2192);
    v5 = *(v0 + 2000);
    v6 = *(v0 + 1880);

    v3(v5, v4, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v84 = *(v0 + 2400);
    v86 = *(v0 + 2408);
    v10 = *(v0 + 2352);
    v11 = *(v0 + 2272);
    v100 = *(v0 + 2216);
    v102 = *(v0 + 2344);
    v12 = *(v0 + 2184);
    v13 = *(v0 + 2168);
    v14 = *(v0 + 2152);
    v15 = *(v0 + 2144);
    v16 = *(v0 + 2136);
    v88 = *(v0 + 1888);
    v90 = *(v0 + 1880);
    v92 = *(v0 + 2000);
    v94 = *(v0 + 1832);
    v96 = *(v0 + 1784);
    v98 = *(v0 + 1848);
    if (v9)
    {
      v79 = *(v0 + 2312);
      v17 = swift_slowAlloc();
      v82 = v11;
      v18 = swift_slowAlloc();
      v104 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v104);
      *(v17 + 12) = 2048;
      *(v17 + 14) = 1114;

      _os_log_impl(&dword_22B116000, v7, v8, "[Dropbox] Task is cancelled at marker %s:%ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);

      sub_22B12F174(v84, v86);
      v100(v92, v90);
      v102(v94, v96);
      v102(v98, v96);
    }

    else
    {

      sub_22B12F174(v84, v86);

      v100(v92, v90);
      v102(v94, v96);
      v102(v98, v96);
    }

    v32 = *(v0 + 2128);
    v33 = *(v0 + 2104);
    v34 = *(v0 + 2096);
    v35 = *(v0 + 2088);
    v36 = *(v0 + 2080);
    v37 = *(v0 + 2072);
    v38 = *(v0 + 2064);
    v39 = *(v0 + 2056);
    v40 = *(v0 + 2048);
    v41 = *(v0 + 2040);
    v50 = *(v0 + 2032);
    v51 = *(v0 + 2024);
    v52 = *(v0 + 2016);
    v53 = *(v0 + 2008);
    v54 = *(v0 + 2000);
    v55 = *(v0 + 1992);
    v56 = *(v0 + 1984);
    v57 = *(v0 + 1976);
    v58 = *(v0 + 1968);
    v59 = *(v0 + 1960);
    v60 = *(v0 + 1952);
    v61 = *(v0 + 1944);
    v62 = *(v0 + 1936);
    v63 = *(v0 + 1928);
    v64 = *(v0 + 1920);
    v65 = *(v0 + 1912);
    v66 = *(v0 + 1904);
    v67 = *(v0 + 1896);
    v68 = *(v0 + 1872);
    v69 = *(v0 + 1864);
    v70 = *(v0 + 1856);
    v71 = *(v0 + 1848);
    v72 = *(v0 + 1840);
    v73 = *(v0 + 1832);
    v74 = *(v0 + 1824);
    v75 = *(v0 + 1816);
    v76 = *(v0 + 1808);
    v77 = *(v0 + 1800);
    v78 = *(v0 + 1776);
    v80 = *(v0 + 1768);
    v81 = *(v0 + 1760);
    v83 = *(v0 + 1752);
    v85 = *(v0 + 1744);
    v87 = *(v0 + 1736);
    v89 = *(v0 + 1728);
    v91 = *(v0 + 1720);
    v93 = *(v0 + 1712);
    v95 = *(v0 + 1704);
    v97 = *(v0 + 1680);
    v99 = *(v0 + 1656);
    v101 = *(v0 + 1648);
    v103 = *(v0 + 1624);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    sub_22B12F174(*(v0 + 2400), *(v0 + 2408));
    v19 = *(v0 + 2336);
    v20 = *(v0 + 2328);
    v21 = *(v0 + 1784);
    v22 = *(v0 + 1744);
    v23 = *(v0 + 2272);
    sub_22B35F36C();

    if (v20(v22, 1, v21) == 1)
    {
      v24 = *(v0 + 2352);
      v25 = *(v0 + 2344);
      v26 = *(v0 + 2336);
      v27 = *(v0 + 2328);
      v28 = *(v0 + 1864);
      v29 = *(v0 + 1816);
      v30 = *(v0 + 1784);
      v31 = *(v0 + 1744);
      sub_22B35DE6C();
      sub_22B35DDCC();
      v25(v28, v30);
      if (v27(v31, 1, v30) != 1)
      {
        sub_22B123284(*(v0 + 1744), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v0 + 1792) + 32))(*(v0 + 1816), *(v0 + 1744), *(v0 + 1784));
    }

    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 2184);
    v45 = *(v0 + 2168);
    v46 = swift_task_alloc();
    *(v0 + 2440) = v46;
    *v46 = v0;
    v46[1] = sub_22B2C5238;
    v47 = *(v0 + 2176);
    v48 = *(v0 + 2160);
    v49 = *(v0 + 1736);

    return sub_22B306350(v49, v47, v44, v48, v45);
  }
}

uint64_t sub_22B2C5238()
{
  v1 = *(*v0 + 2440);
  v2 = *(*v0 + 1600);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2C5348, v2, 0);
}

uint64_t sub_22B2C5348()
{
  v243 = v0;
  v1 = *(v0 + 2336);
  v2 = *(v0 + 1736);
  v3 = (*(v0 + 2328))(v2, 1, *(v0 + 1784));
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  if (v3 == 1)
  {
LABEL_2:
    v4 = *(v0 + 2272);
    *(v0 + 2488) = v4;
    v5 = *(v0 + 2352);
    v6 = *(v0 + 2344);
    v7 = *(v0 + 1864);
    v8 = *(v0 + 1856);
    v9 = *(v0 + 1816);
    v10 = *(v0 + 1784);
    sub_22B35DE6C();
    sub_22B35DDCC();
    v6(v8, v10);
    LOBYTE(v8) = sub_22B35DDEC();
    v6(v7, v10);
    if ((v8 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
    {
      v238 = v4;
      v86 = *(v0 + 2264);
      v87 = *(v0 + 2208);
      v88 = *(v0 + 2200);
      v89 = *(v0 + 2192);
      v90 = *(v0 + 1984);
      v91 = *(v0 + 1880);
      v92 = *(v0 + 1848);
      v93 = *(v0 + 1808);
      v94 = *(v0 + 1792);
      v95 = *(v0 + 1784);

      v88(v90, v89, v91);
      (*(v94 + 16))(v93, v92, v95);
      v96 = sub_22B36050C();
      v202 = sub_22B360D2C();
      v231 = v96;
      v97 = os_log_type_enabled(v96, v202);
      v98 = *(v0 + 2352);
      v99 = *(v0 + 2344);
      v100 = *(v0 + 2216);
      v206 = *(v0 + 2168);
      v210 = *(v0 + 2152);
      v214 = *(v0 + 2144);
      v218 = *(v0 + 2136);
      v221 = *(v0 + 2184);
      v101 = *(v0 + 1984);
      v226 = *(v0 + 1888);
      v236 = *(v0 + 1880);
      v102 = *(v0 + 1848);
      v103 = *(v0 + 1832);
      v104 = *(v0 + 1816);
      v105 = *(v0 + 1808);
      v106 = *(v0 + 1784);
      if (v97)
      {
        v192 = *(v0 + 2312);
        v198 = *(v0 + 1848);
        v107 = swift_slowAlloc();
        v195 = v100;
        v108 = swift_slowAlloc();
        v242[0] = v108;
        *v107 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
        v109 = sub_22B36131C();
        v187 = v104;
        v111 = sub_22B1A7B20(v109, v110, v242);

        *(v107 + 4) = v111;

        v99(v105, v106);
        _os_log_impl(&dword_22B116000, v231, v202, "[DropBox] IntervalBlocks last updated under an hour ago at %{public}s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x23188F650](v108, -1, -1);
        MEMORY[0x23188F650](v107, -1, -1);

        v195(v101, v236);
        v99(v187, v106);
        v99(v103, v106);
        v112 = v198;
      }

      else
      {

        v99(v105, v106);

        v100(v101, v236);
        v99(v104, v106);
        v99(v103, v106);
        v112 = v102;
      }

      v99(v112, v106);
    }

    else
    {
      v11 = v4;
      v12 = sub_22B35F28C();
      v14 = v13;

      *(v0 + 2496) = v12;
      *(v0 + 2504) = v14;
      v15 = v11;
      sub_22B35F41C();
      v17 = v16;

      *(v0 + 2512) = v17;
      if (v17)
      {
        v18 = *(v0 + 1672);
        v19 = *(v0 + 1664);
        v20 = *(v0 + 1656);
        sub_22B35E05C();
        if ((*(v18 + 48))(v20, 1, v19) != 1)
        {
          v113 = *(v0 + 2208);
          v114 = *(v0 + 2200);
          v115 = *(v0 + 2192);
          v116 = *(v0 + 2184);
          v117 = *(v0 + 1976);
          v118 = *(v0 + 1880);
          (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 1656), *(v0 + 1664));
          v114(v117, v115, v118);
          swift_bridgeObjectRetain_n();
          v119 = sub_22B36050C();
          v120 = sub_22B360D2C();
          v121 = os_log_type_enabled(v119, v120);
          v122 = *(v0 + 2216);
          v123 = *(v0 + 2184);
          if (v121)
          {
            v215 = *(v0 + 2176);
            v222 = *(v0 + 1888);
            v227 = *(v0 + 1880);
            v232 = *(v0 + 1976);
            v124 = swift_slowAlloc();
            v240 = v15;
            v242[0] = swift_slowAlloc();
            v125 = v242[0];
            *v124 = 136446466;
            v126 = v240;
            v127 = sub_22B35F3AC();
            v129 = v128;

            v130 = sub_22B1A7B20(v127, v129, v242);

            *(v124 + 4) = v130;
            *(v124 + 12) = 2082;

            v131 = sub_22B1A7B20(v215, v123, v242);

            *(v124 + 14) = v131;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&dword_22B116000, v119, v120, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s", v124, 0x16u);
            swift_arrayDestroy();
            v132 = v125;
            v15 = v240;
            MEMORY[0x23188F650](v132, -1, -1);
            MEMORY[0x23188F650](v124, -1, -1);

            v122(v232, v227);
          }

          else
          {
            v144 = *(v0 + 1976);
            v145 = *(v0 + 1888);
            v146 = *(v0 + 1880);

            swift_bridgeObjectRelease_n();
            v122(v144, v146);
          }

          v147 = v15;
          sub_22B35F3AC();
          v149 = v148;

          *(v0 + 2520) = v149;
          v150 = swift_task_alloc();
          *(v0 + 2528) = v150;
          *v150 = v0;
          v150[1] = sub_22B2C73D8;
          v151 = *(v0 + 2312);
          v152 = *(v0 + 2280);
          v153 = *(v0 + 2264);
          v154 = *(v0 + 1816);
          v155 = *(v0 + 1600);
          v245 = *(v0 + 1680);
          v246 = v151;

          JUMPOUT(0x22B2E7924);
        }

        v238 = v15;
        v21 = *(v0 + 2264);
        v22 = *(v0 + 1656);

        sub_22B123284(v22, &unk_27D8BA080, &unk_22B364280);
      }

      else
      {
        v238 = v15;
        v63 = *(v0 + 2264);
      }

      v230 = v14;
      v235 = v12;
      v64 = *(v0 + 2208);
      v65 = *(v0 + 2184);
      (*(v0 + 2200))(*(v0 + 1952), *(v0 + 2192), *(v0 + 1880));
      swift_bridgeObjectRetain_n();
      v66 = sub_22B36050C();
      v67 = sub_22B360D2C();
      v68 = os_log_type_enabled(v66, v67);
      v220 = *(v0 + 2344);
      v225 = *(v0 + 2352);
      v217 = *(v0 + 2216);
      v69 = *(v0 + 2184);
      if (v68)
      {
        v180 = *(v0 + 2176);
        v182 = *(v0 + 2168);
        v184 = *(v0 + 2152);
        v186 = *(v0 + 2144);
        v189 = *(v0 + 2136);
        v194 = *(v0 + 1888);
        v197 = *(v0 + 1880);
        v212 = *(v0 + 1848);
        v204 = *(v0 + 1952);
        v208 = *(v0 + 1832);
        v200 = *(v0 + 1816);
        v70 = *(v0 + 1784);
        v191 = *(v0 + 2312);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v242[0] = v72;
        *v71 = 136446466;
        v73 = v238;
        v74 = sub_22B35F3AC();
        v76 = v75;

        v77 = sub_22B1A7B20(v74, v76, v242);

        *(v71 + 4) = v77;
        *(v71 + 12) = 2082;

        v78 = sub_22B1A7B20(v180, v69, v242);

        *(v71 + 14) = v78;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&dword_22B116000, v66, v67, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s failed due to invalid timezone", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v72, -1, -1);
        MEMORY[0x23188F650](v71, -1, -1);

        sub_22B12F174(v235, v230);
        v217(v204, v197);
        v220(v200, v70);
        v220(v208, v70);
        v220(v212, v70);

LABEL_30:
        v133 = *(v0 + 2128);
        v134 = *(v0 + 2104);
        v135 = *(v0 + 2096);
        v136 = *(v0 + 2088);
        v137 = *(v0 + 2080);
        v138 = *(v0 + 2072);
        v139 = *(v0 + 2064);
        v140 = *(v0 + 2056);
        v141 = *(v0 + 2048);
        v142 = *(v0 + 2040);
        v156 = *(v0 + 2032);
        v157 = *(v0 + 2024);
        v158 = *(v0 + 2016);
        v159 = *(v0 + 2008);
        v160 = *(v0 + 2000);
        v161 = *(v0 + 1992);
        v162 = *(v0 + 1984);
        v163 = *(v0 + 1976);
        v164 = *(v0 + 1968);
        v165 = *(v0 + 1960);
        v166 = *(v0 + 1952);
        v167 = *(v0 + 1944);
        v168 = *(v0 + 1936);
        v169 = *(v0 + 1928);
        v170 = *(v0 + 1920);
        v171 = *(v0 + 1912);
        v172 = *(v0 + 1904);
        v173 = *(v0 + 1896);
        v174 = *(v0 + 1872);
        v175 = *(v0 + 1864);
        v176 = *(v0 + 1856);
        v177 = *(v0 + 1848);
        v178 = *(v0 + 1840);
        v179 = *(v0 + 1832);
        v181 = *(v0 + 1824);
        v183 = *(v0 + 1816);
        v185 = *(v0 + 1808);
        v188 = *(v0 + 1800);
        v190 = *(v0 + 1776);
        v193 = *(v0 + 1768);
        v196 = *(v0 + 1760);
        v199 = *(v0 + 1752);
        v203 = *(v0 + 1744);
        v207 = *(v0 + 1736);
        v211 = *(v0 + 1728);
        v216 = *(v0 + 1720);
        v219 = *(v0 + 1712);
        v223 = *(v0 + 1704);
        v228 = *(v0 + 1680);
        v233 = *(v0 + 1656);
        v237 = *(v0 + 1648);
        v241 = *(v0 + 1624);

        v143 = *(v0 + 8);

        return v143();
      }

      v79 = *(v0 + 2168);
      v80 = *(v0 + 2152);
      v81 = *(v0 + 2144);
      v82 = *(v0 + 2136);
      v83 = *(v0 + 1888);
      v84 = *(v0 + 1880);
      v213 = *(v0 + 1848);
      v205 = *(v0 + 1952);
      v209 = *(v0 + 1832);
      v201 = *(v0 + 1816);
      v85 = *(v0 + 1784);

      sub_22B12F174(v235, v230);

      swift_bridgeObjectRelease_n();
      v217(v205, v84);
      v220(v201, v85);
      v220(v209, v85);
      v220(v213, v85);
    }

    goto LABEL_30;
  }

  v23 = *(v0 + 1720);
  v24 = *(v0 + 1696);
  v25 = *(v0 + 1688);
  v26 = *(v0 + 2272);
  v27 = sub_22B35F38C();
  v29 = v28;

  (*(v24 + 104))(v23, *MEMORY[0x277D07358], v25);
  v30 = sub_22B35EE3C();
  v32 = v31;
  (*(v24 + 8))(v23, v25);
  if (v27 == v30 && v29 == v32)
  {
  }

  else
  {
    v33 = sub_22B36134C();

    if ((v33 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v34 = *(v0 + 2208);
  v35 = *(v0 + 2184);
  (*(v0 + 2200))(*(v0 + 1992), *(v0 + 2192), *(v0 + 1880));
  swift_bridgeObjectRetain_n();
  v36 = sub_22B36050C();
  v37 = sub_22B360D2C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 2272);
    v39 = *(v0 + 2184);
    v40 = *(v0 + 2176);
    v234 = *(v0 + 1992);
    v239 = *(v0 + 2216);
    v224 = *(v0 + 1888);
    v229 = *(v0 + 1880);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v242[0] = v42;
    *v41 = 136446466;
    v43 = v38;
    v44 = sub_22B35F3AC();
    v46 = v45;

    v47 = sub_22B1A7B20(v44, v46, v242);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2082;

    v48 = sub_22B1A7B20(v40, v39, v242);

    *(v41 + 14) = v48;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_22B116000, v36, v37, "[Dropbox] Data present. Updating state from loading to loaded for %{public}s subscription: %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v42, -1, -1);
    MEMORY[0x23188F650](v41, -1, -1);

    v239(v234, v229);
  }

  else
  {
    v49 = *(v0 + 2216);
    v50 = *(v0 + 2184);
    v51 = *(v0 + 1992);
    v52 = *(v0 + 1888);
    v53 = *(v0 + 1880);

    swift_bridgeObjectRelease_n();
    v49(v51, v53);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 2272);
  v55 = sub_22B35F3AC();
  v57 = v56;

  *(v0 + 2448) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_22B3634B0;
  *(v58 + 32) = 0xD000000000000016;
  v59 = v58 + 32;
  *(v58 + 72) = MEMORY[0x277D837D0];
  *(v58 + 40) = 0x800000022B36CE20;
  *(v58 + 48) = 0;
  *(v58 + 56) = 0xE000000000000000;
  v60 = sub_22B321AAC(v58);
  *(v0 + 2456) = v60;
  swift_setDeallocating();
  sub_22B123284(v59, &unk_27D8BAD00, &qword_22B3656C0);
  swift_deallocClassInstance();
  v61 = swift_task_alloc();
  *(v0 + 2464) = v61;
  *v61 = v0;
  v61[1] = sub_22B2C64E8;

  return sub_22B2244D0(v55, v57, v60);
}

uint64_t sub_22B2C64E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2464);
  v6 = *v2;
  v4[309] = v1;

  v7 = v4[307];
  v8 = v4[306];
  if (v1)
  {
    v9 = v4[283];
    v10 = v4[200];

    v11 = sub_22B2D1E68;
    v12 = v10;
  }

  else
  {
    v13 = v4[200];

    v4[310] = a1;
    v11 = sub_22B2C6674;
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22B2C6674()
{
  v199 = v0;
  v1 = *(v0 + 2480);
  v2 = *(v0 + 2272);
  swift_beginAccess();
  *(v0 + 1584) = v1;

  v3 = *(v0 + 2480);
  *(v0 + 2488) = v3;
  v4 = *(v0 + 2352);
  v5 = *(v0 + 2344);
  v6 = *(v0 + 1864);
  v7 = *(v0 + 1856);
  v8 = *(v0 + 1816);
  v9 = *(v0 + 1784);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v5(v7, v9);
  LOBYTE(v7) = sub_22B35DDEC();
  v5(v6, v9);
  if ((v7 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
  {
    v195 = v3;
    v45 = *(v0 + 2264);
    v46 = *(v0 + 2208);
    v47 = *(v0 + 2200);
    v48 = *(v0 + 2192);
    v49 = *(v0 + 1984);
    v50 = *(v0 + 1880);
    v51 = *(v0 + 1848);
    v52 = *(v0 + 1808);
    v53 = *(v0 + 1792);
    v54 = *(v0 + 1784);

    v47(v49, v48, v50);
    (*(v53 + 16))(v52, v51, v54);
    v55 = sub_22B36050C();
    v162 = sub_22B360D2C();
    v189 = v55;
    v56 = os_log_type_enabled(v55, v162);
    v57 = *(v0 + 2352);
    v58 = *(v0 + 2344);
    v59 = *(v0 + 2216);
    v166 = *(v0 + 2168);
    v170 = *(v0 + 2152);
    v174 = *(v0 + 2144);
    v178 = *(v0 + 2136);
    v181 = *(v0 + 2184);
    v60 = *(v0 + 1984);
    v185 = *(v0 + 1888);
    v193 = *(v0 + 1880);
    v61 = *(v0 + 1848);
    v62 = *(v0 + 1832);
    v63 = *(v0 + 1816);
    v64 = *(v0 + 1808);
    v65 = *(v0 + 1784);
    if (v56)
    {
      v152 = *(v0 + 2312);
      v158 = *(v0 + 1848);
      v66 = swift_slowAlloc();
      v155 = v59;
      v67 = swift_slowAlloc();
      v198[0] = v67;
      *v66 = 136446210;
      sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
      v68 = sub_22B36131C();
      v147 = v63;
      v70 = sub_22B1A7B20(v68, v69, v198);

      *(v66 + 4) = v70;

      v58(v64, v65);
      _os_log_impl(&dword_22B116000, v189, v162, "[DropBox] IntervalBlocks last updated under an hour ago at %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x23188F650](v67, -1, -1);
      MEMORY[0x23188F650](v66, -1, -1);

      v155(v60, v193);
      v58(v147, v65);
      v58(v62, v65);
      v71 = v158;
    }

    else
    {

      v58(v64, v65);

      v59(v60, v193);
      v58(v63, v65);
      v58(v62, v65);
      v71 = v61;
    }

    v58(v71, v65);
  }

  else
  {
    v10 = v3;
    v11 = sub_22B35F28C();
    v13 = v12;

    *(v0 + 2496) = v11;
    *(v0 + 2504) = v13;
    v14 = v10;
    sub_22B35F41C();
    v16 = v15;

    *(v0 + 2512) = v16;
    if (v16)
    {
      v17 = *(v0 + 1672);
      v18 = *(v0 + 1664);
      v19 = *(v0 + 1656);
      sub_22B35E05C();
      if ((*(v17 + 48))(v19, 1, v18) != 1)
      {
        v72 = *(v0 + 2208);
        v73 = *(v0 + 2200);
        v74 = *(v0 + 2192);
        v75 = *(v0 + 2184);
        v76 = *(v0 + 1976);
        v77 = *(v0 + 1880);
        (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 1656), *(v0 + 1664));
        v73(v76, v74, v77);
        swift_bridgeObjectRetain_n();
        v78 = sub_22B36050C();
        v79 = sub_22B360D2C();
        v80 = os_log_type_enabled(v78, v79);
        v81 = *(v0 + 2216);
        v82 = *(v0 + 2184);
        if (v80)
        {
          v175 = *(v0 + 2176);
          v182 = *(v0 + 1888);
          v186 = *(v0 + 1880);
          v190 = *(v0 + 1976);
          v83 = swift_slowAlloc();
          v196 = v14;
          v198[0] = swift_slowAlloc();
          v84 = v198[0];
          *v83 = 136446466;
          v85 = v196;
          v86 = sub_22B35F3AC();
          v88 = v87;

          v89 = sub_22B1A7B20(v86, v88, v198);

          *(v83 + 4) = v89;
          *(v83 + 12) = 2082;

          v90 = sub_22B1A7B20(v175, v82, v198);

          *(v83 + 14) = v90;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_22B116000, v78, v79, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s", v83, 0x16u);
          swift_arrayDestroy();
          v91 = v84;
          v14 = v196;
          MEMORY[0x23188F650](v91, -1, -1);
          MEMORY[0x23188F650](v83, -1, -1);

          v81(v190, v186);
        }

        else
        {
          v104 = *(v0 + 1976);
          v105 = *(v0 + 1888);
          v106 = *(v0 + 1880);

          swift_bridgeObjectRelease_n();
          v81(v104, v106);
        }

        v107 = v14;
        sub_22B35F3AC();
        v109 = v108;

        *(v0 + 2520) = v109;
        v110 = swift_task_alloc();
        *(v0 + 2528) = v110;
        *v110 = v0;
        v110[1] = sub_22B2C73D8;
        v111 = *(v0 + 2312);
        v112 = *(v0 + 2280);
        v113 = *(v0 + 2264);
        v114 = *(v0 + 1816);
        v115 = *(v0 + 1600);
        v201 = *(v0 + 1680);
        v202 = v111;

        JUMPOUT(0x22B2E7924);
      }

      v195 = v14;
      v20 = *(v0 + 2264);
      v21 = *(v0 + 1656);

      sub_22B123284(v21, &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v195 = v14;
      v22 = *(v0 + 2264);
    }

    v188 = v13;
    v192 = v11;
    v23 = *(v0 + 2208);
    v24 = *(v0 + 2184);
    (*(v0 + 2200))(*(v0 + 1952), *(v0 + 2192), *(v0 + 1880));
    swift_bridgeObjectRetain_n();
    v25 = sub_22B36050C();
    v26 = sub_22B360D2C();
    v27 = os_log_type_enabled(v25, v26);
    v180 = *(v0 + 2344);
    v184 = *(v0 + 2352);
    v177 = *(v0 + 2216);
    v28 = *(v0 + 2184);
    if (v27)
    {
      v140 = *(v0 + 2176);
      v142 = *(v0 + 2168);
      v144 = *(v0 + 2152);
      v146 = *(v0 + 2144);
      v149 = *(v0 + 2136);
      v154 = *(v0 + 1888);
      v157 = *(v0 + 1880);
      v172 = *(v0 + 1848);
      v164 = *(v0 + 1952);
      v168 = *(v0 + 1832);
      v160 = *(v0 + 1816);
      v29 = *(v0 + 1784);
      v151 = *(v0 + 2312);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v198[0] = v31;
      *v30 = 136446466;
      v32 = v195;
      v33 = sub_22B35F3AC();
      v35 = v34;

      v36 = sub_22B1A7B20(v33, v35, v198);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;

      v37 = sub_22B1A7B20(v140, v28, v198);

      *(v30 + 14) = v37;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&dword_22B116000, v25, v26, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s failed due to invalid timezone", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);

      sub_22B12F174(v192, v188);
      v177(v164, v157);
      v180(v160, v29);
      v180(v168, v29);
      v180(v172, v29);

      goto LABEL_17;
    }

    v38 = *(v0 + 2168);
    v39 = *(v0 + 2152);
    v40 = *(v0 + 2144);
    v41 = *(v0 + 2136);
    v42 = *(v0 + 1888);
    v43 = *(v0 + 1880);
    v173 = *(v0 + 1848);
    v165 = *(v0 + 1952);
    v169 = *(v0 + 1832);
    v161 = *(v0 + 1816);
    v44 = *(v0 + 1784);

    sub_22B12F174(v192, v188);

    swift_bridgeObjectRelease_n();
    v177(v165, v43);
    v180(v161, v44);
    v180(v169, v44);
    v180(v173, v44);
  }

LABEL_17:
  v92 = *(v0 + 2128);
  v93 = *(v0 + 2104);
  v94 = *(v0 + 2096);
  v95 = *(v0 + 2088);
  v96 = *(v0 + 2080);
  v97 = *(v0 + 2072);
  v98 = *(v0 + 2064);
  v99 = *(v0 + 2056);
  v100 = *(v0 + 2048);
  v101 = *(v0 + 2040);
  v116 = *(v0 + 2032);
  v117 = *(v0 + 2024);
  v118 = *(v0 + 2016);
  v119 = *(v0 + 2008);
  v120 = *(v0 + 2000);
  v121 = *(v0 + 1992);
  v122 = *(v0 + 1984);
  v123 = *(v0 + 1976);
  v124 = *(v0 + 1968);
  v125 = *(v0 + 1960);
  v126 = *(v0 + 1952);
  v127 = *(v0 + 1944);
  v128 = *(v0 + 1936);
  v129 = *(v0 + 1928);
  v130 = *(v0 + 1920);
  v131 = *(v0 + 1912);
  v132 = *(v0 + 1904);
  v133 = *(v0 + 1896);
  v134 = *(v0 + 1872);
  v135 = *(v0 + 1864);
  v136 = *(v0 + 1856);
  v137 = *(v0 + 1848);
  v138 = *(v0 + 1840);
  v139 = *(v0 + 1832);
  v141 = *(v0 + 1824);
  v143 = *(v0 + 1816);
  v145 = *(v0 + 1808);
  v148 = *(v0 + 1800);
  v150 = *(v0 + 1776);
  v153 = *(v0 + 1768);
  v156 = *(v0 + 1760);
  v159 = *(v0 + 1752);
  v163 = *(v0 + 1744);
  v167 = *(v0 + 1736);
  v171 = *(v0 + 1728);
  v176 = *(v0 + 1720);
  v179 = *(v0 + 1712);
  v183 = *(v0 + 1704);
  v187 = *(v0 + 1680);
  v191 = *(v0 + 1656);
  v194 = *(v0 + 1648);
  v197 = *(v0 + 1624);

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_22B2C73D8(char a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2528);
  v7 = *v3;
  *(v5 + 177) = a1;
  *(v5 + 2536) = a2;
  *(v5 + 2544) = v2;

  v8 = *(v4 + 2520);
  if (v2)
  {
    v9 = *(v5 + 2512);
    v10 = *(v5 + 2264);
    v11 = *(v5 + 1600);

    v12 = sub_22B2C8760;
    v13 = v11;
  }

  else
  {
    v14 = *(v5 + 1600);

    v12 = sub_22B2C754C;
    v13 = v14;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_22B2C754C()
{
  v223 = v0;
  if (!*(v0 + 2536))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 1712);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 2488);
  v5 = sub_22B35F38C();
  v7 = v6;

  (*(v2 + 104))(v1, *MEMORY[0x277D07358], v3);
  v8 = sub_22B35EE3C();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (v5 == v8 && v7 == v10)
  {
  }

  else
  {
    v12 = sub_22B36134C();

    if ((v12 & 1) == 0)
    {
LABEL_7:
      v13 = *(v0 + 2264);

      v14 = 0;
      goto LABEL_13;
    }
  }

  v15 = *(v0 + 2208);
  v16 = *(v0 + 2184);
  (*(v0 + 2200))(*(v0 + 1968), *(v0 + 2192), *(v0 + 1880));
  swift_bridgeObjectRetain_n();
  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 2488);
    v20 = *(v0 + 2184);
    v21 = *(v0 + 2176);
    v210 = *(v0 + 1968);
    v216 = *(v0 + 2216);
    v194 = *(v0 + 2264);
    v198 = *(v0 + 1888);
    v204 = *(v0 + 1880);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v222[0] = v23;
    *v22 = 136446466;
    v24 = v19;
    v25 = sub_22B35F3AC();
    v27 = v26;

    v28 = sub_22B1A7B20(v25, v27, v222);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;

    v29 = sub_22B1A7B20(v21, v20, v222);

    *(v22 + 14) = v29;

    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Updating state from loading to loaded for %{public}s subscription: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v23, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);

    v216(v210, v204);
  }

  else
  {
    v30 = *(v0 + 2264);
    v31 = *(v0 + 2216);
    v32 = *(v0 + 2184);
    v33 = *(v0 + 1968);
    v34 = *(v0 + 1888);
    v35 = *(v0 + 1880);

    swift_bridgeObjectRelease_n();
    v31(v33, v35);
  }

  v14 = 1;
LABEL_13:
  *(v0 + 178) = v14;
  v36 = *(v0 + 177);
  v37 = *(v0 + 2488);
  v38 = sub_22B35F02C();

  if ((v38 & 1) == 0 && v36)
  {
    if (v14)
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 2488);
      v40 = sub_22B35F3AC();
      v42 = v41;

      *(v0 + 2552) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_22B3634C0;
      *(v43 + 32) = 0xD000000000000011;
      *(v43 + 40) = 0x800000022B36CEE0;
      v44 = MEMORY[0x277D839B0];
      *(v43 + 48) = 1;
      *(v43 + 72) = v44;
      *(v43 + 80) = 0xD000000000000016;
      *(v43 + 120) = MEMORY[0x277D837D0];
      *(v43 + 88) = 0x800000022B36CE20;
      *(v43 + 96) = 0;
      *(v43 + 104) = 0xE000000000000000;
      v45 = sub_22B321AAC(v43);
      *(v0 + 2560) = v45;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v46 = swift_task_alloc();
      *(v0 + 2568) = v46;
      *v46 = v0;
      v47 = sub_22B2C9C60;
    }

    else
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 2488);
      v40 = sub_22B35F3AC();
      v42 = v67;

      *(v0 + 2584) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_22B3634B0;
      *(v68 + 32) = 0xD000000000000011;
      v69 = v68 + 32;
      *(v68 + 40) = 0x800000022B36CEE0;
      *(v68 + 72) = MEMORY[0x277D839B0];
      *(v68 + 48) = 1;
      v45 = sub_22B321AAC(v68);
      *(v0 + 2592) = v45;
      swift_setDeallocating();
      sub_22B123284(v69, &unk_27D8BAD00, &qword_22B3656C0);
      swift_deallocClassInstance();
      v46 = swift_task_alloc();
      *(v0 + 2600) = v46;
      *v46 = v0;
      v47 = sub_22B2CA8D8;
    }

LABEL_29:
    v46[1] = v47;

    return sub_22B2244D0(v40, v42, v45);
  }

  if (v14)
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 2488);
    v40 = sub_22B35F3AC();
    v42 = v49;

    *(v0 + 2616) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_22B3634B0;
    *(v50 + 32) = 0xD000000000000016;
    v51 = v50 + 32;
    *(v50 + 72) = MEMORY[0x277D837D0];
    *(v50 + 40) = 0x800000022B36CE20;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0xE000000000000000;
    v45 = sub_22B321AAC(v50);
    *(v0 + 2624) = v45;
    swift_setDeallocating();
    sub_22B123284(v51, &unk_27D8BAD00, &qword_22B3656C0);
    swift_deallocClassInstance();
    v46 = swift_task_alloc();
    *(v0 + 2632) = v46;
    *v46 = v0;
    v47 = sub_22B2CB550;
    goto LABEL_29;
  }

  v52 = *(v0 + 2488);
  if ((sub_22B360BFC() & 1) == 0)
  {
    v71 = *(v0 + 2512);
    v218 = *(v0 + 2336);
    v72 = *(v0 + 2328);
    v73 = *(v0 + 2184);
    v74 = *(v0 + 2168);
    v75 = *(v0 + 2152);
    v76 = *(v0 + 2144);
    v77 = *(v0 + 2136);
    v78 = *(v0 + 1784);
    v79 = *(v0 + 1728);

    v80 = v52;
    sub_22B35F2AC();

    if (v72(v79, 1, v78) == 1)
    {
      v81 = *(v0 + 2504);
      v82 = *(v0 + 2496);
      v83 = *(v0 + 2352);
      v84 = *(v0 + 2344);
      v200 = *(v0 + 1832);
      v206 = *(v0 + 1848);
      v219 = v80;
      v85 = *(v0 + 1816);
      v86 = *(v0 + 1784);
      v212 = *(v0 + 1728);
      v87 = *(v0 + 1680);
      v88 = *(v0 + 1672);
      v89 = *(v0 + 1664);

      sub_22B12F174(v82, v81);
      (*(v88 + 8))(v87, v89);
      v84(v85, v86);
      v84(v200, v86);
      v84(v206, v86);
      sub_22B123284(v212, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v90 = *(v0 + 178);
      (*(*(v0 + 1792) + 32))(*(v0 + 1800), *(v0 + 1728), *(v0 + 1784));
      if (v90 == 1)
      {
        v91 = *(v0 + 2536);
        v189 = *(v0 + 2496);
        v192 = *(v0 + 2504);
        v92 = *(v0 + 2352);
        v93 = *(v0 + 2344);
        v94 = *(v0 + 1864);
        v213 = *(v0 + 1832);
        v220 = *(v0 + 1848);
        v95 = *(v0 + 1800);
        v183 = v95;
        v186 = *(v0 + 2312);
        v96 = *(v0 + 1784);
        v201 = *(v0 + 1680);
        v207 = *(v0 + 1816);
        v97 = *(v0 + 1672);
        v196 = *(v0 + 1664);
        sub_22B35DE8C();
        sub_22B35DD3C();
        v99 = v98;
        v93(v94, v96);
        v100 = v80;
        v101 = sub_22B35F43C();
        v103 = v102;

        LOBYTE(v222[0]) = 1;
        *(v0 + 352) = 0;
        *(v0 + 360) = 1;
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 2;
        *(v0 + 408) = v101;
        *(v0 + 416) = v103;
        *(v0 + 424) = v91;
        *(v0 + 432) = 0;
        *(v0 + 440) = v99;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = 1;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = 1;
        *(v0 + 504) = 0;
        v104 = v222[0];
        *(v0 + 512) = v222[0];
        *(v0 + 520) = 0;
        *(v0 + 528) = 1;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 2;
        *(v0 + 576) = v101;
        *(v0 + 584) = v103;
        *(v0 + 592) = v91;
        *(v0 + 600) = 0;
        *(v0 + 608) = v99;
        *(v0 + 616) = 0;
        *(v0 + 624) = 0;
        *(v0 + 632) = 1;
        *(v0 + 640) = 0;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0;
        *(v0 + 664) = 1;
        *(v0 + 672) = 0;
        *(v0 + 680) = v104;
        sub_22B2556F4(v0 + 352, v0 + 184);
        sub_22B2EC164(v0 + 520);
        v105 = *(v0 + 496);
        *(v0 + 816) = *(v0 + 480);
        *(v0 + 832) = v105;
        *(v0 + 848) = *(v0 + 512);
        v106 = *(v0 + 432);
        *(v0 + 752) = *(v0 + 416);
        *(v0 + 768) = v106;
        v107 = *(v0 + 464);
        *(v0 + 784) = *(v0 + 448);
        *(v0 + 800) = v107;
        v108 = *(v0 + 368);
        *(v0 + 688) = *(v0 + 352);
        *(v0 + 704) = v108;
        v109 = *(v0 + 400);
        *(v0 + 720) = *(v0 + 384);
        *(v0 + 736) = v109;
        nullsub_1(v0 + 688);
        type metadata accessor for EnergyKitAnalyticsEvent();
        v110 = swift_allocObject();
        sub_22B23E8B0(v0 + 856);
        v111 = *(v0 + 1000);
        *(v0 + 144) = *(v0 + 984);
        *(v0 + 160) = v111;
        v112 = *(v0 + 936);
        *(v0 + 80) = *(v0 + 920);
        *(v0 + 96) = v112;
        v113 = *(v0 + 968);
        *(v0 + 112) = *(v0 + 952);
        *(v0 + 128) = v113;
        v114 = *(v0 + 872);
        *(v0 + 16) = *(v0 + 856);
        *(v0 + 32) = v114;
        v115 = *(v0 + 904);
        *(v0 + 48) = *(v0 + 888);
        *(v0 + 64) = v115;
        v116 = *(v0 + 784);
        *(v110 + 136) = *(v0 + 800);
        v117 = *(v0 + 832);
        *(v110 + 152) = *(v0 + 816);
        *(v110 + 168) = v117;
        v118 = *(v0 + 720);
        *(v110 + 72) = *(v0 + 736);
        v119 = *(v0 + 768);
        *(v110 + 88) = *(v0 + 752);
        *(v110 + 104) = v119;
        *(v110 + 120) = v116;
        v120 = *(v0 + 704);
        *(v110 + 24) = *(v0 + 688);
        *(v110 + 40) = v120;
        *(v110 + 16) = 4;
        *(v0 + 176) = *(v0 + 1016);
        *(v110 + 184) = *(v0 + 848);
        *(v110 + 56) = v118;
        sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
        sub_22B1A81C0(v110);

        sub_22B12F174(v189, v192);

        v93(v183, v96);
        (*(v97 + 8))(v201, v196);
        v93(v207, v96);
        v93(v213, v96);
        v93(v220, v96);

        goto LABEL_40;
      }

      v121 = *(v0 + 2504);
      v122 = *(v0 + 2496);
      v123 = *(v0 + 2352);
      v124 = *(v0 + 2344);
      v208 = *(v0 + 1832);
      v214 = *(v0 + 1848);
      v202 = *(v0 + 1816);
      v125 = *(v0 + 1800);
      v126 = *(v0 + 1784);
      v127 = *(v0 + 1680);
      v219 = v80;
      v128 = *(v0 + 1672);
      v129 = *(v0 + 1664);

      sub_22B12F174(v122, v121);
      v124(v125, v126);
      (*(v128 + 8))(v127, v129);
      v124(v202, v126);
      v124(v208, v126);
      v124(v214, v126);
    }

    v65 = v219;
    goto LABEL_39;
  }

  v53 = *(v0 + 2208);
  (*(v0 + 2200))(*(v0 + 1960), *(v0 + 2192), *(v0 + 1880));
  v54 = sub_22B36050C();
  v55 = sub_22B360D1C();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 2512);
  v178 = *(v0 + 2504);
  v176 = *(v0 + 2496);
  v58 = *(v0 + 2352);
  v217 = *(v0 + 2344);
  v199 = *(v0 + 2216);
  v59 = *(v0 + 2168);
  v60 = *(v0 + 2152);
  v170 = *(v0 + 2144);
  v172 = *(v0 + 2184);
  v174 = *(v0 + 2136);
  v185 = *(v0 + 1880);
  v188 = *(v0 + 1960);
  v205 = *(v0 + 1832);
  v211 = *(v0 + 1848);
  v61 = *(v0 + 1784);
  v191 = *(v0 + 1680);
  v195 = *(v0 + 1816);
  v62 = *(v0 + 1672);
  v180 = *(v0 + 1888);
  v182 = *(v0 + 1664);
  if (v56)
  {
    v165 = *(v0 + 2312);
    v168 = v52;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v222[0] = v64;
    *v63 = 136315394;
    *(v63 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, v222);
    *(v63 + 12) = 2048;
    *(v63 + 14) = 1221;

    _os_log_impl(&dword_22B116000, v54, v55, "[Dropbox] Task is cancelled at marker %s:%ld", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x23188F650](v64, -1, -1);
    MEMORY[0x23188F650](v63, -1, -1);

    sub_22B12F174(v176, v178);
    v199(v188, v185);
    (*(v62 + 8))(v191, v182);
    v217(v195, v61);
    v217(v205, v61);
    v217(v211, v61);
    v65 = v168;
LABEL_39:

    goto LABEL_40;
  }

  sub_22B12F174(v176, v178);

  v199(v188, v185);
  (*(v62 + 8))(v191, v182);
  v217(v195, v61);
  v217(v205, v61);
  v217(v211, v61);

LABEL_40:
  v130 = *(v0 + 2128);
  v131 = *(v0 + 2104);
  v132 = *(v0 + 2096);
  v133 = *(v0 + 2088);
  v134 = *(v0 + 2080);
  v135 = *(v0 + 2072);
  v136 = *(v0 + 2064);
  v137 = *(v0 + 2056);
  v138 = *(v0 + 2048);
  v139 = *(v0 + 2040);
  v141 = *(v0 + 2032);
  v142 = *(v0 + 2024);
  v143 = *(v0 + 2016);
  v144 = *(v0 + 2008);
  v145 = *(v0 + 2000);
  v146 = *(v0 + 1992);
  v147 = *(v0 + 1984);
  v148 = *(v0 + 1976);
  v149 = *(v0 + 1968);
  v150 = *(v0 + 1960);
  v151 = *(v0 + 1952);
  v152 = *(v0 + 1944);
  v153 = *(v0 + 1936);
  v154 = *(v0 + 1928);
  v155 = *(v0 + 1920);
  v156 = *(v0 + 1912);
  v157 = *(v0 + 1904);
  v158 = *(v0 + 1896);
  v159 = *(v0 + 1872);
  v160 = *(v0 + 1864);
  v161 = *(v0 + 1856);
  v162 = *(v0 + 1848);
  v163 = *(v0 + 1840);
  v164 = *(v0 + 1832);
  v166 = *(v0 + 1824);
  v167 = *(v0 + 1816);
  v169 = *(v0 + 1808);
  v171 = *(v0 + 1800);
  v173 = *(v0 + 1776);
  v175 = *(v0 + 1768);
  v177 = *(v0 + 1760);
  v179 = *(v0 + 1752);
  v181 = *(v0 + 1744);
  v184 = *(v0 + 1736);
  v187 = *(v0 + 1728);
  v190 = *(v0 + 1720);
  v193 = *(v0 + 1712);
  v197 = *(v0 + 1704);
  v203 = *(v0 + 1680);
  v209 = *(v0 + 1656);
  v215 = *(v0 + 1648);
  v221 = *(v0 + 1624);

  v140 = *(v0 + 8);

  return v140();
}