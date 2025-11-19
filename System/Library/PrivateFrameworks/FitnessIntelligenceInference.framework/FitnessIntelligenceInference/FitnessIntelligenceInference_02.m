uint64_t sub_20CCBB6A4()
{
  v1 = v0[97];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];

  (*(v4 + 8))(v2, v3);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_20CCBB75C, 0, 0);
}

uint64_t sub_20CCBB75C()
{
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[66];
  v43 = v0[65];
  v45 = v0[70];
  v6 = v0[56];
  v41 = v0[57];
  v7 = v0[55];
  v8 = v0[45];
  v9 = v0[46];
  v10 = v0[44];

  (*(v8 + 8))(v9, v10);

  (*(v6 + 8))(v41, v7);
  (*(v5 + 8))(v45, v43);
  v46 = v0[100];
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[61];
  v18 = v0[62];
  v19 = v0[60];
  v20 = v0[57];
  v23 = v0[54];
  v24 = v0[53];
  v25 = v0[50];
  v26 = v0[49];
  v27 = v0[48];
  v28 = v0[46];
  v29 = v0[43];
  v30 = v0[42];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[35];
  v34 = v0[32];
  v35 = v0[29];
  v36 = v0[28];
  v37 = v0[27];
  v38 = v0[24];
  v39 = v0[21];
  v40 = v0[20];
  v42 = v0[19];
  v44 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CCBB9DC()
{
  v1 = v0[15];
  sub_20CCC6724(v0[48], v0[102], v0[103]);

  return MEMORY[0x2822009F8](sub_20CCBBA5C, 0, 0);
}

uint64_t sub_20CCBBA5C()
{
  v1 = v0[91];

  v2 = v0[85];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[13];
  sub_20CCC5BD0(v0[48], v0[49], type metadata accessor for AudioSynthesisHandle);
  (*(v4 + 8))(v3, v5);

  v7 = sub_20CCDB1B4();
  v9 = v8;
  v0[86] = v8;
  v10 = swift_task_alloc();
  v0[87] = v10;
  *v10 = v0;
  v10[1] = sub_20CCBA5E4;
  v11 = v0[17];

  return sub_20CCC4CFC(v7, v9, v11);
}

uint64_t sub_20CCBBB68()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[17];
  sub_20CCCB530(v0[104], v0[105]);

  v4 = *(v1 + *(v2 + 32));
  v0[106] = v4;

  return MEMORY[0x2822009F8](sub_20CCBBBFC, v4, 0);
}

uint64_t sub_20CCBBBFC()
{
  v1 = *(v0 + 848);
  if (*(v1 + 168))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v1 = *(v0 + 848);
  }

  else
  {
    Current = *(v1 + 160);
  }

  *(v0 + 856) = Current;
  *(v0 + 864) = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_20CCBBC84, 0, 0);
}

uint64_t sub_20CCBBC84()
{
  v1 = *(v0 + 736);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 856) - *(v0 + 864);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_20CC86000, v2, v3, "Audio synthesis duration=%f", v5, 0xCu);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v6 = *(v0 + 736);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);

  sub_20CCC575C(v7, v8, type metadata accessor for PlayAudioResult);
  v9 = sub_20CCDB564();
  v10 = sub_20CCDB8B4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  if (v11)
  {
    v13 = *(v0 + 328);
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = *(v12 + *(v13 + 24));
    sub_20CCC56A8(v12, type metadata accessor for PlayAudioResult);
    *(v14 + 4) = v15;
    _os_log_impl(&dword_20CC86000, v9, v10, "Playback duration=%f", v14, 0xCu);
    MEMORY[0x20F30FD70](v14, -1, -1);

    if ((sub_20CCDB3D4() & 1) == 0)
    {
LABEL_5:
      v16 = *(v0 + 168);
      v17 = sub_20CCDA6A4();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      v46 = *(v0 + 808);
      v47 = *(v0 + 784);
      v38 = *(v0 + 632);
      v39 = *(v0 + 624);
      v48 = *(v0 + 552);
      v49 = *(v0 + 544);
      v43 = *(v0 + 528);
      v44 = *(v0 + 520);
      v45 = *(v0 + 560);
      v50 = *(v0 + 536);
      v51 = *(v0 + 512);
      v52 = *(v0 + 504);
      v53 = *(v0 + 496);
      v54 = *(v0 + 488);
      v55 = *(v0 + 480);
      v18 = *(v0 + 448);
      v40 = *(v0 + 440);
      v41 = *(v0 + 456);
      v56 = *(v0 + 432);
      v57 = *(v0 + 424);
      v59 = *(v0 + 400);
      v42 = *(v0 + 392);
      v62 = *(v0 + 384);
      v64 = *(v0 + 368);
      v19 = *(v0 + 344);
      v20 = *(v0 + 328);
      v67 = *(v0 + 336);
      v68 = *(v0 + 320);
      v69 = *(v0 + 312);
      v21 = *(v0 + 856) - *(v0 + 864);
      v22 = v19 + v20[7];
      v23 = *(v19 + v20[6]);
      v36 = *v22;
      v37 = *(v19 + v20[5]);
      v35 = *(v22 + 8);
      v58 = *(v0 + 280);
      v60 = *(v0 + 256);
      v61 = *(v0 + 232);
      v63 = *(v0 + 224);
      v65 = *(v0 + 216);
      v66 = *(v0 + 192);
      v24 = *(v0 + 160);
      v25 = *(v0 + 168);
      v26 = *(v0 + 144);
      v70 = *(v0 + 152);
      v27 = *(v0 + 96);
      v28 = sub_20CCDB104();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v26, v19, v28);
      (*(v29 + 56))(v26, 0, 1, v28);
      sub_20CC89500(v25, v24, &qword_27C80F820, &qword_20CCDCF50);
      sub_20CCDB0D4();

      sub_20CC89568(v25, &qword_27C80F820, &qword_20CCDCF50);
      sub_20CCC56A8(v19, type metadata accessor for PlayAudioResult);
      (*(v18 + 8))(v41, v40);
      v46(v45, v44);
      sub_20CCC56A8(v42, type metadata accessor for AudioSynthesisHandle);

      v30 = *(v0 + 8);

      return v30();
    }
  }

  else
  {

    sub_20CCC56A8(v12, type metadata accessor for PlayAudioResult);
    if ((sub_20CCDB3D4() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 872) = v32;
  *v32 = v0;
  v32[1] = sub_20CCBC294;
  v33 = *(v0 + 392);
  v34 = *(v0 + 152);

  return sub_20CCA86B8(v34);
}

uint64_t sub_20CCBC294()
{
  v2 = *(*v1 + 872);
  v5 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v3 = sub_20CCBC7B8;
  }

  else
  {
    v3 = sub_20CCBC3A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCBC3A8()
{
  v1 = *(v0 + 152);
  sub_20CC89500(v1, *(v0 + 168), &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v1, type metadata accessor for SynthesizedAudio);
  v27 = *(v0 + 808);
  v28 = *(v0 + 784);
  v19 = *(v0 + 632);
  v20 = *(v0 + 624);
  v29 = *(v0 + 552);
  v30 = *(v0 + 544);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 560);
  v31 = *(v0 + 536);
  v32 = *(v0 + 512);
  v33 = *(v0 + 504);
  v34 = *(v0 + 496);
  v35 = *(v0 + 488);
  v36 = *(v0 + 480);
  v2 = *(v0 + 448);
  v21 = *(v0 + 440);
  v22 = *(v0 + 456);
  v37 = *(v0 + 432);
  v38 = *(v0 + 424);
  v40 = *(v0 + 400);
  v23 = *(v0 + 392);
  v43 = *(v0 + 384);
  v45 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  v48 = *(v0 + 336);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v5 = *(v0 + 856) - *(v0 + 864);
  v6 = v3 + v4[7];
  v7 = *(v3 + v4[6]);
  v17 = *v6;
  v18 = *(v3 + v4[5]);
  v8 = *(v6 + 8);
  v39 = *(v0 + 280);
  v41 = *(v0 + 256);
  v42 = *(v0 + 232);
  v44 = *(v0 + 224);
  v46 = *(v0 + 216);
  v47 = *(v0 + 192);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v51 = *(v0 + 152);
  v12 = *(v0 + 96);
  v13 = sub_20CCDB104();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, v3, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_20CC89500(v9, v10, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();

  sub_20CC89568(v9, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v3, type metadata accessor for PlayAudioResult);
  (*(v2 + 8))(v22, v21);
  v27(v26, v25);
  sub_20CCC56A8(v23, type metadata accessor for AudioSynthesisHandle);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20CCBC7B8()
{
  v1 = *(v0 + 168);

  v2 = sub_20CCDA6A4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v28 = *(v0 + 808);
  v29 = *(v0 + 784);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v30 = *(v0 + 552);
  v31 = *(v0 + 544);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 560);
  v32 = *(v0 + 536);
  v33 = *(v0 + 512);
  v34 = *(v0 + 504);
  v35 = *(v0 + 496);
  v36 = *(v0 + 488);
  v37 = *(v0 + 480);
  v3 = *(v0 + 448);
  v22 = *(v0 + 440);
  v23 = *(v0 + 456);
  v38 = *(v0 + 432);
  v39 = *(v0 + 424);
  v41 = *(v0 + 400);
  v24 = *(v0 + 392);
  v44 = *(v0 + 384);
  v46 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  v49 = *(v0 + 336);
  v50 = *(v0 + 320);
  v51 = *(v0 + 312);
  v6 = *(v0 + 856) - *(v0 + 864);
  v7 = v4 + v5[7];
  v8 = *(v4 + v5[6]);
  v18 = *v7;
  v19 = *(v4 + v5[5]);
  v17 = *(v7 + 8);
  v40 = *(v0 + 280);
  v42 = *(v0 + 256);
  v43 = *(v0 + 232);
  v45 = *(v0 + 224);
  v47 = *(v0 + 216);
  v48 = *(v0 + 192);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 144);
  v52 = *(v0 + 152);
  v12 = *(v0 + 96);
  v13 = sub_20CCDB104();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, v4, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_20CC89500(v10, v9, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();

  sub_20CC89568(v10, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v4, type metadata accessor for PlayAudioResult);
  (*(v3 + 8))(v23, v22);
  v28(v27, v26);
  sub_20CCC56A8(v24, type metadata accessor for AudioSynthesisHandle);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20CCBCBCC()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[70];
  v4 = v0[66];
  v5 = v0[65];

  (*(v4 + 8))(v3, v5);
  v38 = v0[83];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v11 = v0[63];
  v10 = v0[64];
  v12 = v0[61];
  v13 = v0[62];
  v14 = v0[60];
  v15 = v0[57];
  v18 = v0[54];
  v19 = v0[53];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[46];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[35];
  v29 = v0[32];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[27];
  v33 = v0[24];
  v34 = v0[21];
  v35 = v0[20];
  v36 = v0[19];
  v37 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CCBCDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v7 = sub_20CCDB284();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBCEB4, 0, 0);
}

uint64_t sub_20CCBCEB4()
{
  v23 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDB274();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to cancel announcement for request ID %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[3];
  v18 = v0[4];
  v0[8] = sub_20CCDB274();
  v0[9] = v20;

  return MEMORY[0x2822009F8](sub_20CCBD0C0, v18, 0);
}

uint64_t sub_20CCBD0C0()
{
  v1 = *(v0 + 32);
  *(v0 + 105) = sub_20CCCB808(*(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_20CCBD140, 0, 0);
}

uint64_t sub_20CCBD140()
{
  v1 = v0[3];
  v2 = sub_20CCDB274();
  v4 = v3;
  v0[10] = v3;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_20CCBD248;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 13, 0, 0, 0xD00000000000001ALL, 0x800000020CCDE5E0, sub_20CCC4B90, v5, v8);
}

uint64_t sub_20CCBD248()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CCC62D8, 0, 0);
}

uint64_t sub_20CCBD37C(IOPMAssertionID *a1)
{
  v2 = sub_20CCDB584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_20CCDB394();
    v8 = sub_20CCDB564();
    v9 = sub_20CCDB8B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20CC86000, v8, v9, "Releasing power assertion for inference pipeline", v10, 2u);
      MEMORY[0x20F30FD70](v10, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return IOPMAssertionRelease(*a1);
  }

  return result;
}

uint64_t sub_20CCBD4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F978, &qword_20CCDD5D0) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBD574, 0, 0);
}

uint64_t sub_20CCBD574()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_20CCDAE64();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_20CCBD620;
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_20CCBD7F8(v10, v4, v5, v8, v9, v6, v7);
}

uint64_t sub_20CCBD620()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  sub_20CC89568(v3, &qword_27C80F978, &qword_20CCDD5D0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCBD794, 0, 0);
  }

  else
  {
    v5 = v4[9];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_20CCBD794()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_20CCBD7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_20CCDB114();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = *(*(sub_20CCDB2D4() - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v12 = sub_20CCDAF54();
  v7[13] = v12;
  v13 = *(v12 - 8);
  v7[14] = v13;
  v14 = *(v13 + 64) + 15;
  v7[15] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F978, &qword_20CCDD5D0) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v16 = sub_20CCDB054();
  v7[17] = v16;
  v17 = *(v16 - 8);
  v7[18] = v17;
  v18 = *(v17 + 64) + 15;
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBD9E0, 0, 0);
}

uint64_t sub_20CCBD9E0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_20CC89500(v0[3], v3, &qword_27C80F978, &qword_20CCDD5D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CC89568(v0[16], &qword_27C80F978, &qword_20CCDD5D0);
    v4 = type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice(0);
    v5 = v0[19];
    v7 = v0[15];
    v6 = v0[16];
    v9 = v0[11];
    v8 = v0[12];
    (*(*(v4 - 8) + 56))(v0[2], 1, 1);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[12];
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    sub_20CCDB034();
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_20CCBDBC8;
    v14 = v0[15];
    v15 = v0[12];
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];

    return sub_20CCC2958(v14, v15);
  }
}

uint64_t sub_20CCBDBC8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 168) = v0;

  sub_20CCC56A8(v3, MEMORY[0x277D0A608]);
  if (v0)
  {
    v4 = sub_20CCBE0F4;
  }

  else
  {
    v4 = sub_20CCBDD0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCBDD0C()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[11];
  v4 = sub_20CCDAF34();
  v6 = v5;
  v0[22] = v5;
  v7 = sub_20CCDAF44();
  v9 = v8;
  v0[23] = v8;
  sub_20CCDB044();
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_20CCBDE00;
  v11 = v0[11];
  v12 = v0[4];

  return sub_20CC976F0(v4, v6, v7, v9, v11);
}

uint64_t sub_20CCBDE00()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_20CCBDF98, 0, 0);
}

uint64_t sub_20CCBDF98()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[2];
  (*(v5 + 16))(v7, v4, v6);
  v8 = type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice(0);
  v9 = v7 + *(v8 + 20);
  sub_20CCDB044();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[11];
  v13 = v0[12];
  (*(*(v8 - 8) + 56))(v0[2], 0, 1, v8);

  v15 = v0[1];

  return v15();
}

uint64_t sub_20CCBE0F4()
{
  v1 = v0[16];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_20CCBE1AC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  return MEMORY[0x2822009F8](sub_20CCBE1D4, 0, 0);
}

uint64_t sub_20CCBE1D4()
{
  v1 = *(v0 + 3);
  v2 = sub_20CCDAE44();
  v4 = v3;
  *(v0 + 6) = v3;
  v5 = swift_task_alloc();
  *(v0 + 7) = v5;
  *v5 = v0;
  v5[1] = sub_20CCBE288;
  v6 = v0[5];
  v7 = *(v0 + 4);
  v8 = *(v0 + 2);

  return sub_20CCC50A4(v2, v4, v7, v8, v6);
}

uint64_t sub_20CCBE288()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCBE3C4, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_20CCBE3C4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_20CCBE428(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v21;
  *(v8 + 152) = v20;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = sub_20CCDB514();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_20CCDB4E4();
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v15 = sub_20CCDB504();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBE5DC, 0, 0);
}

uint64_t sub_20CCBE5DC()
{
  v1 = *(v0 + 256);
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  v3 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v6, "textInference", "", v5, 2u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  v10 = *(v0 + 224);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v27 = *(v0 + 312);
  v13 = *(v0 + 120);
  v26 = *(v0 + 112);
  v14 = *(v0 + 104);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 160);

  (*(v12 + 16))(v10, v13, v11);
  v15 = sub_20CCDB544();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 264) = sub_20CCDB534();
  v18 = *(v9 + 8);
  *(v0 + 272) = v18;
  *(v0 + 280) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v7, v8);
  v19 = swift_task_alloc();
  *(v0 + 288) = v19;
  *(v19 + 16) = v23;
  *(v19 + 32) = v25;
  *(v19 + 48) = v24;
  *(v19 + 64) = v14;
  *(v19 + 72) = v26;
  *(v19 + 80) = v27 & 1;
  v20 = *(MEMORY[0x277D0A040] + 4);
  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  *v21 = v0;
  v21[1] = sub_20CCBE810;

  return MEMORY[0x282160B38](v0 + 16, &unk_20CCDD5B0, v19, &type metadata for TokenGenerationResult);
}

uint64_t sub_20CCBE810(double a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;
  v5 = *(v3 + 296);
  v9 = *v2;
  *(v4 + 304) = v1;

  if (v1)
  {
    v6 = sub_20CCBEB84;
  }

  else
  {
    v7 = *(v4 + 288);

    v6 = sub_20CCBE938;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CCBE938()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v30 = *(v0 + 24);
  v31 = *(v0 + 16);
  v32 = *(v0 + 48);
  v33 = *(v0 + 32);
  v29 = *(v0 + 64);
  sub_20CCDB374();
  v4 = sub_20CCDB4F4();
  sub_20CCDB524();
  v5 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v6 = *(v0 + 264);
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 176);

    sub_20CCDB554();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v10 = "";
    }

    v11 = *(v0 + 216);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v4, v5, v13, "textInference", v10, v12, 2u);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 272);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 248);
  v19 = *(v0 + 232);
  v26 = *(v0 + 280);
  v27 = *(v0 + 224);
  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v22 = *(v0 + 200);
  v28 = *(v0 + 192);
  v23 = *(v0 + 96);

  (*(v21 + 8))(v20, v22);
  v15(v18, v19);

  *v23 = v14;
  *(v23 + 8) = v31;
  *(v23 + 16) = v30;
  *(v23 + 40) = v32;
  *(v23 + 24) = v33;
  *(v23 + 56) = v29;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20CCBEB84()
{
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];

  v8 = v0[1];
  v9 = v0[38];

  return v8();
}

uint64_t sub_20CCBEC38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v45 = a7;
  v46 = a6;
  v47 = a4;
  v48 = a5;
  v43 = a2;
  v44 = a3;
  v41 = a1;
  v50 = sub_20CCDAE04();
  v42 = *(v50 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CCDAE94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_20CCDA744();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - v17;
  result = sub_20CCDB3D4();
  if (result)
  {
    v20 = sub_20CCDB794();
    v21 = *(*(v20 - 8) + 56);
    v40 = v18;
    v21(v18, 1, 1, v20);
    v22 = *(v12 + 16);
    v38 = v11;
    v22(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v11);
    v23 = *(v9 + 16);
    v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = v8;
    v23(v39, v43, v8);
    v25 = v42;
    (*(v42 + 16))(v49, v44, v50);
    v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v27 = (v13 + *(v9 + 80) + v26) & ~*(v9 + 80);
    v28 = (v10 + *(v25 + 80) + v27) & ~*(v25 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v12 + 32))(v29 + v26, v14, v38);
    (*(v9 + 32))(v29 + v27, v39, v24);
    (*(v25 + 32))(v29 + v28, v49, v50);
    v30 = (v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v47;
    v32 = v48;
    *v30 = v47;
    v30[1] = v32;
    v33 = v45;
    v34 = v46;
    v30[2] = v46;
    v30[3] = v33;
    v35 = v31;

    v36 = v34;

    sub_20CCAA31C(0, 0, v40, &unk_20CCDD5A0, v29);
  }

  return result;
}

uint64_t sub_20CCBF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v35;
  *(v8 + 536) = v34;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 144) = a2;
  *(v8 + 152) = a3;
  *(v8 + 136) = a1;
  v9 = sub_20CCDA784();
  *(v8 + 208) = v9;
  v10 = *(v9 - 8);
  *(v8 + 216) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v12 = sub_20CCDB514();
  *(v8 + 232) = v12;
  v13 = *(v12 - 8);
  *(v8 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F950, &qword_20CCDD4D8);
  *(v8 + 256) = v15;
  v16 = *(v15 - 8);
  *(v8 + 264) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  *(v8 + 280) = v18;
  v19 = *(v18 - 8);
  *(v8 + 288) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  *(v8 + 304) = v21;
  v22 = *(v21 - 8);
  *(v8 + 312) = v22;
  *(v8 + 320) = *(v22 + 64);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v23 = type metadata accessor for AudioSynthesisHandle(0);
  *(v8 + 344) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v25 = sub_20CCDB4E4();
  *(v8 + 360) = v25;
  v26 = *(v25 - 8);
  *(v8 + 368) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v28 = sub_20CCDB504();
  *(v8 + 392) = v28;
  v29 = *(v28 - 8);
  *(v8 + 400) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60) - 8) + 64) + 15;
  *(v8 + 424) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBF3C8, 0, 0);
}

uint64_t sub_20CCBF3C8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = qword_28110E630;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_20CCDB584();
    __swift_project_value_buffer(v4, qword_28110EE00);
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB8B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CC86000, v5, v6, "Server returned synthesized audio, no need for local synthesis", v7, 2u);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v8 = *(v0 + 424);
    v9 = *(v0 + 344);
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 152);
    v63 = *(v0 + 144);
    v13 = *(v0 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
    swift_allocObject();
    v14 = sub_20CCDB464();
    v15 = sub_20CCDB794();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v3;
    v17 = v3;

    sub_20CCAA31C(0, 0, v8, &unk_20CCDD530, v16);

    v18 = v9[6];
    v19 = sub_20CCDAF54();
    (*(*(v19 - 8) + 16))(v13 + v18, v11, v19);
    v20 = v9[7];
    v21 = sub_20CCDB114();
    (*(*(v21 - 8) + 16))(v13 + v20, v10, v21);
    sub_20CCDAA64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
    swift_allocObject();
    v22 = sub_20CCD9DE8(v14);

    *(v13 + v9[8]) = v22;
    *(v13 + 40) = v63;
    *(v13 + 48) = v12;
    v23 = *(v0 + 16);
    v24 = *(v0 + 32);
    *(v13 + 32) = *(v0 + 48);
    *v13 = v23;
    *(v13 + 16) = v24;
    v26 = *(v0 + 416);
    v25 = *(v0 + 424);
    v27 = *(v0 + 408);
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 352);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v33 = *(v0 + 296);
    v61 = *(v0 + 272);
    v62 = *(v0 + 248);
    v64 = *(v0 + 224);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 416);
    sub_20CCDB374();
    v37 = sub_20CCDB4F4();
    v38 = sub_20CCDB8D4();
    if (sub_20CCDB8E4())
    {
      v39 = *(v0 + 192);
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = sub_20CCDB4D4();
      _os_signpost_emit_with_name_impl(&dword_20CC86000, v37, v38, v41, "audioSynthesis", "", v40, 2u);
      MEMORY[0x20F30FD70](v40, -1, -1);
    }

    v42 = *(v0 + 416);
    v43 = *(v0 + 392);
    v44 = *(v0 + 400);
    v45 = *(v0 + 384);
    v46 = *(v0 + 360);
    v47 = *(v0 + 368);
    v48 = *(v0 + 192);

    (*(v47 + 16))(v45, v48, v46);
    v49 = sub_20CCDB544();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    *(v0 + 432) = sub_20CCDB534();
    v52 = *(v44 + 8);
    *(v0 + 440) = v52;
    *(v0 + 448) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52(v42, v43);
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v53 = sub_20CCDB584();
    __swift_project_value_buffer(v53, qword_28110EE00);
    v54 = sub_20CCDB564();
    v55 = sub_20CCDB8B4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20CC86000, v54, v55, "Requesting audio synthesis…", v56, 2u);
      MEMORY[0x20F30FD70](v56, -1, -1);
    }

    v57 = *(v0 + 168);
    v58 = *(v0 + 176);

    *(v0 + 456) = sub_20CCDAF34();
    *(v0 + 464) = v59;
    *(v0 + 472) = sub_20CCDAF44();
    *(v0 + 480) = v60;

    return MEMORY[0x2822009F8](sub_20CCBF97C, v57, 0);
  }
}

uint64_t sub_20CCBF97C()
{
  v24 = *(v0 + 456);
  v25 = *(v0 + 472);
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v19 = *(v0 + 328);
  v20 = *(v0 + 320);
  v18 = *(v0 + 304);
  v21 = *(v0 + 296);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v23 = *(v0 + 184);
  v7 = *(v0 + 168);
  v22 = *(v0 + 144);
  sub_20CCDAA94();
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v6);
  sub_20CCDB804();
  (*(v5 + 8))(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v8 = sub_20CCDB464();
  *(v0 + 488) = v8;
  sub_20CCDB774();
  v9 = sub_20CCDB794();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  (*(v3 + 16))(v19, v2, v18);
  v10 = sub_20CCC5E3C(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v7;
  *(v12 + 3) = v10;
  *(v12 + 4) = v7;
  (*(v3 + 32))(&v12[v11], v19, v18);
  *&v12[(v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v1, &unk_20CCDD520, v12);

  v13 = swift_task_alloc();
  *(v0 + 496) = v13;
  *(v13 + 16) = v7;
  *(v13 + 24) = v21;
  *(v13 + 32) = v22;
  *(v13 + 48) = v24;
  *(v13 + 64) = v25;
  *(v13 + 80) = v23;
  v14 = *(MEMORY[0x277D85A40] + 4);
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  type metadata accessor for AudioStreamBasicDescription(0);
  *v15 = v0;
  v15[1] = sub_20CCBFCCC;

  return MEMORY[0x2822008A0](v0 + 56, v7, v10, 0xD000000000000038, 0x800000020CCDE630, sub_20CCC62DC, v13, v16);
}

uint64_t sub_20CCBFCCC()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v11 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = v2[62];
    v5 = v2[60];
    v6 = v2[58];
    v7 = v2[21];

    v8 = sub_20CCC02B0;
    v9 = v7;
  }

  else
  {
    v9 = v2[21];
    v8 = sub_20CCBFE14;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_20CCBFE14()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 312);
  v23 = *(v0 + 304);
  v24 = *(v0 + 336);
  v9 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 296);
  v10 = *(v0 + 184);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 56);
  v14 = *(v0 + 72);
  *(v0 + 128) = *(v0 + 88);
  *(v0 + 96) = v13;
  *(v0 + 112) = v14;
  v15 = v7 + v6[6];
  sub_20CCDAF24();
  v16 = v6[7];
  v17 = sub_20CCDB114();
  (*(*(v17 - 8) + 16))(v7 + v16, v10, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
  swift_allocObject();
  v18 = sub_20CCD9DE8(v2);

  (*(v8 + 8))(v24, v23);
  *(v7 + v6[8]) = v18;
  *(v7 + 40) = v12;
  *(v7 + 48) = v11;
  v19 = *(v0 + 96);
  v20 = *(v0 + 112);
  *(v7 + 32) = *(v0 + 128);
  *v7 = v19;
  *(v7 + 16) = v20;
  v21 = *(v9 + 8);

  v21(v26, v25);

  return MEMORY[0x2822009F8](sub_20CCBFFA8, 0, 0);
}

uint64_t sub_20CCBFFA8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 376);
  sub_20CCDB374();
  v4 = sub_20CCDB4F4();
  sub_20CCDB524();
  v5 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v6 = *(v0 + 432);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);

    sub_20CCDB554();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v10 = "";
    }

    v11 = *(v0 + 376);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v4, v5, v13, "audioSynthesis", v10, v12, 2u);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 408);
  v17 = *(v0 + 392);
  v19 = *(v0 + 368);
  v18 = *(v0 + 376);
  v20 = *(v0 + 360);
  v21 = *(v0 + 536);

  (*(v19 + 8))(v18, v20);
  v15(v16, v17);
  if (v21 == 1)
  {
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    sub_20CCDA774();
    *(v0 + 520) = sub_20CCDA754();
    *(v0 + 528) = v26;
    (*(v23 + 8))(v22, v24);

    return MEMORY[0x2822009F8](sub_20CCC0474, v25, 0);
  }

  else
  {
    v27 = *(v0 + 432);

    v28 = *(v0 + 496);
    sub_20CCC5BD0(*(v0 + 352), *(v0 + 136), type metadata accessor for AudioSynthesisHandle);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v31 = *(v0 + 408);
    v33 = *(v0 + 376);
    v32 = *(v0 + 384);
    v34 = *(v0 + 352);
    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    v37 = *(v0 + 296);
    v38 = *(v0 + 272);
    v41 = *(v0 + 248);
    v42 = *(v0 + 224);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_20CCC02B0()
{
  v1 = v0[61];
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];

  (*(v4 + 8))(v2, v3);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_20CCC0368, 0, 0);
}

uint64_t sub_20CCC0368()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[37];
  v14 = v0[34];
  v15 = v0[31];
  v16 = v0[28];

  v11 = v0[1];
  v12 = v0[64];

  return v11();
}

uint64_t sub_20CCC0474()
{
  v1 = v0[25];
  sub_20CCC6724(v0[44], v0[65], v0[66]);

  return MEMORY[0x2822009F8](sub_20CCC04F4, 0, 0);
}

uint64_t sub_20CCC04F4()
{
  v1 = v0[54];

  v2 = v0[62];
  sub_20CCC5BD0(v0[44], v0[17], type metadata accessor for AudioSynthesisHandle);

  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[37];
  v12 = v0[34];
  v15 = v0[31];
  v16 = v0[28];

  v13 = v0[1];

  return v13();
}

uint64_t sub_20CCC0628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 369) = a8;
  *(v8 + 368) = a7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_20CCDB514();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v12 = sub_20CCDB9D4();
  *(v8 + 88) = v12;
  v13 = *(v12 - 8);
  *(v8 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_20CCDB9C4();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v18 = *(*(type metadata accessor for SynthesizedAudio(0) - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v19 = sub_20CCDB104();
  *(v8 + 152) = v19;
  v20 = *(v19 - 8);
  *(v8 + 160) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v22 = sub_20CCDB4E4();
  *(v8 + 176) = v22;
  v23 = *(v22 - 8);
  *(v8 + 184) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v25 = sub_20CCDB504();
  *(v8 + 208) = v25;
  v26 = *(v25 - 8);
  *(v8 + 216) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC0918, 0, 0);
}

uint64_t sub_20CCC0918()
{
  v1 = *(v0 + 232);
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  v3 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v6, "audioPlayback", "", v5, 2u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 56);

  (*(v12 + 16))(v10, v13, v11);
  v14 = sub_20CCDB544();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 240) = sub_20CCDB534();
  v17 = *(v9 + 8);
  *(v0 + 248) = v17;
  *(v0 + 256) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v7, v8);
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_20CCC0ADC;
  v19 = *(v0 + 168);
  v20 = *(v0 + 369);
  v21 = *(v0 + 368);
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);

  return sub_20CC981C0(v19, v24, v25, v22, v21, v20);
}

uint64_t sub_20CCC0ADC(char a1, double a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v10 = *v2;
  *(v4 + 370) = a1;
  *(v4 + 272) = a2;

  v6 = swift_task_alloc();
  *(v4 + 280) = v6;
  *v6 = v10;
  v6[1] = sub_20CCC0C44;
  v7 = *(v3 + 144);
  v8 = *(v3 + 48);

  return sub_20CCA86B8(v7);
}

uint64_t sub_20CCC0C44()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCC1FD8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[37] = v4;
    *v4 = v3;
    v4[1] = sub_20CCC0DB0;
    v5 = v3[18];

    return sub_20CCA9290();
  }
}

uint64_t sub_20CCC0DB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  v4[38] = v1;

  v7 = v4[18];
  if (v1)
  {
    sub_20CCC56A8(v7, type metadata accessor for SynthesizedAudio);
    v8 = sub_20CCC2498;
  }

  else
  {
    v4[39] = a1;
    sub_20CCC56A8(v7, type metadata accessor for SynthesizedAudio);
    v8 = sub_20CCC0F20;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20CCC0F20()
{
  v82 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 370);
  sub_20CCDAA84();
  v4 = v3;
  *(v0 + 320) = v3;

  v5 = v4 <= 0.0 || v2 == 0;
  if (v5 || (v6 = *(v0 + 168), (sub_20CCDB0F4() & 1) == 0))
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v35 = sub_20CCDB584();
    __swift_project_value_buffer(v35, qword_28110EE00);
    v36 = sub_20CCDB564();
    v37 = sub_20CCDB8B4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 272);
      v39 = *(v0 + 370);
      v40 = swift_slowAlloc();
      *v40 = 67109376;
      *(v40 + 4) = v39;
      *(v40 + 8) = 2048;
      *(v40 + 10) = v38;
      _os_log_impl(&dword_20CC86000, v36, v37, "Voice playback success=%{BOOL}d startDelay=%f", v40, 0x12u);
      MEMORY[0x20F30FD70](v40, -1, -1);
    }

    v41 = *(v0 + 240);
    v42 = *(v0 + 224);
    v43 = *(v0 + 192);

    sub_20CCDB374();
    v44 = sub_20CCDB4F4();
    sub_20CCDB524();
    v45 = sub_20CCDB8C4();
    if (sub_20CCDB8E4())
    {
      v46 = *(v0 + 240);
      v47 = *(v0 + 72);
      v48 = *(v0 + 80);
      v49 = *(v0 + 64);

      sub_20CCDB554();

      if ((*(v47 + 88))(v48, v49) == *MEMORY[0x277D85B00])
      {
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        v50 = "";
      }

      v51 = *(v0 + 192);
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = sub_20CCDB4D4();
      _os_signpost_emit_with_name_impl(&dword_20CC86000, v44, v45, v53, "audioPlayback", v50, v52, 2u);
      MEMORY[0x20F30FD70](v52, -1, -1);
    }

    v54 = *(v0 + 272);
    v70 = *(v0 + 370);
    v68 = *(v0 + 248);
    v69 = *(v0 + 256);
    v55 = *(v0 + 240);
    v56 = *(v0 + 224);
    v57 = *(v0 + 208);
    v71 = *(v0 + 232);
    v72 = *(v0 + 200);
    v59 = *(v0 + 184);
    v58 = *(v0 + 192);
    v60 = *(v0 + 176);
    v67 = *(v0 + 168);
    v62 = *(v0 + 152);
    v61 = *(v0 + 160);
    v73 = *(v0 + 144);
    v74 = *(v0 + 136);
    v76 = *(v0 + 128);
    v78 = *(v0 + 104);
    v80 = *(v0 + 80);
    v63 = *(v0 + 16);

    (*(v59 + 8))(v58, v60);
    v68(v56, v57);
    (*(v61 + 32))(v63, v67, v62);
    v64 = type metadata accessor for PlayAudioResult(0);
    *(v63 + v64[5]) = v70;
    *(v63 + v64[6]) = v54;
    v65 = v63 + v64[7];
    *v65 = v4;
    *(v65 + 8) = 0;

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v7 = sub_20CCDB584();
    *(v0 + 328) = __swift_project_value_buffer(v7, qword_28110EE00);
    v8 = sub_20CCDB564();
    v9 = sub_20CCDB8B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20CC86000, v8, v9, "Audio playback began successfully", v10, 2u);
      MEMORY[0x20F30FD70](v10, -1, -1);
    }

    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);

    sub_20CCDB9A4();
    sub_20CCDBBA4();
    sub_20CCDB9A4();
    sub_20CCDB9B4();
    v15 = *(v14 + 8);
    *(v0 + 336) = v15;
    *(v0 + 344) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v13);
    sub_20CCDBBA4();
    sub_20CCDBB84();
    v16 = sub_20CCDBB94();
    v18 = v17;
    v19 = sub_20CCDB564();
    v20 = sub_20CCDB8B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v21 = 136315650;
      v22 = sub_20CCDBB74();
      v77 = v18;
      v79 = v16;
      v24 = sub_20CC88C4C(v22, v23, &v81);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = sub_20CCDBB74();
      v27 = sub_20CC88C4C(v25, v26, &v81);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      v28 = sub_20CCDBB74();
      v30 = sub_20CC88C4C(v28, v29, &v81);
      v16 = v79;

      *(v21 + 24) = v30;
      v18 = v77;
      _os_log_impl(&dword_20CC86000, v19, v20, "Waiting %s seconds for playback to complete (audio duration %s, tone duration %s)", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F30FD70](v75, -1, -1);
      MEMORY[0x20F30FD70](v21, -1, -1);
    }

    v31 = *(v0 + 104);
    sub_20CCDBAD4();
    v32 = swift_task_alloc();
    *(v0 + 352) = v32;
    *v32 = v0;
    v32[1] = sub_20CCC1628;
    v33 = *(v0 + 104);

    return sub_20CCD3F68(v16, v18, 0, 0, 1);
  }
}

uint64_t sub_20CCC1628()
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 360) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_20CCC1B3C;
  }

  else
  {
    v6 = sub_20CCC1798;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CCC1798()
{
  v1 = *(v0 + 344);
  (*(v0 + 336))(*(v0 + 136), *(v0 + 112));
  v46 = *(v0 + 320);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 370);
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v6;
    *(v7 + 8) = 2048;
    *(v7 + 10) = v5;
    _os_log_impl(&dword_20CC86000, v3, v4, "Voice playback success=%{BOOL}d startDelay=%f", v7, 0x12u);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  v10 = *(v0 + 192);

  sub_20CCDB374();
  v11 = sub_20CCDB4F4();
  sub_20CCDB524();
  v12 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v14 + 88))(v15, v16) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v17 = "";
    }

    v18 = *(v0 + 192);
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v11, v12, v20, "audioPlayback", v17, v19, 2u);
    MEMORY[0x20F30FD70](v19, -1, -1);
  }

  v21 = *(v0 + 272);
  v38 = *(v0 + 370);
  v36 = *(v0 + 248);
  v37 = *(v0 + 256);
  v22 = *(v0 + 240);
  v23 = *(v0 + 224);
  v24 = *(v0 + 208);
  v39 = *(v0 + 232);
  v40 = *(v0 + 200);
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v27 = *(v0 + 176);
  v35 = *(v0 + 168);
  v29 = *(v0 + 152);
  v28 = *(v0 + 160);
  v41 = *(v0 + 144);
  v42 = *(v0 + 136);
  v43 = *(v0 + 128);
  v44 = *(v0 + 104);
  v45 = *(v0 + 80);
  v30 = *(v0 + 16);

  (*(v26 + 8))(v25, v27);
  v36(v23, v24);
  (*(v28 + 32))(v30, v35, v29);
  v31 = type metadata accessor for PlayAudioResult(0);
  *(v30 + v31[5]) = v38;
  *(v30 + v31[6]) = v21;
  v32 = v30 + v31[7];
  *v32 = v46;
  *(v32 + 8) = 0;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_20CCC1B3C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  (*(v0 + 336))(*(v0 + 136), *(v0 + 112));
  v4 = v1;
  v5 = sub_20CCDB564();
  v6 = sub_20CCDB8B4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 360);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20CC86000, v5, v6, "Failed to sleep due to: %@. Assuming audio playback is complete.", v9, 0xCu);
    sub_20CC89568(v10, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v10, -1, -1);
    MEMORY[0x20F30FD70](v9, -1, -1);
  }

  else
  {
  }

  v57 = *(v0 + 320);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v13 = sub_20CCDB584();
  __swift_project_value_buffer(v13, qword_28110EE00);
  v14 = sub_20CCDB564();
  v15 = sub_20CCDB8B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 272);
    v17 = *(v0 + 370);
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = v17;
    *(v18 + 8) = 2048;
    *(v18 + 10) = v16;
    _os_log_impl(&dword_20CC86000, v14, v15, "Voice playback success=%{BOOL}d startDelay=%f", v18, 0x12u);
    MEMORY[0x20F30FD70](v18, -1, -1);
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(v0 + 192);

  sub_20CCDB374();
  v22 = sub_20CCDB4F4();
  sub_20CCDB524();
  v23 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 72);
    v26 = *(v0 + 80);
    v27 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v25 + 88))(v26, v27) == *MEMORY[0x277D85B00])
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v28 = "";
    }

    v29 = *(v0 + 192);
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v22, v23, v31, "audioPlayback", v28, v30, 2u);
    MEMORY[0x20F30FD70](v30, -1, -1);
  }

  v32 = *(v0 + 272);
  v49 = *(v0 + 370);
  v47 = *(v0 + 248);
  v48 = *(v0 + 256);
  v33 = *(v0 + 240);
  v34 = *(v0 + 224);
  v35 = *(v0 + 208);
  v50 = *(v0 + 232);
  v51 = *(v0 + 200);
  v37 = *(v0 + 184);
  v36 = *(v0 + 192);
  v38 = *(v0 + 176);
  v46 = *(v0 + 168);
  v40 = *(v0 + 152);
  v39 = *(v0 + 160);
  v52 = *(v0 + 144);
  v53 = *(v0 + 136);
  v54 = *(v0 + 128);
  v55 = *(v0 + 104);
  v56 = *(v0 + 80);
  v41 = *(v0 + 16);

  (*(v37 + 8))(v36, v38);
  v47(v34, v35);
  (*(v39 + 32))(v41, v46, v40);
  v42 = type metadata accessor for PlayAudioResult(0);
  *(v41 + v42[5]) = v49;
  *(v41 + v42[6]) = v32;
  v43 = v41 + v42[7];
  *v43 = v57;
  *(v43 + 8) = 0;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_20CCC1FD8()
{
  v1 = *(v0 + 288);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Could not get duration of synthesized audio: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  else
  {
  }

  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_28110EE00);
  v10 = sub_20CCDB564();
  v11 = sub_20CCDB8B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 272);
    v13 = *(v0 + 370);
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = v13;
    *(v14 + 8) = 2048;
    *(v14 + 10) = v12;
    _os_log_impl(&dword_20CC86000, v10, v11, "Voice playback success=%{BOOL}d startDelay=%f", v14, 0x12u);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 192);

  sub_20CCDB374();
  v18 = sub_20CCDB4F4();
  sub_20CCDB524();
  v19 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v20 = *(v0 + 240);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v21 + 88))(v22, v23) == *MEMORY[0x277D85B00])
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v24 = "";
    }

    v25 = *(v0 + 192);
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v18, v19, v27, "audioPlayback", v24, v26, 2u);
    MEMORY[0x20F30FD70](v26, -1, -1);
  }

  v28 = *(v0 + 272);
  v45 = *(v0 + 370);
  v43 = *(v0 + 248);
  v44 = *(v0 + 256);
  v29 = *(v0 + 240);
  v30 = *(v0 + 224);
  v31 = *(v0 + 208);
  v46 = *(v0 + 232);
  v47 = *(v0 + 200);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v34 = *(v0 + 176);
  v42 = *(v0 + 168);
  v36 = *(v0 + 152);
  v35 = *(v0 + 160);
  v48 = *(v0 + 144);
  v49 = *(v0 + 136);
  v50 = *(v0 + 128);
  v51 = *(v0 + 104);
  v52 = *(v0 + 80);
  v37 = *(v0 + 16);

  (*(v33 + 8))(v32, v34);
  v43(v30, v31);
  (*(v35 + 32))(v37, v42, v36);
  v38 = type metadata accessor for PlayAudioResult(0);
  *(v37 + v38[5]) = v45;
  *(v37 + v38[6]) = v28;
  v39 = v37 + v38[7];
  *v39 = 0;
  *(v39 + 8) = 1;

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_20CCC2498()
{
  v1 = *(v0 + 304);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Could not get duration of synthesized audio: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  else
  {
  }

  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_28110EE00);
  v10 = sub_20CCDB564();
  v11 = sub_20CCDB8B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 272);
    v13 = *(v0 + 370);
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = v13;
    *(v14 + 8) = 2048;
    *(v14 + 10) = v12;
    _os_log_impl(&dword_20CC86000, v10, v11, "Voice playback success=%{BOOL}d startDelay=%f", v14, 0x12u);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 192);

  sub_20CCDB374();
  v18 = sub_20CCDB4F4();
  sub_20CCDB524();
  v19 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v20 = *(v0 + 240);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v21 + 88))(v22, v23) == *MEMORY[0x277D85B00])
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v24 = "";
    }

    v25 = *(v0 + 192);
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v18, v19, v27, "audioPlayback", v24, v26, 2u);
    MEMORY[0x20F30FD70](v26, -1, -1);
  }

  v28 = *(v0 + 272);
  v45 = *(v0 + 370);
  v43 = *(v0 + 248);
  v44 = *(v0 + 256);
  v29 = *(v0 + 240);
  v30 = *(v0 + 224);
  v31 = *(v0 + 208);
  v46 = *(v0 + 232);
  v47 = *(v0 + 200);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v34 = *(v0 + 176);
  v42 = *(v0 + 168);
  v36 = *(v0 + 152);
  v35 = *(v0 + 160);
  v48 = *(v0 + 144);
  v49 = *(v0 + 136);
  v50 = *(v0 + 128);
  v51 = *(v0 + 104);
  v52 = *(v0 + 80);
  v37 = *(v0 + 16);

  (*(v33 + 8))(v32, v34);
  v43(v30, v31);
  (*(v35 + 32))(v37, v42, v36);
  v38 = type metadata accessor for PlayAudioResult(0);
  *(v37 + v38[5]) = v45;
  *(v37 + v38[6]) = v28;
  v39 = v37 + v38[7];
  *v39 = 0;
  *(v39 + 8) = 1;

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_20CCC2958(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(sub_20CCDB2D4() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC2A24, 0, 0);
}

uint64_t sub_20CCC2A24()
{
  v1 = v0[6];
  sub_20CCC575C(v0[3], v1, MEMORY[0x277D0A608]);
  v2 = sub_20CCDAF54();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v0[8] = v3;
  v4 = *(v3 + 48);
  v0[9] = v4;
  v0[10] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = [objc_allocWithZone(sub_20CCDA904()) init];
    v0[11] = v5;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_20CCC2C2C;
    v10 = v0[4];
    v9 = v0[5];

    return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92850, v6, v10);
  }

  else
  {
    v11 = v0[5];
    (*(v3 + 32))(v0[2], v0[6], v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20CCC2C2C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCC2D44, 0, 0);
}

uint64_t sub_20CCC2D44()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  if (v2(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 48);
    sub_20CC89568(*(v0 + 40), &qword_27C80F468, &unk_20CCDCD30);
    sub_20CCC5708();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  else
  {
    v8 = *(v0 + 48);
    (*(*(v0 + 64) + 32))(*(v0 + 16), *(v0 + 40), *(v0 + 56));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20CCC2E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 72) = a8;
  *(v8 + 80) = v10;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20CCC2EB4, 0, 0);
}

uint64_t sub_20CCC2EB4()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1 & 1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_20CCC2FA4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);

  return sub_20CCC335C(v10, 4, v6, v7, &unk_20CCDD5C0, v4);
}

uint64_t sub_20CCC2FA4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCC30E0, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_20CCC30E0()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_20CCC3144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a1;
  v8 = swift_task_alloc();
  *(v4 + 80) = v8;
  *v8 = v4;
  v8[1] = sub_20CCC31FC;

  return sub_20CCC6F80(v4 + 16, a2, a3, a4 & 1);
}

uint64_t sub_20CCC31FC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCC332C, 0, 0);
  }
}

uint64_t sub_20CCC332C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  *(v4 + 48) = *(v0 + 64);
  *(v4 + 16) = v2;
  *(v4 + 32) = v3;
  *v4 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_20CCC335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20CCC3388, 0, 0);
}

uint64_t sub_20CCC3388()
{
  if (v0[3] < 1)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v7 = sub_20CCDB584();
    __swift_project_value_buffer(v7, qword_28110EE00);
    v8 = sub_20CCDB564();
    v9 = sub_20CCDB894();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20CC86000, v8, v9, "Max attempts reached", v10, 2u);
      MEMORY[0x20F30FD70](v10, -1, -1);
    }

    sub_20CCC5708();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }

  else
  {
    v1 = v0[6];
    v0[8] = 0;
    v13 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_20CCC35AC;
    v4 = v0[7];
    v5 = v0[2];

    return v13(v5);
  }
}

uint64_t sub_20CCC35AC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCC36E0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20CCC36E0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_20CCDB584();
  v0[11] = __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB894();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CC86000, v4, v5, "Failure: %@", v7, 0xCu);
    sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  v11 = v0[4];

  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_20CCC3904;
  v14 = v0[5];

  return v16();
}

uint64_t sub_20CCC3904()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_20CCC3B6C;
  }

  else
  {
    v3 = sub_20CCC3A18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCC3A18()
{
  v1 = v0[11];
  v2 = v0[8] + 1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 2 * v2;
    _os_log_impl(&dword_20CC86000, v3, v4, "Retrying in %ld seconds", v5, 0xCu);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v6 = v0[8];

  if (v6 == 0x225C17D04)
  {
    __break(1u);
  }

  else
  {
    v8 = *(MEMORY[0x277D857E8] + 4);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_20CCC3BD0;
    v7 = 2000000000 * v2;
  }

  return MEMORY[0x282200480](v7);
}

uint64_t sub_20CCC3B6C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CCC3BD0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_20CCC3F20;
  }

  else
  {
    v3 = sub_20CCC3CE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCC3CE4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64) + 1;

  if (v2 == v1)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v3 = sub_20CCDB584();
    __swift_project_value_buffer(v3, qword_28110EE00);
    v4 = sub_20CCDB564();
    v5 = sub_20CCDB894();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20CC86000, v4, v5, "Max attempts reached", v6, 2u);
      MEMORY[0x20F30FD70](v6, -1, -1);
    }

    sub_20CCC5708();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    ++*(v0 + 64);
    v14 = (*(v0 + 48) + **(v0 + 48));
    v10 = *(*(v0 + 48) + 4);
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_20CCC35AC;
    v12 = *(v0 + 56);
    v13 = *(v0 + 16);

    return v14(v13);
  }
}

uint64_t sub_20CCC3F20()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CCC3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[2] = a5;
  v6 = *(MEMORY[0x277CEF708] + 4);
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_20CCC4028;

  return MEMORY[0x282141C28](v5 + 2);
}

uint64_t sub_20CCC4028()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CCC4124, 0, 0);
}

uint64_t sub_20CCC4124()
{
  v1 = *(v0 + 24);
  sub_20CCDB444();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CCC4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(sub_20CCDA784() - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v9 = sub_20CCDAE04();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = sub_20CCDAE94();
  v7[10] = v12;
  v13 = *(v12 - 8);
  v7[11] = v13;
  v14 = *(v13 + 64) + 15;
  v7[12] = swift_task_alloc();
  v15 = sub_20CCDA744();
  v7[13] = v15;
  v16 = *(v15 - 8);
  v7[14] = v16;
  v17 = *(v16 + 64) + 15;
  v7[15] = swift_task_alloc();
  v18 = sub_20CCDADE4();
  v7[16] = v18;
  v19 = *(v18 - 8);
  v7[17] = v19;
  v20 = *(v19 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC438C, 0, 0);
}

uint64_t sub_20CCC438C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[19] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Inserting inference record", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[15];
  v29 = v0[18];
  v30 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v25 = v0[10];
  v10 = v2;
  v11 = v0[8];
  v27 = v0[9];
  v28 = v0[7];
  v12 = v0[6];
  v13 = v0[3];
  v26 = v0[4];
  v14 = v0[2];

  (*(v6 + 16))(v5, v14, v7);
  (*(v8 + 16))(v9, v13, v25);
  (*(v11 + 16))(v27, v26, v28);
  sub_20CCDB3C4();
  sub_20CCDA774();
  sub_20CCDADD4();
  sub_20CCC5E3C(&qword_27C80F530, MEMORY[0x277D0A010]);
  v15 = sub_20CCDAFD4();
  v0[20] = v15;
  v0[21] = v16;
  v17 = v15;
  v18 = v16;
  v19 = v0[5];
  v20 = swift_task_alloc();
  v0[22] = v20;
  v20[2] = v19;
  v20[3] = v17;
  v20[4] = v18;
  v21 = *(MEMORY[0x277D85A40] + 4);
  v22 = swift_task_alloc();
  v0[23] = v22;
  *v22 = v0;
  v22[1] = sub_20CCC47F8;
  v23 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 25, 0, 0, 0xD000000000000011, 0x800000020CCDE720, sub_20CCC5E84, v20, v23);
}

uint64_t sub_20CCC47F8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_20CCC49D4;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_20CCC4914;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCC4914()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_20CC9720C(v0[20], v0[21]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CCC49D4()
{
  v1 = v0[22];
  sub_20CC9720C(v0[20], v0[21]);

  v2 = v0[24];
  v3 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v4 = v2;
  v5 = sub_20CCDB564();
  v6 = sub_20CCDB894();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CC86000, v5, v6, "Failed to save inference record: %@", v7, 0xCu);
    sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

void sub_20CCC4B90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_20CC9C864(a1);
}

uint64_t sub_20CCC4BB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_20CC92A0C;

  return sub_20CC9B040(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_20CCC4CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_20CCC4D20, a3, 0);
}

uint64_t sub_20CCC4D20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  swift_beginAccess();
  v4 = *(v2 + 120);

  *(v0 + 64) = sub_20CCCE534(v3, v1, v4) & 1;

  return MEMORY[0x2822009F8](sub_20CCC4DD0, 0, 0);
}

uint64_t sub_20CCC4DD0()
{
  v13 = v0;
  if (*(v0 + 64) == 1)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 48);
    v2 = sub_20CCDB584();
    __swift_project_value_buffer(v2, qword_28110EE00);

    v3 = sub_20CCDB564();
    v4 = sub_20CCDB894();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20CC88C4C(v6, v5, &v12);
      _os_log_impl(&dword_20CC86000, v3, v4, "Request %s was cancelled", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F30FD70](v8, -1, -1);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v9 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_20CCC4FA8, v9, 0);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_20CCC4FA8()
{
  v1 = v0[7];
  sub_20CCCB530(v0[5], v0[6]);

  return MEMORY[0x2822009F8](sub_20CCC5014, 0, 0);
}

uint64_t sub_20CCC5014()
{
  sub_20CCC5708();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CCC50A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a3;
  v9 = sub_20CCDA744();
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v5 + 64) = v12;
  *v12 = v5;
  v12[1] = sub_20CCC51C0;

  return sub_20CCC4CFC(a1, a2, a4);
}

uint64_t sub_20CCC51C0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCC5314, 0, 0);
  }
}

uint64_t sub_20CCC5314()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[2];
  sub_20CCDA704();
  sub_20CCDA724();
  v5 = sub_20CCDA714();
  v7 = v0[6];
  v6 = v0[7];
  if (v5)
  {
    v8 = v0[6];
    sub_20CCDA6F4();
    v10 = v9;
    sub_20CCDA6F4();
    v12 = v11;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v13 = sub_20CCDB584();
    __swift_project_value_buffer(v13, qword_28110EE00);
    v14 = sub_20CCDB564();
    v15 = sub_20CCDB894();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v10 - v12;
      _os_log_impl(&dword_20CC86000, v14, v15, "Inference deadline was %fs ago, failing", v16, 0xCu);
      MEMORY[0x20F30FD70](v16, -1, -1);
    }

    v17 = sub_20CCDB564();
    v18 = sub_20CCDB8A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20CC86000, v17, v18, "Inference timed out", v19, 2u);
      MEMORY[0x20F30FD70](v19, -1, -1);
    }

    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[4];
    v23 = v0[5];

    sub_20CCC5708();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    v25 = *(v23 + 8);
    v25(v21, v22);
    v25(v20, v22);
    v27 = v0[6];
    v26 = v0[7];

    v28 = v0[1];
  }

  else
  {
    v29 = v0[7];
    sub_20CCDA6F4();
    v31 = v30;
    sub_20CCDA6F4();
    v33 = v32;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v34 = sub_20CCDB584();
    __swift_project_value_buffer(v34, qword_28110EE00);
    v35 = sub_20CCDB564();
    v36 = sub_20CCDB8B4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v31 - v33;
      _os_log_impl(&dword_20CC86000, v35, v36, "Timeout check complete, proceeding with %fs remaining", v37, 0xCu);
      MEMORY[0x20F30FD70](v37, -1, -1);
    }

    v39 = v0[6];
    v38 = v0[7];
    v40 = v0[4];
    v41 = v0[5];

    v42 = *(v41 + 8);
    v42(v39, v40);
    v42(v38, v40);

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_20CCC56A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CCC5708()
{
  result = qword_27C80F958;
  if (!qword_27C80F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F958);
  }

  return result;
}

uint64_t sub_20CCC575C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CCC58E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CC92A0C;

  return sub_20CCC3F84(a1, v4, v5, v7, v6);
}

uint64_t sub_20CCC59C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CCDAE94() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20CC8DF7C;

  return sub_20CCBD4CC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_20CCC5B00()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_20CC92A0C;

  return sub_20CCBE1AC(v8, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_20CCC5BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CCC5C38(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_20CCDA744() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = v5;
  v6 = *(v4 + 64);
  v7 = *(sub_20CCDAE94() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20CCDAE04() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_20CC8DF7C;

  return sub_20CCC4184(a1, v12, v13, v1 + v21, v1 + v8, v1 + v11, v15);
}

uint64_t sub_20CCC5E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CCC5E90(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20CC92A0C;

  return sub_20CCC2E74(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_20CCC5F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CC92A0C;

  return sub_20CCC3144(a1, v4, v5, v6);
}

uint64_t sub_20CCC6064()
{
  result = sub_20CCDAF54();
  if (v1 <= 0x3F)
  {
    result = sub_20CCDB114();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20CCC6120()
{
  sub_20CCDB104();
  if (v0 <= 0x3F)
  {
    sub_20CCC61BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CCC61BC()
{
  if (!qword_27C80F9A0)
  {
    v0 = sub_20CCDB904();
    if (!v1)
    {
      atomic_store(v0, &qword_27C80F9A0);
    }
  }
}

unint64_t sub_20CCC6210()
{
  result = qword_27C80F9A8;
  if (!qword_27C80F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F9A8);
  }

  return result;
}

uint64_t sub_20CCC6264()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_20CCB8490();
}

uint64_t sub_20CCC62E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9D8, &qword_20CCDD750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9E0, &qword_20CCDD758);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-v13];
  v15 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher____lazy_storage____audioAddedStream;
  swift_beginAccess();
  sub_20CC89500(v1 + v15, v14, &qword_27C80F9E0, &qword_20CCDD758);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F870, &qword_20CCDDD90);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  sub_20CC89568(v14, &qword_27C80F9E0, &qword_20CCDD758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B0, &qword_20CCDDDA0);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
  sub_20CCDB7D4();
  (*(v17 + 16))(v12, a1, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  sub_20CCC6F18(v12, v1 + v15, &qword_27C80F9E0, &qword_20CCDD758);
  return swift_endAccess();
}

uint64_t sub_20CCC65D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B8, &qword_20CCDD730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F868, &qword_20CCDD060);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation;
  swift_beginAccess();
  sub_20CCC6F18(v7, a2 + v10, &qword_27C80F9B8, &qword_20CCDD730);
  return swift_endAccess();
}

uint64_t sub_20CCC6724(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B0, &qword_20CCDDDA0);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = (&v41 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F868, &qword_20CCDD060);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B8, &qword_20CCDD730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C0, &qword_20CCDD738);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C8, &qword_20CCDD740);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v41 - v23;
  sub_20CCC6EAC(a1, &v41 - v23);
  v25 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  swift_beginAccess();

  v44 = a2;
  sub_20CCCD914(v24, a2, a3);
  swift_endAccess();
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v26 = sub_20CCDB584();
  __swift_project_value_buffer(v26, qword_28110EE00);

  v27 = sub_20CCDB564();
  v28 = sub_20CCDB8B4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = a1;
    v31 = swift_slowAlloc();
    v46 = v31;
    *v29 = 136315394;
    *(v29 + 4) = sub_20CC88C4C(v44, a3, &v46);
    *(v29 + 12) = 2048;
    *(v29 + 14) = *(*(v4 + 112) + 16);

    _os_log_impl(&dword_20CC86000, v27, v28, "[%s] Audio added to manager. Total: %ld", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v32 = v31;
    a1 = v30;
    MEMORY[0x20F30FD70](v32, -1, -1);
    MEMORY[0x20F30FD70](v29, -1, -1);
  }

  else
  {
  }

  v33 = v45;
  v34 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation;
  swift_beginAccess();
  sub_20CC89500(v4 + v34, v16, &qword_27C80F9B8, &qword_20CCDD730);
  if ((*(v33 + 48))(v16, 1, v10))
  {
    sub_20CC89568(v16, &qword_27C80F9B8, &qword_20CCDD730);
    v35 = 1;
  }

  else
  {
    v36 = v41;
    (*(v33 + 16))(v41, v16, v10);
    sub_20CC89568(v16, &qword_27C80F9B8, &qword_20CCDD730);
    v37 = v43;
    v38 = *(v42 + 48);
    *v43 = v44;
    v37[1] = a3;
    sub_20CCC6EAC(a1, v37 + v38);

    sub_20CCDB7A4();
    (*(v33 + 8))(v36, v10);
    v35 = 0;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9D0, &qword_20CCDD748);
  (*(*(v39 - 8) + 56))(v20, v35, 1, v39);
  return sub_20CC89568(v20, &qword_27C80F9C0, &qword_20CCDD738);
}

uint64_t sub_20CCC6C7C()
{
  v1 = *(v0 + 112);

  sub_20CC89568(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation, &qword_27C80F9B8, &qword_20CCDD730);
  sub_20CC89568(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher____lazy_storage____audioAddedStream, &qword_27C80F9E0, &qword_20CCDD758);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for StreamingAudioPublisher()
{
  result = qword_28110EDC0;
  if (!qword_28110EDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CCC6D48()
{
  sub_20CCC6E58(319, &qword_28110E618, &qword_27C80F868, &qword_20CCDD060);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_20CCC6E58(319, &qword_28110E610, &qword_27C80F870, &qword_20CCDDD90);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_20CCC6E58(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_20CCDB904();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CCC6EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCC6F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CCC6F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 648) = a4;
  *(v4 + 136) = a2;
  *(v4 + 144) = a3;
  *(v4 + 128) = a1;
  v5 = sub_20CCDABF4();
  *(v4 + 152) = v5;
  v6 = *(v5 - 8);
  *(v4 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v8 = sub_20CCDAC14();
  *(v4 + 176) = v8;
  v9 = *(v8 - 8);
  *(v4 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v11 = sub_20CCDAB84();
  *(v4 + 208) = v11;
  v12 = *(v11 - 8);
  *(v4 + 216) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v14 = sub_20CCDAC44();
  *(v4 + 232) = v14;
  v15 = *(v14 - 8);
  *(v4 + 240) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9E8, &qword_20CCDD768);
  *(v4 + 256) = v17;
  v18 = *(v17 - 8);
  *(v4 + 264) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9F0, &qword_20CCDD770) - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9F8, &qword_20CCDD778);
  *(v4 + 296) = v21;
  v22 = *(v21 - 8);
  *(v4 + 304) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  v24 = sub_20CCDB594();
  *(v4 + 320) = v24;
  v25 = *(v24 - 8);
  *(v4 + 328) = v25;
  v26 = *(v25 + 64) + 15;
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA00, &qword_20CCDD780);
  *(v4 + 360) = v27;
  v28 = *(v27 - 8);
  *(v4 + 368) = v28;
  v29 = *(v28 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA08, &qword_20CCDD788);
  *(v4 + 384) = v30;
  v31 = *(v30 - 8);
  *(v4 + 392) = v31;
  v32 = *(v31 + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  v33 = sub_20CCDB4A4();
  *(v4 + 408) = v33;
  v34 = *(v33 - 8);
  *(v4 + 416) = v34;
  v35 = *(v34 + 64) + 15;
  *(v4 + 424) = swift_task_alloc();
  v36 = *(*(sub_20CCDA824() - 8) + 64) + 15;
  *(v4 + 432) = swift_task_alloc();
  v37 = sub_20CCDB304();
  *(v4 + 440) = v37;
  v38 = *(v37 - 8);
  *(v4 + 448) = v38;
  v39 = *(v38 + 64) + 15;
  *(v4 + 456) = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA10, &qword_20CCDD790) - 8) + 64) + 15;
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA18, &qword_20CCDD798);
  *(v4 + 480) = v41;
  v42 = *(v41 - 8);
  *(v4 + 488) = v42;
  v43 = *(v42 + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  v44 = *(*(sub_20CCDABC4() - 8) + 64) + 15;
  *(v4 + 504) = swift_task_alloc();
  v45 = sub_20CCDACC4();
  *(v4 + 512) = v45;
  v46 = *(v45 - 8);
  *(v4 + 520) = v46;
  v47 = *(v46 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v48 = sub_20CCDB3B4();
  *(v4 + 544) = v48;
  v49 = *(v48 - 8);
  *(v4 + 552) = v49;
  v50 = *(v49 + 64) + 15;
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  v51 = sub_20CCDAE94();
  *(v4 + 592) = v51;
  v52 = *(v51 - 8);
  *(v4 + 600) = v52;
  v53 = *(v52 + 64) + 15;
  *(v4 + 608) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC76C0, 0, 0);
}

uint64_t sub_20CCC76C0()
{
  v140 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 136);
  v5 = sub_20CCDB584();
  *(v0 + 616) = __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  if (v8)
  {
    v12 = *(v0 + 584);
    v13 = *(v0 + 552);
    v129 = *(v0 + 544);
    v14 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v139[0] = v134;
    *v14 = 136315138;
    v131 = v7;
    sub_20CCDAE84();
    v15 = sub_20CCDB3A4();
    v17 = v16;
    (*(v13 + 8))(v12, v129);
    (*(v10 + 8))(v9, v11);
    v18 = sub_20CC88C4C(v15, v17, v139);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CC86000, v6, v131, "Generating with adapter: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v134);
    MEMORY[0x20F30FD70](v134, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = *(v0 + 552);
  v22 = *(v0 + 544);
  v23 = *(v0 + 536);
  v24 = *(v0 + 504);
  v25 = *(v0 + 136);
  v26 = 0x800000020CCDE810;
  sub_20CCDABB4();
  sub_20CCDACB4();
  sub_20CCDAE84();
  (*(v21 + 16))(v20, v19, v22);
  v27 = (*(v21 + 88))(v20, v22);
  v28 = *(v0 + 576);
  if (v27 == *MEMORY[0x277D0A650])
  {
    v135 = 0xD000000000000013;
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 496);
    v33 = *(v0 + 464);
    v32 = *(v0 + 472);
    v35 = *(v0 + 440);
    v34 = *(v0 + 448);
    v36 = *(v0 + 136);
    sub_20CCDA804();
    v132 = *(v29 + 8);
    v132(v28, v30);
    sub_20CCDAE54();
    sub_20CC89500(v32, v33, &qword_27C80FA10, &qword_20CCDD790);
    v37 = (*(v34 + 48))(v33, 1, v35);
    v38 = *(v0 + 464);
    if (v37 == 1)
    {
      sub_20CC89568(*(v0 + 464), &qword_27C80FA10, &qword_20CCDD790);
    }

    else
    {
      v52 = *(v0 + 448);
      v51 = *(v0 + 456);
      v53 = *(v0 + 440);
      (*(v52 + 32))(v51, *(v0 + 464), v53);
      v135 = sub_20CCDB2E4();
      v26 = v54;
      (*(v52 + 8))(v51, v53);
    }

    sub_20CC89568(*(v0 + 472), &qword_27C80FA10, &qword_20CCDD790);
    v55 = sub_20CCC95FC(0x2710uLL);
    v56 = sub_20CCDB564();
    v57 = sub_20CCDB874();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v55;
      _os_log_impl(&dword_20CC86000, v56, v57, "GMS Random seed: %ld", v58, 0xCu);
      MEMORY[0x20F30FD70](v58, -1, -1);
    }

    v59 = sub_20CCDB564();
    v60 = sub_20CCDB8B4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v139[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_20CC88C4C(v135, v26, v139);
      _os_log_impl(&dword_20CC86000, v59, v60, "Use case identifier: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x20F30FD70](v62, -1, -1);
      MEMORY[0x20F30FD70](v61, -1, -1);
    }

    v63 = *(v0 + 496);
    v64 = *(v0 + 480);
    v65 = *(v0 + 432);
    sub_20CCDA834();
    sub_20CCDA814();
    v66 = *(v0 + 560);
    v67 = *(v0 + 536);
    v68 = *(v0 + 528);
    v69 = *(v0 + 520);
    v70 = *(v0 + 512);
    v71 = *(v0 + 432);
    v126 = *(v0 + 424);
    v72 = *(v0 + 648);
    v121 = *(v0 + 144);
    v123 = *(v0 + 136);
    sub_20CCDABA4();
    (*(v69 + 16))(v68, v67, v70);
    v136 = sub_20CCDAB94();
    *(v0 + 624) = v136;
    sub_20CCDAE84();
    sub_20CCC90C4(v66, v126);
    v85 = *(v0 + 424);
    v125 = *(v0 + 376);
    v119 = *(v0 + 352);
    v128 = *(v0 + 344);
    v86 = *(v0 + 336);
    v138 = *(v0 + 328);
    v87 = *(v0 + 312);
    v88 = *(v0 + 320);
    v115 = *(v0 + 304);
    v117 = *(v0 + 296);
    v89 = *(v0 + 288);
    v113 = *(v0 + 280);
    v90 = *(v0 + 136);
    v132(*(v0 + 560), *(v0 + 544));
    *(swift_task_alloc() + 16) = v85;
    sub_20CCDB5A4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA28, &qword_20CCDD7A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CCDC580;
    *(inited + 32) = 0x746E6F4372657375;
    *(inited + 40) = 0xEB00000000746E65;
    v92 = sub_20CCDAE74();
    v93 = MEMORY[0x277D42EC0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v93;
    *(inited + 48) = v92;
    *(inited + 56) = v94;
    sub_20CCB1EF4(inited);
    swift_setDeallocating();
    sub_20CC89568(inited + 32, &qword_27C80F8F8, &qword_20CCDD2D0);
    sub_20CCC9F38(&qword_27C80FA30, MEMORY[0x277D42D78]);
    sub_20CCDB5F4();

    v95 = *(v138 + 8);
    v95(v86, v88);
    sub_20CCDAC54();
    v96 = sub_20CCDAC64();
    (*(*(v96 - 8) + 56))(v89, 0, 1, v96);
    sub_20CC89500(v89, v113, &qword_27C80F9F0, &qword_20CCDD770);
    sub_20CCDACA4();
    sub_20CCDAC94();
    sub_20CCDAC74();
    sub_20CCDAC84();
    sub_20CC89568(v89, &qword_27C80F9F0, &qword_20CCDD770);
    (*(v115 + 104))(v87, *MEMORY[0x277D0E550], v117);
    sub_20CCDB5D4();
    (*(v115 + 8))(v87, v117);
    v95(v128, v88);
    *(v0 + 120) = v136;
    sub_20CCDB5E4();
    v95(v119, v88);
    v97 = *(MEMORY[0x277D0D908] + 4);
    v98 = swift_task_alloc();
    *(v0 + 632) = v98;
    v99 = sub_20CCC9F38(&qword_27C80FA38, MEMORY[0x277D71A98]);
    *v98 = v0;
    v98[1] = sub_20CCC83B4;
    v100 = *(v0 + 400);
    v101 = *(v0 + 376);
    v102 = *(v0 + 360);
    v103 = MEMORY[0x277D0DE60];
    v104 = MEMORY[0x277D837D0];

    return MEMORY[0x282165A98](v100, v102, v104, v99, v103);
  }

  else
  {
    v39 = *(v0 + 568);
    v40 = *(v0 + 552);
    v41 = *(v0 + 544);
    v42 = *(v0 + 536);
    v43 = *(v0 + 520);
    v44 = *(v0 + 512);
    v45 = *(v0 + 576);
    v46 = sub_20CCDB3A4();
    v48 = v47;
    sub_20CCC9BF8();
    swift_allocError();
    *v49 = v46;
    *(v49 + 8) = v48;
    *(v49 + 16) = 0;
    swift_willThrow();
    v50 = *(v40 + 8);
    v50(v28, v41);
    (*(v43 + 8))(v42, v44);
    v50(v39, v41);
    v73 = *(v0 + 608);
    v74 = *(v0 + 584);
    v75 = *(v0 + 576);
    v76 = *(v0 + 568);
    v77 = *(v0 + 560);
    v78 = *(v0 + 536);
    v79 = *(v0 + 528);
    v81 = *(v0 + 496);
    v80 = *(v0 + 504);
    v82 = *(v0 + 472);
    v105 = *(v0 + 464);
    v106 = *(v0 + 456);
    v107 = *(v0 + 432);
    v108 = *(v0 + 424);
    v109 = *(v0 + 400);
    v110 = *(v0 + 376);
    v111 = *(v0 + 352);
    v112 = *(v0 + 344);
    v114 = *(v0 + 336);
    v116 = *(v0 + 312);
    v118 = *(v0 + 288);
    v120 = *(v0 + 280);
    v122 = *(v0 + 272);
    v124 = *(v0 + 248);
    v127 = *(v0 + 224);
    v130 = *(v0 + 200);
    v133 = *(v0 + 192);
    v137 = *(v0 + 168);

    v83 = *(v0 + 8);

    return v83();
  }
}

uint64_t sub_20CCC83B4()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  if (v0)
  {
    v5 = sub_20CCC8D90;
  }

  else
  {
    v5 = sub_20CCC851C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CCC851C()
{
  v136 = v0;
  v1 = v0[50];
  v2 = v0[48];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  sub_20CCDB404();
  sub_20CCDB4B4();
  (*(v4 + 8))(v3, v5);
  v7 = v0[13];
  v6 = v0[14];
  v8 = sub_20CCDB6B4();
  v9 = v0[48];
  if (v8 <= 600)
  {
    v42 = v0[77];
    v43 = v0[50];
    v44 = v0[31];
    v45 = v0[27];
    v46 = v0[28];
    v47 = v0[26];
    v48 = v0[48];
    sub_20CCDB3F4();
    sub_20CCDAB74();
    (*(v45 + 8))(v46, v47);

    v49 = sub_20CCDB564();
    v50 = sub_20CCDB8B4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v135[0] = v52;
      *v51 = 136380675;
      *(v51 + 4) = sub_20CC88C4C(v7, v6, v135);
      _os_log_impl(&dword_20CC86000, v49, v50, "Inference token result: %{private}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x20F30FD70](v52, -1, -1);
      MEMORY[0x20F30FD70](v51, -1, -1);
    }

    v53 = v0[31];
    v55 = v0[24];
    v54 = v0[25];
    v57 = v0[22];
    v56 = v0[23];
    v58 = sub_20CCDAC34();
    v130 = sub_20CCC9C68(v58);

    sub_20CCDAC24();
    v59 = sub_20CCDABD4();
    v125 = v60;
    v127 = v59;
    v61 = *(v56 + 8);
    v61(v54, v57);
    sub_20CCDAC24();
    v62 = sub_20CCDAC04();
    v61(v55, v57);
    v63 = v0[78];
    v133 = v7;
    v134 = v6;
    if (*(v62 + 16))
    {
      v64 = v0[20];
      v65 = v0[21];
      v66 = v0[19];
      (*(v64 + 16))(v65, v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v66);

      v67 = sub_20CCDABE4();
      v121 = v68;
      v123 = v67;

      (*(v64 + 8))(v65, v66);
    }

    else
    {

      v121 = 0;
      v123 = 0;
    }

    v84 = v0[76];
    v85 = v0[73];
    v86 = v0[72];
    v87 = v0[71];
    v88 = v0[70];
    v69 = v0[65];
    v82 = v0[64];
    v83 = v0[67];
    v89 = v0[66];
    v90 = v0[63];
    v70 = v0[61];
    v71 = v0[62];
    v72 = v0[60];
    v91 = v0[59];
    v92 = v0[58];
    v93 = v0[57];
    v94 = v0[54];
    v73 = v0[52];
    v80 = v0[51];
    v81 = v0[53];
    v75 = v0[49];
    v74 = v0[50];
    v76 = v0[48];
    v95 = v0[47];
    v97 = v0[44];
    v99 = v0[43];
    v101 = v0[42];
    v107 = v0[36];
    v109 = v0[35];
    v111 = v0[34];
    v103 = v0[39];
    v105 = v0[31];
    v77 = v0[29];
    v113 = v0[28];
    v115 = v0[25];
    v117 = v0[24];
    v119 = v0[21];
    v78 = v0[16];
    (*(v0[30] + 8))();
    (*(v75 + 8))(v74, v76);
    (*(v70 + 8))(v71, v72);
    (*(v69 + 8))(v83, v82);
    (*(v73 + 8))(v81, v80);

    *v78 = v133;
    v78[1] = v134;
    v78[2] = v130;
    v78[3] = v127;
    v78[4] = v125;
    v78[5] = v123;
    v78[6] = v121;
    v41 = v0[1];
  }

  else
  {
    v10 = v0[49];
    v11 = v0[50];
    sub_20CCDB974();

    v135[0] = 0xD000000000000011;
    v135[1] = 0x800000020CCDE830;
    MEMORY[0x20F30F2A0](v7, v6);

    sub_20CCC9BF8();
    v12 = swift_allocError();
    *v13 = 0xD000000000000011;
    *(v13 + 8) = 0x800000020CCDE830;
    *(v13 + 16) = 1;
    swift_willThrow();
    (*(v10 + 8))(v11, v9);
    v14 = v0[77];
    v15 = v12;
    v16 = sub_20CCDB564();
    v17 = sub_20CCDB8B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v12;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_20CC86000, v16, v17, "Inference error: %@", v18, 0xCu);
      sub_20CC89568(v19, &qword_27C80F460, &unk_20CCDC700);
      MEMORY[0x20F30FD70](v19, -1, -1);
      MEMORY[0x20F30FD70](v18, -1, -1);
    }

    v22 = v0[78];
    v23 = v0[67];
    v24 = v16;
    v25 = v0[65];
    v26 = v0[64];
    v28 = v0[61];
    v27 = v0[62];
    v29 = v0[60];
    v30 = v0[52];
    v128 = v0[51];
    v131 = v0[53];

    swift_willThrow();

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v23, v26);
    (*(v30 + 8))(v131, v128);
    v31 = v0[76];
    v32 = v0[73];
    v33 = v0[72];
    v34 = v0[71];
    v35 = v0[70];
    v36 = v0[67];
    v37 = v0[66];
    v38 = v0[62];
    v39 = v0[63];
    v40 = v0[59];
    v96 = v0[58];
    v98 = v0[57];
    v100 = v0[54];
    v102 = v0[53];
    v104 = v0[50];
    v106 = v0[47];
    v108 = v0[44];
    v110 = v0[43];
    v112 = v0[42];
    v114 = v0[39];
    v116 = v0[36];
    v118 = v0[35];
    v120 = v0[34];
    v122 = v0[31];
    v124 = v0[28];
    v126 = v0[25];
    v129 = v0[24];
    v132 = v0[21];

    v41 = v0[1];
  }

  return v41();
}

uint64_t sub_20CCC8D90()
{
  v1 = v0[80];
  v2 = v0[77];
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Inference error: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  v10 = v0[78];
  v11 = v0[67];
  v12 = v4;
  v13 = v0[65];
  v14 = v0[64];
  v16 = v0[61];
  v15 = v0[62];
  v17 = v0[60];
  v49 = v0[53];
  v18 = v0[52];
  v47 = v0[51];

  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v11, v14);
  (*(v18 + 8))(v49, v47);
  v19 = v0[76];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[62];
  v27 = v0[63];
  v28 = v0[59];
  v31 = v0[58];
  v32 = v0[57];
  v33 = v0[54];
  v34 = v0[53];
  v35 = v0[50];
  v36 = v0[47];
  v37 = v0[44];
  v38 = v0[43];
  v39 = v0[42];
  v40 = v0[39];
  v41 = v0[36];
  v42 = v0[35];
  v43 = v0[34];
  v44 = v0[31];
  v45 = v0[28];
  v46 = v0[25];
  v48 = v0[24];
  v50 = v0[21];

  v29 = v0[1];

  return v29();
}

uint64_t sub_20CCC90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[0] = a2;
  v3 = sub_20CCDA824();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34[1] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CCDB3B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v37 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA18, &qword_20CCDD798);
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = v34 - v15;
  v16 = *(v7 + 16);
  v17 = a1;
  v16(v12, a1, v6);
  v18 = *(v7 + 88);
  v19 = v18(v12, v6);
  if (v19 == *MEMORY[0x277D0A650])
  {
    v20 = v19;
    sub_20CCDA804();
    v21 = v37;
    v16(v37, v17, v6);
    if (v18(v21, v6) == v20)
    {
      v22 = v36;
      v23 = v38;
      sub_20CCDA834();
      v24 = v34[2];
      sub_20CCDA814();
      if (!v24)
      {
        sub_20CCDB494();
      }

      return (*(v35 + 8))(v23, v22);
    }

    else
    {
      v30 = sub_20CCDB3A4();
      v32 = v31;
      sub_20CCC9BF8();
      swift_allocError();
      *v33 = v30;
      *(v33 + 8) = v32;
      *(v33 + 16) = 0;
      swift_willThrow();
      (*(v35 + 8))(v38, v36);
      return (*(v7 + 8))(v37, v6);
    }
  }

  else
  {
    v26 = sub_20CCDB3A4();
    v28 = v27;
    sub_20CCC9BF8();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    swift_willThrow();
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_20CCC9444()
{
  v0 = sub_20CCDB594();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB4A4();
  sub_20CCC9F38(&qword_27C80FA48, MEMORY[0x277D0E698]);
  sub_20CCDB5C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80FA50, &qword_20CCDD7B0);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CCDC580;
  (*(v2 + 16))(v8 + v7, v5, v0);
  MEMORY[0x20F30F190](v8);

  return (*(v2 + 8))(v5, v0);
}

unint64_t sub_20CCC95FC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F30FD80](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F30FD80](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20CCC9688()
{
  v0 = sub_20CCDAD04();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CCDAD44();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20CCDAD94();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20CCDAD74();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20CCDADB4();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v41);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20CCDAD54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - v24;
  (*(v6 + 104))(v9, *MEMORY[0x277D0E2D8], v43);
  sub_20CCDAD64();
  sub_20CCDADA4();
  (*(v10 + 8))(v13, v42);
  sub_20CCDAD84();
  (*(v14 + 8))(v17, v41);
  (*(v19 + 16))(v23, v25, v18);
  v26 = (*(v19 + 88))(v23, v18);
  if (v26 == *MEMORY[0x277D0DFA8])
  {
    (*(v19 + 96))(v23, v18);
    v28 = v38;
    v27 = v39;
    v29 = v40;
    (*(v39 + 32))(v38, v23, v40);
    v30 = sub_20CCDACE4();
LABEL_5:
    v31 = v30;
    (*(v27 + 8))(v28, v29);
    (*(v19 + 8))(v25, v18);
    return v31;
  }

  if (v26 == *MEMORY[0x277D0DFB0])
  {
    (*(v19 + 96))(v23, v18);
    v28 = v35;
    v27 = v36;
    v29 = v37;
    (*(v36 + 32))(v35, v23, v37);
    v30 = sub_20CCDAD24();
    goto LABEL_5;
  }

  if (v26 == *MEMORY[0x277D0E278])
  {
    (*(v19 + 8))(v25, v18);
    return 0;
  }

  else
  {
    v33 = *(v19 + 8);
    v33(v25, v18);
    v33(v23, v18);
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_20CCC9BF8()
{
  result = qword_27C80FA20;
  if (!qword_27C80FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FA20);
  }

  return result;
}

uint64_t sub_20CCC9C68(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_20CCB0C4C(0x7461446F69647561, 0xE900000000000061);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_20CC89458(*(a1 + 56) + 32 * v2, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_20CCDA6C4();
  v6 = v5;

  result = 0;
  if (v6 >> 60 == 15)
  {
    return result;
  }

  if (!*(a1 + 16) || (v8 = sub_20CCB0C4C(0x7463694464627361, 0xE800000000000000), (v9 & 1) == 0) || (sub_20CC89458(*(a1 + 56) + 32 * v8, v22), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA40, &qword_20CCDD7A8), (swift_dynamicCast() & 1) == 0))
  {
    sub_20CCA9798(v4, v6);
    return 0;
  }

  sub_20CCB41A0(v21, v22);
  v10 = [objc_allocWithZone(sub_20CCDAA94()) init];
  sub_20CC96DA4(v4, v6);
  sub_20CCDAA34();
  v11 = v10;
  sub_20CCDAA74();
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v12 = sub_20CCDB584();
  __swift_project_value_buffer(v12, qword_28110EE00);
  sub_20CC96DA4(v4, v6);
  v13 = sub_20CCDB564();
  v14 = sub_20CCDB8B4();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_20CCA9798(v4, v6);
LABEL_26:
    sub_20CCA9798(v4, v6);

    return v11;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v15 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v6);
LABEL_25:
    *(result + 4) = v16;
    v20 = result;
    sub_20CCA9798(v4, v6);
    _os_log_impl(&dword_20CC86000, v13, v14, "Got audio data in server response of size: %ld", v20, 0xCu);
    MEMORY[0x20F30FD70](v20, -1, -1);
    goto LABEL_26;
  }

  LODWORD(v16) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v16 = v16;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CCC9F38(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20CCC9FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20CCC9FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20CCCA048()
{
  v0 = sub_20CCDB584();
  __swift_allocate_value_buffer(v0, qword_28110EE00);
  __swift_project_value_buffer(v0, qword_28110EE00);
  return sub_20CCDB574();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_20CCCA128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = sub_20CCDA6A4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a2);
  v23 = objc_allocWithZone(MEMORY[0x277CB83D0]);
  v24 = sub_20CCCAB04(v21);
  [v24 setDelegate_];
  v25 = *(a3 + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player);
  *(a3 + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player) = v24;

  v30 = *(v7 + 16);
  v30(v17, a1, v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v26 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  swift_beginAccess();
  sub_20CCCAA94(v17, a3 + v26);
  swift_endAccess();
  LOBYTE(a2) = [v24 play];

  if ((a2 & 1) == 0)
  {
    sub_20CCCB0D4(a3 + v26, v15);
    if ((*(v7 + 48))(v15, 1, v6))
    {
      sub_20CCCB144(v15);
    }

    else
    {
      v30(v10, v15, v6);
      sub_20CCCB144(v15);
      sub_20CCCB1AC();
      v27 = swift_allocError();
      *v28 = xmmword_20CCDD890;
      *(v28 + 16) = 4;
      v31 = v27;
      sub_20CCDB744();
      (*(v7 + 8))(v10, v6);
    }

    sub_20CCCA6F0();
  }
}

uint64_t sub_20CCCA6F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player;
  v6 = *(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player);
  if (v6)
  {
    [v6 setDelegate_];
    v7 = *(v0 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + v5) = 0;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  swift_beginAccess();
  sub_20CCCAA94(v4, v0 + v9);
  return swift_endAccess();
}

id sub_20CCCA8BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TonePlayer()
{
  result = qword_27C80FAD8;
  if (!qword_27C80FAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CCCA994()
{
  sub_20CCCAA30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20CCCAA30()
{
  if (!qword_27C80FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    v0 = sub_20CCDB904();
    if (!v1)
    {
      atomic_store(v0, &qword_27C80FAE8);
    }
  }
}

uint64_t sub_20CCCAA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20CCCAB04(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20CCDA674();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_20CCDA6A4();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_20CCDA664();

    swift_willThrow();
    v11 = sub_20CCDA6A4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_20CCCAC50(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  v16 = (v4 + 48);
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    sub_20CCCB0D4(v1 + v15, v12);
    if ((*v16)(v12, 1, v3))
    {
      v17 = v12;
      goto LABEL_6;
    }

    (*(v4 + 16))(v7, v12, v3);
    sub_20CCCB144(v12);
    sub_20CCCB1AC();
    v18 = swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 4;
    v21 = v18;
    sub_20CCDB744();
LABEL_9:
    (*(v4 + 8))(v7, v3);
    return sub_20CCCA6F0();
  }

  swift_beginAccess();
  sub_20CCCB0D4(v1 + v15, v14);
  if (!(*v16)(v14, 1, v3))
  {
    (*(v4 + 16))(v7, v14, v3);
    sub_20CCCB144(v14);
    sub_20CCDB754();
    goto LABEL_9;
  }

  v17 = v14;
LABEL_6:
  sub_20CCCB144(v17);
  return sub_20CCCA6F0();
}

uint64_t sub_20CCCAEE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  swift_beginAccess();
  sub_20CCCB0D4(v1 + v12, v11);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_20CCCB144(v11);
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_20CCCB144(v11);
    sub_20CCCB1AC();
    v13 = swift_allocError();
    *v14 = a1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    v17 = v13;
    v15 = a1;
    sub_20CCDB744();
    (*(v4 + 8))(v7, v3);
  }

  return sub_20CCCA6F0();
}

uint64_t sub_20CCCB0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCCB144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CCCB1AC()
{
  result = qword_27C80FB00;
  if (!qword_27C80FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FB00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28FitnessIntelligenceInference17TonePlaybackErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_20CCCB21C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20CCCB264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20CCCB2A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_20CCCB2D0(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();

  v4 = sub_20CCA5B18(&v14, a1, a2);
  swift_endAccess();

  if (v4)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v5 = sub_20CCDB584();
    __swift_project_value_buffer(v5, qword_28110EE00);

    v6 = sub_20CCDB564();
    v7 = sub_20CCDB884();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20CC88C4C(a1, a2, v13);
      v10 = "[Cancellation] Registered new request ID: %s";
LABEL_10:
      _os_log_impl(&dword_20CC86000, v6, v7, v10, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F30FD70](v9, -1, -1);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v11 = sub_20CCDB584();
    __swift_project_value_buffer(v11, qword_28110EE00);

    v6 = sub_20CCDB564();
    v7 = sub_20CCDB884();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20CC88C4C(a1, a2, v13);
      v10 = "[Cancellation] Request ID %s was already registered.";
      goto LABEL_10;
    }
  }

  return v4 & 1;
}

BOOL sub_20CCCB530(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  sub_20CCCBBDC(a1, a2);
  v5 = v4;
  swift_endAccess();
  if (v5)
  {

    swift_beginAccess();
    sub_20CCCBBDC(a1, a2);
    swift_endAccess();

    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v6 = sub_20CCDB584();
    __swift_project_value_buffer(v6, qword_28110EE00);

    v7 = sub_20CCDB564();
    v8 = sub_20CCDB884();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20CC88C4C(a1, a2, v14);
      v11 = "Unregistered request ID: %s";
LABEL_10:
      _os_log_impl(&dword_20CC86000, v7, v8, v11, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F30FD70](v10, -1, -1);
      MEMORY[0x20F30FD70](v9, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    sub_20CCCBBDC(a1, a2);
    swift_endAccess();

    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v12 = sub_20CCDB584();
    __swift_project_value_buffer(v12, qword_28110EE00);

    v7 = sub_20CCDB564();
    v8 = sub_20CCDB884();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20CC88C4C(a1, a2, v14);
      v11 = "Request ID %s was not being tracked, nothing to unregister.";
      goto LABEL_10;
    }
  }

  return v5 != 0;
}

uint64_t sub_20CCCB808(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);

  v6 = sub_20CCCE534(a1, a2, v5);

  if (v6)
  {
    swift_beginAccess();

    v7 = sub_20CCA5B18(&v18, a1, a2);
    swift_endAccess();

    if (v7)
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v8 = sub_20CCDB584();
      __swift_project_value_buffer(v8, qword_28110EE00);

      v9 = sub_20CCDB564();
      v10 = sub_20CCDB884();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_20CC88C4C(a1, a2, v17);
        v13 = "[Cancellation] Marked request ID %s as cancelled.";
LABEL_15:
        _os_log_impl(&dword_20CC86000, v9, v10, v13, v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x20F30FD70](v12, -1, -1);
        MEMORY[0x20F30FD70](v11, -1, -1);
      }
    }

    else
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v15 = sub_20CCDB584();
      __swift_project_value_buffer(v15, qword_28110EE00);

      v9 = sub_20CCDB564();
      v10 = sub_20CCDB884();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_20CC88C4C(a1, a2, v17);
        v13 = "[Cancellation] Request ID %s was already marked as cancelled.";
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v14 = sub_20CCDB584();
    __swift_project_value_buffer(v14, qword_28110EE00);

    v9 = sub_20CCDB564();
    v10 = sub_20CCDB884();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20CC88C4C(a1, a2, v17);
      v13 = "[Cancellation] Attempted to mark untracked request ID %s as cancelled. Skipping.";
      goto LABEL_15;
    }
  }

  return v6 & 1;
}

uint64_t sub_20CCCBB78()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CCCBBDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v7 = sub_20CCDBB64();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_20CCDBA64() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20CCA6880();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_20CCCBD18(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_20CCCBD18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_20CCDB924();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_20CCDBB44();

        sub_20CCDB6A4();
        v15 = sub_20CCDBB64();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20CCCBEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CCCBF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20CCCBF9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20CCDB974();

  MEMORY[0x20F30F2A0](v1, v2);
  return 0xD000000000000024;
}

uint64_t sub_20CCCC024(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_20CCDAFB4();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCC128, v1, 0);
}

uint64_t sub_20CCCC128()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[5];
  v6 = sub_20CCDB584();
  __swift_project_value_buffer(v6, qword_28110EE00);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_20CCDB564();
  v9 = sub_20CCDB884();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[10];
  v11 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  if (v10)
  {
    v39 = v9;
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    v16 = sub_20CCDAF84();
    v17 = v14;
    v18 = *(v13 + 8);
    v18(v11, v17);
    *(v15 + 4) = v16;
    *(v15 + 8) = 2048;
    v19 = sub_20CCDAF74();
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        sub_20CC9720C(v19, v20);
        v23 = 0;
        goto LABEL_15;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v19 = sub_20CC9720C(v19, v20);
      v27 = __OFSUB__(v25, v26);
      v23 = v25 - v26;
      if (!v27)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v20);
      sub_20CC9720C(v19, v20);
      v23 = v22;
LABEL_15:
      v18(v0[10], v0[8]);
      *(v15 + 10) = v23;
      _os_log_impl(&dword_20CC86000, v8, v39, "Receiving chunk %u (size: %ld).", v15, 0x12u);
      MEMORY[0x20F30FD70](v15, -1, -1);
      goto LABEL_16;
    }

    v28 = HIDWORD(v19);
    v29 = v19;
    result = sub_20CC9720C(v19, v20);
    if (__OFSUB__(v28, v29))
    {
      __break(1u);
      return result;
    }

    v23 = v28 - v29;
    goto LABEL_15;
  }

  v24 = *(v13 + 8);
  v24(v0[10], v0[8]);
  v24(v11, v14);
LABEL_16:
  v31 = v0[8];
  v32 = v0[9];
  v34 = v0[6];
  v33 = v0[7];
  v35 = v0[5];

  v36 = sub_20CCDAF84();
  v7(v33, v35, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  swift_beginAccess();
  sub_20CCCDAE8(v33, v36);
  swift_endAccess();
  v37 = swift_task_alloc();
  v0[12] = v37;
  *v37 = v0;
  v37[1] = sub_20CCCC444;
  v38 = v0[6];

  return sub_20CCCC988();
}

uint64_t sub_20CCCC444(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v9 = *v1;

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_20CCCC59C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CCDB0C4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCC65C, v1, 0);
}

uint64_t sub_20CCCC65C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_20CCDB584();
  __swift_project_value_buffer(v6, qword_28110EE00);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    v15 = sub_20CCDB094();
    (*(v11 + 8))(v10, v13);
    *(v14 + 4) = v15;
    *(v14 + 8) = 1024;
    *(v14 + 10) = *(v12 + 200);

    _os_log_impl(&dword_20CC86000, v7, v8, "Receiver got streaming finished message with %u total expected chunks; next chunk index is %u.", v14, 0xEu);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  else
  {
    (*(v11 + 8))(v0[6], v0[4]);
  }

  v17 = v0[2];
  v16 = v0[3];
  *(v16 + 204) = sub_20CCDB094();
  *(v16 + 208) = 256;
  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_20CCCC870;
  v19 = v0[3];

  return sub_20CCCC988();
}

uint64_t sub_20CCCC870(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_20CCCC988()
{
  v1[15] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v3 = sub_20CCDAFB4();
  v1[17] = v3;
  v4 = *(v3 - 8);
  v1[18] = v4;
  v5 = *(v4 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCCA8C, v0, 0);
}

uint64_t sub_20CCCCA8C()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16) && (v3 = *(*(v0 + 120) + 200), v4 = sub_20CCB0CC4(v3), (v5 & 1) != 0))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 120);
    v11 = *(v9 + 72);
    (*(v9 + 16))(v7, *(v2 + 56) + v11 * v4, v8);
    v12 = *(v9 + 32);
    v12(v6, v7, v8);
    swift_beginAccess();
    v13 = sub_20CCB0CC4(v3);
    if ((v14 & 1) == 0)
    {
      v22 = 1;
      goto LABEL_10;
    }

    v15 = v13;
    v16 = *(v0 + 120);
    v17 = *(v16 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + 192);
    *(v0 + 112) = v19;
    *(v16 + 192) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v20 = *(v0 + 120);
      v12(*(v0 + 128), *(v19 + 56) + v15 * v11, *(v0 + 136));
      sub_20CCD6B40(v15, v19);
      v21 = *(v20 + 192);
      *(v20 + 192) = v19;

      v22 = 0;
LABEL_10:
      v15 = *(v0 + 120);
      v30 = *(v0 + 128);
      (*(*(v0 + 144) + 56))(v30, v22, 1, *(v0 + 136));
      sub_20CCCD340(v30);
      swift_endAccess();
      v31 = *(v15 + 200);
      v32 = __CFADD__(v31, 1);
      v33 = v31 + 1;
      if (!v32)
      {
        break;
      }

      __break(1u);
LABEL_15:
      sub_20CCD8998();
      v19 = *(v0 + 112);
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 120);
    *(v35 + 200) = v33;
    v36 = *(v35 + 144);
    v37 = *(v35 + 160);
    v38 = *(v35 + 184);
    *(v0 + 48) = *(v35 + 176);
    *(v0 + 16) = v36;
    *(v0 + 32) = v37;
    v39 = sub_20CCDAF64();
    *(v0 + 168) = v39;
    *(v0 + 104) = v39;
    v40 = *(MEMORY[0x277CEF708] + 4);
    v41 = swift_task_alloc();
    *(v0 + 176) = v41;
    *v41 = v0;
    v41[1] = sub_20CCCCD3C;

    return MEMORY[0x282141C28](v0 + 104);
  }

  else
  {
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    v27 = sub_20CCCD118();

    v28 = *(v0 + 8);

    return v28(v27 & 1);
  }
}

uint64_t sub_20CCCCD3C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CCCCE64, v3, 0);
}

uint64_t sub_20CCCCE64()
{
  v1 = *(v0 + 120);
  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  v2 = *(v1 + 192);
  if (*(v2 + 16) && (v3 = *(*(v0 + 120) + 200), v4 = sub_20CCB0CC4(v3), (v5 & 1) != 0))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 120);
    v11 = *(v9 + 72);
    (*(v9 + 16))(v7, *(v2 + 56) + v11 * v4, v8);
    v12 = *(v9 + 32);
    v12(v6, v7, v8);
    swift_beginAccess();
    v13 = sub_20CCB0CC4(v3);
    if ((v14 & 1) == 0)
    {
      v22 = 1;
      goto LABEL_10;
    }

    v15 = v13;
    v16 = *(v0 + 120);
    v17 = *(v16 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + 192);
    *(v0 + 112) = v19;
    *(v16 + 192) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v20 = *(v0 + 120);
      v12(*(v0 + 128), *(v19 + 56) + v15 * v11, *(v0 + 136));
      sub_20CCD6B40(v15, v19);
      v21 = *(v20 + 192);
      *(v20 + 192) = v19;

      v22 = 0;
LABEL_10:
      v15 = *(v0 + 120);
      v30 = *(v0 + 128);
      (*(*(v0 + 144) + 56))(v30, v22, 1, *(v0 + 136));
      sub_20CCCD340(v30);
      swift_endAccess();
      v31 = *(v15 + 200);
      v32 = __CFADD__(v31, 1);
      v33 = v31 + 1;
      if (!v32)
      {
        break;
      }

      __break(1u);
LABEL_15:
      sub_20CCD8998();
      v19 = *(v0 + 112);
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 120);
    *(v35 + 200) = v33;
    v36 = *(v35 + 144);
    v37 = *(v35 + 160);
    v38 = *(v35 + 184);
    *(v0 + 48) = *(v35 + 176);
    *(v0 + 16) = v36;
    *(v0 + 32) = v37;
    v39 = sub_20CCDAF64();
    *(v0 + 168) = v39;
    *(v0 + 104) = v39;
    v40 = *(MEMORY[0x277CEF708] + 4);
    v41 = swift_task_alloc();
    *(v0 + 176) = v41;
    *v41 = v0;
    v41[1] = sub_20CCCCD3C;

    return MEMORY[0x282141C28](v0 + 104);
  }

  else
  {
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    v27 = sub_20CCCD118();

    v28 = *(v0 + 8);

    return v28(v27 & 1);
  }
}

uint64_t sub_20CCCD118()
{
  if (*(v0 + 209) == 1)
  {
    if (*(v0 + 208))
    {
      v1 = *(v0 + 184);
      sub_20CCCD2EC();
      v2 = swift_allocError();
      *v3 = 0xD00000000000003ELL;
      v3[1] = 0x800000020CCDEA40;
      sub_20CCDB424();

      return 1;
    }

    if (*(v0 + 200) == *(v0 + 204))
    {
      v4 = v0;
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v5 = sub_20CCDB584();
      __swift_project_value_buffer(v5, qword_28110EE00);
      v6 = sub_20CCDB564();
      v7 = sub_20CCDB8B4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20CC86000, v6, v7, "All audio chunks received. Finishing audio stream receiver channel.", v8, 2u);
        MEMORY[0x20F30FD70](v8, -1, -1);
      }

      v9 = *(v4 + 184);
      sub_20CCDB444();
      return 1;
    }
  }

  return 0;
}

uint64_t sub_20CCCD278()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[23];

  v4 = v0[24];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_20CCCD2EC()
{
  result = qword_27C80FB10;
  if (!qword_27C80FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FB10);
  }

  return result;
}

uint64_t sub_20CCCD340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20CCCD3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CCCD3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CCCD44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_20CCDA2D8(a3, v24 - v10);
  v12 = sub_20CCDB794();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CC89568(v11, &qword_27C80F448, &unk_20CCDCF60);
  }

  else
  {
    sub_20CCDB784();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20CCDB734();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20CCDB694() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_20CC89568(a3, &qword_27C80F448, &unk_20CCDCF60);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CC89568(a3, &qword_27C80F448, &unk_20CCDCF60);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_20CCCD6E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_20CCDB214();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20CC89568(a1, &qword_27C80F438, &unk_20CCDC6C0);
    sub_20CCD4420(a2, v8);
    v14 = sub_20CCDAF54();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_20CC89568(v8, &qword_27C80F438, &unk_20CCDC6C0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20CCD6CF0(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_20CCDAF54();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20CCCD914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C8, &qword_20CCDD740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AudioSynthesisHandle(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_20CC89568(a1, &qword_27C80F9C8, &qword_20CCDD740);
    sub_20CCD45C0(a2, a3, v10);

    return sub_20CC89568(v10, &qword_27C80F9C8, &qword_20CCDD740);
  }

  else
  {
    sub_20CCDA120(a1, v14, type metadata accessor for AudioSynthesisHandle);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_20CCD72D0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_20CCCDAE8(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_20CCDAFB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_20CC89568(a1, &qword_27C80FB18, &unk_20CCDDD60);
    v15 = *v3;
    v16 = sub_20CCB0CC4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20CCD8998();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_20CCD6B40(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_20CC89568(v9, &qword_27C80FB18, &unk_20CCDDD60);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_20CCD75B0(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_20CCCDD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_20CCD7718(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_20CCB0C4C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_20CCD8C00();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_20CCD6990(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_20CCCDE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20CCB0B78(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CCD826C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_20CCDA784();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_20CCD6454(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_20CCCDFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v8 = sub_20CCDA784();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[2] = a1;
  v5[3] = a2;

  return MEMORY[0x2822009F8](sub_20CCCE0C4, v4, 0);
}

uint64_t sub_20CCCE0C4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[8] + 112);

  LOBYTE(v2) = sub_20CCCE534(v1, v2, v3);

  v4 = v0[11];
  if (v2)
  {
    v5 = v0[11];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = v0[11];
    sub_20CCDA774();
    v12 = swift_task_alloc();
    v0[12] = v12;
    v12[2] = v8;
    v12[3] = v0 + 2;
    v12[4] = v4;
    v12[5] = v10;
    v12[6] = v9;
    v13 = swift_allocObject();
    v0[13] = v13;
    swift_weakInit();
    v14 = swift_task_alloc();
    v0[14] = v14;
    v14[2] = v13;
    v14[3] = v0 + 2;
    v14[4] = v4;
    sub_20CCDA01C(&qword_27C80FB20, &qword_27C80FB28, &unk_20CCDDCA8);
    v15 = *(MEMORY[0x277D85A10] + 4);
    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_20CCCE2C8;

    return MEMORY[0x282200830]();
  }
}

uint64_t sub_20CCCE2C8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = sub_20CCCE488;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[12];
    v9 = v2[8];

    v5 = sub_20CCCE40C;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_20CCCE40C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[11];

  v2 = v0[1];

  return v2();
}

uint64_t sub_20CCCE488()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t sub_20CCCE534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v7 = sub_20CCDBB64();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_20CCDBA64() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_20CCCE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v40 = a1;
  v41 = a5;
  v46 = a3;
  v43 = sub_20CCDA784();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v20 = *(a2 + 120);
  v21 = *(v20 + 16);

  if (v21 && (v22 = sub_20CCB0C4C(v46, a4), (v23 & 1) != 0))
  {
    v24 = *(*(v20 + 56) + 8 * v22);
  }

  else
  {
    v24 = sub_20CCB15E0(MEMORY[0x277D84F90]);
  }

  (*(v16 + 16))(v19, v40, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v24;
  v26 = v41;
  sub_20CCD70C0(v19, v41, isUniquelyReferenced_nonNull_native);
  v27 = v48;
  swift_beginAccess();

  v28 = *(a2 + 120);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  v30 = v46;
  sub_20CCD7718(v27, v46, a4, v29);

  *(a2 + 120) = v47;
  swift_endAccess();
  v31 = sub_20CCDB794();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v42;
  v34 = v26;
  v35 = v43;
  (*(v9 + 16))(v42, v34, v43);
  v36 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v45;
  *(v37 + 4) = v44;
  *(v37 + 5) = v38;
  *(v37 + 6) = v32;
  *(v37 + 7) = v30;
  *(v37 + 8) = a4;
  (*(v9 + 32))(&v37[v36], v33, v35);

  sub_20CCAA31C(0, 0, v14, &unk_20CCDDCE8, v37);
}

uint64_t sub_20CCCEA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = sub_20CCDB9D4();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCEAF0, 0, 0);
}

uint64_t sub_20CCCEAF0()
{
  v1 = v0[13];
  sub_20CCDBAD4();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_20CCCEBB0;
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];

  return sub_20CCD3F68(v5, v4, 0, 0, 1);
}

uint64_t sub_20CCCEBB0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v5 = sub_20CCCEE48;
  }

  else
  {
    v5 = sub_20CCCED18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CCCED18()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB30, &unk_20CCDDD00);
    sub_20CCDA01C(&qword_27C80FB38, &qword_27C80FB30, &unk_20CCDDD00);
    v0[17] = swift_allocError();

    return MEMORY[0x2822009F8](sub_20CCCEEB0, v3, 0);
  }

  else
  {
    v4 = v0[13];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20CCCEE48()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CCCEEB0()
{
  v1 = v0[17];
  sub_20CCCEF34(v0[8], v0[9], v0[10], v1);

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CCCEF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  result = swift_beginAccess();
  v19 = *(v4 + 120);
  if (*(v19 + 16))
  {

    v20 = sub_20CCB0C4C(a1, a2);
    if (v21)
    {
      v26[0] = a4;
      v22 = *(*(v19 + 56) + 8 * v20);

      v27 = v22;
      sub_20CCCDE30(a3, v12);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {

        return sub_20CC89568(v12, &qword_27C80FAF8, &unk_20CCDDCD0);
      }

      else
      {
        (*(v14 + 32))(v17, v12, v13);
        v23 = v27;
        v24 = v26[0];
        if (!*(v27 + 16))
        {

          v23 = 0;
        }

        swift_beginAccess();

        sub_20CCCDD38(v23, a1, a2);
        swift_endAccess();
        v26[1] = v24;
        v25 = v24;
        sub_20CCDB744();
        return (*(v14 + 8))(v17, v13);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20CCCF1C0()
{
  v1[13] = v0;
  v2 = sub_20CCDA784();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB50, &qword_20CCDDD28) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCF2C4, v0, 0);
}

uint64_t sub_20CCCF2C4()
{
  v1 = *(v0[13] + 112);
  v2 = sub_20CCDB414();
  v0[19] = v2;
  v0[20] = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[21] = sub_20CCDA01C(&qword_27C80F648, &qword_27C80F650, &unk_20CCDCF70);
  swift_beginAccess();
  v4 = *(MEMORY[0x277CEF710] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v5 = v0;
  v5[1] = sub_20CCCF3D8;

  return MEMORY[0x282141C38](v0 + 10, v6);
}

uint64_t sub_20CCCF3D8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[13];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[21];
      swift_getObjectType();
      v7 = sub_20CCDB734();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_20CCCFA84;
    v11 = v7;
  }

  else
  {
    v2[24] = v2[10];
    v10 = sub_20CCCF54C;
    v11 = v5;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](v10, v11, v9);
}

uint64_t sub_20CCCF54C()
{
  v1 = *(v0 + 192);
  if (!v1)
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 104);

    sub_20CCD006C(0, 0);
    goto LABEL_5;
  }

  *(v0 + 96) = v1;
  if (sub_20CCDB7E4())
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    sub_20CCDB764();
    sub_20CCDA4D4(&qword_27C80F940, MEMORY[0x277D85678]);
    v4 = swift_allocError();
    sub_20CCDB604();
    swift_willThrow();

    v5 = *(v0 + 104);
    v6 = v4;
    sub_20CCD006C(v4, 1);

LABEL_5:
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 104);
  swift_beginAccess();
  v16 = v1;
  MEMORY[0x20F30F2C0]();
  if (*((*(v15 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *(v0 + 104) + 120;
    v47 = *((*(v15 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_20CCDB704();
  }

  v17 = *(v0 + 104);
  sub_20CCDB724();
  swift_endAccess();
  v18 = *(v17 + 128);
  *(v0 + 200) = v18;
  v19 = *(v18 + 32);
  *(v0 + 240) = v19;
  v20 = -1;
  v21 = -1 << v19;
  if (-(-1 << v19) < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & *(v18 + 64);

  if (v22)
  {
    v23 = 0;
LABEL_17:
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = (v22 - 1) & v22;
    v31 = __clz(__rbit64(v22)) | (v23 << 6);
    (*(v29 + 16))(v27, *(v18 + 48) + *(v29 + 72) * v31, v28);
    v32 = *(*(v18 + 56) + 8 * v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
    v34 = *(v33 + 48);
    (*(v29 + 32))(v26, v27, v28);
    *(v26 + v34) = v32;
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);

    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = ((63 - v21) >> 6) - 1;
    while (v25 != v24)
    {
      v23 = v24 + 1;
      v22 = *(v18 + 72 + 8 * v24++);
      if (v22)
      {
        goto LABEL_17;
      }
    }

    v44 = *(v0 + 136);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    v30 = 0;
  }

  *(v0 + 208) = v30;
  *(v0 + 216) = v25;
  v35 = *(v0 + 144);
  sub_20CCDA46C(*(v0 + 136), v35, &qword_27C80FB50, &qword_20CCDDD28);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    v38 = *(v0 + 192);
    v37 = *(v0 + 200);

    v39 = *(MEMORY[0x277CEF710] + 4);
    v40 = swift_task_alloc();
    *(v0 + 176) = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
    *v40 = v0;
    v40[1] = sub_20CCCF3D8;

    return MEMORY[0x282141C38](v0 + 80, v41);
  }

  else
  {
    *(v0 + 224) = *(*(v0 + 144) + *(v36 + 48));
    v42 = *(MEMORY[0x277CEF708] + 4);
    v43 = swift_task_alloc();
    *(v0 + 232) = v43;
    *v43 = v0;
    v43[1] = sub_20CCCFBCC;

    return MEMORY[0x282141C28](v0 + 96);
  }
}

uint64_t sub_20CCCFA84()
{
  v1 = v0[13];
  v0[11] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F660, &qword_20CCDD400);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20CCCFB1C, v1, 0);
}

uint64_t sub_20CCCFB1C()
{
  v1 = v0[19];
  v2 = v0[20];

  v3 = v0[23];
  v4 = v0[13];
  v5 = v3;
  sub_20CCD006C(v3, 1);

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CCCFBCC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCCFCDC, v2, 0);
}

uint64_t sub_20CCCFCDC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  v5 = (*(v4 + 8))(v2, v3);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  if (!v6)
  {
    v9 = ((1 << *(v0 + 240)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 240)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v31 = *(v0 + 136);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
        (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
        v17 = 0;
        goto LABEL_12;
      }

      v8 = *(v0 + 200);
      v6 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v6)
      {
        v7 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x282141C28](v5);
  }

  v8 = *(v0 + 200);
LABEL_11:
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = (v6 - 1) & v6;
  v18 = __clz(__rbit64(v6)) | (v7 << 6);
  (*(v16 + 16))(v13, *(v8 + 48) + *(v16 + 72) * v18, v15);
  v19 = *(*(v8 + 56) + 8 * v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
  v21 = *(v20 + 48);
  (*(v16 + 32))(v14, v13, v15);
  *(v14 + v21) = v19;
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);

  v11 = v7;
LABEL_12:
  *(v0 + 208) = v17;
  *(v0 + 216) = v11;
  v22 = *(v0 + 144);
  sub_20CCDA46C(*(v0 + 136), v22, &qword_27C80FB50, &qword_20CCDDD28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) != 1)
  {
    *(v0 + 224) = *(*(v0 + 144) + *(v23 + 48));
    v29 = *(MEMORY[0x277CEF708] + 4);
    v30 = swift_task_alloc();
    *(v0 + 232) = v30;
    *v30 = v0;
    v30[1] = sub_20CCCFBCC;
    v5 = v0 + 96;

    return MEMORY[0x282141C28](v5);
  }

  v25 = *(v0 + 192);
  v24 = *(v0 + 200);

  v26 = *(MEMORY[0x277CEF710] + 4);
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v27 = v0;
  v27[1] = sub_20CCCF3D8;

  return MEMORY[0x282141C38](v0 + 80, v28);
}

uint64_t sub_20CCD006C(void *a1, int a2)
{
  v3 = v2;
  v6 = sub_20CCDA784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB50, &qword_20CCDDD28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = v50 - v16;
  if (*(v3 + 144) == 255)
  {
    v59 = v15;
    v61 = v6;
    *(v3 + 136) = a1;
    *(v3 + 144) = a2 & 1;
    v50[1] = a1;
    sub_20CCA1190(a1, a2 & 1);
    Current = CFAbsoluteTimeGetCurrent();
    *(v3 + 160) = Current;
    *(v3 + 168) = 0;
    if (qword_28110E630 != -1)
    {
LABEL_31:
      swift_once();
    }

    v19 = sub_20CCDB584();
    __swift_project_value_buffer(v19, qword_28110EE00);

    v20 = sub_20CCDB564();
    v21 = sub_20CCDB8B4();
    v22 = os_log_type_enabled(v20, v21);
    v57 = v7;
    v55 = v10;
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      swift_beginAccess();
      v24 = *(v3 + 120);
      if (v24 >> 62)
      {
        if (v24 < 0)
        {
          v49 = *(v3 + 120);
        }

        v25 = sub_20CCDB9F4();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 4) = v25;

      *(v23 + 12) = 2048;
      *(v23 + 14) = Current - *(v3 + 152);
      _os_log_impl(&dword_20CC86000, v20, v21, "Broadcast terminated after %ld elements in %f seconds", v23, 0x16u);
      MEMORY[0x20F30FD70](v23, -1, -1);

      v7 = v57;
    }

    else
    {
    }

    swift_beginAccess();
    v26 = 0;
    v27 = *(v3 + 128);
    *(v3 + 128) = MEMORY[0x277D84F98];
    v29 = v27 + 64;
    v28 = *(v27 + 64);
    v58 = v27;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v10 = v31 & v28;
    v3 = (v30 + 63) >> 6;
    v52 = v7 + 32;
    v53 = v7 + 16;
    v60 = (v7 + 8);
    v56 = a2;
    v32 = v61;
    v7 = v59;
    v54 = v17;
    v51 = v29;
    while (1)
    {
      if (!v10)
      {
        if (v3 <= v26 + 1)
        {
          v34 = v26 + 1;
        }

        else
        {
          v34 = v3;
        }

        v35 = v34 - 1;
        while (1)
        {
          v33 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v33 >= v3)
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
            (*(*(v48 - 8) + 56))(v7, 1, 1, v48);
            v10 = 0;
            v26 = v35;
            goto LABEL_24;
          }

          v10 = *(v29 + 8 * v33);
          ++v26;
          if (v10)
          {
            v26 = v33;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

      v33 = v26;
LABEL_23:
      v36 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v57;
      v39 = v58;
      v40 = v55;
      (*(v57 + 16))(v55, *(v58 + 48) + *(v57 + 72) * v37, v32);
      v41 = v32;
      v42 = *(*(v39 + 56) + 8 * v37);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
      v44 = *(v43 + 48);
      v45 = *(v38 + 32);
      v7 = v59;
      v45(v59, v40, v41);
      *(v7 + v44) = v42;
      (*(*(v43 - 8) + 56))(v7, 0, 1, v43);

      a2 = v56;
      v17 = v54;
      v29 = v51;
LABEL_24:
      sub_20CCDA46C(v7, v17, &qword_27C80FB50, &qword_20CCDDD28);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
      if ((*(*(v46 - 8) + 48))(v17, 1, v46) == 1)
      {
      }

      v47 = *&v17[*(v46 + 48)];
      if (a2)
      {
        sub_20CCDB424();
      }

      else
      {
        sub_20CCDB444();
      }

      v32 = v61;
      (*v60)(v17, v61);
    }
  }

  return result;
}

uint64_t sub_20CCD05E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v7 = sub_20CCDAEA4();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_20CCDB114();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = sub_20CCDAF54();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = sub_20CCDB184();
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB70, &qword_20CCDDD88) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F870, &qword_20CCDDD90);
  v5[23] = v20;
  v21 = *(v20 - 8);
  v5[24] = v21;
  v22 = *(v21 + 64) + 15;
  v5[25] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB78, &qword_20CCDDD98);
  v5[26] = v23;
  v24 = *(v23 - 8);
  v5[27] = v24;
  v25 = *(v24 + 64) + 15;
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD08D4, a4, 0);
}

uint64_t sub_20CCD08D4()
{
  v1 = *(v0 + 56);
  sub_20CCC62E4(*(v0 + 200));

  return MEMORY[0x2822009F8](sub_20CCD0940, 0, 0);
}

uint64_t sub_20CCD0940()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  sub_20CCDB7B4();
  (*(v3 + 8))(v2, v4);
  *(v0 + 256) = *MEMORY[0x277D0A118];
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_20CCD0A2C;
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v9 = *(v0 + 168);

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_20CCD0A2C()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CCD0B28, 0, 0);
}

uint64_t sub_20CCD0B28()
{
  v1 = *(v0 + 176);
  sub_20CCDA46C(*(v0 + 168), v1, &qword_27C80FB70, &qword_20CCDDD88);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B0, &qword_20CCDDDA0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 200);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 88);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v39 = *(v0 + 256);
    v12 = *(v0 + 176);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);
    v38 = *(v0 + 88);
    v36 = *(v0 + 160);
    v37 = *(v0 + 72);
    v34 = v12[1];
    v35 = *v12;
    v20 = v12 + *(v2 + 48);
    v21 = *v20;
    v22 = *(v20 + 16);
    *(v0 + 48) = *(v20 + 32);
    *(v0 + 16) = v21;
    *(v0 + 32) = v22;
    v23 = *(v20 + 48);
    v32 = v17;
    v33 = *(v20 + 40);
    v24 = type metadata accessor for AudioSynthesisHandle(0);
    (*(v13 + 16))(v14, v20 + *(v24 + 24), v16);
    (*(v18 + 16))(v15, v20 + *(v24 + 28), v32);

    sub_20CCDA278(v20, type metadata accessor for AudioSynthesisHandle);
    sub_20CCDB124();
    (*(v19 + 104))(v38, v39, v37);
    v25 = *(MEMORY[0x277D09E88] + 4);
    v40 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
    v26 = swift_task_alloc();
    *(v0 + 240) = v26;
    v27 = sub_20CCDA4D4(&qword_28110ED60, MEMORY[0x277D0A500]);
    *v26 = v0;
    v26[1] = sub_20CCD0E50;
    v28 = *(v0 + 160);
    v29 = *(v0 + 144);
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);

    return v40(v30, v28, v29, v27);
  }
}

uint64_t sub_20CCD0E50()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_20CCD1078;
  }

  else
  {
    v5 = sub_20CCD0FB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CCD0FB8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_20CCD0A2C;
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[21];

  return MEMORY[0x2822003E8](v5, 0, 0, v4);
}

uint64_t sub_20CCD1078()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[17];
  v8 = v0[14];
  v12 = v0[11];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[31];

  return v9();
}

uint64_t sub_20CCD1180(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for AudioStreamSender();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C8, &qword_20CCDD740) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for AudioSynthesisHandle(0);
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = sub_20CCDB014();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD1394, v1, 0);
}

uint64_t sub_20CCD1394()
{
  v29 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[5];
  v5 = sub_20CCDB584();
  v0[22] = __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  if (v9)
  {
    v11 = v0[20];
    v13 = v0[17];
    v12 = v0[18];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CCDB684();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_20CC88C4C(v15, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20CC86000, v7, v8, "Got request to observe streaming audio: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F30FD70](v27, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  else
  {
    v20 = v0[17];
    v21 = v0[18];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[25] = v18;
  v23 = v0[5];
  v22 = v0[6];
  v0[26] = sub_20CCDB004();
  v0[27] = v24;
  v25 = *(v22 + 112);
  v0[28] = v25;

  return MEMORY[0x2822009F8](sub_20CCD15E0, v25, 0);
}

uint64_t sub_20CCD15E0()
{
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[26];
    v3 = v0[27];

    v5 = sub_20CCB0C4C(v4, v3);
    if (v6)
    {
      sub_20CCDA0B8(*(v2 + 56) + *(v0[15] + 72) * v5, v0[13], type metadata accessor for AudioSynthesisHandle);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[6];
  (*(v0[15] + 56))(v0[13], v7, 1, v0[14]);

  return MEMORY[0x2822009F8](sub_20CCD16F4, v8, 0);
}

uint64_t sub_20CCD16F4()
{
  v54 = v0;
  v1 = v0[13];
  v2 = (*(v0[15] + 48))(v1, 1, v0[14]);
  v3 = v0[27];
  v4 = v0[19];
  if (v2 == 1)
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    v8 = v0[17];
    v9 = v0[5];
    v10 = v0[27];

    sub_20CC89568(v1, &qword_27C80F9C8, &qword_20CCDD740);
    v6(v4, v9, v8);
    v11 = sub_20CCDB564();
    v12 = sub_20CCDB894();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[25];
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    if (v13)
    {
      v50 = v12;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136315138;
      v20 = sub_20CCDB004();
      v22 = v21;
      v14(v15, v17);
      v23 = sub_20CC88C4C(v20, v22, &v53);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_20CC86000, v11, v50, "No audio buffer for identifier %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F30FD70](v19, -1, -1);
      MEMORY[0x20F30FD70](v18, -1, -1);
    }

    else
    {

      v14(v15, v17);
    }

    v36 = v0[20];
    v37 = v0[21];
    v38 = v0[19];
    v39 = v0[16];
    v41 = v0[12];
    v40 = v0[13];
    v42 = v0[11];
    v52 = v0[7];
    sub_20CCDA064();
    swift_allocError();
    *v43 = 0;
    v43[1] = 0;
    swift_willThrow();

    v35 = v0[1];
  }

  else
  {
    v24 = v0[26];
    v48 = v0[21];
    v49 = v0[20];
    v51 = v0[19];
    v25 = v0[16];
    v26 = v0[12];
    v47 = v25;
    v45 = v0[11];
    v46 = v0[9];
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];
    sub_20CCDA120(v1, v25, type metadata accessor for AudioSynthesisHandle);
    sub_20CCDA0B8(v25, v26 + *(v27 + 20), type metadata accessor for AudioSynthesisHandle);
    v30 = *(v29 + 120);
    *v26 = v24;
    v26[1] = v3;
    *(v26 + *(v27 + 24)) = v30;
    v31 = sub_20CCDB794();
    (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
    sub_20CCDA0B8(v26, v45, type metadata accessor for AudioStreamSender);
    v32 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    sub_20CCDA120(v45, v33 + v32, type metadata accessor for AudioStreamSender);
    v34 = v30;
    sub_20CCCD44C(0, 0, v28, &unk_20CCDDD48, v33);

    sub_20CCDA278(v26, type metadata accessor for AudioStreamSender);
    sub_20CCDA278(v47, type metadata accessor for AudioSynthesisHandle);

    v35 = v0[1];
  }

  return v35();
}

uint64_t sub_20CCD1B34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CC8DF7C;

  return sub_20CC9DBF4();
}

uint64_t sub_20CCD1BC4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for AudioSynthesisHandle(0);
  v2[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v5 = sub_20CCDAEA4();
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v7 = *(v6 + 64) + 15;
  v2[21] = swift_task_alloc();
  v8 = sub_20CCDB014();
  v2[22] = v8;
  v9 = *(v8 - 8);
  v2[23] = v9;
  v10 = *(v9 + 64) + 15;
  v2[24] = swift_task_alloc();
  v11 = sub_20CCDB184();
  v2[25] = v11;
  v12 = *(v11 - 8);
  v2[26] = v12;
  v13 = *(v12 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD1D84, v1, 0);
}

uint64_t sub_20CCD1D84()
{
  v62 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[15];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v59 = v6;
  if (v9)
  {
    v11 = v0[28];
    v13 = v0[25];
    v12 = v0[26];
    v14 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CCDB684();
    v17 = v16;
    v18 = v13;
    v19 = *(v12 + 8);
    v19(v10, v18);
    v20 = sub_20CC88C4C(v15, v17, &v61);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_20CC86000, v7, v8, "Got streaming audio available notification: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x20F30FD70](v58, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);

    if ((MEMORY[0x20F30EC00]() & 1) == 0)
    {
LABEL_5:
      v22 = v0[28];
      v21 = v0[29];
      v23 = v0[27];
      v24 = v0[24];
      v25 = v0[21];
      v26 = v0[18];

      v27 = v0[1];

      return v27();
    }
  }

  else
  {
    v29 = v0[25];
    v30 = v0[26];

    v19 = *(v30 + 8);
    v31 = (v19)(v10, v29);
    if ((MEMORY[0x20F30EC00](v31) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v59(v0[27], v0[15], v0[25]);
  v32 = sub_20CCDB564();
  v33 = sub_20CCDB8B4();
  v34 = os_log_type_enabled(v32, v33);
  v36 = v0[26];
  v35 = v0[27];
  v37 = v0[25];
  if (v34)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v61 = v39;
    *v38 = 136315138;
    v40 = sub_20CCDB134();
    v41 = v19;
    v43 = v42;
    v41(v35, v37);
    v44 = sub_20CC88C4C(v40, v43, &v61);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_20CC86000, v32, v33, "Requesting streaming audio for identifier: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F30FD70](v39, -1, -1);
    MEMORY[0x20F30FD70](v38, -1, -1);
  }

  else
  {

    v19(v35, v37);
  }

  v45 = v0[24];
  v47 = v0[20];
  v46 = v0[21];
  v48 = v0[19];
  v49 = v0[15];
  v50 = v0[16];
  sub_20CCDB134();
  sub_20CCDAFF4();
  v51 = *(v50 + 120);
  (*(v47 + 104))(v46, *MEMORY[0x277D0A0C8], v48);
  v52 = *(MEMORY[0x277D09E88] + 4);
  v60 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
  v53 = swift_task_alloc();
  v0[30] = v53;
  v54 = sub_20CCDA4D4(&qword_28110ED80, MEMORY[0x277D0A3D0]);
  *v53 = v0;
  v53[1] = sub_20CCD2240;
  v55 = v0[24];
  v56 = v0[21];
  v57 = v0[22];

  return v60(v56, v55, v57, v54);
}

uint64_t sub_20CCD2240()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 248) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 128);
  if (v0)
  {
    v9 = sub_20CCD27A4;
  }

  else
  {
    v9 = sub_20CCD23C8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_20CCD23C8()
{
  v1 = *(v0 + 144);
  v29 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v4 = sub_20CCDB464();
  *(v0 + 256) = v4;
  v28 = sub_20CCDB134();
  v6 = v5;
  v7 = sub_20CCDB154();
  v9 = v8;
  sub_20CCDB144();
  type metadata accessor for AudioStreamReceiver();
  v10 = swift_allocObject();
  *(v0 + 264) = v10;

  swift_defaultActor_initialize();
  *(v10 + 192) = sub_20CCB1D18(MEMORY[0x277D84F90]);
  *(v10 + 200) = 0;
  *(v10 + 208) = 1;
  *(v10 + 112) = v28;
  *(v10 + 120) = v6;
  *(v10 + 128) = v7;
  *(v10 + 136) = v9;
  v11 = *(v0 + 72);
  *(v10 + 144) = *(v0 + 56);
  *(v10 + 160) = v11;
  *(v10 + 176) = *(v0 + 88);
  *(v10 + 184) = v4;
  v12 = sub_20CCDB134();
  v14 = v13;
  swift_beginAccess();

  v15 = *(v3 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + 136);
  *(v3 + 136) = 0x8000000000000000;
  sub_20CCD7434(v10, v12, v14, isUniquelyReferenced_nonNull_native);

  *(v3 + 136) = v30;
  swift_endAccess();

  v17 = sub_20CCDB154();
  v19 = v18;
  v20 = v1 + v29[6];
  sub_20CCDB164();
  v21 = v1 + v29[7];
  sub_20CCDB174();
  sub_20CCDB144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
  swift_allocObject();
  v22 = sub_20CCD9DE8(v4);

  *(v1 + v29[8]) = v22;
  *(v1 + 40) = v17;
  *(v1 + 48) = v19;
  v23 = *(v0 + 16);
  v24 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v23;
  *(v1 + 16) = v24;
  v25 = *(v3 + 112);
  *(v0 + 272) = v25;
  *(v0 + 280) = sub_20CCDB134();
  *(v0 + 288) = v26;

  return MEMORY[0x2822009F8](sub_20CCD2620, v25, 0);
}

uint64_t sub_20CCD2620()
{
  v1 = v0[34];
  v2 = v0[16];
  sub_20CCC6724(v0[18], v0[35], v0[36]);

  return MEMORY[0x2822009F8](sub_20CCD26A8, v2, 0);
}

uint64_t sub_20CCD26A8()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[18];

  sub_20CCDA278(v6, type metadata accessor for AudioSynthesisHandle);
  (*(v4 + 8))(v3, v5);
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[21];
  v12 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_20CCD27A4()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[18];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v6 = v0[1];
  v7 = v0[31];

  return v6();
}

uint64_t sub_20CCD2868(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_20CCDAEF4();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_20CCDAFB4();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD29C0, v1, 0);
}

uint64_t sub_20CCD29C0()
{
  v112 = v0;
  v1 = *(v0 + 72);
  v2 = sub_20CCDAEE4();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v0 + 136);
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v104 = *(v6 + 56);
    v108 = v7;
    while (1)
    {
      v9 = *(v0 + 168);
      v10 = *(v0 + 128);
      v108(v9, v8, v10);
      v11 = sub_20CCDAF74();
      v13 = v12;
      (*(v6 - 8))(v9, v10);
      v14 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          sub_20CC9720C(v11, v13);
          v15 = v16 - v17;
          if (__OFSUB__(v16, v17))
          {
            goto LABEL_42;
          }
        }

        else
        {
          sub_20CC9720C(v11, v13);
          v15 = 0;
        }
      }

      else if (v14)
      {
        sub_20CC9720C(v11, v13);
        LODWORD(v15) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_43;
        }

        v15 = v15;
      }

      else
      {
        sub_20CC9720C(v11, v13);
        v15 = BYTE6(v13);
      }

      v18 = __OFADD__(v4, v15);
      v4 += v15;
      if (v18)
      {
        break;
      }

      v8 += v104;
      if (!--v3)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_19;
  }

  v4 = 0;
LABEL_17:
  v19 = *(v0 + 72);
  v20 = sub_20CCDAEE4();
  v21 = 0x28110E000uLL;
  if (!*(v20 + 16))
  {

    goto LABEL_24;
  }

  v22 = *(v0 + 136);
  v108 = *(v22 + 16);
  v108(*(v0 + 160), v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), *(v0 + 128));

  if (qword_28110E630 != -1)
  {
    goto LABEL_44;
  }

LABEL_19:
  v23 = *(v0 + 152);
  v105 = *(v0 + 160);
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v27 = *(v0 + 88);
  v26 = *(v0 + 96);
  v28 = *(v0 + 72);
  v29 = sub_20CCDB584();
  __swift_project_value_buffer(v29, qword_28110EE00);
  (*(v26 + 16))(v25, v28, v27);
  v108(v23, v105, v24);
  v30 = sub_20CCDB564();
  v109 = sub_20CCDB8B4();
  v31 = os_log_type_enabled(v30, v109);
  v33 = *(v0 + 152);
  v32 = *(v0 + 160);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  if (v31)
  {
    log = *(v0 + 128);
    v39 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v111 = v102;
    *v39 = 134218498;
    v106 = v32;
    v40 = *(sub_20CCDAEE4() + 16);

    (*(v37 + 8))(v36, v38);
    *(v39 + 4) = v40;
    *(v39 + 12) = 2080;
    v41 = sub_20CCDAFA4();
    v43 = v42;
    v44 = *(v34 + 8);
    v44(v33, log);
    v45 = sub_20CC88C4C(v41, v43, &v111);

    *(v39 + 14) = v45;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v4;
    _os_log_impl(&dword_20CC86000, v30, v109, "Received %ld chunks for stream %s. Total message size: %ld.", v39, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v102);
    MEMORY[0x20F30FD70](v102, -1, -1);
    MEMORY[0x20F30FD70](v39, -1, -1);

    v44(v106, log);
  }

  else
  {
    (*(v37 + 8))(*(v0 + 120), *(v0 + 88));

    v46 = *(v34 + 8);
    v46(v33, v35);
    v46(v32, v35);
  }

  v21 = 0x28110E000uLL;
LABEL_24:
  v47 = *(v0 + 72);
  v48 = sub_20CCDAEE4();
  *(v0 + 176) = v48;
  v49 = *(v48 + 16);
  *(v0 + 184) = v49;
  if (v49)
  {
    v50 = *(v0 + 136);
    v51 = *(v0 + 80);
    *(v0 + 232) = *(v50 + 80);
    swift_beginAccess();
    v52 = 0;
    *(v0 + 192) = *(v50 + 72);
    *(v0 + 200) = *(v50 + 16);
    while (1)
    {
      *(v0 + 208) = v52;
      v55 = *(v0 + 80);
      v56 = *(v0 + 136) + 16;
      (*(v0 + 200))(*(v0 + 144), *(v0 + 176) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 192) * v52, *(v0 + 128));
      v57 = sub_20CCDAFA4();
      v59 = v58;
      v60 = *(v55 + 136);
      if (*(v60 + 16))
      {
        v61 = v57;
        v62 = *(v55 + 136);

        v63 = sub_20CCB0C4C(v61, v59);
        v65 = v64;

        if (v65)
        {
          break;
        }
      }

      if (*(v21 + 1584) != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 112);
      v67 = *(v0 + 88);
      v68 = *(v0 + 96);
      v69 = *(v0 + 72);
      v70 = sub_20CCDB584();
      __swift_project_value_buffer(v70, qword_28110EE00);
      v71 = *(v68 + 16);
      v71(v66, v69, v67);
      v72 = sub_20CCDB564();
      v73 = sub_20CCDB894();
      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v0 + 144);
      v76 = *(v0 + 128);
      v77 = *(v0 + 112);
      v110 = (*(v0 + 136) + 8);
      if (v74)
      {
        v107 = *(v0 + 128);
        v79 = *(v0 + 96);
        v78 = *(v0 + 104);
        v80 = *(v0 + 88);
        loga = v72;
        v81 = swift_slowAlloc();
        v103 = v75;
        v82 = swift_slowAlloc();
        v111 = v82;
        *v81 = 136315138;
        v71(v78, v77, v80);
        v83 = sub_20CCDB684();
        v84 = v73;
        v86 = v85;
        (*(v79 + 8))(v77, v80);
        v87 = sub_20CC88C4C(v83, v86, &v111);

        *(v81 + 4) = v87;
        v21 = 0x28110E000;
        _os_log_impl(&dword_20CC86000, loga, v84, "No receiver for streaming audio data request %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x20F30FD70](v82, -1, -1);
        MEMORY[0x20F30FD70](v81, -1, -1);

        (*v110)(v103, v107);
      }

      else
      {
        v54 = *(v0 + 88);
        v53 = *(v0 + 96);

        (*(v53 + 8))(v77, v54);
        (*v110)(v75, v76);
      }

      v52 = *(v0 + 208) + 1;
      if (v52 == *(v0 + 184))
      {
        v88 = *(v0 + 176);
        goto LABEL_35;
      }
    }

    *(v0 + 216) = *(*(v60 + 56) + 8 * v63);

    v98 = swift_task_alloc();
    *(v0 + 224) = v98;
    *v98 = v0;
    v98[1] = sub_20CCD31F0;
    v99 = *(v0 + 144);

    return sub_20CCCC024(v99);
  }

  else
  {
LABEL_35:

    v90 = *(v0 + 160);
    v89 = *(v0 + 168);
    v92 = *(v0 + 144);
    v91 = *(v0 + 152);
    v94 = *(v0 + 112);
    v93 = *(v0 + 120);
    v95 = *(v0 + 104);

    v96 = *(v0 + 8);

    return v96();
  }
}

uint64_t sub_20CCD31F0(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 236) = a1;

  return MEMORY[0x2822009F8](sub_20CCD3308, v3, 0);
}

uint64_t sub_20CCD3308()
{
  v76 = v0;
  if (*(v0 + 236))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 80);
    v3 = sub_20CCDAFA4();
    v5 = v4;
    swift_beginAccess();
    v6 = *(v2 + 136);
    v7 = sub_20CCB0C4C(v3, v5);
    if (v8)
    {
      v9 = v7;
      v10 = *(v0 + 80);
      v11 = *(v10 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v10 + 136);
      *(v0 + 64) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CCD8828();
        v13 = *(v0 + 64);
      }

      v14 = *(v0 + 80);
      v15 = *(*(v13 + 48) + 16 * v9 + 8);

      v16 = *(*(v13 + 56) + 8 * v9);
      sub_20CCD6990(v9, v13);
      *(v14 + 136) = v13;
    }

    v17 = *(v0 + 216);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v20 = *(v0 + 128);
    swift_endAccess();

    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v21 = *(v0 + 216);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

  v22 = *(v0 + 208) + 1;
  if (v22 == *(v0 + 184))
  {
LABEL_9:
    v23 = *(v0 + 176);

    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 104);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v33 = 0x28110E000;
    while (1)
    {
      *(v0 + 208) = v22;
      v44 = *(v0 + 80);
      v45 = *(v0 + 136) + 16;
      (*(v0 + 200))(*(v0 + 144), *(v0 + 176) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 192) * v22, *(v0 + 128));
      v46 = sub_20CCDAFA4();
      v48 = v47;
      v49 = *(v44 + 136);
      if (*(v49 + 16))
      {
        v50 = v46;
        v51 = *(v44 + 136);

        v52 = sub_20CCB0C4C(v50, v48);
        v54 = v53;

        if (v54)
        {
          break;
        }
      }

      if (*(v33 + 1584) != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 112);
      v56 = *(v0 + 88);
      v57 = *(v0 + 96);
      v58 = *(v0 + 72);
      v59 = sub_20CCDB584();
      __swift_project_value_buffer(v59, qword_28110EE00);
      v60 = *(v57 + 16);
      v60(v55, v58, v56);
      v61 = sub_20CCDB564();
      v62 = sub_20CCDB894();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 144);
      v65 = *(v0 + 128);
      v66 = *(v0 + 112);
      v74 = (*(v0 + 136) + 8);
      if (v63)
      {
        v73 = *(v0 + 128);
        v35 = *(v0 + 96);
        v34 = *(v0 + 104);
        v36 = *(v0 + 88);
        log = v61;
        v37 = swift_slowAlloc();
        v72 = v64;
        v38 = swift_slowAlloc();
        v75 = v38;
        *v37 = 136315138;
        v60(v34, v66, v36);
        v39 = sub_20CCDB684();
        v40 = v62;
        v42 = v41;
        (*(v35 + 8))(v66, v36);
        v43 = sub_20CC88C4C(v39, v42, &v75);

        *(v37 + 4) = v43;
        v33 = 0x28110E000uLL;
        _os_log_impl(&dword_20CC86000, log, v40, "No receiver for streaming audio data request %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F30FD70](v38, -1, -1);
        MEMORY[0x20F30FD70](v37, -1, -1);

        (*v74)(v72, v73);
      }

      else
      {
        v68 = *(v0 + 88);
        v67 = *(v0 + 96);

        (*(v67 + 8))(v66, v68);
        (*v74)(v64, v65);
      }

      v22 = *(v0 + 208) + 1;
      if (v22 == *(v0 + 184))
      {
        goto LABEL_9;
      }
    }

    *(v0 + 216) = *(*(v49 + 56) + 8 * v52);

    v69 = swift_task_alloc();
    *(v0 + 224) = v69;
    *v69 = v0;
    v69[1] = sub_20CCD31F0;
    v70 = *(v0 + 144);

    return sub_20CCCC024(v70);
  }
}

uint64_t sub_20CCD383C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_20CCD385C, v1, 0);
}

uint64_t sub_20CCD385C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_20CCDB0B4();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 136);
  if (*(v6 + 16) && (v7 = *(v2 + 136), , v8 = sub_20CCB0C4C(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    v0[10] = *(*(v6 + 56) + 8 * v8);

    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_20CCD39B8;
    v12 = v0[8];

    return sub_20CCCC59C(v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_20CCD39B8(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_20CCD3AD0, v3, 0);
}

uint64_t sub_20CCD3AD0()
{
  if (*(v0 + 96) == 1)
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = sub_20CCDB0B4();
    v6 = v5;
    swift_beginAccess();
    sub_20CCD472C(v4, v6);
    swift_endAccess();
  }

  else
  {
    v7 = *(v0 + 80);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20CCD3BAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCD3BD0, v2, 0);
}

uint64_t sub_20CCD3BD0()
{
  v1 = *(v0[4] + 128);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_20CCD3C90;
  v4 = v0[2];
  v3 = v0[3];

  return sub_20CCCDFE8(v4, v3, 0x8AC7230489E80000, 0);
}

uint64_t sub_20CCD3C90()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 32);

    return MEMORY[0x2822009F8](sub_20CCD3DD4, v7, 0);
  }
}

uint64_t sub_20CCD3DD4()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Done synchronizing streaming audio start", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCD3EEC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CCD3F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20CCDB9C4();
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

  return MEMORY[0x2822009F8](sub_20CCD4068, 0, 0);
}

uint64_t sub_20CCD4068()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_20CCDB9D4();
  v7 = sub_20CCDA4D4(&qword_27C80FB40, MEMORY[0x277D85928]);
  sub_20CCDBAB4();
  sub_20CCDA4D4(&qword_27C80FB48, MEMORY[0x277D858F8]);
  sub_20CCDB9E4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_20CCD41F8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_20CCD41F8()
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

    return MEMORY[0x2822009F8](sub_20CCD43B4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_20CCD43B4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_20CCD4420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20CCB0AA4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CCD7C98();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_20CCDAF54();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_20CCDB214();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_20CCD6110(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_20CCDB214();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_20CCD45C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_20CCB0C4C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CCD85C8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for AudioSynthesisHandle(0);
    v22 = *(v15 - 8);
    sub_20CCDA120(v14 + *(v22 + 72) * v9, a3, type metadata accessor for AudioSynthesisHandle);
    sub_20CCD67A4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for AudioSynthesisHandle(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_20CCD472C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_20CCB0C4C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_20CCD8828();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_20CCD6990(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_20CCD47C4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_20CCDB214();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CCDAF54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F928, &qword_20CCDD300);
  v52 = a2;
  result = sub_20CCDBA14();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_20CCDA4D4(&qword_27C80F8E8, MEMORY[0x277D0A278]);
      result = sub_20CCDB644();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_20CCD4C6C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20CCDA784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D0, &unk_20CCDDD50);
  v43 = a2;
  result = sub_20CCDBA14();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20CCDA4D4(&qword_27C80F8A8, MEMORY[0x277CC95F0]);
      result = sub_20CCDB644();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20CCD5048(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_20CCDA784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C0, &unk_20CCDD280);
  v52 = a2;
  result = sub_20CCDBA14();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_20CCDA4D4(&qword_27C80F8A8, MEMORY[0x277CC95F0]);
      result = sub_20CCDB644();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_20CCD54F8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AudioSynthesisHandle(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F938, qword_20CCDD310);
  v44 = a2;
  result = sub_20CCDBA14();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_20CCDA120(v31, v45, type metadata accessor for AudioSynthesisHandle);
      }

      else
      {
        sub_20CCDA0B8(v31, v45, type metadata accessor for AudioSynthesisHandle);
      }

      v32 = *(v12 + 40);
      sub_20CCDBB44();
      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_20CCDA120(v45, *(v12 + 56) + v30 * v20, type metadata accessor for AudioSynthesisHandle);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}