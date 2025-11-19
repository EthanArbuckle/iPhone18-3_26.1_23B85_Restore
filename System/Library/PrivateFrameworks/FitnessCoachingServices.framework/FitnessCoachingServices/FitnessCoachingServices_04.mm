uint64_t sub_2278658D4()
{
  v77 = v0;
  v1 = v0;
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v71 = v0[45];
  v5 = v0[31];
  v6 = v1[30];
  v7 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  sub_2278C6DA0();
  v64 = sub_2278C6D30();
  v1[47] = v8;
  v9 = *(v3 + 8);
  v9(v2, v4);
  v10 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  sub_2278C6DA0();
  sub_2278C6D90();
  sub_2278C6D70();
  v11 = sub_2278C6D20();
  v13 = v12;
  v9(v71, v4);
  v62 = v11;
  v63 = v13;
  v14 = v1[30];

  result = sub_2278C6D90();
  v16 = result;
  v17 = *(result + 16);
  v18 = MEMORY[0x277D84F90];
  v19 = v1;
  if (v17)
  {
    v20 = 0;
    v21 = v1[39];
    v72 = result;
    v74 = (v21 + 32);
    v68 = *(result + 16);
    while (v20 < *(v16 + 16))
    {
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = *(v21 + 72);
      (*(v21 + 16))(v19[42], v16 + v22 + v23 * v20, v19[38]);
      v24 = sub_2278C6A10();
      v25 = v19[42];
      if (v24)
      {
        result = (*(v21 + 8))(v19[42], v19[38]);
      }

      else
      {
        v26 = *v74;
        (*v74)(v19[41], v19[42], v19[38]);
        v76 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B48E8(0, *(v18 + 2) + 1, 1);
          v18 = v76;
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        if (v28 >= v27 >> 1)
        {
          sub_2278B48E8(v27 > 1, v28 + 1, 1);
          v18 = v76;
        }

        v29 = v19[41];
        v30 = v19[38];
        *(v18 + 2) = v28 + 1;
        result = v26(&v18[v22 + v28 * v23], v29, v30);
        v17 = v68;
        v16 = v72;
      }

      if (v17 == ++v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v31 = *(v18 + 2);
    v75 = v19;
    if (v31)
    {
      v32 = v19[39];
      v76 = MEMORY[0x277D84F90];
      sub_2278B4884(0, v31, 0);
      v33 = v76;
      v34 = *(v32 + 16);
      v32 += 16;
      v35 = &v18[(*(v32 + 64) + 32) & ~*(v32 + 64)];
      v66 = *(v32 + 56);
      v69 = v34;
      v36 = (v32 - 8);
      do
      {
        v37 = v19[40];
        v38 = v19[38];
        v69(v37, v35, v38);
        v39 = sub_2278C6A00();
        v41 = v40;
        (*v36)(v37, v38);
        v76 = v33;
        v43 = *(v33 + 2);
        v42 = *(v33 + 3);
        if (v43 >= v42 >> 1)
        {
          sub_2278B4884((v42 > 1), v43 + 1, 1);
          v33 = v76;
        }

        *(v33 + 2) = v43 + 1;
        v44 = &v33[16 * v43];
        *(v44 + 4) = v39;
        *(v44 + 5) = v41;
        v35 += v66;
        --v31;
        v19 = v75;
      }

      while (v31);
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    v76 = v33;

    sub_227868888(&v76);
    v45 = v75[34];
    v70 = v75[36];
    v73 = v75[35];
    v46 = v75[33];
    v47 = v75[31];
    v60 = v75[30];
    v61 = v75[37];
    v65 = v75[29];
    v67 = v75[32];

    v75[48] = v63;
    v75[49] = v62;
    v75[50] = v64;
    v75[28] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63F0, &qword_2278CD388);
    sub_22786A114();
    v48 = sub_2278C76A0();
    v50 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9F50;
    v75[24] = 0xD00000000000001BLL;
    v75[25] = 0x80000002278D2380;
    v52 = MEMORY[0x277D837D0];
    sub_2278C7BF0();
    *(inited + 96) = v52;
    *(inited + 72) = v48;
    *(inited + 80) = v50;
    v75[26] = 0xD000000000000013;
    v75[27] = 0x80000002278D23A0;
    sub_2278C7BF0();
    v53 = sub_2278C6D70();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = v53 & 1;
    sub_2278C3BA4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
    swift_arrayDestroy();
    v75[51] = sub_2278A7354();
    v75[52] = v54;
    __swift_project_boxed_opaque_existential_1((v47 + 56), *(v47 + 80));
    v55 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v55(v61);
    __swift_project_boxed_opaque_existential_1((v47 + 56), *(v47 + 80));
    sub_227804920();
    v56 = type metadata accessor for NotificationRequest();
    v75[53] = v56;
    v57 = v65 + *(v56 + 32);
    sub_2278C6760();
    (*(v46 + 8))(v45, v67);
    (*(v70 + 8))(v61, v73);
    v58 = swift_task_alloc();
    v75[54] = v58;
    *v58 = v75;
    v58[1] = sub_227866030;
    v59 = v75[30];

    return sub_22786A1B4(v59);
  }

  return result;
}

uint64_t sub_227866030(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v6 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return MEMORY[0x2822009F8](sub_227866130, 0, 0);
}

uint64_t sub_227866130()
{
  v21 = *(v0 + 440);
  v22 = *(v0 + 448);
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 376);
  v19 = *(v0 + 368);
  v20 = *(v0 + 360);
  v23 = *(v0 + 336);
  v24 = *(v0 + 328);
  v25 = *(v0 + 320);
  v26 = *(v0 + 296);
  v27 = *(v0 + 272);
  v8 = *(v0 + 456);
  v9 = *(v0 + 232);
  v10 = *MEMORY[0x277D09C00];
  v11 = sub_2278C7700();
  *v9 = v4;
  *(v9 + 8) = v7;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  *(v9 + 48) = v8;
  v13 = (v9 + v2[9]);
  *v13 = 0xD000000000000029;
  v13[1] = 0x80000002278D23C0;
  *(v9 + v2[10]) = 0;
  v14 = (v9 + v2[11]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v9 + v2[12]);
  *v15 = v3;
  v15[1] = v1;
  v16 = (v9 + v2[13]);
  *v16 = v21;
  v16[1] = v22;
  *(v9 + v2[14]) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2278662A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2278C6610();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2278662E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v6 = sub_2278C6D60();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2278C6DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2278C75A0();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2278C7370();
  (*(v11 + 16))(v14, a2, v10);
  v19 = a1;
  v20 = sub_2278C7590();
  v21 = sub_2278C7950();
  v41 = a1;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v3;
    v23 = v22;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v23 = 136315394;
    v35 = v21;
    sub_2278C6DA0();
    v24 = sub_2278C6D50();
    v26 = v25;
    (*(v39 + 8))(v9, v40);
    (*(v11 + 8))(v14, v10);
    v27 = sub_2278021B4(v24, v26, &v45);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2112;
    v28 = v41;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v29;
    v30 = v36;
    *v36 = v29;
    _os_log_impl(&dword_2277F7000, v20, v35, "[%s] Unable to fetch image: %@", v23, 0x16u);
    sub_227802FC4(v30, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v30, -1, -1);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9E860](v31, -1, -1);
    MEMORY[0x22AA9E860](v23, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  result = (*(v42 + 8))(v18, v43);
  v33 = v44;
  *v44 = 0;
  v33[1] = 0;
  return result;
}

uint64_t sub_227866698()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  __swift_destroy_boxed_opaque_existential_0((v0 + 184));

  return swift_deallocClassInstance();
}

uint64_t sub_22786671C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2278C6D60();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_2278C6920();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v11 = sub_2278C6820();
  *(v4 + 88) = v11;
  v12 = *(v11 - 8);
  *(v4 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278668A8, 0, 0);
}

uint64_t sub_2278668A8()
{
  v1 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 56), *(*(v0 + 32) + 80));
  v2 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v3 = *(v0 + 112);
  if (v1 == 1)
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 80);
    v17 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v2(v4);
    sub_2278C6900();
    sub_2278C6780();
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v4, v17);
  }

  else
  {
    v2(*(v0 + 112));
  }

  v9 = *(v0 + 32);
  v10 = v9[15];
  v11 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v10);
  v12 = *(v11 + 8);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_227866AB4;
  v15 = *(v0 + 112);

  return v18(v15, v10, v11);
}

uint64_t sub_227866AB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_227866D3C;
  }

  else
  {
    v5 = sub_227866BC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227866BC8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  if (*(*(v0 + 128) + 16))
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 16);
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 24), *(v0 + 40));
    sub_2278C6D80();
    (*(v3 + 8))(v1, v2);
    v6 = 0;
  }

  else
  {
    (*(v3 + 8))(*(v0 + 112), *(v0 + 88));

    v6 = 1;
  }

  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);
  v12 = sub_2278C6DB0();
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_227866D3C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_227866DE4()
{
  v1[20] = v0;
  v2 = sub_2278C6A20();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227866F18, 0, 0);
}

uint64_t sub_227866F18()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v2[15];
  v4 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v3);
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v5(v1);
  v6 = *(v4 + 8);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_2278670A8;
  v9 = v0[28];

  return v11(v9, v3, v4);
}

uint64_t sub_2278670A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  v7 = v3[28];
  v8 = v3[27];
  v9 = v3[26];
  if (v1)
  {

    (*(v8 + 8))(v7, v9);
    v10 = sub_227867D7C;
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_227867248;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227867248(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v47 = v3;
  v4 = v3[30];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = 0;
    v8 = v3[22];
    v45 = (v8 + 32);
    v9 = MEMORY[0x277D84F90];
    v41 = *(v4 + 16);
    v43 = v3[30];
    while (v7 < *(v4 + 16))
    {
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v11 = *(v8 + 72);
      (*(v8 + 16))(v3[25], v3[30] + v10 + v11 * v7, v3[21]);
      v12 = sub_2278C6A10();
      v13 = v3[25];
      if (v12)
      {
        a1 = (*(v8 + 8))(v3[25], v3[21]);
      }

      else
      {
        v14 = *v45;
        (*v45)(v3[24], v3[25], v3[21]);
        v46 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B48E8(0, *(v9 + 2) + 1, 1);
          v9 = v46;
        }

        v16 = *(v9 + 2);
        v15 = *(v9 + 3);
        if (v16 >= v15 >> 1)
        {
          sub_2278B48E8(v15 > 1, v16 + 1, 1);
          v9 = v46;
        }

        v17 = v3[24];
        v18 = v3[21];
        *(v9 + 2) = v16 + 1;
        a1 = v14(&v9[v10 + v16 * v11], v17, v18);
        v5 = v41;
        v4 = v43;
      }

      if (v5 == ++v7)
      {
        v19 = v3[30];
        v6 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_14:

  v20 = *(v9 + 2);
  if (v20)
  {
    v21 = v3[22];
    v46 = v6;
    sub_2278B4884(0, v20, 0);
    v22 = v6;
    v23 = *(v21 + 16);
    v21 += 16;
    v24 = &v9[(*(v21 + 64) + 32) & ~*(v21 + 64)];
    v42 = *(v21 + 56);
    v44 = v23;
    v25 = (v21 - 8);
    do
    {
      v26 = v3[23];
      v27 = v3[21];
      v44(v26, v24, v27);
      v28 = sub_2278C6A00();
      v30 = v29;
      (*v25)(v26, v27);
      v46 = v22;
      v32 = *(v22 + 2);
      v31 = *(v22 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_2278B4884((v31 > 1), v32 + 1, 1);
        v22 = v46;
      }

      *(v22 + 2) = v32 + 1;
      v33 = &v22[16 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v30;
      v24 += v42;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v34 = v3[31];
  v46 = v22;

  sub_227868888(&v46);
  v3[32] = v34;
  if (!v34)
  {
    v36 = v3[20];

    v3[18] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63F0, &qword_2278CD388);
    sub_22786A114();
    v37 = sub_2278C76A0();
    v39 = v38;

    v3[33] = v37;
    v3[34] = v39;
    v40 = __swift_project_boxed_opaque_existential_1((v36 + 184), *(v36 + 208));
    a2 = *v40;
    v3[35] = *v40;
    a1 = sub_227867620;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_227867620()
{
  *(v0 + 288) = *__swift_project_boxed_opaque_existential_1((*(v0 + 280) + 152), *(*(v0 + 280) + 176));

  return MEMORY[0x2822009F8](sub_227867698, 0, 0);
}

uint64_t sub_227867698()
{
  v1 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_2278677B4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6128, &qword_2278CA2A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22781F5FC;
  v0[13] = &block_descriptor_16;
  v0[14] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2278677B4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227867894, 0, 0);
}

void sub_2278678B8()
{
  v35 = v0;
  v3 = *(v0 + 296);
  v4 = MEMORY[0x277D84F90];
  v34[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_28:
    v6 = *(v0 + 256);
    v5 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  while (1)
  {
    v1 = *(v0 + 296);
    v2 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 256);
    v7 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_45;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    v5 = sub_2278C7B80();
    v29 = v0;
    if (!v5)
    {
      goto LABEL_28;
    }
  }

  for (i = *(v1 + 32); ; i = MEMORY[0x22AA9DBF0](0, v1))
  {
    v9 = v29[33];
    v10 = v29[34];
    v31 = i;
    v33[0] = i;
    v11 = sub_227867E08(v33, v9, v10);
    if (v6)
    {
      goto LABEL_7;
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

    sub_2278C7CB0();
    v6 = *(v34[0] + 2);
    sub_2278C7CE0();
    sub_2278C7CF0();
    v3 = v34;
    sub_2278C7CC0();
    if (v5 != 1)
    {
      goto LABEL_15;
    }

LABEL_14:
    v6 = 0;
    v5 = v34[0];
    v0 = v29;
LABEL_29:
    v18 = *(v0 + 296);
    v19 = *(v0 + 272);

    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v0 = sub_2278C7B80();
      if (!v0)
      {
LABEL_47:

        v7 = MEMORY[0x277D84F90];
LABEL_48:
        v29[38] = v7;
        v28 = __swift_project_boxed_opaque_existential_1((v29[20] + 184), *(v29[20] + 208));
        v21 = *v28;
        v29[39] = *v28;
        v20 = sub_227867CAC;
        v22 = 0;

        goto _swift_task_switch;
      }
    }

    else
    {
      v0 = *(v5 + 16);
      if (!v0)
      {
        goto LABEL_47;
      }
    }

    v32 = v4;
    v3 = &v32;
    v20 = sub_2278B4884(0, v0 & ~(v0 >> 63), 0);
    if (v0 < 0)
    {
      __break(1u);
_swift_task_switch:
      MEMORY[0x2822009F8](v20, v21, v22);
      return;
    }

    v4 = 0;
    v7 = v32;
    v30 = v0;
    while (1)
    {
      v23 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x22AA9DBF0](v4, v5);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_44;
        }

        v24 = *(v5 + 8 * v4 + 32);
      }

      v3 = v24;
      v34[0] = v24;
      sub_227868068(v34, v33);

      v1 = v33[0];
      v0 = v33[1];
      v32 = v7;
      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      v2 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v3 = &v32;
        sub_2278B4884((v25 > 1), v26 + 1, 1);
        v7 = v32;
      }

      *(v7 + 16) = v2;
      v27 = v7 + 16 * v26;
      *(v27 + 32) = v1;
      *(v27 + 40) = v0;
      ++v4;
      if (v23 == v30)
      {

        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = (v1 + 40);
  v1 = 1;
  while (v7)
  {
    v14 = MEMORY[0x22AA9DBF0](v1, v29[37]);
    v15 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_25;
    }

LABEL_21:
    v16 = v29[33];
    v17 = v29[34];
    v31 = v14;
    v33[0] = v14;
    v6 = 0;
    if (sub_227867E08(v33, v16, v17))
    {
      sub_2278C7CB0();
      v6 = *(v34[0] + 2);
      sub_2278C7CE0();
      sub_2278C7CF0();
      v3 = v34;
      sub_2278C7CC0();
    }

    else
    {
    }

    ++v1;
    ++v13;
    if (v15 == v5)
    {
      goto LABEL_14;
    }
  }

  if (v1 >= *(v2 + 16))
  {
    goto LABEL_26;
  }

  v14 = *v13;
  v15 = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
LABEL_7:
  v12 = v29[37];
}

uint64_t sub_227867CAC()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1((v0[39] + 152), *(v0[39] + 176));
  off_283AEB7D0();

  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227867D7C()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227867E08(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 request];
  v7 = [v6 identifier];

  v8 = sub_2278C7700();
  v10 = v9;

  v20[0] = v8;
  v20[1] = v10;
  v21[0] = 0xD000000000000029;
  v21[1] = 0x80000002278D23C0;
  sub_22781F6EC();
  LOBYTE(v8) = sub_2278C7AC0();

  if (v8)
  {
    v11 = [v5 request];
    v12 = [v11 content];

    v13 = [v12 userInfo];
    v14 = sub_2278C7660();

    sub_2278C7BF0();
    if (*(v14 + 16) && (v15 = sub_2278AE394(v20), (v16 & 1) != 0))
    {
      sub_227802850(*(v14 + 56) + 32 * v15, v21);
      sub_227815D88(v20);

      if (swift_dynamicCast())
      {
        if (a2 != 0xD00000000000001BLL || 0x80000002278D2380 != a3)
        {
          v19 = sub_2278C7DC0();

          v17 = v19 ^ 1;
          return v17 & 1;
        }
      }
    }

    else
    {

      sub_227815D88(v20);
    }
  }

  v17 = 0;
  return v17 & 1;
}

void sub_227868068(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_2278C7370();
  v10 = v9;
  v11 = sub_2278C7590();
  v12 = sub_2278C7970();

  v13 = &off_2785DA000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v15 = 136315138;
    v16 = [v10 request];
    v33 = v10;
    v17 = v16;
    v18 = [v16 identifier];
    v31 = v4;
    v19 = v18;

    v20 = sub_2278C7700();
    v22 = v21;

    v23 = sub_2278021B4(v20, v22, &v35);
    v13 = &off_2785DA000;

    *(v15 + 4) = v23;
    v10 = v33;
    _os_log_impl(&dword_2277F7000, v11, v12, "Suppressing posted notifcation: %s", v15, 0xCu);
    v24 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9E860](v24, -1, -1);
    v25 = v15;
    a2 = v34;
    MEMORY[0x22AA9E860](v25, -1, -1);

    (*(v5 + 8))(v8, v31);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v26 = [v10 request];
  v27 = [v26 v13[237]];

  v28 = sub_2278C7700();
  v30 = v29;

  *a2 = v28;
  a2[1] = v30;
}

uint64_t sub_2278682F4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_2278C6540();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2278C6910();
  v58 = *(v60 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2278C6820();
  v49 = *(v51 - 8);
  v8 = v49;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v49 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v17;
  v18 = sub_2278C6920();
  v54 = v18;
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v52 = v24;
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v25 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v25(v16);
  v26 = v50;
  sub_2278C6890();
  v53 = *(v8 + 8);
  v27 = v51;
  v53(v16, v51);
  v28 = *(v63 + 8);
  v63 += 8;
  v55 = v28;
  v28(v22, v18);
  v29 = v58;
  v30 = v56;
  v31 = v60;
  (*(v58 + 104))(v56, *MEMORY[0x277CC9968], v60);
  v32 = v26;
  sub_2278C66E0();
  (*(v29 + 8))(v30, v31);
  sub_2278040AC(v1 + 16, v66);
  v33 = *(v49 + 16);
  v33(v57, v16, v27);
  v34 = v27;
  v33(v59, v32, v27);
  v35 = v61;
  sub_2278C6520();
  sub_2278040AC(v1 + 56, v64);
  v36 = v65;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40);
  sub_227869CE4(v66, v35, v40);
  __swift_destroy_boxed_opaque_existential_0(v64);

  v43 = sub_227869FAC(v42);
  v44 = type metadata accessor for TypicalDayProvider();
  v45 = v62;
  v62[3] = v44;
  v45[4] = &off_283AED4B0;
  v46 = v45;

  *v46 = v43;
  v47 = v53;
  v53(v16, v34);
  v47(v32, v34);
  return v55(v52, v54);
}

uint64_t sub_227868888(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22786A1A0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2278688F4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2278688F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2278C7D90();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2278C77D0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_227868ABC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2278689EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2278689EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2278C7DC0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227868ABC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22786934C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_227869098((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2278C7DC0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2278C7DC0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22780202C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22780202C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_227869098((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22786934C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2278692C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2278C7DC0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_227869098(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2278C7DC0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2278C7DC0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2278692C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22786934C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_227869360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2278C6640();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
  return sub_2278C6A50();
}

uint64_t sub_2278694CC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);

  return sub_2278C6A50();
}

void sub_22786957C(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v8, a5);
  v6 = v8[0];
  v7 = v8[1];
  v9 = 0;
  a1(v8);

  sub_22786C470(v6, v7, 0);
}

uint64_t sub_227869618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v9 = sub_2278C6A60();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_22786C450, v10);
}

void sub_2278696EC(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-1] - v15;
  if (a3)
  {
    a6(a1);
    v17 = sub_2278C6A60();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    v17(sub_22786C468, v18);

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v20[0] = a1;
    v20[1] = a2;
    v21 = 0;

    a4(v20);
    sub_22786C470(a1, a2, 0);
  }
}

void sub_227869894(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v8, a5);
  v6 = v8[0];
  v7 = v8[1];
  v9 = 0;
  a1(v8);

  sub_22786C470(v6, v7, 0);
}

uint64_t sub_227869930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6400, &qword_2278CD3A8);
  v9 = sub_2278C6A60();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_22786C4CC, v10);
}

void sub_227869A04(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_2278C6640();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6428, &unk_2278CD3C8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_227850448(a1, &v23 - v17, &qword_27D7D6428, &unk_2278CD3C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28[0] = *v18;
    v19 = v28[0];
    v28[1] = 0;
    v29 = 1;
    v20 = v28[0];
    v26(v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_2278C6A60();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_22786C5C8, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_227869CE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateProvider();
  v31 = v6;
  v32 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_2278238F8(a3, boxed_opaque_existential_1);
  v29[3] = &type metadata for FirstOnWristQuery;
  v29[4] = &off_283AECF20;
  v8 = type metadata accessor for TypicalDayDataSource(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v31;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for FirstOnWristQuery);
  v28[3] = v6;
  v28[4] = &off_283AE99D8;
  v18 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_2278238F8(v16, v18);
  v27[3] = &type metadata for FirstOnWristQuery;
  v27[4] = &off_283AECF20;
  sub_2278040AC(a1, v11 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery);
  v19 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateInterval;
  v20 = sub_2278C6540();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v11 + v19, a2, v20);
  sub_2278040AC(v28, v11 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider);
  sub_2278040AC(v27, v11 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_firstOnWristQuery);
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  (*(v21 + 8))(a2, v20);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  *(v11 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock) = v22;
  v24 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  v25 = type metadata accessor for TypicalDayDataSource.Content(0);
  (*(*(v25 - 8) + 56))(v11 + v24, 1, 1, v25);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v11;
}

id sub_227869FAC(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_283AEBD38;
  v14[0] = a1;
  v2 = type metadata accessor for TypicalDayProvider();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  v5 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_283AEBD38;
  v13[0] = v9;
  *&v3[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state] = 0;
  sub_2278040AC(v13, &v3[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource]);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_22786A114()
{
  result = qword_27D7D63F8;
  if (!qword_27D7D63F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D63F0, &qword_2278CD388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D63F8);
  }

  return result;
}

uint64_t sub_22786A1B4(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_2278C75A0();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = sub_2278C6DB0();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v1[25] = *(v6 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_2278C6950();
  v1[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6400, &qword_2278CD3A8);
  v1[30] = v9;
  v10 = *(v9 - 8);
  v1[31] = v10;
  v1[32] = *(v10 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v1[35] = v11;
  v12 = *(v11 - 8);
  v1[36] = v12;
  v1[37] = *(v12 + 64);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v13 = sub_2278C6640();
  v1[41] = v13;
  v14 = *(v13 - 8);
  v1[42] = v14;
  v15 = *(v14 + 64) + 15;
  v1[43] = swift_task_alloc();
  v16 = sub_2278C6A40();
  v1[44] = v16;
  v17 = *(v16 - 8);
  v1[45] = v17;
  v18 = *(v17 + 64) + 15;
  v1[46] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6410, &unk_2278CE830) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6418, &qword_2278CD3C0);
  v1[49] = v20;
  v21 = *(v20 - 8);
  v1[50] = v21;
  v22 = *(v21 + 64) + 15;
  v1[51] = swift_task_alloc();
  v23 = sub_2278C69B0();
  v1[52] = v23;
  v24 = *(v23 - 8);
  v1[53] = v24;
  v25 = *(v24 + 64) + 15;
  v1[54] = swift_task_alloc();
  v26 = sub_2278C6C90();
  v1[55] = v26;
  v27 = *(v26 - 8);
  v1[56] = v27;
  v28 = *(v27 + 64) + 15;
  v1[57] = swift_task_alloc();
  v29 = sub_2278C6A20();
  v1[58] = v29;
  v30 = *(v29 - 8);
  v1[59] = v30;
  v31 = *(v30 + 64) + 15;
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v32 = sub_2278C6D60();
  v1[62] = v32;
  v33 = *(v32 - 8);
  v1[63] = v33;
  v34 = *(v33 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22786A710, 0, 0);
}

uint64_t sub_22786A710()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[19];
  sub_2278C6DA0();
  (*(v4 + 104))(v2, *MEMORY[0x277D09868], v3);
  sub_22786C114();
  sub_2278C7770();
  sub_2278C7770();
  if (v0[12] == v0[14] && v0[13] == v0[15])
  {
    v6 = 1;
  }

  else
  {
    v7 = v0[13];
    v8 = v0[15];
    v6 = sub_2278C7DC0();
  }

  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[62];
  v12 = v0[63];
  v13 = *(v12 + 8);
  v0[67] = v13;
  v0[68] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  v13(v9, v11);

  if ((v6 & 1) == 0)
  {
    v14 = v0[19];
    if ((sub_2278C6D70() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v15 = v0[19];
  v16 = sub_2278C6D90();
  v24 = v16;
  v25 = *(v16 + 16);
  if (!v25)
  {
LABEL_12:

LABEL_13:
    v29 = v0[66];
    v30 = v0[65];
    v31 = v0[64];
    v33 = v0[60];
    v32 = v0[61];
    v34 = v0[57];
    v35 = v0[54];
    v36 = v0[51];
    v38 = v0[47];
    v37 = v0[48];
    v59 = v0[46];
    v60 = v0[43];
    v61 = v0[40];
    v62 = v0[39];
    v63 = v0[38];
    v65 = v0[34];
    v67 = v0[33];
    v68 = v0[29];
    v69 = v0[27];
    v70 = v0[26];
    v71 = v0[22];

    v39 = v0[1];

    return v39(0, 0);
  }

  v26 = 0;
  v27 = v0[59];
  v28 = (v27 + 8);
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
    }

    (*(v27 + 16))(v0[60], v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v0[58]);
    if ((sub_2278C6A10() & 1) == 0)
    {
      break;
    }

    ++v26;
    v16 = (*v28)(v0[60], v0[58]);
    if (v25 == v26)
    {
      goto LABEL_12;
    }
  }

  v41 = v0[60];
  v42 = v0[61];
  v43 = v0[58];
  v44 = v0[59];
  v45 = v0[56];
  v64 = v0[57];
  v46 = v0[55];
  v72 = v0[51];

  (*(v44 + 32))(v42, v41, v43);
  sub_2278C6A00();
  (*v28)(v42, v43);
  sub_2278C6C30();
  sub_2278002AC();
  sub_2278C7A60();
  v47 = *MEMORY[0x277D4F368];
  v66 = *(v45 + 104);
  v66(v64, v47, v46);
  v48 = sub_2278C6C80();
  v49 = MEMORY[0x277D4F358];
  v0[5] = v48;
  v0[6] = v49;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2278C6C70();
  v50 = sub_2278C6CC0();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  v0[69] = sub_2278C6C20();
  sub_2278C6C50();
  sub_2278C7A60();
  v66(v64, v47, v46);
  v0[10] = v48;
  v0[11] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_2278C6C70();
  v53 = *(v50 + 48);
  v54 = *(v50 + 52);
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  v55 = sub_2278C6C40();
  v0[70] = v55;
  v0[18] = v55;
  sub_2278C6C60();

  v56 = swift_task_alloc();
  v0[71] = v56;
  *(v56 + 16) = "FitnessCoachingServices/FitnessPlusPlanService.swift";
  *(v56 + 24) = 52;
  *(v56 + 32) = 2;
  *(v56 + 40) = 84;
  *(v56 + 48) = v72;
  v57 = *(MEMORY[0x277D85A40] + 4);
  v58 = swift_task_alloc();
  v0[72] = v58;
  *v58 = v0;
  v58[1] = sub_22786AD20;
  v16 = v0[54];
  v23 = v0[52];
  v21 = sub_22786C16C;
  v20 = 0x80000002278D2430;
  v17 = 0;
  v18 = 0;
  v19 = 0xD000000000000013;
  v22 = v56;

  return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_22786AD20()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 568);
  v7 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v5 = sub_22786B534;
  }

  else
  {
    (*(v2[50] + 8))(v2[51], v2[49]);
    v5 = sub_22786AE70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22786AE70()
{
  v1 = v0[54];
  v2 = v0[48];
  v67 = v0[47];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[44];
  v6 = v0[42];
  v70 = v0[41];
  sub_2278C6990();
  sub_2278C6A30();
  (*(v3 + 8))(v4, v5);
  sub_2278C69A0();
  sub_2278C6600();
  sub_227850448(v2, v67, &qword_27D7D6410, &unk_2278CE830);
  if ((*(v6 + 48))(v67, 1, v70) == 1)
  {
    v7 = v0[70];
    v8 = v0[69];
    v10 = v0[53];
    v9 = v0[54];
    v11 = v0[52];
    v13 = v0[47];
    v12 = v0[48];

    sub_227802FC4(v12, &qword_27D7D6410, &unk_2278CE830);
    (*(v10 + 8))(v9, v11);
    sub_227802FC4(v13, &qword_27D7D6410, &unk_2278CE830);
    v14 = v0[66];
    v15 = v0[65];
    v16 = v0[64];
    v18 = v0[60];
    v17 = v0[61];
    v19 = v0[57];
    v20 = v0[54];
    v21 = v0[51];
    v23 = v0[47];
    v22 = v0[48];
    v49 = v0[46];
    v51 = v0[43];
    v53 = v0[40];
    v55 = v0[39];
    v57 = v0[38];
    v59 = v0[34];
    v61 = v0[33];
    v63 = v0[29];
    v65 = v0[27];
    v68 = v0[26];
    v71 = v0[22];

    v24 = v0[1];

    return v24(0, 0);
  }

  else
  {
    v26 = v0[69];
    v72 = v0[40];
    v27 = v0[36];
    v66 = v0[38];
    v69 = v0[37];
    v28 = v0[34];
    v29 = v0[33];
    v52 = v0[32];
    v54 = v0[39];
    v30 = v0[31];
    v50 = v0[30];
    v32 = v0[28];
    v31 = v0[29];
    v33 = v0[24];
    v62 = v0[25];
    v64 = v0[35];
    v58 = v0[23];
    v60 = v0[27];
    v56 = v0[19];
    (*(v0[42] + 32))(v0[43], v0[47], v0[41]);
    swift_storeEnumTagMultiPayload();
    sub_2278C6C10();
    sub_22786C184(v31);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2278662A4;
    *(v34 + 24) = 0;
    (*(v30 + 16))(v29, v28, v50);
    v35 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v36 = swift_allocObject();
    (*(v30 + 32))(v36 + v35, v29, v50);
    v37 = (v36 + ((v52 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_22786C1E0;
    v37[1] = v34;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
    sub_2278C6A50();
    (*(v30 + 8))(v28, v50);
    (*(v33 + 16))(v60, v56, v58);
    v39 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v40 = swift_allocObject();
    (*(v33 + 32))(v40 + v39, v60, v58);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_22786C210;
    *(v41 + 24) = v40;
    (*(v27 + 16))(v66, v54, v64);
    v42 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v43 = swift_allocObject();
    (*(v27 + 32))(v43 + v42, v66, v64);
    v44 = (v43 + ((v69 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v44 = sub_22786C28C;
    v44[1] = v41;
    sub_2278C6A50();
    v45 = *(v27 + 8);
    v0[74] = v45;
    v0[75] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v54, v64);
    v46 = swift_task_alloc();
    v0[76] = v46;
    *(v46 + 16) = "FitnessCoachingServices/FitnessPlusPlanService.swift";
    *(v46 + 24) = 52;
    *(v46 + 32) = 2;
    *(v46 + 40) = 106;
    *(v46 + 48) = v72;
    v47 = *(MEMORY[0x277D85A40] + 4);
    v48 = swift_task_alloc();
    v0[77] = v48;
    *v48 = v0;
    v48[1] = sub_22786B948;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x80000002278D2430, sub_22786C420, v46, v38);
  }
}

uint64_t sub_22786B534()
{
  v63 = v0;
  (*(v0[50] + 8))(v0[51], v0[49]);
  v1 = v0[73];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  sub_2278C7370();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v1;
  v8 = sub_2278C7590();
  v9 = sub_2278C7950();

  v10 = os_log_type_enabled(v8, v9);
  v60 = v0[69];
  if (v10)
  {
    v11 = v0[64];
    v40 = v0[62];
    v42 = v0[67];
    v12 = v0[26];
    v13 = v0[24];
    v44 = v0[23];
    v46 = v0[68];
    v52 = v0[70];
    v54 = v0[21];
    v56 = v0[20];
    v58 = v0[22];
    log = v8;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v62 = v50;
    *v14 = 136315394;
    sub_2278C6DA0();
    v16 = sub_2278C6D50();
    v18 = v17;
    v42(v11, v40);
    (*(v13 + 8))(v12, v44);
    v19 = sub_2278021B4(v16, v18, &v62);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_2277F7000, log, v9, "[%s] Unable to get attachement for notification : %@", v14, 0x16u);
    sub_227802FC4(v15, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA9E860](v50, -1, -1);
    MEMORY[0x22AA9E860](v14, -1, -1);

    (*(v54 + 8))(v58, v56);
  }

  else
  {
    v22 = v0[26];
    v23 = v0[23];
    v24 = v0[24];
    v26 = v0[21];
    v25 = v0[22];
    v27 = v0[20];

    (*(v24 + 8))(v22, v23);
    (*(v26 + 8))(v25, v27);
  }

  v28 = v0[66];
  v29 = v0[65];
  v30 = v0[64];
  v32 = v0[60];
  v31 = v0[61];
  v33 = v0[57];
  v34 = v0[54];
  v35 = v0[51];
  v37 = v0[47];
  v36 = v0[48];
  v41 = v0[46];
  v43 = v0[43];
  v45 = v0[40];
  v47 = v0[39];
  loga = v0[38];
  v51 = v0[34];
  v53 = v0[33];
  v55 = v0[29];
  v57 = v0[27];
  v59 = v0[26];
  v61 = v0[22];

  v38 = v0[1];

  return v38(0, 0);
}

uint64_t sub_22786B948()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(v2 + 624) = v0;

  v5 = *(v2 + 608);
  if (v0)
  {

    v6 = sub_22786BCAC;
  }

  else
  {
    v7 = *(v2 + 600);
    v8 = *(v2 + 592);
    v9 = *(v2 + 320);
    v10 = *(v2 + 280);
    *(v2 + 632) = *(v2 + 128);

    v8(v9, v10);
    v6 = sub_22786BAB0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22786BAB0()
{
  v1 = v0[70];
  v2 = v0[69];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[48];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];

  (*(v8 + 8))(v7, v9);
  sub_227802FC4(v6, &qword_27D7D6410, &unk_2278CE830);
  (*(v4 + 8))(v3, v5);
  v34 = v0[80];
  v33 = v0[79];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[64];
  v14 = v0[60];
  v13 = v0[61];
  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[47];
  v19 = v0[48];
  v22 = v0[46];
  v23 = v0[43];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[29];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[22];

  v20 = v0[1];

  return v20(v33, v34);
}

uint64_t sub_22786BCAC()
{
  v71 = v0;
  v1 = *(v0 + 600);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 384);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 328);
  (*(v0 + 592))(*(v0 + 320), *(v0 + 280));
  (*(v7 + 8))(v6, v8);
  sub_227802FC4(v5, &qword_27D7D6410, &unk_2278CE830);
  (*(v3 + 8))(v2, v4);
  v9 = *(v0 + 624);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  sub_2278C7370();
  (*(v12 + 16))(v10, v14, v11);
  v15 = v9;
  v16 = sub_2278C7590();
  v17 = sub_2278C7950();

  v18 = os_log_type_enabled(v16, v17);
  v68 = *(v0 + 552);
  if (v18)
  {
    v19 = *(v0 + 512);
    v48 = *(v0 + 496);
    v50 = *(v0 + 536);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v52 = *(v0 + 184);
    v54 = *(v0 + 544);
    v60 = *(v0 + 560);
    v62 = *(v0 + 168);
    v64 = *(v0 + 160);
    v66 = *(v0 + 176);
    log = v16;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70 = v58;
    *v22 = 136315394;
    sub_2278C6DA0();
    v24 = sub_2278C6D50();
    v26 = v25;
    v50(v19, v48);
    (*(v21 + 8))(v20, v52);
    v27 = sub_2278021B4(v24, v26, &v70);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2112;
    v28 = v9;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v29;
    *v23 = v29;
    _os_log_impl(&dword_2277F7000, log, v17, "[%s] Unable to get attachement for notification : %@", v22, 0x16u);
    sub_227802FC4(v23, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x22AA9E860](v58, -1, -1);
    MEMORY[0x22AA9E860](v22, -1, -1);

    (*(v62 + 8))(v66, v64);
  }

  else
  {
    v30 = *(v0 + 208);
    v31 = *(v0 + 184);
    v32 = *(v0 + 192);
    v34 = *(v0 + 168);
    v33 = *(v0 + 176);
    v35 = *(v0 + 160);

    (*(v32 + 8))(v30, v31);
    (*(v34 + 8))(v33, v35);
  }

  v36 = *(v0 + 528);
  v37 = *(v0 + 520);
  v38 = *(v0 + 512);
  v40 = *(v0 + 480);
  v39 = *(v0 + 488);
  v41 = *(v0 + 456);
  v42 = *(v0 + 432);
  v43 = *(v0 + 408);
  v45 = *(v0 + 376);
  v44 = *(v0 + 384);
  v49 = *(v0 + 368);
  v51 = *(v0 + 344);
  v53 = *(v0 + 320);
  v55 = *(v0 + 312);
  loga = *(v0 + 304);
  v59 = *(v0 + 272);
  v61 = *(v0 + 264);
  v63 = *(v0 + 232);
  v65 = *(v0 + 216);
  v67 = *(v0 + 208);
  v69 = *(v0 + 176);

  v46 = *(v0 + 8);

  return v46(0, 0);
}

unint64_t sub_22786C114()
{
  result = qword_27D7D6420;
  if (!qword_27D7D6420)
  {
    sub_2278C6D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6420);
  }

  return result;
}

uint64_t sub_22786C184(uint64_t a1)
{
  v2 = sub_2278C6950();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_15Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_22786C358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_22786C470(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_31Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22786C518(void (*a1)(void *), uint64_t a2)
{
  v5 = *(sub_2278C6640() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_227869894(a1, a2, v6, v7, v8);
}

uint64_t sub_22786C5CC()
{
  result = sub_2278C76F0();
  qword_2813BC3B0 = result;
  return result;
}

uint64_t sub_22786C604()
{
  result = sub_2278C76F0();
  qword_2813BC3C0 = result;
  return result;
}

uint64_t sub_22786C644()
{
  result = sub_2278C76F0();
  qword_2813BC3B8 = result;
  return result;
}

id sub_22786C6CC()
{
  v34 = sub_2278C6820();
  v1 = *(v34 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v34);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v27 - v5;
  v35 = v0;
  v6 = *(v0 + 56);
  result = [v6 allRequests];
  if (result)
  {
    v8 = result;
    sub_22786D8E0();
    v9 = sub_2278C77A0();

    v36 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
    {
      v27 = v6;
      v28 = v9;
      v11 = 0;
      v30 = v9 & 0xFFFFFFFFFFFFFF8;
      v31 = v9 & 0xC000000000000001;
      v6 = v1 + 1;
      v29 = i;
      while (1)
      {
        if (v31)
        {
          v12 = MEMORY[0x22AA9DBF0](v11, v9);
        }

        else
        {
          if (v11 >= *(v30 + 16))
          {
            goto LABEL_16;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v1 = v12;
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = [v12 expirationDate];
        v15 = v32;
        sub_2278C6800();

        __swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));
        v16 = off_283AE99E0;
        type metadata accessor for DateProvider();
        v17 = v33;
        v16(v33);
        LOBYTE(v14) = sub_2278C6710();
        v18 = *v6;
        v19 = v34;
        (*v6)(v17, v34);
        v18(v15, v19);
        if (v14)
        {
          sub_2278C7CB0();
          v20 = *(v36 + 16);
          sub_2278C7CE0();
          sub_2278C7CF0();
          sub_2278C7CC0();
        }

        else
        {
        }

        v9 = v28;
        ++v11;
        if (v13 == v29)
        {
          v21 = v36;
          v6 = v27;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_19:

    if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
    {
      goto LABEL_32;
    }

    for (j = *(v21 + 16); j; j = sub_2278C7B80())
    {
      for (k = 0; ; ++k)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x22AA9DBF0](k, v21);
        }

        else
        {
          if (k >= *(v21 + 16))
          {
            goto LABEL_31;
          }

          v24 = *(v21 + 8 * k + 32);
        }

        v25 = v24;
        v26 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        [v6 removeNotificationSuppressionRequest_];

        if (v26 == j)
        {
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }
  }

  return result;
}

void sub_22786CA3C()
{
  v1 = sub_2278C6820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v12;
  v13 = [*(v0 + 56) allRequests];
  if (v13)
  {
    v14 = v13;
    sub_22786D8E0();
    v15 = sub_2278C77A0();

    if (v15 >> 62)
    {
LABEL_31:
      v16 = sub_2278C7B80();
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_4:
        v47 = v15 & 0xC000000000000001;
        v43 = v6;
        v44 = v9;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AA9DBF0](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v17 = *(v15 + 32);
        }

        v6 = v17;
        v42 = v2;
        v45 = v0;
        if (v16 != 1)
        {
          v46 = v15 & 0xFFFFFFFFFFFFFF8;
          v18 = (v2 + 8);
          v2 = 1;
          v48 = v1;
          while (2)
          {
            v49 = v6;
            v1 = v2;
            while (1)
            {
              if (v47)
              {
                v19 = MEMORY[0x22AA9DBF0](v1, v15);
              }

              else
              {
                if ((v1 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                if (v1 >= *(v46 + 16))
                {
                  goto LABEL_30;
                }

                v19 = *(v15 + 8 * v1 + 32);
              }

              v20 = v19;
              v2 = v1 + 1;
              if (__OFADD__(v1, 1))
              {
                __break(1u);
LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v9 = v15;
              v21 = [v49 expirationDate];
              v6 = v51;
              sub_2278C6800();

              v22 = [v20 expirationDate];
              v23 = v50;
              sub_2278C6800();

              v0 = sub_2278C6770();
              v24 = *v18;
              v25 = v23;
              v26 = v48;
              (*v18)(v25, v48);
              v24(v6, v26);
              if (v0)
              {
                break;
              }

              ++v1;
              v15 = v9;
              if (v2 == v16)
              {
                v1 = v48;
                v6 = v49;
                v0 = v45;
                goto LABEL_24;
              }
            }

            v1 = v48;
            v0 = v45;
            v15 = v9;
            v6 = v20;
            if (v2 != v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:

        if (v6)
        {
          v29 = [v6 expirationDate];
          v30 = v43;
          sub_2278C6800();

          v31 = v42;
          v32 = v44;
          (*(v42 + 32))(v44, v30, v1);
          __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          v33 = off_283AE99E0;
          type metadata accessor for DateProvider();
          v34 = v51;
          v33(v51);
          v35 = sub_2278C6740();
          v36 = *(v31 + 8);
          v36(v34, v1);
          if (v35)
          {
            v37 = *(v45 + 64);
            v38 = sub_2278C76F0();
            v39 = sub_2278C67D0();
            [v37 scheduleActivityWithName:v38 scheduledDate:v39];

            v36(v32, v1);
            return;
          }

          v36(v32, v1);
          v0 = v45;
        }

        goto LABEL_33;
      }
    }

    v6 = 0;
LABEL_33:
    v40 = *(v0 + 64);
    v41 = sub_2278C76F0();
    [v40 cancelActivityWithName_];

    return;
  }

  v27 = *(v0 + 64);
  v51 = sub_2278C76F0();
  [v27 cancelActivityWithName_];
  v28 = v51;
}

uint64_t sub_22786CF74()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_22786CFE0()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v6, v2);
  sub_22786C6CC();
  sub_22786CA3C();
  v7 = *(v1 + 56);
  LODWORD(v2) = [v7 lastNotifiedSuppressionState];
  result = [v7 notificationsSuppressed];
  if (v2 != result)
  {
    v9 = result;
    notify_post(*MEMORY[0x277D09BA8]);
    return [v7 setLastNotifiedSuppressionState_];
  }

  return result;
}

uint64_t sub_22786D13C(void *a1)
{
  v2 = v1;
  v4 = sub_2278C75A0();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C6820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v31 = a1;
  v15 = [a1 expirationDate];
  sub_2278C6800();

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v16 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v16(v12);
  LOBYTE(v15) = sub_2278C6740();
  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
  if (v15)
  {
    v18 = v2[7];
    v19 = v31;
    [v18 addNotificationSuppressionRequest_];
    sub_22786C6CC();
    sub_22786CA3C();
    v20 = [v18 lastNotifiedSuppressionState];
    v21 = [v18 notificationsSuppressed];
    if (v20 != v21)
    {
      v22 = v21;
      notify_post(*MEMORY[0x277D09BA8]);
      [v18 setLastNotifiedSuppressionState_];
    }

    v23 = v32;
    sub_2278C73A0();
    v24 = v19;
    v25 = sub_2278C7590();
    v26 = sub_2278C7970();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_2277F7000, v25, v26, "Added notification suppression request: %@", v27, 0xCu);
      sub_227848BE0(v28);
      MEMORY[0x22AA9E860](v28, -1, -1);
      MEMORY[0x22AA9E860](v27, -1, -1);
    }

    return (*(v33 + 8))(v23, v34);
  }

  else
  {
    sub_22786D92C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22786D4D0(void *a1)
{
  v3 = sub_2278C75A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 56);
  [v8 removeNotificationSuppressionRequest_];
  sub_22786C6CC();
  sub_22786CA3C();
  v9 = [v8 lastNotifiedSuppressionState];
  v10 = [v8 notificationsSuppressed];
  if (v9 != v10)
  {
    v11 = v10;
    notify_post(*MEMORY[0x277D09BA8]);
    [v8 setLastNotifiedSuppressionState_];
  }

  sub_2278C73A0();
  v12 = a1;
  v13 = sub_2278C7590();
  v14 = sub_2278C7970();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_2277F7000, v13, v14, "Removed notification suppression request: %@", v15, 0xCu);
    sub_227848BE0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_22786D73C()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v7 = sub_2278C7590();
  v8 = sub_2278C7970();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2277F7000, v7, v8, "Notification suppression expiration activity fired", v9, 2u);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_22786C6CC();
  sub_22786CA3C();
  v10 = *(v1 + 56);
  v11 = [v10 lastNotifiedSuppressionState];
  result = [v10 notificationsSuppressed];
  if (v11 != result)
  {
    v13 = result;
    notify_post(*MEMORY[0x277D09BA8]);
    return [v10 setLastNotifiedSuppressionState_];
  }

  return result;
}

unint64_t sub_22786D8E0()
{
  result = qword_2813B9AC0;
  if (!qword_2813B9AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AC0);
  }

  return result;
}

unint64_t sub_22786D92C()
{
  result = qword_27D7D6490;
  if (!qword_27D7D6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6490);
  }

  return result;
}

uint64_t sub_22786D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_22786DAA8(void *a1, void *a2)
{
  if ((![a1 unearned] || (v5 = objc_msgSend(a2, sel_unachievedAlertDescriptionForAchievement_fitnessExperienceType_, a1, *(v2 + 120))) == 0) && ((objc_msgSend(a1, sel_unearned) & 1) != 0 || (v5 = objc_msgSend(a2, sel_achievedAlertDescriptionForAchievement_fitnessExperienceType_, a1, *(v2 + 120))) == 0))
  {
    v5 = [a2 unachievedDescriptionForAchievement_];
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  v7 = sub_2278C7700();

  return v7;
}

uint64_t sub_22786DB84()
{
  sub_227839268(0, &qword_2813B9B00, 0x277CBEB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D0, qword_2278CB330);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2278C9140;
  v1 = *MEMORY[0x277D09C38];
  v2 = sub_2278C7700();
  v3 = MEMORY[0x277D837D0];
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 88) = MEMORY[0x277D83B88];
  *(v0 + 56) = v3;
  *(v0 + 64) = 2;
  sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
  v5 = sub_2278C7940();
  v6 = sub_2278C7930();

  v7 = v6;
  ACHEncodeAchievementIntoUserInfoDictionary();
  sub_2278C7650();

  return 0;
}

uint64_t sub_22786DCB8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_2278C6860();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = sub_2278C7420();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v9 = sub_2278C75A0();
  v2[32] = v9;
  v10 = *(v9 - 8);
  v2[33] = v10;
  v11 = *(v10 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22786DE6C, 0, 0);
}

uint64_t sub_22786DE6C()
{
  v126 = v0;
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[23];
  v9 = v0[24];
  sub_2278C73A0();
  sub_2278C7580();
  v123 = *(v3 + 8);
  v123(v1, v2);
  v10 = sub_2278C72F0();
  v0[39] = v10;
  v11 = *(v9 + 176);
  sub_2278C7430();
  sub_2278C73D0();
  sub_2278011DC();
  LOBYTE(v1) = sub_2278C7AE0();
  v12 = *(v7 + 8);
  v12(v5, v6);
  v12(v4, v6);
  if ((v1 & 1) == 0)
  {
    v20 = v0[34];
    sub_2278C7360();
    v21 = v10;
    v22 = sub_2278C7590();
    v23 = sub_2278C7970();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v125[0] = v25;
      *v24 = 136315138;
      v26 = [v21 template];
      v27 = [v26 uniqueName];

      if (v27)
      {
        v28 = sub_2278C7700();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v122 = v0[34];
      v79 = v0[32];
      v0[18] = v28;
      v0[19] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
      v80 = sub_2278C7AA0();
      v82 = v81;

      v83 = sub_2278021B4(v80, v82, v125);

      *(v24 + 4) = v83;
      v84 = "Not posting achievement notification for %s, disabled for platform";
      goto LABEL_29;
    }

    v37 = v0[34];
LABEL_13:
    v38 = v0[32];

    v123(v37, v38);
LABEL_30:
    v93 = v0[37];
    v92 = v0[38];
    v95 = v0[35];
    v94 = v0[36];
    v96 = v0[34];
    v98 = v0[30];
    v97 = v0[31];
    v99 = v0[27];

    v100 = v0[1];
    goto LABEL_34;
  }

  if (!sub_22785ACAC())
  {
    v31 = v0[35];
    sub_2278C7380();
    v21 = v10;
    v22 = sub_2278C7590();
    v23 = sub_2278C7970();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v125[0] = v25;
      *v24 = 136315138;
      v32 = [v21 template];
      v33 = [v32 uniqueName];

      if (v33)
      {
        v34 = sub_2278C7700();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v122 = v0[35];
      v79 = v0[32];
      v0[20] = v34;
      v0[21] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
      v88 = sub_2278C7AA0();
      v90 = v89;

      v91 = sub_2278021B4(v88, v90, v125);

      *(v24 + 4) = v91;
      v84 = "Not posting achievement notification for %s, fitness tracking is disabled";
LABEL_29:
      _os_log_impl(&dword_2277F7000, v22, v23, v84, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9E860](v25, -1, -1);
      MEMORY[0x22AA9E860](v24, -1, -1);

      v123(v122, v79);
      goto LABEL_30;
    }

    v37 = v0[35];
    goto LABEL_13;
  }

  v13 = v0[24];
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v15 = sub_2278C6FF0();
  v16 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
  v0[40] = v16;
  v17 = __swift_project_boxed_opaque_existential_1(v13 + 5, v13[8]);
  sub_227865154(*v17);
  if (v18)
  {
    v19 = sub_2278C76F0();
  }

  else
  {
    v19 = 0;
  }

  v39 = v0[37];
  v40 = v0[24];
  [v16 setName_];

  [v16 setWheelchairUser_];
  [v16 setActivityMoveMode_];
  [v16 setAchUnitManager_];
  sub_2278C7380();
  v41 = v16;
  v42 = sub_2278C7590();
  v43 = sub_2278C7970();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[37];
  v46 = v0[32];
  if (v44)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v125[0] = v48;
    *v47 = 136315138;
    v0[22] = [v41 achUnitManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64B8, &unk_2278CD508);
    v119 = v45;
    v49 = sub_2278C7AA0();
    v116 = v46;
    v50 = v41;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = sub_2278021B4(v49, v52, v125);
    v41 = v50;

    *(v47 + 4) = v53;
    _os_log_impl(&dword_2277F7000, v42, v43, "localizer.achUnitManager set to %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AA9E860](v48, -1, -1);
    MEMORY[0x22AA9E860](v47, -1, -1);

    v55 = v116;
    v54 = v119;
  }

  else
  {

    v54 = v45;
    v55 = v46;
  }

  v123(v54, v55);
  [v41 setIsPregnant_];
  v56 = [v41 titleForAchievement_];
  if (v56)
  {
    v57 = v56;
    v58 = v0[24];
    sub_22786DAA8(v10, v41);
    if (v59)
    {
      if (sub_22786DB84())
      {
        v61 = v0[26];
        v60 = v0[27];
        v117 = v0[25];
        v120 = v0[36];
        v62 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
        v0[41] = v62;
        [v62 setCategoryIdentifier_];
        [v62 setTitle_];

        v63 = sub_2278C76F0();

        [v62 setBody_];

        v64 = sub_2278C7640();

        [v62 setUserInfo_];

        sub_2278C6850();
        v65 = sub_2278C6840();
        v67 = v66;
        (*(v61 + 8))(v60, v117);
        sub_2278C7380();
        v68 = v10;

        v69 = sub_2278C7590();
        v70 = sub_2278C7970();

        v71 = os_log_type_enabled(v69, v70);
        v72 = v0[36];
        v73 = v0[32];
        if (v71)
        {
          v121 = v65;
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v118 = v72;
          v76 = swift_slowAlloc();
          v125[0] = v76;
          *v74 = 138412546;
          *(v74 + 4) = v68;
          *v75 = v68;
          *(v74 + 12) = 2080;
          v77 = v68;
          *(v74 + 14) = sub_2278021B4(v121, v67, v125);
          _os_log_impl(&dword_2277F7000, v69, v70, "Posting achievement: %@ with identifier: %s", v74, 0x16u);
          sub_227848BE0(v75);
          MEMORY[0x22AA9E860](v75, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x22AA9E860](v76, -1, -1);
          MEMORY[0x22AA9E860](v74, -1, -1);

          v78 = v118;
        }

        else
        {

          v78 = v72;
        }

        v123(v78, v73);
        v110 = v0[24];
        v111 = v62;
        v112 = sub_2278C76F0();

        v113 = [objc_opt_self() requestWithIdentifier:v112 content:v111 trigger:0];
        v0[42] = v113;

        v114 = *__swift_project_boxed_opaque_existential_1((v110 + 136), *(v110 + 160));
        v0[2] = v0;
        v0[3] = sub_22786EA94;
        v115 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_227822B84;
        v0[13] = &block_descriptor_17;
        v0[14] = v115;
        [v114 addNotificationRequest:v113 withCompletionHandler:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      v124 = v41;

      sub_22786ED78();
      swift_allocError();
      v87 = 2;
    }

    else
    {
      v124 = v41;

      sub_22786ED78();
      swift_allocError();
      v87 = 1;
    }

    *v86 = v87;
  }

  else
  {
    v124 = v41;
    sub_22786ED78();
    swift_allocError();
    *v85 = 0;
  }

  swift_willThrow();
  v102 = v0[37];
  v101 = v0[38];
  v104 = v0[35];
  v103 = v0[36];
  v105 = v0[34];
  v106 = v0[30];
  v107 = v0[31];
  v108 = v0[27];

  v100 = v0[1];
LABEL_34:

  return v100();
}

uint64_t sub_22786EA94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_22786EC80;
  }

  else
  {
    v3 = sub_22786EBA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22786EBA4()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);

  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 272);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 216);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22786EC80()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  swift_willThrow();

  v15 = *(v0 + 344);
  v4 = *(v0 + 328);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 272);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v12 = *(v0 + 216);

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_22786ED78()
{
  result = qword_27D7D64A0;
  if (!qword_27D7D64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D64A0);
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_22786EE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22786EE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22786EF58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22786EFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22786F010@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v208 = a1;
  v325 = *MEMORY[0x277D85DE8];
  v4 = sub_2278C71C0();
  v222 = *(v4 - 8);
  v5 = *(v222 + 64);
  MEMORY[0x28223BE20](v4);
  v229 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C6870();
  v211 = *(v7 - 8);
  v212 = v7;
  v8 = v211[8];
  MEMORY[0x28223BE20](v7);
  GlanceActivitySharingProvider = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for LegacyWeeklySummaryProvider();
  v10 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v228 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2278C6E40();
  v220 = *(v12 - 8);
  v221 = v12;
  v13 = *(v220 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2278C7040();
  v225 = *(v16 - 8);
  v226 = v16;
  v17 = *(v225 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 120);
  v219 = FIExperienceTypeWithHealthStoreAndDefaultExperienceType();
  GlanceMessageToneProvider = type metadata accessor for FirstGlanceMessageToneProvider();
  v223 = swift_allocObject();
  *(v223 + 16) = v20;
  v21 = *(v3 + 128);
  v22 = v20;
  v23 = v21;
  v224 = v19;
  sub_2278C7030();
  v313[0] = 0;
  v24 = [v22 wheelchairUseWithError_];
  if (v24)
  {
    v25 = v24;
    v26 = v313[0];
    v217 = [v25 wheelchairUse];

    sub_2278C7530();
    v27 = sub_2278C7520();
    type metadata accessor for ActivitySharingQuery();
    v28 = swift_allocObject();
    v213 = v28;
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    v206 = v22;
    v214 = v15;
    sub_2278C6E30();
    sub_2278040AC(v3 + 40, v313);
    v29 = v314;
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v313, v314);
    v205 = &v182;
    v31 = *(*(v29 - 8) + 64);
    MEMORY[0x28223BE20](v30);
    v33 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    v207 = v2;
    v319 = &type metadata for AchievementQuery;
    v320 = &off_283AE99F8;
    v35 = type metadata accessor for DateProvider();
    v310 = v35;
    v216 = v35;
    v311 = &off_283AE99D8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v309);
    v215 = type metadata accessor for DateProvider;
    sub_2278712E0(v33, boxed_opaque_existential_1, type metadata accessor for DateProvider);
    v37 = type metadata accessor for AchievementDataSource();
    v38 = objc_allocWithZone(v37);
    __swift_mutable_project_boxed_opaque_existential_1(v318, v319);
    v39 = v310;
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v309, v310);
    v41 = *(*(v39 - 8) + 64);
    MEMORY[0x28223BE20](v40);
    v209 = v4;
    v43 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    v306 = &type metadata for AchievementQuery;
    v307 = &off_283AE99F8;
    v323 = v35;
    v324 = &off_283AE99D8;
    v45 = __swift_allocate_boxed_opaque_existential_1(v322);
    sub_2278712E0(v43, v45, type metadata accessor for DateProvider);
    sub_2278040AC(&v305, &v38[OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_query]);
    *&v38[OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_state] = 0;
    sub_2278040AC(v322, &v38[OBJC_IVAR____TtC23FitnessCoachingServices21AchievementDataSource_dateProvider]);
    v230.receiver = v38;
    v230.super_class = v37;
    v46 = objc_msgSendSuper2(&v230, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v322);
    __swift_destroy_boxed_opaque_existential_0(&v305);
    __swift_destroy_boxed_opaque_existential_0(v309);
    __swift_destroy_boxed_opaque_existential_0(v318);
    __swift_destroy_boxed_opaque_existential_0(v313);
    v204 = [objc_allocWithZone(FCSFirstGlanceAchievementEvaluator) initWithDataSource_];
    v205 = sub_227870910(v3);
    sub_2278040AC(v3, v318);
    sub_2278040AC(v3 + 40, v321);
    v321[5] = [objc_allocWithZone(MEMORY[0x277D09D18]) &selRef_dateFromString_];
    sub_2278040AC(v3, v313);
    v47 = v228;
    v48 = v227;
    sub_2278040AC(v3 + 40, v228 + *(v227 + 24));
    sub_2278040AC(v313, v47);
    v50 = GlanceActivitySharingProvider;
    v49 = v211;
    v51 = v212;
    (v211[13])(GlanceActivitySharingProvider, *MEMORY[0x277CC9830], v212);
    v52 = v47 + *(v48 + 20);
    sub_2278C6880();
    (v49[1])(v50, v51);
    __swift_destroy_boxed_opaque_existential_0(v313);
    *(v47 + *(v48 + 28)) = v217;
    sub_2278040AC(v3, v313);
    v53 = v206;
    sub_2278C71B0();
    v316 = &off_283AECDC0;
    v315 = v37;
    v313[1] = v46;
    sub_2278040AC(v3 + 40, v317);
    v313[0] = v204;
    v317[5] = v219;
    v54 = [objc_allocWithZone(MEMORY[0x277D095A8]) initWithHealthStore_];
    sub_2278040AC(v3 + 40, v309);
    sub_2278040AC(v3, &v305);
    v55 = v310;
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v309, v310);
    v57 = *(*(v55 - 8) + 64);
    MEMORY[0x28223BE20](v56);
    v59 = &v182 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59);
    v61 = v205;
    v206 = v61;
    v62 = v54;
    v212 = sub_227870E7C(v59, &v305, v61, v62);
    __swift_destroy_boxed_opaque_existential_0(v309);
    GlanceActivitySharingProvider = type metadata accessor for FirstGlanceActivitySharingProvider();
    v63 = swift_allocObject();
    v211 = v63;
    v63[2] = v213;
    v63[3] = &off_283AEB1F0;
    v63[4] = 0;
    sub_2278040AC(v3 + 40, v309);
    v64 = MEMORY[0x277D098A0];
    v65 = v221;
    v312[3] = v221;
    v312[4] = MEMORY[0x277D098A0];
    v66 = __swift_allocate_boxed_opaque_existential_1(v312);
    v67 = *(v220 + 16);
    v68 = v214;
    v67(v66, v214, v65);
    v312[5] = v62;
    sub_2278040AC(v3 + 40, &v305);
    v308[3] = v65;
    v308[4] = v64;
    v69 = __swift_allocate_boxed_opaque_existential_1(v308);
    v67(v69, v68, v65);
    v70 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

    v71 = v212;

    v72 = v211;

    v73 = [v70 init];
    sub_2278040AC(v3 + 40, v322);
    sub_2278040AC(v3 + 80, v303);
    v74 = v223;

    v203 = sub_2278C7440();
    v75 = v323;
    v76 = __swift_mutable_project_boxed_opaque_existential_1(v322, v323);
    v205 = &v182;
    v77 = *(*(v75 - 8) + 64);
    MEMORY[0x28223BE20](v76);
    v79 = &v182 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v79);
    v81 = v304;
    v82 = __swift_mutable_project_boxed_opaque_existential_1(v303, v304);
    v204 = &v182;
    v83 = *(*(v81 - 8) + 64);
    MEMORY[0x28223BE20](v82);
    v85 = (&v182 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85);
    v87 = *v85;
    v301 = &type metadata for FirstGlanceAchievementProvider;
    v302 = &off_283AEBDD0;
    v300[0] = swift_allocObject();
    sub_2278710C4(v313, v300[0] + 16);
    GlanceActivityDataProvider = type metadata accessor for FirstGlanceActivityDataProvider();
    v299 = &off_283AEB590;
    v298 = GlanceActivityDataProvider;
    v297[0] = v71;
    v296 = &off_283AEA370;
    v295 = GlanceActivitySharingProvider;
    v294[0] = v72;
    v293 = &off_283AEC2E0;
    v292 = &type metadata for ContactStore;
    v291[0] = v73;
    v289 = v216;
    v290 = &off_283AE99D8;
    v88 = __swift_allocate_boxed_opaque_existential_1(v288);
    sub_2278712E0(v79, v88, v215);
    v197 = type metadata accessor for FitnessModeObserver();
    v287 = &off_283AEBF40;
    v286 = v197;
    v285[0] = v87;
    v283 = v227;
    v284 = &off_283AECF50;
    v89 = __swift_allocate_boxed_opaque_existential_1(v282);
    sub_227871120(v228, v89);
    v90 = v226;
    v280 = v226;
    v281 = MEMORY[0x277D09A48];
    v91 = __swift_allocate_boxed_opaque_existential_1(&v279);
    (*(v225 + 16))(v91, v224, v90);
    v278 = &off_283AEB5E8;
    v277 = GlanceMessageToneProvider;
    v276[0] = v74;
    v274 = &type metadata for WeeklyGoalProvider;
    v275 = &off_283AED848;
    v273[0] = swift_allocObject();
    sub_227871184(v318, v273[0] + 16);
    v92 = v209;
    v271 = v209;
    v272 = MEMORY[0x277D09AD0];
    v93 = __swift_allocate_boxed_opaque_existential_1(&v270);
    (*(v222 + 16))(v93, v229, v92);
    v268 = &type metadata for FirstGlanceWorkoutProvider;
    v269 = &off_283AED500;
    v267[0] = swift_allocObject();
    sub_227871228(v309, v267[0] + 16);
    v265 = &type metadata for FirstGlanceWorkoutSummationProvider;
    v266 = &off_283AEB0D0;
    v264[0] = swift_allocObject();
    sub_227871284(&v305, v264[0] + 16);
    GlanceService = type metadata accessor for FirstGlanceService();
    v196 = swift_allocObject();
    v94 = v301;
    v95 = __swift_mutable_project_boxed_opaque_existential_1(v300, v301);
    v201 = &v182;
    v96 = *(v94[-1].Description + 8);
    MEMORY[0x28223BE20](v95);
    v190 = &v182 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))();
    v99 = v298;
    v100 = __swift_mutable_project_boxed_opaque_existential_1(v297, v298);
    v200 = &v182;
    v101 = *(*(v99 - 8) + 64);
    MEMORY[0x28223BE20](v100);
    v103 = (&v182 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))(v103);
    v105 = v295;
    v106 = __swift_mutable_project_boxed_opaque_existential_1(v294, v295);
    v198 = &v182;
    v107 = *(*(v105 - 8) + 64);
    MEMORY[0x28223BE20](v106);
    v109 = (&v182 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))(v109);
    v111 = v292;
    v112 = __swift_mutable_project_boxed_opaque_existential_1(v291, v292);
    v195 = &v182;
    v113 = *(v111[-1].Description + 8);
    MEMORY[0x28223BE20](v112);
    v186 = (&v182 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v115 + 16))();
    v116 = v289;
    v117 = __swift_mutable_project_boxed_opaque_existential_1(v288, v289);
    v194 = &v182;
    v118 = *(*(v116 - 8) + 64);
    MEMORY[0x28223BE20](v117);
    v187 = &v182 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v120 + 16))();
    v121 = v286;
    v122 = __swift_mutable_project_boxed_opaque_existential_1(v285, v286);
    v193 = &v182;
    v123 = *(*(v121 - 8) + 64);
    MEMORY[0x28223BE20](v122);
    v183 = (&v182 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v125 + 16))();
    v126 = v283;
    v127 = __swift_mutable_project_boxed_opaque_existential_1(v282, v283);
    v192 = &v182;
    v128 = *(*(v126 - 8) + 64);
    MEMORY[0x28223BE20](v127);
    v184 = &v182 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v130 + 16))();
    v131 = v277;
    v132 = __swift_mutable_project_boxed_opaque_existential_1(v276, v277);
    v191 = &v182;
    v133 = *(*(v131 - 8) + 64);
    MEMORY[0x28223BE20](v132);
    v135 = (&v182 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v136 + 16))(v135);
    v137 = v274;
    v138 = __swift_mutable_project_boxed_opaque_existential_1(v273, v274);
    v189 = &v182;
    v139 = *(v137[-1].Description + 8);
    MEMORY[0x28223BE20](v138);
    v141 = &v182 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v142 + 16))(v141);
    v143 = v268;
    v144 = __swift_mutable_project_boxed_opaque_existential_1(v267, v268);
    v188 = &v182;
    v145 = *(v143[-1].Description + 8);
    MEMORY[0x28223BE20](v144);
    v147 = &v182 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v148 + 16))(v147);
    v149 = v265;
    v150 = __swift_mutable_project_boxed_opaque_existential_1(v264, v265);
    v185 = &v182;
    v151 = *(v149[-1].Description + 8);
    MEMORY[0x28223BE20](v150);
    v153 = (&v182 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v154 + 16))(v153);
    v155 = *v103;
    v156 = *v109;
    v157 = *v186;
    v158 = *v183;
    v159 = *v135;
    v262 = &type metadata for FirstGlanceAchievementProvider;
    v263 = &off_283AEBDD0;
    v160 = swift_allocObject();
    *&v261 = v160;
    v161 = v190;
    v162 = *(v190 + 3);
    v160[3] = *(v190 + 2);
    v160[4] = v162;
    v163 = v161[5];
    v160[5] = v161[4];
    v160[6] = v163;
    v164 = v161[1];
    v160[1] = *v161;
    v160[2] = v164;
    v260 = &off_283AEB590;
    v259 = GlanceActivityDataProvider;
    *&v258 = v155;
    v257 = &off_283AEA370;
    v256 = GlanceActivitySharingProvider;
    *&v255 = v156;
    v254 = &off_283AEC2E0;
    v253 = &type metadata for ContactStore;
    *&v252 = v157;
    v250 = v216;
    v251 = &off_283AE99D8;
    v165 = __swift_allocate_boxed_opaque_existential_1(&v249);
    sub_2278712E0(v187, v165, v215);
    v248 = &off_283AEBF40;
    v247 = v197;
    *&v246 = v158;
    v244 = v227;
    v245 = &off_283AECF50;
    v166 = __swift_allocate_boxed_opaque_existential_1(&v243);
    sub_2278712E0(v184, v166, type metadata accessor for LegacyWeeklySummaryProvider);
    v242 = &off_283AEB5E8;
    v241 = GlanceMessageToneProvider;
    *&v240 = v159;
    v238 = &type metadata for WeeklyGoalProvider;
    v239 = &off_283AED848;
    v167 = swift_allocObject();
    *&v237 = v167;
    v168 = *(v141 + 3);
    *(v167 + 48) = *(v141 + 2);
    *(v167 + 64) = v168;
    *(v167 + 80) = *(v141 + 4);
    *(v167 + 96) = *(v141 + 10);
    v169 = *(v141 + 1);
    *(v167 + 16) = *v141;
    *(v167 + 32) = v169;
    v235 = &type metadata for FirstGlanceWorkoutProvider;
    v236 = &off_283AED500;
    v170 = swift_allocObject();
    *&v234 = v170;
    v171 = *(v147 + 3);
    *(v170 + 48) = *(v147 + 2);
    *(v170 + 64) = v171;
    *(v170 + 80) = *(v147 + 4);
    *(v170 + 96) = *(v147 + 10);
    v172 = *(v147 + 1);
    *(v170 + 16) = *v147;
    *(v170 + 32) = v172;
    v232 = &type metadata for FirstGlanceWorkoutSummationProvider;
    v233 = &off_283AEB0D0;
    v173 = swift_allocObject();
    *&v231 = v173;
    v174 = v153[3];
    v173[3] = v153[2];
    v173[4] = v174;
    v173[5] = v153[4];
    v175 = v153[1];
    v173[1] = *v153;
    v173[2] = v175;
    v176 = v196;
    sub_2277F9D0C(&v261, v196 + 16);
    sub_2277F9D0C(&v258, v176 + 56);
    sub_2277F9D0C(&v255, v176 + 96);
    sub_2277F9D0C(&v252, v176 + 136);
    sub_2277F9D0C(&v249, v176 + 176);
    *(v176 + 216) = v219;
    sub_2277F9D0C(&v246, v176 + 224);
    sub_2277F9D0C(&v243, v176 + 264);
    sub_2277F9D0C(&v240, v176 + 344);
    sub_2277F9D0C(&v279, v176 + 304);
    *(v176 + 384) = v203;
    sub_2277F9D0C(&v237, v176 + 392);
    sub_2277F9D0C(&v270, v176 + 432);
    *(v176 + 472) = v217;
    sub_2277F9D0C(&v234, v176 + 480);
    sub_2277F9D0C(&v231, v176 + 520);
    __swift_destroy_boxed_opaque_existential_0(v264);
    __swift_destroy_boxed_opaque_existential_0(v267);
    __swift_destroy_boxed_opaque_existential_0(v273);
    __swift_destroy_boxed_opaque_existential_0(v276);
    __swift_destroy_boxed_opaque_existential_0(v282);
    __swift_destroy_boxed_opaque_existential_0(v285);
    __swift_destroy_boxed_opaque_existential_0(v288);
    __swift_destroy_boxed_opaque_existential_0(v291);
    __swift_destroy_boxed_opaque_existential_0(v294);
    __swift_destroy_boxed_opaque_existential_0(v297);
    __swift_destroy_boxed_opaque_existential_0(v300);
    __swift_destroy_boxed_opaque_existential_0(v303);
    __swift_destroy_boxed_opaque_existential_0(v322);
    v177 = v208;
    v208[3] = GlanceService;
    v177[4] = &off_283AEA660;
    v178 = v177;

    *v178 = v176;
    (*(v222 + 8))(v229, v209);
    sub_227871348(v228);
    sub_2278713A4(v318);
    (*(v220 + 8))(v214, v221);
    (*(v225 + 8))(v224, v226);
    sub_2278713F8(&v305);
    sub_22787144C(v309);
    result = sub_2278714A0(v313);
  }

  else
  {
    v180 = v313[0];
    sub_2278C65F0();

    swift_willThrow();

    result = (*(v225 + 8))(v224, v226);
  }

  v181 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_227870910(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_2278C6540();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2278C6910();
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2278C6820();
  v46 = *(v50 - 8);
  v8 = v46;
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](v50);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v46 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v47 = &v46 - v17;
  v18 = sub_2278C6920();
  v51 = v18;
  v60 = *(v18 - 8);
  v19 = *(v60 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v48 = v24;
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v25 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v25(v16);
  v26 = v47;
  sub_2278C6890();
  v49 = *(v8 + 8);
  v27 = v50;
  v49(v16, v50);
  v28 = *(v60 + 8);
  v60 += 8;
  v52 = v28;
  v28(v22, v18);
  v29 = v55;
  v30 = v53;
  v31 = v57;
  (*(v55 + 104))(v53, *MEMORY[0x277CC9968], v57);
  sub_2278C66E0();
  (*(v29 + 8))(v30, v31);
  sub_2278040AC(v59, v63);
  v32 = *(v46 + 16);
  v33 = v27;
  v32(v54, v16, v27);
  v34 = v26;
  v32(v56, v26, v33);
  v35 = v58;
  sub_2278C6520();
  sub_2278040AC(v1 + 40, v61);
  v36 = v62;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v46 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40);
  v42 = sub_227869CE4(v63, v35, v40);
  __swift_destroy_boxed_opaque_existential_0(v61);
  v43 = sub_227869FAC(v42);
  v44 = v49;
  v49(v16, v33);
  v44(v34, v33);
  v52(v48, v51);
  return v43;
}

uint64_t *sub_227870E7C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DateProvider();
  v28 = v8;
  v29 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_2278712E0(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  v10 = type metadata accessor for TypicalDayProvider();
  v26[3] = v10;
  v26[4] = &off_283AED4B0;
  v26[0] = a3;
  type metadata accessor for FirstGlanceActivityDataProvider();
  v11 = swift_allocObject();
  v12 = v28;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  v19 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v11[5] = v8;
  v11[6] = &off_283AE99D8;
  v24 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  sub_2278712E0(v16, v24, type metadata accessor for DateProvider);
  v11[15] = v10;
  v11[16] = &off_283AED4B0;
  v11[12] = v23;
  sub_2277F9D0C(a2, (v11 + 7));
  v11[17] = a4;
  v11[18] = 1;
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v11;
}

uint64_t sub_227871120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyWeeklySummaryProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2278712E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227871348(uint64_t a1)
{
  v2 = type metadata accessor for LegacyWeeklySummaryProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2278714F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_22787161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_227871748(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_227871870(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_227871890, 0, 0);
}

uint64_t sub_227871890()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:4 domainName:*MEMORY[0x277D09BC0] healthStore:v0[19]];
  v0[20] = v2;
  v3 = sub_2278C67D0();
  v4 = *MEMORY[0x277D09BC8];
  v0[21] = v3;
  v0[22] = v4;
  v0[2] = v0;
  v0[3] = sub_227871A08;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227871C0C;
  v0[13] = &block_descriptor_14;
  v0[14] = v5;
  [v2 setDate:v3 forKey:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227871A08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_227871B88;
  }

  else
  {
    v3 = sub_227871B18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227871B18()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227871B88()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[23];

  return v5();
}

uint64_t sub_227871C0C(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t sub_227871CC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_227871CE4, 0, 0);
}

uint64_t sub_227871CE4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:4 domainName:*MEMORY[0x277D09BC0] healthStore:v0[3]];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  *v4 = v0;
  v4[1] = sub_227871E24;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000015, 0x80000002278D26A0, sub_22787279C, v2, v5);
}

uint64_t sub_227871E24()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_227871FA4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_227871F40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227871F40()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227871FA4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

void sub_227872010(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *MEMORY[0x277D09BC8];
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_2278727A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2278722C4;
  aBlock[3] = &block_descriptor_11;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  [a2 dateForKey:v13 completion:v12];
  _Block_release(v12);
}

uint64_t sub_2278721E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (a2)
  {
    v9[1] = a2;
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);
    return sub_2278C7800();
  }

  else
  {
    sub_2278102C8(a1, v9 - v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720);
    return sub_2278C7810();
  }
}

uint64_t sub_2278722C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_2278C6800();
    v12 = sub_2278C6820();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_2278C6820();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_22783F30C(v9);
}

uint64_t sub_227872428()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:4 domainName:*MEMORY[0x277D09BC0] healthStore:v0[18]];
  v2 = *MEMORY[0x277D09BC8];
  v0[19] = v1;
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_227872594;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227871C0C;
  v0[13] = &block_descriptor_18;
  v0[14] = v3;
  [v1 setDate:0 forKey:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227872594()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_22787270C;
  }

  else
  {
    v3 = sub_2278726A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278726A4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22787270C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_2278727A4(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64C0, &qword_2278CD720) - 8) + 80);

  return sub_2278721E0(a1, a2);
}

uint64_t sub_227872850(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_227872968(uint64_t a1)
{
  v2 = sub_2278C6570();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2278C6550();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227872A5C()
{
  v1 = *(v0 + 576);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 280) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));

  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 528));
  v6 = *(v0 + 568);

  v7 = *(v0 + 576);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227872BD8()
{
  sub_227872A5C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227872C48()
{
  __swift_project_boxed_opaque_existential_1((v0[7] + 408), *(v0[7] + 432));
  sub_22783935C(v0 + 2);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_227872D3C;
  v2 = v0[7];

  return sub_22787D664();
}

uint64_t sub_227872D3C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_227873208;
  }

  else
  {
    v6 = sub_227872E68;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227872E68()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_227872F04;

  return sub_22781DA5C();
}

uint64_t sub_227872F04()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_2278731A4, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_227873078;
    v6 = v3[7];

    return sub_2278732D0((v3 + 2));
  }
}

uint64_t sub_227873078()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_22787326C;
  }

  else
  {
    v6 = sub_227803A30;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2278731A4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[11];
  v2 = v0[1];

  return v2();
}

uint64_t sub_227873208()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[9];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22787326C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2278732D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2278C75A0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227873390, v1, 0);
}

uint64_t sub_227873390()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_2278C7330();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v0[7] = *(v4 + 568);
  v5 = *(MEMORY[0x277D09B38] + 4);
  v8 = (*MEMORY[0x277D09B38] + MEMORY[0x277D09B38]);

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2278734B0;

  return v8();
}

uint64_t sub_2278734B0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v4;
  v5[1] = sub_22787362C;
  v6 = v1[3];
  v7 = v1[2];

  return sub_227873860(v7);
}

uint64_t sub_22787362C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_2278737DC;
  }

  else
  {
    v6 = sub_227873758;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227873758()
{
  v1 = v0[6];
  v2 = *(v0[3] + 568);

  sub_2278C7470();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2278737DC()
{
  v1 = v0[6];
  v2 = *(v0[3] + 568);

  sub_2278C7470();

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_227873860(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_2278C6920();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = sub_2278C6820();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v10 = sub_2278C75A0();
  v2[42] = v10;
  v11 = *(v10 - 8);
  v2[43] = v11;
  v12 = *(v11 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227873B00, v1, 0);
}

uint64_t sub_227873B00()
{
  v1 = v0[53];
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Schedule Pause Rings Reminder Task if needed", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = v0[53];
  v6 = v0[42];
  v7 = v0[43];
  v8 = v0[23];

  v9 = *(v7 + 8);
  v0[54] = v9;
  v9(v5, v6);
  __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
  v10 = swift_task_alloc();
  v0[55] = v10;
  *v10 = v0;
  v10[1] = sub_227873C50;
  v11 = v0[41];

  return sub_227849404(v11);
}

uint64_t sub_227873C50()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_2278742DC;
  }

  else
  {
    v6 = sub_227873D7C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227873D7C()
{
  v72 = v0;
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  sub_227850448(v0[41], v1, &qword_27D7D60A8, qword_2278C9730);
  v4 = *(v3 + 48);
  v0[57] = v4;
  v0[58] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[40], &qword_27D7D60A8, qword_2278C9730);
LABEL_7:
    v33 = *__swift_project_boxed_opaque_existential_1((v0[23] + 448), *(v0[23] + 472));
    v34 = swift_task_alloc();
    v0[59] = v34;
    *v34 = v0;
    v34[1] = sub_227874470;
    v35 = v0[39];

    return sub_227853C98(v35);
  }

  v5 = v0[36];
  v6 = v0[28];
  v65 = v0[27];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v68 = v0[24];
  (*(v6 + 32))(v0[37], v0[40]);
  __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
  v10 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v10(v5);
  v11 = sub_2278C68F0();
  v12 = *(v6 + 8);
  v12(v5, v65);
  (*(v8 + 8))(v7, v68);
  if ((v11 & 1) == 0)
  {
    v12(v0[37], v0[27]);
    goto LABEL_7;
  }

  v13 = v0[52];
  v14 = v0[37];
  v15 = v0[35];
  v16 = v0[27];
  v17 = v0[28];
  sub_2278C7330();
  (*(v17 + 16))(v15, v14, v16);
  v18 = sub_2278C7590();
  v19 = sub_2278C7970();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[54];
  v69 = v0[52];
  v63 = v0[43];
  v66 = v0[42];
  v22 = v0[41];
  v23 = v0[37];
  v24 = v0[35];
  v25 = v0[27];
  if (v20)
  {
    v55 = v19;
    v26 = swift_slowAlloc();
    v61 = v22;
    v27 = swift_slowAlloc();
    v71 = v27;
    *v26 = 136315138;
    v57 = v21;
    v59 = v23;
    v28 = sub_2278C6790();
    v30 = v29;
    v12(v24, v25);
    v31 = sub_2278021B4(v28, v30, &v71);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2277F7000, v18, v55, "[EndTomorrowReminder] Already fired notification today on %s, skipping...", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AA9E860](v27, -1, -1);
    MEMORY[0x22AA9E860](v26, -1, -1);

    v57(v69, v66);
    v12(v59, v25);
    v32 = v61;
  }

  else
  {

    v12(v24, v25);
    v21(v69, v66);
    v12(v23, v25);
    v32 = v22;
  }

  sub_227802FC4(v32, &qword_27D7D60A8, qword_2278C9730);
  v38 = v0[52];
  v37 = v0[53];
  v40 = v0[50];
  v39 = v0[51];
  v42 = v0[48];
  v41 = v0[49];
  v43 = v0[46];
  v44 = v0[47];
  v46 = v0[44];
  v45 = v0[45];
  v48 = v0[41];
  v49 = v0[40];
  v50 = v0[39];
  v51 = v0[38];
  v52 = v0[37];
  v53 = v0[36];
  v54 = v0[35];
  v56 = v0[34];
  v58 = v0[33];
  v60 = v0[32];
  v62 = v0[31];
  v64 = v0[30];
  v67 = v0[29];
  v70 = v0[26];

  v47 = v0[1];

  return v47();
}

uint64_t sub_2278742DC()
{
  v27 = v0[56];
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v10 = v0[44];
  v9 = v0[45];
  v13 = v0[41];
  v14 = v0[40];
  v15 = v0[39];
  v16 = v0[38];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[31];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227874470()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227874580, v2, 0);
}

uint64_t sub_227874580()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 312);
  v3 = *(v0 + 216);
  if ((*(v0 + 456))(v2, 1, v3) == 1)
  {
    sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
LABEL_8:
    v17 = *(v0 + 352);
    sub_2278C7330();
    v18 = sub_2278C7590();
    v19 = sub_2278C7970();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 432);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v24 = *(v0 + 328);
    v25 = *(v0 + 336);
    if (v20)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2277F7000, v18, v19, "[EndTomorrowReminder] User hasn't started their day, skipping for now..", v26, 2u);
      MEMORY[0x22AA9E860](v26, -1, -1);
    }

    v21(v22, v25);
    sub_227802FC4(v24, &qword_27D7D60A8, qword_2278C9730);
    v28 = *(v0 + 416);
    v27 = *(v0 + 424);
    v30 = *(v0 + 400);
    v29 = *(v0 + 408);
    v32 = *(v0 + 384);
    v31 = *(v0 + 392);
    v33 = *(v0 + 368);
    v34 = *(v0 + 376);
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v38 = *(v0 + 328);
    v39 = *(v0 + 320);
    v40 = *(v0 + 312);
    v41 = *(v0 + 304);
    v42 = *(v0 + 296);
    v43 = *(v0 + 288);
    v44 = *(v0 + 280);
    v45 = *(v0 + 272);
    v46 = *(v0 + 264);
    v47 = *(v0 + 256);
    v48 = *(v0 + 248);
    v49 = *(v0 + 240);
    v50 = *(v0 + 232);
    v51 = *(v0 + 208);

    v37 = *(v0 + 8);

    return v37();
  }

  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 224);
  v7 = *(v0 + 184);
  v8 = *(v6 + 32);
  *(v0 + 480) = v8;
  *(v0 + 488) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v5, v2, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 160), *(v7 + 184));
  v9 = off_283AE99E0;
  *(v0 + 496) = off_283AE99E0;
  *(v0 + 504) = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  *(v0 + 512) = type metadata accessor for DateProvider();
  v9(v4);
  v10 = sub_2278C6710();
  v11 = *(v6 + 8);
  *(v0 + 520) = v11;
  *(v0 + 528) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v3);
  if ((v10 & 1) == 0)
  {
    v11(*(v0 + 272), *(v0 + 216));
    goto LABEL_8;
  }

  v12 = swift_task_alloc();
  *(v0 + 536) = v12;
  *v12 = v0;
  v12[1] = sub_227874954;
  v13 = *(v0 + 304);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);

  return sub_227876AD8(v13, v14);
}

uint64_t sub_227874954()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_227876740;
  }

  else
  {
    v6 = sub_227874A80;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227874A80()
{
  v200 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 304);
  v3 = *(v0 + 216);
  if ((*(v0 + 456))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 360);
    sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7330();
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 520);
    v9 = *(v0 + 432);
    v10 = *(v0 + 360);
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v188 = v8;
    v191 = *(v0 + 328);
    v13 = *(v0 + 272);
    v14 = *(v0 + 216);
    if (v7)
    {
      v179 = *(v0 + 528);
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2277F7000, v5, v6, "[EndTomorrowReminder] Unable to determine scheduled date for notification, skipping for now...", v15, 2u);
      MEMORY[0x22AA9E860](v15, -1, -1);
    }

    v9(v10, v11);
    v188(v13, v14);
    v58 = v191;
    goto LABEL_15;
  }

  v192 = *(v0 + 528);
  v16 = *(v0 + 520);
  v18 = *(v0 + 504);
  v17 = *(v0 + 512);
  v19 = *(v0 + 488);
  v20 = *(v0 + 496);
  v21 = *(v0 + 288);
  v22 = *(v0 + 184);
  (*(v0 + 480))(*(v0 + 264), v2, v3);
  sub_2278C67E0();
  v24 = v23;
  *(v0 + 552) = v23;
  __swift_project_boxed_opaque_existential_1((v22 + 160), *(v22 + 184));
  v20(v17, &off_283AE99D8);
  sub_2278C67E0();
  v26 = v25;
  *(v0 + 560) = v25;
  v16(v21, v3);
  if (v24 - v26 < 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v24 - v26;
  }

  v28 = MKBGetDeviceLockState();
  if (v28 != 3 && v28)
  {
    v100 = *(v0 + 376);
    sub_2278C7330();
    v101 = sub_2278C7590();
    v102 = sub_2278C7970();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_2277F7000, v101, v102, "[EndTomorrowReminder] Currently locked, rescheduling XPC Tasks...", v103, 2u);
      MEMORY[0x22AA9E860](v103, -1, -1);
    }

    v104 = *(v0 + 432);
    v106 = *(v0 + 368);
    v105 = *(v0 + 376);
    v107 = *(v0 + 336);
    v108 = *(v0 + 344);
    v196 = *(v0 + 264);
    v109 = *(v0 + 224);
    v185 = *(v0 + 232);
    v110 = *(v0 + 216);
    v111 = *(v0 + 176);

    v104(v105, v107);
    v112 = *__swift_project_boxed_opaque_existential_1(v111, v111[3]);
    *(v0 + 40) = type metadata accessor for PauseRingsService();
    *(v0 + 48) = &off_283AE9FE8;
    *(v0 + 16) = v112;

    sub_2278C7330();
    (*(v109 + 16))(v185, v196, v110);
    v113 = sub_2278C7590();
    v197 = sub_2278C7970();
    v114 = os_log_type_enabled(v113, v197);
    v115 = *(v0 + 528);
    v116 = *(v0 + 520);
    v117 = *(v0 + 432);
    v118 = *(v0 + 368);
    v119 = *(v0 + 336);
    v120 = *(v0 + 344);
    v121 = *(v0 + 232);
    v122 = *(v0 + 216);
    if (v114)
    {
      v186 = *(v0 + 368);
      v123 = swift_slowAlloc();
      v177 = v119;
      v124 = swift_slowAlloc();
      v199 = v124;
      *v123 = 136315138;
      v170 = v117;
      v125 = sub_2278C6790();
      v127 = v126;
      v116(v121, v122);
      v128 = sub_2278021B4(v125, v127, &v199);

      *(v123 + 4) = v128;
      _os_log_impl(&dword_2277F7000, v113, v197, "[EndTomorrowReminder] Schedule XPC Activity for notifcation to trigger on %s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v124);
      MEMORY[0x22AA9E860](v124, -1, -1);
      MEMORY[0x22AA9E860](v123, -1, -1);

      v170(v186, v177);
    }

    else
    {

      v116(v121, v122);
      v117(v118, v119);
    }

    v150 = *__swift_project_boxed_opaque_existential_1((*(v0 + 184) + 528), *(*(v0 + 184) + 552));
    v130 = swift_task_alloc();
    *(v0 + 616) = v130;
    *v130 = v0;
    v131 = sub_2278761F0;
  }

  else if (v27 <= 0.0)
  {
    v175 = *(v0 + 520);
    v183 = *(v0 + 528);
    v72 = *(v0 + 504);
    v71 = *(v0 + 512);
    v73 = *(v0 + 496);
    v74 = *(v0 + 288);
    v75 = *(v0 + 264);
    v194 = *(v0 + 224);
    v77 = *(v0 + 200);
    v76 = *(v0 + 208);
    v78 = *(v0 + 184);
    v164 = *(v0 + 216);
    v168 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v78 + 160), *(v78 + 184));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v78 + 160), *(v78 + 184));
    v73(v71, &off_283AE99D8);
    LOBYTE(v75) = sub_2278C68F0();
    v175(v74, v164);
    (*(v77 + 8))(v76, v168);
    v79 = (v194 + 16);
    v80 = *(v0 + 264);
    v81 = *(v0 + 216);
    if ((v75 & 1) == 0)
    {
      v132 = *(v0 + 384);
      v133 = *(v0 + 240);
      sub_2278C7330();
      (*v79)(v133, v80, v81);
      v134 = sub_2278C7590();
      v178 = sub_2278C7950();
      v135 = os_log_type_enabled(v134, v178);
      v136 = *(v0 + 528);
      v137 = *(v0 + 520);
      v138 = *(v0 + 432);
      v187 = *(v0 + 344);
      v190 = *(v0 + 336);
      v198 = *(v0 + 384);
      v139 = *(v0 + 328);
      v141 = *(v0 + 264);
      v140 = *(v0 + 272);
      v142 = *(v0 + 240);
      v143 = *(v0 + 216);
      if (v135)
      {
        v171 = *(v0 + 328);
        v144 = swift_slowAlloc();
        v165 = v140;
        v145 = swift_slowAlloc();
        v199 = v145;
        *v144 = 136315138;
        v159 = v138;
        v161 = v141;
        v146 = sub_2278C6790();
        v148 = v147;
        v137(v142, v143);
        v149 = sub_2278021B4(v146, v148, &v199);

        *(v144 + 4) = v149;
        _os_log_impl(&dword_2277F7000, v134, v178, "[EndTomorrowReminder] Scheduled date (%s) is in the past, but not today, not firing", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x22AA9E860](v145, -1, -1);
        MEMORY[0x22AA9E860](v144, -1, -1);

        v159(v198, v190);
        v137(v161, v143);
        v137(v165, v143);
        v58 = v171;
      }

      else
      {

        v137(v142, v143);
        v138(v198, v190);
        v137(v141, v143);
        v137(v140, v143);
        v58 = v139;
      }

LABEL_15:
      sub_227802FC4(v58, &qword_27D7D60A8, qword_2278C9730);
      v60 = *(v0 + 416);
      v59 = *(v0 + 424);
      v62 = *(v0 + 400);
      v61 = *(v0 + 408);
      v64 = *(v0 + 384);
      v63 = *(v0 + 392);
      v65 = *(v0 + 368);
      v66 = *(v0 + 376);
      v68 = *(v0 + 352);
      v67 = *(v0 + 360);
      v152 = *(v0 + 328);
      v153 = *(v0 + 320);
      v154 = *(v0 + 312);
      v155 = *(v0 + 304);
      v156 = *(v0 + 296);
      v157 = *(v0 + 288);
      v158 = *(v0 + 280);
      v160 = *(v0 + 272);
      v163 = *(v0 + 264);
      v167 = *(v0 + 256);
      v174 = *(v0 + 248);
      v182 = *(v0 + 240);
      v189 = *(v0 + 232);
      v193 = *(v0 + 208);

      v69 = *(v0 + 8);

      return v69();
    }

    v82 = *(v0 + 392);
    v83 = *(v0 + 248);
    sub_2278C7330();
    (*v79)(v83, v80, v81);
    v84 = sub_2278C7590();
    v195 = sub_2278C7970();
    v85 = os_log_type_enabled(v84, v195);
    v86 = *(v0 + 528);
    v87 = *(v0 + 520);
    v88 = *(v0 + 432);
    v89 = *(v0 + 392);
    v90 = *(v0 + 336);
    v91 = *(v0 + 344);
    v92 = *(v0 + 248);
    v93 = *(v0 + 216);
    if (v85)
    {
      v184 = *(v0 + 392);
      v94 = swift_slowAlloc();
      v176 = v90;
      v95 = swift_slowAlloc();
      v199 = v95;
      *v94 = 136315138;
      v169 = v88;
      v96 = sub_2278C6790();
      v98 = v97;
      v87(v92, v93);
      v99 = sub_2278021B4(v96, v98, &v199);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_2277F7000, v84, v195, "[EndTomorrowReminder] Scheduled date (%s) is today and in the past, firing now...", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x22AA9E860](v95, -1, -1);
      MEMORY[0x22AA9E860](v94, -1, -1);

      v169(v184, v176);
    }

    else
    {

      v87(v92, v93);
      v88(v89, v90);
    }

    v151 = *__swift_project_boxed_opaque_existential_1((*(v0 + 184) + 528), *(*(v0 + 184) + 552));
    v130 = swift_task_alloc();
    *(v0 + 592) = v130;
    *v130 = v0;
    v131 = sub_227875D8C;
  }

  else
  {
    v29 = *(v0 + 408);
    sub_2278C7330();
    v30 = sub_2278C7590();
    v31 = sub_2278C7970();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v27;
      _os_log_impl(&dword_2277F7000, v30, v31, "[EndTomorrowReminder] Schedule XPC activity to trigger in %fs", v32, 0xCu);
      MEMORY[0x22AA9E860](v32, -1, -1);
    }

    v33 = *(v0 + 432);
    v35 = *(v0 + 400);
    v34 = *(v0 + 408);
    v36 = *(v0 + 336);
    v37 = *(v0 + 344);
    v172 = *(v0 + 256);
    v180 = *(v0 + 264);
    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v40 = *(v0 + 176);

    v33(v34, v36);
    v41 = *__swift_project_boxed_opaque_existential_1(v40, v40[3]);
    *(v0 + 120) = type metadata accessor for PauseRingsService();
    *(v0 + 128) = &off_283AE9FE8;
    *(v0 + 96) = v41;

    sub_2278C7330();
    (*(v38 + 16))(v172, v180, v39);
    v42 = sub_2278C7590();
    v43 = sub_2278C7970();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 528);
    v46 = *(v0 + 520);
    v47 = *(v0 + 432);
    v48 = *(v0 + 400);
    v49 = *(v0 + 336);
    v50 = *(v0 + 256);
    v51 = *(v0 + 216);
    if (v44)
    {
      v181 = *(v0 + 400);
      v52 = swift_slowAlloc();
      v173 = v49;
      v53 = swift_slowAlloc();
      v199 = v53;
      *v52 = 136315138;
      v162 = v43;
      v54 = sub_2278C6790();
      v166 = v47;
      v56 = v55;
      v46(v50, v51);
      v57 = sub_2278021B4(v54, v56, &v199);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_2277F7000, v42, v162, "[EndTomorrowReminder] Schedule XPC Activity for notifcation to trigger on %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AA9E860](v53, -1, -1);
      MEMORY[0x22AA9E860](v52, -1, -1);

      v166(v181, v173);
    }

    else
    {

      v46(v50, v51);
      v47(v48, v49);
    }

    v129 = *__swift_project_boxed_opaque_existential_1((*(v0 + 184) + 528), *(*(v0 + 184) + 552));
    v130 = swift_task_alloc();
    *(v0 + 568) = v130;
    *v130 = v0;
    v131 = sub_22787583C;
  }

  v130[1] = v131;

  return sub_227863B34(0xD000000000000044, 0x80000002278D2800);
}

uint64_t sub_22787583C()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22787594C, v2, 0);
}

uint64_t sub_22787594C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 184);
  v4 = __swift_project_boxed_opaque_existential_1((v3 + 528), *(v3 + 552));
  sub_2278040AC(v0 + 96, v0 + 136);
  v5 = swift_allocObject();
  *(v0 + 576) = v5;
  *(v5 + 16) = v3;
  sub_2277F9D0C((v0 + 136), v5 + 24);
  v6 = *v4;

  v7 = swift_task_alloc();
  *(v0 + 584) = v7;
  *v7 = v0;
  v7[1] = sub_227875A8C;
  v8 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v8 = 0.0;
  }

  return sub_2278643BC(0xD000000000000044, 0x80000002278D2800, sub_2278802A8, v5, v8);
}

uint64_t sub_227875A8C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_227875BB8, v3, 0);
}

uint64_t sub_227875BB8()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[41];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2(v5, v6);
  v2(v4, v6);
  sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
  v8 = v0[52];
  v7 = v0[53];
  v10 = v0[50];
  v9 = v0[51];
  v12 = v0[48];
  v11 = v0[49];
  v13 = v0[46];
  v14 = v0[47];
  v16 = v0[44];
  v15 = v0[45];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[32];
  v29 = v0[31];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_227875D8C()
{
  v1 = *v0;
  v2 = *(*v0 + 592);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[75] = v4;
  *v4 = v3;
  v4[1] = sub_227875EFC;
  v5 = v1[23];
  v6 = v1[22];
  v7 = v1[33];

  return sub_227879638(v7, v6, 2);
}

uint64_t sub_227875EFC()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_227876904;
  }

  else
  {
    v6 = sub_227876028;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227876028()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[41];
  v4 = v0[34];
  v5 = v0[27];
  v2(v0[33], v5);
  v2(v4, v5);
  sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v12 = v0[46];
  v13 = v0[47];
  v15 = v0[44];
  v14 = v0[45];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[33];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[26];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2278761F0()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227876300, v2, 0);
}

uint64_t sub_227876300()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 184);
  v4 = __swift_project_boxed_opaque_existential_1((v3 + 528), *(v3 + 552));
  sub_2278040AC(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  *(v0 + 624) = v5;
  *(v5 + 16) = v3;
  sub_2277F9D0C((v0 + 56), v5 + 24);
  v6 = *v4;

  v7 = swift_task_alloc();
  *(v0 + 632) = v7;
  *v7 = v0;
  v7[1] = sub_227876440;
  v8 = v2 - v1;
  if (v2 - v1 < 0.0)
  {
    v8 = 0.0;
  }

  return sub_2278643BC(0xD000000000000044, 0x80000002278D2800, sub_227880004, v5, v8);
}

uint64_t sub_227876440()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22787656C, v3, 0);
}

uint64_t sub_22787656C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[41];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2(v5, v6);
  v2(v4, v6);
  sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
  v8 = v0[52];
  v7 = v0[53];
  v10 = v0[50];
  v9 = v0[51];
  v12 = v0[48];
  v11 = v0[49];
  v13 = v0[46];
  v14 = v0[47];
  v16 = v0[44];
  v15 = v0[45];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[32];
  v29 = v0[31];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_227876740()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 328);
  (*(v0 + 520))(*(v0 + 272), *(v0 + 216));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v29 = *(v0 + 544);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v8 = *(v0 + 384);
  v7 = *(v0 + 392);
  v10 = *(v0 + 368);
  v9 = *(v0 + 376);
  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  v15 = *(v0 + 328);
  v16 = *(v0 + 320);
  v17 = *(v0 + 312);
  v18 = *(v0 + 304);
  v19 = *(v0 + 296);
  v20 = *(v0 + 288);
  v21 = *(v0 + 280);
  v22 = *(v0 + 272);
  v23 = *(v0 + 264);
  v24 = *(v0 + 256);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_227876904()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[41];
  v4 = v0[34];
  v5 = v0[27];
  v2(v0[33], v5);
  v2(v4, v5);
  sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
  v32 = v0[76];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v13 = v0[46];
  v12 = v0[47];
  v15 = v0[44];
  v14 = v0[45];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[33];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[26];

  v16 = v0[1];

  return v16();
}

uint64_t sub_227876AD8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2278C6920();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = sub_2278C6820();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v11 = sub_2278C75A0();
  v3[27] = v11;
  v12 = *(v11 - 8);
  v3[28] = v12;
  v13 = *(v12 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227876D40, v2, 0);
}

uint64_t sub_227876D40()
{
  v1 = v0[34];
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Checking schedued date for notification", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = v0[34];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];
  v11 = v0[9];

  v12 = *(v7 + 8);
  v0[35] = v12;
  v80 = v12;
  v12(v5, v6);
  __swift_project_boxed_opaque_existential_1((v11 + 200), *(v11 + 224));
  sub_2278495CC(v10);
  v13 = *(v9 + 48);
  v0[36] = v13;
  v0[37] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v10, 1, v8) == 1)
  {
    sub_227802FC4(v0[16], &qword_27D7D60A8, qword_2278C9730);
LABEL_12:
    v46 = v0[32];
    sub_2278C7330();
    v47 = sub_2278C7590();
    v48 = sub_2278C7970();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2277F7000, v47, v48, "[EndTomorrowReminder] Generating schedued date for notification", v49, 2u);
      MEMORY[0x22AA9E860](v49, -1, -1);
    }

    v50 = v0[32];
    v52 = v0[27];
    v51 = v0[28];
    v53 = v0[23];
    v54 = v0[18];
    v73 = v0[17];
    v76 = v0[24];
    v56 = v0[11];
    v55 = v0[12];
    v57 = v0[9];
    v68 = v0[25];
    v71 = v0[10];
    v79 = v0[8];

    v80(v50, v52);
    __swift_project_boxed_opaque_existential_1((v57 + 160), *(v57 + 184));
    v58 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v58(v53);
    sub_2278C6900();
    sub_2278C66D0();
    v59 = *(v56 + 8);
    v0[38] = v59;
    v0[39] = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59(v55, v71);
    v60 = *(v54 + 8);
    v0[40] = v60;
    v0[41] = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v53, v73);
    sub_2278C67C0();
    v60(v68, v73);
    v61 = *__swift_project_boxed_opaque_existential_1(v79, v79[3]);
    sub_22781F068(v0 + 2);
    v62 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v63 = swift_task_alloc();
    v0[42] = v63;
    *v63 = v0;
    v63[1] = sub_22787738C;

    return sub_2278A7844();
  }

  v14 = v0[25];
  v15 = v0[17];
  v16 = v0[18];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v74 = v15;
  v77 = v0[10];
  v69 = *(v16 + 32);
  (v69)(v0[26], v0[16]);
  __swift_project_boxed_opaque_existential_1((v19 + 160), *(v19 + 184));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v19 + 160), *(v19 + 184));
  v20 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v20(v14);
  v21 = sub_2278C68F0();
  v22 = *(v16 + 8);
  v22(v14, v74);
  (*(v18 + 8))(v17, v77);
  if ((v21 & 1) == 0)
  {
    v22(v0[26], v0[17]);
    goto LABEL_12;
  }

  v23 = v0[33];
  sub_2278C7330();
  v24 = sub_2278C7590();
  v25 = sub_2278C7970();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2277F7000, v24, v25, "[EndTomorrowReminder] Using stored schedued date for notification", v26, 2u);
    MEMORY[0x22AA9E860](v26, -1, -1);
  }

  v27 = v0[33];
  v28 = v0[27];
  v29 = v0[28];
  v30 = v0[26];
  v31 = v0[17];
  v32 = v0[18];
  v33 = v0[7];

  v80(v27, v28);
  v69(v33, v30, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  v35 = v0[33];
  v34 = v0[34];
  v37 = v0[31];
  v36 = v0[32];
  v38 = v0[29];
  v39 = v0[30];
  v41 = v0[25];
  v40 = v0[26];
  v43 = v0[23];
  v42 = v0[24];
  v64 = v0[22];
  v65 = v0[21];
  v66 = v0[20];
  v67 = v0[19];
  v70 = v0[16];
  v72 = v0[15];
  v75 = v0[14];
  v78 = v0[13];
  v81 = v0[12];

  v44 = v0[1];

  return v44();
}

uint64_t sub_22787738C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_227877A58;
  }

  else
  {
    v6 = sub_2278774B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2278774B8()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state);
  v0[44] = v1;
  if (v1)
  {
    v2 = v0[9];
    v3 = v1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v4 = *__swift_project_boxed_opaque_existential_1((v2 + 448), *(v2 + 472));
    v5 = swift_task_alloc();
    v0[45] = v5;
    *v5 = v0;
    v5[1] = sub_227877700;
    v6 = v0[15];

    return sub_227853C98(v6);
  }

  else
  {
    sub_22785D108();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v0[53] = v8;
    v10 = v0[29];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    sub_2278C7330();
    v11 = sub_2278C7590();
    v12 = sub_2278C7950();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2277F7000, v11, v12, "[EndTomorrowReminder] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v13, 2u);
      MEMORY[0x22AA9E860](v13, -1, -1);
    }

    v14 = v0[35];
    v16 = v0[28];
    v15 = v0[29];
    v17 = v0[27];

    v14(v15, v17);
    v18 = swift_task_alloc();
    v0[54] = v18;
    *v18 = v0;
    v18[1] = sub_2278789F0;
    v19 = v0[24];

    return sub_22784A06C(v19);
  }
}

uint64_t sub_227877700()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227877810, v2, 0);
}

uint64_t sub_227877810()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  if ((*(v0 + 288))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 240);
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
    sub_2278C7330();
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2277F7000, v5, v6, "[EndTomorrowReminder] UserDayProvider didn't provide start of user day: cannot schedule 75%% F+ Plan notification", v7, 2u);
      MEMORY[0x22AA9E860](v7, -1, -1);
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);

    v8(v9, v10);
    v12 = swift_task_alloc();
    *(v0 + 408) = v12;
    *v12 = v0;
    v12[1] = sub_2278785B4;
    v13 = *(v0 + 192);

    return sub_22784A06C(v13);
  }

  else
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 144);
    v17 = *(v0 + 72);
    v18 = *(v16 + 32);
    *(v0 + 368) = v18;
    *(v0 + 376) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v15, v3, v2);
    v19 = *__swift_project_boxed_opaque_existential_1((v17 + 448), *(v17 + 472));
    v20 = swift_task_alloc();
    *(v0 + 384) = v20;
    *v20 = v0;
    v20[1] = sub_227877BBC;
    v21 = *(v0 + 112);

    return sub_227854128(v21);
  }
}

uint64_t sub_227877A58()
{
  v0[53] = v0[43];
  v1 = v0[29];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7950();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Failed to generate a Typical Day Model, cannot schedule 75%% F+ Plan notification", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = v0[35];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];

  v5(v6, v8);
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = sub_2278789F0;
  v10 = v0[24];

  return sub_22784A06C(v10);
}

uint64_t sub_227877BBC()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227877CCC, v2, 0);
}

uint64_t sub_227877CCC()
{
  v60 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  if ((*(v0 + 288))(v3, 1, v2) == 1)
  {
    v4 = [*(v0 + 352) userEndOfDay];
    if (v4)
    {
      v6 = *(v0 + 368);
      v5 = *(v0 + 376);
      v7 = *(v0 + 200);
      v8 = *(v0 + 168);
      v9 = *(v0 + 136);
      v10 = *(v0 + 144);
      v11 = *(v0 + 104);
      v12 = v4;
      sub_2278C6800();

      v6(v11, v7, v9);
      (*(v10 + 56))(v11, 0, 1, v9);
      v6(v8, v11, v9);
    }

    else
    {
      v51 = *(v0 + 320);
      v53 = *(v0 + 328);
      v15 = *(v0 + 304);
      v14 = *(v0 + 312);
      v55 = *(v0 + 288);
      v57 = *(v0 + 296);
      v16 = *(v0 + 200);
      v17 = *(v0 + 168);
      v18 = *(v0 + 136);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      (*(*(v0 + 144) + 56))(v19, 1, 1, v18);
      sub_2278C6810();
      __swift_project_boxed_opaque_existential_1((v21 + 160), *(v21 + 184));
      sub_227804920();
      sub_2278C6760();
      v15(v20, v22);
      v51(v16, v18);
      if (v55(v19, 1, v18) != 1)
      {
        sub_227802FC4(*(v0 + 104), &qword_27D7D60A8, qword_2278C9730);
      }
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 112);
    if ((*(v0 + 288))(v24, 1, *(v0 + 136)) != 1)
    {
      sub_227802FC4(v24, &qword_27D7D60A8, qword_2278C9730);
    }
  }

  else
  {
    v13 = *(v0 + 376);
    (*(v0 + 368))(*(v0 + 168), v3, v2);
  }

  v25 = *(v0 + 248);
  v26 = *(v0 + 168);
  v27 = *(v0 + 176);
  v29 = *(v0 + 152);
  v28 = *(v0 + 160);
  v30 = *(v0 + 136);
  v31 = *(v0 + 144);
  sub_2278C67E0();
  sub_2278C67E0();
  sub_2278C67C0();
  sub_2278C7330();
  (*(v31 + 16))(v29, v28, v30);
  v32 = sub_2278C7590();
  v33 = sub_2278C7970();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 320);
  v58 = *(v0 + 328);
  v36 = *(v0 + 280);
  v37 = *(v0 + 248);
  v38 = *(v0 + 216);
  v39 = *(v0 + 224);
  v40 = *(v0 + 152);
  v41 = *(v0 + 136);
  if (v34)
  {
    v56 = *(v0 + 248);
    v42 = swift_slowAlloc();
    v54 = v38;
    v43 = swift_slowAlloc();
    v59 = v43;
    *v42 = 134218242;
    *(v42 + 4) = 0x4052C00000000000;
    *(v42 + 12) = 2080;
    v52 = v36;
    v44 = sub_2278C6790();
    v46 = v45;
    v35(v40, v41);
    v47 = sub_2278021B4(v44, v46, &v59);

    *(v42 + 14) = v47;
    _os_log_impl(&dword_2277F7000, v32, v33, "[EndTomorrowReminder] Typical Day Model suggests that %f%% of day is: %s", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x22AA9E860](v43, -1, -1);
    MEMORY[0x22AA9E860](v42, -1, -1);

    v52(v56, v54);
  }

  else
  {

    v35(v40, v41);
    v36(v37, v38);
  }

  v48 = swift_task_alloc();
  *(v0 + 392) = v48;
  *v48 = v0;
  v48[1] = sub_227878118;
  v49 = *(v0 + 160);

  return sub_22784A06C(v49);
}

uint64_t sub_227878118()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_227878410;
  }

  else
  {
    v6 = sub_227878244;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227878244()
{
  v29 = *(v0 + 368);
  v31 = *(v0 + 376);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 56);

  v1(v5, v7);
  v1(v4, v7);
  v1(v3, v7);
  v29(v9, v6, v7);
  (*(v8 + 56))(v9, 0, 1, v7);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v22 = *(v0 + 176);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v25 = *(v0 + 152);
  v26 = *(v0 + 128);
  v27 = *(v0 + 120);
  v28 = *(v0 + 112);
  v30 = *(v0 + 104);
  v32 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_227878410()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);

  v2(v5, v6);
  v2(v3, v6);
  v2(v4, v6);
  v28 = *(v0 + 400);
  v7 = *(v0 + 328);
  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 168);
  v21 = *(v0 + 160);
  v22 = *(v0 + 152);
  v23 = *(v0 + 128);
  v24 = *(v0 + 120);
  v25 = *(v0 + 112);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  (*(v0 + 320))(*(v0 + 192), *(v0 + 136));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2278785B4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_227878880;
  }

  else
  {
    v6 = sub_2278786E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2278786E0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);

  (*(v3 + 32))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 168);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_227878880()
{
  v22 = *(v0 + 416);
  v1 = *(v0 + 328);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 176);
  v14 = *(v0 + 168);
  v15 = *(v0 + 160);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  (*(v0 + 320))(*(v0 + 192), *(v0 + 136));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2278789F0()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_227878CBC;
  }

  else
  {
    v6 = sub_227878B1C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227878B1C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);

  (*(v3 + 32))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 168);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_227878CBC()
{
  v22 = *(v0 + 440);
  v1 = *(v0 + 328);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 176);
  v14 = *(v0 + 168);
  v15 = *(v0 + 160);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  (*(v0 + 320))(*(v0 + 192), *(v0 + 136));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_227878E2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_2278C7840();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_2278040AC(a2, v12);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_2277F9D0C(v12, (v9 + 5));
  sub_22787938C(0, 0, v6, &unk_2278CD8E0, v9);
}

uint64_t sub_227878F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2278C75A0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227879034, 0, 0);
}

uint64_t sub_227879034()
{
  v1 = v0[9];
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] XPC Activity triggered", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_2278791DC;
    v11 = v0[6];

    return sub_227873860(v11);
  }

  else
  {
    v13 = v0[9];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2278791DC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227879320, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227879320()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_22787938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_227850448(a3, v24 - v10, &unk_27D7D6570, &qword_2278C9AE0);
  v12 = sub_2278C7840();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227802FC4(v11, &unk_27D7D6570, &qword_2278C9AE0);
  }

  else
  {
    sub_2278C7830();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2278C77F0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2278C7720() + 32;

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

      sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);

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

  sub_227802FC4(a3, &unk_27D7D6570, &qword_2278C9AE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_227879638(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 584) = a3;
  *(v4 + 56) = a1;
  v5 = *(*(type metadata accessor for NotificationRequest() - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_2278C7200();
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v9 = sub_2278C6920();
  *(v4 + 112) = v9;
  v10 = *(v9 - 8);
  *(v4 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v12 = sub_2278C6820();
  *(v4 + 136) = v12;
  v13 = *(v12 - 8);
  *(v4 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v16 = sub_2278C75A0();
  *(v4 + 240) = v16;
  v17 = *(v16 - 8);
  *(v4 + 248) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787995C, v3, 0);
}

uint64_t sub_22787995C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  sub_2278C7330();
  sub_2278C7580();
  v4 = *(v3 + 8);
  *(v0 + 344) = v4;
  *(v0 + 352) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = sub_2278C6DC0();
  *(v0 + 40) = v5;
  *(v0 + 48) = sub_22787FFAC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09878], v5);
  LOBYTE(v5) = sub_2278C6A70();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v5)
  {
    v7 = *__swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
    v8 = swift_task_alloc();
    *(v0 + 360) = v8;
    *v8 = v0;
    v8[1] = sub_227879CEC;

    return sub_22781E3A4();
  }

  else
  {
    v10 = *(v0 + 256);
    sub_2278C7330();
    v11 = sub_2278C7590();
    v12 = sub_2278C7970();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    if (v13)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2277F7000, v11, v12, "[EndTomorrowReminder] PauseRings feature flag not enabled, not notifying", v16, 2u);
      MEMORY[0x22AA9E860](v16, -1, -1);
    }

    v4(v14, v15);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v20 = *(v0 + 312);
    v19 = *(v0 + 320);
    v21 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v28 = *(v0 + 256);
    v29 = *(v0 + 232);
    v30 = *(v0 + 224);
    v31 = *(v0 + 216);
    v32 = *(v0 + 208);
    v33 = *(v0 + 200);
    v34 = *(v0 + 192);
    v35 = *(v0 + 184);
    v36 = *(v0 + 176);
    v37 = *(v0 + 168);
    v38 = *(v0 + 160);
    v39 = *(v0 + 152);
    v40 = *(v0 + 128);
    v41 = *(v0 + 104);
    v42 = *(v0 + 80);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_227879CEC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 328);
    v7 = *(v4 + 336);
    v10 = *(v4 + 312);
    v9 = *(v4 + 320);
    v12 = *(v4 + 296);
    v11 = *(v4 + 304);
    v14 = *(v4 + 280);
    v13 = *(v4 + 288);
    v15 = *(v4 + 272);
    v20 = *(v4 + 264);
    v21 = *(v4 + 256);
    v22 = *(v4 + 232);
    v23 = *(v4 + 224);
    v24 = *(v4 + 216);
    v25 = *(v4 + 208);
    v26 = *(v4 + 200);
    v27 = *(v4 + 192);
    v28 = *(v4 + 184);
    v29 = *(v4 + 176);
    v30 = *(v4 + 168);
    v31 = *(v4 + 160);
    v32 = *(v4 + 152);
    v33 = *(v4 + 128);
    v34 = *(v4 + 104);
    v16 = *(v4 + 80);

    v17 = *(v6 + 8);

    return v17();
  }

  else
  {
    v19 = *(v4 + 72);
    *(v4 + 585) = a1 & 1;

    return MEMORY[0x2822009F8](sub_227879F80, v19, 0);
  }
}

uint64_t sub_227879F80()
{
  if (*(v0 + 585) == 1)
  {
    if ([*(*(v0 + 72) + 112) fitnessAppInstalled])
    {
      v1 = MKBGetDeviceLockState();
      if (v1 != 3 && v1)
      {
        v30 = *(v0 + 280);
        sub_2278C7330();
        v31 = sub_2278C7590();
        v32 = sub_2278C7970();
        v33 = os_log_type_enabled(v31, v32);
        v35 = *(v0 + 344);
        v34 = *(v0 + 352);
        v36 = *(v0 + 280);
        v37 = *(v0 + 240);
        if (v33)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_2277F7000, v31, v32, "[EndTomorrowReminder] Currently locked, skipping...", v38, 2u);
          MEMORY[0x22AA9E860](v38, -1, -1);
        }

        v35(v36, v37);
        v40 = *(v0 + 328);
        v39 = *(v0 + 336);
        v42 = *(v0 + 312);
        v41 = *(v0 + 320);
        v43 = *(v0 + 296);
        v44 = *(v0 + 304);
        v46 = *(v0 + 280);
        v45 = *(v0 + 288);
        v48 = *(v0 + 264);
        v47 = *(v0 + 272);
        v50 = *(v0 + 256);
        v51 = *(v0 + 232);
        v52 = *(v0 + 224);
        v53 = *(v0 + 216);
        v54 = *(v0 + 208);
        v55 = *(v0 + 200);
        v56 = *(v0 + 192);
        v57 = *(v0 + 184);
        v58 = *(v0 + 176);
        v59 = *(v0 + 168);
        v60 = *(v0 + 160);
        v61 = *(v0 + 152);
        v62 = *(v0 + 128);
        v63 = *(v0 + 104);
        v64 = *(v0 + 80);

        v49 = *(v0 + 8);

        return v49();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 200), *(*(v0 + 72) + 224));
        v2 = swift_task_alloc();
        *(v0 + 368) = v2;
        *v2 = v0;
        v2[1] = sub_22787A500;
        v3 = *(v0 + 232);

        return sub_227849404(v3);
      }
    }

    v18 = *(v0 + 272);
    sub_2278C7330();
    v19 = sub_2278C7590();
    v20 = sub_2278C7970();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2277F7000, v19, v20, "[EndTomorrowReminder] Not posting notification, fitness app not installed", v21, 2u);
      MEMORY[0x22AA9E860](v21, -1, -1);
    }

    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v24 = *(v0 + 272);
    v25 = *(v0 + 240);
    v26 = *(v0 + 160);
    v27 = *(v0 + 72);

    v23(v24, v25);
    __swift_project_boxed_opaque_existential_1((v27 + 160), *(v27 + 184));
    v28 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v28(v26);
    v29 = swift_task_alloc();
    *(v0 + 552) = v29;
    *v29 = v0;
    v29[1] = sub_22787CD64;
    v17 = *(v0 + 160);
  }

  else
  {
    v5 = *(v0 + 264);
    sub_2278C7330();
    v6 = sub_2278C7590();
    v7 = sub_2278C7970();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2277F7000, v6, v7, "[EndTomorrowReminder] We're not paused or paused doesn't end today or pause is less than 2 days, skipping...", v8, 2u);
      MEMORY[0x22AA9E860](v8, -1, -1);
    }

    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v11 = *(v0 + 264);
    v12 = *(v0 + 240);
    v13 = *(v0 + 152);
    v14 = *(v0 + 72);

    v10(v11, v12);
    __swift_project_boxed_opaque_existential_1((v14 + 160), *(v14 + 184));
    v15 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v15(v13);
    v16 = swift_task_alloc();
    *(v0 + 568) = v16;
    *v16 = v0;
    v16[1] = sub_22787D1E4;
    v17 = *(v0 + 152);
  }

  return sub_227849C98(v17);
}

uint64_t sub_22787A500()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_22787AEE0;
  }

  else
  {
    v6 = sub_22787A62C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22787A62C()
{
  v104 = v0;
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[18];
  sub_227850448(v0[29], v1, &qword_27D7D60A8, qword_2278C9730);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_227802FC4(v0[28], &qword_27D7D60A8, qword_2278C9730);
  }

  else
  {
    v4 = v0[26];
    v5 = v0[17];
    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v96 = v5;
    v99 = v0[14];
    v9 = v0[9];
    (*(v6 + 32))(v0[27], v0[28]);
    __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v9 + 160), *(v9 + 184));
    v10 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v10(v4);
    v11 = sub_2278C68F0();
    v12 = *(v6 + 8);
    v12(v4, v96);
    (*(v8 + 8))(v7, v99);
    if (v11)
    {
      v13 = v0[41];
      v14 = v0[27];
      v15 = v0[25];
      v16 = v0[17];
      v17 = v0[18];
      sub_2278C7330();
      (*(v17 + 16))(v15, v14, v16);
      v18 = sub_2278C7590();
      v94 = sub_2278C7970();
      v19 = os_log_type_enabled(v18, v94);
      v21 = v0[43];
      v20 = v0[44];
      v22 = v0[29];
      v97 = v0[30];
      v100 = v0[41];
      v23 = v0[27];
      v24 = v0[25];
      v25 = v0[17];
      if (v19)
      {
        v92 = v0[27];
        v26 = swift_slowAlloc();
        v90 = v22;
        v27 = swift_slowAlloc();
        v103 = v27;
        *v26 = 136315138;
        v87 = v21;
        v28 = sub_2278C6790();
        v30 = v29;
        v12(v24, v25);
        v31 = sub_2278021B4(v28, v30, &v103);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_2277F7000, v18, v94, "[EndTomorrowReminder] Already scheduled notification today at %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA9E860](v27, -1, -1);
        MEMORY[0x22AA9E860](v26, -1, -1);

        v87(v100, v97);
        v12(v92, v25);
        v32 = v90;
      }

      else
      {

        v12(v24, v25);
        v21(v100, v97);
        v12(v23, v25);
        v32 = v22;
      }

      sub_227802FC4(v32, &qword_27D7D60A8, qword_2278C9730);
      v69 = v0[41];
      v68 = v0[42];
      v71 = v0[39];
      v70 = v0[40];
      v72 = v0[37];
      v73 = v0[38];
      v75 = v0[35];
      v74 = v0[36];
      v77 = v0[33];
      v76 = v0[34];
      v79 = v0[32];
      v80 = v0[29];
      v81 = v0[28];
      v82 = v0[27];
      v83 = v0[26];
      v84 = v0[25];
      v85 = v0[24];
      v86 = v0[23];
      v88 = v0[22];
      v89 = v0[21];
      v91 = v0[20];
      v93 = v0[19];
      v95 = v0[16];
      v98 = v0[13];
      v102 = v0[10];

      v78 = v0[1];

      return v78();
    }

    v12(v0[27], v0[17]);
  }

  v33 = v0[26];
  v34 = v0[24];
  v35 = v0[17];
  v36 = v0[18];
  v37 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v40 = v0[9];
  v41 = v0[7];
  sub_2278C6900();
  sub_2278C66D0();
  (*(v37 + 8))(v38, v39);
  sub_2278C67C0();
  v42 = *(v36 + 8);
  v0[48] = v42;
  v0[49] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v33, v35);
  v101 = v40;
  __swift_project_boxed_opaque_existential_1((v40 + 160), *(v40 + 184));
  v43 = off_283AE99E0;
  v0[50] = off_283AE99E0;
  v0[51] = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  v0[52] = type metadata accessor for DateProvider();
  v43(v33);
  LOBYTE(v41) = sub_2278C6770();
  v42(v33, v35);
  if (v41)
  {
    if (sub_22785ACAC())
    {
      v44 = *__swift_project_boxed_opaque_existential_1((v0[9] + 240), *(v0[9] + 264));
      v45 = swift_task_alloc();
      v0[53] = v45;
      *v45 = v0;
      v45[1] = sub_22787B084;

      return sub_22783D088();
    }

    v58 = v0[37];
    sub_2278C7330();
    v59 = sub_2278C7590();
    v60 = sub_2278C7970();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2277F7000, v59, v60, "[EndTomorrowReminder] Pause Rings Reminder notifications are disabled because fitness tracking is disabled", v61, 2u);
      MEMORY[0x22AA9E860](v61, -1, -1);
    }

    v63 = v0[43];
    v62 = v0[44];
    v64 = v0[37];
    v65 = v0[30];
    v66 = v0[22];

    v63(v64, v65);
    __swift_project_boxed_opaque_existential_1((v101 + 160), *(v101 + 184));
    v43(v66);
    v67 = swift_task_alloc();
    v0[65] = v67;
    *v67 = v0;
    v67[1] = sub_22787C694;
    v57 = v0[22];
  }

  else
  {
    v47 = v0[36];
    sub_2278C7330();
    v48 = sub_2278C7590();
    v49 = sub_2278C7970();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2277F7000, v48, v49, "[EndTomorrowReminder] Too late to trigger notification, skipping for today", v50, 2u);
      MEMORY[0x22AA9E860](v50, -1, -1);
    }

    v52 = v0[43];
    v51 = v0[44];
    v53 = v0[36];
    v54 = v0[30];
    v55 = v0[21];

    v52(v53, v54);
    __swift_project_boxed_opaque_existential_1((v101 + 160), *(v101 + 184));
    v43(v55);
    v56 = swift_task_alloc();
    v0[67] = v56;
    *v56 = v0;
    v56[1] = sub_22787C9FC;
    v57 = v0[21];
  }

  return sub_227849C98(v57);
}

uint64_t sub_22787AEE0()
{
  v28 = v0[47];
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v13 = v0[32];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[13];
  v27 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22787B084()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_22787B250;
  }

  else
  {
    v6 = sub_22787B1B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22787B1B0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 72) + 448), *(*(v0 + 72) + 472));
  v2 = swift_task_alloc();
  *(v0 + 440) = v2;
  *v2 = v0;
  v2[1] = sub_22787B3A4;

  return sub_227854324();
}

uint64_t sub_22787B250()
{
  v1 = v0[40];
  sub_2278C7330();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[54];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[40];
  v9 = v0[30];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Failed to enable first pickup retry", v10, 2u);
    MEMORY[0x22AA9E860](v10, -1, -1);
  }

  v7(v8, v9);
  v11 = *__swift_project_boxed_opaque_existential_1((v0[9] + 448), *(v0[9] + 472));
  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_22787B3A4;

  return sub_227854324();
}

uint64_t sub_22787B3A4(char a1)
{
  v2 = *(*v1 + 440);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 586) = a1;

  return MEMORY[0x2822009F8](sub_22787B4BC, v3, 0);
}

uint64_t sub_22787B4BC()
{
  if (*(v0 + 586))
  {
    v1 = *(v0 + 304);
    sub_2278C7330();
    v2 = sub_2278C7590();
    v3 = sub_2278C7970();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 344);
    v6 = *(v0 + 352);
    v7 = *(v0 + 304);
    v8 = *(v0 + 240);
    v55 = *(v0 + 232);
    v57 = *(v0 + 384);
    v9 = *(v0 + 192);
    v10 = *(v0 + 136);
    if (v4)
    {
      v53 = *(v0 + 392);
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2277F7000, v2, v3, "[EndTomorrowReminder] Waiting for good morning screen dismissal", v11, 2u);
      MEMORY[0x22AA9E860](v11, -1, -1);
    }

    v5(v7, v8);
    v57(v9, v10);
    sub_227802FC4(v55, &qword_27D7D60A8, qword_2278C9730);
    v13 = *(v0 + 328);
    v12 = *(v0 + 336);
    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v41 = *(v0 + 256);
    v42 = *(v0 + 232);
    v43 = *(v0 + 224);
    v44 = *(v0 + 216);
    v45 = *(v0 + 208);
    v46 = *(v0 + 200);
    v47 = *(v0 + 192);
    v48 = *(v0 + 184);
    v49 = *(v0 + 176);
    v50 = *(v0 + 168);
    v51 = *(v0 + 160);
    v52 = *(v0 + 152);
    v54 = *(v0 + 128);
    v56 = *(v0 + 104);
    v58 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 312);
    sub_2278C7330();
    v25 = sub_2278C7590();
    v26 = sub_2278C7970();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2277F7000, v25, v26, "[EndTomorrowReminder] Scheduling notification to fire one minute after next lock", v27, 2u);
      MEMORY[0x22AA9E860](v27, -1, -1);
    }

    v29 = *(v0 + 344);
    v28 = *(v0 + 352);
    v30 = *(v0 + 312);
    v31 = *(v0 + 240);
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 88);
    v35 = *(v0 + 64);

    v29(v30, v31);
    v36 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    (*(v33 + 104))(v32, *MEMORY[0x277D09AD8], v34);
    *(v0 + 448) = *v36;
    v37 = swift_task_alloc();
    *(v0 + 456) = v37;
    *v37 = v0;
    v37[1] = sub_22787B88C;
    v38 = *(v0 + 104);
    v39 = *(v0 + 80);
    v40 = *(v0 + 584);

    return sub_22781D4F8(v39, v38, v40);
  }
}

uint64_t sub_22787B88C()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_22787BB5C;
  }

  else
  {
    v3 = sub_22787B9A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22787B9A0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[56] + 184), *(v0[56] + 208));
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_22787BA48;
  v3 = v0[10];

  return sub_22782266C(v3);
}

uint64_t sub_22787BA48()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_22787C438;
  }

  else
  {
    v3 = sub_22787BBE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22787BB5C()
{
  v0[64] = v0[58];
  v1 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return MEMORY[0x2822009F8](sub_22787C4C4, v1, 0);
}

uint64_t sub_22787BBE0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  sub_227810208(v0[10]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22787BC70, v4, 0);
}

uint64_t sub_22787BC70()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 72) + 240), *(*(v0 + 72) + 264));
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  v2[1] = sub_22787BD10;

  return sub_22783C6DC();
}

uint64_t sub_22787BD10()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22787BE20, v2, 0);
}

uint64_t sub_22787BE20()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[23];
  __swift_project_boxed_opaque_existential_1((v0[9] + 160), *(v0[9] + 184));
  v3(v1, &off_283AE99D8);
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_22787BF08;
  v6 = v0[23];

  return sub_227849C98(v6);
}

uint64_t sub_22787BF08()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 384);
  v6 = *(*v1 + 184);
  v7 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 504) = v0;

  v5(v6, v7);
  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_22787C268;
  }

  else
  {
    v10 = sub_22787C0A0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22787C0A0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22787C268()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v30 = *(v0 + 504);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22787C438()
{
  sub_227810208(v0[10]);
  v0[64] = v0[60];
  v1 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return MEMORY[0x2822009F8](sub_22787C4C4, v1, 0);
}

uint64_t sub_22787C4C4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v30 = *(v0 + 512);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22787C694()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 384);
  v6 = *(*v1 + 176);
  v7 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 528) = v0;

  v5(v6, v7);
  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_22787C82C;
  }

  else
  {
    v10 = sub_2278802B0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22787C82C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v30 = *(v0 + 528);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22787C9FC()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 384);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 544) = v0;

  v5(v6, v7);
  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_22787CB94;
  }

  else
  {
    v10 = sub_2278802B0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22787CB94()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  (*(v0 + 384))(*(v0 + 192), *(v0 + 136));
  sub_227802FC4(v2, &qword_27D7D60A8, qword_2278C9730);
  v30 = *(v0 + 544);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22787CD64()
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *v1;
  v6[70] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[9];

    return MEMORY[0x2822009F8](sub_22787D040, v7, 0);
  }

  else
  {
    v9 = v6[41];
    v8 = v6[42];
    v11 = v6[39];
    v10 = v6[40];
    v13 = v6[37];
    v12 = v6[38];
    v15 = v6[35];
    v14 = v6[36];
    v16 = v6[34];
    v20 = v6[33];
    v21 = v6[32];
    v22 = v6[29];
    v23 = v6[28];
    v24 = v6[27];
    v25 = v6[26];
    v26 = v6[25];
    v27 = v6[24];
    v28 = v6[23];
    v29 = v6[22];
    v30 = v6[21];
    v31 = v6[20];
    v32 = v6[19];
    v33 = v6[16];
    v34 = v6[13];
    v17 = v6[10];

    v18 = v6[1];

    return v18();
  }
}

uint64_t sub_22787D040()
{
  v28 = v0[70];
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v13 = v0[32];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[13];
  v27 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22787D1E4()
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *v1;
  v6[72] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[9];

    return MEMORY[0x2822009F8](sub_22787D4C0, v7, 0);
  }

  else
  {
    v9 = v6[41];
    v8 = v6[42];
    v11 = v6[39];
    v10 = v6[40];
    v13 = v6[37];
    v12 = v6[38];
    v15 = v6[35];
    v14 = v6[36];
    v16 = v6[34];
    v20 = v6[33];
    v21 = v6[32];
    v22 = v6[29];
    v23 = v6[28];
    v24 = v6[27];
    v25 = v6[26];
    v26 = v6[25];
    v27 = v6[24];
    v28 = v6[23];
    v29 = v6[22];
    v30 = v6[21];
    v31 = v6[20];
    v32 = v6[19];
    v33 = v6[16];
    v34 = v6[13];
    v17 = v6[10];

    v18 = v6[1];

    return v18();
  }
}

uint64_t sub_22787D4C0()
{
  v28 = v0[72];
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v13 = v0[32];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[13];
  v27 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22787D664()
{
  v1[13] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for NotificationRequest();
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v1[18] = *(v4 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787D794, v0, 0);
}

uint64_t sub_22787D794()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 288), *(*(v0 + 104) + 312));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return MEMORY[0x2822009F8](sub_22787D808, v2, 0);
}

uint64_t sub_22787D808()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 192), *(*(v0 + 184) + 216));
  v2 = *v1;
  *(v0 + 192) = *v1;

  return MEMORY[0x2822009F8](sub_22787D87C, v2, 0);
}

uint64_t sub_22787D87C()
{
  v10 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2[2];
  if (v3)
  {
    v4 = v0[17];
    v5 = sub_2278A31B4(v2[2], 0);
    v6 = sub_2278A45A4(&v9, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2);

    sub_227806704();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[25] = v5;
  v7 = v0[13];

  return MEMORY[0x2822009F8](sub_22787D99C, v7, 0);
}

void sub_22787D99C()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[17];
    v52 = v0[16];
    v5 = MEMORY[0x277D84F90];
    v50 = v0[25];
    while (v3 < *(v1 + 16))
    {
      v6 = v5;
      v7 = v0[22];
      v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v9 = *(v4 + 72);
      sub_2278101A4(v0[25] + v8 + v9 * v3, v7);
      v10 = (v7 + *(v52 + 36));
      v12 = *v10;
      v11 = v10[1];
      v0[9] = v12;
      v0[10] = v11;
      v0[11] = 0xD00000000000002CLL;
      v0[12] = 0x80000002278D07B0;
      sub_22781F6EC();
      v13 = sub_2278C7AC0();
      v14 = v0[22];
      if (v13)
      {
        sub_227810264(v14, v0[20]);
        v5 = v6;
        v54 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B4840(0, *(v6 + 16) + 1, 1);
          v5 = v6;
        }

        v16 = *(v5 + 16);
        v15 = *(v5 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2278B4840(v15 > 1, v16 + 1, 1);
          v5 = v54;
        }

        v17 = v0[20];
        *(v5 + 16) = v16 + 1;
        sub_227810264(v17, v5 + v8 + v16 * v9);
        v1 = v50;
      }

      else
      {
        sub_227810208(v14);
        v5 = v6;
      }

      if (v2 == ++v3)
      {
        v18 = v0[25];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_14:

    v19 = *(v5 + 16);
    if (v19)
    {
      v20 = v0[17];
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = v5 + v21;
      v49 = v21;
      v47 = (v0[18] + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = *(v20 + 72);
      do
      {
        v51 = v22;
        v53 = v19;
        v24 = v0[21];
        v25 = v0[19];
        v26 = v0[14];
        v27 = v0[15];
        v28 = v0[13];
        sub_2278101A4(v22, v24);
        v29 = sub_2278C7840();
        v30 = *(v29 - 8);
        (*(v30 + 56))(v27, 1, 1, v29);
        v31 = swift_allocObject();
        swift_weakInit();
        sub_2278101A4(v24, v25);
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;
        sub_227810264(v25, v32 + v49);
        *(v32 + v47) = v31;
        sub_227850448(v27, v26, &unk_27D7D6570, &qword_2278C9AE0);
        LODWORD(v27) = (*(v30 + 48))(v26, 1, v29);

        v33 = v0[14];
        if (v27 == 1)
        {
          sub_227802FC4(v0[14], &unk_27D7D6570, &qword_2278C9AE0);
        }

        else
        {
          sub_2278C7830();
          (*(v30 + 8))(v33, v29);
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        swift_unknownObjectRetain();

        if (v35)
        {
          swift_getObjectType();
          v36 = sub_2278C77F0();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        sub_227802FC4(v0[15], &unk_27D7D6570, &qword_2278C9AE0);
        v39 = swift_allocObject();
        *(v39 + 16) = &unk_2278CD8C8;
        *(v39 + 24) = v32;
        if (v38 | v36)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v36;
          v0[5] = v38;
        }

        v23 = v0[21];
        swift_task_create();

        sub_227810208(v23);
        v22 = v51 + v48;
        v19 = v53 - 1;
      }

      while (v53 != 1);
    }

    v41 = v0[21];
    v40 = v0[22];
    v43 = v0[19];
    v42 = v0[20];
    v45 = v0[14];
    v44 = v0[15];

    v46 = v0[1];

    v46();
  }
}

uint64_t sub_22787DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for NotificationRequest();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = sub_2278C75A0();
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v12 = *(v11 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787DFE8, 0, 0);
}

uint64_t sub_22787DFE8()
{
  v29 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[13];
  sub_2278C7330();
  sub_2278101A4(v3, v2);
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  if (v6)
  {
    v11 = v0[16];
    v27 = v0[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    v14 = (v10 + *(v11 + 36));
    v15 = *v14;
    v16 = v14[1];

    sub_227810208(v10);
    v17 = sub_2278021B4(v15, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2277F7000, v4, v5, "[EndTomorrowReminder] Suppressing pending notifcation: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9E860](v13, -1, -1);
    MEMORY[0x22AA9E860](v12, -1, -1);

    (*(v7 + 8))(v27, v9);
  }

  else
  {

    sub_227810208(v10);
    (*(v7 + 8))(v8, v9);
  }

  v18 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2278040AC(Strong + 288, (v0 + 2));

    v20 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v21 = *v20;
    v0[22] = *v20;

    return MEMORY[0x2822009F8](sub_22787E250, v21, 0);
  }

  else
  {
    v22 = v0[21];
    v23 = v0[18];
    v24 = v0[15];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22787E250()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 176) + 192), *(*(v0 + 176) + 216));
  v2 = *v1;
  *(v0 + 184) = *v1;

  return MEMORY[0x2822009F8](sub_22787E2C4, v2, 0);
}

uint64_t sub_22787E2C4()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = (v0[13] + *(v0[16] + 36));
  v4 = *v3;
  v5 = v3[1];
  (*(v0[17] + 56))(v2, 1, 1);
  swift_beginAccess();

  sub_22788B434(v2, v4, v5);
  swift_endAccess();
  sub_2278B4388();

  return MEMORY[0x2822009F8](sub_22787E3AC, 0, 0);
}

uint64_t sub_22787E3AC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22787E42C()
{
  v1[14] = v0;
  v2 = sub_2278C75A0();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787E4F8, v0, 0);
}

uint64_t sub_22787E4F8()
{
  v1 = v0[14];
  if (*(v1 + 576) || (sub_2278C7440(), v2 = sub_2278C7450(), v2 != sub_2278C7450()))
  {
    v28 = v0[17];
    v27 = v0[18];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];
    sub_2278C7330();
    sub_2278C7580();
    v7 = *(v5 + 8);
    v0[19] = v7;
    v0[20] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v4);
    v8 = *(v6 + 280);
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v9 = v0[14];
    v10 = qword_2813BC3C0;
    v11 = objc_opt_self();
    v12 = [v11 mainQueue];
    v0[6] = sub_227880110;
    v0[7] = v9;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_227872968;
    v0[5] = &block_descriptor_19;
    v13 = _Block_copy(v0 + 2);
    v14 = v0[7];

    v15 = [v8 addObserverForName:v10 object:0 queue:v12 usingBlock:v13];
    v0[21] = v15;
    _Block_release(v13);

    if (qword_2813BB020 != -1)
    {
      swift_once();
    }

    v16 = v0[14];
    v17 = qword_2813BC398;
    v18 = [v11 mainQueue];
    v0[12] = sub_227880130;
    v0[13] = v16;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_227872968;
    v0[11] = &block_descriptor_73;
    v19 = _Block_copy(v0 + 8);
    v20 = v0[13];

    v21 = [v8 addObserverForName:v17 object:0 queue:v18 usingBlock:v19];
    v0[22] = v21;
    _Block_release(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2278C9970;
    *(v22 + 32) = v15;
    *(v22 + 40) = v21;
    v23 = *(v1 + 576);
    *(v1 + 576) = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_22787E8F8;
    v25 = v0[14];

    return sub_227872C28();
  }
}

uint64_t sub_22787E8F8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_22787EA9C;
  }

  else
  {
    v6 = sub_22787EA24;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22787EA24()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22787EA9C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  sub_2278C7330();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error processing PauseRingsSystem: %@", v10, 0xCu);
    sub_227802FC4(v11, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 168);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 160);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 120));
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22787EC50(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7330();
  v12 = sub_2278C7590();
  v13 = sub_2278C7970();
  if (os_log_type_enabled(v12, v13))
  {
    v23 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v16 = sub_2278C7700();
    v18 = sub_2278021B4(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2277F7000, v12, v13, "Handle %s notification", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9E860](v15, -1, -1);
    MEMORY[0x22AA9E860](v14, -1, -1);

    (*(v8 + 8))(v11, v7);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v19 = sub_2278C7840();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  sub_22788B134(0, 0, v6, &unk_2278CD908, v21);
}

uint64_t sub_22787EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2278C75A0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787F008, 0, 0);
}

uint64_t sub_22787F008()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_22787F0F8;

    return sub_227872C28();
  }

  else
  {
    v5 = v0[8];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22787F0F8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2278802A4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22787F23C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26[-4] - v2;
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2278C6560();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  strcpy(v26, "XPCStreamName");
  v26[7] = -4864;
  sub_2278C7BF0();
  if (!*(v10 + 16) || (v11 = sub_2278AE394(v27), (v12 & 1) == 0))
  {

    sub_227815D88(v27);
LABEL_10:
    v28 = 0u;
    v29 = 0u;
    return sub_227802FC4(&v28, &qword_27D7D60A0, qword_2278C98D0);
  }

  sub_227802850(*(v10 + 56) + 32 * v11, &v28);
  sub_227815D88(v27);

  if (!*(&v29 + 1))
  {
    return sub_227802FC4(&v28, &qword_27D7D60A0, qword_2278C98D0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v15 = v27[0];
  v14 = v27[1];
  v16 = *MEMORY[0x277D09C48];
  if (sub_2278C7700() == v15 && v17 == v14)
  {
  }

  else
  {
    v18 = sub_2278C7DC0();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  sub_2278C7330();
  v19 = sub_2278C7590();
  v20 = sub_2278C7970();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2277F7000, v19, v20, "Handle FCPauseRingsSampleChanged notification", v21, 2u);
    MEMORY[0x22AA9E860](v21, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v22 = sub_2278C7840();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  sub_22788B134(0, 0, v3, &unk_2278CD8F8, v24);
}

uint64_t sub_22787F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2278C75A0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22787F688, 0, 0);
}

uint64_t sub_22787F688()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_22787F778;

    return sub_227872C28();
  }

  else
  {
    v5 = v0[8];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22787F778()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22787F8BC, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}