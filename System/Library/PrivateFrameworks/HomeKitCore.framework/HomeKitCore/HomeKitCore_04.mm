uint64_t sub_253114F94()
{
  v23 = v0;
  v1 = v0[10];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v2, 0);
    v3 = v22;
    v4 = v1 + 40;
    do
    {
      v5 = *(v4 - 8);
      (*(*v4 + 48))(&v21);
      v6 = v21;
      v22 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2530F4DB0((v7 > 1), v8 + 1, 1);
        v3 = v22;
      }

      *(v3 + 16) = v8 + 1;
      *(v3 + v8 + 32) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v9 = v0[11];
  v10 = sub_2530DA748(v3);

  v11 = v9[3];
  v12 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v11);
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = sub_2531187A0(*(v10 + 16), 0);
    v15 = sub_253118980(&v22, v14 + 32, v13, v10);
    sub_2530DFAD4();
    if (v15 == v13)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_10:
  v0[31] = v14;
  v16 = *(v12 + 32);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_2531151EC;

  return (v20)(v14, v11, v12);
}

uint64_t sub_2531151EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v8 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = sub_253115D14;
  }

  else
  {
    v6 = v3[31];

    v5 = sub_253115308;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253115308()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_253115438;
  v7 = v0[29];
  v8 = v0[10];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_253115438()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);

    v5 = sub_253115E18;
  }

  else
  {
    v5 = sub_253115554;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253115554()
{
  v1 = *(v0 + 264);
  (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 232), *(v0 + 216));
  v2 = *(v1 + 16);
  v3 = *(v0 + 264);
  if (v2)
  {
    v56 = *(v0 + 104);
    v62 = MEMORY[0x277D84F90];
    sub_2530F4E74(0, v2, 0);
    v60 = v62;
    v4 = v3 + 64;
    v5 = -1 << *(v3 + 32);
    v6 = sub_253149264();
    v11 = v6;
    v12 = 0;
    v53 = v3 + 72;
    v54 = v2;
    v61 = v3;
    v55 = v3 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v3 + 32))
    {
      if ((*(v4 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      v59 = v11 >> 6;
      v15 = *(v0 + 120);
      v16 = *(v0 + 128);
      v57 = v12;
      v58 = *(v3 + 36);
      v17 = *(v56 + 48);
      v18 = *(v0 + 112);
      v19 = v0;
      v20 = *(v61 + 48);
      v21 = sub_253148944();
      v22 = *(v21 - 8);
      v23 = v20 + *(v22 + 72) * v11;
      v0 = v19;
      v3 = v61;
      (*(v22 + 16))(v16, v23, v21);
      sub_2530C25FC(*(v61 + 56) + 40 * v11, v16 + v17);
      (*(v22 + 32))(v15, v16, v21);
      sub_2530BDB14((v16 + v17), v15 + *(v56 + 48));
      sub_2530CD2D4(v15, v18, &qword_27F581D00, &qword_253150318);
      sub_2530BDB14((v18 + *(v56 + 48)), v0 + 16);
      v6 = (*(v22 + 8))(v18, v21);
      v24 = v60;
      v26 = *(v60 + 16);
      v25 = *(v60 + 24);
      if (v26 >= v25 >> 1)
      {
        v6 = sub_2530F4E74((v25 > 1), v26 + 1, 1);
        v24 = v60;
      }

      *(v24 + 16) = v26 + 1;
      v60 = v24;
      v27 = v24 + 40 * v26;
      v28 = *(v0 + 16);
      v29 = *(v0 + 32);
      *(v27 + 64) = *(v0 + 48);
      *(v27 + 32) = v28;
      *(v27 + 48) = v29;
      v13 = 1 << *(v61 + 32);
      if (v11 >= v13)
      {
        goto LABEL_27;
      }

      v4 = v55;
      v30 = *(v55 + 8 * v59);
      if ((v30 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      v7 = v58;
      if (v58 != *(v61 + 36))
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v11 & 0x3F));
      if (v31)
      {
        v13 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v54;
      }

      else
      {
        v32 = v59 << 6;
        v14 = v54;
        v33 = (v53 + 8 * v59);
        v34 = v59 + 1;
        while (v34 < (v13 + 63) >> 6)
        {
          v36 = *v33++;
          v35 = v36;
          v32 += 64;
          ++v34;
          if (v36)
          {
            v6 = sub_2530BA974(v11, v58, 0);
            v13 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        v6 = sub_2530BA974(v11, v58, 0);
LABEL_19:
        v3 = v61;
      }

      v12 = v57 + 1;
      v11 = v13;
      if (v57 + 1 == v14)
      {
        v37 = *(v0 + 264);

        v38 = v60;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v39 = *(v0 + 264);

    v38 = MEMORY[0x277D84F90];
LABEL_22:
    v40 = *(v0 + 240);
    v42 = *(v0 + 208);
    v41 = *(v0 + 216);
    v44 = *(v0 + 192);
    v43 = *(v0 + 200);
    v46 = *(v0 + 160);
    v45 = *(v0 + 168);
    v47 = *(v0 + 96);
    **(v0 + 184) = v38;
    swift_storeEnumTagMultiPayload();
    *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
    sub_253148EE4();
    v48 = *(v43 + 8);
    *(v0 + 304) = v48;
    *(v0 + 312) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v42, v44);
    sub_253148E54();
    v49 = *(MEMORY[0x277D858B8] + 4);
    v50 = swift_task_alloc();
    *(v0 + 320) = v50;
    *v50 = v0;
    v50[1] = sub_2531159E4;
    v51 = *(v0 + 160);
    v6 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = v0 + 64;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822005A8](v6, v7, v8, v9, v10);
}

uint64_t sub_2531159E4()
{
  v2 = *(*v1 + 320);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_253115F14;
  }

  else
  {
    v3 = sub_253115AF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253115AF4()
{
  v1 = v0[17];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    v2 = v0[37];
    v3 = v0[30];
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[12];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v0[9] = 0;
    sub_253148EF4();
    (*(v5 + 8))(v3, v4);
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[26];
    v10 = v0[23];
    v11 = v0[20];
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[14];
    v14 = v0[15];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[38];
    v18 = v0[39];
    v20 = v0[37];
    v21 = v0[26];
    v22 = v0[24];
    v23 = v0[12];
    sub_25311A060(v1, v0[23], type metadata accessor for AnyModelStateChange);
    sub_253148EE4();
    v19(v21, v22);
    v24 = *(MEMORY[0x277D858B8] + 4);
    v25 = swift_task_alloc();
    v0[40] = v25;
    *v25 = v0;
    v25[1] = sub_2531159E4;
    v26 = v0[20];
    v27 = v0[17];
    v28 = v0[18];

    return MEMORY[0x2822005A8](v27, 0, 0, v28, v0 + 8);
  }
}

uint64_t sub_253115D14()
{
  v1 = v0[31];

  v2 = v0[12];
  v0[7] = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  sub_253148EF4();
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[14];
  v10 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_253115E18()
{
  v1 = v0[12];
  v0[7] = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  sub_253148EF4();
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t sub_253115F14()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[12];
  v0[7] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  sub_253148EF4();
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[14];
  v12 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_253116048(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_253148A24();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2531489E4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = sub_253148A94();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = sub_253148A14();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253116234, 0, 0);
}

uint64_t sub_253116234()
{
  v42 = v0;
  if (qword_27F5802D0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = __swift_project_value_buffer(v0[12], qword_27F581B90);

  v3 = sub_253148A74();
  v4 = sub_253149094();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    sub_253148944();
    sub_253119200(&qword_27F580560, MEMORY[0x277CC95F0]);
    v8 = sub_253148AE4();
    v10 = sub_253146498(v8, v9, &v41);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2530B8000, v3, v4, "Fetching models with model map: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259BFDC60](v7, -1, -1);
    MEMORY[0x259BFDC60](v6, -1, -1);
  }

  v11 = v0[2];

  v13 = sub_2530D5AB0(v12);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = sub_2531187A0(*(v13 + 16), 0);
    v17 = sub_253118980(&v41, v16 + 32, v15, v14);
    sub_2530DFAD4();
    if (v17 == v15)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v16 = MEMORY[0x277D84F90];
LABEL_9:
  v0[18] = v16;
  v18 = v0[17];
  v19 = v0[11];
  (*(v0[13] + 16))(v0[14], v2, v0[12]);
  sub_2531489F4();
  sub_2531489D4();
  v20 = sub_253148A04();
  v21 = sub_253149104();
  if (sub_2531491D4())
  {
    v22 = v0[11];
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_2531489C4();
    _os_signpost_emit_with_name_impl(&dword_2530B8000, v20, v21, v24, "FetchModelsByTypeMap", "", v23, 2u);
    MEMORY[0x259BFDC60](v23, -1, -1);
  }

  v25 = v0[10];
  v26 = v0[11];
  v27 = v0[7];
  v28 = v0[8];
  v29 = v0[3];

  (*(v28 + 16))(v25, v26, v27);
  v30 = sub_253148A54();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v0[19] = sub_253148A44();
  v33 = *(v28 + 8);
  v0[20] = v33;
  v0[21] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v26, v27);
  v34 = v29[5];
  v35 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v34);
  v36 = *(v35 + 32);
  v40 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v0[22] = v38;
  *v38 = v0;
  v38[1] = sub_253116680;

  return (v40)(v16, v34, v35);
}

uint64_t sub_253116680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 144);
  v8 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v6 = sub_253116B70;
  }

  else
  {
    v6 = sub_2531167B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2531167B4()
{
  v46 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[9];
  v4 = sub_253148A04();
  sub_253148A34();
  v5 = sub_2531490F4();
  if (sub_2531491D4())
  {
    v6 = v0[19];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];

    sub_253148A64();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v10 = "";
    }

    v11 = v0[9];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2531489C4();
    _os_signpost_emit_with_name_impl(&dword_2530B8000, v4, v5, v13, "FetchModelsByTypeMap", v10, v12, 2u);
    MEMORY[0x259BFDC60](v12, -1, -1);
  }

  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[9];
  v19 = v0[7];
  v20 = v0[2];

  v17(v18, v19);
  v21 = swift_task_alloc();
  *(v21 + 16) = v15;
  v22 = sub_253118A7C(v20, sub_253119FE4, v21);
  v23 = v0[23];
  if (v14)
  {
    v24 = v0[19];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v25 = v0[17];
    v26 = v0[14];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[9];
    v30 = v0[6];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v22;
    v34 = v0[23];

    if (*(v33 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580728, &qword_25314C488);
      v35 = sub_2531495D4();
    }

    else
    {
      v35 = MEMORY[0x277D84F98];
    }

    v45 = v35;

    sub_2530CAAE0(v36, 1, &v45);
    v37 = v0[19];
    v38 = v0[14];
    v40 = v0[10];
    v39 = v0[11];
    v41 = v0[9];
    v42 = v0[6];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v43 = v45;

    v44 = v0[1];

    return v44(v43);
  }
}

uint64_t sub_253116B70()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];

  (*(v3 + 8))(v2, v4);
  v5 = v0[24];
  v6 = v0[17];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_253116C44(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  if (*(a5 + 16) && (v9 = *a4, v10 = sub_25311D834(a3), (v11 & 1) != 0))
  {
    sub_2530C25FC(*(a5 + 56) + 40 * v10, v22);
    sub_2530BDB14(v22, a2);
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    sub_2530D2104(v12, v13);
    if (LOBYTE(v22[0]) == v9)
    {
      v14 = sub_253148944();
      return (*(*(v14 - 8) + 16))(a1, a3, v14);
    }

    else
    {
      type metadata accessor for HomesStore.Error(0);
      sub_253119200(&qword_27F581528, type metadata accessor for HomesStore.Error);
      swift_allocError();
      v20 = v19;
      v21 = sub_253148944();
      (*(*(v21 - 8) + 16))(v20, a3, v21);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0(a2);
    }
  }

  else
  {
    type metadata accessor for HomesStore.Error(0);
    sub_253119200(&qword_27F581528, type metadata accessor for HomesStore.Error);
    swift_allocError();
    v17 = v16;
    v18 = sub_253148944();
    (*(*(v18 - 8) + 16))(v17, a3, v18);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t HomesStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t HomesStore.AnyChanges.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = *(MEMORY[0x277D858C0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  *v5 = v2;
  v5[1] = sub_253116FC8;

  return MEMORY[0x2822005B0](a1, v6);
}

uint64_t sub_253116FC8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2531170F8, 0, 0);
  }
}

uint64_t sub_2531170F8()
{
  if (sub_253148EC4())
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + *(type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0) + 20));
    sub_253148EA4();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_253117190(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v3[3] = a2;
  v5 = *(MEMORY[0x277D858C0] + 4);
  v6 = swift_task_alloc();
  v3[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  *v6 = v3;
  v6[1] = sub_253117250;

  return MEMORY[0x2822005B0](a1, v7);
}

uint64_t sub_253117250()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_253117380, 0, 0);
  }
}

uint64_t sub_253117380()
{
  if (sub_253148EC4())
  {
    v1 = *(v0[2] + *(v0[3] + 20));
    sub_253148EA4();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_253117410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v6[6] = v11;
  *v11 = v6;
  v11[1] = sub_2531174CC;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2531174CC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_253148D84();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_25311763C, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_25311763C()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2531176DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  v5 = *(v2 + *(a1 + 20));

  sub_25311A000(v2, type metadata accessor for HomesStore.AnyChanges);
  result = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t HomesStore.Changes.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v3[5] = *(a2 + 24);
  v3[6] = type metadata accessor for ModelStateChange();
  v4 = sub_2531491F4();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v3[10] = v8;
  v3[11] = swift_task_alloc();
  v9 = type metadata accessor for AnyModelStateChange(0);
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = *(MEMORY[0x277D858C0] + 4);
  v13 = swift_task_alloc();
  v3[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  *v13 = v3;
  v13[1] = sub_25311794C;

  return MEMORY[0x2822005B0](v8, v14);
}

uint64_t sub_25311794C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_253117DD0;
  }

  else
  {
    v3 = sub_253117A60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253117A60()
{
  if (sub_253148EC4())
  {
    v1 = v0[3];
    v2 = *(v1 + *(type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0) + 20));
    sub_253148EA4();
  }

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  sub_2530CD2D4(v0[10], v5, &qword_27F5807B0, &qword_25314D460);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[6];
    v7 = v0[2];
    sub_2530CD33C(v0[11], &qword_27F5807B0, &qword_25314D460);
    (*(*(v6 - 8) + 56))(v7, 1, 1, v6);
  }

  else
  {
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[9];
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    sub_25311A060(v0[11], v9, type metadata accessor for AnyModelStateChange);
    sub_253119048(v9, v8);
    sub_25313F98C(v8, v13, v12, v10);
    v14 = *(v11 - 8);
    v15 = (*(v14 + 48))(v10, 1, v11);
    v16 = v0[15];
    v17 = v0[9];
    if (v15 == 1)
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      type metadata accessor for HomesStore.Error(0);
      sub_253119200(&qword_27F581528, type metadata accessor for HomesStore.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25311A000(v16, type metadata accessor for AnyModelStateChange);
      v19 = v0[14];
      v18 = v0[15];
      v21 = v0[10];
      v20 = v0[11];
      v22 = v0[9];

      v23 = v0[1];
      goto LABEL_9;
    }

    v24 = v0[6];
    v25 = v0[2];
    sub_25311A000(v0[15], type metadata accessor for AnyModelStateChange);
    (*(v14 + 32))(v25, v17, v24);
    (*(v14 + 56))(v25, 0, 1, v24);
  }

  v27 = v0[14];
  v26 = v0[15];
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[9];

  v23 = v0[1];
LABEL_9:

  return v23();
}

uint64_t sub_253117DD0()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_253117E6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530BF218;

  return HomesStore.Changes.AsyncIterator.next()(a1, a2);
}

uint64_t sub_253117F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_253117FE8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_253117FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t HomesStore.Changes.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  *&v7[*(v4 + 28)] = *(v1 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  sub_25311A060(v7, a1, type metadata accessor for HomesStore.AnyChanges.AsyncIterator);
}

uint64_t sub_2531181C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  HomesStore.Changes.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t HomesStore.changes<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a3;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v34);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for HomesStore.AnyChanges(0);
  v18 = *(v17 - 8);
  v31 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581600, &qword_25314E3C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25314D290;
  *(v22 + 32) = v33;
  *(v22 + 40) = a2;
  type metadata accessor for AnyModelStateChange(0);
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
  sub_253148ED4();
  (*(v8 + 8))(v11, v7);
  v23 = sub_253148DE4();
  v24 = v35;
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  sub_2530C25FC(v36 + 16, v38);
  v25 = v32;
  v26 = v34;
  (*(v12 + 16))(v32, v16, v34);
  v27 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v22;
  sub_2530BDB14(v38, (v28 + 40));
  (*(v12 + 32))(&v28[v27], v25, v26);
  v29 = sub_253112858(0, 0, v24, &unk_2531500B8, v28);
  (*(v12 + 8))(v16, v26);
  *&v21[*(v31 + 28)] = v29;
  return sub_25311A060(v21, v37, type metadata accessor for HomesStore.AnyChanges);
}

uint64_t sub_253118618(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530E5ECC;

  return v7(a1);
}

void *sub_253118710(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581CF8, &qword_2531502F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_2531187A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581620, &qword_25314E410);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_253118814(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_2530C25FC(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_2530BDB14(v20, v21);
      sub_2530BDB14(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_253118980(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_253118A7C(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *, char *), uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581540, &qword_25314E0E8);
  v6 = *(*(v49 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806C0, &qword_25314C460);
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v41 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v59 = MEMORY[0x277D84F90];
  sub_2530F4D70(0, v14, 0);
  v15 = v59;
  v16 = a1 + 64;
  v17 = -1 << *(a1 + 32);
  result = sub_253149264();
  v19 = result;
  v20 = 0;
  v58 = *(a1 + 36);
  v42 = a1 + 72;
  v43 = v14;
  v44 = a1 + 64;
  v45 = a1;
  while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
  {
    if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_24;
    }

    if (v58 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v53 = 1 << v19;
    v54 = v19 >> 6;
    v52 = v20;
    v56 = v15;
    v22 = v49;
    v23 = *(v49 + 48);
    v24 = *(a1 + 48);
    v25 = sub_253148944();
    v26 = *(v25 - 8);
    v55 = v4;
    v27 = *(v26 + 16);
    v15 = v9;
    v28 = v24 + *(v26 + 72) * v19;
    v29 = v48;
    v27(v48, v28, v25);
    *(v29 + v23) = *(*(a1 + 56) + v19);
    v27(v9, v29, v25);
    v30 = *(v22 + 48);
    LOBYTE(v23) = *(v29 + v23);
    sub_2530CD33C(v29, &qword_27F581540, &qword_25314E0E8);
    v9[v30] = v23;
    v31 = v55;
    v50(v57, v57 + *(v47 + 48), v9, &v9[v30]);
    v4 = v31;
    if (v31)
    {
      sub_2530CD33C(v9, &qword_27F581540, &qword_25314E0E8);

      return v15;
    }

    sub_2530CD33C(v9, &qword_27F581540, &qword_25314E0E8);
    v15 = v56;
    v59 = v56;
    v33 = *(v56 + 2);
    v32 = *(v56 + 3);
    if (v33 >= v32 >> 1)
    {
      sub_2530F4D70(v32 > 1, v33 + 1, 1);
      v15 = v59;
    }

    *(v15 + 2) = v33 + 1;
    result = sub_2530CD2D4(v57, &v15[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33], &qword_27F5806C0, &qword_25314C460);
    a1 = v45;
    v21 = 1 << *(v45 + 32);
    if (v19 >= v21)
    {
      goto LABEL_26;
    }

    v16 = v44;
    v34 = *(v44 + 8 * v54);
    if ((v34 & v53) == 0)
    {
      goto LABEL_27;
    }

    if (v58 != *(v45 + 36))
    {
      goto LABEL_28;
    }

    v35 = v34 & (-2 << (v19 & 0x3F));
    if (v35)
    {
      v21 = __clz(__rbit64(v35)) | v19 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = v54 << 6;
      v37 = v54 + 1;
      v38 = (v42 + 8 * v54);
      while (v37 < (v21 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_2530BA974(v19, v58, 0);
          v21 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_2530BA974(v19, v58, 0);
    }

LABEL_4:
    v20 = v52 + 1;
    v19 = v21;
    if (v52 + 1 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_253118F00(unsigned __int8 *a1)
{
  v2 = *a1;
  _s17DataSourceFactoryCMa();
  inited = swift_initStackObject();
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  if (v2 == 1)
  {
    v4 = sub_25311C2C4();
    v5 = _s14descr2864E9281O3XPCCMa();
    v6 = &off_2864EA148;
LABEL_6:
    v12 = v5;
    v13 = v6;

    *&v11 = v4;
    sub_2530BDB14(&v11, v10);
    type metadata accessor for HomesStore();
    inited = swift_allocObject();
    sub_2530BDB14(v10, inited + 16);
    return inited;
  }

  v7 = sub_25311C654();
  if (!v1)
  {
    v4 = v7;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D10, &qword_253150328);
    v6 = &off_2864EB3F8;
    goto LABEL_6;
  }

  swift_setDeallocating();
  v8 = *(inited + 32);

  return inited;
}

unint64_t sub_253118FFC()
{
  result = qword_27F581BA8;
  if (!qword_27F581BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F581BA8);
  }

  return result;
}

uint64_t sub_253119048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_253119200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of HomesStore.fetchModels<A>(for:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 96);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25311A1F0;

  return v14(a1, a2, a3, a4);
}

{
  v10 = *(*v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25311979C;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomesStore.fetchModels<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25311A1F0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25311A1F0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomesStore.withTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2530BF218;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_25311979C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2531199F4()
{
  result = sub_253148944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_253119AA8()
{
  if (!qword_27F581BD8)
  {
    v0 = sub_253148EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F581BD8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_253119CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  sub_253119D5C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_253119AA8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_253119D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyModelStateChange(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580730, &qword_25314F190);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_253119E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25311A000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25311A060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25311A0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25311A138(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2530CD684;

  return sub_253118618(a1, v5);
}

uint64_t sub_25311A1FC(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2530CAA1C(a1, a2);
  v6 = sub_25311A2D8();
  result = sub_2530C2478(a1, a2);
  if (!v2)
  {
    v8 = *MEMORY[0x277CCA308];
    sub_253148B64();
    sub_2531490E4();
  }

  return result;
}

id sub_25311A2D8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2531488A4();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_253148844();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t HomesStore.CoreData.Configuration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0x746C7561666544;
  a1[1] = 0xE700000000000000;
  v2 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v3 = a1 + *(v2 + 20);
  sub_25311A4D8();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0xD00000000000001ELL;
  v4[1] = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t HomesStore.CoreData.Configuration.modelConfigurationName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HomesStore.CoreData.Configuration.modelConfigurationName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_25311A4D8()
{
  type metadata accessor for HomesStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v1 = sub_253148B54();
  v2 = sub_253148B54();
  v3 = [v8 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_253148874();
  }

  else
  {
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003ALL, 0x800000025314B5E0);
    v4 = [v8 description];
    v5 = sub_253148B64();
    v7 = v6;

    MEMORY[0x259BFC7D0](v5, v7);

    sub_253149594();
    __break(1u);
  }
}

uint64_t HomesStore.CoreData.Configuration.modelFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 20);
  v4 = sub_253148884();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomesStore.CoreData.Configuration.modelFileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 20);
  v4 = sub_253148884();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HomesStore.CoreData.Configuration.storeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 24);

  return sub_2530E8E34(v3, a1);
}

uint64_t HomesStore.CoreData.Configuration.storeType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 24);

  return sub_25311A874(a1, v3);
}

uint64_t sub_25311A874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HomesStore.CoreData.Configuration.init(storeType:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x746C7561666544;
  a2[1] = 0xE700000000000000;
  v4 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v5 = a2 + *(v4 + 20);
  sub_25311A4D8();
  v6 = (a2 + *(v4 + 24));
  *v6 = 0xD00000000000001ELL;
  v6[1] = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();

  return sub_25311A874(a1, v6);
}

uint64_t sub_25311A9F8()
{
  result = sub_253148884();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25311AA8C()
{
  sub_25311AB00();
  if (v0 <= 0x3F)
  {
    sub_25311AB30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25311AB00()
{
  result = qword_27F581D38;
  if (!qword_27F581D38)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F581D38);
  }

  return result;
}

void sub_25311AB30()
{
  if (!qword_27F581D40)
  {
    v0 = sub_253148884();
    if (!v1)
    {
      atomic_store(v0, &qword_27F581D40);
    }
  }
}

uint64_t sub_25311AB78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E18, &qword_2531503B8);
  v3 = swift_allocObject();
  v4 = objc_opt_self();

  v5 = [v4 defaultCenter];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E20, &qword_2531503C0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E28, &qword_2531503C8);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 112) = MEMORY[0x277D84F90];
  v7[17] = 0;
  v7[18] = 0;
  v7[15] = v5;
  v7[16] = v8;
  v7[14] = a1;
  v19[4] = v6;
  v19[5] = &off_2864EB7A8;
  v19[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E30, &qword_2531503D0);
  v11 = swift_allocObject();

  swift_defaultActor_initialize();
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E38, &qword_2531503D8);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = v9;
  v11[17] = v12;
  v11[14] = a1;
  v11[15] = v3;
  v19[9] = v10;
  v19[10] = &off_2864EAC78;
  v19[6] = v11;
  v19[14] = v2;
  v19[15] = sub_25311BF48();
  v19[11] = v3;
  v19[0] = a1;
  sub_25311BFAC(v19, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D10, &qword_253150328);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2530CD33C(v19, &qword_27F581E48, &qword_2531503E0);
  *(v13 + 240) = 0;
  *(v13 + 112) = v15;
  sub_2530BDB14(&v17, v13 + 120);
  sub_2530BDB14(&v16, v13 + 160);
  sub_2530BDB14(&v18, v13 + 200);
  return v13;
}

uint64_t sub_25311ADB8()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581D50);
  __swift_project_value_buffer(v0, qword_27F581D50);
  return sub_253148A84();
}

id XPCServer.__allocating_init(persistentContainer:storeFileURL:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_253148884();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v9 = sub_253148B54();
  v10 = [v8 initWithMachServiceName_];

  (*(v4 + 16))(v7, a2, v3);
  _s14XPCStoreServerCMa();
  swift_allocObject();
  sub_2530D1620(v7);
  v12 = v11;

  v14 = sub_25311AB78(v13);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D10, &qword_253150328);
  v24 = &off_2864EB3F8;
  *&v22 = v14;
  type metadata accessor for HomesStore();
  v15 = swift_allocObject();
  sub_2530BDB14(&v22, v15 + 16);
  v16 = type metadata accessor for XPCServer();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC11HomeKitCore9XPCServer_proxies] = MEMORY[0x277D84FA0];
  *&v17[OBJC_IVAR____TtC11HomeKitCore9XPCServer_listener] = v10;
  *&v17[OBJC_IVAR____TtC11HomeKitCore9XPCServer_storeServer] = v12;
  *&v17[OBJC_IVAR____TtC11HomeKitCore9XPCServer_homesStore] = v15;
  v21.receiver = v17;
  v21.super_class = v16;

  v18 = objc_msgSendSuper2(&v21, sel_init);

  (*(v4 + 8))(a2, v3);
  return v18;
}

id XPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall XPCServer.start()()
{
  [*(*(v0 + OBJC_IVAR____TtC11HomeKitCore9XPCServer_storeServer) + 16) startListening];
  v1 = *(v0 + OBJC_IVAR____TtC11HomeKitCore9XPCServer_listener);
  [v1 setDelegate_];
  [v1 resume];
  if (qword_27F5802D8 != -1)
  {
    swift_once();
  }

  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F581D50);
  oslog = sub_253148A74();
  v3 = sub_253149094();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2530B8000, oslog, v3, "Started XPC server", v4, 2u);
    MEMORY[0x259BFDC60](v4, -1, -1);
  }
}

void sub_25311B354()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27F5802D8 != -1)
    {
      swift_once();
    }

    v2 = sub_253148A94();
    __swift_project_value_buffer(v2, qword_27F581D50);
    v3 = v1;
    v4 = sub_253148A74();
    v5 = sub_253149094();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_2530B8000, v4, v5, "Client proxy invalidated: %@", v6, 0xCu);
      sub_2530CD33C(v7, &qword_27F581E10, &qword_25314F640);
      MEMORY[0x259BFDC60](v7, -1, -1);
      MEMORY[0x259BFDC60](v6, -1, -1);
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      swift_beginAccess();
      v11 = sub_25311B590(v3);
      swift_endAccess();

      v3 = v11;
    }
  }
}

uint64_t sub_25311B590(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_253149324();

    if (v7)
    {
      v8 = sub_25311B718();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for XPCClientProxy();
  v11 = *(v3 + 40);
  v12 = sub_253149184();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_253149194();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2530D8C94();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_25311B870(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_25311B718()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2531492E4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2530D68C8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_253149184();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for XPCClientProxy();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_253149194();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_25311B870(v9);
  result = sub_253149194();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25311B870(unint64_t result)
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

    v9 = sub_253149274();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_253149184();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

uint64_t sub_25311BA10(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  aBlock[0] = a1;
  v14 = sub_2530CB1C0();
  v15 = a1;
  MEMORY[0x259BFC580](aBlock, v14);
  aBlock[0] = *(v2 + OBJC_IVAR____TtC11HomeKitCore9XPCServer_homesStore);
  v16 = type metadata accessor for HomesStore();

  MEMORY[0x259BFC580](aBlock, v16);
  v17 = type metadata accessor for XPCClientProxy();
  v18 = objc_allocWithZone(v17);
  (*(v10 + 16))(v18 + OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_connection, v13, v9);
  (*(v5 + 16))(v18 + OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore, v8, v4);
  v37.receiver = v18;
  v37.super_class = v17;
  v19 = objc_msgSendSuper2(&v37, sel_init);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  if (qword_27F5802D8 != -1)
  {
    swift_once();
  }

  v20 = sub_253148A94();
  __swift_project_value_buffer(v20, qword_27F581D50);
  v21 = v19;
  v22 = sub_253148A74();
  v23 = sub_253149094();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_2530B8000, v22, v23, "Accepting client: %@", v24, 0xCu);
    sub_2530CD33C(v25, &qword_27F581E10, &qword_25314F640);
    MEMORY[0x259BFDC60](v25, -1, -1);
    MEMORY[0x259BFDC60](v24, -1, -1);
  }

  if (qword_27F580250 != -1)
  {
    swift_once();
  }

  [v15 setExportedInterface_];
  [v15 setExportedObject_];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  aBlock[4] = sub_25311BF28;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25310AB2C;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  [v15 setInvalidationHandler_];
  _Block_release(v30);
  swift_beginAccess();
  v31 = v21;
  sub_2530D6638(&v35, v31);
  v32 = v35;
  swift_endAccess();

  [v15 resume];
  return 1;
}

void sub_25311BF28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25311B354();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25311BF48()
{
  result = qword_27F581E40;
  if (!qword_27F581E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F581E18, &qword_2531503B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581E40);
  }

  return result;
}

uint64_t sub_25311BFAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E48, &qword_2531503E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11HomeKitCore9XPCServerC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25311C034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25311C088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_25311C0E4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_25311C114()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581E50);
  __swift_project_value_buffer(v0, qword_27F581E50);
  return sub_253148A84();
}

HomeKitCore::DataSourceType_optional __swiftcall DataSourceType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25311C1C8()
{
  result = qword_27F581E68;
  if (!qword_27F581E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581E68);
  }

  return result;
}

void *sub_25311C21C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_25311C240()
{
  result = qword_27F581E70;
  if (!qword_27F581E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F581E78, &qword_253150510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581E70);
  }

  return result;
}

uint64_t sub_25311C2C4()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
  }

  else
  {
    if (qword_27F5802E0 != -1)
    {
      swift_once();
    }

    v3 = sub_253148A94();
    __swift_project_value_buffer(v3, qword_27F581E50);
    v4 = sub_253148A74();
    v5 = sub_2531490A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2530B8000, v4, v5, "Creating XPC tunnel data source", v6, 2u);
      MEMORY[0x259BFDC60](v6, -1, -1);
    }

    v7 = sub_25311C4F0();
    v8 = type metadata accessor for XPCConnectionWrapper();
    v20[3] = v8;
    v20[4] = &off_2864EBE90;
    v20[0] = v7;
    _s14descr2864E9281O3XPCCMa();
    v2 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v18 = v8;
    v19 = &off_2864EBE90;
    *&v17 = v14;
    swift_defaultActor_initialize();
    *(v2 + 152) = MEMORY[0x277D84F90];
    *(v2 + 160) = 0;
    sub_2530BDB14(&v17, v2 + 112);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v15 = *(v1 + 24);
    *(v1 + 24) = v2;
  }

  return v2;
}

uint64_t sub_25311C4F0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
  }

  else
  {
    if (qword_27F5802E0 != -1)
    {
      swift_once();
    }

    v3 = sub_253148A94();
    __swift_project_value_buffer(v3, qword_27F581E50);
    v4 = sub_253148A74();
    v5 = sub_2531490A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2530B8000, v4, v5, "Creating XPC connection wrapper", v6, 2u);
      MEMORY[0x259BFDC60](v6, -1, -1);
    }

    type metadata accessor for XPCConnectionWrapper();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F581E80, &qword_2531505B8);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 112) = MEMORY[0x277D84F90];
    *(v2 + 120) = v7;
    v8 = *(v1 + 16);
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t sub_25311C654()
{
  v1 = v0;
  v2 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if (v6)
  {
  }

  else
  {
    if (qword_27F5802E0 != -1)
    {
      swift_once();
    }

    v7 = sub_253148A94();
    __swift_project_value_buffer(v7, qword_27F581E50);
    v8 = sub_253148A74();
    v9 = sub_2531490A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2530B8000, v8, v9, "Creating core data data source", v10, 2u);
      MEMORY[0x259BFDC60](v10, -1, -1);
    }

    *v5 = 0x746C7561666544;
    *(v5 + 1) = 0xE700000000000000;
    v11 = &v5[*(v2 + 20)];
    sub_25311A4D8();
    v12 = &v5[*(v2 + 24)];
    *v12 = 0xD00000000000001ELL;
    *(v12 + 1) = 0x800000025314AA90;
    type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
    swift_storeEnumTagMultiPayload();
    v13 = _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(v5);
    v6 = sub_25311AB78(v13);
    v14 = *(v1 + 32);
    *(v1 + 32) = v6;
  }

  return v6;
}

uint64_t sub_25311C834()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t KeyPathDifference.contains<A>(keyPath:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  sub_253149474();
  return sub_253148FD4() & 1;
}

uint64_t sub_25311C904()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of DescriptorVisitable.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

uint64_t dispatch thunk of DescriptorVisitor.visit<A>(keyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 32))();
}

{
  return (*(a5 + 40))();
}

{
  return (*(a5 + 72))();
}

uint64_t dispatch thunk of DescriptorVisitor.visit<A>(keyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))();
}

{
  return (*(a6 + 48))();
}

void sub_25311CAD4(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_25311D1A8(a4, 255, a5);
  v11 = sub_253148F74();

  *a6 = v11;
}

void sub_25311CBB4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a1;
  v12 = *a2;
  a5(0);
  sub_25311D1A8(a6, 255, a7);
  v13 = sub_253148F64();
  [v12 *a8];
}

id HMCDHomeModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDHomeModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDHomeModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDHomeModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDHomeModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_25311CEE8(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25311CF58(v2);
  return sub_2530D0B14;
}

void (*sub_25311CF58(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_25311D0F8(uint64_t a1, uint64_t a2)
{
  result = sub_25311D1A8(&qword_27F581F08, a2, type metadata accessor for HMCDHomeModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25311D150@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDHomeModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_25311D1A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25311D1F0()
{
  v1 = [*v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_253148B64();

  return v3;
}

uint64_t NSPersistentStore.ClientStoreMetadataKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_253149604();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25311D2CC()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311D340()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311D394@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_253149604();

  *a2 = v5 != 0;
  return result;
}

id NSPersistentStore.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = [v2 metadata];
  if (result)
  {
    v6 = result;
    v7 = sub_253148AD4();

    if (*(v7 + 16) && (v8 = sub_25311D908(0xD000000000000032, 0x800000025314A550), (v9 & 1) != 0))
    {
      sub_2530C0304(*(v7 + 56) + 32 * v8, v11);
    }

    else
    {

      memset(v11, 0, sizeof(v11));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
    v10 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v10 ^ 1u, 1, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSPersistentStore.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25311E084(a1, a2, a3);
  v4 = sub_2531491F4();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*NSPersistentStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_2531491F4();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  NSPersistentStore.subscript.getter(a3, v12);
  return sub_25311D6CC;
}

void sub_25311D6CC(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_25311E084(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_25311E084((*a1)[5], a2, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_25311D7B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581960, &qword_2531507D0);
  v4 = sub_253148B04();
  return sub_25311DB48(a1, v4);
}

unint64_t sub_25311D834(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_253148944();
  v5 = MEMORY[0x277CC95F0];
  sub_25311E374(&qword_27F580560, MEMORY[0x277CC95F0]);
  v6 = sub_253148B04();
  return sub_25311DE20(a1, v6, MEMORY[0x277CC95F0], &qword_27F580C40, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_25311D908(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_253149814();
  sub_253148BB4();
  v6 = sub_253149844();

  return sub_25311DC30(a1, a2, v6);
}

unint64_t sub_25311D980(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_253149344();

  return sub_25311DCE8(a1, v5);
}

unint64_t sub_25311D9C4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_253149814();
  MEMORY[0x259BFD420](a1);
  v4 = sub_253149844();

  return sub_25311DDB0(a1, v4);
}

unint64_t sub_25311DA30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_253148534();
  v5 = MEMORY[0x277CC8ED0];
  sub_25311E374(&qword_27F581F20, MEMORY[0x277CC8ED0]);
  v6 = sub_253148B04();
  return sub_25311DE20(a1, v6, MEMORY[0x277CC8ED0], qword_27F581F28, v5, MEMORY[0x277CC8EE0]);
}

unint64_t sub_25311DB04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_253149184();

  return sub_25311DFC0(a1, v5);
}

unint64_t sub_25311DB48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581960, &qword_2531507D0);
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_253148B44())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25311DC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_253149734())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25311DCE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25311E3BC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259BFCF50](v9, a1);
      sub_2530FB904(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25311DDB0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25311DE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_25311E374(v24, v25);
      v20 = sub_253148B44();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_25311DFC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25311E418();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_253149194();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_25311E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_2531491F4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  (*(v8 + 16))(&v19 - v10, a1, v7);
  v12 = *(a3 - 8);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    *(&v23 + 1) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
    (*(v12 + 32))(boxed_opaque_existential_0, v11, a3);
  }

  v14 = [v4 metadata];
  if (v14)
  {
    v15 = v14;
    v16 = sub_253148AD4();

    v21 = v16;
    if (*(&v23 + 1))
    {
      sub_2530C02F4(&v22, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v16;
      sub_25313035C(v20, 0xD000000000000032, 0x800000025314A550, isUniquelyReferenced_nonNull_native);
      if (v19)
      {
LABEL_7:
        v18 = sub_253148AC4();

LABEL_10:
        [v4 setMetadata_];

        return;
      }
    }

    else
    {
      sub_25311E464(&v22);
      sub_25312EAD4(0xD000000000000032, 0x800000025314A550, v20);
      sub_25311E464(v20);
      if (v21)
      {
        goto LABEL_7;
      }
    }

    v18 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_25311E310()
{
  result = qword_27F581F18;
  if (!qword_27F581F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581F18);
  }

  return result;
}

uint64_t sub_25311E374(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25311E418()
{
  result = qword_27F5818D0;
  if (!qword_27F5818D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5818D0);
  }

  return result;
}

uint64_t sub_25311E464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25311E4CC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25311E56C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25311E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(a4 - 8);
  v7[9] = v8;
  v7[10] = *(v8 + 64);
  v7[11] = swift_task_alloc();
  v7[12] = swift_getAssociatedTypeWitness();
  v7[13] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[14] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[15] = v10;
  v11 = *(v10 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25311E7A4, 0, 0);
}

uint64_t sub_25311E7A4()
{
  v1 = *(v0 + 128);
  v23 = *(v0 + 104);
  v25 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v22 = *(v0 + 40);
  v10 = *(v0 + 40);
  (*(v7 + 56))(v10, v7);
  (*(v4 + 16))(v3, v6, v10);
  v11 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v0 + 136) = v12;
  *(v12 + 16) = v22;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  *(v12 + 48) = v8;
  (*(v4 + 32))(v12 + v11, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 64);

  v24 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_25311E9D4;
  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  v19 = *(v0 + 48);
  v20 = *(v0 + 16);

  return v24(v20, sub_25311EDB0, v12, v19, v18, AssociatedConformanceWitness);
}

uint64_t sub_25311E9D4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25311EBBC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 88);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_25311EBBC()
{
  v1 = v0[16];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_25311EC2C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(a6 + 56))(a4, a6);
  a1(v13);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_25311EE08()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311EE7C()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311EED0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_253149604();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25311EF54(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v19 = MEMORY[0x277D84FA0];
  while (1)
  {
    v8 = v2;
    if (!v6)
    {
      break;
    }

    v9 = v2;
LABEL_15:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    sub_25311E3BC(*(v1 + 48) + 40 * v12, v21);
    sub_2530C0304(*(v1 + 56) + 32 * v12, v20);
    v23 = v21[0];
    v24 = v21[1];
    *&v25 = v22;
    sub_2530C02F4(v20, (&v25 + 8));
    v2 = v9;
LABEL_16:
    v30[0] = v25;
    v30[1] = v26;
    v31 = v27;
    v28 = v23;
    v29 = v24;
    if (!*(&v24 + 1))
    {

      return v19;
    }

    sub_2530C02F4((v30 + 8), v21);
    v23 = v28;
    v24 = v29;
    *&v25 = *&v30[0];
    if (swift_dynamicCast())
    {
      v13 = sub_253149604();

      if (!v13)
      {
        sub_2530C0304(v21, &v23);
        if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v20[0]) == 1)
        {
          v14 = *(v19 + 40);
          sub_253149814();
          sub_253148BB4();
          v15 = sub_253149844();
          v16 = v15 & ~(-1 << *(v19 + 32));
          if (((*(v19 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0)
          {
            v17 = v15 & ~(-1 << *(v19 + 32));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v23 = v19;
            sub_2530D7E2C(v17, isUniquelyReferenced_nonNull_native);
            v19 = v23;
          }
        }
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(v21);
  }

  if (v7 <= v2 + 1)
  {
    v10 = v2 + 1;
  }

  else
  {
    v10 = v7;
  }

  v2 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25311F228()
{
  result = qword_27F581FB0;
  if (!qword_27F581FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F581FB8, qword_2531508D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581FB0);
  }

  return result;
}

unint64_t sub_25311F290()
{
  result = qword_27F581FC0;
  if (!qword_27F581FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581FC0);
  }

  return result;
}

id sub_25311F2E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 room];
  *a2 = result;
  return result;
}

id sub_25311F334@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appleMediaDevice];
  *a2 = result;
  return result;
}

void sub_25311F384(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_253148B64();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25311F3E8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_253148B54();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id HMCDAccessoryModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDAccessoryModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDAccessoryModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDAccessoryModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDAccessoryModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_25311F5E0(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25311F650(v2);
  return sub_2530D0B14;
}

void (*sub_25311F650(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

unint64_t sub_25311F7E8(uint64_t a1)
{
  result = sub_25311F810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25311F810()
{
  result = qword_27F581FC8;
  if (!qword_27F581FC8)
  {
    type metadata accessor for HMCDAccessoryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581FC8);
  }

  return result;
}

uint64_t sub_25311F864@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDAccessoryModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_25311F900()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581FD0);
  __swift_project_value_buffer(v0, qword_27F581FD0);
  return sub_253148A84();
}

uint64_t sub_25311F9B8(unsigned __int8 a1)
{
  sub_253149814();
  MEMORY[0x259BFD420](a1);
  return sub_253149844();
}

uint64_t sub_25311FA1C()
{
  sub_253149814();
  sub_25311F990(v2, *v0);
  return sub_253149844();
}

uint64_t sub_25311FA5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v48 = a2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = sub_2531491F4();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v11 = &v46 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v46 - v14;
  v16 = *(v4 + 48);
  v50 = a1;
  v16(v5, v4);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v51);
    _s20ManagedObjectDecoderC5ErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  if (qword_27F5802E8 != -1)
  {
    swift_once();
  }

  v51 = v15;
  v47 = v12;
  v19 = sub_253148A94();
  v20 = __swift_project_value_buffer(v19, qword_27F581FD0);
  swift_unknownObjectRetain();
  v46 = v20;
  v21 = sub_253148A74();
  v22 = sub_2531490A4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = (*(v4 + 40))(v5, v4);
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&dword_2530B8000, v21, v22, "Checking for a match for %@", v23, 0xCu);
    sub_2530E9CB0(v24);
    MEMORY[0x259BFDC60](v24, -1, -1);
    MEMORY[0x259BFDC60](v23, -1, -1);
  }

  v26 = 0;
  v49 = v4 + 40;
  while (1)
  {
    v27 = byte_2864E9AE0[v26 + 32];
    if (v27 > 3)
    {
      if (byte_2864E9AE0[v26 + 32] > 5u)
      {
        if (v27 == 6)
        {
          v28 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
          v29 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
          v30 = &qword_27F5806F0;
        }

        else
        {
          v28 = type metadata accessor for HomesStore.User.SharedSettings();
          v29 = type metadata accessor for HomesStore.User.SharedSettings;
          v30 = &unk_27F5806E8;
        }
      }

      else if (v27 == 4)
      {
        v28 = type metadata accessor for HomesStore.User();
        v29 = type metadata accessor for HomesStore.User;
        v30 = &qword_27F580700;
      }

      else
      {
        v28 = type metadata accessor for HomesStore.Zone();
        v29 = type metadata accessor for HomesStore.Zone;
        v30 = &unk_27F5806F8;
      }
    }

    else if (byte_2864E9AE0[v26 + 32] > 1u)
    {
      if (v27 == 2)
      {
        v28 = type metadata accessor for HomesStore.Home();
        v29 = type metadata accessor for HomesStore.Home;
        v30 = &unk_27F580710;
      }

      else
      {
        v28 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v29 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v30 = &unk_27F580708;
      }
    }

    else if (byte_2864E9AE0[v26 + 32])
    {
      v28 = type metadata accessor for HomesStore.Room();
      v29 = type metadata accessor for HomesStore.Room;
      v30 = &qword_27F580718;
    }

    else
    {
      v28 = type metadata accessor for HomesStore.Accessory();
      v29 = type metadata accessor for HomesStore.Accessory;
      v30 = &qword_27F580720;
    }

    sub_2530F5D1C(v30, v29);
    if (!dynamic_cast_existential_2_conditional(v28))
    {
      goto LABEL_8;
    }

    v31 = sub_2530EB040();
    v33 = v32;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = (*(AssociatedConformanceWitness + 48))(v31, v33, AssociatedTypeWitness, AssociatedConformanceWitness);

    if (!v35)
    {
      goto LABEL_8;
    }

    v36 = (*(v4 + 40))(v5, v4);
    v37 = [v36 isKindOfEntity_];

    if (v37)
    {
      break;
    }

LABEL_8:
    if (++v26 == 8)
    {
      _s20ManagedObjectDecoderC5ErrorOMa();
      swift_getWitnessTable();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
      return (*(v47 + 8))(v51, AssociatedTypeWitness);
    }
  }

  v39 = v35;
  v40 = sub_253148A74();
  v41 = sub_2531490A4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v35;
    v44 = v39;
    _os_log_impl(&dword_2530B8000, v40, v41, "Found known entity description %@", v42, 0xCu);
    sub_2530E9CB0(v43);
    MEMORY[0x259BFDC60](v43, -1, -1);
    MEMORY[0x259BFDC60](v42, -1, -1);
  }

  else
  {
    v44 = v40;
    v40 = v39;
  }

  v45 = v48;

  result = (*(v47 + 8))(v51, AssociatedTypeWitness);
  *v45 = v27;
  return result;
}

uint64_t sub_25312027C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  result = sub_25311FA5C(a1, v21);
  if (!v3)
  {
    v7 = HomesStore.ModelType.metaType.getter();
    v8 = dynamic_cast_existential_2_conditional(v7);
    if (v8)
    {
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v11 = v8;
      v12 = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
      sub_25312041C(v11, v12, boxed_opaque_existential_0);
      v17 = v22;
      v18 = v24;
      v19 = __swift_project_boxed_opaque_existential_1(v21, v22);
      a2[3] = v17;
      a2[4] = v18;
      v20 = __swift_allocate_boxed_opaque_existential_0(a2);
      (*(*(v17 - 8) + 16))(v20, v19, v17);
      return __swift_destroy_boxed_opaque_existential_0(v21);
    }

    else
    {
      v14 = *(v5 + 80);
      v15 = *(v5 + 88);
      _s20ManagedObjectDecoderC5ErrorOMa();
      swift_getWitnessTable();
      swift_allocError();
      *v16 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25312041C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v16 = a3;
  v6 = *v3;
  v7 = sub_2531491F4();
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(v6 + 88) + 56))(&v17, AssociatedTypeWitness, AssociatedTypeWitness, *(v6 + 80), *(v6 + 88));
  if (!v17)
  {
    goto LABEL_4;
  }

  (*(a2 + 32))(v17, a1, a2);
  v12 = *(a1 - 8);
  if ((*(v12 + 48))(v10, 1, a1) == 1)
  {
    (*(v15 + 8))(v10, v7);
LABEL_4:
    _s20ManagedObjectDecoderC5ErrorOMa();
    swift_getWitnessTable();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  return (*(v12 + 32))(v16, v10, a1);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259BFDC60);
  }

  return result;
}

uint64_t HomesStore.Home.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Home.name.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Home() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for HomesStore.Home()
{
  result = qword_28151F508;
  if (!qword_28151F508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomesStore.Home.legacyUniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.Home() + 24);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static HomesStore.Home.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.Home();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_253149734() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_2531209A0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2531209EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_253121C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_253120A14(uint64_t a1)
{
  v2 = sub_253120C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253120A50(uint64_t a1)
{
  v2 = sub_253120C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Home.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582108, &qword_253150BA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253120C88();
  sub_253149894();
  v20 = 0;
  sub_253148944();
  sub_253121A88(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = type metadata accessor for HomesStore.Home();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19 = 1;
    sub_2531496B4();
    v15 = *(v11 + 24);
    v18 = 2;
    sub_2531496D4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_253120C88()
{
  result = qword_27F582110;
  if (!qword_27F582110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582110);
  }

  return result;
}

uint64_t HomesStore.Home.hash(into:)()
{
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.Home();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_253148BB4();
  v5 = v0 + *(v1 + 24);
  return sub_253148B14();
}

uint64_t HomesStore.Home.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.Home();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_253148BB4();
  v5 = v0 + *(v1 + 24);
  sub_253148B14();
  return sub_253149844();
}

uint64_t HomesStore.Home.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_253148944();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = (&v27 - v9);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582118, &qword_253150BB0);
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v27 - v11;
  v13 = type metadata accessor for HomesStore.Home();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253120C88();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v13;
  v30 = a1;
  v28 = v8;
  v18 = v32;
  v39 = 0;
  v19 = sub_253121A88(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v20 = v33;
  sub_253149664();
  v27 = v19;
  v21 = *(v18 + 32);
  v21(v16, v35, v20);
  v38 = 1;
  v22 = sub_253149644();
  v35 = v21;
  v23 = v29;
  v24 = &v16[*(v29 + 20)];
  *v24 = v22;
  v24[1] = v25;
  v37 = 2;
  sub_253149664();
  (*(v34 + 8))(v12, v36);
  v35(&v16[*(v23 + 24)], v28, v20);
  sub_2531214D0(v16, v31);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_253121534(v16);
}

uint64_t sub_253121298(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_253148BB4();
  v6 = v1 + *(a1 + 24);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25312135C(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_253148BB4();
  v7 = v2 + *(a2 + 24);
  return sub_253148B14();
}

uint64_t sub_253121410(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_253148BB4();
  v7 = v2 + *(a2 + 24);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_2531214D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Home();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253121534(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Home();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253121590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_253149734() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_253121664()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582180, &unk_253150F00);
  swift_allocObject();

  v1 = sub_253142DEC(v0);

  qword_27F5820E8 = v1;
  return result;
}

uint64_t sub_2531216F8()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582178, qword_253150EC0);
  swift_allocObject();

  v1 = sub_253143230(v0);

  qword_27F5820F0 = v1;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.rooms.getter()
{
  return sub_2530EABF8(&qword_27F5802F8, &qword_27F5820F0);
}

{
  if (qword_27F580320 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25312178C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582170, &unk_253150E88);
  swift_allocObject();

  v1 = sub_25314326C(v0);

  qword_27F5820F8 = v1;
  return result;
}

uint64_t sub_253121820()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582168, &unk_253150E50);
  swift_allocObject();

  v1 = sub_2531432A8(v0);

  qword_27F582100 = v1;
  return result;
}

uint64_t sub_2531218B4(void *a1)
{
  a1[1] = sub_253121A88(&qword_28151F518, type metadata accessor for HomesStore.Home);
  a1[2] = sub_253121A88(&qword_27F582128, type metadata accessor for HomesStore.Home);
  a1[3] = sub_253121A88(&qword_27F582130, type metadata accessor for HomesStore.Home);
  a1[4] = sub_253121A88(&qword_27F582138, type metadata accessor for HomesStore.Home);
  result = sub_253121A88(&qword_27F582140, type metadata accessor for HomesStore.Home);
  a1[5] = result;
  return result;
}

uint64_t sub_253121A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253121AF8()
{
  result = sub_253148944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_253121B88()
{
  result = qword_27F582150;
  if (!qword_27F582150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582150);
  }

  return result;
}

unint64_t sub_253121BE0()
{
  result = qword_27F582158;
  if (!qword_27F582158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582158);
  }

  return result;
}

unint64_t sub_253121C38()
{
  result = qword_27F582160;
  if (!qword_27F582160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582160);
  }

  return result;
}

uint64_t sub_253121C8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314B480 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_253149734();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_253121DA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessory];
  *a2 = result;
  return result;
}

void sub_253121DF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 idsDestination];
  if (v3)
  {
    v4 = v3;
    v5 = sub_253148B64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_253121E5C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_253148B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setIdsDestination_];
}

id HMCDAppleMediaDeviceModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDAppleMediaDeviceModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDAppleMediaDeviceModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDAppleMediaDeviceModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDAppleMediaDeviceModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_253122054(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2531220C4(v2);
  return sub_2530D0B14;
}

void (*sub_2531220C4(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

unint64_t sub_25312225C(uint64_t a1)
{
  result = sub_253122284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253122284()
{
  result = qword_27F582188;
  if (!qword_27F582188)
  {
    type metadata accessor for HMCDAppleMediaDeviceModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582188);
  }

  return result;
}

uint64_t sub_2531222D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDAppleMediaDeviceModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_253122330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25311A0C8(a3, v24 - v10);
  v12 = sub_253148DE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2530CD33C(v11, &qword_27F580568, &qword_25314BDB0);
  }

  else
  {
    sub_253148DD4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_253148D84();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_253148B94() + 32;

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

      sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);

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

  sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2531225CC()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F582190);
  __swift_project_value_buffer(v0, qword_27F582190);
  return sub_253148A84();
}

id sub_253122680()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for XPCClientProxy()
{
  result = qword_27F5821B8;
  if (!qword_27F5821B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2531227D0()
{
  sub_2531228D4(319, &qword_27F5821C8, sub_2530CB1C0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2531228D4(319, &qword_27F5821D0, type metadata accessor for HomesStore);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2531228D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2531489A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_253122928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_25312294C, 0, 0);
}

uint64_t sub_25312294C()
{
  v26 = v0;
  HomesStore.ModelType.init(rawValue:)(*(v0 + 72), v25);
  v1 = LOBYTE(v25[0]);
  if (LOBYTE(v25[0]) == 8)
  {
    sub_253126A1C();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_27F580310 != -1)
    {
      swift_once();
    }

    v5 = sub_253148A94();
    *(v0 + 88) = __swift_project_value_buffer(v5, qword_27F582190);
    v6 = sub_253148A74();
    v7 = sub_253149094();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      v10 = 0xE900000000000079;
      v11 = 0x726F737365636341;
      *v8 = 136315138;
      v12 = 0x800000025314AB30;
      v13 = 0xD000000000000012;
      if (v1 == 6)
      {
        v13 = 0xD000000000000010;
      }

      else
      {
        v12 = 0x800000025314AB10;
      }

      v14 = 1919251285;
      if (v1 != 4)
      {
        v14 = 1701736282;
      }

      if (v1 <= 5)
      {
        v13 = v14;
        v12 = 0xE400000000000000;
      }

      v15 = 0xE400000000000000;
      v16 = 0xD000000000000016;
      if (v1 == 2)
      {
        v16 = 1701670728;
      }

      else
      {
        v15 = 0x800000025314AB50;
      }

      if (v1)
      {
        v11 = 1836019538;
        v10 = 0xE400000000000000;
      }

      if (v1 > 1)
      {
        v11 = v16;
        v10 = v15;
      }

      if (v1 <= 3)
      {
        v17 = v11;
      }

      else
      {
        v17 = v13;
      }

      if (v1 <= 3)
      {
        v18 = v10;
      }

      else
      {
        v18 = v12;
      }

      v19 = sub_253146498(v17, v18, v25);

      *(v8 + 4) = v19;
      _os_log_impl(&dword_2530B8000, v6, v7, "Fetch models: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x259BFDC60](v9, -1, -1);
      MEMORY[0x259BFDC60](v8, -1, -1);
    }

    v20 = *(v0 + 80);
    *(v0 + 136) = v1;
    v21 = HomesStore.ModelType.metaType.getter();
    v23 = v22;
    *(v0 + 96) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
    sub_253148994();
    *(v0 + 104) = *(v0 + 56);
    v24 = swift_task_alloc();
    *(v0 + 112) = v24;
    *v24 = v0;
    v24[1] = sub_253122CA4;

    return sub_2531132A0(v21, v21, v23);
  }
}

uint64_t sub_253122CA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_253123168;
  }

  else
  {
    v8 = *(v4 + 104);

    *(v4 + 128) = a1;
    v7 = sub_253122DD4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_253122DD4()
{
  v38 = v0;
  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v7 = sub_253149534();

  v8 = sub_253148A74();
  v9 = sub_2531490A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v37 = v1;
    *v10 = 136315138;
    v11 = MEMORY[0x259BFC8A0](v7, v6);
    v6 = v12;
    v2 = sub_253146498(v11, v12, &v37);

    *(v10 + 4) = v2;
    _os_log_impl(&dword_2530B8000, v8, v9, "Got models: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v1);
    MEMORY[0x259BFDC60](v1, -1, -1);
    MEMORY[0x259BFDC60](v10, -1, -1);
  }

  v13 = *(v7 + 16);
  v14 = v36;
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_2530F4F38(0, v13, 0);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = v37;
    v17 = v36[15];
    sub_2530C25FC(v7 + 32, (v36 + 2));
    v18 = v36[6];
    __swift_project_boxed_opaque_existential_1(v36 + 2, v36[5]);
    v19 = *(v18 + 16);
    v20 = sub_253110940();
    if (v17)
    {

      __swift_destroy_boxed_opaque_existential_0(v36 + 2);

      v22 = v36[1];
      goto LABEL_13;
    }

    v1 = v21;
    v2 = v20;
    __swift_destroy_boxed_opaque_existential_0(v36 + 2);
    v9 = *(v16 + 16);
    v15 = *(v16 + 24);
    v6 = v9 + 1;
    v23 = v16;
    if (v9 >= v15 >> 1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      *(v23 + 16) = v6;
      v24 = v23 + 16 * v9;
      *(v24 + 32) = v2;
      *(v24 + 40) = v1;
      if (v13 == 1)
      {
        break;
      }

      v1 = (v7 + 72);
      v26 = 1;
      v14 = v36;
      while (1)
      {
        v15 = *(v7 + 16);
        if (v26 >= v15)
        {
          break;
        }

        v27 = v7;
        v28 = v13;
        sub_2530C25FC(v1, (v14 + 2));
        v29 = v14[6];
        __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
        v30 = *(v29 + 16);
        v2 = sub_253110940();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_0(v14 + 2);
        v37 = v23;
        v9 = *(v23 + 16);
        v33 = *(v23 + 24);
        v6 = v9 + 1;
        if (v9 >= v33 >> 1)
        {
          sub_2530F4F38((v33 > 1), v9 + 1, 1);
          v23 = v37;
        }

        ++v26;
        *(v23 + 16) = v6;
        v34 = v23 + 16 * v9;
        *(v34 + 32) = v2;
        *(v34 + 40) = v32;
        v1 += 5;
        v13 = v28;
        v35 = v28 == v26;
        v7 = v27;
        v14 = v36;
        if (v35)
        {
          goto LABEL_11;
        }
      }

LABEL_23:
      __break(1u);
LABEL_24:
      sub_2530F4F38((v15 > 1), v6, 1);
      v23 = v37;
    }

    v14 = v36;
LABEL_11:
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *v14[8] = v23;
  v22 = v14[1];
LABEL_13:

  return v22();
}

uint64_t sub_253123168()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

void sub_25312347C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_253148C84();
    if (a2)
    {
LABEL_3:
      v6 = sub_253148834();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_253123514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = sub_253148944();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531235D8, 0, 0);
}

uint64_t sub_2531235D8()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  v3 = MEMORY[0x277D84F98];
  if (!v2)
  {
LABEL_17:
    v7 = *(v0 + 144);
    **(v0 + 104) = v3;

    v8 = *(v0 + 8);

    return v8();
  }

  v4 = 0;
  *(v0 + 160) = *MEMORY[0x277CCA308];
  v5 = v1 + 32;
  while (1)
  {
    *(v0 + 176) = v4;
    *(v0 + 184) = v3;
    *(v0 + 168) = v3;
    v6 = *(v5 + 8 * v4);
    if (v6 > 3)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v10 = type metadata accessor for HomesStore.Home();
        v11 = &qword_27F580710;
        v12 = type metadata accessor for HomesStore.Home;
      }

      else
      {
        v10 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v11 = &unk_27F580708;
        v12 = type metadata accessor for HomesStore.HomesRelationshipModel;
      }

      goto LABEL_24;
    }

    if (!v6)
    {
      v10 = type metadata accessor for HomesStore.Accessory();
      v11 = &qword_27F580720;
      v12 = type metadata accessor for HomesStore.Accessory;
      goto LABEL_24;
    }

    if (v6 == 1)
    {
      v10 = type metadata accessor for HomesStore.Room();
      v11 = &qword_27F580718;
      v12 = type metadata accessor for HomesStore.Room;
      goto LABEL_24;
    }

LABEL_3:
    if (v2 == ++v4)
    {
      goto LABEL_17;
    }
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v10 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
      v11 = &qword_27F5806F0;
      v12 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
      goto LABEL_24;
    }

    if (v6 == 7)
    {
      v10 = type metadata accessor for HomesStore.User.SharedSettings();
      v11 = &unk_27F5806E8;
      v12 = type metadata accessor for HomesStore.User.SharedSettings;
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  if (v6 == 4)
  {
    v10 = type metadata accessor for HomesStore.User();
    v11 = &qword_27F580700;
    v12 = type metadata accessor for HomesStore.User;
  }

  else
  {
    v10 = type metadata accessor for HomesStore.Zone();
    v11 = &unk_27F5806F8;
    v12 = type metadata accessor for HomesStore.Zone;
  }

LABEL_24:
  v13 = sub_253126C64(v11, v12);
  v14 = *(v0 + 120);
  *(v0 + 192) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  sub_253148994();
  *(v0 + 200) = *(v0 + 80);
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_253123980;

  return sub_2531132A0(v10, v10, v13);
}

uint64_t sub_253123980(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  v7 = v4[25];
  if (v1)
  {
    v8 = v4[23];

    v9 = sub_253124474;
  }

  else
  {

    v4[28] = a1;
    v9 = sub_253123AC4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

unint64_t sub_253123AC4()
{
  v1 = v0[28];
  v2 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v3 = sub_253149534();

  v4 = *(v3 + 16);
  v102 = v0;
  if (!v4)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_14:
    v37 = v0[21];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[12] = v37;
    v39 = v0;
    v40 = v36[2];
    v101 = v36;
    if (!v40)
    {
      v42 = v39[21];
      goto LABEL_30;
    }

    v41 = isUniquelyReferenced_nonNull_native;
    v42 = v39[21];
    v44 = v36[6];
    v43 = v36[7];
    v46 = v36[4];
    v45 = v36[5];

    sub_2530CAA1C(v44, v43);
    if (!v45)
    {
      goto LABEL_30;
    }

    result = sub_25311D908(v46, v45);
    v48 = v42[2];
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
LABEL_64:
      __break(1u);
    }

    else
    {
      v52 = v47;
      if (v42[3] >= v51)
      {
        if ((v41 & 1) == 0)
        {
          v55 = result;
          sub_25312C758();
          result = v55;
        }
      }

      else
      {
        sub_25312E3F0(v51, v41);
        v53 = v102[12];
        result = sub_25311D908(v46, v45);
        if ((v52 & 1) != (v54 & 1))
        {
LABEL_19:

          return sub_253149784();
        }
      }

      v42 = v102[12];
      if (v52)
      {
        v56 = result;

        v57 = (v42[7] + 16 * v56);
        v58 = *v57;
        v59 = v57[1];
        *v57 = v44;
        v57[1] = v43;
        sub_2530C2478(v58, v59);
        v60 = v40 - 1;
        if (v60)
        {
LABEL_45:
          v68 = v101 + 11;
          do
          {
            v74 = *(v68 - 1);
            v73 = *v68;
            v76 = *(v68 - 3);
            v75 = *(v68 - 2);

            sub_2530CAA1C(v74, v73);
            if (!v75)
            {
              break;
            }

            result = sub_25311D908(v76, v75);
            v78 = v42[2];
            v79 = (v77 & 1) == 0;
            v50 = __OFADD__(v78, v79);
            v80 = v78 + v79;
            if (v50)
            {
              goto LABEL_64;
            }

            v81 = v77;
            if (v42[3] < v80)
            {
              sub_25312E3F0(v80, 1);
              v82 = v102[12];
              result = sub_25311D908(v76, v75);
              if ((v81 & 1) != (v83 & 1))
              {
                goto LABEL_19;
              }
            }

            v42 = v102[12];
            if (v81)
            {
              v69 = result;

              v70 = (v42[7] + 16 * v69);
              v71 = *v70;
              v72 = v70[1];
              *v70 = v74;
              v70[1] = v73;
              sub_2530C2478(v71, v72);
            }

            else
            {
              v42[(result >> 6) + 8] |= 1 << result;
              v84 = (v42[6] + 16 * result);
              *v84 = v76;
              v84[1] = v75;
              v85 = (v42[7] + 16 * result);
              *v85 = v74;
              v85[1] = v73;
              v86 = v42[2];
              v50 = __OFADD__(v86, 1);
              v87 = v86 + 1;
              if (v50)
              {
                goto LABEL_65;
              }

              v42[2] = v87;
            }

            v68 += 4;
          }

          while (--v60);
        }

LABEL_30:

        v65 = v102[22] + 5;
        v66 = 1 - v102[19];
        while (1)
        {
          while (1)
          {
            if (v66 + v65 == 5)
            {
              v88 = v102[18];
              *v102[13] = v42;

              v35 = v102[1];
              goto LABEL_11;
            }

            v102[22] = v65 - 4;
            v102[23] = v42;
            v102[21] = v42;
            v67 = *(v102[14] + 8 * v65++);
            if (v67 > 3)
            {
              break;
            }

            if (v67 > 1)
            {
              if (v67 == 2)
              {
                v89 = type metadata accessor for HomesStore.Home();
                v90 = &qword_27F580710;
                v91 = type metadata accessor for HomesStore.Home;
              }

              else
              {
                v89 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
                v90 = &unk_27F580708;
                v91 = type metadata accessor for HomesStore.HomesRelationshipModel;
              }

              goto LABEL_60;
            }

            if (!v67)
            {
              v89 = type metadata accessor for HomesStore.Accessory();
              v90 = &qword_27F580720;
              v91 = type metadata accessor for HomesStore.Accessory;
              goto LABEL_60;
            }

            if (v67 == 1)
            {
              v89 = type metadata accessor for HomesStore.Room();
              v90 = &qword_27F580718;
              v91 = type metadata accessor for HomesStore.Room;
              goto LABEL_60;
            }
          }

          if (v67 <= 5)
          {
            break;
          }

          if (v67 == 6)
          {
            v89 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
            v90 = &qword_27F5806F0;
            v91 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            goto LABEL_60;
          }

          if (v67 == 7)
          {
            v89 = type metadata accessor for HomesStore.User.SharedSettings();
            v90 = &unk_27F5806E8;
            v91 = type metadata accessor for HomesStore.User.SharedSettings;
            goto LABEL_60;
          }
        }

        if (v67 == 4)
        {
          v89 = type metadata accessor for HomesStore.User();
          v90 = &qword_27F580700;
          v91 = type metadata accessor for HomesStore.User;
        }

        else
        {
          v89 = type metadata accessor for HomesStore.Zone();
          v90 = &unk_27F5806F8;
          v91 = type metadata accessor for HomesStore.Zone;
        }

LABEL_60:
        v92 = sub_253126C64(v90, v91);
        v93 = v102[15];
        v102[24] = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
        sub_253148994();
        v102[25] = v102[10];
        v94 = swift_task_alloc();
        v102[26] = v94;
        *v94 = v102;
        v94[1] = sub_253123980;

        return sub_2531132A0(v89, v89, v92);
      }

      v42[(result >> 6) + 8] |= 1 << result;
      v61 = (v42[6] + 16 * result);
      *v61 = v46;
      v61[1] = v45;
      v62 = (v42[7] + 16 * result);
      *v62 = v44;
      v62[1] = v43;
      v63 = v42[2];
      v50 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (!v50)
      {
        v42[2] = v64;
        v60 = v40 - 1;
        if (v60)
        {
          goto LABEL_45;
        }

        goto LABEL_30;
      }
    }

LABEL_65:
    __break(1u);
    return result;
  }

  v0[11] = MEMORY[0x277D84F90];
  sub_2530F4F58(0, v4, 0);
  v5 = 0;
  v6 = v0[11];
  result = v3 + 32;
  v8 = v0[27];
  v95 = v4;
  v96 = v3;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v99 = result;
    v100 = v6;
    sub_2530C25FC(result, (v0 + 2));
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v10 = *(v9 + 16);
    v11 = sub_253110940();
    if (v8)
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    v97 = v0[20];
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    v18 = v0[5];
    v19 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
    sub_2530D2104(v18, v19);
    v20 = v0[5];
    v21 = v102[6];
    __swift_project_boxed_opaque_existential_1(v102 + 2, v20);
    sub_2530CAA1C(v13, v14);
    v22 = *(v21 + 32);
    v0 = v102;
    sub_2531493D4();
    v23 = sub_2531488F4();
    v98 = v24;
    (*(v16 + 8))(v15, v17);
    *(v102 + 56) = v103;
    v102[8] = v13;
    v102[9] = v14;
    v25 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    sub_253148B64();
    sub_253126F04();
    sub_2531490D4();

    [v25 finishEncoding];
    v26 = [v25 encodedData];
    v27 = sub_2531488B4();
    v29 = v28;
    sub_2530C2478(v13, v14);
    sub_2530C2478(v13, v14);

    __swift_destroy_boxed_opaque_existential_0(v102 + 2);
    v6 = v100;
    v102[11] = v100;
    v31 = v100[2];
    v30 = v100[3];
    if (v31 >= v30 >> 1)
    {
      sub_2530F4F58((v30 > 1), v31 + 1, 1);
      v6 = v102[11];
    }

    v8 = 0;
    ++v5;
    v6[2] = v31 + 1;
    v32 = &v6[4 * v31];
    v32[4] = v23;
    v32[5] = v98;
    v32[6] = v27;
    v32[7] = v29;
    result = v99 + 40;
    v3 = v96;
    if (v95 == v5)
    {
      v36 = v6;

      goto LABEL_14;
    }
  }

  v33 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v34 = v0[18];

  v35 = v0[1];
LABEL_11:

  return v35();
}

uint64_t sub_253124474()
{
  v1 = v0[27];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

void sub_2531247AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_253148AC4();
    if (a2)
    {
LABEL_3:
      v6 = sub_253148834();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_253124854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v4[20] = *(v10 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v11 = type metadata accessor for HomesStore.AnyChanges(0);
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253124A48, 0, 0);
}

uint64_t sub_253124A48()
{
  if (qword_27F580310 != -1)
  {
    swift_once();
  }

  v1 = sub_253148A94();
  __swift_project_value_buffer(v1, qword_27F582190);
  v2 = sub_253148A74();
  v3 = sub_253149094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2530B8000, v2, v3, "Registering subscriber", v4, 2u);
    MEMORY[0x259BFDC60](v4, -1, -1);
  }

  v5 = *(v0 + 88);

  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_29:
    v19 = *(v0 + 216);
    v55 = *(v0 + 200);
    v53 = *(v0 + 208);
    v54 = *(v0 + 192);
    v20 = *(v0 + 176);
    v52 = *(v0 + 184);
    v58 = *(v0 + 168);
    v21 = *(v0 + 152);
    v50 = *(v0 + 144);
    v51 = *(v0 + 160);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 120);
    v48 = *(v0 + 112);
    v25 = *(v0 + 96);
    v56 = *(v0 + 104);
    v57 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
    sub_253148994();
    v26 = *(v0 + 72);
    type metadata accessor for AnyModelStateChange(0);
    (*(v22 + 104))(v23, *MEMORY[0x277D858A0], v24);
    v47 = v20;
    sub_253148ED4();
    (*(v22 + 8))(v23, v24);
    v27 = sub_253148DE4();
    v49 = *(*(v27 - 8) + 56);
    v49(v48, 1, 1, v27);
    sub_2530C25FC(v26 + 16, v0 + 16);
    (*(v21 + 16))(v58, v20, v50);
    v28 = (*(v21 + 80) + 80) & ~*(v21 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v7;
    sub_2530E8468((v0 + 16), (v29 + 40));
    (*(v21 + 32))(&v29[v28], v58, v50);
    v30 = sub_253112858(0, 0, v48, &unk_25314D930, v29);

    (*(v21 + 8))(v47, v50);
    *(v19 + *(v52 + 20)) = v30;
    v49(v48, 1, 1, v27);
    sub_253126A70(v19, v53);
    v31 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    sub_253126BFC(v53, v32 + v31, type metadata accessor for HomesStore.AnyChanges);
    *(v32 + ((v55 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
    swift_unknownObjectRetain();
    v33 = sub_253122330(0, 0, v48, &unk_253150FF0, v32);
    v34 = type metadata accessor for XPCPublisher();
    v35 = objc_allocWithZone(v34);
    v36 = &v35[OBJC_IVAR____TtC11HomeKitCore12XPCPublisher_cancelationHandler];
    *v36 = sub_253126BF4;
    v36[1] = v33;
    *(v0 + 56) = v35;
    *(v0 + 64) = v34;
    v37 = objc_msgSendSuper2((v0 + 56), sel_init);
    sub_253126CAC(v19, type metadata accessor for HomesStore.AnyChanges);
    *v57 = v37;

    v38 = *(v0 + 8);
    goto LABEL_30;
  }

  v8 = *(v0 + 88);
  v59 = MEMORY[0x277D84F90];
  sub_2530F4E54(0, v6, 0);
  v9 = (v8 + 32);
  v7 = v59;
  while (1)
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 > 3)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v12 = type metadata accessor for HomesStore.Home();
        v13 = type metadata accessor for HomesStore.Home;
        v14 = &qword_27F580710;
      }

      else
      {
        if (v10 != 3)
        {
          goto LABEL_33;
        }

        v12 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v13 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v14 = &unk_27F580708;
      }
    }

    else if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_33;
      }

      v12 = type metadata accessor for HomesStore.Room();
      v13 = type metadata accessor for HomesStore.Room;
      v14 = &qword_27F580718;
    }

    else
    {
      v12 = type metadata accessor for HomesStore.Accessory();
      v13 = type metadata accessor for HomesStore.Accessory;
      v14 = &qword_27F580720;
    }

LABEL_26:
    v15 = sub_253126C64(v14, v13);
    v17 = *(v59 + 16);
    v16 = *(v59 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_2530F4E54((v16 > 1), v17 + 1, 1);
    }

    *(v59 + 16) = v17 + 1;
    v18 = v59 + 16 * v17;
    *(v18 + 32) = v12;
    *(v18 + 40) = v15;
    if (!--v6)
    {
      goto LABEL_29;
    }
  }

  if (v10 <= 5)
  {
    if (v10 == 4)
    {
      v12 = type metadata accessor for HomesStore.User();
      v13 = type metadata accessor for HomesStore.User;
      v14 = &qword_27F580700;
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_33;
      }

      v12 = type metadata accessor for HomesStore.Zone();
      v13 = type metadata accessor for HomesStore.Zone;
      v14 = &unk_27F5806F8;
    }

    goto LABEL_26;
  }

  if (v10 == 6)
  {
    v12 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
    v13 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
    v14 = &qword_27F5806F0;
    goto LABEL_26;
  }

  if (v10 == 7)
  {
    v12 = type metadata accessor for HomesStore.User.SharedSettings();
    v13 = type metadata accessor for HomesStore.User.SharedSettings;
    v14 = &unk_27F5806E8;
    goto LABEL_26;
  }

LABEL_33:
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v44 = *(v0 + 136);
  v45 = *(v0 + 112);
  sub_253126A1C();
  swift_allocError();
  *v46 = 0;
  v46[1] = 0;
  swift_willThrow();

  v38 = *(v0 + 8);
LABEL_30:

  return v38();
}

uint64_t sub_253125264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for AnyModelStateChange(0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5821E0, &qword_253150FF8) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for XPCModelStateChange();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v14 = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  v5[13] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253125420, 0, 0);
}

uint64_t sub_253125420()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  *(v1 + *(v2 + 20)) = *(v3 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  v0[15] = *MEMORY[0x277CCA308];
  v4 = sub_253126C64(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator);
  v5 = *(MEMORY[0x277D856D0] + 4);

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_253125558;
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];

  return MEMORY[0x282200308](v9, v7, v4);
}

uint64_t sub_253125558()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_253125A38;
  }

  else
  {
    v3 = sub_25312566C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25312566C()
{
  v1 = v0[12];
  v2 = (*(v0[6] + 48))(v1, 1, v0[5]);
  v3 = v0[7];
  v4 = v0[8];
  if (v2 == 1)
  {
    v5 = v0[11];
    sub_253126CAC(v0[14], type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[9];
    v9 = v0[10];
    sub_253126BFC(v1, v0[7], type metadata accessor for AnyModelStateChange);
    sub_2530C03E0(v3, v4);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_2530CD33C(v0[8], &qword_27F5821E0, &qword_253150FF8);
    }

    else
    {
      v10 = v0[17];
      v11 = v0[15];
      v12 = v0[9];
      sub_253126BFC(v0[8], v0[11], type metadata accessor for XPCModelStateChange);
      v13 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      sub_253148B64();
      sub_253126C64(&qword_27F5821E8, type metadata accessor for XPCModelStateChange);
      sub_2531490D4();
      v14 = v0[11];
      if (v10)
      {
      }

      else
      {
        v15 = v0[4];

        [v13 finishEncoding];
        v16 = [v13 encodedData];
        v17 = sub_2531488B4();
        v19 = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581668, &qword_25314E458);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_25314D290;
        *(v20 + 32) = v17;
        *(v20 + 40) = v19;
        sub_2530CAA1C(v17, v19);
        v21 = sub_253148C84();

        [v15 modelStatesDidUpdate_];

        sub_2530C2478(v17, v19);
      }

      sub_253126CAC(v14, type metadata accessor for XPCModelStateChange);
    }

    v22 = sub_253126C64(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator);
    v23 = *(MEMORY[0x277D856D0] + 4);
    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_253125558;
    v25 = v0[13];
    v26 = v0[14];
    v27 = v0[12];

    return MEMORY[0x282200308](v27, v25, v22);
  }
}

uint64_t sub_253125A38()
{
  *(v0 + 16) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_253125ACC, 0, 0);
}

uint64_t sub_253125ACC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  sub_253126CAC(v0[14], type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_253125B88()
{
  if (qword_27F580310 != -1)
  {
    swift_once();
  }

  v0 = sub_253148A94();
  __swift_project_value_buffer(v0, qword_27F582190);
  v1 = sub_253148A74();
  v2 = sub_253149094();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2530B8000, v1, v2, "Subscription terminated", v3, 2u);
    MEMORY[0x259BFDC60](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);

  return sub_253148EA4();
}

void sub_253125FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_253148834();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_253126028(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_253126054(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2530CD684;

  return sub_253124854(a1, v6, v1 + v5, v7);
}

uint64_t sub_25312617C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_253126270;

  return v11(v7 + 2);
}

uint64_t sub_253126270()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_253127198;
  }

  else
  {
    v3 = sub_25312719C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253126384(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_253126478;

  return v11(v7 + 2);
}

uint64_t sub_253126478()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_253127198;
  }

  else
  {
    v3 = sub_25312658C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25312658C()
{
  v6 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v5 = v0[2];

  v2(&v5, 0);
  swift_bridgeObjectRelease_n();
  v3 = v0[1];

  return v3();
}

uint64_t sub_25312661C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_253126710;

  return v11(v7 + 2);
}

uint64_t sub_253126710()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2531268B4;
  }

  else
  {
    v3 = sub_253126824;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253126824()
{
  v6 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v5 = v0[2];
  swift_unknownObjectRetain();
  v2(&v5, 0);
  swift_unknownObjectRelease_n();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2531268B4()
{
  v8 = v0;
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v7 = 0;
  v4 = v1;
  v3(&v7, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_253126948(uint64_t a1)
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
  v10[1] = sub_2530CD684;

  return sub_25312661C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_253126A1C()
{
  result = qword_27F5821D8;
  if (!qword_27F5821D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5821D8);
  }

  return result;
}

uint64_t sub_253126A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.AnyChanges(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253126AD4(uint64_t a1)
{
  v4 = *(type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530CD684;

  return sub_253125264(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_253126BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_253126C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253126CAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_253126D14(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_253126D40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530CD684;

  return sub_253123514(a1, v6, v1 + v5);
}

uint64_t sub_253126E30(uint64_t a1)
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
  v10[1] = sub_2530CD684;

  return sub_253126384(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_253126F04()
{
  result = qword_27F5821F0;
  if (!qword_27F5821F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5821F0);
  }

  return result;
}

uint64_t sub_253126F60(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_253126F8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530BF218;

  return sub_253122928(a1, v6, v1 + v5);
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_2531270C4(uint64_t a1)
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
  v10[1] = sub_2530CD684;

  return sub_25312617C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_2531271A0()
{
  sub_25312A810();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

BOOL sub_25312723C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_253149804();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_2531272E4()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5821F8);
  __swift_project_value_buffer(v0, qword_27F5821F8);
  return sub_253148A84();
}

void sub_253127364(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = *(*a1 + 112);
  v6 = sub_2531491F4();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  sub_25312AC38(v3 + *(*v3 + 184), &v21 - v12);
  v14 = sub_253148944();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v15 + 8))(v13, v14);
    v17 = v24;
    v18 = sub_2531317D4(v5, v16, v5, a2);

    if (!v17)
    {
      v25 = v18;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
      v19 = *(v5 - 8);
      if ((*(v19 + 48))(v9, 1, v5) == 1)
      {
        (*(v21 + 8))(v9, v22);

        sub_2530F5D8C();
        swift_allocError();
        *v20 = 0;
        swift_willThrow();
      }

      else
      {
        (*(v19 + 32))(v23, v9, v5);
      }
    }
  }
}

uint64_t sub_253127668(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  sub_25312AC38(v2 + *(*v2 + 184), v15 - v7);
  v9 = sub_253148944();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = *(*(v4 + 112) + 16);
    v13 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v10 + 8))(v8, v9);
    v14 = sub_2531317D4(v12, v13, v12, a2);

    return v14;
  }

  return result;
}

void sub_253127808(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - v9;
  sub_25312AC38(v3 + *(*v3 + 184), v16 - v9);
  v11 = sub_253148944();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(*(v6 + 112) + 16);
    v14 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v12 + 8))(v10, v11);
    v15 = sub_2531317D4(v13, v14, v13, a2);

    if (!v4)
    {
      v16[3] = v15;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_2531279FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = a4;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  sub_25312AC38(v4 + *(*v4 + 184), v19 - v10);
  v12 = sub_253148944();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 112);
    v15 = ModelRelationshipDescriptor.predicate(for:)();
    v16 = (*(v13 + 8))(v11, v12);
    v17 = v19[1];
    v18 = sub_25312A2EC(v16, v15, a2, v14, a3);

    if (!v17)
    {
      v19[3] = v18;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

uint64_t sub_253127BEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_25312AC38(v3 + *(*v3 + 184), &v18 - v9);
  v11 = sub_253148944();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(*(v6 + 112) + 16);
    v15 = ModelRelationshipDescriptor.predicate(for:)();
    v16 = (*(v12 + 8))(v10, v11);
    v17 = sub_25312A2EC(v16, v15, a2, v14, a3);

    return v17;
  }

  return result;
}

void sub_253127D90(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = a4;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  sub_25312AC38(v4 + *(*v4 + 184), v19 - v10);
  v12 = sub_253148944();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(*(v7 + 112) + 16);
    v15 = ModelRelationshipDescriptor.predicate(for:)();
    v16 = (*(v13 + 8))(v11, v12);
    v17 = v19[1];
    v18 = sub_25312A2EC(v16, v15, a2, v14, a3);

    if (!v17)
    {
      v19[3] = v18;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_253127F84(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v34 = a2;
  v31 = a5;
  v6 = *a1;
  v37 = a3;
  v7 = sub_2531491F4();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v9;
  v39 = *(v6 + 112);
  v10 = sub_253148974();
  v33 = sub_2531491F4();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  sub_25312AC38(v5 + *(*v5 + 184), &v29 - v17);
  v19 = sub_253148944();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v20 + 8))(v18, v19);
    (*(*(v10 - 8) + 56))(v14, 1, 1, v10);
    v22 = v36;
    v23 = v37;
    sub_25312919C(v34, v21, v14, v37, v35);
    if (v22)
    {
      (*(v11 + 8))(v14, v33);
    }

    else
    {
      v25 = v24;
      (*(v11 + 8))(v14, v33);

      v38 = v25;
      sub_253148D64();
      swift_getWitnessTable();
      v26 = v32;
      sub_253149034();
      v27 = *(v23 - 8);
      if ((*(v27 + 48))(v26, 1, v23) == 1)
      {
        (*(v29 + 8))(v26, v30);

        sub_2530F5D8C();
        swift_allocError();
        *v28 = 0;
        swift_willThrow();
      }

      else
      {
        (*(v27 + 32))(v31, v26, v23);
      }
    }
  }
}

uint64_t sub_25312839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v25 = *(*(*a1 + 112) + 16);
  v5 = sub_253148974();
  v21 = sub_2531491F4();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  sub_25312AC38(v4 + *(*v4 + 184), &v20 - v12);
  v14 = sub_253148944();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v15 + 8))(v13, v14);
    (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
    sub_25312919C(v22, v17, v9, v23, v24);
    v19 = v18;
    (*(v6 + 8))(v9, v21);

    return v19;
  }

  return result;
}

void sub_253128604(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v26 = a3;
  v23 = a2;
  v21[1] = a5;
  v28 = *(*(*a1 + 112) + 16);
  v6 = sub_253148974();
  v22 = sub_2531491F4();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v21 - v13;
  sub_25312AC38(v5 + *(*v5 + 184), v21 - v13);
  v15 = sub_253148944();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v16 + 8))(v14, v15);
    (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
    v18 = v25;
    sub_25312919C(v23, v17, v10, v26, v24);
    if (v18)
    {
      (*(v7 + 8))(v10, v22);
    }

    else
    {
      v20 = v19;
      (*(v7 + 8))(v10, v22);

      v27 = v20;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_2531288E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v29 = a4;
  v23 = a6;
  v24 = a3;
  v26 = a2;
  v31 = *(*a1 + 112);
  v7 = sub_253148974();
  v25 = sub_2531491F4();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  sub_25312AC38(v6 + *(*v6 + 184), &v23 - v14);
  v16 = sub_253148944();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v17 + 8))(v15, v16);
    v19 = *(v7 - 8);
    (*(v19 + 16))(v11, v24, v7);
    (*(v19 + 56))(v11, 0, 1, v7);
    v20 = v28;
    sub_25312919C(v26, v18, v11, v29, v27);
    if (v20)
    {
      (*(v8 + 8))(v11, v25);
    }

    else
    {
      v22 = v21;
      (*(v8 + 8))(v11, v25);

      v30 = v22;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

uint64_t sub_253128BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v24 = a2;
  v25 = a4;
  v22 = a3;
  v27 = *(*(*a1 + 112) + 16);
  v6 = sub_253148974();
  v23 = sub_2531491F4();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  sub_25312AC38(v5 + *(*v5 + 184), &v22 - v13);
  v15 = sub_253148944();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v16 + 8))(v14, v15);
    v19 = *(v6 - 8);
    (*(v19 + 16))(v10, v22, v6);
    (*(v19 + 56))(v10, 0, 1, v6);
    sub_25312919C(v24, v18, v10, v25, v26);
    v21 = v20;
    (*(v7 + 8))(v10, v23);

    return v21;
  }

  return result;
}

void sub_253128E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v29 = a4;
  v23 = a6;
  v24 = a3;
  v26 = a2;
  v31 = *(*(*a1 + 112) + 16);
  v7 = sub_253148974();
  v25 = sub_2531491F4();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  sub_25312AC38(v6 + *(*v6 + 184), &v23 - v14);
  v16 = sub_253148944();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v17 + 8))(v15, v16);
    v19 = *(v7 - 8);
    (*(v19 + 16))(v11, v24, v7);
    (*(v19 + 56))(v11, 0, 1, v7);
    v20 = v28;
    sub_25312919C(v26, v18, v11, v29, v27);
    if (v20)
    {
      (*(v8 + 8))(v11, v25);
    }

    else
    {
      v22 = v21;
      (*(v8 + 8))(v11, v25);

      v30 = v22;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_25312919C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v144 = a3;
  v132 = a2;
  v140 = *v5;
  v9 = v140;
  v127 = *(a4 - 8);
  v10 = *(v127 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v137 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v139 = &v124 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v138 = &v124 - v16;
  v145 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = *(AssociatedTypeWitness - 8);
  v126 = *(v142 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v147 = &v124 - v19;
  v143 = v18;
  v151[6] = v18;
  v20 = sub_253148974();
  v21 = sub_2531491F4();
  v133 = *(v21 - 8);
  v22 = *(v133 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v131 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v124 - v26;
  v28 = *(v20 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v129 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v130 = &v124 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v128 = &v124 - v35;
  MEMORY[0x28223BE20](v34);
  v135 = &v124 - v36;
  v37 = *(v9 + 192);
  swift_beginAccess();
  v146 = v5;
  if (sub_25312723C(a1, *(v5 + v37)))
  {
    sub_25312ACF4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v141 = a4;
  swift_beginAccess();
  v136 = v37;
  sub_2530D6200(v151, a1);
  swift_endAccess();
  v38 = v133;
  v39 = *(v133 + 16);
  v39(v27, v144, v21);
  v40 = *(v28 + 48);
  v41 = v40(v27, 1, v20);
  v125 = v28;
  if (v41 == 1)
  {
    (*(v38 + 8))(v27, v21);
    v42 = v143;
  }

  else
  {
    (*(v28 + 32))(v135, v27, v20);
    v43 = v28;
    v42 = v143;
    v44 = v132;
    if (v132)
    {
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_25314EC30;
      *(v46 + 32) = v44;
      v47 = v128;
      v48 = v135;
      (*(v45 + 16))(v128, v135, v20);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v50 = v44;
      v51 = v134;
      sub_2530FD73C(v47, v42, AssociatedConformanceWitness);
      if (v51)
      {

        *(v46 + 16) = 0;

        v83 = 0;
        v124 = v20;
        if (qword_27F580318 != -1)
        {
          swift_once();
        }

        v84 = sub_253148A94();
        __swift_project_value_buffer(v84, qword_27F5821F8);
        v85 = v51;
        v86 = sub_253148A74();
        v87 = sub_253149094();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v144 = 0;
          v89 = AssociatedConformanceWitness;
          v90 = v48;
          v91 = v50;
          v92 = v88;
          v93 = swift_slowAlloc();
          *v92 = 138412290;
          v94 = v51;
          v95 = _swift_stdlib_bridgeErrorToNSError();
          *(v92 + 4) = v95;
          *v93 = v95;
          _os_log_impl(&dword_2530B8000, v86, v87, "Failed to fetch models with error: %@, filtering in-memory instead.", v92, 0xCu);
          sub_2530CD33C(v93, &qword_27F581E10, &qword_25314F640);
          MEMORY[0x259BFDC60](v93, -1, -1);
          v96 = v92;
          v50 = v91;
          v48 = v90;
          AssociatedConformanceWitness = v89;
          v83 = v144;
          MEMORY[0x259BFDC60](v96, -1, -1);
        }

        v97 = sub_2531317D4(v42, v50, v42, AssociatedConformanceWitness);
        if (v83)
        {
          (*(v125 + 8))(v48, v124);

          return;
        }

        v148[0] = v97;
        sub_253148D64();
        swift_getWitnessTable();
        v59 = sub_253148C04();

        (*(v125 + 8))(v48, v124);
        v54 = v145;
      }

      else
      {
        *(v46 + 40) = v52;
        sub_25312ACA8();
        v81 = sub_253148C84();

        v82 = [objc_opt_self() andPredicateWithSubpredicates_];

        v99 = sub_2531317D4(v42, v82, v42, AssociatedConformanceWitness);
        (*(v125 + 8))(v48, v20);
        v54 = v145;
        v59 = v99;
      }

      goto LABEL_32;
    }

    (*(v43 + 8))(v135, v20);
  }

  v53 = v131;
  v39(v131, v144, v21);
  if (v40(v53, 1, v20) != 1)
  {
    v60 = v125;
    v61 = v130;
    (*(v125 + 32))(v130, v53, v20);
    v62 = *(v60 + 16);
    v63 = v129;
    v124 = v20;
    v62(v129, v61, v20);
    v54 = v145;
    v64 = swift_getAssociatedConformanceWitness();
    v65 = v134;
    sub_2530FD73C(v63, v42, v64);
    if (v65)
    {
      if (qword_27F580318 != -1)
      {
        swift_once();
      }

      v71 = sub_253148A94();
      __swift_project_value_buffer(v71, qword_27F5821F8);
      v72 = v65;
      v73 = sub_253148A74();
      v74 = sub_253149094();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        v77 = v65;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 4) = v78;
        *v76 = v78;
        _os_log_impl(&dword_2530B8000, v73, v74, "Failed to fetch models with error: %@, filtering in-memory instead.", v75, 0xCu);
        sub_2530CD33C(v76, &qword_27F581E10, &qword_25314F640);
        v79 = v76;
        v54 = v145;
        MEMORY[0x259BFDC60](v79, -1, -1);
        v80 = v75;
        v61 = v130;
        MEMORY[0x259BFDC60](v80, -1, -1);
      }

      v148[0] = sub_253131590(v42, v42, v64);
      sub_253148D64();
      swift_getWitnessTable();
      v59 = sub_253148C04();

      (*(v125 + 8))(v61, v124);
    }

    else
    {
      v70 = v66;
      v98 = sub_2531317D4(v42, v66, v42, v64);
      (*(v125 + 8))(v61, v124);

      v59 = v98;
    }

    goto LABEL_32;
  }

  (*(v38 + 8))(v53, v21);
  v54 = v145;
  v55 = v132;
  if (v132)
  {
    v56 = swift_getAssociatedConformanceWitness();
    v57 = v55;
    v58 = v134;
    v59 = sub_2531317D4(v42, v57, v42, v56);

    if (!v58)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v67 = swift_getAssociatedConformanceWitness();
    v68 = v134;
    v69 = sub_253131590(v42, v42, v67);
    if (!v68)
    {
      v59 = v69;
LABEL_32:
      v151[0] = sub_253148AA4();
      if (!sub_253148D44())
      {
LABEL_43:

        return;
      }

      v100 = 0;
      v135 = (v142 + 16);
      v133 = v142 + 8;
      v132 = (v54 + 24);
      v131 = (v127 + 16);
      v130 = (v127 + 8);
      v134 = v59;
      while (1)
      {
        v101 = sub_253148CF4();
        sub_253148CC4();
        if (v101)
        {
          (*(v142 + 16))(v147, v59 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v100, v42);
          v102 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          v123 = sub_2531493F4();
          if (v126 != 8)
          {
            __break(1u);
            return;
          }

          v148[0] = v123;
          (*v135)(v147, v148, v42);
          swift_unknownObjectRelease();
          v102 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        v143 = v102;
        v103 = *(v140 + 152);
        v104 = *(v140 + 168);
        v105 = swift_getAssociatedConformanceWitness();
        v148[0] = v103;
        v148[1] = v42;
        v148[2] = v104;
        v149 = v105;
        v106 = _s15ComposableProxyCMa();
        v107 = *(*v146 + 112);
        v108 = v42;
        v109 = v146;
        v110 = *(*v146 + 104);
        v111 = *(v146 + v136);
        v112 = *(v105 + 32);

        v144 = 0;
        v113 = v138;
        v114 = v147;
        sub_2531493D4();
        (*v133)(v114, v108);
        v115 = sub_253148944();
        (*(*(v115 - 8) + 56))(v113, 0, 1, v115);
        v116 = v109 + v110;
        v117 = v141;
        v118 = sub_25312ABB8(v109 + v107, v116, v111, v113);
        v149 = v106;
        v119 = v145;
        WitnessTable = swift_getWitnessTable();
        v148[0] = v118;
        v120 = *(v119 + 24);

        v121 = v139;
        v122 = v144;
        v120(v148, v117, v119);
        if (v122)
        {

          return;
        }

        (*v131)(v137, v121, v117);
        sub_253148D64();
        sub_253148D34();

        (*v130)(v121, v117);
        v59 = v134;
        ++v100;
        v42 = v108;
        if (v143 == sub_253148D44())
        {
          goto LABEL_43;
        }
      }
    }
  }
}

uint64_t sub_25312A2EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[5] = a4;
  v10 = sub_253148974();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25314EC30;
  *(v15 + 32) = a2;
  v16 = *(v11 + 16);
  v36[1] = a3;
  v16(v14, a3, v10);
  v17 = a5;
  v18 = a2;
  sub_2530FD73C(v14, a4, v17);
  if (v5)
  {

    *(v15 + 16) = 0;

    if (qword_27F580318 != -1)
    {
      swift_once();
    }

    v22 = sub_253148A94();
    __swift_project_value_buffer(v22, qword_27F5821F8);
    v23 = v5;
    v24 = sub_253148A74();
    v25 = sub_253149094();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v17;
      v27 = swift_slowAlloc();
      v28 = v18;
      v29 = swift_slowAlloc();
      *v27 = 138412290;
      v30 = v5;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_2530B8000, v24, v25, "Failed to fetch models with error: %@, filtering in-memory instead.", v27, 0xCu);
      sub_2530CD33C(v29, &qword_27F581E10, &qword_25314F640);
      v32 = v29;
      v18 = v28;
      MEMORY[0x259BFDC60](v32, -1, -1);
      v33 = v27;
      v17 = v26;
      MEMORY[0x259BFDC60](v33, -1, -1);
    }

    v36[3] = sub_2531317D4(a4, v18, a4, v17);
    sub_253148D64();
    swift_getWitnessTable();
    v35 = sub_253148C04();
  }

  else
  {
    *(v15 + 40) = v19;
    sub_25312ACA8();
    v20 = sub_253148C84();

    v21 = [objc_opt_self() andPredicateWithSubpredicates_];

    v35 = sub_2531317D4(a4, v21, a4, v17);
  }

  return v35;
}

uint64_t sub_25312A6CC()
{
  sub_2530CD33C(v0 + *(*v0 + 184), &qword_27F581608, &qword_25314E3D0);
  v1 = *(v0 + *(*v0 + 192));
}

uint64_t sub_25312A734()
{
  v0 = sub_25313142C();
  sub_2530CD33C(v0 + *(*v0 + 184), &qword_27F581608, &qword_25314E3D0);
  v1 = *(v0 + *(*v0 + 192));

  return v0;
}

uint64_t sub_25312A7A4()
{
  v0 = *sub_25312A734();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_25312A810()
{
  if (!qword_27F582290)
  {
    sub_253148944();
    v0 = sub_2531491F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F582290);
    }
  }
}

uint64_t sub_25312AA68(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 40);
  sub_253149814();
  sub_253148BB4();
  v3 = sub_253149844() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3) & 1;
}

char *sub_25312AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25312AC38(a4, v4 + *(*v4 + 184));
  *(v4 + *(*v4 + 192)) = a3;
  sub_2530C25FC(a2, v11);
  v9 = sub_25313266C(a1, v11);
  sub_2530CD33C(a4, &qword_27F581608, &qword_25314E3D0);
  return v9;
}

char *sub_25312ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(v4 + 152);
  v14 = *(v4 + 168);
  v9 = _s15ComposableProxyCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_25312AB04(a1, a2, a3, a4);
}

uint64_t sub_25312AC38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25312ACA8()
{
  result = qword_27F581968;
  if (!qword_27F581968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F581968);
  }

  return result;
}

unint64_t sub_25312ACF4()
{
  result = qword_27F582298;
  if (!qword_27F582298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582298);
  }

  return result;
}

uint64_t sub_25312ADA8(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2530BDB14(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_25312F6CC(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2530CD33C(a1, &qword_27F580DD0, &qword_25314D448);
    v8 = *v2;
    v9 = sub_25311D9C4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_25312B704();
        v14 = v16;
      }

      sub_2530BDB14((*(v14 + 56) + 40 * v11), v17);
      sub_25312EB78(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_2530CD33C(v17, &qword_27F580DD0, &qword_25314D448);
  }

  return result;
}

uint64_t sub_25312AEB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2530BDB14(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_25312F7FC(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_253148944();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_2530CD33C(a1, &qword_27F5806E0, &qword_25314D900);
    sub_25312E748(a2, v10);
    v8 = sub_253148944();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_2530CD33C(v10, &qword_27F5806E0, &qword_25314D900);
  }

  return result;
}

void sub_25312AFD0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2530CD33C(a1, &qword_27F5818C8, &unk_25314E9F0);
    sub_25312E980(a2, v8);

    sub_2530CD33C(v8, &qword_27F5818C8, &unk_25314E9F0);
  }

  else
  {
    sub_253131220(a1, v12);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_253130208(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

double sub_25312B174@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = *(v11 + 32);
  sub_2531493D4();
  if (*(a2 + 16) && (v13 = sub_25311D834(v10), (v14 & 1) != 0))
  {
    sub_2530C25FC(*(a2 + 56) + 40 * v13, a3);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25312B2C0(uint64_t a1, uint64_t a2)
{
  v24 = sub_253148944();
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = (v5 + 8);
  v25 = a1;

  v15 = 0;
  if (v11)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_2530C25FC(*(v25 + 56) + 40 * (__clz(__rbit64(v11)) | (v16 << 6)), v34);
      sub_2530BDB14(v34, v31);
      v17 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v18 = *(v17 + 32);
      sub_2531493D4();
      if (!*(a2 + 16) || (v19 = sub_25311D834(v7), (v20 & 1) == 0))
      {

        (*v13)(v7, v24);
        goto LABEL_16;
      }

      sub_2530C25FC(*(a2 + 56) + 40 * v19, v27);
      (*v13)(v7, v24);
      sub_2530BDB14(v27, v28);
      __swift_project_boxed_opaque_existential_1(v31, v32);
      sub_253133AC0();
      v21 = LOBYTE(v27[0]);
      v22 = v29;
      v23 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      sub_2530D2104(v22, v23);
      if (v21 != v26)
      {
        break;
      }

      v11 &= v11 - 1;
      __swift_destroy_boxed_opaque_existential_0(v28);
      result = __swift_destroy_boxed_opaque_existential_0(v31);
      v15 = v16;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v31);
    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v12)
      {

        return 1;
      }

      v11 = *(v8 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25312B58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 32);
  sub_2531493D4();
  v14[3] = a2;
  v14[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  return sub_25312AEB4(v14, v9);
}

uint64_t sub_25312B678(uint64_t a1)
{
  v3 = *v1;

  v4 = sub_253130FA8(v3, a1);

  *v1 = v4;
  return result;
}

void *sub_25312B704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C8, &qword_253151138);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_2530C25FC(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2530BDB14(v19, *(v4 + 56) + 40 * v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25312B8AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v36 = a3;
  v6 = v3;
  v35 = sub_253148944();
  v38 = *(v35 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v3;
  v10 = sub_2531495B4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v33[0] = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v33[1] = v38 + 32;
    v33[2] = v38 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v38;
        v27 = *(v38 + 72) * v25;
        v28 = v34;
        v29 = v35;
        (*(v38 + 16))(v34, *(v9 + 48) + v27, v35);
        v25 *= 40;
        sub_2530C25FC(*(v9 + 56) + v25, v40);
        v30 = v9;
        v31 = v37;
        (*(v26 + 32))(*(v37 + 48) + v27, v28, v29);
        v32 = *(v31 + 56);
        v9 = v30;
        result = v36(v40, v32 + v25);
        v20 = v39;
      }

      while (v39);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v33[0];
        v11 = v37;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v39 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_25312BB44()
{
  v1 = v0;
  v40 = sub_253148534();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A8, &qword_25314F198);
  v4 = *v0;
  v5 = sub_2531495B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v41;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v15;
    v38 = v4;
    v17 = v42;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = *(v17 + 72) * v21;
        v24 = v39;
        v23 = v40;
        (*(v17 + 16))(v39, *(v4 + 48) + v22, v40);
        v21 *= 24;
        v25 = *(v4 + 56) + v21;
        v27 = *v25;
        v26 = *(v25 + 8);
        v28 = *(v25 + 16);
        (*(v17 + 32))(*(v16 + 48) + v22, v24, v23);
        v29 = (*(v16 + 56) + v21);
        *v29 = v27;
        v29[1] = v26;
        v29[2] = v28;
        v30 = v28;
        v31 = v27;
        result = v26;
        v15 = v37;
        v4 = v38;
        v14 = v43;
      }

      while (v43);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v6 = v41;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_25312BDDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A0, &qword_253151110);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25312BF48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A8, &qword_253151118);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25312C0C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C0, &qword_253151130);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v21 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v21;
        v19 = v18;
        v20 = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_25312C244()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B8, &qword_253151128);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_25312C3A4()
{
  v1 = v0;
  v2 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5822D0, &qword_253151140);
  v6 = *v0;
  v7 = sub_2531495B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_2530FBB74(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_253131220(v5, *(v8 + 56) + v23);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25312C5B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A08, &qword_25314F1F8);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2530C0304(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2530C02F4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25312C758()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B0, &qword_253151120);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_2530CAA1C(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_25312C904(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C8, &qword_253151138);
  result = sub_2531495C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_2530BDB14(v22, v33);
      }

      else
      {
        sub_2530C25FC(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_253149814();
      MEMORY[0x259BFD420](v21);
      result = sub_253149844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_2530BDB14(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25312CBCC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, void (*a5)(unint64_t, _BYTE *))
{
  v50 = a5;
  v8 = v5;
  v11 = sub_253148944();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v17 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v48 = a2;
  result = sub_2531495C4();
  v19 = result;
  if (*(v16 + 16))
  {
    v52 = v15;
    v53 = v11;
    v44 = v8;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v45 = (v12 + 16);
    v46 = v12;
    v49 = (v12 + 32);
    v26 = result + 64;
    v47 = v16;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v20 << 6);
      v32 = *(v16 + 48);
      v51 = *(v12 + 72);
      v33 = v32 + v51 * v31;
      if (v48)
      {
        (*v49)(v52, v33, v53);
        v50(*(v16 + 56) + 40 * v31, v54);
      }

      else
      {
        (*v45)(v52, v33, v53);
        sub_2530C25FC(*(v16 + 56) + 40 * v31, v54);
      }

      v34 = *(v19 + 40);
      sub_2531311D8(&qword_27F580560, MEMORY[0x277CC95F0]);
      result = sub_253148B04();
      v35 = -1 << *(v19 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v26 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v12 = v46;
        v16 = v47;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v26 + 8 * v37);
          if (v41 != -1)
          {
            v27 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v36) & ~*(v26 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v12 = v46;
      v16 = v47;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v49)((*(v19 + 48) + v51 * v27), v52, v53);
      result = (v50)(v54, *(v19 + 56) + 40 * v27);
      ++*(v19 + 16);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v16 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v21, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v42;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v8 = v19;
  return result;
}

uint64_t sub_25312CFC8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_253148534();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A8, &qword_25314F198);
  v54 = a2;
  result = sub_2531495C4();
  v14 = result;
  if (*(v11 + 16))
  {
    v60 = v10;
    v50 = v3;
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
    v51 = (v7 + 16);
    v52 = v11;
    v53 = v7;
    v55 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v11 + 48);
      v59 = *(v53 + 72);
      v31 = v30 + v59 * v29;
      if (v54)
      {
        (*v55)(v60, v31, v6);
        v32 = (*(v11 + 56) + 24 * v29);
        v33 = *v32;
        v58 = v32[1];
        v34 = v32[2];
        v56 = v33;
        v57 = v34;
      }

      else
      {
        (*v51)(v60, v31, v6);
        v35 = *(v11 + 56) + 24 * v29;
        v36 = *v35;
        v37 = *(v35 + 8);
        v57 = *(v35 + 16);
        v38 = v57;
        v56 = v36;
        v58 = v37;
        v39 = v37;
      }

      v40 = *(v14 + 40);
      sub_2531311D8(&qword_27F581F20, MEMORY[0x277CC8ED0]);
      result = sub_253148B04();
      v41 = -1 << *(v14 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v21 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v21 + 8 * v43);
          if (v47 != -1)
          {
            v22 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v42) & ~*(v21 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v55)(*(v14 + 48) + v59 * v22, v60, v6);
      v23 = (*(v14 + 56) + 24 * v22);
      v24 = v57;
      v25 = v58;
      *v23 = v56;
      v23[1] = v25;
      v23[2] = v24;
      ++*(v14 + 16);
      v11 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v11 + 32);
    v3 = v50;
    if (v48 >= 64)
    {
      bzero(v16, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v48;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25312D3E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A0, &qword_253151110);
  v39 = a2;
  result = sub_2531495C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}