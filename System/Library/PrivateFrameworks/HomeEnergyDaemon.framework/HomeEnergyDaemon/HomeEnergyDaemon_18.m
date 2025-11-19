uint64_t sub_22B2DF848()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_22B35E02C();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = sub_22B35DF9C();
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v10 = sub_22B35E04C();
  v1[14] = v10;
  v11 = *(v10 - 8);
  v1[15] = v11;
  v12 = *(v11 + 64) + 15;
  v1[16] = swift_task_alloc();
  v13 = sub_22B35DE9C();
  v1[17] = v13;
  v14 = *(v13 - 8);
  v1[18] = v14;
  v15 = *(v14 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v16 = sub_22B36052C();
  v1[24] = v16;
  v17 = *(v16 - 8);
  v1[25] = v17;
  v18 = *(v17 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2DFB48, v0, 0);
}

uint64_t sub_22B2DFB48()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[31] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Purge old TOU Peaks", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[30];
  v10 = v0[24];
  v11 = v0[25];

  v12 = *(v11 + 8);
  v0[34] = v12;
  v12(v9, v10);
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v13 = v0[22];
  v14 = v0[23];
  v15 = v0[17];
  v16 = v0[18];
  v17 = qword_28140BC80;
  v0[35] = qword_28140BC80;
  sub_22B35DE6C();
  sub_22B35DDCC();
  v18 = *(v16 + 8);
  v0[36] = v18;
  v0[37] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v15);

  return MEMORY[0x2822009F8](sub_22B2DFD58, v17, 0);
}

uint64_t sub_22B2DFD58()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[5];
  sub_22B21AAAC(v4);
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_22B2DFDF0, v6, 0);
}

uint64_t sub_22B2DFDF0()
{
  v75 = v0;
  if (sub_22B360BFC())
  {
    v1 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 232), *(v0 + 248), *(v0 + 192));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 272);
    v6 = *(v0 + 232);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    if (v4)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v74 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v74);
      *(v9 + 12) = 2048;
      *(v9 + 14) = 1655;
      _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23188F650](v10, -1, -1);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v5(v6, v7);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);
    v60 = *(v0 + 128);
    v62 = *(v0 + 104);
    v65 = *(v0 + 80);
    v68 = *(v0 + 72);
    v71 = *(v0 + 48);

    v21 = *(v0 + 8);

    return v21(0);
  }

  else
  {
    v23 = *(v0 + 128);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    (*(v25 + 104))(v24, *MEMORY[0x277CC9830], v26);
    sub_22B35DFAC();
    (*(v25 + 8))(v24, v26);
    sub_22B35E05C();
    v28 = sub_22B35E0BC();
    result = (*(*(v28 - 8) + 48))(v27, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v0 + 288);
      v69 = *(v0 + 256);
      v72 = *(v0 + 264);
      v58 = *(v0 + 296);
      v59 = *(v0 + 224);
      v30 = *(v0 + 184);
      v61 = *(v0 + 192);
      v63 = *(v0 + 248);
      v31 = *(v0 + 176);
      v57 = *(v0 + 168);
      v66 = *(v0 + 160);
      v32 = *(v0 + 136);
      v33 = *(v0 + 144);
      v34 = *(v0 + 128);
      v36 = *(v0 + 72);
      v35 = *(v0 + 80);
      v38 = *(v0 + 56);
      v37 = *(v0 + 64);
      sub_22B35E01C();
      sub_22B35DE8C();
      (*(v37 + 104))(v36, *MEMORY[0x277CC9988], v38);
      sub_22B35F60C();
      (*(v37 + 8))(v36, v38);
      v29(v31, v32);
      sub_22B35F53C();
      v29(v30, v32);
      v69(v59, v63, v61);
      (*(v33 + 16))(v66, v57, v32);
      v39 = sub_22B36050C();
      v40 = sub_22B360D2C();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 288);
      v73 = *(v0 + 296);
      v43 = *(v0 + 272);
      v44 = *(v0 + 224);
      v45 = *(v0 + 192);
      v46 = *(v0 + 200);
      v47 = *(v0 + 160);
      v48 = *(v0 + 136);
      if (v41)
      {
        v70 = *(v0 + 224);
        v49 = swift_slowAlloc();
        v67 = v45;
        v50 = swift_slowAlloc();
        v74 = v50;
        *v49 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
        v64 = v43;
        v51 = sub_22B36131C();
        v53 = v52;
        v42(v47, v48);
        v54 = sub_22B1A7B20(v51, v53, &v74);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_22B116000, v39, v40, "[Dropbox] Purge readings before %{public}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x23188F650](v50, -1, -1);
        MEMORY[0x23188F650](v49, -1, -1);

        v64(v70, v67);
      }

      else
      {

        v42(v47, v48);
        v43(v44, v45);
      }

      if (qword_281409598 != -1)
      {
        swift_once();
      }

      *(v0 + 304) = qword_28140BCE0;
      v55 = swift_task_alloc();
      *(v0 + 312) = v55;
      *v55 = v0;
      v55[1] = sub_22B2E0428;
      v56 = *(v0 + 168);

      return sub_22B1D73C8(v56);
    }
  }

  return result;
}

uint64_t sub_22B2E0428()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E0538, v2, 0);
}

uint64_t sub_22B2E0538()
{
  v41 = v0;
  if (sub_22B360BFC())
  {
    v1 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 216), *(v0 + 248), *(v0 + 192));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 216);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v32 = *(v0 + 168);
    v34 = *(v0 + 272);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v36 = v11;
    v38 = *(v0 + 128);
    if (v4)
    {
      v30 = *(v0 + 288);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v40);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 1682;
      _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23188F650](v14, -1, -1);
      MEMORY[0x23188F650](v13, -1, -1);

      v34(v7, v9);
      v30(v32, v10);
    }

    else
    {

      v34(v7, v9);
      v6(v32, v10);
    }

    (*(v12 + 8))(v38, v36);
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v23 = *(v0 + 208);
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 152);
    v31 = *(v0 + 128);
    v33 = *(v0 + 104);
    v35 = *(v0 + 80);
    v37 = *(v0 + 72);
    v39 = *(v0 + 48);

    v29 = *(v0 + 8);

    return v29(0);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 320) = v15;
    *v15 = v0;
    v15[1] = sub_22B2E0880;
    v16 = *(v0 + 304);
    v17 = *(v0 + 48);

    return sub_22B1D78E0(v17, 0, 0, 0, 0);
  }
}

uint64_t sub_22B2E0880()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E0990, v2, 0);
}

uint64_t sub_22B2E0990()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
LABEL_8:
    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v5 = qword_28140BCF8;
    *(v0 + 336) = qword_28140BCF8;
    v6 = sub_22B2E0E7C;
    goto LABEL_11;
  }

  v4 = *(v0 + 168);
  (*(v2 + 32))(*(v0 + 152), v3, v1);
  if ((sub_22B35DDFC() & 1) == 0)
  {
    v7 = *(v0 + 296);
    (*(v0 + 288))(*(v0 + 152), *(v0 + 136));
    goto LABEL_8;
  }

  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v5 = qword_28140BCF8;
  *(v0 + 328) = qword_28140BCF8;
  v6 = sub_22B2E0B14;
LABEL_11:

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2E0B14()
{
  v1 = v0[41];
  v2 = v0[5];
  sub_22B306544(v0[19]);

  return MEMORY[0x2822009F8](sub_22B2E0B84, v2, 0);
}

uint64_t sub_22B2E0B84()
{
  v44 = v0;
  v1 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 152), *(v0 + 136));
  v42 = sub_22B360BFC();
  if (v42)
  {
    v2 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 208), *(v0 + 248), *(v0 + 192));
    v3 = sub_22B36050C();
    v4 = sub_22B360D1C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 288);
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    v34 = *(v0 + 168);
    v36 = *(v0 + 272);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v38 = v11;
    v40 = *(v0 + 128);
    if (v5)
    {
      v32 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v31 = v6;
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v43);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 1706;
      _os_log_impl(&dword_22B116000, v3, v4, "[Dropbox] Task is cancelled at marker %s:%ld", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23188F650](v14, -1, -1);
      MEMORY[0x23188F650](v13, -1, -1);

      v36(v8, v9);
      v31(v34, v10);
    }

    else
    {

      v36(v8, v9);
      v6(v34, v10);
    }

    (*(v12 + 8))(v40, v38);
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    (*(v0 + 288))(*(v0 + 168), *(v0 + 136));
    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v23 = *(v0 + 208);
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 152);
  v33 = *(v0 + 128);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v39 = *(v0 + 72);
  v41 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29((v42 & 1) == 0);
}

uint64_t sub_22B2E0E7C()
{
  v1 = v0[42];
  v2 = v0[5];
  sub_22B306544(v0[21]);

  return MEMORY[0x2822009F8](sub_22B2E0EEC, v2, 0);
}

uint64_t sub_22B2E0EEC()
{
  v43 = v0;
  v41 = sub_22B360BFC();
  if (v41)
  {
    v1 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 208), *(v0 + 248), *(v0 + 192));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 288);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 192);
    v33 = *(v0 + 168);
    v35 = *(v0 + 272);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v37 = v10;
    v39 = *(v0 + 128);
    if (v4)
    {
      v31 = *(v0 + 296);
      v12 = swift_slowAlloc();
      v30 = v5;
      v13 = swift_slowAlloc();
      v42 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v42);
      *(v12 + 12) = 2048;
      *(v12 + 14) = 1706;
      _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23188F650](v13, -1, -1);
      MEMORY[0x23188F650](v12, -1, -1);

      v35(v7, v8);
      v30(v33, v9);
    }

    else
    {

      v35(v7, v8);
      v5(v33, v9);
    }

    (*(v11 + 8))(v39, v37);
  }

  else
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    (*(v0 + 288))(*(v0 + 168), *(v0 + 136));
    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v22 = *(v0 + 208);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  v32 = *(v0 + 128);
  v34 = *(v0 + 104);
  v36 = *(v0 + 80);
  v38 = *(v0 + 72);
  v40 = *(v0 + 48);

  v28 = *(v0 + 8);

  return v28((v41 & 1) == 0);
}

uint64_t sub_22B2E11D4(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 200) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v4 = sub_22B36064C();
  *(v2 + 80) = v4;
  v5 = *(v4 - 8);
  *(v2 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v7 = sub_22B36052C();
  *(v2 + 112) = v7;
  v8 = *(v7 - 8);
  *(v2 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E1344, v1, 0);
}

uint64_t sub_22B2E1344()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_28140BDD0;
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_22B2E140C;

  return sub_22B142D7C();
}

uint64_t sub_22B2E140C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E151C, v2, 0);
}

uint64_t sub_22B2E151C()
{
  v1 = v0[8];
  if (*(v1 + 112) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D2C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Refresh is already executing", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    v14 = v0[16];
    v13 = v0[17];
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }

  else
  {
    sub_22B2E5874();
    v0[20] = os_transaction_create();
    sub_22B2E4290();
    *(v1 + 112) = 1;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[14];
    v23 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);
    v24 = sub_22B36050C();
    v25 = sub_22B360D2C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox] Refresh AMI Data", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];

    (*(v28 + 8))(v27, v29);
    v30 = swift_task_alloc();
    v0[21] = v30;
    *v30 = v0;
    v30[1] = sub_22B2E188C;
    v31 = v0[8];

    return sub_22B2D9014();
  }
}

uint64_t sub_22B2E188C(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 201) = a1;

  return MEMORY[0x2822009F8](sub_22B2E19A4, v3, 0);
}

uint64_t sub_22B2E19A4()
{
  if (*(v0 + 201))
  {
    v1 = swift_task_alloc();
    *(v0 + 176) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E1B78;
    v2 = *(v0 + 64);

    return sub_22B2DCA40();
  }

  else
  {
    v4 = *(v0 + 200);
    *(*(v0 + 64) + 112) = 0;
    v5 = *(v0 + 160);
    if (v4 == 1)
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = *(v0 + 80);
      v9 = *(v0 + 88);
      sub_22B36063C();
      sub_22B36065C();
      v10 = *(v9 + 8);
      v10(v7, v8);
      v11 = swift_allocObject();
      *(v11 + 16) = v5;
      swift_unknownObjectRetain();
      sub_22B1245A8(v6, sub_22B2EC224, v11);

      swift_unknownObjectRelease();
      v10(v6, v8);
    }

    else
    {
      v12 = *(v0 + 160);
      swift_unknownObjectRelease();
    }

    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 72);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22B2E1B78(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 202) = a1;

  return MEMORY[0x2822009F8](sub_22B2E1C90, v3, 0);
}

uint64_t sub_22B2E1C90()
{
  if (*(v0 + 202))
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E1E74;
    v2 = *(v0 + 64);

    return sub_22B2DF848();
  }

  else
  {
    v4 = *(v0 + 160);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 200);
    *(v6 + 112) = 0;
    v8 = sub_22B360B6C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    *(v9 + 48) = v4;
    swift_unknownObjectRetain();

    sub_22B322A98(0, 0, v5, &unk_22B366D70, v9);

    swift_unknownObjectRelease();
    sub_22B123284(v5, &qword_27D8BA8D0, &qword_22B363610);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 72);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22B2E1E74(char a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 203) = a1;

  return MEMORY[0x2822009F8](sub_22B2E1F8C, v3, 0);
}

uint64_t sub_22B2E1F8C()
{
  if (*(v0 + 203))
  {
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E2160;
    v2 = *(v0 + 144);

    return sub_22B142D7C();
  }

  else
  {
    v4 = *(v0 + 200);
    *(*(v0 + 64) + 112) = 0;
    v5 = *(v0 + 160);
    if (v4 == 1)
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = *(v0 + 80);
      v9 = *(v0 + 88);
      sub_22B36063C();
      sub_22B36065C();
      v10 = *(v9 + 8);
      v10(v7, v8);
      v11 = swift_allocObject();
      *(v11 + 16) = v5;
      swift_unknownObjectRetain();
      sub_22B1245A8(v6, sub_22B2EC224, v11);

      swift_unknownObjectRelease();
      v10(v6, v8);
    }

    else
    {
      v12 = *(v0 + 160);
      swift_unknownObjectRelease();
    }

    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 72);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22B2E2160()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E2270, v2, 0);
}

uint64_t sub_22B2E2270()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 200);
  *(v3 + 112) = 0;
  v5 = sub_22B360B6C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v1;
  swift_unknownObjectRetain();

  sub_22B322A98(0, 0, v2, &unk_22B366D80, v6);

  swift_unknownObjectRelease();
  sub_22B123284(v2, &qword_27D8BA8D0, &qword_22B363610);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B2E23DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 64) = a5;
  v7 = sub_22B36064C();
  *(v6 + 24) = v7;
  v8 = *(v7 - 8);
  *(v6 + 32) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v6 + 56) = v10;
  *v10 = v6;
  v10[1] = sub_22B2E24DC;

  return sub_22B2E5D34();
}

uint64_t sub_22B2E24DC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E25D8, 0, 0);
}

uint64_t sub_22B2E25D8()
{
  if (*(v0 + 64) == 1)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    sub_22B36063C();
    sub_22B36065C();
    v6 = *(v4 + 8);
    v6(v1, v3);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    swift_unknownObjectRetain();
    sub_22B1245A8(v2, sub_22B2E76E0, v7);

    v6(v2, v3);
  }

  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B2E26F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 64) = a5;
  v7 = sub_22B36064C();
  *(v6 + 24) = v7;
  v8 = *(v7 - 8);
  *(v6 + 32) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v6 + 56) = v10;
  *v10 = v6;
  v10[1] = sub_22B2E27F8;

  return sub_22B2E5D34();
}

uint64_t sub_22B2E27F8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E28F4, 0, 0);
}

uint64_t sub_22B2E28F4()
{
  if (*(v0 + 64) == 1)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    sub_22B36063C();
    sub_22B36065C();
    v6 = *(v4 + 8);
    v6(v1, v3);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    swift_unknownObjectRetain();
    sub_22B1245A8(v2, sub_22B2EC224, v7);

    v6(v2, v3);
  }

  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B2E2A14(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36064C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_22B3604BC();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = sub_22B36052C();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = sub_22B36047C();
  v3[19] = v14;
  v15 = *(v14 - 8);
  v3[20] = v15;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v17 = sub_22B3604AC();
  v3[24] = v17;
  v18 = *(v17 - 8);
  v3[25] = v18;
  v19 = *(v18 + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E2CA4, v2, 0);
}

uint64_t sub_22B2E2CA4()
{
  v0[27] = os_transaction_create();
  sub_22B2E4290();
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v9, "InitialFetch", "", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[19];
  v13 = v0[20];

  (*(v13 + 16))(v11, v10, v12);
  v14 = sub_22B3604EC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[28] = sub_22B3604DC();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_22B2E2EF4;
  v19 = v0[5];
  v18 = v0[6];

  return sub_22B22250C(v19, v18, 1, 0);
}

uint64_t sub_22B2E2EF4(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_22B2E300C, v3, 0);
}

uint64_t sub_22B2E300C()
{
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[26];
    v3 = sub_22B36048C();
    v4 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v5 = v0[23];
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v7, "Start: Fetch AMI Data", "", v6, 2u);
      MEMORY[0x23188F650](v6, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_22B2E3410;
    v9 = v0[7];

    return sub_22B2BDC04(v1);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = __swift_project_value_buffer(v13, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v15, v16, "[Dropbox] Site not owned by user", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    v22 = v0[28];
    v23 = v0[26];
    v24 = v0[21];
    v25 = sub_22B36048C();
    sub_22B3604CC();
    v26 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v27 = v0[28];
      v29 = v0[13];
      v28 = v0[14];
      v30 = v0[12];

      sub_22B3604FC();

      if ((*(v29 + 88))(v28, v30) == *MEMORY[0x277D85B00])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[14], v0[12]);
        v31 = "";
      }

      v32 = v0[21];
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v25, v26, v34, "InitialFetch", v31, v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    v36 = v0[20];
    v35 = v0[21];
    v37 = v0[19];

    v38 = *(v36 + 8);
    v0[35] = v38;
    v38(v35, v37);
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v39 = swift_task_alloc();
    v0[36] = v39;
    *v39 = v0;
    v39[1] = sub_22B2E36D0;

    return sub_22B142D7C();
  }
}

uint64_t sub_22B2E3410()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = sub_22B2E3AF8;
  }

  else
  {
    v6 = sub_22B2EC210;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2E3548()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;

  v5 = v2[33];
  v6 = v2[32];
  v7 = v2[7];
  if (v0)
  {

    v8 = sub_22B2E4004;
  }

  else
  {

    v8 = sub_22B2EC220;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2E36D0()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 296) = v4;
  *v4 = v3;
  v4[1] = sub_22B2E3810;
  v5 = *(v1 + 56);

  return sub_22B2E5D34();
}

uint64_t sub_22B2E3810()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E3920, v2, 0);
}

uint64_t sub_22B2E3920()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v16 = v0[35];
  v17 = v0[24];
  v15 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v12 = v0[28];
  v13 = v0[20];
  v14 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  sub_22B36063C();
  sub_22B36065C();
  v8 = *(v6 + 8);
  v8(v5, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  swift_unknownObjectRetain();
  sub_22B1245A8(v4, sub_22B2E74DC, v9);

  swift_unknownObjectRelease();
  v8(v4, v7);
  v16(v15, v14);
  (*(v2 + 8))(v3, v17);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B2E3AF8()
{
  v1 = *(v0 + 208);
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v6, "End: Fetch AMI Data", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = *(v0 + 240);

  v8 = sub_22B35F12C();
  v10 = *(v0 + 240);
  if (!v9)
  {
    goto LABEL_21;
  }

  v11 = v8;
  v12 = v9;
  v13 = sub_22B35F43C();
  v10 = *(v0 + 240);
  if (!v14)
  {
LABEL_20:

LABEL_21:

    goto LABEL_22;
  }

  v15 = v13;
  v16 = v14;
  v17 = sub_22B35F41C();
  v19 = v18;

  if (!v19)
  {
    v10 = *(v0 + 240);
    goto LABEL_20;
  }

  v20 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v20 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v22 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_18:
    v27 = *(v0 + 240);

    goto LABEL_22;
  }

  v23 = *(v0 + 144);
  sub_22B35E05C();

  v24 = sub_22B35E0BC();
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  v26 = *(v0 + 144);
  if (v25 == 1)
  {

    sub_22B123284(v26, &unk_27D8BA080, &unk_22B364280);
LABEL_22:
    v28 = *(v0 + 224);
    v29 = *(v0 + 208);
    v30 = *(v0 + 168);
    v31 = sub_22B36048C();
    sub_22B3604CC();
    v32 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v33 = *(v0 + 224);
      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = *(v0 + 96);

      sub_22B3604FC();

      if ((*(v35 + 88))(v34, v36) == *MEMORY[0x277D85B00])
      {
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        v37 = "";
      }

      v38 = *(v0 + 168);
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v31, v32, v40, "InitialFetch", v37, v39, 2u);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    v42 = *(v0 + 160);
    v41 = *(v0 + 168);
    v43 = *(v0 + 152);

    v44 = *(v42 + 8);
    *(v0 + 280) = v44;
    v44(v41, v43);
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v45 = swift_task_alloc();
    *(v0 + 288) = v45;
    *v45 = v0;
    v45[1] = sub_22B2E36D0;

    return sub_22B142D7C();
  }

  v47 = *(v0 + 208);
  sub_22B123284(*(v0 + 144), &unk_27D8BA080, &unk_22B364280);
  v48 = sub_22B36048C();
  v49 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v50 = *(v0 + 184);
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v48, v49, v52, "Start: Process AMI Data", "", v51, 2u);
    MEMORY[0x23188F650](v51, -1, -1);
  }

  v53 = *(v0 + 240);

  v54 = type metadata accessor for AMIRecordsProcessor();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  *(v0 + 256) = sub_22B1B79F4();
  v57 = sub_22B35F3AC();
  v59 = v58;
  *(v0 + 264) = v58;
  v60 = swift_task_alloc();
  *(v0 + 272) = v60;
  *v60 = v0;
  v60[1] = sub_22B2E3548;

  return sub_22B1C437C(v57, v59);
}

uint64_t sub_22B2E4004()
{
  v1 = v0[26];
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  v4 = sub_22B360FDC();
  v5 = v0[30];
  if (v4)
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v8, "End: Process AMI Data", "", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[21];
  v12 = sub_22B36048C();
  sub_22B3604CC();
  v13 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v14 = v0[28];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];

    sub_22B3604FC();

    if ((*(v16 + 88))(v15, v17) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
      v18 = "";
    }

    v19 = v0[21];
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v12, v13, v21, "InitialFetch", v18, v20, 2u);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[19];

  v25 = *(v23 + 8);
  v0[35] = v25;
  v25(v22, v24);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v26 = swift_task_alloc();
  v0[36] = v26;
  *v26 = v0;
  v26[1] = sub_22B2E36D0;

  return sub_22B142D7C();
}

uint64_t sub_22B2E4290()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Taking extended lifetime", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22B2E4444(uint64_t a1, const char *a2)
{
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, a2, v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22B2E45F0()
{
  v1[8] = v0;
  v2 = type metadata accessor for CDEnergySite();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_22B35F01C();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = sub_22B36052C();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E4774, v0, 0);
}

uint64_t sub_22B2E4774()
{
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_22B2E4838;

  return sub_22B335200();
}

uint64_t sub_22B2E4838(char a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_22B2E4950, v3, 0);
}

uint64_t sub_22B2E4950()
{
  if (*(v0 + 296))
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    (*(*(v0 + 104) + 104))(*(v0 + 112), *MEMORY[0x277D073C8], *(v0 + 96));
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E4BBC;
    v2 = *(v0 + 112);

    return sub_22B141FF0(1, v2);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v4, v7, v5);
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] E2E unavailable. Skip refresh via alarm", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22B2E4BBC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 168) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_22B2E4D30, v6, 0);
}

uint64_t sub_22B2E4D30()
{
  v1 = *(v0 + 168);
  if (!v1)
  {
LABEL_20:
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 112);
    v31 = *(v0 + 88);

    v32 = *(v0 + 8);

    return v32();
  }

  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (!v2)
  {
LABEL_19:

    goto LABEL_20;
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = sub_22B35EAFC();
  v6 = 0;
  *(v0 + 184) = v5;
  *(v0 + 288) = *(v3 + 28);
  *(v0 + 292) = *(v4 + 80);
  while (1)
  {
    *(v0 + 192) = v6;
    v7 = *(v0 + 168);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v8 = *(v0 + 184);
    v9 = *(v0 + 88);
    v10 = (v9 + *(v0 + 288));
    sub_22B16F4CC(v7 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(*(v0 + 80) + 72) * v6, v9);
    v12 = *v9;
    v11 = v9[1];
    v13 = *v10;
    v14 = v10[1];
    v16 = v9[2];
    v15 = v9[3];

    sub_22B144B30(v13, v14);

    sub_22B16F530(v9);
    v17 = sub_22B35EAEC();
    *(v0 + 200) = v17;
    *(v0 + 208) = 0;
    v18 = v17;

    sub_22B12F174(v13, v14);

    v19 = sub_22B35F12C();
    *(v0 + 216) = v19;
    *(v0 + 224) = v20;
    if (!v20)
    {

      goto LABEL_5;
    }

    v21 = v19;
    v22 = v20;
    v23 = sub_22B35F43C();
    *(v0 + 232) = v23;
    *(v0 + 240) = v24;
    if (!v24)
    {

      goto LABEL_4;
    }

    v25 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        break;
      }
    }

LABEL_4:

LABEL_5:
    v6 = *(v0 + 192) + 1;
    if (v6 == *(v0 + 176))
    {
      v27 = *(v0 + 168);
      goto LABEL_19;
    }
  }

  if (qword_2814096B8 == -1)
  {
    goto LABEL_24;
  }

LABEL_28:
  swift_once();
LABEL_24:
  v34 = qword_28140BCE8;
  *(v0 + 248) = qword_28140BCE8;

  return MEMORY[0x2822009F8](sub_22B2E4FF8, v34, 0);
}

uint64_t sub_22B2E4FF8()
{
  v1 = v0[31];
  v2 = v0[8];
  v0[32] = sub_22B32C964(v0[27], v0[28], v0[29], v0[30]);

  return MEMORY[0x2822009F8](sub_22B2E5070, v2, 0);
}

uint64_t sub_22B2E5070()
{
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCF8;
  *(v0 + 264) = qword_28140BCF8;

  return MEMORY[0x2822009F8](sub_22B2E5108, v1, 0);
}

uint64_t sub_22B2E5108()
{
  v1 = v0[33];
  v2 = v0[8];
  v0[34] = sub_22B306A2C(v0[27], v0[28], v0[29], v0[30]);

  return MEMORY[0x2822009F8](sub_22B2E5180, v2, 0);
}

uint64_t sub_22B2E5180()
{
  v63 = v0;
  if (*(v0 + 256))
  {
    v1 = *(v0 + 272) == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1 && *(*(v0 + 64) + 116) != 1)
  {
    v28 = *(v0 + 240);
    v29 = *(v0 + 224);

    v30 = *(v0 + 192) + 1;
    if (v30 == *(v0 + 176))
    {
LABEL_14:
      v31 = *(v0 + 168);

      v33 = *(v0 + 136);
      v32 = *(v0 + 144);
      v34 = *(v0 + 112);
      v35 = *(v0 + 88);

      v36 = *(v0 + 8);

      return v36();
    }

    v37 = *(v0 + 208);
    while (1)
    {
      *(v0 + 192) = v30;
      v38 = *(v0 + 168);
      if (v30 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v39 = *(v0 + 184);
      v40 = *(v0 + 88);
      v41 = (v40 + *(v0 + 288));
      sub_22B16F4CC(v38 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(*(v0 + 80) + 72) * v30, v40);
      v43 = *v40;
      v42 = v40[1];
      v44 = *v41;
      v45 = v41[1];
      v47 = v40[2];
      v46 = v40[3];

      sub_22B144B30(v44, v45);

      sub_22B16F530(v40);
      v48 = sub_22B35EAEC();
      *(v0 + 200) = v48;
      *(v0 + 208) = v37;
      if (v37)
      {

        sub_22B12F174(v44, v45);
      }

      else
      {
        v49 = v48;

        sub_22B12F174(v44, v45);

        v50 = sub_22B35F12C();
        *(v0 + 216) = v50;
        *(v0 + 224) = v51;
        if (!v51)
        {

          goto LABEL_20;
        }

        v52 = v50;
        v53 = v51;
        v54 = sub_22B35F43C();
        *(v0 + 232) = v54;
        *(v0 + 240) = v55;
        if (v55)
        {
          v56 = HIBYTE(v53) & 0xF;
          if ((v53 & 0x2000000000000000) == 0)
          {
            v56 = v52 & 0xFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            v57 = HIBYTE(v55) & 0xF;
            if ((v55 & 0x2000000000000000) == 0)
            {
              v57 = v54 & 0xFFFFFFFFFFFFLL;
            }

            if (v57)
            {
              if (qword_2814096B8 != -1)
              {
                swift_once();
              }

              v58 = qword_28140BCE8;
              *(v0 + 248) = qword_28140BCE8;

              return MEMORY[0x2822009F8](sub_22B2E4FF8, v58, 0);
            }
          }
        }

        else
        {
        }
      }

LABEL_20:
      v37 = 0;
      v30 = *(v0 + 192) + 1;
      if (v30 == *(v0 + 176))
      {
        goto LABEL_14;
      }
    }
  }

  v2 = *(v0 + 168);

  if (qword_28140A0C8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);

  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 240);
  if (v11)
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = *(v0 + 128);
    v61 = *(v0 + 136);
    v59 = *(v0 + 200);
    v60 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v62[0] = v18;
    *v17 = 136315394;
    v19 = sub_22B1A7B20(v15, v14, v62);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    v20 = sub_22B1A7B20(v13, v12, v62);

    *(v17 + 14) = v20;
    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Initial fetch empty for %s: %s. Try again", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v16 + 8))(v61, v60);
  }

  else
  {
    v21 = *(v0 + 224);
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 120);

    (*(v23 + 8))(v22, v24);
  }

  v25 = swift_task_alloc();
  *(v0 + 280) = v25;
  *v25 = v0;
  v25[1] = sub_22B2E5708;
  v26 = *(v0 + 64);

  return sub_22B2E11D4(0);
}

uint64_t sub_22B2E5708()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v9 = *v0;

  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[14];
  v6 = v1[11];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_22B2E5874()
{
  v1 = sub_22B35EE8C();
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 113) & 1) == 0)
  {
    if (qword_281409448 != -1)
    {
      swift_once();
    }

    sub_22B196CF8();
  }

  if (qword_281409448 != -1)
  {
    swift_once();
  }

  v25 = MEMORY[0x23188EEB0]();
  v10 = [objc_opt_self() sharedScheduler];
  v11 = sub_22B36081C();
  v12 = [v10 taskRequestForIdentifier_];

  if (v12)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v9, v13, v5);
    v14 = sub_22B36050C();
    v15 = sub_22B360D2C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v1;
      v18 = v17;
      v27[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B368C40, v27);
      _os_log_impl(&dword_22B116000, v14, v15, "[HistoricalGuidanceDownloadTask] %s is already scheduled", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v19 = v18;
      v1 = v24;
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v28 = &type metadata for BackgroundSystemTaskRequest;
    v29 = &off_283EFE7E8;
    v20 = swift_allocObject();
    v27[0] = v20;
    *(v20 + 16) = 0xD000000000000027;
    *(v20 + 24) = 0x800000022B368C40;
    *(v20 + 32) = 0x409C200000000000;
    *(v20 + 40) = 0;
    sub_22B348FC8(v27, 0, 0);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  objc_autoreleasePoolPop(v25);
  v21 = v26;
  (*(v26 + 104))(v4, *MEMORY[0x277D07390], v1);
  v22 = sub_22B35EE7C();
  result = (*(v21 + 8))(v4, v1);
  if (v22)
  {
    v28 = &type metadata for BackgroundSystemTaskScheduler;
    v29 = &off_283EFE540;
    sub_22B220B58(7200.0, v27, 0xD000000000000026, 0x800000022B36A4C0);
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return result;
}

uint64_t sub_22B2E5D34()
{
  v1[5] = v0;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E5E0C, v0, 0);
}

uint64_t sub_22B2E5E0C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[11] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Notifying clients of electricity data refresh", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[7];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_22B2E5FE8;

  return (sub_22B3515E8)(0xD000000000000014, 0x800000022B36D4B0);
}

uint64_t sub_22B2E5FE8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2E60F8, v2, 0);
}

uint64_t sub_22B2E60F8()
{
  v1 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 48));
  v2 = sub_22B36050C();
  v3 = sub_22B360CFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "Updating Client on electricity data refresh", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  v5(v6, v7);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(qword_28140BDD8 + 112);
  sub_22B35EF1C();
  v15 = sub_22B36081C();

  [v14 postNotificationName:v15 object:0 userInfo:0 deliverImmediately:1];

  v10(v12, v11, v13);
  v16 = sub_22B36050C();
  v17 = sub_22B360CFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22B116000, v16, v17, "Updated Client on electricity data refresh", v18, 2u);
    MEMORY[0x23188F650](v18, -1, -1);
  }

  v19 = *(v0 + 112);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v23 = *(v0 + 56);
  v22 = *(v0 + 64);
  v24 = *(v0 + 48);

  v19(v22, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22B2E6388@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_22B2E641C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22B33B28C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B34128C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22B172454((*(v12 + 56) + 32 * v9), a3);
    sub_22B2E64C0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22B2E64C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B36106C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22B36149C();

      sub_22B3608FC();
      v14 = sub_22B3614DC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22B2E6670(int64_t a1, uint64_t a2)
{
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_22B36106C();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_22B2EC1B8(&qword_27D8BA348, MEMORY[0x277CC9578]);
      v23 = sub_22B36071C();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(sub_22B35F00C() - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

uint64_t sub_22B2E69B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22B35D91C();
    if (v10)
    {
      v11 = sub_22B35D94C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22B35D93C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22B35D91C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22B35D94C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22B35D93C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22B2E6BE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22B2E7704(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22B12F174(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_22B2E69B4(v14, a3, a4, &v13);
  v10 = v4;
  sub_22B12F174(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_22B2E6D74(char a1, char a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  swift_defaultActor_initialize();
  *(v3 + 120) = 0;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0;
  *(v3 + 112) = a1;
  *(v3 + 113) = a2;
  if (sub_22B35EEBC())
  {
    v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v21 = sub_22B36081C();
    v22 = [v20 initWithSuiteName_];

    if (v22)
    {
      v60 = v7;
      v23 = v22;
      v24 = sub_22B36081C();
      v25 = [v23 BOOLForKey_];

      if (v25)
      {
        *(v3 + 113) = 1;
      }

      v59 = v6;
      v26 = v23;
      v27 = sub_22B36081C();
      v28 = [v26 BOOLForKey_];

      if (v28)
      {
        *(v3 + 114) = 1;
      }

      v29 = v26;
      v30 = sub_22B36081C();
      v31 = [v29 BOOLForKey:v30];

      if ((v31 & 1) != 0 && (*(v3 + 115) = 1, v29 = v29, v32 = sub_22B36081C(), v33 = [v29 integerForKey:v32], v29, v32, *(v3 + 120) = v33, *(v3 + 115) == 1))
      {
        if (v33 == 998)
        {
          v47 = v59;
          v48 = v60;
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v49 = __swift_project_value_buffer(v47, qword_28140BD10);
          swift_beginAccess();
          (*(v48 + 16))(v13, v49, v47);
          v50 = sub_22B36050C();
          v51 = sub_22B360D2C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_22B116000, v50, v51, "Token Error Inducer. Aggressive polling with 1 hour cktoken expiration enabled", v52, 2u);
            MEMORY[0x23188F650](v52, -1, -1);
            v53 = v29;
          }

          else
          {
            v53 = v50;
            v50 = v29;
          }

          (*(v48 + 8))(v13, v47);
          *(v3 + 116) = 257;
        }

        else
        {
          v34 = v59;
          v35 = v60;
          if (v33 == 997)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v42 = __swift_project_value_buffer(v34, qword_28140BD10);
            swift_beginAccess();
            (*(v35 + 16))(v16, v42, v34);
            v43 = sub_22B36050C();
            v44 = sub_22B360D2C();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              _os_log_impl(&dword_22B116000, v43, v44, "Token Error Inducer. 1 hour cktoken expiration", v45, 2u);
              MEMORY[0x23188F650](v45, -1, -1);
              v46 = v29;
            }

            else
            {
              v46 = v43;
              v43 = v29;
            }

            (*(v35 + 8))(v16, v34);
            *(v3 + 117) = 1;
          }

          else if (v33 == 996)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v36 = __swift_project_value_buffer(v34, qword_28140BD10);
            swift_beginAccess();
            (*(v35 + 16))(v19, v36, v34);
            v37 = sub_22B36050C();
            v38 = sub_22B360D2C();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              *v39 = 0;
              _os_log_impl(&dword_22B116000, v37, v38, "Token Error Inducer. Aggressive polling with 30 min fetch, token valid", v39, 2u);
              MEMORY[0x23188F650](v39, -1, -1);
              v40 = v29;
            }

            else
            {
              v40 = v37;
              v37 = v29;
            }

            (*(v35 + 8))(v19, v34);
            *(v3 + 116) = 1;
          }

          else
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v54 = __swift_project_value_buffer(v34, qword_28140BD10);
            swift_beginAccess();
            (*(v35 + 16))(v10, v54, v34);
            v55 = sub_22B36050C();
            v56 = sub_22B360D2C();
            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&dword_22B116000, v55, v56, "Skipping error inducer setup", v57, 2u);
              MEMORY[0x23188F650](v57, -1, -1);
            }

            else
            {
            }

            (*(v35 + 8))(v10, v34);
          }
        }
      }

      else
      {
      }
    }
  }

  return v3;
}

uint64_t sub_22B2E7500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B2E23DC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_45Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B2E7614(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B124D88;

  return sub_22B2E26F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B2E7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22B35D91C();
  v11 = result;
  if (result)
  {
    result = sub_22B35D94C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22B35D93C();
  sub_22B2E69B4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22B2E77BC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22B144B30(a3, a4);
          return sub_22B2E6BE4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22B2E7924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[72] = v8;
  v9[71] = v25;
  v9[70] = v24;
  v9[69] = a8;
  v9[68] = a7;
  v9[67] = a6;
  v9[66] = a5;
  v9[65] = a4;
  v9[63] = a2;
  v9[64] = a3;
  v9[62] = a1;
  v10 = sub_22B35FF9C();
  v9[73] = v10;
  v11 = *(v10 - 8);
  v9[74] = v11;
  v12 = *(v11 + 64) + 15;
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();
  v13 = sub_22B36008C();
  v9[77] = v13;
  v14 = *(v13 - 8);
  v9[78] = v14;
  v15 = *(v14 + 64) + 15;
  v9[79] = swift_task_alloc();
  v9[80] = swift_task_alloc();
  v16 = sub_22B36052C();
  v9[81] = v16;
  v17 = *(v16 - 8);
  v9[82] = v17;
  v18 = *(v17 + 64) + 15;
  v9[83] = swift_task_alloc();
  v9[84] = swift_task_alloc();
  v9[85] = swift_task_alloc();
  v9[86] = swift_task_alloc();
  v9[87] = swift_task_alloc();
  v9[88] = swift_task_alloc();
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v9[92] = swift_task_alloc();
  v19 = sub_22B35DE9C();
  v9[93] = v19;
  v20 = *(v19 - 8);
  v9[94] = v20;
  v21 = *(v20 + 64) + 15;
  v9[95] = swift_task_alloc();
  v9[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E7BB4, v8, 0);
}

uint64_t sub_22B2E7BB4()
{
  v55 = v0;
  v1 = *(v0 + 768);
  sub_22B35DE6C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  v10 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 776) = v10;
  swift_beginAccess();
  v11 = *(v5 + 16);
  *(v0 + 784) = v11;
  *(v0 + 792) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v10, v6);
  (*(v2 + 16))(v52, v9, v3);
  sub_22B144B30(v8, v7);
  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();
  sub_22B12F174(v8, v7);
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  v17 = *(v0 + 744);
  v18 = *(v0 + 736);
  v19 = *(v0 + 656);
  v20 = *(v0 + 648);
  if (v14)
  {
    v21 = *(v0 + 528);
    v53 = *(v0 + 736);
    v22 = *(v0 + 520);
    v51 = *(v0 + 648);
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v23 = 136446466;
    v24 = sub_22B35DC7C();
    v26 = sub_22B1A7B20(v24, v25, &v54);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578]);
    v27 = sub_22B36131C();
    v29 = v28;
    log = v12;
    v30 = v13;
    v31 = *(v16 + 8);
    v31(v15, v17);
    v32 = sub_22B1A7B20(v27, v29, &v54);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_22B116000, log, v30, "[Dropbox] Starting poll for IntervalBlocks with offset: %{public}s and date: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v50, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v33 = *(v19 + 8);
    v33(v53, v51);
  }

  else
  {

    v31 = *(v16 + 8);
    v31(v15, v17);
    v33 = *(v19 + 8);
    v33(v18, v20);
  }

  *(v0 + 808) = v31;
  *(v0 + 800) = v33;
  v34 = *(v0 + 608);
  v35 = *(v0 + 592);
  v36 = *(v0 + 584);
  *(v0 + 816) = sub_22B3602DC();
  *(v0 + 1096) = *MEMORY[0x277D18118];
  v37 = *(v35 + 104);
  *(v0 + 824) = v37;
  *(v0 + 832) = (v35 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v37(v34);
  v38 = *(MEMORY[0x277D18240] + 4);
  v39 = swift_task_alloc();
  *(v0 + 840) = v39;
  *v39 = v0;
  v39[1] = sub_22B2E7FA8;
  v40 = *(v0 + 640);
  v41 = *(v0 + 608);
  v42 = *(v0 + 536);
  v43 = *(v0 + 528);
  v44 = *(v0 + 520);
  v45 = *(v0 + 504);
  v46 = *(v0 + 512);
  v47 = *(v0 + 496);

  return MEMORY[0x282172608](v40, v47, v45, v46, v41, v44, v43, v42);
}

uint64_t sub_22B2E7FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *(*v1 + 608);
  v5 = *(*v1 + 592);
  v6 = *(*v1 + 584);
  v7 = *v1;
  v2[106] = v0;

  v8 = *(v5 + 8);
  v2[107] = v8;
  v2[108] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[72];
  if (v0)
  {
    v10 = sub_22B2EB7E8;
  }

  else
  {
    v10 = sub_22B2E8148;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2E8148()
{
  v52 = v0;
  v1 = *(v0 + 792);
  (*(v0 + 784))(*(v0 + 728), *(v0 + 776), *(v0 + 648));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  if (os_log_type_enabled(v2, v3))
  {
    v49 = *(v0 + 728);
    v50 = *(v0 + 800);
    v4 = *(v0 + 656);
    v48 = *(v0 + 648);
    v5 = *(v0 + 640);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    v8 = sub_22B36006C();
    v10 = v9;
    swift_endAccess();
    v11 = sub_22B35DC7C();
    v13 = v12;
    sub_22B12F174(v8, v10);
    v14 = sub_22B1A7B20(v11, v13, &v51);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Poll for IntervalBlocks responsed with offset: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23188F650](v7, -1, -1);
    MEMORY[0x23188F650](v6, -1, -1);

    v50(v49, v48);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 728);
    v17 = *(v0 + 656);
    v18 = *(v0 + 648);

    v15(v16, v18);
  }

  v19 = *(v0 + 640);
  swift_beginAccess();
  v20 = sub_22B36007C();
  swift_endAccess();
  if (v20 >> 62)
  {
    v21 = sub_22B36109C();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 872) = v21;
  v22 = *(v0 + 792);
  v23 = *(v0 + 784);
  v24 = *(v0 + 776);
  v25 = *(v0 + 720);
  v26 = *(v0 + 648);

  v23(v25, v24, v26);
  v27 = sub_22B36050C();
  v28 = sub_22B360D2C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = v21;
    _os_log_impl(&dword_22B116000, v27, v28, "[Dropbox] Received %ld records for IntervalBlock in this session", v29, 0xCu);
    MEMORY[0x23188F650](v29, -1, -1);
  }

  v30 = *(v0 + 800);
  v31 = *(v0 + 720);
  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  v34 = *(v0 + 640);

  *(v0 + 880) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v31, v33);
  swift_beginAccess();
  v35 = sub_22B36007C();
  swift_endAccess();
  if (v35 >> 62)
  {
    v43 = sub_22B36109C();

    if (v43)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36)
    {
LABEL_10:
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 640);
      *(v0 + 904) = qword_28140BCF8;
      swift_beginAccess();
      v38 = sub_22B36007C();
      *(v0 + 912) = v38;
      swift_endAccess();
      v39 = swift_task_alloc();
      *(v0 + 920) = v39;
      *v39 = v0;
      v39[1] = sub_22B2E893C;
      v40 = *(v0 + 568);
      v41 = *(v0 + 560);

      return sub_22B30C418(v38, v41, v40);
    }
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v44 = swift_task_alloc();
  *(v0 + 888) = v44;
  *v44 = v0;
  v44[1] = sub_22B2E8678;
  v45 = *(v0 + 768);
  v46 = *(v0 + 552);
  v47 = *(v0 + 544);

  return sub_22B178F4C(v47, v46, 0, 0xC000000000000000, v45);
}

uint64_t sub_22B2E8678()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = *(v2 + 576);
  if (v0)
  {
    v6 = sub_22B2EB958;
  }

  else
  {
    v6 = sub_22B2E87A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2E87A4()
{
  v1 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  v19 = *(v0 + 872);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  v10 = *(v0 + 632);
  v17 = *(v0 + 608);
  v18 = *(v0 + 600);
  (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

  v11 = *(v0 + 8);

  return v11(0, v19);
}

uint64_t sub_22B2E893C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *(*v2 + 912);
  v7 = *v2;
  *(v4 + 1100) = a1;
  *(v4 + 928) = v1;

  v8 = *(v3 + 576);
  if (v1)
  {
    v9 = sub_22B2E942C;
  }

  else
  {
    v9 = sub_22B2E8A90;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2E8A90()
{
  v121 = v0;
  v1 = *(v0 + 640);
  swift_beginAccess();
  v2 = sub_22B36005C();
  swift_endAccess();
  if (v2)
  {
    v3 = *(v0 + 640);
    swift_beginAccess();
    v4 = sub_22B36006C();
    v6 = v5;
    swift_endAccess();
    v7 = v6;
    v8 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v18 = *(v4 + 16);
        v19 = *(v4 + 24);
        sub_22B12F174(v4, v7);
        if (v18 == v19)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      sub_22B12F174(v4, v6);
    }

    else
    {
      if (!v8)
      {
        sub_22B12F174(v4, v6);
        if ((v6 & 0xFF000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      sub_22B12F174(v4, v6);
      if (v4 != v4 >> 32)
      {
LABEL_15:
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v20 = *(v0 + 640);
        swift_beginAccess();
        v21 = sub_22B36006C();
        v23 = v22;
        *(v0 + 936) = v21;
        *(v0 + 944) = v22;
        swift_endAccess();
        v24 = swift_task_alloc();
        *(v0 + 952) = v24;
        *v24 = v0;
        v24[1] = sub_22B2E95C0;
        v25 = *(v0 + 552);
        v26 = *(v0 + 512);
        v27 = *(v0 + 544);
        v28 = v21;
        v29 = v23;
LABEL_40:

        return sub_22B178F4C(v27, v25, v28, v29, v26);
      }
    }

LABEL_22:
    v32 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 712), *(v0 + 776), *(v0 + 648));
    v33 = sub_22B36050C();
    v34 = sub_22B360D1C();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 880);
    v37 = *(v0 + 808);
    v38 = *(v0 + 800);
    v117 = *(v0 + 768);
    v39 = *(v0 + 752);
    v40 = *(v0 + 744);
    v41 = *(v0 + 712);
    v42 = *(v0 + 648);
    if (v35)
    {
      v114 = *(v0 + 808);
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22B116000, v33, v34, "[Dropbox] Error: Response indicates more to come, however offset is empty", v43, 2u);
      MEMORY[0x23188F650](v43, -1, -1);

      v38(v41, v42);
      v114(v117, v40);
    }

    else
    {

      v38(v41, v42);
      v37(v117, v40);
    }

    v118 = *(v0 + 1100);
    v115 = *(v0 + 872);
    goto LABEL_26;
  }

  v9 = *(v0 + 640);
  swift_beginAccess();
  v10 = sub_22B36005C();
  swift_endAccess();
  v11 = *(v0 + 1100);
  v12 = *(v0 + 872);
  if ((v10 & 1) == 0)
  {
    goto LABEL_34;
  }

  *(v0 + 1101) = v11;
  *(v0 + 968) = v12;
  v13 = *(v0 + 640);
  swift_beginAccess();
  v14 = sub_22B36006C();
  v16 = v15;
  swift_endAccess();
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v30 = *(v14 + 16);
      v31 = *(v14 + 24);
      sub_22B12F174(v14, v16);
      if (v30 == v31)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    sub_22B12F174(v14, v16);
LABEL_34:
    *(v0 + 1072) = v12;
    *(v0 + 1103) = v11;
    v68 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v69 = sub_22B36050C();
    v70 = sub_22B360D2C();
    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 800);
    v73 = *(v0 + 664);
    v74 = *(v0 + 648);
    if (v71)
    {
      v119 = *(v0 + 880);
      v75 = *(v0 + 640);
      v116 = *(v0 + 664);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v120 = v77;
      *v76 = 136446210;
      swift_beginAccess();
      v78 = sub_22B36006C();
      v80 = v79;
      swift_endAccess();
      v81 = sub_22B35DC7C();
      v113 = v72;
      v83 = v82;
      sub_22B12F174(v78, v80);
      v84 = sub_22B1A7B20(v81, v83, &v120);

      *(v76 + 4) = v84;
      _os_log_impl(&dword_22B116000, v69, v70, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x23188F650](v77, -1, -1);
      MEMORY[0x23188F650](v76, -1, -1);

      v113(v116, v74);
    }

    else
    {

      v72(v73, v74);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v85 = swift_task_alloc();
    *(v0 + 1080) = v85;
    *v85 = v0;
    v85[1] = sub_22B2EB51C;
    v26 = *(v0 + 768);
    v25 = *(v0 + 552);
    v27 = *(v0 + 544);
    v28 = 0;
    v29 = 0xC000000000000000;
    goto LABEL_40;
  }

  if (v17)
  {
    sub_22B12F174(v14, v16);
    if (v14 != v14 >> 32)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  sub_22B12F174(v14, v16);
  if ((v16 & 0xFF000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if (sub_22B360BFC())
  {
    v115 = v12;
    v118 = v11;
    v55 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 704), *(v0 + 776), *(v0 + 648));
    v56 = sub_22B36050C();
    v57 = sub_22B360D1C();
    v58 = os_log_type_enabled(v56, v57);
    v112 = *(v0 + 880);
    v59 = *(v0 + 808);
    v60 = *(v0 + 800);
    v61 = *(v0 + 768);
    v62 = *(v0 + 752);
    v63 = *(v0 + 744);
    v64 = *(v0 + 704);
    v65 = *(v0 + 648);
    if (v58)
    {
      v110 = *(v0 + 768);
      v66 = swift_slowAlloc();
      v108 = v59;
      v67 = swift_slowAlloc();
      v120 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_22B1A7B20(0xD000000000000066, 0x800000022B36DA80, &v120);
      *(v66 + 12) = 2048;
      *(v66 + 14) = 503;
      _os_log_impl(&dword_22B116000, v56, v57, "[Dropbox] Task is cancelled at marker %s:%ld", v66, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x23188F650](v67, -1, -1);
      MEMORY[0x23188F650](v66, -1, -1);

      v60(v64, v65);
      v108(v110, v63);
    }

    else
    {

      v60(v64, v65);
      v59(v61, v63);
    }

LABEL_26:
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    v46 = *(v0 + 736);
    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 712);
    v50 = *(v0 + 704);
    v51 = *(v0 + 696);
    v104 = *(v0 + 688);
    v105 = *(v0 + 680);
    v106 = *(v0 + 672);
    v107 = *(v0 + 664);
    v52 = *(v0 + 632);
    v109 = *(v0 + 608);
    v111 = *(v0 + 600);
    (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

    v53 = *(v0 + 8);

    return v53(v118, v115);
  }

  v86 = *(v0 + 832);
  v87 = *(v0 + 824);
  v88 = *(v0 + 1096);
  v89 = *(v0 + 640);
  v90 = *(v0 + 600);
  v91 = *(v0 + 584);
  swift_beginAccess();
  v92 = sub_22B36006C();
  v94 = v93;
  *(v0 + 976) = v92;
  *(v0 + 984) = v93;
  swift_endAccess();
  v87(v90, v88, v91);
  v95 = *(MEMORY[0x277D18240] + 4);
  v96 = swift_task_alloc();
  *(v0 + 992) = v96;
  *v96 = v0;
  v96[1] = sub_22B2E9E2C;
  v97 = *(v0 + 816);
  v98 = *(v0 + 632);
  v99 = *(v0 + 600);
  v100 = *(v0 + 536);
  v101 = *(v0 + 504);
  v102 = *(v0 + 512);
  v103 = *(v0 + 496);

  return MEMORY[0x282172608](v98, v103, v101, v102, v99, v92, v94, v100);
}

uint64_t sub_22B2E942C()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);
  v23 = *(v0 + 928);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  v19 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_22B2E95C0()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *(*v1 + 944);
  v5 = *(*v1 + 936);
  v6 = *v1;
  *(*v1 + 960) = v0;

  sub_22B12F174(v5, v4);
  v7 = *(v2 + 576);
  if (v0)
  {
    v8 = sub_22B2EBAEC;
  }

  else
  {
    v8 = sub_22B2E9728;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2E9728()
{
  v88 = v0;
  v1 = *(v0 + 640);
  swift_beginAccess();
  LOBYTE(v1) = sub_22B36005C();
  swift_endAccess();
  if ((v1 & 1) == 0)
  {
    LOBYTE(v2) = *(v0 + 1100);
    v3 = *(v0 + 872);
    goto LABEL_7;
  }

  v2 = *(v0 + 1100);
  v3 = *(v0 + 872);
  *(v0 + 1101) = v2;
  *(v0 + 968) = v3;
  v4 = *(v0 + 640);
  swift_beginAccess();
  v5 = sub_22B36006C();
  v7 = v6;
  swift_endAccess();
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v32 = *(v5 + 16);
      v33 = *(v5 + 24);
      sub_22B12F174(v5, v8);
      if (v32 != v33)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_22B12F174(v5, v7);
    }

LABEL_7:
    *(v0 + 1072) = v3;
    *(v0 + 1103) = v2;
    v10 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 800);
    v15 = *(v0 + 664);
    v16 = *(v0 + 648);
    if (v13)
    {
      v84 = *(v0 + 880);
      v17 = *(v0 + 640);
      v81 = *(v0 + 664);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v87 = v19;
      *v18 = 136446210;
      swift_beginAccess();
      v20 = sub_22B36006C();
      v22 = v21;
      swift_endAccess();
      v23 = sub_22B35DC7C();
      v79 = v14;
      v25 = v24;
      sub_22B12F174(v20, v22);
      v26 = sub_22B1A7B20(v23, v25, &v87);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_22B116000, v11, v12, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v79(v81, v16);
    }

    else
    {

      v14(v15, v16);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v27 = swift_task_alloc();
    *(v0 + 1080) = v27;
    *v27 = v0;
    v27[1] = sub_22B2EB51C;
    v28 = *(v0 + 768);
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);

    return sub_22B178F4C(v30, v29, 0, 0xC000000000000000, v28);
  }

  if (v9)
  {
    sub_22B12F174(v5, v7);
    if (v5 != v5 >> 32)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  sub_22B12F174(v5, v7);
  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  if (sub_22B360BFC())
  {
    v34 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 704), *(v0 + 776), *(v0 + 648));
    v35 = sub_22B36050C();
    v36 = sub_22B360D1C();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 808);
    v39 = *(v0 + 800);
    v40 = *(v0 + 768);
    v80 = *(v0 + 752);
    v82 = *(v0 + 880);
    v85 = *(v0 + 744);
    v41 = *(v0 + 704);
    v42 = *(v0 + 648);
    if (v37)
    {
      v77 = *(v0 + 768);
      v43 = swift_slowAlloc();
      v75 = v38;
      v44 = swift_slowAlloc();
      v87 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_22B1A7B20(0xD000000000000066, 0x800000022B36DA80, &v87);
      *(v43 + 12) = 2048;
      *(v43 + 14) = 503;
      _os_log_impl(&dword_22B116000, v35, v36, "[Dropbox] Task is cancelled at marker %s:%ld", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23188F650](v44, -1, -1);
      MEMORY[0x23188F650](v43, -1, -1);

      v39(v41, v42);
      v75(v77, v85);
    }

    else
    {

      v39(v41, v42);
      v38(v40, v85);
    }

    v63 = *(v0 + 768);
    v64 = *(v0 + 760);
    v65 = *(v0 + 736);
    v66 = *(v0 + 728);
    v67 = *(v0 + 720);
    v68 = *(v0 + 712);
    v71 = *(v0 + 704);
    v72 = *(v0 + 696);
    v73 = *(v0 + 688);
    v74 = *(v0 + 680);
    v76 = *(v0 + 672);
    v78 = *(v0 + 664);
    v69 = *(v0 + 632);
    v83 = *(v0 + 608);
    v86 = *(v0 + 600);
    (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

    v70 = *(v0 + 8);

    return v70(v2, v3);
  }

  else
  {
    v45 = *(v0 + 832);
    v46 = *(v0 + 824);
    v47 = *(v0 + 1096);
    v48 = *(v0 + 640);
    v49 = *(v0 + 600);
    v50 = *(v0 + 584);
    swift_beginAccess();
    v51 = sub_22B36006C();
    v53 = v52;
    *(v0 + 976) = v51;
    *(v0 + 984) = v52;
    swift_endAccess();
    v46(v49, v47, v50);
    v54 = *(MEMORY[0x277D18240] + 4);
    v55 = swift_task_alloc();
    *(v0 + 992) = v55;
    *v55 = v0;
    v55[1] = sub_22B2E9E2C;
    v56 = *(v0 + 816);
    v57 = *(v0 + 632);
    v58 = *(v0 + 600);
    v59 = *(v0 + 536);
    v60 = *(v0 + 504);
    v61 = *(v0 + 512);
    v62 = *(v0 + 496);

    return MEMORY[0x282172608](v57, v62, v60, v61, v58, v51, v53, v59);
  }
}

uint64_t sub_22B2E9E2C()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v4 = *v1;
  *(*v1 + 1000) = v0;

  v5 = v2[108];
  v6 = v2[107];
  v7 = v2[75];
  v8 = v2[73];
  v9 = v2[72];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_22B2EBC80;
  }

  else
  {
    v10 = sub_22B2E9FB0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2E9FB0()
{
  v51 = v0;
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[87];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  swift_beginAccess();
  (*(v8 + 40))(v6, v7, v9);
  v2(v4, v3, v5);
  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();
  if (os_log_type_enabled(v10, v11))
  {
    v48 = v0[100];
    v49 = v0[110];
    v47 = v0[87];
    v12 = v0[81];
    v13 = v0[80];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50 = v15;
    *v14 = 136315138;
    swift_beginAccess();
    v16 = sub_22B36006C();
    v18 = v17;
    swift_endAccess();
    v19 = sub_22B35DC7C();
    v21 = v20;
    sub_22B12F174(v16, v18);
    v22 = sub_22B1A7B20(v19, v21, &v50);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox] Poll for IntervalBlocks responsed with offset: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v48(v47, v12);
  }

  else
  {
    v23 = v0[110];
    v24 = v0[100];
    v25 = v0[87];
    v26 = v0[81];

    v24(v25, v26);
  }

  v27 = v0[80];
  swift_beginAccess();
  v28 = sub_22B36007C();
  swift_endAccess();
  if (v28 >> 62)
  {
    v29 = sub_22B36109C();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v0[121];

  v32 = v30 + v29;
  v0[126] = v30 + v29;
  if (__OFADD__(v30, v29))
  {
    __break(1u);
  }

  else
  {
    v33 = v0[99];
    (v0[98])(v0[86], v0[97], v0[81]);
    v34 = sub_22B36050C();
    v35 = sub_22B360D2C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = v32;
      _os_log_impl(&dword_22B116000, v34, v35, "[Dropbox] Received %{public}ld records for IntervalBlock in this session", v36, 0xCu);
      MEMORY[0x23188F650](v36, -1, -1);
    }

    v37 = v0[110];
    v38 = v0[100];
    v39 = v0[86];
    v40 = v0[81];
    v41 = v0[80];

    v38(v39, v40);
    swift_beginAccess();
    v42 = sub_22B36007C();
    v0[127] = v42;
    swift_endAccess();
    v43 = swift_task_alloc();
    v0[128] = v43;
    *v43 = v0;
    v43[1] = sub_22B2EA398;
    v44 = v0[113];
    v45 = v0[71];
    v46 = v0[70];

    return sub_22B30C418(v42, v46, v45);
  }

  return result;
}

uint64_t sub_22B2EA398(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1024);
  v6 = *v2;
  *(v4 + 1032) = v1;

  v7 = *(v4 + 1016);
  v8 = *(v4 + 576);

  if (v1)
  {
    v9 = sub_22B2EAAF8;
  }

  else
  {
    *(v4 + 1102) = a1 & 1;
    v9 = sub_22B2EA4F4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2EA4F4()
{
  v69 = v0;
  v1 = *(v0 + 1102);
  v2 = *(v0 + 1101);
  v3 = *(v0 + 640);
  swift_beginAccess();
  LOBYTE(v3) = sub_22B36005C();
  swift_endAccess();
  if ((v3 & 1) == 0)
  {
    sub_22B12F174(*(v0 + 976), *(v0 + 984));
LABEL_19:
    *(v0 + 1072) = *(v0 + 1008);
    *(v0 + 1103) = (v2 | v1) & 1;
    v35 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v36 = sub_22B36050C();
    v37 = sub_22B360D2C();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 800);
    v40 = *(v0 + 664);
    v41 = *(v0 + 648);
    if (v38)
    {
      v67 = *(v0 + 880);
      v42 = *(v0 + 640);
      v65 = *(v0 + 664);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v68 = v44;
      *v43 = 136446210;
      swift_beginAccess();
      v45 = sub_22B36006C();
      v47 = v46;
      swift_endAccess();
      v48 = sub_22B35DC7C();
      v64 = v39;
      v50 = v49;
      sub_22B12F174(v45, v47);
      v51 = sub_22B1A7B20(v48, v50, &v68);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_22B116000, v36, v37, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23188F650](v44, -1, -1);
      MEMORY[0x23188F650](v43, -1, -1);

      v64(v65, v41);
    }

    else
    {

      v39(v40, v41);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v52 = swift_task_alloc();
    *(v0 + 1080) = v52;
    *v52 = v0;
    v52[1] = sub_22B2EB51C;
    v53 = *(v0 + 768);
    v54 = *(v0 + 552);
    v55 = *(v0 + 544);
    v56 = 0;
    v57 = 0xC000000000000000;
    goto LABEL_25;
  }

  v4 = *(v0 + 640);
  swift_beginAccess();
  v5 = sub_22B36006C();
  v7 = v6;
  swift_endAccess();
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      sub_22B12F174(v5, v7);
      goto LABEL_15;
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_22B12F174(v5, v8);
    if (v10 == v11)
    {
LABEL_15:
      v31 = *(v0 + 792);
      (*(v0 + 784))(*(v0 + 680), *(v0 + 776), *(v0 + 648));
      v19 = sub_22B36050C();
      v20 = sub_22B360D1C();
      v32 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 984);
      v23 = *(v0 + 976);
      v33 = *(v0 + 880);
      v66 = *(v0 + 800);
      v25 = *(v0 + 680);
      v26 = *(v0 + 648);
      if (v32)
      {
        v27 = v2;
        v28 = v1;
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "[Dropbox] Error: Response indicates more to come, however offset is empty";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v9)
  {
    sub_22B12F174(v5, v7);
    if (v5 == v5 >> 32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_22B12F174(v5, v7);
    if ((v7 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v12 = *(v0 + 984);
  v13 = *(v0 + 976);
  v14 = *(v0 + 640);
  swift_beginAccess();
  v15 = sub_22B36006C();
  v17 = v16;
  swift_endAccess();
  LOBYTE(v12) = sub_22B2E77BC(v15, v17, v13, v12);
  sub_22B12F174(v15, v17);
  if (v12)
  {
    v18 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 672), *(v0 + 776), *(v0 + 648));
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 984);
    v23 = *(v0 + 976);
    v24 = *(v0 + 880);
    v66 = *(v0 + 800);
    v25 = *(v0 + 672);
    v26 = *(v0 + 648);
    if (v21)
    {
      v27 = v2;
      v28 = v1;
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "[Dropbox] Error: Response indicates more to come, however offset is same as previous";
LABEL_17:
      _os_log_impl(&dword_22B116000, v19, v20, v30, v29, 2u);
      v34 = v29;
      v1 = v28;
      v2 = v27;
      MEMORY[0x23188F650](v34, -1, -1);
      sub_22B12F174(v23, v22);

      v66(v25, v26);
      goto LABEL_19;
    }

LABEL_18:
    sub_22B12F174(v23, v22);

    v66(v25, v26);
    goto LABEL_19;
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v59 = *(v0 + 640);
  swift_beginAccess();
  v60 = sub_22B36006C();
  v62 = v61;
  *(v0 + 1040) = v60;
  *(v0 + 1048) = v61;
  swift_endAccess();
  v63 = swift_task_alloc();
  *(v0 + 1056) = v63;
  *v63 = v0;
  v63[1] = sub_22B2EACA0;
  v54 = *(v0 + 552);
  v53 = *(v0 + 512);
  v55 = *(v0 + 544);
  v56 = v60;
  v57 = v62;
LABEL_25:

  return sub_22B178F4C(v55, v54, v56, v57, v53);
}

uint64_t sub_22B2EAAF8()
{
  v1 = v0[101];
  v2 = v0[96];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[80];
  v6 = v0[78];
  v7 = v0[77];
  sub_22B12F174(v0[122], v0[123]);
  v1(v2, v4);
  (*(v6 + 8))(v5, v7);
  v26 = v0[129];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[85];
  v20 = v0[84];
  v21 = v0[83];
  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[76];
  v25 = v0[75];

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_22B2EACA0()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v4 = *v1;
  *(*v1 + 1064) = v0;

  v5 = v2[131];
  v6 = v2[130];
  v7 = v2[72];
  sub_22B12F174(v6, v5);
  if (v0)
  {
    v8 = sub_22B2EBE28;
  }

  else
  {
    v8 = sub_22B2EADFC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2EADFC()
{
  v88 = v0;
  v1 = *(v0 + 640);
  sub_22B12F174(*(v0 + 976), *(v0 + 984));
  swift_beginAccess();
  LOBYTE(v1) = sub_22B36005C();
  swift_endAccess();
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 1008);
    v3 = *(v0 + 1101) | *(v0 + 1102);
    goto LABEL_7;
  }

  v2 = *(v0 + 1008);
  v3 = *(v0 + 1101) | *(v0 + 1102);
  *(v0 + 1101) = v3 & 1;
  *(v0 + 968) = v2;
  v4 = *(v0 + 640);
  swift_beginAccess();
  v5 = sub_22B36006C();
  v7 = v6;
  swift_endAccess();
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      sub_22B12F174(v5, v7);
      goto LABEL_7;
    }

    v32 = *(v5 + 16);
    v33 = *(v5 + 24);
    sub_22B12F174(v5, v8);
    goto LABEL_18;
  }

  if (v9)
  {
    sub_22B12F174(v5, v7);
    v32 = v5;
    v33 = v5 >> 32;
LABEL_18:
    if (v32 != v33)
    {
      goto LABEL_19;
    }

LABEL_7:
    *(v0 + 1072) = v2;
    *(v0 + 1103) = v3 & 1;
    v10 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 800);
    v15 = *(v0 + 664);
    v16 = *(v0 + 648);
    if (v13)
    {
      v84 = *(v0 + 880);
      v17 = *(v0 + 640);
      v81 = *(v0 + 664);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v87 = v19;
      *v18 = 136446210;
      swift_beginAccess();
      v20 = sub_22B36006C();
      v22 = v21;
      swift_endAccess();
      v23 = sub_22B35DC7C();
      v79 = v14;
      v25 = v24;
      sub_22B12F174(v20, v22);
      v26 = sub_22B1A7B20(v23, v25, &v87);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_22B116000, v11, v12, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v79(v81, v16);
    }

    else
    {

      v14(v15, v16);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v27 = swift_task_alloc();
    *(v0 + 1080) = v27;
    *v27 = v0;
    v27[1] = sub_22B2EB51C;
    v28 = *(v0 + 768);
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);

    return sub_22B178F4C(v30, v29, 0, 0xC000000000000000, v28);
  }

  sub_22B12F174(v5, v7);
  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  if (sub_22B360BFC())
  {
    v34 = *(v0 + 792);
    (*(v0 + 784))(*(v0 + 704), *(v0 + 776), *(v0 + 648));
    v35 = sub_22B36050C();
    v36 = sub_22B360D1C();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 808);
    v39 = *(v0 + 800);
    v40 = *(v0 + 768);
    v80 = *(v0 + 752);
    v82 = *(v0 + 880);
    v85 = *(v0 + 744);
    v41 = *(v0 + 704);
    v42 = *(v0 + 648);
    if (v37)
    {
      v77 = *(v0 + 808);
      v43 = swift_slowAlloc();
      v75 = v40;
      v44 = swift_slowAlloc();
      v87 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_22B1A7B20(0xD000000000000066, 0x800000022B36DA80, &v87);
      *(v43 + 12) = 2048;
      *(v43 + 14) = 503;
      _os_log_impl(&dword_22B116000, v35, v36, "[Dropbox] Task is cancelled at marker %s:%ld", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23188F650](v44, -1, -1);
      MEMORY[0x23188F650](v43, -1, -1);

      v39(v41, v42);
      v77(v75, v85);
    }

    else
    {

      v39(v41, v42);
      v38(v40, v85);
    }

    v63 = *(v0 + 768);
    v64 = *(v0 + 760);
    v65 = *(v0 + 736);
    v66 = *(v0 + 728);
    v67 = *(v0 + 720);
    v68 = *(v0 + 712);
    v71 = *(v0 + 704);
    v72 = *(v0 + 696);
    v73 = *(v0 + 688);
    v74 = *(v0 + 680);
    v76 = *(v0 + 672);
    v78 = *(v0 + 664);
    v69 = *(v0 + 632);
    v83 = *(v0 + 608);
    v86 = *(v0 + 600);
    (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

    v70 = *(v0 + 8);

    return v70(v3 & 1, v2);
  }

  else
  {
    v45 = *(v0 + 832);
    v46 = *(v0 + 824);
    v47 = *(v0 + 1096);
    v48 = *(v0 + 640);
    v49 = *(v0 + 600);
    v50 = *(v0 + 584);
    swift_beginAccess();
    v51 = sub_22B36006C();
    v53 = v52;
    *(v0 + 976) = v51;
    *(v0 + 984) = v52;
    swift_endAccess();
    v46(v49, v47, v50);
    v54 = *(MEMORY[0x277D18240] + 4);
    v55 = swift_task_alloc();
    *(v0 + 992) = v55;
    *v55 = v0;
    v55[1] = sub_22B2E9E2C;
    v56 = *(v0 + 816);
    v57 = *(v0 + 632);
    v58 = *(v0 + 600);
    v59 = *(v0 + 536);
    v60 = *(v0 + 504);
    v61 = *(v0 + 512);
    v62 = *(v0 + 496);

    return MEMORY[0x282172608](v57, v62, v60, v61, v58, v51, v53, v59);
  }
}

uint64_t sub_22B2EB51C()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v4 = *v1;
  *(*v1 + 1088) = v0;

  v5 = *(v2 + 576);
  if (v0)
  {
    v6 = sub_22B2EBFD0;
  }

  else
  {
    v6 = sub_22B2EB648;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2EB648()
{
  v1 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  v20 = *(v0 + 1072);
  v19 = *(v0 + 1103);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  v10 = *(v0 + 632);
  v17 = *(v0 + 608);
  v18 = *(v0 + 600);
  (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

  v11 = *(v0 + 8);

  return v11(v19, v20);
}

uint64_t sub_22B2EB7E8()
{
  v1 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  v20 = *(v0 + 848);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 680);
  v14 = *(v0 + 672);
  v15 = *(v0 + 664);
  v16 = *(v0 + 640);
  v17 = *(v0 + 632);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_22B2EB958()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);
  v23 = *(v0 + 896);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  v19 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_22B2EBAEC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);
  v23 = *(v0 + 960);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  v19 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_22B2EBC80()
{
  v1 = v0[101];
  v2 = v0[96];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[80];
  v6 = v0[78];
  v7 = v0[77];
  sub_22B12F174(v0[122], v0[123]);
  v1(v2, v4);
  (*(v6 + 8))(v5, v7);
  v26 = v0[125];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[85];
  v20 = v0[84];
  v21 = v0[83];
  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[76];
  v25 = v0[75];

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_22B2EBE28()
{
  v1 = v0[101];
  v2 = v0[96];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[80];
  v6 = v0[78];
  v7 = v0[77];
  sub_22B12F174(v0[122], v0[123]);
  v1(v2, v4);
  (*(v6 + 8))(v5, v7);
  v26 = v0[133];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[85];
  v20 = v0[84];
  v21 = v0[83];
  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[76];
  v25 = v0[75];

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_22B2EBFD0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 752) + 8;
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);
  v23 = *(v0 + 1088);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  v19 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_22B2EC1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B2EC234(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22B36109C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_22B1F8128(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_22B36109C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_22B36109C();
  v2 = sub_22B32EEA4(v5, v6);
LABEL_10:

  return sub_22B1F8564(a1, v2);
}

uint64_t sub_22B2EC328(uint64_t a1, void *a2, uint64_t a3, int64_t a4)
{
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_35;
  }

  *&v48[0] = a2;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *&v46[0];
  *&v48[0] = *&v46[0];
  sub_22B2F24C0(&qword_281408620, type metadata accessor for CKError);
  sub_22B35DB5C();
  if (*&v46[0] == 2)
  {

LABEL_5:
    *&v48[0] = a2;
    v14 = a2;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v8 = *&v46[0];
    *&v48[0] = *&v46[0];
    v15 = sub_22B2F24C0(&qword_281408620, type metadata accessor for CKError);
    sub_22B35DB5C();
    if (*&v46[0] != 2 || (v16 = sub_22B3606BC()) == 0)
    {

      goto LABEL_35;
    }

    v13 = v16;
    v42 = v15;
    v43 = a4;
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v7 = v19 & *(v16 + 64);
    a4 = (v18 + 63) >> 6;

    v11 = 0;
    while (v7)
    {
LABEL_17:
      v21 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_22B2F2694(v13[6] + 40 * (v21 | (v11 << 6)), v48);
      v47 = v49;
      v46[0] = v48[0];
      v46[1] = v48[1];
      if (v13[2] && (v22 = sub_22B33B248(v46), (v23 & 1) != 0) && (v44 = *(v13[7] + 8 * v22), v24 = v44, (swift_dynamicCast() & 1) != 0))
      {
        v41 = v8;
        v25 = v45;
        v44 = v45;
        sub_22B35DB5C();
        if (v45 == 112)
        {
          v26 = sub_22B3610DC();
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (v27)
          {
            v40 = v27;
            swift_beginAccess();
            v39 = v26;
            MEMORY[0x23188E350]();
            if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v38 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22B360A7C();
            }

            sub_22B360A9C();
            swift_endAccess();
          }

          else
          {
          }

          sub_22B1B0560(v46);
          v8 = v41;
        }

        else
        {
          sub_22B1B0560(v46);

          v8 = v41;
        }
      }

      else
      {
        sub_22B1B0560(v46);
      }
    }

    while (1)
    {
      v20 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20 >= a4)
      {

        goto LABEL_35;
      }

      v7 = *(v17 + 8 * v20);
      ++v11;
      if (v7)
      {
        v11 = v20;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  if (qword_28140A0C8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v11, v28, v7);
  v29 = v13;
  v30 = sub_22B36050C();
  v31 = sub_22B360D1C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = a4;
    v34 = v33;
    *v32 = 138412290;
    v35 = v29;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_22B116000, v30, v31, "[IdentityRepair] An error occurred fetching zones: %@", v32, 0xCu);
    sub_22B12F10C(v34);
    MEMORY[0x23188F650](v34, -1, -1);
    MEMORY[0x23188F650](v32, -1, -1);
  }

  else
  {
    v35 = v30;
    v30 = v29;
  }

  (*(v8 + 8))(v11, v7);
LABEL_35:
  swift_beginAccess();
  v44 = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  return sub_22B360AEC();
}

uint64_t sub_22B2EC8F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    sub_22B202100();
    v4 = sub_22B3606EC();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_22B2EC9C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = [objc_opt_self() fetchAllRecordZonesOperation];
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B2EC8F8;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  [v14 setFetchRecordZonesCompletionBlock_];
  _Block_release(v17);
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v18 = &selRef_privateCloudDatabase;
  if (v21)
  {
    v18 = &selRef_sharedCloudDatabase;
  }

  v19 = [*(qword_28140BCF0 + 16) *v18];
  [v19 addOperation_];
}

uint64_t sub_22B2ECC54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v26[5] = a2, v13 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60), type metadata accessor for CKError(0), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v26[1];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v12, v15, v8);
    v16 = v14;
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26[0] = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_22B116000, v17, v18, "[IdentityRepair] An error occurred fetching zones: %@", v20, 0xCu);
      sub_22B12F10C(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    else
    {
      v22 = v17;
      v17 = v16;
    }

    (*(v9 + 8))(v12, v8);
  }

  else if (a1)
  {
    swift_beginAccess();

    sub_22B3551B4(v24);
    swift_endAccess();
  }

  swift_beginAccess();
  v26[4] = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  return sub_22B360AEC();
}

uint64_t sub_22B2ECF48(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22B2ED020(void *a1, char a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  if (a2)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v11, v12, v4);
    v13 = a1;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    sub_22B1CD010(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[1] = a1;
      v28 = v17;
      *v16 = 136315138;
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v19 = sub_22B3608BC();
      v21 = sub_22B1A7B20(v19, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22B116000, v14, v15, "[IdentityRepair]  Error deleting share - %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v8, v22, v4);
    v23 = sub_22B36050C();
    v24 = sub_22B360D1C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B116000, v23, v24, "[IdentityRepair]  Deleted share", v25, 2u);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  return sub_22B360AEC();
}

void sub_22B2ED39C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_22B128014(0, &qword_27D8BAD40, 0x277CBC4A0);
  v9 = *a2;

  sub_22B1FB40C(v10);

  v11 = sub_22B360EEC();
  sub_22B333320();
  [v11 setMarkAsParticipantNeedsNewInvitationToken_];
  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v8, v4);
  sub_22B360EDC();
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v14 = [*(qword_28140BCF0 + 16) sharedCloudDatabase];
  [v14 addOperation_];
}

uint64_t sub_22B2ED5A8(void *a1, char a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-1] - v10;
  if (a2)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v11, v12, v4);
    v13 = a1;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    sub_22B1CD010(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = a1;
      v37[0] = v17;
      *v16 = 136315138;
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v19 = sub_22B3608BC();
      v21 = sub_22B1A7B20(v19, v20, v37);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22B116000, v14, v15, "[IdentityRepair]  Error deleting share - %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v22 = [objc_opt_self() processInfo];
    v23 = [v22 processName];

    v24 = sub_22B36084C();
    v26 = v25;

    LOWORD(v37[0]) = 259;
    v27 = 15;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22B116000, v29, v30, "[IdentityRepair]  Deleted share", v31, 2u);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v32 = [objc_opt_self() processInfo];
    v33 = [v32 processName];

    v24 = sub_22B36084C();
    v26 = v34;

    LOWORD(v37[0]) = 259;
    v27 = 17;
  }

  BYTE2(v37[0]) = v27;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = 0;
  static AutoBugCaptureManager.sendIssue(_:)(v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  return sub_22B360AEC();
}

uint64_t sub_22B2EDA3C(uint64_t a1)
{
  v1[22] = a1;
  v2 = sub_22B36052C();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2EDAFC, 0, 0);
}

uint64_t sub_22B2EDAFC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_22B116000, v7, v8, "[IdentityRepair] Fetch share for %@", v10, 0xCu);
    sub_22B12F10C(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[22];
  v15 = v0[23];

  (*(v14 + 8))(v13, v15);
  sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
  v17 = *MEMORY[0x277CBC020];
  sub_22B36084C();
  v18 = v16;
  v19 = sub_22B360CBC();
  v0[26] = v19;
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v20 = [*(qword_28140BCF0 + 16) sharedCloudDatabase];
  v0[27] = v20;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_22B2EDE14;
  v21 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD38, &unk_22B366DF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B2ECF48;
  v0[13] = &block_descriptor_13_0;
  v0[14] = v21;
  [v20 fetchRecordWithID:v19 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B2EDE14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_22B2EDF98;
  }

  else
  {
    v3 = sub_22B2EDF24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B2EDF24()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 168);
  v3 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_22B2EDF98()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_willThrow();

  v4 = v0[25];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_22B2EE02C()
{
  v1 = sub_22B36052C();
  v0[14] = v1;
  v2 = *(v1 - 8);
  v0[15] = v2;
  v3 = *(v2 + 64) + 15;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2EE124, 0, 0);
}

uint64_t sub_22B2EE124()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[22] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[23] = v5;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Shared Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[21];
  v10 = v0[14];
  v11 = v0[15];

  v12 = *(v11 + 8);
  v0[25] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *(v13 + 16) = 1;
  v14 = *(MEMORY[0x277D859E0] + 4);
  v15 = swift_task_alloc();
  v0[27] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v15 = v0;
  v15[1] = sub_22B2EE344;

  return MEMORY[0x2822007B8](v0 + 10, 0, 0, 0xD00000000000001DLL, 0x800000022B36DC40, sub_22B2F45C0, v13, v16);
}

uint64_t sub_22B2EE344()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2EE45C, 0, 0);
}

uint64_t sub_22B2EE45C()
{
  v1 = sub_22B31A8A4(v0[10]);
  v0[28] = v1;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[14];
  if (v2)
  {
    v4(v0[19], v0[22], v0[14]);

    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_22B36109C();
      }

      else
      {
        v10 = *(v1 + 16);
      }

      *(v9 + 4) = v10;

      _os_log_impl(&dword_22B116000, v7, v8, "[IdentityRepair] %ld shared zones", v9, 0xCu);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    else
    {
    }

    v28 = v0[25];
    v29 = v0[19];
    v30 = v0[14];
    v0[29] = (v0[15] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v29, v30);
    v0[11] = MEMORY[0x277D84FA0];
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v31 = qword_28140BDD0;
    v0[30] = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B2EE778, v31, 0);
  }

  else
  {
    v11 = v0[20];

    v4(v11, v5, v6);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[25];
    v16 = v0[20];
    v17 = v0[14];
    v18 = v0[15];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[IdentityRepair] No shared zones", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v15(v16, v17);
    v21 = v0[20];
    v20 = v0[21];
    v23 = v0[18];
    v22 = v0[19];
    v25 = v0[16];
    v24 = v0[17];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_22B2EE778()
{
  v1 = v0[30];
  sub_22B143A3C(1);
  v0[31] = v2;
  v0[32] = 0;

  return MEMORY[0x2822009F8](sub_22B2EE808, 0, 0);
}

uint64_t sub_22B2EE808()
{
  v80 = (v0 + 88);
  v1 = *(v0 + 248);
  v81 = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_72:
    v3 = sub_22B36109C();
    v4 = *(v0 + 248);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 248);
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x277D84F90];
  v1 = &off_2786FB000;
  v79 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x23188EAC0](v5, *(v78 + 248));
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_68;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v0 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v11 = [v9 recordID];

    ++v5;
    if (v11)
    {
      MEMORY[0x23188E350]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v8 = v81;
      v5 = v0;
    }
  }

  v13 = sub_22B31A8D4(v8);

  v14 = 0;
  *v80 = v13;
  v81 = MEMORY[0x277D84F90];
  while (v3 != v14)
  {
    if (v6)
    {
      v15 = MEMORY[0x23188EAC0](v14, *(v78 + 248));
    }

    else
    {
      if (v14 >= *(v2 + 16))
      {
        goto LABEL_70;
      }

      v15 = *(v7 + 8 * v14);
    }

    v16 = v15;
    v0 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_69;
    }

    v17 = [v15 recordID];
    v18 = [v17 zoneID];

    ++v14;
    if (v18)
    {
      MEMORY[0x23188E350]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v79 = v81;
      v14 = v0;
    }
  }

  v2 = v78;
  v20 = *(v78 + 248);

  v21 = sub_22B31A8A4(v79);

  v22 = *(v78 + 224);

  v23 = sub_22B2EC234(v21, v22);

  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*(v23 + 16))
    {
      v26 = 0;
      v31 = -1;
      v32 = -1 << *(v23 + 32);
      v24 = v23 + 56;
      if (-v32 < 64)
      {
        v31 = ~(-1 << -v32);
      }

      v1 = v31 & *(v23 + 56);
      v27 = (v78 + 280);
      *(v78 + 272) = v24;
      *(v78 + 280) = ~v32;
      v28 = (v78 + 272);
      v30 = 63 - v32;
      v29 = (v78 + 264);
      *(v78 + 264) = v23;
      goto LABEL_33;
    }

LABEL_43:

    goto LABEL_47;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_43;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  sub_22B360C7C();
  v23 = *(v78 + 16);
  v24 = *(v78 + 24);
  v25 = *(v78 + 32);
  v26 = *(v78 + 40);
  v1 = *(v78 + 48);
  v27 = (v78 + 280);
  *(v78 + 272) = v24;
  *(v78 + 280) = v25;
  v28 = (v78 + 272);
  v29 = (v78 + 264);
  *(v78 + 264) = v23;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v30 = v25 + 64;
LABEL_33:
    v33 = v1;
    v0 = v26;
    if (!v1)
    {
      v34 = v30 >> 6;
      v35 = v26;
      do
      {
        v0 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_71;
        }

        if (v0 >= v34)
        {
          goto LABEL_46;
        }

        v33 = *(v24 + 8 * v0);
        ++v35;
      }

      while (!v33);
    }

    v36 = (v33 - 1) & v33;
    v37 = *(*(v23 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v33)))));
LABEL_39:
    *(v78 + 296) = v0;
    *(v78 + 304) = v36;
    *(v78 + 288) = v37;
    if (v37)
    {
      v38 = swift_task_alloc();
      *(v78 + 312) = v38;
      *v38 = v78;
      v38[1] = sub_22B2EF010;

      return sub_22B2EDA3C(v37);
    }

    goto LABEL_46;
  }

  v40 = sub_22B3610BC();
  if (v40)
  {
    *(v78 + 104) = v40;
    swift_dynamicCast();
    v37 = *(v78 + 96);
    v0 = v26;
    v36 = v1;
    goto LABEL_39;
  }

LABEL_46:
  v41 = *v27;
  v42 = *v28;
  v43 = *v29;
  sub_22B1A20B8();
LABEL_47:
  v44 = *v80;
  if ((*v80 & 0xC000000000000001) != 0)
  {
    if (v44 < 0)
    {
      v45 = *v80;
    }

    v46 = sub_22B36109C();
    v47 = *(v78 + 224);
    if (v46)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v47 = *(v78 + 224);
    if (*(v44 + 16))
    {
LABEL_51:

LABEL_52:
      v48 = *(v78 + 192);
      (*(v78 + 184))(*(v78 + 136), *(v78 + 176), *(v78 + 112));
      v49 = sub_22B36050C();
      v50 = sub_22B360D1C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_22B116000, v49, v50, "[IdentityRepair] Cleaning up shares", v51, 2u);
        MEMORY[0x23188F650](v51, -1, -1);
      }

      v52 = *(v78 + 232);
      v53 = *(v78 + 200);
      v54 = *(v78 + 136);
      v55 = *(v78 + 112);

      v53(v54, v55);
      v56 = swift_task_alloc();
      *(v78 + 328) = v56;
      *(v56 + 16) = v80;
      v57 = *(MEMORY[0x277D859E0] + 4);
      v58 = swift_task_alloc();
      *(v78 + 336) = v58;
      *v58 = v78;
      v58[1] = sub_22B2EF600;
      v59 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822007B8](v58, 0, 0, 0xD000000000000024, 0x800000022B36DC90, sub_22B2F0F8C, v56, v59);
    }
  }

  if ((v47 & 0xC000000000000001) != 0)
  {
    v60 = sub_22B36109C();
    v61 = *(v78 + 224);

    if (!v60)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v62 = *(v47 + 16);

    if (!v62)
    {
      goto LABEL_52;
    }
  }

  v63 = *(v78 + 192);
  (*(v78 + 184))(*(v78 + 144), *(v78 + 176), *(v78 + 112));
  v64 = sub_22B36050C();
  v65 = sub_22B360D1C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_22B116000, v64, v65, "[IdentityRepair] Failed to find share in cd or ck", v66, 2u);
    MEMORY[0x23188F650](v66, -1, -1);
  }

  v67 = *(v78 + 232);
  v68 = *(v78 + 200);
  v69 = *(v78 + 144);
  v70 = *(v78 + 112);

  v68(v69, v70);

  v72 = *(v78 + 160);
  v71 = *(v78 + 168);
  v74 = *(v78 + 144);
  v73 = *(v78 + 152);
  v76 = *(v78 + 128);
  v75 = *(v78 + 136);

  v77 = *(v78 + 8);

  return v77();
}

uint64_t sub_22B2EF010(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22B2EF110, 0, 0);
}

uint64_t sub_22B2EF110()
{
  v58 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  if (v1)
  {
    sub_22B32E36C(&v57, [*(v0 + 320) recordID]);
  }

  else
  {
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 264);
  if (v13 < 0)
  {
    v19 = sub_22B3610BC();
    if (!v19)
    {
      goto LABEL_17;
    }

    *(v0 + 104) = v19;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    swift_dynamicCast();
    v18 = *(v0 + 96);
    v15 = v11;
    v17 = v12;
  }

  else
  {
    v14 = *(v0 + 304);
    v15 = *(v0 + 296);
    if (!v12)
    {
      v16 = *(v0 + 296);
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= ((*(v0 + 280) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v14 = *(*(v0 + 272) + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }

LABEL_10:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v13 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  }

  *(v0 + 296) = v15;
  *(v0 + 304) = v17;
  *(v0 + 288) = v18;
  if (v18)
  {
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_22B2EF010;

    return sub_22B2EDA3C(v18);
  }

LABEL_17:
  v22 = *(v0 + 272);
  v23 = *(v0 + 280);
  v24 = *(v0 + 264);
  sub_22B1A20B8();
  v25 = *(v0 + 88);
  if ((v25 & 0xC000000000000001) != 0)
  {
    if (v25 < 0)
    {
      v26 = *(v0 + 88);
    }

    v27 = sub_22B36109C();
    v28 = *(v0 + 224);
    if (v27)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = *(v0 + 224);
    if (*(v25 + 16))
    {
LABEL_21:

LABEL_22:
      v29 = *(v0 + 192);
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v30 = sub_22B36050C();
      v31 = sub_22B360D1C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22B116000, v30, v31, "[IdentityRepair] Cleaning up shares", v32, 2u);
        MEMORY[0x23188F650](v32, -1, -1);
      }

      v33 = *(v0 + 232);
      v34 = *(v0 + 200);
      v35 = *(v0 + 136);
      v36 = *(v0 + 112);

      v34(v35, v36);
      v37 = swift_task_alloc();
      *(v0 + 328) = v37;
      *(v37 + 16) = v0 + 88;
      v38 = *(MEMORY[0x277D859E0] + 4);
      v3 = swift_task_alloc();
      *(v0 + 336) = v3;
      *v3 = v0;
      v3[1] = sub_22B2EF600;
      v8 = sub_22B2F0F8C;
      v7 = 0x800000022B36DC90;
      v10 = MEMORY[0x277D84F78] + 8;
      v4 = 0;
      v5 = 0;
      v6 = 0xD000000000000024;
      v9 = v37;

      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    v39 = sub_22B36109C();
    v40 = *(v0 + 224);

    if (!v39)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v41 = *(v28 + 16);

    if (!v41)
    {
      goto LABEL_22;
    }
  }

  v42 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v43 = sub_22B36050C();
  v44 = sub_22B360D1C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22B116000, v43, v44, "[IdentityRepair] Failed to find share in cd or ck", v45, 2u);
    MEMORY[0x23188F650](v45, -1, -1);
  }

  v46 = *(v0 + 232);
  v47 = *(v0 + 200);
  v48 = *(v0 + 144);
  v49 = *(v0 + 112);

  v47(v48, v49);

  v51 = *(v0 + 160);
  v50 = *(v0 + 168);
  v53 = *(v0 + 144);
  v52 = *(v0 + 152);
  v55 = *(v0 + 128);
  v54 = *(v0 + 136);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_22B2EF600()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2EF718, 0, 0);
}

uint64_t sub_22B2EF718()
{
  v1 = v0[11];

  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B2EF7C0()
{
  v1 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 112));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 200);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[IdentityRepair] Failed to find share in cd. Checking ck", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v7(v8, v9);
  v11 = *(v0 + 224);

  v12 = sub_22B2EC234(MEMORY[0x277D84FA0], v11);

  if ((v12 & 0xC000000000000001) == 0)
  {
    if (*(v12 + 16))
    {
      v23 = 0;
      v29 = -1;
      v30 = -1 << *(v12 + 32);
      v21 = v12 + 56;
      if (-v30 < 64)
      {
        v29 = ~(-1 << -v30);
      }

      v24 = v29 & *(v12 + 56);
      v25 = (v0 + 280);
      *(v0 + 272) = v21;
      *(v0 + 280) = ~v30;
      v26 = (v0 + 272);
      v28 = 63 - v30;
      v27 = (v0 + 264);
      *(v0 + 264) = v12;
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_25;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_21;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  v13 = sub_22B360C7C();
  v12 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = (v0 + 280);
  *(v0 + 272) = v21;
  *(v0 + 280) = v22;
  v26 = (v0 + 272);
  v27 = (v0 + 264);
  *(v0 + 264) = v12;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v28 = v22 + 64;
LABEL_11:
    v31 = v24;
    v32 = v23;
    if (!v24)
    {
      v33 = v28 >> 6;
      v34 = v23;
      while (1)
      {
        v32 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v32 >= v33)
        {
          goto LABEL_24;
        }

        v31 = *(v21 + 8 * v32);
        ++v34;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_16:
    v35 = (v31 - 1) & v31;
    v36 = *(*(v12 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
LABEL_17:
    *(v0 + 296) = v32;
    *(v0 + 304) = v35;
    *(v0 + 288) = v36;
    if (v36)
    {
      v37 = swift_task_alloc();
      *(v0 + 312) = v37;
      *v37 = v0;
      v37[1] = sub_22B2EF010;

      return sub_22B2EDA3C(v36);
    }

    goto LABEL_24;
  }

  v39 = sub_22B3610BC();
  if (v39)
  {
    *(v0 + 104) = v39;
    swift_dynamicCast();
    v36 = *(v0 + 96);
    v32 = v23;
    v35 = v24;
    goto LABEL_17;
  }

LABEL_24:
  v40 = *v25;
  v41 = *v26;
  v42 = *v27;
  sub_22B1A20B8();
LABEL_25:
  v43 = *(v0 + 88);
  if ((v43 & 0xC000000000000001) != 0)
  {
    if (v43 < 0)
    {
      v44 = *(v0 + 88);
    }

    v45 = sub_22B36109C();
    v46 = *(v0 + 224);
    if (v45)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v46 = *(v0 + 224);
    if (*(v43 + 16))
    {
LABEL_29:

LABEL_30:
      v47 = *(v0 + 192);
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v48 = sub_22B36050C();
      v49 = sub_22B360D1C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_22B116000, v48, v49, "[IdentityRepair] Cleaning up shares", v50, 2u);
        MEMORY[0x23188F650](v50, -1, -1);
      }

      v51 = *(v0 + 232);
      v52 = *(v0 + 200);
      v53 = *(v0 + 136);
      v54 = *(v0 + 112);

      v52(v53, v54);
      v55 = swift_task_alloc();
      *(v0 + 328) = v55;
      *(v55 + 16) = v0 + 88;
      v56 = *(MEMORY[0x277D859E0] + 4);
      v13 = swift_task_alloc();
      *(v0 + 336) = v13;
      *v13 = v0;
      v13[1] = sub_22B2EF600;
      v18 = sub_22B2F0F8C;
      v17 = 0x800000022B36DC90;
      v20 = MEMORY[0x277D84F78] + 8;
      v14 = 0;
      v15 = 0;
      v16 = 0xD000000000000024;
      v19 = v55;

      return MEMORY[0x2822007B8](v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if ((v46 & 0xC000000000000001) != 0)
  {
    v57 = sub_22B36109C();
    v58 = *(v0 + 224);

    if (!v57)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v59 = *(v46 + 16);

    if (!v59)
    {
      goto LABEL_30;
    }
  }

  v60 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v61 = sub_22B36050C();
  v62 = sub_22B360D1C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_22B116000, v61, v62, "[IdentityRepair] Failed to find share in cd or ck", v63, 2u);
    MEMORY[0x23188F650](v63, -1, -1);
  }

  v64 = *(v0 + 232);
  v65 = *(v0 + 200);
  v66 = *(v0 + 144);
  v67 = *(v0 + 112);

  v65(v66, v67);

  v69 = *(v0 + 160);
  v68 = *(v0 + 168);
  v71 = *(v0 + 144);
  v70 = *(v0 + 152);
  v73 = *(v0 + 128);
  v72 = *(v0 + 136);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_22B2EFE0C()
{
  v1 = sub_22B36052C();
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2EFEF8, 0, 0);
}

uint64_t sub_22B2EFEF8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[13] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Private Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[12];
  v10 = v0[6];
  v11 = v0[7];

  v12 = *(v11 + 8);
  v0[16] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *(v13 + 16) = 0;
  v14 = *(MEMORY[0x277D859E0] + 4);
  v15 = swift_task_alloc();
  v0[18] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v15 = v0;
  v15[1] = sub_22B2F0114;

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD00000000000001DLL, 0x800000022B36DC40, sub_22B2F0F34, v13, v16);
}

uint64_t sub_22B2F0114()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2F022C, 0, 0);
}

uint64_t sub_22B2F022C()
{
  v1 = v0[5];
  v0[19] = v1;
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[6];
  if (v2)
  {
    v4(v0[10], v0[13], v0[6]);

    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (v1 >> 62)
      {
        v10 = sub_22B36109C();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v10;

      _os_log_impl(&dword_22B116000, v7, v8, "[IdentityRepair] %ld private zones", v9, 0xCu);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    else
    {
    }

    v27 = v0[16];
    v28 = v0[10];
    v29 = v0[6];
    v0[20] = (v0[7] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v28, v29);
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v0[21] = [*(qword_28140BCF0 + 16) privateCloudDatabase];
    v30 = *(MEMORY[0x277CBBE80] + 4);
    v31 = swift_task_alloc();
    v0[22] = v31;
    *v31 = v0;
    v31[1] = sub_22B2F0580;
    v32 = MEMORY[0x277D84F90];

    return MEMORY[0x28210DEF8](v32, v1);
  }

  else
  {
    v11 = v0[11];

    v4(v11, v5, v6);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[16];
    v16 = v0[11];
    v17 = v0[6];
    v18 = v0[7];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[IdentityRepair] No private zones", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v15(v16, v17);
    v21 = v0[11];
    v20 = v0[12];
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22B2F0580(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 176);
  v6 = *v3;
  v4[23] = a2;
  v4[24] = v2;

  v7 = v4[21];
  v8 = v4[19];
  if (v2)
  {

    v10 = v4[11];
    v9 = v4[12];
    v11 = v4[9];
    v12 = v4[10];
    v13 = v4[8];

    v14 = *(v6 + 8);

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B2F0754, 0, 0);
  }
}

uint64_t sub_22B2F0754()
{
  v73 = v0;
  v57 = 0;
  v1 = 0;
  v2 = v0[23];
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v65 = v7;
LABEL_4:
  v8 = v1;
  while (v6)
  {
    v1 = v8;
LABEL_12:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v1 << 6);
    v11 = *(*(v2 + 48) + 8 * v10);
    v12 = *(v2 + 56) + 16 * v10;
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];
    v16 = v0[6];
    if (*(v12 + 8) != 1)
    {
      v71 = v3;
      v14(v0[8], v15, v16);
      v34 = v11;
      v35 = sub_22B36050C();
      v36 = sub_22B360D1C();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v0[20];
      v39 = v0[16];
      v69 = v0[8];
      v67 = v0[6];
      if (v37)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v72 = v41;
        *v40 = 136315138;
        v64 = v34;
        v42 = [v34 zoneName];
        v62 = v39;
        v43 = sub_22B36084C();
        v45 = v44;

        v46 = sub_22B1A7B20(v43, v45, &v72);
        v2 = v58;
        v0 = v59;

        *(v40 + 4) = v46;
        _os_log_impl(&dword_22B116000, v35, v36, "[IdentityRepair] deleted %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x23188F650](v41, -1, -1);
        v47 = v40;
        v7 = v65;
        MEMORY[0x23188F650](v47, -1, -1);

        v62(v69, v67);
      }

      else
      {

        v39(v69, v67);
      }

      v57 = 1;
      v3 = v71;
      goto LABEL_4;
    }

    v17 = *v12;
    v14(v0[9], v15, v16);
    sub_22B248728(v17, 1);
    sub_22B248728(v17, 1);
    v18 = v11;
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    sub_22B1CD010(v17, 1);
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[20];
    v68 = v0[9];
    v70 = v0[16];
    v66 = v0[6];
    if (v21)
    {
      v23 = v18;
      v63 = v18;
      v24 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v72 = v61;
      *v24 = 136315394;
      v25 = [v23 zoneName];
      v26 = v3;
      v27 = sub_22B36084C();
      v29 = v28;

      v30 = v27;
      v3 = v26;
      v31 = sub_22B1A7B20(v30, v29, &v72);
      v2 = v58;
      v0 = v59;

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      v32 = v17;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      *v60 = v33;
      _os_log_impl(&dword_22B116000, v19, v20, "[IdentityRepair] failed to delete %s due to %@", v24, 0x16u);
      sub_22B12F10C(v60);
      MEMORY[0x23188F650](v60, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x23188F650](v61, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    else
    {
    }

    sub_22B1CD010(v17, 1);
    v70(v68, v66);
    v8 = v1;
    v7 = v65;
  }

  while (1)
  {
    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v1 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v1);
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  v48 = v0[23];

  if (v57)
  {
    if (qword_28140B168 == -1)
    {
LABEL_21:
      v49 = qword_28140BDC8;
      v0[25] = qword_28140BDC8;

      return MEMORY[0x2822009F8](sub_22B2F0CBC, v49, 0);
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  v51 = v0[11];
  v50 = v0[12];
  v53 = v0[9];
  v52 = v0[10];
  v54 = v0[8];

  v55 = v0[1];

  return v55();
}

uint64_t sub_22B2F0CBC()
{
  v1 = *(v0 + 200);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);

    sub_22B2A5894();
  }

  return MEMORY[0x2822009F8](sub_22B2F0D3C, 0, 0);
}

uint64_t sub_22B2F0D3C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 208) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B2F0DD4, v1, 0);
}

uint64_t sub_22B2F0DD4()
{
  v1 = *(v0 + 208);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 120);
    v3 = *(v1 + 112);

    v4 = v2;
    sub_22B207820();
    sub_22B207A4C();
  }

  return MEMORY[0x2822009F8](sub_22B2F0E68, 0, 0);
}

void sub_22B2F0E68()
{
  v1 = v0[24];
  v2 = MEMORY[0x23188EEB0]();
  sub_22B34D440();
  objc_autoreleasePoolPop(v2);
  if (!v1)
  {
    v4 = v0[11];
    v3 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_22B2F0FF4()
{
  v1 = sub_22B3605EC();
  v0[13] = v1;
  v2 = *(v1 - 8);
  v0[14] = v2;
  v3 = *(v2 + 64) + 15;
  v0[15] = swift_task_alloc();
  v4 = sub_22B36062C();
  v0[16] = v4;
  v5 = *(v4 - 8);
  v0[17] = v5;
  v6 = *(v5 + 64) + 15;
  v0[18] = swift_task_alloc();
  v7 = sub_22B36052C();
  v0[19] = v7;
  v8 = *(v7 - 8);
  v0[20] = v8;
  v9 = *(v8 + 64) + 15;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2F1198, 0, 0);
}

uint64_t sub_22B2F1198()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[26] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[27] = v5;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Private Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[25];
  v10 = v0[19];
  v11 = v0[20];

  v12 = *(v11 + 8);
  v0[29] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[30] = v13;
  *(v13 + 16) = 0;
  v14 = *(MEMORY[0x277D859E0] + 4);
  v15 = swift_task_alloc();
  v0[31] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v15 = v0;
  v15[1] = sub_22B2F13B4;

  return MEMORY[0x2822007B8](v0 + 11, 0, 0, 0xD000000000000021, 0x800000022B36DCE0, sub_22B2F2480, v13, v16);
}

uint64_t sub_22B2F13B4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2F14CC, 0, 0);
}

uint64_t sub_22B2F14CC()
{
  v1 = v0[11];
  v0[32] = v1;
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[19];
  if (v2)
  {
    v4(v0[23], v0[26], v0[19]);

    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (v1 >> 62)
      {
        v10 = sub_22B36109C();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v10;

      _os_log_impl(&dword_22B116000, v7, v8, "[IdentityRepair] %ld affected private zones", v9, 0xCu);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    else
    {
    }

    v29 = v0[29];
    v30 = v0[23];
    v31 = v0[19];
    v0[33] = (v0[20] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v30, v31);
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v0[34] = [*(qword_28140BCF0 + 16) privateCloudDatabase];
    v32 = *(MEMORY[0x277CBBE80] + 4);
    v33 = swift_task_alloc();
    v0[35] = v33;
    *v33 = v0;
    v33[1] = sub_22B2F1838;
    v34 = MEMORY[0x277D84F90];

    return MEMORY[0x28210DEF8](v34, v1);
  }

  else
  {
    v11 = v0[24];

    v4(v11, v5, v6);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[29];
    v16 = v0[24];
    v17 = v0[19];
    v18 = v0[20];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[IdentityRepair] No affected private zones", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v15(v16, v17);
    v21 = v0[24];
    v20 = v0[25];
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[21];
    v25 = v0[18];
    v26 = v0[15];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_22B2F1838(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 280);
  v7 = *v3;
  v5[36] = a1;
  v5[37] = a2;
  v5[38] = v2;

  v8 = v4[34];
  if (v2)
  {

    v9 = sub_22B2F23C8;
  }

  else
  {

    v9 = sub_22B2F1984;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22B2F1984()
{
  v101 = v0;
  v1 = v0[37];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[37] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v88 = (v0[14] + 8);
  v87 = (v0[17] + 8);
  v91 = v0[37];
  swift_bridgeObjectRetain_n();
  v83 = 0;
  v9 = 0;
  v89 = v8;
  v90 = v3;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(v91 + 48) + 8 * v12);
    v14 = *(v91 + 56) + 16 * v12;
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];
    v18 = v0[19];
    if (*(v14 + 8) == 1)
    {
      v19 = *v14;
      v98 = *v14;
      v16(v0[22], v17, v18);
      sub_22B248728(v19, 1);
      sub_22B248728(v19, 1);
      v20 = v13;
      v21 = sub_22B36050C();
      v22 = sub_22B360D1C();
      sub_22B1CD010(v19, 1);
      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[33];
      v25 = v0[29];
      v26 = v0[22];
      v27 = v0[19];
      v96 = v20;
      if (v23)
      {
        v94 = v0[22];
        v28 = swift_slowAlloc();
        v92 = v27;
        v29 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v100[0] = v84;
        *v28 = 136315394;
        v30 = [v20 zoneName];
        v31 = sub_22B36084C();
        v85 = v25;
        v33 = v32;

        v34 = sub_22B1A7B20(v31, v33, v100);

        *(v28 + 4) = v34;
        *(v28 + 12) = 2112;
        v35 = v98;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 14) = v36;
        *v29 = v36;
        _os_log_impl(&dword_22B116000, v21, v22, "[IdentityRepair] failed to delete %s due to %@", v28, 0x16u);
        sub_22B12F10C(v29);
        MEMORY[0x23188F650](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x23188F650](v84, -1, -1);
        MEMORY[0x23188F650](v28, -1, -1);

        v85(v94, v92);
      }

      else
      {

        v25(v26, v27);
      }

      v37 = [objc_opt_self() processInfo];
      v38 = [v37 processName];

      v39 = sub_22B36084C();
      v41 = v40;

      if (qword_281408CD8 != -1)
      {
        swift_once();
      }

      v42 = v0[18];
      v43 = v0[15];
      v44 = v0[13];
      v95 = v0[16];
      v45 = swift_allocObject();
      *(v45 + 16) = 259;
      *(v45 + 18) = 13;
      *(v45 + 24) = v39;
      *(v45 + 32) = v41;
      *(v45 + 40) = 0;
      v0[6] = sub_22B1AF3E4;
      v0[7] = v45;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22B118A6C;
      v0[5] = &block_descriptor_24;
      v46 = _Block_copy(v0 + 2);

      sub_22B36060C();
      v0[12] = MEMORY[0x277D84F90];
      sub_22B2F24C0(&qword_281409370, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
      sub_22B124A3C();
      sub_22B36104C();
      MEMORY[0x23188E6D0](0, v42, v43, v46);
      _Block_release(v46);

      sub_22B1CD010(v98, 1);
      (*v88)(v43, v44);
      (*v87)(v42, v95);
      v47 = v0[7];

      v8 = v89;
      v3 = v90;
    }

    else
    {
      v16(v0[21], v17, v18);
      v48 = v13;
      v49 = sub_22B36050C();
      v50 = sub_22B360D1C();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v0[33];
      v53 = v0[29];
      v54 = v0[19];
      v97 = v54;
      v99 = v0[21];
      if (v51)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v100[0] = v56;
        *v55 = 136315138;
        v57 = [v48 zoneName];
        v93 = v53;
        v58 = sub_22B36084C();
        v86 = v48;
        v60 = v59;

        v61 = sub_22B1A7B20(v58, v60, v100);

        *(v55 + 4) = v61;
        _os_log_impl(&dword_22B116000, v49, v50, "[IdentityRepair] deleted %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        v62 = v56;
        v8 = v89;
        MEMORY[0x23188F650](v62, -1, -1);
        v63 = v55;
        v3 = v90;
        MEMORY[0x23188F650](v63, -1, -1);

        v93(v99, v97);
      }

      else
      {

        v53(v99, v97);
      }

      v83 = 1;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v64 = v0[37];

  if (v83)
  {
    v65 = [objc_opt_self() processInfo];
    v66 = [v65 processName];

    v67 = sub_22B36084C();
    v69 = v68;

    LOWORD(v100[0]) = 259;
    BYTE2(v100[0]) = 16;
    v100[1] = v67;
    v100[2] = v69;
    v100[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v100);
    if (qword_28140B168 == -1)
    {
LABEL_22:
      v70 = qword_28140BDC8;
      v0[39] = qword_28140BDC8;

      return MEMORY[0x2822009F8](sub_22B2F21B8, v70, 0);
    }

LABEL_29:
    swift_once();
    goto LABEL_22;
  }

  v71 = v0[36];
  v72 = v0[37];
  v73 = v0[32];

  swift_bridgeObjectRelease_n();
  v75 = v0[24];
  v74 = v0[25];
  v77 = v0[22];
  v76 = v0[23];
  v78 = v0[21];
  v79 = v0[18];
  v80 = v0[15];

  v81 = v0[1];

  return v81();
}

uint64_t sub_22B2F21B8()
{
  v1 = *(v0 + 312);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);

    sub_22B2A5894();
  }

  return MEMORY[0x2822009F8](sub_22B2F2238, 0, 0);
}

uint64_t sub_22B2F2238()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 320) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B2F22D0, v1, 0);
}

uint64_t sub_22B2F22D0()
{
  v1 = *(v0 + 320);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 120);
    v3 = *(v1 + 112);

    v4 = v2;
    sub_22B207820();
    sub_22B207A4C();
  }

  return MEMORY[0x2822009F8](sub_22B2F2364, 0, 0);
}

void sub_22B2F2364()
{
  v1 = *(v0 + 304);
  v2 = MEMORY[0x23188EEB0]();
  sub_22B34D440();
  objc_autoreleasePoolPop(v2);
  if (!v1)
  {
    exit(0);
  }
}

uint64_t sub_22B2F23C8()
{
  v1 = v0[32];

  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B2F24C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B2F25F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_22B2F26F0()
{
  v1 = sub_22B36052C();
  v0[14] = v1;
  v2 = *(v1 - 8);
  v0[15] = v2;
  v3 = *(v2 + 64) + 15;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2F27E8, 0, 0);
}

uint64_t sub_22B2F27E8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[22] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[23] = v5;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Shared Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[21];
  v10 = v0[14];
  v11 = v0[15];

  v12 = *(v11 + 8);
  v0[25] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *(v13 + 16) = 1;
  v14 = *(MEMORY[0x277D859E0] + 4);
  v15 = swift_task_alloc();
  v0[27] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v15 = v0;
  v15[1] = sub_22B2F2A08;

  return MEMORY[0x2822007B8](v0 + 10, 0, 0, 0xD000000000000021, 0x800000022B36DCE0, sub_22B2F45C4, v13, v16);
}

uint64_t sub_22B2F2A08()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2F2B20, 0, 0);
}

uint64_t sub_22B2F2B20()
{
  v1 = sub_22B31A8A4(v0[10]);
  v0[28] = v1;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[14];
  if (v2)
  {
    v4(v0[19], v0[22], v0[14]);

    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_22B36109C();
      }

      else
      {
        v10 = *(v1 + 16);
      }

      *(v9 + 4) = v10;

      _os_log_impl(&dword_22B116000, v7, v8, "[IdentityRepair] %ld affected shared zones", v9, 0xCu);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    else
    {
    }

    v28 = v0[25];
    v29 = v0[19];
    v30 = v0[14];
    v0[29] = (v0[15] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v29, v30);
    v0[11] = MEMORY[0x277D84FA0];
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v31 = qword_28140BDD0;
    v0[30] = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B2F2E3C, v31, 0);
  }

  else
  {
    v11 = v0[20];

    v4(v11, v5, v6);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[25];
    v16 = v0[20];
    v17 = v0[14];
    v18 = v0[15];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "[IdentityRepair] No affected shared zones", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v15(v16, v17);
    v21 = v0[20];
    v20 = v0[21];
    v23 = v0[18];
    v22 = v0[19];
    v25 = v0[16];
    v24 = v0[17];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_22B2F2E3C()
{
  v1 = v0[30];
  sub_22B143A3C(1);
  v0[31] = v2;
  v0[32] = 0;

  return MEMORY[0x2822009F8](sub_22B2F2ECC, 0, 0);
}

uint64_t sub_22B2F2ECC()
{
  v80 = (v0 + 88);
  v1 = *(v0 + 248);
  v81 = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_72:
    v3 = sub_22B36109C();
    v4 = *(v0 + 248);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 248);
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x277D84F90];
  v1 = &off_2786FB000;
  v79 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x23188EAC0](v5, *(v78 + 248));
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_68;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v0 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v11 = [v9 recordID];

    ++v5;
    if (v11)
    {
      MEMORY[0x23188E350]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v8 = v81;
      v5 = v0;
    }
  }

  v13 = sub_22B31A8D4(v8);

  v14 = 0;
  *v80 = v13;
  v81 = MEMORY[0x277D84F90];
  while (v3 != v14)
  {
    if (v6)
    {
      v15 = MEMORY[0x23188EAC0](v14, *(v78 + 248));
    }

    else
    {
      if (v14 >= *(v2 + 16))
      {
        goto LABEL_70;
      }

      v15 = *(v7 + 8 * v14);
    }

    v16 = v15;
    v0 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_69;
    }

    v17 = [v15 recordID];
    v18 = [v17 zoneID];

    ++v14;
    if (v18)
    {
      MEMORY[0x23188E350]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v79 = v81;
      v14 = v0;
    }
  }

  v2 = v78;
  v20 = *(v78 + 248);

  v21 = sub_22B31A8A4(v79);

  v22 = *(v78 + 224);

  v23 = sub_22B2EC234(v21, v22);

  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*(v23 + 16))
    {
      v26 = 0;
      v31 = -1;
      v32 = -1 << *(v23 + 32);
      v24 = v23 + 56;
      if (-v32 < 64)
      {
        v31 = ~(-1 << -v32);
      }

      v1 = v31 & *(v23 + 56);
      v27 = (v78 + 280);
      *(v78 + 272) = v24;
      *(v78 + 280) = ~v32;
      v28 = (v78 + 272);
      v30 = 63 - v32;
      v29 = (v78 + 264);
      *(v78 + 264) = v23;
      goto LABEL_33;
    }

LABEL_43:

    goto LABEL_47;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_43;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  sub_22B360C7C();
  v23 = *(v78 + 16);
  v24 = *(v78 + 24);
  v25 = *(v78 + 32);
  v26 = *(v78 + 40);
  v1 = *(v78 + 48);
  v27 = (v78 + 280);
  *(v78 + 272) = v24;
  *(v78 + 280) = v25;
  v28 = (v78 + 272);
  v29 = (v78 + 264);
  *(v78 + 264) = v23;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v30 = v25 + 64;
LABEL_33:
    v33 = v1;
    v0 = v26;
    if (!v1)
    {
      v34 = v30 >> 6;
      v35 = v26;
      do
      {
        v0 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_71;
        }

        if (v0 >= v34)
        {
          goto LABEL_46;
        }

        v33 = *(v24 + 8 * v0);
        ++v35;
      }

      while (!v33);
    }

    v36 = (v33 - 1) & v33;
    v37 = *(*(v23 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v33)))));
LABEL_39:
    *(v78 + 296) = v0;
    *(v78 + 304) = v36;
    *(v78 + 288) = v37;
    if (v37)
    {
      v38 = swift_task_alloc();
      *(v78 + 312) = v38;
      *v38 = v78;
      v38[1] = sub_22B2F36D4;

      return sub_22B2EDA3C(v37);
    }

    goto LABEL_46;
  }

  v40 = sub_22B3610BC();
  if (v40)
  {
    *(v78 + 104) = v40;
    swift_dynamicCast();
    v37 = *(v78 + 96);
    v0 = v26;
    v36 = v1;
    goto LABEL_39;
  }

LABEL_46:
  v41 = *v27;
  v42 = *v28;
  v43 = *v29;
  sub_22B1A20B8();
LABEL_47:
  v44 = *v80;
  if ((*v80 & 0xC000000000000001) != 0)
  {
    if (v44 < 0)
    {
      v45 = *v80;
    }

    v46 = sub_22B36109C();
    v47 = *(v78 + 224);
    if (v46)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v47 = *(v78 + 224);
    if (*(v44 + 16))
    {
LABEL_51:

LABEL_52:
      v48 = *(v78 + 192);
      (*(v78 + 184))(*(v78 + 136), *(v78 + 176), *(v78 + 112));
      v49 = sub_22B36050C();
      v50 = sub_22B360D1C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_22B116000, v49, v50, "[IdentityRepair] Cleaning up shares", v51, 2u);
        MEMORY[0x23188F650](v51, -1, -1);
      }

      v52 = *(v78 + 232);
      v53 = *(v78 + 200);
      v54 = *(v78 + 136);
      v55 = *(v78 + 112);

      v53(v54, v55);
      v56 = swift_task_alloc();
      *(v78 + 328) = v56;
      *(v56 + 16) = v80;
      v57 = *(MEMORY[0x277D859E0] + 4);
      v58 = swift_task_alloc();
      *(v78 + 336) = v58;
      *v58 = v78;
      v58[1] = sub_22B2F3CC4;
      v59 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822007B8](v58, 0, 0, 0xD00000000000002ALL, 0x800000022B36DD10, sub_22B2F4428, v56, v59);
    }
  }

  if ((v47 & 0xC000000000000001) != 0)
  {
    v60 = sub_22B36109C();
    v61 = *(v78 + 224);

    if (!v60)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v62 = *(v47 + 16);

    if (!v62)
    {
      goto LABEL_52;
    }
  }

  v63 = *(v78 + 192);
  (*(v78 + 184))(*(v78 + 144), *(v78 + 176), *(v78 + 112));
  v64 = sub_22B36050C();
  v65 = sub_22B360D1C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_22B116000, v64, v65, "[IdentityRepair] Failed to find share in cd or ck", v66, 2u);
    MEMORY[0x23188F650](v66, -1, -1);
  }

  v67 = *(v78 + 232);
  v68 = *(v78 + 200);
  v69 = *(v78 + 144);
  v70 = *(v78 + 112);

  v68(v69, v70);

  v72 = *(v78 + 160);
  v71 = *(v78 + 168);
  v74 = *(v78 + 144);
  v73 = *(v78 + 152);
  v76 = *(v78 + 128);
  v75 = *(v78 + 136);

  v77 = *(v78 + 8);

  return v77();
}

uint64_t sub_22B2F36D4(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22B2F37D4, 0, 0);
}

uint64_t sub_22B2F37D4()
{
  v58 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  if (v1)
  {
    sub_22B32E36C(&v57, [*(v0 + 320) recordID]);
  }

  else
  {
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 264);
  if (v13 < 0)
  {
    v19 = sub_22B3610BC();
    if (!v19)
    {
      goto LABEL_17;
    }

    *(v0 + 104) = v19;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    swift_dynamicCast();
    v18 = *(v0 + 96);
    v15 = v11;
    v17 = v12;
  }

  else
  {
    v14 = *(v0 + 304);
    v15 = *(v0 + 296);
    if (!v12)
    {
      v16 = *(v0 + 296);
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= ((*(v0 + 280) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v14 = *(*(v0 + 272) + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }

LABEL_10:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v13 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  }

  *(v0 + 296) = v15;
  *(v0 + 304) = v17;
  *(v0 + 288) = v18;
  if (v18)
  {
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_22B2F36D4;

    return sub_22B2EDA3C(v18);
  }

LABEL_17:
  v22 = *(v0 + 272);
  v23 = *(v0 + 280);
  v24 = *(v0 + 264);
  sub_22B1A20B8();
  v25 = *(v0 + 88);
  if ((v25 & 0xC000000000000001) != 0)
  {
    if (v25 < 0)
    {
      v26 = *(v0 + 88);
    }

    v27 = sub_22B36109C();
    v28 = *(v0 + 224);
    if (v27)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = *(v0 + 224);
    if (*(v25 + 16))
    {
LABEL_21:

LABEL_22:
      v29 = *(v0 + 192);
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v30 = sub_22B36050C();
      v31 = sub_22B360D1C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22B116000, v30, v31, "[IdentityRepair] Cleaning up shares", v32, 2u);
        MEMORY[0x23188F650](v32, -1, -1);
      }

      v33 = *(v0 + 232);
      v34 = *(v0 + 200);
      v35 = *(v0 + 136);
      v36 = *(v0 + 112);

      v34(v35, v36);
      v37 = swift_task_alloc();
      *(v0 + 328) = v37;
      *(v37 + 16) = v0 + 88;
      v38 = *(MEMORY[0x277D859E0] + 4);
      v3 = swift_task_alloc();
      *(v0 + 336) = v3;
      *v3 = v0;
      v3[1] = sub_22B2F3CC4;
      v8 = sub_22B2F4428;
      v7 = 0x800000022B36DD10;
      v10 = MEMORY[0x277D84F78] + 8;
      v4 = 0;
      v5 = 0;
      v6 = 0xD00000000000002ALL;
      v9 = v37;

      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    v39 = sub_22B36109C();
    v40 = *(v0 + 224);

    if (!v39)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v41 = *(v28 + 16);

    if (!v41)
    {
      goto LABEL_22;
    }
  }

  v42 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v43 = sub_22B36050C();
  v44 = sub_22B360D1C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22B116000, v43, v44, "[IdentityRepair] Failed to find share in cd or ck", v45, 2u);
    MEMORY[0x23188F650](v45, -1, -1);
  }

  v46 = *(v0 + 232);
  v47 = *(v0 + 200);
  v48 = *(v0 + 144);
  v49 = *(v0 + 112);

  v47(v48, v49);

  v51 = *(v0 + 160);
  v50 = *(v0 + 168);
  v53 = *(v0 + 144);
  v52 = *(v0 + 152);
  v55 = *(v0 + 128);
  v54 = *(v0 + 136);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_22B2F3CC4()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2F45BC, 0, 0);
}

uint64_t sub_22B2F3DDC()
{
  v1 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 112));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 200);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[IdentityRepair] Failed to find share in cd. Checking ck", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v7(v8, v9);
  v11 = *(v0 + 224);

  v12 = sub_22B2EC234(MEMORY[0x277D84FA0], v11);

  if ((v12 & 0xC000000000000001) == 0)
  {
    if (*(v12 + 16))
    {
      v23 = 0;
      v29 = -1;
      v30 = -1 << *(v12 + 32);
      v21 = v12 + 56;
      if (-v30 < 64)
      {
        v29 = ~(-1 << -v30);
      }

      v24 = v29 & *(v12 + 56);
      v25 = (v0 + 280);
      *(v0 + 272) = v21;
      *(v0 + 280) = ~v30;
      v26 = (v0 + 272);
      v28 = 63 - v30;
      v27 = (v0 + 264);
      *(v0 + 264) = v12;
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_25;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_21;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  v13 = sub_22B360C7C();
  v12 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = (v0 + 280);
  *(v0 + 272) = v21;
  *(v0 + 280) = v22;
  v26 = (v0 + 272);
  v27 = (v0 + 264);
  *(v0 + 264) = v12;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v28 = v22 + 64;
LABEL_11:
    v31 = v24;
    v32 = v23;
    if (!v24)
    {
      v33 = v28 >> 6;
      v34 = v23;
      while (1)
      {
        v32 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v32 >= v33)
        {
          goto LABEL_24;
        }

        v31 = *(v21 + 8 * v32);
        ++v34;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_16:
    v35 = (v31 - 1) & v31;
    v36 = *(*(v12 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
LABEL_17:
    *(v0 + 296) = v32;
    *(v0 + 304) = v35;
    *(v0 + 288) = v36;
    if (v36)
    {
      v37 = swift_task_alloc();
      *(v0 + 312) = v37;
      *v37 = v0;
      v37[1] = sub_22B2F36D4;

      return sub_22B2EDA3C(v36);
    }

    goto LABEL_24;
  }

  v39 = sub_22B3610BC();
  if (v39)
  {
    *(v0 + 104) = v39;
    swift_dynamicCast();
    v36 = *(v0 + 96);
    v32 = v23;
    v35 = v24;
    goto LABEL_17;
  }

LABEL_24:
  v40 = *v25;
  v41 = *v26;
  v42 = *v27;
  sub_22B1A20B8();
LABEL_25:
  v43 = *(v0 + 88);
  if ((v43 & 0xC000000000000001) != 0)
  {
    if (v43 < 0)
    {
      v44 = *(v0 + 88);
    }

    v45 = sub_22B36109C();
    v46 = *(v0 + 224);
    if (v45)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v46 = *(v0 + 224);
    if (*(v43 + 16))
    {
LABEL_29:

LABEL_30:
      v47 = *(v0 + 192);
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v48 = sub_22B36050C();
      v49 = sub_22B360D1C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_22B116000, v48, v49, "[IdentityRepair] Cleaning up shares", v50, 2u);
        MEMORY[0x23188F650](v50, -1, -1);
      }

      v51 = *(v0 + 232);
      v52 = *(v0 + 200);
      v53 = *(v0 + 136);
      v54 = *(v0 + 112);

      v52(v53, v54);
      v55 = swift_task_alloc();
      *(v0 + 328) = v55;
      *(v55 + 16) = v0 + 88;
      v56 = *(MEMORY[0x277D859E0] + 4);
      v13 = swift_task_alloc();
      *(v0 + 336) = v13;
      *v13 = v0;
      v13[1] = sub_22B2F3CC4;
      v18 = sub_22B2F4428;
      v17 = 0x800000022B36DD10;
      v20 = MEMORY[0x277D84F78] + 8;
      v14 = 0;
      v15 = 0;
      v16 = 0xD00000000000002ALL;
      v19 = v55;

      return MEMORY[0x2822007B8](v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if ((v46 & 0xC000000000000001) != 0)
  {
    v57 = sub_22B36109C();
    v58 = *(v0 + 224);

    if (!v57)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v59 = *(v46 + 16);

    if (!v59)
    {
      goto LABEL_30;
    }
  }

  v60 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v61 = sub_22B36050C();
  v62 = sub_22B360D1C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_22B116000, v61, v62, "[IdentityRepair] Failed to find share in cd or ck", v63, 2u);
    MEMORY[0x23188F650](v63, -1, -1);
  }

  v64 = *(v0 + 232);
  v65 = *(v0 + 200);
  v66 = *(v0 + 144);
  v67 = *(v0 + 112);

  v65(v66, v67);

  v69 = *(v0 + 160);
  v68 = *(v0 + 168);
  v71 = *(v0 + 144);
  v70 = *(v0 + 152);
  v73 = *(v0 + 128);
  v72 = *(v0 + 136);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B2F450C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7);
}

uint64_t sub_22B2F45C8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADB0, &qword_22B366F78);
  if (swift_dynamicCast())
  {
    sub_22B11A02C(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_22B35DA5C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_22B123284(__src, &qword_27D8BADB8, &unk_22B366F80);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22B3611BC();
  }

  sub_22B306EFC(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22B30CCEC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_22B306FC4(sub_22B30D2B8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22B35DCAC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22B307F94(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22B36096C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22B36099C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22B3611BC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22B307F94(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22B36097C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_22B35DCBC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_22B35DCBC();
    sub_22B11EDC0(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_22B11EDC0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22B144B30(*&__src[0], *(&__src[0] + 1));

  sub_22B12F174(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

void sub_22B2F4AE8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD90, &qword_22B366F58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v81 - v6;
  v7 = sub_22B35FEDC();
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v85 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD98, &qword_22B366F60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v81 - v12;
  v84 = sub_22B35FF1C();
  v13 = *(v84 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADA0, &qword_22B366F68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v81 - v18;
  v20 = sub_22B35FEFC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  *&v23 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 recordID];
  v27 = sub_22B36084C();
  v29 = v28;

  *a2 = v27;
  a2[1] = v29;
  v30 = [a1 meterID];
  v31 = sub_22B36084C();
  v33 = v32;

  a2[2] = v31;
  a2[3] = v33;
  v34 = [a1 start];
  v35 = type metadata accessor for CDIntervalBlocks();
  v36 = a2 + v35[6];
  sub_22B35DE5C();

  v37 = [a1 end];
  v38 = a2 + v35[7];
  sub_22B35DE5C();

  sub_22B35F4CC();
  sub_22B35FEEC();
  v39 = *(v21 + 48);
  if (v39(v19, 1, v20) == 1)
  {
    (*(v21 + 104))(v25, *MEMORY[0x277D07528], v20);
    if (v39(v19, 1, v20) != 1)
    {
      sub_22B123284(v19, &qword_27D8BADA0, &qword_22B366F68);
    }
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
  }

  (*(v21 + 32))(a2 + v35[8], v25, v20);
  sub_22B35F48C();
  v40 = v83;
  sub_22B35FF0C();
  v41 = *(v13 + 48);
  v42 = v84;
  if (v41(v40, 1, v84) == 1)
  {
    v43 = v82;
    (*(v13 + 104))(v82, *MEMORY[0x277D07530], v42);
    v44 = v43;
    v45 = v41(v40, 1, v42) == 1;
    v46 = v40;
    v48 = v87;
    v47 = v88;
    v49 = v86;
    if (!v45)
    {
      sub_22B123284(v46, &qword_27D8BAD98, &qword_22B366F60);
    }
  }

  else
  {
    v44 = v82;
    (*(v13 + 32))(v82, v40, v42);
    v48 = v87;
    v47 = v88;
    v49 = v86;
  }

  (*(v13 + 32))(a2 + v35[9], v44, v42);
  sub_22B35F4AC();
  sub_22B35FECC();
  v50 = *(v48 + 48);
  if (v50(v49, 1, v47) == 1)
  {
    v51 = v85;
    (*(v48 + 104))(v85, *MEMORY[0x277D07500], v47);
    if (v50(v49, 1, v47) != 1)
    {
      sub_22B123284(v49, &qword_27D8BAD90, &qword_22B366F58);
    }
  }

  else
  {
    v51 = v85;
    (*(v48 + 32))(v85, v49, v47);
  }

  (*(v48 + 32))(a2 + v35[10], v51, v47);
  sub_22B35FDCC();
  v52 = [a1 readings];
  v53 = sub_22B35DCDC();
  v55 = v54;

  v56 = sub_22B35FDBC();
  sub_22B12F174(v53, v55);
  *(a2 + v35[17]) = v56;
  v57 = [a1 sourceTime];
  v58 = a2 + v35[11];
  sub_22B35DE5C();

  v59 = [a1 zoneName];
  v60 = sub_22B36084C();
  v62 = v61;

  v63 = (a2 + v35[12]);
  *v63 = v60;
  v63[1] = v62;
  v64 = [a1 utilityID];
  v65 = sub_22B36084C();
  v67 = v66;

  v68 = (a2 + v35[13]);
  *v68 = v65;
  v68[1] = v67;
  v69 = [a1 subscriptionID];
  v70 = sub_22B36084C();
  v72 = v71;

  v73 = (a2 + v35[14]);
  *v73 = v70;
  v73[1] = v72;
  v74 = [a1 usagePointID];
  v75 = sub_22B36084C();
  v77 = v76;

  v78 = (a2 + v35[15]);
  *v78 = v75;
  v78[1] = v77;
  v79 = [a1 creationDate];
  v80 = a2 + v35[16];
  sub_22B35DE5C();

  LOBYTE(v79) = [a1 preprocessed];
  *(a2 + v35[18]) = v79;
}

void sub_22B2F52C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_22B35F4EC();
  v9 = sub_22B35F47C();
  [v9 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B3634C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22B1280E4();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;

  v13 = sub_22B360CCC();
  [v9 setPredicate_];
  v14 = sub_22B360E8C();
  if (v19)
  {
  }

  else
  {
    v15 = v14;
    [a5 reset];

    *a6 = v15;
  }
}

uint64_t sub_22B2F5454(void *a1, void *a2, char *a3, uint64_t a4, void *a5, int *a6, void *a7, void (**a8)(char *, uint64_t), unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v297 = a8;
  v291 = a6;
  v285 = a5;
  v276 = a4;
  v275 = a3;
  v272 = a2;
  v294 = sub_22B35F00C();
  v282 = *(v294 - 8);
  v13 = *(v282 + 64);
  MEMORY[0x28223BE20](v294);
  v286 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v274 = &v252 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADC8, &unk_22B366F90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v280 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v287 = &v252 - v21;
  MEMORY[0x28223BE20](v22);
  v281 = &v252 - v23;
  v309 = sub_22B35DE9C();
  v273 = *(v309 - 8);
  v24 = *(v273 + 64);
  MEMORY[0x28223BE20](v309);
  v290 = &v252 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v289 = &v252 - v27;
  MEMORY[0x28223BE20](v28);
  v303 = &v252 - v29;
  MEMORY[0x28223BE20](v30);
  v284 = &v252 - v31;
  v283 = sub_22B3603AC();
  v254 = *(v283 - 8);
  v32 = *(v254 + 64);
  MEMORY[0x28223BE20](v283);
  v302 = &v252 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_22B35FEBC();
  v258 = *(v295 - 8);
  v34 = *(v258 + 64);
  MEMORY[0x28223BE20](v295);
  v296 = &v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_22B36052C();
  v298 = *(v292 - 1);
  v36 = *(v298 + 64);
  MEMORY[0x28223BE20](v292);
  v306 = &v252 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v257 = &v252 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  v41 = *(*(v40 - 1) + 64);
  MEMORY[0x28223BE20](v40);
  v277 = (&v252 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v278 = &v252 - v44;
  MEMORY[0x28223BE20](v45);
  v279 = (&v252 - v46);
  MEMORY[0x28223BE20](v47);
  v299 = &v252 - v48;
  MEMORY[0x28223BE20](v49);
  v300 = (&v252 - v50);
  MEMORY[0x28223BE20](v51);
  v301 = (&v252 - v52);
  MEMORY[0x28223BE20](v53);
  v304 = &v252 - v54;
  MEMORY[0x28223BE20](v55);
  v305 = &v252 - v56;
  MEMORY[0x28223BE20](v57);
  v307 = (&v252 - v58);
  *&v60 = MEMORY[0x28223BE20](v59).n128_u64[0];
  v308 = &v252 - v61;
  v269 = a1;
  [a1 refreshAllObjects];
  v288 = sub_22B35F4EC();
  v62 = sub_22B35F47C();
  [v62 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v63 = swift_allocObject();
  v64 = MEMORY[0x277D837D0];
  v256 = xmmword_22B3634B0;
  *(v63 + 16) = xmmword_22B3634B0;
  *(v63 + 56) = v64;
  *(v63 + 32) = 0x73676E6964616572;
  *(v63 + 40) = 0xE800000000000000;
  v65 = sub_22B360A3C();

  [v62 setPropertiesToFetch_];

  v66 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v67 = sub_22B36081C();
  v68 = [v66 initWithKey:v67 ascending:0];

  v69 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v70 = sub_22B36081C();
  v71 = [v69 initWithKey:v70 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_22B363950;
  *(v72 + 32) = v68;
  *(v72 + 40) = v71;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v261 = v68;
  v260 = v71;
  v73 = sub_22B360A3C();

  v268 = v62;
  [v62 setSortDescriptors_];

  v314 = MEMORY[0x277D84F90];
  v74 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_22B364620;
  v77 = MEMORY[0x277D837D0];
  *(v76 + 56) = MEMORY[0x277D837D0];
  v78 = sub_22B1280E4();
  v79 = v275;
  *(v76 + 32) = v272;
  *(v76 + 40) = v79;
  *(v76 + 96) = v77;
  *(v76 + 104) = v78;
  v80 = v276;
  *(v76 + 64) = v78;
  *(v76 + 72) = v80;
  *(v76 + 80) = v285;

  v81 = sub_22B360C8C();
  *(v76 + 136) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  *(v76 + 144) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
  *(v76 + 112) = v81;
  v276 = v74;
  v82 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v314 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v259 = v82;
    sub_22B360A9C();
    v275 = "D = %@ AND usageSummaryID = %@";
    v255 = v75;
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_22B365780;
    sub_22B170BE0(a7, v308, &qword_27D8BA078, &unk_22B362BB0);
    v272 = v40[12];
    v84 = sub_22B35DDDC();
    v85 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v83 + 56) = v85;
    v86 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v83 + 64) = v86;
    *(v83 + 32) = v84;
    sub_22B170BE0(a7, v307, &qword_27D8BA078, &unk_22B362BB0);
    v271 = v40[12];
    v87 = sub_22B35DDDC();
    *(v83 + 96) = v85;
    *(v83 + 104) = v86;
    *(v83 + 72) = v87;
    sub_22B170BE0(a7, v305, &qword_27D8BA078, &unk_22B362BB0);
    v270 = v40[12];
    v88 = sub_22B35DDDC();
    *(v83 + 136) = v85;
    *(v83 + 144) = v86;
    *(v83 + 112) = v88;
    sub_22B170BE0(a7, v304, &qword_27D8BA078, &unk_22B362BB0);
    v267 = v40[12];
    v89 = sub_22B35DDDC();
    *(v83 + 176) = v85;
    *(v83 + 184) = v86;
    *(v83 + 152) = v89;
    sub_22B170BE0(a7, v301, &qword_27D8BA078, &unk_22B362BB0);
    v266 = v40[12];
    v90 = sub_22B35DDDC();
    *(v83 + 216) = v85;
    *(v83 + 224) = v86;
    *(v83 + 192) = v90;
    sub_22B170BE0(a7, v300, &qword_27D8BA078, &unk_22B362BB0);
    v265 = v40[12];
    v91 = sub_22B35DDDC();
    *(v83 + 256) = v85;
    *(v83 + 264) = v86;
    *(v83 + 232) = v91;
    sub_22B170BE0(a7, v299, &qword_27D8BA078, &unk_22B362BB0);
    v264 = v40[12];
    v92 = sub_22B35DDDC();
    *(v83 + 296) = v85;
    *(v83 + 304) = v86;
    *(v83 + 272) = v92;
    v93 = v279;
    sub_22B170BE0(a7, v279, &qword_27D8BA078, &unk_22B362BB0);
    v263 = v40[12];
    v94 = sub_22B35DDDC();
    *(v83 + 336) = v85;
    *(v83 + 344) = v86;
    *(v83 + 312) = v94;
    v95 = v278;
    sub_22B170BE0(a7, v278, &qword_27D8BA078, &unk_22B362BB0);
    v262 = v40[12];
    v96 = sub_22B35DDDC();
    *(v83 + 376) = v85;
    *(v83 + 384) = v86;
    *(v83 + 352) = v96;
    v285 = a7;
    v97 = a7;
    v98 = v277;
    sub_22B170BE0(v97, v277, &qword_27D8BA078, &unk_22B362BB0);
    v291 = v40;
    v99 = v40[12];
    v100 = sub_22B35DDDC();
    *(v83 + 416) = v85;
    *(v83 + 424) = v86;
    *(v83 + 392) = v100;
    v101 = v273 + 8;
    v102 = *(v273 + 8);
    v103 = v309;
    v102(v98 + v99, v309);
    v102(v98, v103);
    v102(v95 + v262, v103);
    v102(v95, v103);
    v102(v93 + v263, v103);
    v102(v93, v103);
    v104 = v299;
    v102(v299 + v264, v103);
    v102(v104, v103);
    v105 = v300;
    v102(v265 + v300, v103);
    v102(v105, v103);
    v106 = v301;
    v102(v301 + v266, v103);
    v102(v106, v103);
    v107 = v304;
    v102(v267 + v304, v103);
    v102(v107, v103);
    v108 = v305;
    v102(v305 + v270, v103);
    v102(v108, v103);
    v109 = v307;
    v102(v307 + v271, v103);
    v102(v109, v103);
    v110 = v308;
    v102(v272 + v308, v103);
    v308 = v101;
    v307 = v102;
    v102(v110, v103);
    v111 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v314 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v250 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    v265 = v111;
    sub_22B360A9C();
    v112 = v314;
    v113 = v292;
    v82 = v297;
    if (v297)
    {
      a7 = v269;
      v114 = v298;
      if (v297[2])
      {
        v115 = qword_28140A0C8;

        if (v115 != -1)
        {
LABEL_100:
          swift_once();
        }

        v116 = __swift_project_value_buffer(v113, qword_28140BD10);
        swift_beginAccess();
        v117 = v257;
        (*(v114 + 16))(v257, v116, v113);

        v118 = sub_22B36050C();
        v119 = sub_22B360D2C();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v312 = v121;
          *v120 = 136315138;
          v122 = MEMORY[0x23188E390](v297, MEMORY[0x277D837D0]);
          v124 = sub_22B1A7B20(v122, v123, &v312);

          *(v120 + 4) = v124;
          _os_log_impl(&dword_22B116000, v118, v119, "[IntervalReadingRecords] Excluding meters %s", v120, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v121);
          v125 = v121;
          v114 = v298;
          MEMORY[0x23188F650](v125, -1, -1);
          v126 = v120;
          v82 = v297;
          MEMORY[0x23188F650](v126, -1, -1);
        }

        (*(v114 + 8))(v117, v113);
        v127 = swift_allocObject();
        *(v127 + 16) = v256;
        *(v127 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
        *(v127 + 64) = sub_22B30D340(&qword_27D8BADD0);
        *(v127 + 32) = v82;
        v128 = sub_22B360CCC();
        MEMORY[0x23188E350]();
        if (*((v314 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v251 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22B360A7C();
        }

        sub_22B360A9C();

        v112 = v314;
        a7 = v269;
      }
    }

    else
    {
      a7 = v269;
      v114 = v298;
    }

    v129 = objc_allocWithZone(MEMORY[0x277CCA920]);
    v130 = sub_22B360A3C();
    v131 = [v129 initWithType:1 subpredicates:v130];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v132 = __swift_project_value_buffer(v113, qword_28140BD10);
    swift_beginAccess();
    (*(v114 + 16))(v306, v132, v113);
    v75 = v131;
    v133 = sub_22B36050C();
    v134 = sub_22B360D2C();

    v135 = os_log_type_enabled(v133, v134);
    v40 = v268;
    if (v135)
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v136 = 138412290;
      *(v136 + 4) = v75;
      *v137 = v75;
      v138 = v75;
      _os_log_impl(&dword_22B116000, v133, v134, "[IntervalReadingRecords] Fetching records using predicate %@", v136, 0xCu);
      sub_22B123284(v137, &unk_27D8BAA90, &unk_22B362BC0);
      v139 = v137;
      v114 = v298;
      MEMORY[0x23188F650](v139, -1, -1);
      MEMORY[0x23188F650](v136, -1, -1);
    }

    v140 = *(v114 + 8);
    v114 += 8;
    v140(v306, v113);
    [v40 setPredicate_];
    [v40 setFetchBatchSize_];
    [v40 setReturnsObjectsAsFaults_];
    v82 = v288;
    v141 = v293;
    v142 = sub_22B360E9C();
    v267 = v141;
    if (v141)
    {
      goto LABEL_18;
    }

    v144 = v142 >> 62 ? sub_22B36109C() : *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v144 < 1)
    {
      goto LABEL_18;
    }

    v313 = MEMORY[0x23188E590](v144, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v145 = v267;
    v146 = sub_22B360E9C();
    v267 = v145;
    if (v145)
    {

LABEL_18:
    }

    *&v256 = v146;
    v147 = v146 >> 62 ? sub_22B36109C() : *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v147)
    {
      break;
    }

    v148 = 0;
    v264 = v256 & 0xC000000000000001;
    v253 = v256 & 0xFFFFFFFFFFFFFF8;
    v252 = v256 + 32;
    v288 = a11;
    v278 = a10;
    v298 = v258 + 16;
    v301 = (v254 + 8);
    v275 = (v282 + 16);
    v293 = (v282 + 56);
    v279 = (v282 + 32);
    v292 = (v273 + 16);
    v266 = v282 + 40;
    v277 = (v282 + 48);
    v297 = (v258 + 8);
    LODWORD(v276) = a9;
    v263 = v112;
    v255 = v75;
    v262 = v147;
    while (1)
    {
      if (v264)
      {
        v149 = MEMORY[0x23188EAC0](v148, v256);
      }

      else
      {
        if (v148 >= *(v253 + 16))
        {
          __break(1u);
          goto LABEL_100;
        }

        v149 = *(v252 + 8 * v148);
      }

      v150 = v149;
      v151 = __OFADD__(v148, 1);
      v152 = v148 + 1;
      if (v151)
      {
        goto LABEL_97;
      }

      v271 = v152;
      v270 = MEMORY[0x23188EEB0]();
      v153 = v313;
      v272 = v150;
      v154 = [v150 recordID];
      v114 = sub_22B36084C();
      v156 = v155;

      if (*(v153 + 16))
      {
        v157 = *(v153 + 40);
        sub_22B36149C();
        sub_22B3608FC();
        v158 = sub_22B3614DC();
        v159 = -1 << *(v153 + 32);
        v160 = v158 & ~v159;
        if ((*(v153 + 56 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160))
        {
          v113 = ~v159;
          while (1)
          {
            v161 = (*(v153 + 48) + 16 * v160);
            v162 = *v161 == v114 && v161[1] == v156;
            if (v162 || (sub_22B36134C() & 1) != 0)
            {
              break;
            }

            v160 = (v160 + 1) & v113;
            if (((*(v153 + 56 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

LABEL_93:
          v82 = v272;
          goto LABEL_30;
        }
      }

LABEL_45:

      v82 = v272;
      v163 = [v272 recordID];
      v164 = sub_22B36084C();
      v166 = v165;

      sub_22B32DF50(&v312, v164, v166);

      sub_22B35FDCC();
      v167 = [v82 readings];
      v114 = sub_22B35DCDC();
      v169 = v168;

      v170 = sub_22B35FDBC();
      sub_22B12F174(v114, v169);
      v171 = *(v170 + 16);
      if (v171)
      {
        break;
      }

LABEL_30:
      objc_autoreleasePoolPop(v270);

      v148 = v271;
      if (v271 == v262)
      {
        goto LABEL_94;
      }
    }

    v172 = (*(v258 + 80) + 32) & ~*(v258 + 80);
    v257 = v170;
    v173 = v170 + v172;
    v299 = *(v258 + 72);
    v300 = *(v258 + 16);
    v174 = v285;
    v113 = v284;
    v175 = v283;
    v176 = v296;
    v177 = v295;
    while (1)
    {
      v306 = v171;
      v305 = v173;
      v179 = v300(v176);
      v304 = MEMORY[0x23188EEB0](v179);
      v180 = v302;
      sub_22B35FE2C();
      sub_22B36038C();
      v181 = *v301;
      (*v301)(v180, v175);
      v114 = sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578]);
      v182 = v309;
      v183 = sub_22B36074C();
      v307(v113, v182);
      if ((v183 & 1) == 0)
      {
        v184 = v302;
        sub_22B35FDEC();
        sub_22B36038C();
        v177 = v295;
        v181(v184, v175);
        v185 = v174 + v291[12];
        v186 = v309;
        v187 = sub_22B36074C();
        v307(v113, v186);
        if ((v187 & 1) == 0)
        {
          break;
        }
      }

LABEL_48:
      objc_autoreleasePoolPop(v304);
      (*v297)(v176, v177);
      v173 = v305 + v299;
      v171 = v306 - 1;
      if (v306 == 1)
      {

        a7 = v269;
        v40 = v268;
        v75 = v255;
        goto LABEL_93;
      }
    }

    v188 = v302;
    sub_22B35FE2C();
    sub_22B36038C();
    v181(v188, v175);
    if (v276 > 1)
    {
      v75 = v294;
      a7 = v309;
      v40 = v288;
      if (v276 == 2)
      {
        sub_22B35F5DC();
      }

      else
      {
        sub_22B35F56C();
      }
    }

    else
    {
      v75 = v294;
      a7 = v309;
      v40 = v288;
      if (v276)
      {
        sub_22B35F50C();
      }

      else
      {
        sub_22B35F51C();
      }
    }

    v189 = v277;
    v307(v113, a7);
    v190 = *v40;
    if (*(*v40 + 16))
    {
      v191 = sub_22B33B348(v303);
      if (v192)
      {
        v193 = *(v190 + 56);
        v194 = v282;
        v195 = *(v282 + 72);
        v196 = v281;
        (*(v282 + 16))(v281, v193 + v195 * v191, v75);
        v82 = *(v194 + 56);
        (v82)(v196, 0, 1, v75);
        sub_22B123284(v196, &qword_27D8BADC8, &unk_22B366F90);
        goto LABEL_72;
      }
    }

    v82 = *v293;
    v197 = v281;
    (*v293)(v281, 1, 1, v75);
    sub_22B123284(v197, &qword_27D8BADC8, &unk_22B366F90);
    v198 = v274;
    sub_22B35EFDC();
    v199 = *v279;
    (*v279)(v286, v198, v75);
    v200 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v312 = *v40;
    v202 = v312;
    *v40 = 0x8000000000000000;
    v203 = sub_22B33B348(v303);
    v205 = *(v202 + 16);
    v206 = (v204 & 1) == 0;
    v151 = __OFADD__(v205, v206);
    v207 = v205 + v206;
    if (!v151)
    {
      v208 = v204;
      if (*(v202 + 24) >= v207)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_66;
        }

        v211 = v203;
        sub_22B342B94();
        v203 = v211;
        v210 = v312;
        if ((v208 & 1) == 0)
        {
          goto LABEL_69;
        }

LABEL_67:
        v195 = *(v282 + 72);
        v75 = v294;
        (*(v282 + 40))(v210[7] + v195 * v203, v286, v294);
      }

      else
      {
        sub_22B33EAE4(v207, isUniquelyReferenced_nonNull_native);
        v203 = sub_22B33B348(v303);
        if ((v208 & 1) != (v209 & 1))
        {
          result = sub_22B3613BC();
          __break(1u);
          return result;
        }

LABEL_66:
        v210 = v312;
        if (v208)
        {
          goto LABEL_67;
        }

LABEL_69:
        v210[(v203 >> 6) + 8] |= 1 << v203;
        v212 = v203;
        (*(v273 + 16))(v210[6] + *(v273 + 72) * v203, v303, a7);
        v195 = *(v282 + 72);
        v75 = v294;
        v199(v210[7] + v195 * v212, v286, v294);
        v213 = v210[2];
        v151 = __OFADD__(v213, 1);
        v214 = v213 + 1;
        if (v151)
        {
          goto LABEL_96;
        }

        v210[2] = v214;
      }

      v215 = *v40;
      *v40 = v210;

LABEL_72:
      v216 = *v40;
      if (*(*v40 + 16) && (v217 = sub_22B33B348(v303), (v218 & 1) != 0))
      {
        v219 = v216[7] + v195 * v217;
        v220 = v287;
        (*v275)(v287, v219, v75);
        v221 = 0;
      }

      else
      {
        v221 = 1;
        v220 = v287;
      }

      (v82)(v220, v221, 1, v75);
      v222 = *v189;
      if (!(*v189)(v220, 1, v75))
      {
        sub_22B35EFEC();
        v220 = v287;
      }

      sub_22B123284(v220, &qword_27D8BADC8, &unk_22B366F90);
      sub_22B35FE4C();
      v223 = *v292;
      (*v292)(v289, v303, v309);
      v224 = sub_22B2F781C(&v312);
      if (!v222(v225, 1, v75))
      {
        sub_22B35EFFC();
      }

      (v224)(&v312, 0);
      v177 = v295;
      v307(v289, v309);
      v226 = *v40;
      v227 = v294;
      if (*(*v40 + 16) && (v228 = sub_22B33B348(v303), (v229 & 1) != 0))
      {
        v230 = v226[7] + v195 * v228;
        v231 = v280;
        (*v275)(v280, v230, v227);
        v232 = 0;
      }

      else
      {
        v232 = 1;
        v231 = v280;
      }

      (v82)(v231, v232, 1, v227);
      v233 = 0.0;
      v234 = v227;
      if (!v222(v231, 1, v227))
      {
        v235 = sub_22B35FE0C();
        v236 = sub_22B35EFCC();
        if (*(v236 + 16))
        {
          v237 = sub_22B33B41C(v235);
          if (v238)
          {
            v233 = *(*(v236 + 56) + 8 * v237);
          }
        }

        v234 = v294;
      }

      sub_22B123284(v231, &qword_27D8BADC8, &unk_22B366F90);
      sub_22B35FE4C();
      v240 = v239;
      v223(v290, v303, v309);
      v241 = sub_22B2F781C(&v312);
      if (!v222(v242, 1, v234))
      {
        v243 = sub_22B35FE0C();
        v244 = sub_22B35EFBC();
        v246 = v245;
        v247 = *v245;
        v248 = swift_isUniquelyReferenced_nonNull_native();
        v310 = *v246;
        *v246 = 0x8000000000000000;
        sub_22B33FC20(v243, v248, v233 + v240);
        v249 = *v246;
        *v246 = v310;

        v244(v311, 0);
      }

      (v241)(&v312, 0);
      v114 = v309;
      v178 = v307;
      v307(v290, v309);
      v178(v303, v114);
      v174 = v285;
      v113 = v284;
      v175 = v283;
      v176 = v296;
      goto LABEL_48;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    sub_22B360A7C();
  }

LABEL_94:

  [a7 reset];
}