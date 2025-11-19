uint64_t sub_21A39DD94()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_21A39E5F8;
  }

  else
  {
    v3 = sub_21A39DEA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A39DEA8()
{
  v78 = v0;
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = v0[20];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[24];
  v8 = v0[25];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[24], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[22];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[19];
    (*(v12 + 32))(v10, v0[23], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v70 = v0[34];
  v74 = v0[35];
  v65 = v0[30];
  v66 = v0[33];
  v14 = v0[28];
  v63 = v0[25];
  v64 = v0[31];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];
  v62 = v0[15];
  (*(v0[27] + 16))(v14, v0[29], v0[26]);
  off_282B3D9B0();
  v18 = v0[12];
  sub_21A360CEC(v0 + 8, v0[11]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 8);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v70(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[14];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v26 = v19[4];
    v25 = v19[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v27 = sub_21A3B21DC();
    v28 = sub_21A3B25DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77 = v75;
      *v29 = 136446210;
      v67 = sub_21A3B26CC();
      v71 = v28;
      v31 = v30;

      v32 = sub_21A3AF0A8(v67, v31, &v77);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v27, v71, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v29, 0xCu);
      sub_21A361318(v75);
      MEMORY[0x21CED8F60](v75, -1, -1);
      MEMORY[0x21CED8F60](v29, -1, -1);
    }

    else
    {
    }

    v46 = v0[31];
    v47 = v0[29];
    v48 = v0[26];
    v49 = v0[27];
    v50 = v0[25];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[31];
    v51 = v0[32];
    v54 = v0[29];
    v53 = v0[30];
    v55 = v0[28];
    v57 = v0[24];
    v56 = v0[25];
    v59 = v0[22];
    v58 = v0[23];
    v60 = v0[21];
    v69 = v0[18];
    v73 = v0[17];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[29];
    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[25];
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[31];
    v37 = v0[32];
    v39 = v0[29];
    v40 = v0[28];
    v42 = v0[24];
    v41 = v0[25];
    v44 = v0[22];
    v43 = v0[23];
    v68 = v0[21];
    v72 = v0[18];
    v76 = v0[17];
    sub_21A365B98(v0[30], v0[13]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39E5F8()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[37];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21A39E6F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_21A3B1FFC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = sub_21A3B205C();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *v1;
  v2[26] = v16;
  v2[27] = v17;
  v2[28] = v1[4];

  return MEMORY[0x2822009F8](sub_21A39E998, 0, 0);
}

uint64_t sub_21A39E998()
{
  v1 = v0[26];
  v2 = v0[27];
  sub_21A3B1A1C();
  v3 = type metadata accessor for RecipeEntity();
  v0[29] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v0[30] = v5;
  v0[31] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[26];
  if (v6 == 1)
  {
    sub_21A365D1C(v7, &qword_27CD23F78, &unk_21A3B2F40);
    v8 = swift_task_alloc();
    v0[32] = v8;
    *v8 = v0;
    v8[1] = sub_21A39EBA8;
    v9 = v0[23];
    v10 = v0[8];

    return sub_21A3AA568(v9);
  }

  else
  {
    sub_21A365B98(v7, v0[7]);
    v13 = v0[25];
    v12 = v0[26];
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];
    v18 = v0[18];
    v17 = v0[19];
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[15];
    v23 = v0[12];
    v24 = v0[11];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A39EBA8()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_21A39F3C0;
  }

  else
  {
    v3 = sub_21A39ECBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A39ECBC()
{
  v81 = v0;
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[18];
  v8 = v0[19];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[18], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[16];
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    (*(v12 + 32))(v10, v0[17], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v73 = v0[30];
  v77 = v0[31];
  v14 = v0[28];
  v70 = v0[24];
  v71 = v0[29];
  v15 = v0[22];
  v68 = v0[19];
  v69 = v0[25];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  v67 = v0[9];
  (*(v0[21] + 16))(v15, v0[23], v0[20]);
  sub_21A3B187C();
  v19 = v0[6];
  sub_21A360CEC(v0 + 2, v0[5]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v18 + 8))(v17, v67);
  sub_21A3B1E6C();

  sub_21A363A24(v15, v16, v69);
  sub_21A361318(v0 + 2);
  sub_21A365CB4(v69, v70, &qword_27CD23F78, &unk_21A3B2F40);
  if (v73(v70, 1, v71) == 1)
  {
    sub_21A365D1C(v0[24], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v20 = v0[8];
    v21 = sub_21A3B21FC();
    sub_21A365DC4(v21, qword_27CD24AB0);
    v23 = *v20;
    v22 = v20[1];
    v25 = v20[2];
    v24 = v20[3];
    v26 = v20[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v27 = sub_21A3B21DC();
    v28 = sub_21A3B25DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v80 = v30;
      *v29 = 136446210;
      v74 = sub_21A3B26CC();
      v78 = v28;
      v32 = v31;

      v33 = sub_21A3AF0A8(v74, v32, &v80);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_21A35E000, v27, v78, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v29, 0xCu);
      sub_21A361318(v30);
      MEMORY[0x21CED8F60](v30, -1, -1);
      MEMORY[0x21CED8F60](v29, -1, -1);
    }

    else
    {
    }

    v51 = v0[25];
    v52 = v0[23];
    v53 = v0[20];
    v54 = v0[21];
    v55 = v0[19];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v51, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v55, &qword_27CD24070, &unk_21A3B4D80);
    (*(v54 + 8))(v52, v53);
    v57 = v0[25];
    v56 = v0[26];
    v59 = v0[23];
    v58 = v0[24];
    v60 = v0[22];
    v62 = v0[18];
    v61 = v0[19];
    v64 = v0[16];
    v63 = v0[17];
    v65 = v0[15];
    v72 = v0[12];
    v76 = v0[11];

    v50 = v0[1];
  }

  else
  {
    v34 = v0[24];
    v35 = v0[23];
    v36 = v0[20];
    v37 = v0[21];
    v38 = v0[19];
    v39 = v0[7];
    sub_21A365D1C(v0[25], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v38, &qword_27CD24070, &unk_21A3B4D80);
    (*(v37 + 8))(v35, v36);
    sub_21A365B98(v34, v39);
    v41 = v0[25];
    v40 = v0[26];
    v43 = v0[23];
    v42 = v0[24];
    v44 = v0[22];
    v46 = v0[18];
    v45 = v0[19];
    v48 = v0[16];
    v47 = v0[17];
    v49 = v0[15];
    v75 = v0[12];
    v79 = v0[11];

    v50 = v0[1];
  }

  return v50();
}

uint64_t sub_21A39F3C0()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[33];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21A39F4C0()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A39F5FC, 0, 0);
}

uint64_t sub_21A39F5FC()
{
  v1 = v0[16];
  off_282B3C8F0();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3C900[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39F7F4;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A39F7F4()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A39F8F0, 0, 0);
}

uint64_t sub_21A39F8F0()
{
  v1 = v0[15];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 7);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 7);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];

  v13 = v0[1];

  return v13(v4, v5);
}

uint64_t sub_21A39FA78()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A39FBB4, 0, 0);
}

uint64_t sub_21A39FBB4()
{
  v1 = v0[16];
  off_282B3CCC0();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3CCD0[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A39FDAC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3AC344, 0, 0);
}

uint64_t sub_21A39FEA8()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A39FFE4, 0, 0);
}

uint64_t sub_21A39FFE4()
{
  v1 = v0[16];
  off_282B3CDA0();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3CDB0[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A01DC()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A0318, 0, 0);
}

uint64_t sub_21A3A0318()
{
  v1 = v0[16];
  off_282B3CE58();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3CE68[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A0510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21A3B1FFC();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = a4;

  return MEMORY[0x2822009F8](sub_21A3A065C, 0, 0);
}

uint64_t sub_21A3A065C()
{
  v1 = v0[15];
  off_282B3CF90();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[15], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3CFA0[0]();
    v3 = v0[5];
    v4 = v0[6];
    sub_21A360CEC(v0 + 2, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A0854;
    v7 = v0[14];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[15];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A0854()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3A0950, 0, 0);
}

uint64_t sub_21A3A0950()
{
  v1 = v0[14];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];

  v13 = v0[1];

  return v13(v4, v5);
}

uint64_t sub_21A3A0AD8()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 104) = v2;
  v3 = *(v2 - 8);
  *(v1 + 112) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  v7 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = v0[2];

  return MEMORY[0x2822009F8](sub_21A3A0C14, 0, 0);
}

uint64_t sub_21A3A0C14()
{
  v1 = v0[17];
  off_282B3D040();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[17], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D050[0]();
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A0E0C;
    v7 = v0[16];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[17];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A0E0C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3AC348, 0, 0);
}

uint64_t sub_21A3A0F08()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A1044, 0, 0);
}

uint64_t sub_21A3A1044()
{
  v1 = v0[16];
  off_282B3D1E8();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D1F8[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A123C()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A1378, 0, 0);
}

uint64_t sub_21A3A1378()
{
  v1 = v0[16];
  off_282B3D2A0();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D2B0[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A1570()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 104) = v2;
  v3 = *(v2 - 8);
  *(v1 + 112) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  v7 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = v0[2];

  return MEMORY[0x2822009F8](sub_21A3A16AC, 0, 0);
}

uint64_t sub_21A3A16AC()
{
  v1 = v0[17];
  off_282B3D6D0();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[17], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D6E0[0]();
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A0E0C;
    v7 = v0[16];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[17];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A18A4()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A19E0, 0, 0);
}

uint64_t sub_21A3A19E0()
{
  v1 = v0[16];
  off_282B3D788();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D798[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A1BD8()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 96) = v2;
  v3 = *(v2 - 8);
  *(v1 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v7 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21A3A1D14, 0, 0);
}

uint64_t sub_21A3A1D14()
{
  v1 = v0[16];
  off_282B3D860();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[16], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D870[0]();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_21A39FDAC;
    v7 = v0[15];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[16];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A1F0C()
{
  v2 = sub_21A3B1FFC();
  *(v1 + 104) = v2;
  v3 = *(v2 - 8);
  *(v1 + 112) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  v7 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  *(v1 + 48) = v0[2];

  return MEMORY[0x2822009F8](sub_21A3A2048, 0, 0);
}

uint64_t sub_21A3A2048()
{
  v1 = v0[17];
  off_282B3D998();
  v2 = type metadata accessor for RecipeEntity();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[17], &qword_27CD23F78, &unk_21A3B2F40);
    off_282B3D9A8[0]();
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    v5 = *(MEMORY[0x277CFCC68] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_21A3A2240;
    v7 = v0[16];

    return MEMORY[0x28214F8F0](v7, v3, v4);
  }

  else
  {
    v8 = v0[17];
    v9 = *v8;
    v10 = v8[1];

    sub_21A36769C(v8, type metadata accessor for RecipeEntity);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];

    v14 = v0[1];

    return v14(v9, v10);
  }
}

uint64_t sub_21A3A2240()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3A233C, 0, 0);
}

uint64_t sub_21A3A233C()
{
  v1 = v0[16];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 8);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 8);
  }

  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];

  v13 = v0[1];

  return v13(v4, v5);
}

uint64_t sub_21A3A24C4()
{
  v2 = sub_21A3B1FFC();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v0;
  v1[11] = v7;
  v1[12] = v8;
  v1[13] = v0[3];

  return MEMORY[0x2822009F8](sub_21A3A25FC, 0, 0);
}

uint64_t sub_21A3A25FC()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_21A3B1A1C();
  v3 = type metadata accessor for RecipeEntity();
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[13];
    sub_21A365D1C(v0[11], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A3B187C();
    v5 = v0[5];
    v6 = v0[6];
    sub_21A360CEC(v0 + 2, v5);
    v7 = *(MEMORY[0x277CFCC68] + 4);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_21A3A27B0;
    v9 = v0[10];

    return MEMORY[0x28214F8F0](v9, v5, v6);
  }

  else
  {
    v10 = v0[11];
    v11 = *v10;
    v12 = v10[1];

    sub_21A36769C(v10, type metadata accessor for RecipeEntity);
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];

    v16 = v0[1];

    return v16(v11, v12);
  }
}

uint64_t sub_21A3A27B0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3A28AC, 0, 0);
}

uint64_t sub_21A3A28AC()
{
  v1 = v0[10];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];

  v13 = v0[1];

  return v13(v4, v5);
}

uint64_t sub_21A3A2A34(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A2AD4;

  return sub_21A39F4C0();
}

uint64_t sub_21A3A2AD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A2BDC, 0, 0);
}

uint64_t sub_21A3A2BDC()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3C8F8();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A2FB8;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A2FB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3A3450;
  }

  else
  {
    v8 = sub_21A3A30F4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A30F4()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A3450()
{
  sub_21A361318(v0 + 7);
  v1 = v0[22];
  v2 = v0[1];

  return v2();
}

uint64_t sub_21A3A34B4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A3554;

  return sub_21A39FA78();
}

uint64_t sub_21A3A3554(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A365C, 0, 0);
}

uint64_t sub_21A3A365C()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3CCC8();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A3A38;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A3A38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A3B74;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A3B74()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A3ED0(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A3F70;

  return sub_21A39FEA8();
}

uint64_t sub_21A3A3F70(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A4078, 0, 0);
}

uint64_t sub_21A3A4078()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3CDA8();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A4454;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A4454(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A4590;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A4590()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A48EC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A498C;

  return sub_21A3A01DC();
}

uint64_t sub_21A3A498C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A4A94, 0, 0);
}

uint64_t sub_21A3A4A94()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3CE60();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A4E70;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A4E70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A4FAC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A4FAC()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = a4;
  v5[10] = a5;
  v10 = swift_task_alloc();
  v5[19] = v10;
  *v10 = v5;
  v10[1] = sub_21A3A53D0;

  return sub_21A3A0510(a2, a3, a4, a5);
}

uint64_t sub_21A3A53D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[19];
  v7 = *v2;
  v4[20] = a2;

  return MEMORY[0x2822009F8](sub_21A3A54D8, 0, 0);
}

uint64_t sub_21A3A54D8()
{
  v30 = v0;
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[12];
    off_282B3CF98();
    v3 = v0[5];
    v4 = v0[6];
    sub_21A360CEC(v0 + 2, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[21] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A5890;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v9 = v0[17];
    v8 = v0[18];
    v11 = v0[15];
    v10 = v0[16];
    v12 = sub_21A3B21FC();
    sub_21A365DC4(v12, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136446210;
      v22 = sub_21A3B26CC();
      v28 = v14;
      v24 = v23;

      v25 = sub_21A3AF0A8(v22, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_21A35E000, v13, v28, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v20, 0xCu);
      sub_21A361318(v21);
      MEMORY[0x21CED8F60](v21, -1, -1);
      MEMORY[0x21CED8F60](v20, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_21A3A5890(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v7 = *(v3 + 168);

  if (v1)
  {
    v8 = sub_21A3A5D04;
  }

  else
  {
    v8 = sub_21A3A59CC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A59CC()
{
  v27 = v0;
  v1 = v0[23];
  if (*(v1 + 16))
  {
    v2 = v0[14];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 2);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[23];

    sub_21A361318(v0 + 2);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v7 = v0[17];
    v6 = v0[18];
    v9 = v0[15];
    v8 = v0[16];
    v10 = sub_21A3B21FC();
    sub_21A365DC4(v10, qword_27CD24AB0);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v11 = sub_21A3B21DC();
    v12 = sub_21A3B25DC();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    if (v13)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      v20 = sub_21A3B26CC();
      v25 = v12;
      v22 = v21;

      v23 = sub_21A3AF0A8(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21A35E000, v11, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v18, 0xCu);
      sub_21A361318(v19);
      MEMORY[0x21CED8F60](v19, -1, -1);
      MEMORY[0x21CED8F60](v18, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A5D04()
{
  sub_21A361318(v0 + 2);
  v1 = v0[24];
  v2 = v0[1];

  return v2();
}

uint64_t sub_21A3A5D68(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A5E08;

  return sub_21A3A0AD8();
}

uint64_t sub_21A3A5E08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[18];
  v7 = *v2;
  v4[19] = a2;

  return MEMORY[0x2822009F8](sub_21A3A5F10, 0, 0);
}

uint64_t sub_21A3A5F10()
{
  v28 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    off_282B3D048();
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[20] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A6310;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[17];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v15 = v8[4];
    v14 = v8[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v16 = sub_21A3B21DC();
    v17 = sub_21A3B25DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v18 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v17;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v27);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v16, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v18, 0xCu);
      sub_21A361318(v26);
      MEMORY[0x21CED8F60](v26, -1, -1);
      MEMORY[0x21CED8F60](v18, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A6310(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 160);

  if (v1)
  {
    v8 = sub_21A3AC350;
  }

  else
  {
    v8 = sub_21A3A644C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A644C()
{
  v25 = v0;
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 8);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[22];

    sub_21A361318(v0 + 8);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[17];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v13 = v6[4];
    v12 = v6[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v14 = sub_21A3B21DC();
    v15 = sub_21A3B25DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v16 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v15;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v24);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v14, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v16, 0xCu);
      sub_21A361318(v23);
      MEMORY[0x21CED8F60](v23, -1, -1);
      MEMORY[0x21CED8F60](v16, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A67CC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A686C;

  return sub_21A3A0F08();
}

uint64_t sub_21A3A686C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A6974, 0, 0);
}

uint64_t sub_21A3A6974()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D1F0();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A6D50;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A6D50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A6E8C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A6E8C()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A71E8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A7288;

  return sub_21A3A123C();
}

uint64_t sub_21A3A7288(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A7390, 0, 0);
}

uint64_t sub_21A3A7390()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D2A8();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A776C;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A776C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A78A8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A78A8()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A7C04(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A7CA4;

  return sub_21A3A1570();
}

uint64_t sub_21A3A7CA4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[18];
  v7 = *v2;
  v4[19] = a2;

  return MEMORY[0x2822009F8](sub_21A3A7DAC, 0, 0);
}

uint64_t sub_21A3A7DAC()
{
  v28 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    off_282B3D6D8();
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[20] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A81AC;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[17];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v15 = v8[4];
    v14 = v8[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v16 = sub_21A3B21DC();
    v17 = sub_21A3B25DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v18 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v17;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v27);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v16, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v18, 0xCu);
      sub_21A361318(v26);
      MEMORY[0x21CED8F60](v26, -1, -1);
      MEMORY[0x21CED8F60](v18, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A81AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 160);

  if (v1)
  {
    v8 = sub_21A3AC350;
  }

  else
  {
    v8 = sub_21A3A82E8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A82E8()
{
  v25 = v0;
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 8);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[22];

    sub_21A361318(v0 + 8);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[17];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v13 = v6[4];
    v12 = v6[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v14 = sub_21A3B21DC();
    v15 = sub_21A3B25DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v16 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v15;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v24);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v14, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v16, 0xCu);
      sub_21A361318(v23);
      MEMORY[0x21CED8F60](v23, -1, -1);
      MEMORY[0x21CED8F60](v16, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A8668(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A8708;

  return sub_21A3A18A4();
}

uint64_t sub_21A3A8708(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A8810, 0, 0);
}

uint64_t sub_21A3A8810()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D790();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A8BEC;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A8BEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A8D28;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A8D28()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A9084(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A9124;

  return sub_21A3A1BD8();
}

uint64_t sub_21A3A9124(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[17];
  v7 = *v2;
  v4[18] = a2;

  return MEMORY[0x2822009F8](sub_21A3A922C, 0, 0);
}

uint64_t sub_21A3A922C()
{
  v27 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[13];
    off_282B3D868();
    v3 = v0[10];
    v4 = v0[11];
    sub_21A360CEC(v0 + 7, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[19] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21A3A9608;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v14 = v8[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v15 = sub_21A3B21DC();
    v16 = sub_21A3B25DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v16;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v15, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v17, 0xCu);
      sub_21A361318(v18);
      MEMORY[0x21CED8F60](v18, -1, -1);
      MEMORY[0x21CED8F60](v17, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3A9608(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);

  if (v1)
  {
    v8 = sub_21A3AC34C;
  }

  else
  {
    v8 = sub_21A3A9744;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3A9744()
{
  v24 = v0;
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[15];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 7);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[21];

    sub_21A361318(v0 + 7);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3A9AA0(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_21A3A9B40;

  return sub_21A3A1F0C();
}

uint64_t sub_21A3A9B40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[18];
  v7 = *v2;
  v4[19] = a2;

  return MEMORY[0x2822009F8](sub_21A3A9C48, 0, 0);
}

uint64_t sub_21A3A9C48()
{
  v28 = v0;
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[14];
    off_282B3D9A0();
    v3 = v0[11];
    v4 = v0[12];
    sub_21A360CEC(v0 + 8, v3);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v5 = swift_allocObject();
    v0[20] = v5;
    *(v5 + 16) = xmmword_21A3B3530;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = *(MEMORY[0x277CFCD78] + 4);
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_21A3AA048;

    return MEMORY[0x28214FA48](v5, v3, v4);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v8 = v0[17];
    v9 = sub_21A3B21FC();
    sub_21A365DC4(v9, qword_27CD24AB0);
    v11 = *v8;
    v10 = v8[1];
    v13 = v8[2];
    v12 = v8[3];
    v15 = v8[4];
    v14 = v8[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v16 = sub_21A3B21DC();
    v17 = sub_21A3B25DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v18 = 136446210;
      v24 = sub_21A3B26CC();
      v25 = v17;
      v20 = v19;

      v21 = sub_21A3AF0A8(v24, v20, &v27);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_21A35E000, v16, v25, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v18, 0xCu);
      sub_21A361318(v26);
      MEMORY[0x21CED8F60](v26, -1, -1);
      MEMORY[0x21CED8F60](v18, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21A3AA048(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 160);

  if (v1)
  {
    v8 = sub_21A3AA504;
  }

  else
  {
    v8 = sub_21A3AA184;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3AA184()
{
  v25 = v0;
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 8);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[22];

    sub_21A361318(v0 + 8);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[17];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v13 = v6[4];
    v12 = v6[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v14 = sub_21A3B21DC();
    v15 = sub_21A3B25DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v16 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v15;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v24);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v14, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v16, 0xCu);
      sub_21A361318(v23);
      MEMORY[0x21CED8F60](v23, -1, -1);
      MEMORY[0x21CED8F60](v16, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3AA504()
{
  sub_21A361318(v0 + 8);
  v1 = v0[23];
  v2 = v0[1];

  return v2();
}

uint64_t sub_21A3AA568(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *(v1 + 16);
  v3 = swift_task_alloc();
  v2[13] = v3;
  *v3 = v2;
  v3[1] = sub_21A3AA600;

  return sub_21A3A24C4();
}

uint64_t sub_21A3AA600(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[13];
  v7 = *v2;
  v4[14] = a2;

  return MEMORY[0x2822009F8](sub_21A3AA708, 0, 0);
}

uint64_t sub_21A3AA708()
{
  v28 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[12];
    sub_21A3B187C();
    v4 = v0[5];
    v5 = v0[6];
    sub_21A360CEC(v0 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v0[15] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    v7 = *(MEMORY[0x277CFCD78] + 4);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_21A3AAAC4;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v9 = v0[11];
    v10 = sub_21A3B21FC();
    sub_21A365DC4(v10, qword_27CD24AB0);
    v12 = *v9;
    v11 = v9[1];
    v14 = v9[2];
    v13 = v9[3];
    v15 = v9[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v16 = sub_21A3B21DC();
    v17 = sub_21A3B25DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136446210;
      v25 = sub_21A3B26CC();
      v26 = v17;
      v21 = v20;

      v22 = sub_21A3AF0A8(v25, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_21A35E000, v16, v26, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v18, 0xCu);
      sub_21A361318(v19);
      MEMORY[0x21CED8F60](v19, -1, -1);
      MEMORY[0x21CED8F60](v18, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_21A3AAAC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 120);

  if (v1)
  {
    v8 = sub_21A3AAF5C;
  }

  else
  {
    v8 = sub_21A3AAC00;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3AAC00()
{
  v24 = v0;
  v1 = v0[17];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = sub_21A3B205C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_21A361318(v0 + 2);
    v4 = v0[1];
  }

  else
  {
    v5 = v0[17];

    sub_21A361318(v0 + 2);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v6 = v0[11];
    v7 = sub_21A3B21FC();
    sub_21A365DC4(v7, qword_27CD24AB0);
    v9 = *v6;
    v8 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    v12 = v6[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = sub_21A3B21DC();
    v14 = sub_21A3B25DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v21 = sub_21A3B26CC();
      v22 = v14;
      v18 = v17;

      v19 = sub_21A3AF0A8(v21, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21A35E000, v13, v22, "Unable to handle intent, no recipe to target. intent=%{public}s, privacy: .public)", v15, 0xCu);
      sub_21A361318(v16);
      MEMORY[0x21CED8F60](v16, -1, -1);
      MEMORY[0x21CED8F60](v15, -1, -1);
    }

    else
    {
    }

    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_21A3AAF5C()
{
  sub_21A361318(v0 + 2);
  v1 = v0[18];
  v2 = v0[1];

  return v2();
}

uint64_t sub_21A3AAFC0()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24C38);
  sub_21A365DC4(v12, qword_27CD24C38);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3AB1A0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3AB264, 0, 0);
}

uint64_t sub_21A3AB264()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[13] = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B62C0, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_21A3AB498;
  v12 = v0[12];
  v13 = v0[8];

  return sub_21A39E6F8(v12);
}

uint64_t sub_21A3AB498()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_21A366834;
  }

  else
  {
    v3 = sub_21A3AB5AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A3AB5AC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[9] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A3AC314();
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 2);
    sub_21A36A72C(&qword_27CD23EC8, type metadata accessor for RecipeEntity);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A3AB804@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E80 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24C38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3AB8AC()
{
  v0 = sub_21A365B50(&qword_27CD249C8, &qword_21A3B6330);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD249D0, &qword_21A3B6338);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD249D8, &qword_21A3B6368);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A3ABA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3AB1A0(a1);
}

double sub_21A3ABAF0@<D0>(uint64_t a1@<X8>)
{
  sub_21A3ABBB0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A3ABB34(uint64_t a1)
{
  v2 = sub_21A3902BC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3ABBB0@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A36A72C(&qword_27CD23FB8, type metadata accessor for RecipeEntity);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

uint64_t sub_21A3AC314()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_21A3AC360()
{
  result = qword_27CD249E0;
  if (!qword_27CD249E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249E0);
  }

  return result;
}

unint64_t sub_21A3AC3B8()
{
  result = qword_27CD249E8;
  if (!qword_27CD249E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249E8);
  }

  return result;
}

unint64_t sub_21A3AC410()
{
  result = qword_27CD249F0;
  if (!qword_27CD249F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249F0);
  }

  return result;
}

unint64_t sub_21A3AC468()
{
  result = qword_27CD249F8;
  if (!qword_27CD249F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249F8);
  }

  return result;
}

uint64_t sub_21A3AC4BC()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  v1 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  v2 = sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  result = sub_21A3B1C7C();
  qword_27CD24C50 = v0;
  *algn_27CD24C58 = v1;
  qword_27CD24C60 = v2;
  unk_27CD24C68 = result;
  return result;
}

uint64_t sub_21A3AC5D8@<X0>(void *a1@<X8>)
{
  if (qword_27CD23E88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27CD24C58;
  v2 = qword_27CD24C60;
  v3 = unk_27CD24C68;
  *a1 = qword_27CD24C50;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();

  return sub_21A3B1A8C();
}

unint64_t sub_21A3AC678()
{
  result = qword_27CD24A00;
  if (!qword_27CD24A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A00);
  }

  return result;
}

unint64_t sub_21A3AC6CC()
{
  result = qword_27CD24A08;
  if (!qword_27CD24A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A08);
  }

  return result;
}

unint64_t sub_21A3AC724()
{
  result = qword_27CD24A10;
  if (!qword_27CD24A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A10);
  }

  return result;
}

uint64_t sub_21A3AC778@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E90 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B1C9C();
  v3 = sub_21A365DC4(v2, qword_27CD24C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_21A3AC824()
{
  result = qword_27CD24A18;
  if (!qword_27CD24A18)
  {
    sub_21A364A10(&qword_27CD24A20, &qword_21A3B65D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A18);
  }

  return result;
}

uint64_t sub_21A3AC888(uint64_t a1)
{
  v2 = sub_21A36AA54();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_21A3AC8D8()
{
  result = qword_27CD24A28;
  if (!qword_27CD24A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A28);
  }

  return result;
}

uint64_t sub_21A3AC934()
{
  v0 = sub_21A365B50(&qword_27CD23FA0, &unk_21A3B2F60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v19 - v3;
  v5 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_21A3B20EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = sub_21A3B24CC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  sub_21A3B24BC();
  sub_21A3B24AC();
  sub_21A3B19CC();
  sub_21A3B249C();

  sub_21A3B24AC();
  sub_21A3B20DC();
  (*(v11 + 56))(v9, 1, 1, v10);
  v17 = sub_21A3B1BBC();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  return sub_21A3B1BCC();
}

uint64_t sub_21A3ACBA4(uint64_t a1)
{
  v2 = sub_21A3AC724();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_21A3ACBF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A3ACC38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A3ACC88()
{
  v0 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v22 - v3;
  v22[0] = sub_21A3B20CC();
  v5 = *(v22[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22[0], v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A3B212C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_21A3B24DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = sub_21A3B20EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = sub_21A3B1C9C();
  sub_21A365DFC(v20, qword_27CD24C70);
  sub_21A365DC4(v20, qword_27CD24C70);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v5 + 104))(v9, *MEMORY[0x277CC9110], v22[0]);
  sub_21A3B20FC();
  (*(v17 + 56))(v4, 1, 1, v16);
  return sub_21A3B1C8C();
}

uint64_t sub_21A3ACFB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_21A3ACFEC()
{
  result = qword_27CD24A30;
  if (!qword_27CD24A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A30);
  }

  return result;
}

unint64_t sub_21A3AD044()
{
  result = qword_27CD24A38;
  if (!qword_27CD24A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A38);
  }

  return result;
}

uint64_t sub_21A3AD09C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  sub_21A390364(a1, &v15 - v11);
  v13 = *a2;
  sub_21A390364(v12, v9);
  sub_21A3B1A2C();
  return sub_21A365D1C(v12, &qword_27CD23F78, &unk_21A3B2F40);
}

uint64_t sub_21A3AD180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v9 = swift_task_alloc();
  v5[15] = v9;
  *v9 = v5;
  v9[1] = sub_21A3AD238;

  return sub_21A3B14FC(a3, a4, a5);
}

uint64_t sub_21A3AD238(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[15];
  v7 = *v2;
  v4[16] = a2;

  return MEMORY[0x2822009F8](sub_21A3AD340, 0, 0);
}

uint64_t sub_21A3AD340()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[11];
    sub_21A3B187C();
    v4 = v0[5];
    v5 = v0[6];
    sub_21A360CEC(v0 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v0[17] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    v7 = *(MEMORY[0x277CFCD78] + 4);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_21A3AD4CC;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_21A3B205C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_21A3AD4CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_21A3AD744;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_21A3AD5E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3AD5E8()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    v5 = 0;
  }

  else
  {
    v6 = v0[19];

    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[10], v5, 1, v3);
  sub_21A361318(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21A3AD744()
{
  v23 = v0;
  v1 = v0[17];

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = sub_21A3B21FC();
  sub_21A365DC4(v7, qword_27CD24AB0);
  v8 = v2;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v9 = sub_21A3B21DC();
  v10 = sub_21A3B25DC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[20];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 138543618;
    v16 = v12;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v17;
    *v14 = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_21A3AF0A8(0x6569646572676E49, 0xEF7972657551746ELL, &v22);
    _os_log_impl(&dword_21A35E000, v9, v10, "Unable to hydrate due to error: %{public}@, for: %{public}s", v13, 0x16u);
    sub_21A365D1C(v14, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v14, -1, -1);
    sub_21A361318(v15);
    MEMORY[0x21CED8F60](v15, -1, -1);
    MEMORY[0x21CED8F60](v13, -1, -1);
  }

  else
  {
  }

  v18 = v0[10];
  v19 = sub_21A3B205C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = v0[1];

  return v20();
}

uint64_t sub_21A3AD9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a1;
  v10 = sub_21A3B20CC();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 64) + 15;
  v5[7] = swift_task_alloc();
  v13 = *(*(sub_21A3B212C() - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v14 = *(*(sub_21A3B24DC() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v15 = *(*(sub_21A3B20EC() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v16 = sub_21A3B1D6C();
  v5[11] = v16;
  v17 = *(v16 - 8);
  v5[12] = v17;
  v18 = *(v17 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v19 = *(*(sub_21A365B50(&qword_27CD24078, &qword_21A3B3298) - 8) + 64) + 15;
  v20 = swift_task_alloc();
  v5[16] = v20;
  v21 = sub_21A3B205C();
  v5[17] = v21;
  v22 = *(v21 - 8);
  v5[18] = v22;
  v23 = *(v22 + 64) + 15;
  v5[19] = swift_task_alloc();
  v24 = swift_task_alloc();
  v5[20] = v24;
  *v24 = v5;
  v24[1] = sub_21A3ADCA0;

  return sub_21A3AD180(v20, a2, a3, a4, a5);
}

uint64_t sub_21A3ADCA0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3ADD9C, 0, 0);
}

uint64_t sub_21A3ADD9C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    goto LABEL_31;
  }

  v4 = v0[4];
  (*(v2 + 32))(v0[19], v3, v1);

  v6 = sub_21A3B1348(v5);

  result = sub_21A3B1F9C();
  v8 = result;
  v85 = *(result + 16);
  v87 = v0;
  if (!v85)
  {
    v72 = MEMORY[0x277D84F90];
LABEL_24:

    v39 = *(v72 + 16);
    if (v39)
    {
      v40 = v0[12];
      v41 = v0[6];
      v88 = MEMORY[0x277D84F90];
      sub_21A3AF670(0, v39, 0);
      sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
      v42 = v88;
      v43 = *(v40 + 16);
      v40 += 16;
      v77 = v43;
      v44 = v72 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
      v76 = *(v40 + 56);
      v75 = *MEMORY[0x277CC9110];
      v73 = (v40 - 8);
      v74 = (v41 + 104);
      do
      {
        v84 = v39;
        v86 = v42;
        v45 = v87[13];
        v46 = v87[10];
        v81 = v87[11];
        v47 = v87[8];
        v48 = v87[9];
        v49 = v87[7];
        v50 = v87[5];
        v77(v45, v44);
        v82 = sub_21A3B1D4C();
        v52 = v51;
        v53 = sub_21A3B1D5C();
        v78 = v54;
        v80 = v53;
        sub_21A3B247C();
        sub_21A3B211C();
        (*v74)(v49, v75, v50);
        v42 = v86;
        sub_21A3B20FC();
        v55 = sub_21A3B19EC();
        v87[2] = v80;
        v87[3] = v78;
        sub_21A3B1A8C();

        sub_21A3B19DC();
        (*v73)(v45, v81);

        v57 = *(v86 + 16);
        v56 = *(v86 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_21A3AF670((v56 > 1), v57 + 1, 1);
          v42 = v86;
        }

        *(v42 + 16) = v57 + 1;
        v58 = (v42 + 24 * v57);
        v58[4] = v82;
        v58[5] = v52;
        v58[6] = v55;
        v44 += v76;
        v39 = v84 - 1;
      }

      while (v84 != 1);
      v0 = v87;
      (*(v87[18] + 8))(v87[19], v87[17]);

      goto LABEL_32;
    }

    v60 = v0[18];
    v59 = v0[19];
    v61 = v0[17];

    (*(v60 + 8))(v59, v61);
LABEL_31:
    v42 = MEMORY[0x277D84F90];
LABEL_32:
    v62 = v0[19];
    v64 = v0[15];
    v63 = v0[16];
    v66 = v0[13];
    v65 = v0[14];
    v68 = v0[9];
    v67 = v0[10];
    v70 = v0[7];
    v69 = v0[8];

    v71 = v0[1];

    return v71(v42);
  }

  v9 = 0;
  v10 = v0[12];
  v11 = v6 + 56;
  v79 = (v10 + 32);
  v72 = MEMORY[0x277D84F90];
  v83 = result;
  while (v9 < *(v8 + 16))
  {
    v14 = v0[15];
    v15 = v0[11];
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = *(v10 + 72);
    (*(v10 + 16))(v14, v8 + v16 + v17 * v9, v15);
    v18 = sub_21A3B1D4C();
    v20 = v19;
    if (*(v6 + 16) && (v21 = v18, v22 = *(v6 + 40), sub_21A3B26AC(), sub_21A3B250C(), v23 = sub_21A3B26BC(), v24 = -1 << *(v6 + 32), v25 = v23 & ~v24, ((*(v11 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
    {
      v26 = ~v24;
      while (1)
      {
        v27 = (*(v6 + 48) + 16 * v25);
        v28 = *v27 == v21 && v27[1] == v20;
        if (v28 || (sub_21A3B267C() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v11 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v29 = v87[14];
      v30 = v87[15];
      v31 = v87[11];

      v32 = *v79;
      (*v79)(v29, v30, v31);
      v33 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3AF690(0, *(v72 + 16) + 1, 1);
        v33 = v72;
      }

      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_21A3AF690(v34 > 1, v35 + 1, 1);
        v33 = v72;
      }

      v36 = v87[14];
      v37 = v87[11];
      *(v33 + 16) = v35 + 1;
      v72 = v33;
      v38 = v33 + v16 + v35 * v17;
      v0 = v87;
      result = v32(v38, v36, v37);
    }

    else
    {
LABEL_5:
      v0 = v87;
      v12 = v87[15];
      v13 = v87[11];

      result = (*(v10 + 8))(v12, v13);
    }

    ++v9;
    v8 = v83;
    if (v9 == v85)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3AE3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B13E0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_21A3AE404(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A36A774;

  return sub_21A3AD9EC(a1, v4, v5, v7, v6);
}

unint64_t sub_21A3AE4C4()
{
  result = qword_27CD24A40;
  if (!qword_27CD24A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24A40);
  }

  return result;
}

uint64_t sub_21A3AE518(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_21A3AC468();
  *v6 = v2;
  v6[1] = sub_21A36919C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_21A3AE5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a1;
  v6[9] = a2;
  v11 = sub_21A3B20CC();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v14 = sub_21A3B212C();
  v6[13] = v14;
  v15 = *(v14 - 8);
  v6[14] = v15;
  v16 = *(v15 + 64) + 15;
  v6[15] = swift_task_alloc();
  v17 = *(*(sub_21A3B24DC() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v18 = *(*(sub_21A3B20EC() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = *(*(sub_21A365B50(&qword_27CD24128, &qword_21A3B3718) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v20 = sub_21A3B1D6C();
  v6[19] = v20;
  v21 = *(v20 - 8);
  v6[20] = v21;
  v22 = *(v21 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v23 = *(*(sub_21A365B50(&qword_27CD24078, &qword_21A3B3298) - 8) + 64) + 15;
  v24 = swift_task_alloc();
  v6[24] = v24;
  v25 = sub_21A3B205C();
  v6[25] = v25;
  v26 = *(v25 - 8);
  v6[26] = v26;
  v27 = *(v26 + 64) + 15;
  v6[27] = swift_task_alloc();
  v28 = swift_task_alloc();
  v6[28] = v28;
  *v28 = v6;
  v28[1] = sub_21A3AE8E8;

  return sub_21A3AD180(v24, a3, a4, a5, a6);
}

uint64_t sub_21A3AE8E8()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3AE9E4, 0, 0);
}

uint64_t sub_21A3AE9E4()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    goto LABEL_21;
  }

  (*(v2 + 32))(v0[27], v3, v1);
  result = sub_21A3B1F9C();
  v5 = MEMORY[0x277D84F90];
  v71 = *(result + 16);
  if (!v71)
  {
LABEL_14:

    v23 = *(v5 + 16);
    if (v23)
    {
      v24 = v0[20];
      v25 = v0[11];
      v75 = MEMORY[0x277D84F90];
      sub_21A3AF670(0, v23, 0);
      sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
      v74 = v75;
      v26 = *(v24 + 16);
      v24 += 16;
      v27 = v5 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v60 = *(v24 + 56);
      v61 = v26;
      v59 = *MEMORY[0x277CC9110];
      v57 = (v24 - 8);
      v58 = (v25 + 104);
      do
      {
        v72 = v23;
        v28 = v0[21];
        v68 = v0[19];
        v30 = v0[16];
        v29 = v0[17];
        v31 = v0[15];
        v32 = v0[12];
        v33 = v0[10];
        v61(v28, v27);
        v70 = sub_21A3B1D4C();
        v35 = v34;
        v36 = sub_21A3B1D5C();
        v65 = v37;
        v66 = v36;
        sub_21A3B247C();
        sub_21A3B211C();
        (*v58)(v32, v59, v33);
        sub_21A3B20FC();
        v38 = sub_21A3B19EC();
        v0[6] = v66;
        v0[7] = v65;
        sub_21A3B1A8C();

        sub_21A3B19DC();
        (*v57)(v28, v68);

        v39 = v74;
        v41 = *(v74 + 16);
        v40 = *(v74 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_21A3AF670((v40 > 1), v41 + 1, 1);
          v39 = v74;
        }

        v74 = v39;
        *(v39 + 16) = v41 + 1;
        v42 = (v39 + 24 * v41);
        v42[4] = v70;
        v42[5] = v35;
        v42[6] = v38;
        v27 += v60;
        v23 = v72 - 1;
      }

      while (v72 != 1);
      (*(v0[26] + 8))(v0[27], v0[25]);

      goto LABEL_22;
    }

    v44 = v0[26];
    v43 = v0[27];
    v45 = v0[25];

    (*(v44 + 8))(v43, v45);
LABEL_21:
    v74 = MEMORY[0x277D84F90];
LABEL_22:
    v46 = v0[27];
    v47 = v0[23];
    v48 = v0[24];
    v50 = v0[21];
    v49 = v0[22];
    v52 = v0[17];
    v51 = v0[18];
    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[12];

    v56 = v0[1];

    return v56(v74);
  }

  v6 = 0;
  v7 = v0[20];
  v64 = (v0[14] + 56);
  v67 = v7;
  v69 = result;
  v62 = (v7 + 8);
  v63 = (v7 + 32);
  while (v6 < *(result + 16))
  {
    v8 = v5;
    v9 = v0[18];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v73 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v13 = *(v67 + 72);
    (*(v67 + 16))(v0[23], result + v73 + v13 * v6, v0[19]);
    v0[2] = sub_21A3B1D5C();
    v0[3] = v14;
    v0[4] = v11;
    v0[5] = v12;
    (*v64)(v9, 1, 1, v10);
    sub_21A36E1E4();
    sub_21A3B260C();
    v16 = v15;
    sub_21A365D1C(v9, &qword_27CD24128, &qword_21A3B3718);

    v17 = v0[23];
    if (v16)
    {
      (*v62)(v0[23], v0[19]);
      v5 = v8;
    }

    else
    {
      v18 = *v63;
      (*v63)(v0[22], v0[23], v0[19]);
      v5 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3AF690(0, *(v8 + 16) + 1, 1);
        v5 = v8;
      }

      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21A3AF690(v19 > 1, v20 + 1, 1);
        v5 = v8;
      }

      v21 = v0[22];
      v22 = v0[19];
      *(v5 + 16) = v20 + 1;
      v18(v5 + v73 + v20 * v13, v21, v22);
    }

    ++v6;
    result = v69;
    if (v71 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3AEFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = swift_task_alloc();
  *(v4 + 24) = v11;
  *v11 = v4;
  v11[1] = sub_21A3689C0;

  return sub_21A3AE5CC(a2, a3, v7, v8, v10, v9);
}

uint64_t sub_21A3AF0A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21A3AF174(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21A3B17BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_21A361318(v11);
  return v7;
}

unint64_t sub_21A3AF174(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21A3AF280(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21A3B265C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21A3AF280(uint64_t a1, unint64_t a2)
{
  v4 = sub_21A3AF2CC(a1, a2);
  sub_21A3AF3FC(&unk_282B3C7B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21A3AF2CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21A3AF4E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21A3B265C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21A3B252C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21A3AF4E8(v10, 0);
        result = sub_21A3B263C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21A3AF3FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21A3AF55C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21A3AF4E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21A365B50(&qword_27CD24A58, &qword_21A3B6998);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21A3AF55C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21A365B50(&qword_27CD24A58, &qword_21A3B6998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21A3AF650(char *a1, int64_t a2, char a3)
{
  result = sub_21A3AF6B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3AF670(char *a1, int64_t a2, char a3)
{
  result = sub_21A3AF7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21A3AF690(size_t a1, int64_t a2, char a3)
{
  result = sub_21A3AF8DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3AF6B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A3AF7BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_21A365B50(&qword_27CD24A48, &qword_21A3B6980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21A3AF8DC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_21A365B50(&qword_27CD24A50, &qword_21A3B6988);
  v10 = *(sub_21A3B1D6C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21A3B1D6C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21A3AFAB4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21A3B20BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0]);
  v37 = a2;
  v14 = sub_21A3B244C();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_21A3B1818(&qword_27CD24170, MEMORY[0x277CFCDB0]);
      v24 = sub_21A3B246C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_21A3B04A0(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_21A3AFD94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21A3B26AC();
  sub_21A3B250C();
  v9 = sub_21A3B26BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21A3B267C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21A3B0744(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A3AFEE4(uint64_t a1)
{
  v2 = v1;
  v42 = sub_21A3B20BC();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_21A365B50(&qword_27CD24A68, &qword_21A3B6A50);
  result = sub_21A3B262C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0]);
      result = sub_21A3B244C();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_21A3B0240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_21A365B50(&qword_27CD24A60, &qword_21A3B69F8);
  result = sub_21A3B262C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21A3B26AC();
      sub_21A3B250C();
      result = sub_21A3B26BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21A3B04A0(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_21A3B20BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21A3AFEE4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_21A3B08C4();
      goto LABEL_12;
    }

    sub_21A3B0C58(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0]);
  v16 = sub_21A3B244C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_21A3B1818(&qword_27CD24170, MEMORY[0x277CFCDB0]);
      v24 = sub_21A3B246C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21A3B269C();
  __break(1u);
  return result;
}

uint64_t sub_21A3B0744(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21A3B0240(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A3B0AFC();
      goto LABEL_16;
    }

    sub_21A3B0F74(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21A3B26AC();
  sub_21A3B250C();
  result = sub_21A3B26BC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21A3B267C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21A3B269C();
  __break(1u);
  return result;
}

void *sub_21A3B08C4()
{
  v1 = v0;
  v2 = sub_21A3B20BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A365B50(&qword_27CD24A68, &qword_21A3B6A50);
  v8 = *v0;
  v9 = sub_21A3B261C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_21A3B0AFC()
{
  v1 = v0;
  sub_21A365B50(&qword_27CD24A60, &qword_21A3B69F8);
  v2 = *v0;
  v3 = sub_21A3B261C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21A3B0C58(uint64_t a1)
{
  v2 = v1;
  v38 = sub_21A3B20BC();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_21A365B50(&qword_27CD24A68, &qword_21A3B6A50);
  v11 = sub_21A3B262C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0]);
      result = sub_21A3B244C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_21A3B0F74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_21A365B50(&qword_27CD24A60, &qword_21A3B69F8);
  result = sub_21A3B262C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21A3B26AC();

      sub_21A3B250C();
      result = sub_21A3B26BC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21A3B11AC(uint64_t a1)
{
  v2 = sub_21A3B20BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_21A3B1818(&qword_27CD24168, MEMORY[0x277CFCDB0]);
  result = MEMORY[0x21CED8A50](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_21A3AFAB4(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_21A3B1348(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CED8A50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21A3AFD94(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21A3B13E0()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  sub_21A3B1C7C();
  return v0;
}

uint64_t sub_21A3B14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_21A3B1FFC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = *(*(type metadata accessor for RecipeEntity() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3B1624, 0, 0);
}

uint64_t sub_21A3B1624()
{
  v1 = v0[8];
  if (sub_21A3B1C6C() || (v2 = v0[9], sub_21A3B1C6C()))
  {
    v3 = v0[14];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v4 = *v3;
    v5 = v3[1];

    sub_21A36FF74(v3);
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];

    v9 = v0[1];

    return v9(v4, v5);
  }

  else
  {
    v11 = v0[7];
    sub_21A3B187C();
    v12 = v0[5];
    v13 = v0[6];
    sub_21A360CEC(v0 + 2, v12);
    v14 = *(MEMORY[0x277CFCC68] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_21A36FCA8;
    v16 = v0[13];

    return MEMORY[0x28214F8F0](v16, v12, v13);
  }
}

uint64_t sub_21A3B17BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3B1818(unint64_t *a1, void (*a2)(uint64_t))
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