uint64_t sub_226B44534(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_226D6B67C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_226D682FC();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4465C, 0, 0);
}

uint64_t sub_226B4465C()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = *(v4 + 8);
  sub_226D6BACC();
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = *v3;
  v8 = v3[1];
  sub_226D6A62C();
  v9 = v0[15];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6A63C();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F710);
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_226AB4000, v12, v13, "Consent exists in local store, updating if needed.", v14, 2u);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_226B44AC4;
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[8];
  v19 = v0[9];

  return sub_226B45530(v17, v16, v18);
}

uint64_t sub_226B44AC4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_226B44E54;
  }

  else
  {
    v3 = sub_226B44BD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B44BD8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  v3(v0[15], v2);
  v3(v1, v2);
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[12];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226B44C94()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_226B450F8;
  }

  else
  {
    v3 = sub_226B44DA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B44DA8()
{
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B44E54()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  v1 = *(v0 + 144);
  *(v0 + 56) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 88) + 88))(*(v0 + 96), *(v0 + 80)) == *MEMORY[0x277CC7FC8])
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v5 = sub_226D6E07C();
      __swift_project_value_buffer(v5, qword_28105F710);
      v6 = sub_226D6E05C();
      v7 = sub_226D6E9EC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_226AB4000, v6, v7, "No consent found in local store, attempting to insert.", v8, 2u);
        MEMORY[0x22AA8BEE0](v8, -1, -1);
      }

      v9 = swift_task_alloc();
      *(v0 + 152) = v9;
      *v9 = v0;
      v9[1] = sub_226B44C94;
      v10 = *(v0 + 128);
      v11 = *(v0 + 64);
      v12 = *(v0 + 72);

      return sub_226B45CDC(v10, v11);
    }

    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_226B450F8()
{
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226B451A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4523C, 0, 0);
}

uint64_t sub_226B4523C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  sub_226B4E088(v2, v1, MEMORY[0x277CC6528]);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (!v6)
  {

    sub_226B4E318(v7, MEMORY[0x277CC6528]);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(v0 + 40);
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138412290;
  sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226B4E088(v7, v11, MEMORY[0x277CC6528]);
  v12 = _swift_stdlib_bridgeErrorToNSError();
  sub_226B4E318(v7, MEMORY[0x277CC6528]);
  *(v9 + 4) = v12;
  *v10 = v12;
  _os_log_impl(&dword_226AB4000, v4, v5, "Failed to process pending consent with error: %@", v9, 0xCu);
  sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v10, -1, -1);
  MEMORY[0x22AA8BEE0](v9, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v13 = *(v0 + 32);
    v14 = *(v0 + 16);
    v15 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v16 = sub_226D676AC();
    v17 = swift_task_alloc();
    v17[2] = v16;
    v17[3] = v13;
    v17[4] = v14;
    sub_226D6EB7C();
  }

LABEL_8:
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_226B45530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_226D682FC();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B45600, 0, 0);
}

uint64_t sub_226B45600()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_226D682DC();
  if (sub_226D682DC() < v3)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[11];
    v7 = v0[12];
    v9 = v0[7];
    v8 = v0[8];
    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F710);
    v11 = *(v7 + 16);
    v11(v5, v9, v6);
    v11(v4, v8, v6);
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9EC();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[11];
    v18 = v0[12];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 134349312;
      v20 = sub_226D682DC();
      v21 = *(v18 + 8);
      v21(v15, v17);
      *(v19 + 4) = v20;
      *(v19 + 12) = 2050;
      v22 = sub_226D682DC();
      v21(v16, v17);
      *(v19 + 14) = v22;
      _os_log_impl(&dword_226AB4000, v12, v13, "Refresh sequence number of the local consent (%{public}lld) is greater than the pending consent (%{public}lld). Aborting\nupdate.", v19, 0x16u);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    else
    {
      v36 = *(v18 + 8);
      v36(v0[13], v0[11]);
      v36(v15, v17);
    }

    v37 = v0[9];
    v38 = v0[10];

    v39 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v40 = *(v39 + 8);
    sub_226D6BAAC();
    v41 = sub_226D676AC();

    v42 = swift_task_alloc();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    goto LABEL_28;
  }

  v24 = v0[7];
  v23 = v0[8];
  v25 = sub_226D682DC();
  if (v25 != sub_226D682DC())
  {
    goto LABEL_23;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v26 = sub_226D6E07C();
  __swift_project_value_buffer(v26, qword_28105F710);
  v27 = sub_226D6E05C();
  v28 = sub_226D6E9EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Refresh sequence number of local and pending consents are equal. Deterministically choosing consent by comparing the consentToken's value.", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  v30 = v0[7];
  v31 = v0[8];

  v32 = sub_226D682AC();
  v34 = v33;
  if (v32 == sub_226D682AC() && v34 == v35)
  {

LABEL_20:
    v52 = sub_226D6E05C();
    v53 = sub_226D6E9EC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_226AB4000, v52, v53, "Pending consent is canonical. Resuming update.", v54, 2u);
      MEMORY[0x22AA8BEE0](v54, -1, -1);
    }

LABEL_23:
    v55 = v0[9];
    v56 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    v57 = *(v56 + 8);
    sub_226D6BACC();
    v58 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_226D6A66C();
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v59 = sub_226D6E07C();
    __swift_project_value_buffer(v59, qword_28105F710);
    v60 = sub_226D6E05C();
    v61 = sub_226D6E9EC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_226AB4000, v60, v61, "Successfully updated local consent with values from pending consent.", v62, 2u);
      MEMORY[0x22AA8BEE0](v62, -1, -1);
    }

    v63 = v0[9];
    v64 = v0[10];

    v65 = v55[4];
    __swift_project_boxed_opaque_existential_1(v63, v55[3]);
    v66 = *(v65 + 8);
    sub_226D6BAAC();
    v41 = sub_226D676AC();

    v67 = swift_task_alloc();
    *(v67 + 16) = v64;
    *(v67 + 24) = v41;
    goto LABEL_28;
  }

  v43 = sub_226D6F21C();

  if ((v43 & 1) == 0)
  {
    goto LABEL_20;
  }

  v44 = sub_226D6E05C();
  v45 = sub_226D6E9EC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_226AB4000, v44, v45, "Local consent is canonical. Aborting update.", v46, 2u);
    MEMORY[0x22AA8BEE0](v46, -1, -1);
  }

  v47 = v0[9];
  v48 = v0[10];

  v49 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v50 = *(v49 + 8);
  sub_226D6BAAC();
  v41 = sub_226D676AC();

  v51 = swift_task_alloc();
  *(v51 + 16) = v48;
  *(v51 + 24) = v41;
LABEL_28:
  sub_226D6EB7C();

  v69 = v0[13];
  v68 = v0[14];

  v70 = v0[1];

  return v70();
}

uint64_t sub_226B45CDC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_226D68C5C();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = sub_226D6AD3C();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = sub_226D6764C();
  v3[24] = v10;
  v11 = *(v10 - 8);
  v3[25] = v11;
  v12 = *(v11 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v13 = *(type metadata accessor for BankConnectPendingConsentProcessingTask() - 8);
  v3[28] = v13;
  v3[29] = *(v13 + 64);
  v3[30] = swift_task_alloc();
  v14 = sub_226D682FC();
  v3[31] = v14;
  v15 = *(v14 - 8);
  v3[32] = v15;
  v3[33] = *(v15 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v16 = sub_226D671FC();
  v3[36] = v16;
  v17 = *(v16 - 8);
  v3[37] = v17;
  v18 = *(v17 + 64) + 15;
  v3[38] = swift_task_alloc();
  v19 = sub_226D6A30C();
  v3[39] = v19;
  v20 = *(v19 - 8);
  v3[40] = v20;
  v21 = *(v20 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B46004, 0, 0);
}

uint64_t sub_226B46004()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 112);
  sub_226D682BC();
  (*(v4 + 104))(v2, *MEMORY[0x277CC7B60], v3);
  sub_226B4E6C8(&qword_27D7A6E78, MEMORY[0x277CC7B70]);
  sub_226D6E53C();
  sub_226D6E53C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (*(v0 + 476) == *(v0 + 478))
  {
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    *v7 = v0;
    v7[1] = sub_226B46420;
    v8 = *(v0 + 304);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);

    return sub_226B49138(v8, v9);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_28105F710);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v13, v14, "Consent status is invalid, unable to setup.", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    v18 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v19 = *(v18 + 8);
    sub_226D6BAAC();
    v20 = sub_226D676AC();

    v21 = swift_task_alloc();
    *(v21 + 16) = v17;
    *(v21 + 24) = v20;
    sub_226D6EB7C();
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 304);
    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 240);
    v28 = *(v0 + 216);
    v30 = *(v0 + 208);
    v31 = *(v0 + 184);
    v32 = *(v0 + 176);
    v33 = *(v0 + 152);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_226B46420()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_226B4819C;
  }

  else
  {
    v3 = sub_226B46534;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B46534()
{
  v1 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(MEMORY[0x277CC8088] + 4);
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  v6 = sub_226B41FC0();
  *v5 = v0;
  v5[1] = sub_226B465FC;

  return MEMORY[0x28211A3F8](v2, v3, &type metadata for BankConnectEnvironmentImplementation, v6);
}

uint64_t sub_226B465FC(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_226B466FC, 0, 0);
}

uint64_t sub_226B466FC()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  sub_226AE532C(*(v0 + 120), v0 + 16);
  (*(v4 + 16))(v1, v9, v3);
  sub_226B4E088(v8, v5, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = (v2 + *(v7 + 80) + v10) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v0 + 376) = v12;
  sub_226AC484C((v0 + 16), v12 + 16);
  (*(v4 + 32))(v12 + v10, v1, v3);
  sub_226B4E528(v5, v12 + v11, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v13 = *(MEMORY[0x277CC7780] + 4);
  v19 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);
  v14 = swift_task_alloc();
  *(v0 + 384) = v14;
  *v14 = v0;
  v14[1] = sub_226B468C8;
  v15 = *(v0 + 368);
  v16 = *(v0 + 280);
  v17 = *(v0 + 248);

  return v19(v16, &unk_226D73758, v12, v17);
}

uint64_t sub_226B468C8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_226B48290;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_226B469E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B469E4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 400) = __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Successfully inserted pending consent into local store.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 392);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);

  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v10 = *(v9 + 8);
  sub_226D6BAAC();
  v11 = sub_226D676AC();

  v12 = swift_task_alloc();
  v12[2] = v11;
  v12[3] = v6;
  v12[4] = v8;
  sub_226D6EB7C();
  v102 = v5;
  if (v5)
  {
    v13 = *(v0 + 368);
    v14 = *(v0 + 280);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);

    (*(v15 + 8))(v14, v16);
    *(v0 + 96) = v102;
    v17 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    if (swift_dynamicCast())
    {

      if ((*(v0 + 480) & 1) == 0)
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1, qword_28105F710);
        v62 = sub_226D6E05C();
        v63 = sub_226D6E9CC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_226AB4000, v62, v63, "Failed to insert token, overlaps with existing tokens.", v64, 2u);
          MEMORY[0x22AA8BEE0](v64, -1, -1);
        }

        v65 = *(v0 + 120);
        v66 = *(v0 + 128);

        v67 = v65[4];
        __swift_project_boxed_opaque_existential_1(v65, v65[3]);
        v68 = *(v67 + 8);
        sub_226D6BAAC();
        v69 = sub_226D676AC();

        v70 = swift_task_alloc();
        *(v70 + 16) = v66;
        *(v70 + 24) = v69;
        sub_226D6EB7C();

        v81 = *(v0 + 120);
        v82 = *(v0 + 128);
        v83 = v81[4];
        __swift_project_boxed_opaque_existential_1(v81, v81[3]);
        v84 = *(v83 + 8);
        sub_226D6BAAC();
        v85 = sub_226D676AC();

        v86 = swift_task_alloc();
        *(v86 + 16) = v82;
        *(v86 + 24) = v85;
        sub_226D6EB7C();
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
        v88 = *(v0 + 328);
        v87 = *(v0 + 336);
        v89 = *(v0 + 304);
        v91 = *(v0 + 272);
        v90 = *(v0 + 280);
        v92 = *(v0 + 240);
        v93 = *(v0 + 216);
        v96 = *(v0 + 208);
        v98 = *(v0 + 184);
        v101 = *(v0 + 176);
        v103 = *(v0 + 152);

        v94 = *(v0 + 8);
        goto LABEL_30;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_28105F710);
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9CC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_226AB4000, v18, v19, "Failed to insert token into local store, Wallet has been deleted.", v20, 2u);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      v22 = *(v0 + 296);
      v21 = *(v0 + 304);
      v23 = *(v0 + 288);

      sub_226B4E26C();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      (*(v22 + 8))(v21, v23);
      v25 = *(v0 + 96);
    }

    else
    {
      v36 = *(v0 + 184);
      v37 = *(v0 + 160);

      *(v0 + 104) = v102;
      v38 = v102;
      if (swift_dynamicCast())
      {
        v39 = *(v0 + 176);
        v40 = *(v0 + 184);
        v42 = *(v0 + 160);
        v41 = *(v0 + 168);
        v43 = *(v0 + 152);
        v44 = *(v0 + 120);
        v45 = *(v0 + 128);

        (*(v41 + 32))(v39, v40, v42);
        sub_226D6AD2C();
        v46 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v44[3]);
        v47 = *(v46 + 8);
        sub_226D6BAAC();
        v48 = sub_226D676AC();

        v49 = swift_task_alloc();
        v49[2] = v45;
        v49[3] = v48;
        v49[4] = v43;
        sub_226D6EB7C();
        v50 = *(v0 + 296);
        v97 = *(v0 + 288);
        v99 = *(v0 + 304);
        v52 = *(v0 + 168);
        v51 = *(v0 + 176);
        v53 = *(v0 + 152);
        v95 = *(v0 + 160);
        v55 = *(v0 + 136);
        v54 = *(v0 + 144);

        (*(v54 + 8))(v53, v55);
        sub_226D66DFC();
        sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528]);
        swift_allocError();
        sub_226D6AD1C();
        swift_willThrow();
        (*(v52 + 8))(v51, v95);
        (*(v50 + 8))(v99, v97);
      }

      else
      {
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      }

      v25 = *(v0 + 104);
    }

    v72 = *(v0 + 328);
    v71 = *(v0 + 336);
    v73 = *(v0 + 304);
    v75 = *(v0 + 272);
    v74 = *(v0 + 280);
    v76 = *(v0 + 240);
    v78 = *(v0 + 208);
    v77 = *(v0 + 216);
    v79 = *(v0 + 176);
    v80 = *(v0 + 184);
    v100 = *(v0 + 152);

    v94 = *(v0 + 8);
LABEL_30:

    return v94();
  }

  v26 = *(v0 + 304);

  v27 = sub_226D6718C();
  v28 = *MEMORY[0x277CC6D38];
  *(v0 + 472) = v28;
  if (v27)
  {
    (*(*(v0 + 200) + 104))(*(v0 + 216), v28, *(v0 + 192));
    v29 = swift_task_alloc();
    *(v0 + 408) = v29;
    *v29 = v0;
    v29[1] = sub_226B4740C;
    v30 = *(v0 + 304);
    v31 = *(v0 + 280);
    v32 = *(v0 + 216);
    v33 = *(v0 + 120);
    v34 = *(v0 + 128);

    return sub_226B4A500(v31, v30, v33, v32);
  }

  else
  {
    *(v0 + 424) = 0;
    v57 = *(v0 + 200);
    v56 = *(v0 + 208);
    v58 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
    sub_226D1F120((v0 + 56));
    v59 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v57 + 104))(v56, v28, v58);
    *(v0 + 432) = *v59;
    v60 = swift_task_alloc();
    *(v0 + 440) = v60;
    *v60 = v0;
    v60[1] = sub_226B47678;
    v61 = *(v0 + 304);

    return sub_226D1392C(v61);
  }
}

uint64_t sub_226B4740C()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[25] + 8))(v2[27], v2[24]);
  if (v0)
  {
    v5 = sub_226B489D8;
  }

  else
  {
    v5 = sub_226B47574;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B47574()
{
  *(v0 + 424) = *(v0 + 416);
  v1 = *(v0 + 472);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_226D1F120((v0 + 56));
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  (*(v3 + 104))(v2, v1, v4);
  *(v0 + 432) = *v5;
  v6 = swift_task_alloc();
  *(v0 + 440) = v6;
  *v6 = v0;
  v6[1] = sub_226B47678;
  v7 = *(v0 + 304);

  return sub_226D1392C(v7);
}

uint64_t sub_226B47678(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 440);
  v5 = *v1;
  v3[56] = a1;

  v6 = swift_task_alloc();
  v3[57] = v6;
  *v6 = v5;
  v6[1] = sub_226B477F8;
  v7 = v3[54];
  v8 = v3[38];
  v9 = v3[26];

  return sub_226D14A8C(a1, v8, 0, v9);
}

uint64_t sub_226B477F8(uint64_t a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 464) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_226B47974, 0, 0);
}

uint64_t sub_226B47974()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 400);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 464);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&dword_226AB4000, v3, v4, "Successfully ran local account matching on %ld additional account(s).", v7, 0xCu);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
    v9 = *(v0 + 464);
    swift_bridgeObjectRelease_n();
  }

  v10 = *(v0 + 424);
  v11 = *(v0 + 128);
  sub_226B4B6E4(*(v0 + 280), *(v0 + 304), *(v0 + 120));
  v12 = *(v0 + 368);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v84 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  *(v0 + 96) = v10;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {

    if (*(v0 + 480))
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v14 = sub_226D6E07C();
      __swift_project_value_buffer(v14, qword_28105F710);
      v15 = sub_226D6E05C();
      v16 = sub_226D6E9CC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_226AB4000, v15, v16, "Failed to insert token into local store, Wallet has been deleted.", v17, 2u);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
      }

      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 288);

      sub_226B4E26C();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
      (*(v19 + 8))(v18, v20);

      goto LABEL_22;
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v42 = sub_226D6E07C();
    __swift_project_value_buffer(v42, qword_28105F710);
    v43 = sub_226D6E05C();
    v44 = sub_226D6E9CC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226AB4000, v43, v44, "Failed to insert token, overlaps with existing tokens.", v45, 2u);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
    }

    v46 = *(v0 + 120);
    v47 = *(v0 + 128);

    v48 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v49 = *(v48 + 8);
    sub_226D6BAAC();
    v50 = sub_226D676AC();

    v51 = swift_task_alloc();
    *(v51 + 16) = v47;
    *(v51 + 24) = v50;
    sub_226D6EB7C();

LABEL_21:
    v52 = *(v0 + 120);
    v53 = *(v0 + 128);
    v54 = v52[4];
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v55 = *(v54 + 8);
    sub_226D6BAAC();
    v56 = sub_226D676AC();

    v57 = swift_task_alloc();
    *(v57 + 16) = v53;
    *(v57 + 24) = v56;
    sub_226D6EB7C();
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v70 = *(v0 + 328);
    v69 = *(v0 + 336);
    v71 = *(v0 + 304);
    v73 = *(v0 + 272);
    v72 = *(v0 + 280);
    v74 = *(v0 + 240);
    v75 = *(v0 + 216);
    v78 = *(v0 + 208);
    v80 = *(v0 + 184);
    v83 = *(v0 + 176);
    v85 = *(v0 + 152);

    v76 = *(v0 + 8);
    goto LABEL_23;
  }

  v22 = *(v0 + 184);
  v23 = *(v0 + 160);

  *(v0 + 104) = v10;
  v24 = v10;
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    v29 = *(v0 + 152);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);

    (*(v27 + 32))(v25, v26, v28);
    sub_226D6AD2C();
    v32 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v33 = *(v32 + 8);
    sub_226D6BAAC();
    v34 = sub_226D676AC();

    v35 = swift_task_alloc();
    v35[2] = v31;
    v35[3] = v34;
    v35[4] = v29;
    sub_226D6EB7C();
    v36 = *(v0 + 296);
    v79 = *(v0 + 288);
    v81 = *(v0 + 304);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 152);
    v77 = *(v0 + 160);
    v41 = *(v0 + 136);
    v40 = *(v0 + 144);

    (*(v40 + 8))(v39, v41);
    sub_226D66DFC();
    sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528]);
    swift_allocError();
    sub_226D6AD1C();
    swift_willThrow();
    (*(v38 + 8))(v37, v77);
    (*(v36 + 8))(v81, v79);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  }

LABEL_22:
  v59 = *(v0 + 328);
  v58 = *(v0 + 336);
  v60 = *(v0 + 304);
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v63 = *(v0 + 240);
  v65 = *(v0 + 208);
  v64 = *(v0 + 216);
  v66 = *(v0 + 176);
  v67 = *(v0 + 184);
  v82 = *(v0 + 152);

  v76 = *(v0 + 8);
LABEL_23:

  return v76();
}

uint64_t sub_226B4819C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[22];
  v10 = v0[23];
  v13 = v0[19];
  v14 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_226B48290()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  v3 = *(v0 + 392);
  *(v0 + 96) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);

    *(v0 + 104) = v3;
    v15 = v3;
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v19 = *(v0 + 160);
      v18 = *(v0 + 168);
      v20 = *(v0 + 152);
      v21 = *(v0 + 120);
      v22 = *(v0 + 128);

      (*(v18 + 32))(v17, v16, v19);
      sub_226D6AD2C();
      v23 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v24 = *(v23 + 8);
      sub_226D6BAAC();
      v25 = sub_226D676AC();

      v26 = swift_task_alloc();
      v26[2] = v22;
      v26[3] = v25;
      v26[4] = v20;
      sub_226D6EB7C();
      v27 = *(v0 + 296);
      v70 = *(v0 + 288);
      v72 = *(v0 + 304);
      v28 = *(v0 + 168);
      v29 = *(v0 + 152);
      v67 = *(v0 + 160);
      v68 = *(v0 + 176);
      v31 = *(v0 + 136);
      v30 = *(v0 + 144);

      (*(v30 + 8))(v29, v31);
      sub_226D66DFC();
      sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528]);
      swift_allocError();
      sub_226D6AD1C();
      swift_willThrow();
      (*(v28 + 8))(v68, v67);
      (*(v27 + 8))(v72, v70);
    }

    else
    {
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    }

LABEL_17:
    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    v44 = *(v0 + 304);
    v46 = *(v0 + 272);
    v45 = *(v0 + 280);
    v47 = *(v0 + 240);
    v49 = *(v0 + 208);
    v48 = *(v0 + 216);
    v50 = *(v0 + 176);
    v51 = *(v0 + 184);
    v73 = *(v0 + 152);

    v66 = *(v0 + 8);
    goto LABEL_18;
  }

  if (*(v0 + 480))
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_28105F710);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Failed to insert token into local store, Wallet has been deleted.", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);

    sub_226B4E26C();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    (*(v9 + 8))(v10, v11);

    goto LABEL_17;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v32 = sub_226D6E07C();
  __swift_project_value_buffer(v32, qword_28105F710);
  v33 = sub_226D6E05C();
  v34 = sub_226D6E9CC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_226AB4000, v33, v34, "Failed to insert token, overlaps with existing tokens.", v35, 2u);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  v36 = *(v0 + 120);
  v37 = *(v0 + 128);

  v38 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v39 = *(v38 + 8);
  sub_226D6BAAC();
  v40 = sub_226D676AC();

  v41 = swift_task_alloc();
  *(v41 + 16) = v37;
  *(v41 + 24) = v40;
  sub_226D6EB7C();

  v53 = *(v0 + 120);
  v54 = *(v0 + 128);
  v55 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v56 = *(v55 + 8);
  sub_226D6BAAC();
  v57 = sub_226D676AC();

  v58 = swift_task_alloc();
  *(v58 + 16) = v54;
  *(v58 + 24) = v57;
  sub_226D6EB7C();
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v60 = *(v0 + 328);
  v59 = *(v0 + 336);
  v61 = *(v0 + 304);
  v63 = *(v0 + 272);
  v62 = *(v0 + 280);
  v64 = *(v0 + 240);
  v65 = *(v0 + 216);
  v69 = *(v0 + 208);
  v71 = *(v0 + 184);
  v74 = *(v0 + 176);
  v75 = *(v0 + 152);

  v66 = *(v0 + 8);
LABEL_18:

  return v66();
}

uint64_t sub_226B489D8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 280);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 416);
  *(v0 + 96) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);

    *(v0 + 104) = v5;
    v17 = v5;
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      v22 = *(v0 + 152);
      v23 = *(v0 + 120);
      v24 = *(v0 + 128);

      (*(v20 + 32))(v19, v18, v21);
      sub_226D6AD2C();
      v25 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v26 = *(v25 + 8);
      sub_226D6BAAC();
      v27 = sub_226D676AC();

      v28 = swift_task_alloc();
      v28[2] = v24;
      v28[3] = v27;
      v28[4] = v22;
      sub_226D6EB7C();
      v29 = *(v0 + 296);
      v72 = *(v0 + 288);
      v74 = *(v0 + 304);
      v30 = *(v0 + 168);
      v31 = *(v0 + 152);
      v69 = *(v0 + 160);
      v70 = *(v0 + 176);
      v33 = *(v0 + 136);
      v32 = *(v0 + 144);

      (*(v32 + 8))(v31, v33);
      sub_226D66DFC();
      sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528]);
      swift_allocError();
      sub_226D6AD1C();
      swift_willThrow();
      (*(v30 + 8))(v70, v69);
      (*(v29 + 8))(v74, v72);
    }

    else
    {
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    }

LABEL_17:
    v45 = *(v0 + 328);
    v44 = *(v0 + 336);
    v46 = *(v0 + 304);
    v48 = *(v0 + 272);
    v47 = *(v0 + 280);
    v49 = *(v0 + 240);
    v51 = *(v0 + 208);
    v50 = *(v0 + 216);
    v52 = *(v0 + 176);
    v53 = *(v0 + 184);
    v75 = *(v0 + 152);

    v68 = *(v0 + 8);
    goto LABEL_18;
  }

  if (*(v0 + 480))
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F710);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Failed to insert token into local store, Wallet has been deleted.", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);

    sub_226B4E26C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    (*(v11 + 8))(v12, v13);

    goto LABEL_17;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v34 = sub_226D6E07C();
  __swift_project_value_buffer(v34, qword_28105F710);
  v35 = sub_226D6E05C();
  v36 = sub_226D6E9CC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_226AB4000, v35, v36, "Failed to insert token, overlaps with existing tokens.", v37, 2u);
    MEMORY[0x22AA8BEE0](v37, -1, -1);
  }

  v38 = *(v0 + 120);
  v39 = *(v0 + 128);

  v40 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  v41 = *(v40 + 8);
  sub_226D6BAAC();
  v42 = sub_226D676AC();

  v43 = swift_task_alloc();
  *(v43 + 16) = v39;
  *(v43 + 24) = v42;
  sub_226D6EB7C();

  v55 = *(v0 + 120);
  v56 = *(v0 + 128);
  v57 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  v58 = *(v57 + 8);
  sub_226D6BAAC();
  v59 = sub_226D676AC();

  v60 = swift_task_alloc();
  *(v60 + 16) = v56;
  *(v60 + 24) = v59;
  sub_226D6EB7C();
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v62 = *(v0 + 328);
  v61 = *(v0 + 336);
  v63 = *(v0 + 304);
  v65 = *(v0 + 272);
  v64 = *(v0 + 280);
  v66 = *(v0 + 240);
  v67 = *(v0 + 216);
  v71 = *(v0 + 208);
  v73 = *(v0 + 184);
  v76 = *(v0 + 176);
  v77 = *(v0 + 152);

  v68 = *(v0 + 8);
LABEL_18:

  return v68();
}

uint64_t sub_226B49138(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_226D684AC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_226D6BCEC();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_226D671FC();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  v3[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B49334, 0, 0);
}

uint64_t sub_226B49334()
{
  v1 = v0[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
  sub_226D6BAAC();
  v4 = sub_226D676AC();
  v0[18] = v4;

  *(swift_task_alloc() + 16) = v4;
  sub_226D6EB8C();
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[4];

  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  sub_226D6EB8C();
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[12];
  v13 = v0[13];

  sub_226AC40E8(v10, v11, &qword_27D7A5FA8, &qword_226D73790);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = v0[16];
  if (v14 == 1)
  {
    v16 = v0[4];
    sub_226AC47B0(v0[16], &qword_27D7A5FA8, &qword_226D73790);
    if (MEMORY[0x22AA83210](*(v16 + 16), *(v16 + 24)))
    {
      v18 = v0[10];
      v17 = v0[11];
      v19 = v0[9];
      v20 = sub_226D6BD1C();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_226D6BD0C();
      (*(v18 + 104))(v17, *MEMORY[0x277CC8128], v19);
      sub_226D6BCFC();

      (*(v18 + 8))(v17, v19);
    }

    v23 = v0[4];
    v24 = __swift_project_boxed_opaque_existential_1(v0[3], v1[3]);
    v25 = v24[5];
    __swift_project_boxed_opaque_existential_1(v24 + 1, v24[4]);
    v26 = sub_226D6C2AC();
    v0[19] = v26;
    v27 = swift_task_alloc();
    v0[20] = v27;
    *(v27 + 16) = v26;
    *(v27 + 24) = v23;
    v28 = *(MEMORY[0x277CC7D90] + 4);
    v29 = swift_task_alloc();
    v0[21] = v29;
    *v29 = v0;
    v29[1] = sub_226B49818;
    v30 = v0[8];
    v31 = v0[6];

    return MEMORY[0x282119B28](v30, &unk_226D737A0, v27, v31);
  }

  else
  {
    v32 = *(v0[13] + 32);
    v32(v0[14], v0[16], v0[12]);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F710);
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226AB4000, v34, v35, "Institution is already on device.", v36, 2u);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    v37 = v0[17];
    v38 = v0[14];
    v39 = v0[12];
    v40 = v0[2];

    sub_226AC47B0(v37, &qword_27D7A5FA8, &qword_226D73790);
    v32(v40, v38, v39);
    v42 = v0[16];
    v41 = v0[17];
    v43 = v0[14];
    v44 = v0[11];
    v45 = v0[8];
    v46 = v0[5];

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_226B49818()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_226B49CB0;
  }

  else
  {
    v4 = sub_226B49948;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B49948()
{
  *(v0 + 184) = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24))[51];
  v1 = *(MEMORY[0x277CC81B8] + 4);

  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_226B49A04;
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);

  return MEMORY[0x28211A638](v4, v3);
}

uint64_t sub_226B49A04()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 40);
  v5 = *v0;

  sub_226AC47B0(v3, &unk_27D7A62F8, &unk_226D73B70);

  return MEMORY[0x2822009F8](sub_226B49B48, 0, 0);
}

uint64_t sub_226B49B48()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[17];
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v18 = v0[19];
  v19 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v5;
  v9[3] = v2;
  v9[4] = v7;
  sub_226D6EB7C();
  sub_226AC47B0(v3, &qword_27D7A5FA8, &qword_226D73790);

  (*(v6 + 8))(v5, v19);
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[8];
  v15 = v0[5];

  v16 = v0[1];

  return v16();
}

uint64_t sub_226B49CB0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  sub_226AC47B0(v2, &qword_27D7A5FA8, &qword_226D73790);
  v3 = *(v0 + 176);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226B49D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_226D6764C();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(type metadata accessor for BankConnectConsentArbitratingConfiguration() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_226D6885C();
  v4[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = *(*(sub_226D6D4AC() - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v12 = *(*(sub_226D68C5C() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B49F74, 0, 0);
}

uint64_t sub_226B49F74()
{
  v1 = *(v0 + 144);
  v18 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v19 = *(v0 + 120);
  v20 = *(v0 + 176);
  v4 = *(v0 + 96);
  v24 = *(v0 + 104);
  v5 = *(v0 + 80);
  v22 = *(v0 + 112);
  v23 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_226AE532C((v7 + 63), v0 + 16);
  v21 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226D682EC();
  sub_226D6829C();
  sub_226D682CC();
  sub_226D682DC();
  sub_226D682AC();
  sub_226D68C3C();
  sub_226D6883C();
  sub_226D6B68C();
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  (*(*(v10 - 8) + 56))(v22, 1, 1, v10);
  (*(v4 + 104))(v24, *MEMORY[0x277CC6D38], v23);
  v11 = *v21;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_226B4A174;
  v13 = *(v0 + 176);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 56);

  return sub_226BA3514(v16, v13, v8, v9, v14, v15, 1);
}

uint64_t sub_226B4A174()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 192) = v0;

  (*(v8 + 8))(v7, v9);
  sub_226B4E318(v6, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_226B4A43C;
  }

  else
  {
    v10 = sub_226B4A378;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226B4A378()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226B4A43C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v8 = v0[1];
  v9 = v0[24];

  return v8();
}

uint64_t sub_226B4A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = sub_226D6BE1C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_226D6B9BC();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v12 = sub_226D6D4AC();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4A6CC, 0, 0);
}

uint64_t sub_226B4A6CC()
{
  v68 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v3 + 8);
  sub_226D6BAAC();
  v5 = sub_226D676AC();
  *(v0 + 160) = v5;

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E88, &unk_226D73770);
  sub_226D6EB8C();
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);

  v14 = *(v0 + 16);
  *(v0 + 168) = v14;
  sub_226D6D46C();
  sub_226D671CC();
  sub_226D6D3DC();
  v15 = *(v11 + 8);
  *(v0 + 176) = v15;
  *(v0 + 184) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v7, v10);
  v16 = __swift_project_boxed_opaque_existential_1(v13, v1[3]);
  v67[3] = &type metadata for BankConnectEnvironmentImplementation;
  v67[4] = sub_226B41FC0();
  v67[0] = swift_allocObject();
  sub_226B42014(v16, v67[0] + 16);
  v17 = sub_226D6BE3C();
  *(v0 + 192) = v17;
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_226D6BDFC();
  *(v0 + 200) = v20;
  *(v0 + 24) = v20;
  v21 = *(v14 + 16);
  *(v0 + 208) = v21;
  if (v21)
  {
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    v24 = *(v23 + 16);
    v23 += 16;
    v25 = *(v23 + 64);
    *(v0 + 272) = v25;
    *(v0 + 216) = *(v23 + 56);
    *(v0 + 224) = v24;
    *(v0 + 232) = 0;
    v24(*(v0 + 120), *(v0 + 168) + ((v25 + 32) & ~v25), v22);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v29 = *(v0 + 96);
    v30 = sub_226D6E07C();
    *(v0 + 240) = __swift_project_value_buffer(v30, qword_28105F710);
    v26(v27, v28, v29);
    v31 = sub_226D6E05C();
    v32 = sub_226D6E9EC();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 104);
    v34 = *(v0 + 112);
    v36 = *(v0 + 96);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67[0] = v65;
      *v37 = 136315138;
      sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v38 = sub_226D6F1CC();
      v40 = v39;
      v41 = *(v35 + 8);
      v41(v34, v36);
      v42 = sub_226AC4530(v38, v40, v67);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_226AB4000, v31, v32, "Fetching refresh transactions for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x22AA8BEE0](v65, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    else
    {

      v41 = *(v35 + 8);
      v41(v34, v36);
    }

    *(v0 + 248) = v41;
    v54 = *(v0 + 128);
    v55 = *(v0 + 136);
    v56 = *(v0 + 88);
    v57 = *(v0 + 64);
    (*(v55 + 16))(*(v0 + 144), *(v0 + 152), v54);
    (*(v55 + 56))(v57, 1, 1, v54);
    sub_226D6BE0C();
    v58 = *(MEMORY[0x277CC81D8] + 4);
    v59 = swift_task_alloc();
    *(v0 + 256) = v59;
    *v59 = v0;
    v59[1] = sub_226B4AC74;
    v60 = *(v0 + 192);
    v61 = *(v0 + 120);
    v62 = *(v0 + 88);
    v63 = *(v0 + 56);
    v64 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v61, v62, v63, v60, v64);
  }

  else
  {

    v43 = *(v0 + 200);
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);
    v48 = *(v0 + 144);
    v50 = *(v0 + 120);
    v49 = *(v0 + 128);
    v51 = *(v0 + 112);
    v52 = *(v0 + 88);
    v66 = *(v0 + 64);

    v45(v46, v49);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_226B4AC74()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_226B4B1EC;
  }

  else
  {
    v5 = sub_226B4ADDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B4ADDC()
{
  v51 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 232) + 1;
  v3 = (*(v0 + 104) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 248))(*(v0 + 120), *(v0 + 96));
  if (v2 == v1)
  {
    v4 = *(v0 + 168);

    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v48 = *(v0 + 64);

    v7(v8, v11);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 232) + 1;
    *(v0 + 232) = v18;
    v19 = *(v0 + 104) + 16;
    v17(*(v0 + 120), *(v0 + 168) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v18, *(v0 + 96));
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 224);
    v21 = *(v0 + 112);
    v22 = *(v0 + 120);
    v23 = *(v0 + 96);
    v24 = sub_226D6E07C();
    *(v0 + 240) = __swift_project_value_buffer(v24, qword_28105F710);
    v20(v21, v22, v23);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9EC();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v0 + 96);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v31 = 136315138;
      sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v32 = sub_226D6F1CC();
      v34 = v33;
      v35 = *(v29 + 8);
      v35(v28, v30);
      v36 = sub_226AC4530(v32, v34, &v50);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_226AB4000, v25, v26, "Fetching refresh transactions for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x22AA8BEE0](v49, -1, -1);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(v28, v30);
    }

    *(v0 + 248) = v35;
    v37 = *(v0 + 128);
    v38 = *(v0 + 136);
    v39 = *(v0 + 88);
    v40 = *(v0 + 64);
    (*(v38 + 16))(*(v0 + 144), *(v0 + 152), v37);
    (*(v38 + 56))(v40, 1, 1, v37);
    sub_226D6BE0C();
    v41 = *(MEMORY[0x277CC81D8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 256) = v42;
    *v42 = v0;
    v42[1] = sub_226B4AC74;
    v43 = *(v0 + 192);
    v44 = *(v0 + 120);
    v45 = *(v0 + 88);
    v46 = *(v0 + 56);
    v47 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v44, v45, v46, v43, v47);
  }
}

uint64_t sub_226B4B1EC()
{
  v62 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 264);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to refresh transactions: %@", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 232) + 1;
  v14 = (*(v0 + 104) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 248))(*(v0 + 120), *(v0 + 96));
  if (v13 == v12)
  {
    v15 = *(v0 + 168);

    v16 = *(v0 + 200);
    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);
    v59 = *(v0 + 64);

    v18(v19, v22);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 224);
    v29 = *(v0 + 232) + 1;
    *(v0 + 232) = v29;
    v30 = *(v0 + 104) + 16;
    v28(*(v0 + 120), *(v0 + 168) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v29, *(v0 + 96));
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 224);
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = *(v0 + 96);
    v35 = sub_226D6E07C();
    *(v0 + 240) = __swift_project_value_buffer(v35, qword_28105F710);
    v31(v32, v33, v34);
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9EC();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 104);
    v39 = *(v0 + 112);
    v41 = *(v0 + 96);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v60;
      *v42 = 136315138;
      sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v43 = sub_226D6F1CC();
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v39, v41);
      v47 = sub_226AC4530(v43, v45, &v61);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_226AB4000, v36, v37, "Fetching refresh transactions for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x22AA8BEE0](v60, -1, -1);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
    }

    else
    {

      v46 = *(v40 + 8);
      v46(v39, v41);
    }

    *(v0 + 248) = v46;
    v48 = *(v0 + 128);
    v49 = *(v0 + 136);
    v50 = *(v0 + 88);
    v51 = *(v0 + 64);
    (*(v49 + 16))(*(v0 + 144), *(v0 + 152), v48);
    (*(v49 + 56))(v51, 1, 1, v48);
    sub_226D6BE0C();
    v52 = *(MEMORY[0x277CC81D8] + 4);
    v53 = swift_task_alloc();
    *(v0 + 256) = v53;
    *v53 = v0;
    v53[1] = sub_226B4AC74;
    v54 = *(v0 + 192);
    v55 = *(v0 + 120);
    v56 = *(v0 + 88);
    v57 = *(v0 + 56);
    v58 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v55, v56, v57, v54, v58);
  }
}

void sub_226B4B6E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  sub_226D671BC();
  if (v13)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F710);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9EC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226AB4000, v15, v16, "No first request window set, scheduling the fetching of historical transaction data for all granted accounts.", v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    v18 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v19 = *(v18 + 8);
    sub_226D6BAAC();
    v20 = sub_226D676AC();

    MEMORY[0x28223BE20](v21);
    *(&v37 - 2) = v20;
    *(&v37 - 1) = a1;
    sub_226D6EB7C();
LABEL_13:

    return;
  }

  sub_226D6829C();
  sub_226D6D3DC();
  v22 = *(v6 + 8);
  v22(v10, v5);
  sub_226D6D46C();
  sub_226B4E6C8(&qword_27D7A66D8, MEMORY[0x277CC9578]);
  v23 = sub_226D6E33C();
  v22(v10, v5);
  if (v23)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v24 = sub_226D6E07C();
    __swift_project_value_buffer(v24, qword_28105F710);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = v22;
      v28 = v27;
      *v27 = 0;
      _os_log_impl(&dword_226AB4000, v25, v26, "First request window has not expired, scheduling the fetching of historical transaction data for all granted accounts.", v27, 2u);
      v29 = v28;
      v22 = v38;
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    v30 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v31 = *(v30 + 8);
    sub_226D6BAAC();
    v20 = sub_226D676AC();

    MEMORY[0x28223BE20](v32);
    *(&v37 - 2) = v20;
    *(&v37 - 1) = a1;
    sub_226D6EB7C();
    v22(v12, v5);
    goto LABEL_13;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v33 = sub_226D6E07C();
  __swift_project_value_buffer(v33, qword_28105F710);
  v34 = sub_226D6E05C();
  v35 = sub_226D6E9EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_226AB4000, v34, v35, "First request window has expired, no historical data fetch scheduled for all granted accounts.", v36, 2u);
    MEMORY[0x22AA8BEE0](v36, -1, -1);
  }

  v22(v12, v5);
}

id sub_226B4BBF4(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() currentQueryGenerationToken];
  v7[0] = 0;
  v3 = [a1 setQueryGenerationFromToken:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B4BCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_226D6842C();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  result = sub_226D683EC();
  if (!v2)
  {
    if (result)
    {
      sub_226D6720C();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = sub_226D671FC();
    return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
  }

  return result;
}

uint64_t sub_226B4BD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6C5FC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4BE4C, 0, 0);
}

uint64_t sub_226B4BE4C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  sub_226D6C5EC();
  v5 = *(MEMORY[0x277CC7D30] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_226B4BF14;
  v7 = v0[7];
  v8 = v0[2];
  v9 = v0[3];

  return MEMORY[0x282119AC8](v8, v7);
}

uint64_t sub_226B4BF14()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B4C0BC, 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_226B4C0BC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_226B4C120(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29[0] = a3;
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D684AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D671FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6AA6C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_226D6AA5C();
  (*(v6 + 16))(v9, a1, v5);
  sub_226D671EC();
  v18 = v29[1];
  v19 = sub_226D6AA3C();
  if (v18)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v20 = v19;
    (*(v11 + 8))(v14, v10);

    v30[0] = 0;
    if ([a2 save_])
    {
      v21 = qword_28105F708;
      v22 = v30[0];
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_226D6E07C();
      __swift_project_value_buffer(v23, qword_28105F710);
      v24 = sub_226D6E05C();
      v25 = sub_226D6E9EC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_226AB4000, v24, v25, "Institution added to device successfully.", v26, 2u);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
      }

      sub_226D6720C();
    }

    else
    {
      v27 = v30[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_226B4C450(void *a1)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v57 = sub_226D6B9BC();
  v3 = *(v57 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v57);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v45 - v8;
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v61[0] = 0;
  v58 = a1;
  LODWORD(a1) = [a1 setQueryGenerationFromToken:v9 error:v61];

  v10 = v61[0];
  if (a1)
  {
    v11 = sub_226D69F0C();
    v12 = v10;
    sub_226D682EC();
    v13 = sub_226D69EFC();
    if (v1)
    {
    }

    else
    {
      v16 = v13;
      v60 = 0;

      if (v16 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
      {
        v46 = v7;
        v7 = 0;
        v54 = v16 & 0xFFFFFFFFFFFFFF8;
        v55 = v16 & 0xC000000000000001;
        v56 = (v3 + 8);
        *&v17 = 136315394;
        v45 = v17;
        v3 = v52;
        v51 = v11;
        while (1)
        {
          if (v55)
          {
            v35 = MEMORY[0x22AA8AFD0](v7, v16);
          }

          else
          {
            if (v7 >= *(v54 + 16))
            {
              goto LABEL_24;
            }

            v35 = *(v16 + 8 * v7 + 32);
          }

          v33 = v35;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v59 = (v7 + 1);
          sub_226D68E6C();
          sub_226D69D5C();
          v36 = v60;
          v37 = sub_226D68E2C();
          if (v36)
          {
            (*v56)(v3, v57);

            goto LABEL_5;
          }

          v38 = v37;
          v60 = 0;
          v11 = *v56;
          (*v56)(v3, v57);
          if (v38)
          {
            sub_226D69EDC();
            if (qword_28105F708 != -1)
            {
              swift_once();
            }

            v39 = sub_226D6E07C();
            __swift_project_value_buffer(v39, qword_28105F710);
            v33 = v33;
            v40 = v38;
            v41 = sub_226D6E05C();
            v42 = sub_226D6E9EC();

            v53 = v42;
            if (os_log_type_enabled(v41, v42))
            {
              v19 = swift_slowAlloc();
              v47 = v40;
              v20 = v19;
              v50 = swift_slowAlloc();
              v61[0] = v50;
              *v20 = v45;
              v21 = v46;
              v48 = v41;
              sub_226D69D5C();
              sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
              v49 = v33;
              v22 = v57;
              v23 = sub_226D6F1CC();
              v25 = v24;
              v26 = v21;
              v3 = v52;
              v11(v26, v22);
              v27 = sub_226AC4530(v23, v25, v61);

              *(v20 + 4) = v27;
              *(v20 + 12) = 2080;
              v11 = v47;
              v28 = [v47 fpanID];
              v29 = sub_226D6E39C();
              v31 = v30;

              v32 = sub_226AC4530(v29, v31, v61);

              *(v20 + 14) = v32;
              v33 = v48;
              _os_log_impl(&dword_226AB4000, v48, v53, "Linked %s with fpanID %s.", v20, 0x16u);
              v34 = v50;
              swift_arrayDestroy();
              MEMORY[0x22AA8BEE0](v34, -1, -1);
              MEMORY[0x22AA8BEE0](v20, -1, -1);
            }

            else
            {
            }
          }

          ++v7;
          if (v59 == i)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }

LABEL_26:

      v61[0] = 0;
      if ([v58 save_])
      {
        v43 = v61[0];
      }

      else
      {
        v44 = v61[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  else
  {
    v14 = v61[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_5:
  v15 = *MEMORY[0x277D85DE8];
}

id sub_226B4CA0C(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v26[0] = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:v26];

  v10 = v26[0];
  if (!v9)
  {
    v14 = v26[0];
    sub_226D6D04C();

LABEL_5:
    result = swift_willThrow();
    goto LABEL_6;
  }

  sub_226D69F0C();
  v11 = v10;
  sub_226D682EC();
  v12 = sub_226D69EFC();
  if (!v1)
  {
    v16 = v12;

    v24 = 0;
    v25 = a1;
    if (v16 >> 62)
    {
      v17 = sub_226D6EDFC();
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_9:
        if (v17 < 1)
        {
          __break(1u);
        }

        v18 = 0;
        v19 = (v4 + 8);
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x22AA8AFD0](v18, v16);
          }

          else
          {
            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;
          ++v18;
          sub_226D6D46C();
          v22 = sub_226D6D3EC();
          (*v19)(v7, v3);
          [v21 setEarliestHistoricalTransactionsRequestStartDate_];
        }

        while (v17 != v18);
      }
    }

    v26[0] = 0;
    if ([v25 save_])
    {
      result = v26[0];
      goto LABEL_6;
    }

    v23 = v26[0];
    sub_226D6D04C();

    goto LABEL_5;
  }

LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B4CCD0@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v2 = sub_226D6B9BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  sub_226D69F0C();
  sub_226D682EC();
  v10 = sub_226D69EFC();
  if (v1)
  {
  }

  v12 = v26;
  v27 = v2;
  v13 = v10;

  v14 = v13;
  if (v13 >> 62)
  {
    v15 = sub_226D6EDFC();
    v14 = v13;
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v27;
  if (v15)
  {
    v28 = v14;
    v25 = 0;
    v29 = MEMORY[0x277D84F90];
    result = sub_226AE2090(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
    }

    else
    {
      v17 = v29;
      if ((v28 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v15; ++i)
        {
          MEMORY[0x22AA8AFD0](i, v28);
          sub_226D69D5C();
          swift_unknownObjectRelease();
          v29 = v17;
          v20 = *(v17 + 16);
          v19 = *(v17 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_226AE2090(v19 > 1, v20 + 1, 1);
            v17 = v29;
          }

          *(v17 + 16) = v20 + 1;
          (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v9, v27);
        }
      }

      else
      {
        v27 = v3 + 32;
        v21 = 32;
        do
        {
          v22 = *(v28 + v21);
          sub_226D69D5C();

          v29 = v17;
          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_226AE2090(v23 > 1, v24 + 1, 1);
            v17 = v29;
          }

          *(v17 + 16) = v24 + 1;
          (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v7, v16);
          v21 += 8;
          --v15;
        }

        while (v15);
      }

      *v26 = v17;
    }
  }

  else
  {

    *v12 = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_226B4CFF0(uint64_t *a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  sub_226D6996C();
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_226D6991C();
  if (v2 || (v9 = v7) == 0)
  {
LABEL_2:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  sub_226D6995C();
  if ([a2 hasChanges])
  {
    v18[0] = 0;
    if ([a2 save_])
    {
      v10 = qword_28105F708;
      v11 = v18[0];
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_226D6E07C();
      __swift_project_value_buffer(v12, qword_28105F710);
      v13 = sub_226D6E05C();
      v14 = sub_226D6E9EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_226AB4000, v13, v14, "Pending consent token updated with refreshed token.", v15, 2u);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
      }
    }

    else
    {
      v17 = v18[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    goto LABEL_2;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_226B4D1E4(uint64_t *a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  sub_226D6996C();
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_226D6991C();
  if (!v2)
  {
    v9 = v7;
    if (v7)
    {
      [a2 deleteObject_];
      v17[0] = 0;
      if ([a2 save_])
      {
        v10 = qword_28105F708;
        v11 = v17[0];
        if (v10 != -1)
        {
          swift_once();
        }

        v12 = sub_226D6E07C();
        __swift_project_value_buffer(v12, qword_28105F710);
        v13 = sub_226D6E05C();
        v14 = sub_226D6E9EC();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_226AB4000, v13, v14, "Pending consent token deleted. Processing complete.", v15, 2u);
          MEMORY[0x22AA8BEE0](v15, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v16 = v17[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_226B4D3B0(void *a1, uint64_t *a2, uint64_t a3)
{
  v54 = a3;
  v56[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for BankConnectPendingConsentProcessingTask();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_226D6D4AC();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D66DFC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() currentQueryGenerationToken];
  v56[0] = 0;
  v18 = [a1 setQueryGenerationFromToken:v17 error:v56];

  v19 = v56[0];
  if (!v18)
  {
    v33 = v56[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v9;
  v52 = v8;
  sub_226D6996C();
  v20 = a1;
  v21 = *a2;
  v22 = a2[1];
  v23 = v19;
  v24 = v55;
  v25 = sub_226D6991C();
  if (!v24)
  {
    v26 = v25;
    if (v25)
    {
      sub_226B4E088(v54, v16, MEMORY[0x277CC6528]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_226B4E318(v16, MEMORY[0x277CC6528]);
      if (EnumCaseMultiPayload == 7)
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v28 = sub_226D6E07C();
        __swift_project_value_buffer(v28, qword_28105F710);
        v29 = sub_226D6E05C();
        v30 = sub_226D6E9CC();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_23;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "Underlying OAuth grant is invalid. Deleting.";
        goto LABEL_22;
      }

      if ([v26 consentValidationAttemptCount] >= 5)
      {
        if (qword_28105F708 == -1)
        {
LABEL_20:
          v47 = sub_226D6E07C();
          __swift_project_value_buffer(v47, qword_28105F710);
          v29 = sub_226D6E05C();
          v30 = sub_226D6E9CC();
          if (!os_log_type_enabled(v29, v30))
          {
LABEL_23:

            [v20 deleteObject_];
            goto LABEL_24;
          }

          v31 = swift_slowAlloc();
          *v31 = 0;
          v32 = "Pending consent hit maximum attempts to validate. Deleting.";
LABEL_22:
          _os_log_impl(&dword_226AB4000, v29, v30, v32, v31, 2u);
          MEMORY[0x22AA8BEE0](v31, -1, -1);
          goto LABEL_23;
        }
      }

      else
      {
        v45 = [v26 consentValidationAttemptCount];
        if (!__OFADD__(v45, 1))
        {
          [v26 setConsentValidationAttemptCount_];
          sub_226D6D46C();
          v46 = sub_226D6D3EC();
          (*(v53 + 8))(v12, v51);
          [v26 setLastConsentValidationAttemptDate_];

LABEL_24:
          v56[0] = 0;
          if ([v20 save_])
          {
            v48 = v56[0];
          }

          else
          {
            v49 = v56[0];
            sub_226D6D04C();

            swift_willThrow();
          }

          goto LABEL_10;
        }

        __break(1u);
      }

      swift_once();
      goto LABEL_20;
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v35 = sub_226D6E07C();
    __swift_project_value_buffer(v35, qword_28105F710);
    v36 = v52;
    sub_226B4E088(a2, v52, type metadata accessor for BankConnectPendingConsentProcessingTask);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9AC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v39 = 136315138;
      v41 = v36;
      v42 = *v36;
      v43 = *(v41 + 8);

      sub_226B4E318(v41, type metadata accessor for BankConnectPendingConsentProcessingTask);
      v44 = sub_226AC4530(v42, v43, v56);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_226AB4000, v37, v38, "Pending consent not found with consentID: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x22AA8BEE0](v40, -1, -1);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
    }

    else
    {

      sub_226B4E318(v36, type metadata accessor for BankConnectPendingConsentProcessingTask);
    }
  }

LABEL_10:
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B4DA00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B44534(a1);
}

uint64_t sub_226B4DA94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B451A4(a1, a2);
}

uint64_t sub_226B4DB38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B4DB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v1 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71840;
  v5 = (v4 + v3);
  v6 = *v0;
  v7 = v0[1];
  *v5 = v6;
  v5[1] = v7;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  v8 = sub_226B1ED68(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_226B4DCBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226B4DCDC, 0, 0);
}

uint64_t sub_226B4DCDC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277CC6558] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_226B4DDBC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v3, "bankConnect/pendingConsentProcessingTask", 40, 2, &unk_226D737B0, v1, v4);
}

uint64_t sub_226B4DDBC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_226B0BBD0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_226B0BBB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B4DF6C(uint64_t a1)
{
  result = sub_226B4E6C8(&qword_27D7A6E60, type metadata accessor for BankConnectPendingConsentProcessingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectPendingConsentProcessingTask()
{
  result = qword_27D7A6EA0;
  if (!qword_27D7A6EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B4E010(uint64_t a1)
{
  result = sub_226B4E6C8(&qword_27D7A6E70, type metadata accessor for BankConnectPendingConsentProcessingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B4E088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B4E10C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D682FC() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BankConnectPendingConsentProcessingTask() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AD827C;

  return sub_226B49D88(a1, v1 + 16, v1 + v6, v1 + v9);
}

unint64_t sub_226B4E26C()
{
  result = qword_27D7A6E80;
  if (!qword_27D7A6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E80);
  }

  return result;
}

void sub_226B4E2C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_226B4C450(*(v0 + 16));
}

uint64_t sub_226B4E2E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_226B4CCD0(a1);
}

uint64_t sub_226B4E318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B4E3B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B4BD88(a1, v5, v4);
}

uint64_t sub_226B4E47C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B43B6C(a1, v5, v4);
}

uint64_t sub_226B4E528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226B4E5B8()
{
  sub_226B20350();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226B4E644(uint64_t a1)
{
  *(a1 + 8) = sub_226B4E6C8(&qword_27D7A6EB0, type metadata accessor for BankConnectPendingConsentProcessingTask);
  result = sub_226B4E6C8(&qword_27D7A6EB8, type metadata accessor for BankConnectPendingConsentProcessingTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226B4E6C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B4E744(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC0, &unk_226D73820);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v53 - v6;
  v7 = sub_226D6D4AC();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v12 = (&v53 - v11);
  v13 = type metadata accessor for OrderNotificationCenter.Continuation();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s7ChangesVMa(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = (&v53 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED0, &unk_226D73830);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v53 - v25;
  v27 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = (&v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v53 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = (&v53 - v35);
  sub_226AC40E8(v2, v65, &unk_27D7A7660, &unk_226D7B420);
  if (v66)
  {
    v55 = v2;
    v56 = a1;
    sub_226B4FB24(a1, v36, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v37 = *v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
    sub_226B4FBF4(v36 + *(v38 + 48), _s7ChangesVMa);
    sub_226C45EE0(v37);

    sub_226B4FC54(v65);
    v2 = v55;
    a1 = v56;
  }

  else
  {
    sub_226AC47B0(v65, &unk_27D7A7660, &unk_226D7B420);
  }

  v39 = type metadata accessor for ManagedExtractedOrderTracker(0);
  sub_226AC40E8(v2 + *(v39 + 20), v26, &qword_27D7A6ED0, &unk_226D73830);
  v40 = _s21NotificationSchedulerVMa();
  if ((*(*(v40 - 8) + 48))(v26, 1, v40) == 1)
  {
    return sub_226AC47B0(v26, &qword_27D7A6ED0, &unk_226D73830);
  }

  v59 = v16;
  v54 = v4;
  sub_226B4FB24(a1, v34, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
  sub_226B4FB8C(v34 + *(v42 + 48), v21, _s7ChangesVMa);
  v43 = v64;
  sub_226B4FB8C(v21, v64, _s7ChangesVMa);
  sub_226B4FB24(a1, v31, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  v44 = *v31;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
  sub_226B4FBF4(v31 + *(v45 + 48), _s7ChangesVMa);
  if (qword_281061980 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = __swift_project_value_buffer(v60, qword_281064538);
  sub_226AE532C(v47, v12);
  sub_226B4FB24(v47 + *(v46 + 48), v12 + *(v46 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v48 = v59;
  sub_226B4FB8C(v12 + *(v46 + 48), v59, type metadata accessor for OrderNotificationCenter.Continuation);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v49 = v61;
  sub_226D6D46C();
  v50 = sub_226B837F4(v43, v44, v49);
  (*(v62 + 8))(v49, v63);
  if (v50 >> 62)
  {
    if (!sub_226D6EDFC())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    v51 = os_transaction_create();
    v65[0] = v50;
    v65[1] = 0;
    v65[2] = 0;
    v66 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
    v52 = v57;
    sub_226D6E7CC();
    (*(v58 + 8))(v52, v54);
  }

LABEL_11:

  sub_226B4FBF4(v48, type metadata accessor for OrderNotificationCenter.Continuation);
  sub_226B4FBF4(v43, _s7ChangesVMa);
  return sub_226B4FBF4(v26, _s21NotificationSchedulerVMa);
}

void sub_226B4EFDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v101 = a3;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v81 - v12;
  v109 = sub_226D67A8C();
  v111 = *(v109 - 8);
  v13 = *(v111 + 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_226D6B73C();
  v15 = *(v100 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v100);
  v106 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v81 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v81 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  MEMORY[0x28223BE20](v24);
  v93 = &v81 - v27;
  v28 = sub_226D698EC();
  v29 = sub_226AE447C(v28);

  v114 = v29;
  v113[1] = sub_226D6987C();
  v84 = a1;
  v30 = [a1 merchantEmailDateSent];
  if (v30)
  {
    v31 = v30;
    sub_226D6D45C();

    v32 = *(v8 + 56);
    v33 = v26;
    v34 = 0;
  }

  else
  {
    v32 = *(v8 + 56);
    v33 = v26;
    v34 = 1;
  }

  v88 = v32;
  v32(v33, v34, 1, v7);
  sub_226AFD80C(v26, v93, &qword_27D7A8BE0, &unk_226D718F0);
  v99 = *(a2 + 16);
  if (!v99)
  {
    v94 = 0;
    v95 = 0;
LABEL_40:
    sub_226B38644(v114);

    sub_226D698FC();
    sub_226D6988C();
    v75 = v94;
    v76 = v95;
    if (v95)
    {
      v77 = v95;
      v78 = v75;
      sub_226D698DC();

      v76 = v95;
    }

    sub_226AC47B0(v93, &qword_27D7A8BE0, &unk_226D718F0);
    v79 = v76;
    v80 = v75;
    goto LABEL_44;
  }

  v35 = sub_226D67B3C();
  v36 = 0;
  v95 = 0;
  v94 = 0;
  v37 = *(v35 - 8);
  v107 = (v111 + 8);
  v83 = (v8 + 32);
  v86 = v8 + 56;
  v82 = (v8 + 48);
  v85 = (v8 + 8);
  v96 = (v15 + 8);
  v98 = a2 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v97 = *(v37 + 72);
  v87 = v7;
LABEL_8:
  sub_226D6B72C();
  v38 = sub_226D6B71C();
  if (v4)
  {
    (*v96)(v106, v100);
    sub_226AC47B0(v93, &qword_27D7A8BE0, &unk_226D718F0);

    v79 = v95;
    v80 = v94;
LABEL_44:
    sub_226B5074C(v79, v80);
    return;
  }

  v40 = v39;
  v105 = 0;
  v41 = v38;
  sub_226C25988(v113, v41);

  sub_226B04214(v42);
  v103 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_226D6EDBC();
    sub_226D6C02C();
    sub_226B509FC(&qword_27D7A6820, MEMORY[0x277CC81E0]);
    sub_226D6E8DC();
    v40 = v113[2];
    v43 = v113[3];
    v44 = v113[4];
    v45 = v113[5];
    v46 = v113[6];
  }

  else
  {
    v47 = -1 << *(v40 + 32);
    v43 = (v40 + 56);
    v48 = ~v47;
    v49 = -v47;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v46 = (v50 & *(v40 + 56));

    v44 = v48;
    v45 = 0;
  }

  v104 = v36 + 1;
  v102 = v44;
  v51 = (v44 + 64) >> 6;
  v52 = v41;
  v111 = v41;
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_22:
    v58 = sub_226D6EE2C();
    if (!v58)
    {
      goto LABEL_6;
    }

    v112 = v58;
    sub_226D6C02C();
    swift_dynamicCast();
    v57 = v113[0];
    v55 = v45;
    v56 = v46;
    if (!v113[0])
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v53 = v45;
    v54 = v46;
    v55 = v45;
    if (!v46)
    {
      break;
    }

LABEL_20:
    v56 = (v54 - 1) & v54;
    v57 = *(*(v40 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
    if (!v57)
    {
LABEL_6:
      sub_226AD3C20();

      (*v96)(v106, v100);
      v36 = v104;
      v4 = v105;
LABEL_7:
      if (v36 == v99)
      {
        goto LABEL_40;
      }

      goto LABEL_8;
    }

LABEL_24:
    v110 = v46;
    v59 = v57;
    v60 = v108;
    sub_226D6C01C();
    v61 = sub_226D67A7C();
    (*v107)(v60, v109);

    if (v61)
    {
      v91 = v59;
      sub_226AD3C20();
      if (v95)
      {
        v62 = [v94 dateSent];
        v63 = v90;
        sub_226D6D45C();

        v64 = *v83;
        v65 = v92;
        v66 = v87;
        (*v83)(v92, v63, v87);
        v88(v65, 0, 1, v66);
        v67 = v89;
        v64(v89, v65, v66);
        v36 = v104;
        v4 = v105;
      }

      else
      {
        v66 = v87;
        v88(v92, 1, 1, v87);
        v68 = v81;
        sub_226AC40E8(v93, v81, &qword_27D7A8BE0, &unk_226D718F0);
        v69 = *v82;
        v70 = (*v82)(v68, 1, v66);
        v4 = v105;
        v63 = v90;
        v67 = v89;
        if (v70 == 1)
        {
          sub_226D6D3AC();
          v71 = v69(v68, 1, v66);
          v36 = v104;
          if (v71 != 1)
          {
            sub_226AC47B0(v68, &qword_27D7A8BE0, &unk_226D718F0);
          }
        }

        else
        {
          (*v83)(v89, v68, v66);
          v36 = v104;
        }

        if (v69(v92, 1, v66) != 1)
        {
          sub_226AC47B0(v92, &qword_27D7A8BE0, &unk_226D718F0);
        }
      }

      v72 = v111;
      v73 = [v111 dateSent];
      sub_226D6D45C();

      LOBYTE(v73) = sub_226D6D40C();
      v74 = *v85;
      (*v85)(v63, v66);
      v74(v67, v66);
      (*v96)(v106, v100);

      if (v73)
      {
        sub_226B5074C(v95, v94);
        v94 = v72;
        v95 = v91;
      }

      else
      {
      }

      goto LABEL_7;
    }

    v45 = v55;
    v46 = v56;
    v52 = v111;
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v55 = (v53 + 1);
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v51)
    {
      goto LABEL_6;
    }

    v54 = v43[v55];
    ++v53;
    if (v54)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_226B4FB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B4FB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B4FBF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B4FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F20, &qword_226D738B8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_226AFD80C(v22, v56, &qword_27D7A6F20, &qword_226D738B8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_226C2FD40(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_226B50A44();
    v49 = sub_226D6E35C();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B50194(uint64_t a1, uint64_t a2)
{
  v43 = _s7ChangesVMa(0);
  v4 = *(*(v43 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v42 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (&v42 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F10, &qword_226D738A8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v42 - v24;
  v26 = (&v42 + *(v23 + 56) - v24);
  sub_226B4FB24(a1, &v42 - v24, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  sub_226B4FB24(a2, v26, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226B4FB24(v25, v18, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v27 = *v18;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v29 = v18 + v28;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v26;
      v13 = v45;
      sub_226B4FB8C(v29, v45, _s7ChangesVMa);
      v31 = v26 + v28;
      v32 = v44;
      sub_226B4FB8C(v31, v44, _s7ChangesVMa);
      sub_226B509B0();
      v33 = sub_226D6EC3C();

      if (v33 & 1) != 0 && (sub_226D6CB3C())
      {
        v34 = *(v43 + 20);
        sub_226D677FC();
        sub_226B509FC(&qword_27D7A6F18, MEMORY[0x277CC6E00]);
        if (sub_226D6CB3C() & 1) != 0 && (sub_226B4FCA8(*&v13[*(v43 + 24)], *(v32 + *(v43 + 24))))
        {
          v35 = v32;
LABEL_15:
          sub_226B4FBF4(v35, _s7ChangesVMa);
          sub_226B4FBF4(v13, _s7ChangesVMa);
          sub_226B4FBF4(v25, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
          return 1;
        }
      }

      v41 = v32;
LABEL_18:
      sub_226B4FBF4(v41, _s7ChangesVMa);
      sub_226B4FBF4(v13, _s7ChangesVMa);
      sub_226B4FBF4(v25, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      return 0;
    }
  }

  else
  {
    sub_226B4FB24(v25, v20, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v27 = *v20;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v29 = v20 + v36;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = *v26;
      sub_226B4FB8C(v29, v13, _s7ChangesVMa);
      sub_226B4FB8C(v26 + v36, v11, _s7ChangesVMa);
      sub_226B509B0();
      v38 = sub_226D6EC3C();

      if (v38 & 1) != 0 && (sub_226D6CB3C())
      {
        v39 = *(v43 + 20);
        sub_226D677FC();
        sub_226B509FC(&qword_27D7A6F18, MEMORY[0x277CC6E00]);
        if (sub_226D6CB3C() & 1) != 0 && (sub_226B4FCA8(*&v13[*(v43 + 24)], *&v11[*(v43 + 24)]))
        {
          v35 = v11;
          goto LABEL_15;
        }
      }

      v41 = v11;
      goto LABEL_18;
    }
  }

  sub_226B4FBF4(v29, _s7ChangesVMa);

  sub_226AC47B0(v25, &qword_27D7A6F10, &qword_226D738A8);
  return 0;
}

void sub_226B5074C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_226B507B4()
{
  sub_226B50838();
  if (v0 <= 0x3F)
  {
    sub_226B50888();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226B50838()
{
  if (!qword_27D7A6730)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6730);
    }
  }
}

void sub_226B50888()
{
  if (!qword_27D7A6EF0)
  {
    _s21NotificationSchedulerVMa();
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6EF0);
    }
  }
}

void sub_226B508E0()
{
  sub_226B50940();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_226B50940()
{
  if (!qword_27D7A6F08)
  {
    sub_226D6990C();
    _s7ChangesVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A6F08);
    }
  }
}

unint64_t sub_226B509B0()
{
  result = qword_27D7A6580;
  if (!qword_27D7A6580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6580);
  }

  return result;
}

uint64_t sub_226B509FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226B50A44()
{
  result = qword_27D7A6F30;
  if (!qword_27D7A6F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6A30, &qword_226D738B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F30);
  }

  return result;
}

unint64_t sub_226B50ABC()
{
  result = qword_27D7A6F38;
  if (!qword_27D7A6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F38);
  }

  return result;
}

size_t sub_226B50B10@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for OfflineLabAccountInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - v9;
  sub_226D69F0C();
  result = sub_226D6EBBC();
  if (v1)
  {
    return result;
  }

  v36[1] = 0;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a1 = MEMORY[0x277D84F90];
    return result;
  }

  v35 = result;
  v12 = sub_226D6EDFC();
  result = v35;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v38 = v4;
  v13 = result;
  v39 = MEMORY[0x277D84F90];
  result = sub_226AE21A0(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v36[0] = a1;
    v14 = v39;
    v15 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = v15;
        MEMORY[0x22AA8AFD0](v16);
        sub_226D69D5C();
        v18 = sub_226D69DCC();
        v20 = v19;
        v21 = &v10[*(v3 + 24)];
        sub_226D6D39C();
        swift_unknownObjectRelease();
        v22 = &v10[*(v3 + 20)];
        *v22 = v18;
        v22[1] = v20;
        v39 = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_226AE21A0(v23 > 1, v24 + 1, 1);
          v14 = v39;
        }

        ++v16;
        *(v14 + 16) = v24 + 1;
        sub_226B51660(v10, v14 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v24);
        v15 = v17;
      }

      while (v12 != v16);
    }

    else
    {
      v37 = v13;
      v25 = 32;
      v26 = v38;
      do
      {
        v27 = *(v37 + v25);
        sub_226D69D5C();
        v28 = sub_226D69DCC();
        v30 = v29;
        v31 = &v8[*(v3 + 24)];
        sub_226D6D39C();

        v32 = &v8[*(v3 + 20)];
        *v32 = v28;
        v32[1] = v30;
        v39 = v14;
        v34 = *(v14 + 16);
        v33 = *(v14 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_226AE21A0(v33 > 1, v34 + 1, 1);
          v14 = v39;
        }

        *(v14 + 16) = v34 + 1;
        sub_226B51660(v8, v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v34);
        v25 += 8;
        --v12;
      }

      while (v12);
    }

    *v36[0] = v14;
  }

  return result;
}

void sub_226B50E34()
{
  v1 = *v0;
  sub_226D69F0C();
  v2 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F40, &qword_226D739F0);
  sub_226D6EB8C();
}

uint64_t sub_226B50ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 232) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = sub_226D6D09C();
  *(v5 + 144) = v6;
  v7 = *(v6 - 8);
  *(v5 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v9 = sub_226D6D1AC();
  *(v5 + 168) = v9;
  v10 = *(v9 - 8);
  *(v5 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v12 = sub_226D692FC();
  *(v5 + 200) = v12;
  v13 = *(v12 - 8);
  *(v5 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B51070, 0, 0);
}

uint64_t sub_226B51070()
{
  v53 = v0;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F668);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_226AC4530(v7, v6, &v52);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _os_log_impl(&dword_226AB4000, v3, v4, "Performing lab dry-run with filename: %s. Not updating requests table. Force == %{BOOL}d.", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v10 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  sub_226BE2CD0(v10);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 208);
  (*(v14 + 104))(v12, *MEMORY[0x277CC7870], v13);
  v15 = sub_226D692EC();
  v16 = *(v14 + 8);
  v16(v12, v13);
  v16(v11, v13);
  if (v15)
  {
    v17 = *(v0 + 184);
    v48 = *(v0 + 176);
    v49 = *(v0 + 192);
    v51 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v50 = *(v0 + 232);
    v21 = *(v0 + 112);
    v47 = *(v0 + 120);
    v22 = [objc_opt_self() defaultManager];
    v23 = [v22 temporaryDirectory];

    sub_226D6D14C();
    *(v0 + 96) = v21;
    *(v0 + 104) = v47;
    (*(v18 + 104))(v19, *MEMORY[0x277CC91D8], v20);
    sub_226AEEF6C();
    sub_226D6D19C();
    (*(v18 + 8))(v19, v20);
    v24 = *(v48 + 8);
    v24(v17, v51);
    v25 = *(v0 + 128);
    if (v50 == 1)
    {
      *(v0 + 40) = &_s25DryRunAllAccountsProviderVN;
      *(v0 + 48) = &off_283A6B558;
      *(v0 + 16) = v25;
    }

    else
    {
      *(v0 + 40) = &type metadata for OfflineLabAccountProvider;
      *(v0 + 48) = &off_283A726C0;
      v29 = swift_allocObject();
      *(v0 + 16) = v29;
      v29[5] = type metadata accessor for OfflineLabDefaultLogicProvider();
      v29[6] = &off_283A6E4A0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29 + 2);
      sub_226C0639C(boxed_opaque_existential_1);
      v31 = sub_226D6B5EC();
      v32 = MEMORY[0x277CC7F68];
      v29[11] = v31;
      v29[12] = v32;
      __swift_allocate_boxed_opaque_existential_1(v29 + 8);
      sub_226D6B58C();
      v29[7] = v25;
      v29[13] = v25;
      v33 = v25;
      v25 = *(v0 + 128);
    }

    v34 = *(v0 + 192);
    sub_226AE532C(v0 + 16, v0 + 56);
    sub_226C614FC(v25, v0 + 56);
    sub_226C5EA88(v34);

    v35 = sub_226D6E05C();
    v36 = sub_226D6E9CC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226AB4000, v35, v36, "Finished. Exiting without sending http request due to dry-run", v37, 2u);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    v38 = *(v0 + 192);
    v39 = *(v0 + 168);

    v24(v38, v39);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_226AB4000, v26, v27, "Permission is not granted", v28, 2u);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
    }
  }

  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v43 = *(v0 + 184);
  v42 = *(v0 + 192);
  v44 = *(v0 + 160);

  v45 = *(v0 + 8);

  return v45();
}

size_t sub_226B51644@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_226B50B10(a1);
}

uint64_t sub_226B51660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabAccountInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_226D6C3CC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v9 = sub_226D6B82C();
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v6[14] = *(v10 + 64);
  v6[15] = swift_task_alloc();
  v11 = sub_226D6B8CC();
  v6[16] = v11;
  v12 = *(v11 - 8);
  v6[17] = v12;
  v6[18] = *(v12 + 64);
  v6[19] = swift_task_alloc();
  v13 = sub_226D6B8AC();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B518B8, 0, 0);
}

uint64_t sub_226B518B8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[7] + 16), *(v0[7] + 40));
  sub_226D6B8BC();
  v5 = sub_226D6B88C();
  v7 = v6;
  v0[23] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(MEMORY[0x277CC8088] + 4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  v10 = sub_226B41FC0();
  *v9 = v0;
  v9[1] = sub_226B519CC;

  return MEMORY[0x28211A3F8](v5, v7, &type metadata for BankConnectEnvironmentImplementation, v10);
}

uint64_t sub_226B519CC(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_226B51AEC, 0, 0);
}

uint64_t sub_226B51AEC()
{
  v1 = v0[16];
  v2 = v0[17];
  v26 = v1;
  v27 = v0[19];
  v3 = v0[15];
  v24 = v0[18];
  v25 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v28 = v5;
  v6 = v0[11];
  v29 = v3;
  v8 = v0[8];
  v7 = v0[9];
  v30 = v8;
  v31 = v6;
  v9 = v0[6];
  v10 = v0[4];
  v33 = v0[7];
  v34 = v0[5];
  v11 = v0[3];
  (*(v2 + 16))();
  (*(v4 + 16))(v3, v10, v5);
  (*(v7 + 16))(v6, v9, v8);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = (v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v4 + 80) + v13 + 8) & ~*(v4 + 80);
  v15 = (v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v0[26] = v17;
  (*(v2 + 32))(v17 + v12, v27, v26);
  *(v17 + v13) = v33;
  (*(v4 + 32))(v17 + v14, v29, v28);
  *(v17 + v15) = v34;
  (*(v7 + 32))(v17 + v16, v31, v30);
  v18 = *(MEMORY[0x277CC7780] + 4);
  v32 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v19 = swift_task_alloc();
  v0[27] = v19;
  v20 = sub_226D682FC();
  *v19 = v0;
  v19[1] = sub_226B51D50;
  v21 = v0[25];
  v22 = v0[2];

  return v32(v22, &unk_226D73A08, v17, v20);
}

uint64_t sub_226B51D50()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_226B51F08;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_226B51E6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B51E6C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B51F08()
{
  v2 = v0[25];
  v1 = v0[26];

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_27D7A7D10);
  v5 = v3;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to complete connection authorization: %@.", v9, 0xCu);
    sub_226B17298(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v13 = v0[28];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[11];

  v18 = sub_226D6C63C();
  sub_226B53DE0(&qword_27D7A6F48, MEMORY[0x277CC82E8]);
  swift_allocError();
  *v19 = v13;
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277CC82C8], v18);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_226B52174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_226D6764C();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_226D6C3CC();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v13 = *(*(type metadata accessor for BankConnectConsentArbitratingConfiguration() - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v14 = sub_226D671FC();
  v6[25] = v14;
  v15 = *(v14 - 8);
  v6[26] = v15;
  v16 = *(v15 + 64) + 15;
  v6[27] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  v6[28] = v17;
  v18 = *(v17 - 8);
  v6[29] = v18;
  v19 = *(v18 + 64) + 15;
  v6[30] = swift_task_alloc();
  v20 = sub_226D6B8CC();
  v6[31] = v20;
  v21 = *(v20 - 8);
  v6[32] = v21;
  v22 = *(v21 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B523E4, 0, 0);
}

uint64_t sub_226B523E4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  v13 = *(v0 + 120);
  (*(*(v0 + 256) + 16))(v1, *(v0 + 104), *(v0 + 248));
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = *(*(v3 + 8) + 8);
  sub_226D6BA9C();
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v6 = sub_226D6C2AC();
  *(v0 + 272) = v6;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  *(v7 + 32) = v13;
  v8 = *(MEMORY[0x277CC7D90] + 4);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_226B52544;
  v10 = *(v0 + 240);
  v11 = *(v0 + 224);

  return MEMORY[0x282119B28](v10, &unk_226D73A18, v7, v11);
}

uint64_t sub_226B52544()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_226B529B4;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_226B52660;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B52660()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v21 = v0[25];
  v22 = v0[21];
  v25 = v0[20];
  v7 = v0[19];
  v23 = v0[24];
  v24 = v0[18];
  v8 = v0[17];
  v9 = v0[14];

  v10 = __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  sub_226AE532C((v10 + 63), (v0 + 7));
  v11 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_226D6B84C();
  v26 = sub_226D671AC();
  v13 = v12;
  v0[38] = v12;
  (*(v4 + 8))(v3, v21);
  (*(v6 + 16))(v5, v8, v22);
  sub_226B53108(v5, v23);
  (*(v7 + 104))(v25, *MEMORY[0x277CC6D38], v24);
  v14 = *v11;
  v15 = swift_task_alloc();
  v0[39] = v15;
  *v15 = v0;
  v15[1] = sub_226B52804;
  v16 = v0[30];
  v17 = v0[24];
  v18 = v0[20];
  v19 = v0[12];

  return sub_226BA3514(v19, v16, v26, v13, v17, v18, 0);
}

uint64_t sub_226B52804()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 320) = v0;

  (*(v6 + 8))(v5, v7);
  sub_226B53D68(v4);
  if (v0)
  {
    v8 = sub_226B52C3C;
  }

  else
  {
    v8 = sub_226B52A90;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226B529B4()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];

  (*(v4 + 8))(v3, v5);
  v6 = v0[37];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[27];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226B52A90()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_226B52B28;
  v2 = v0[14];

  return sub_226B53364();
}

uint64_t sub_226B52B28()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_226B52E0C;
  }

  else
  {
    v3 = sub_226B52D24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B52C3C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v4 = v0[40];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_226B52D24()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226B52E0C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[12];
  v8 = sub_226D682FC();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[42];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[27];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_226B52F38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D6B8CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_226D6B82C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_226D6C3CC() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226B52174(a1, v1 + v6, v13, v1 + v9, v14, v1 + v12);
}

uint64_t sub_226B53108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6C3CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC8268] || v9 == *MEMORY[0x277CC8258])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    v11 = 0;
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
    return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
  }

  if (v9 == *MEMORY[0x277CC8260])
  {
    (*(v5 + 8))(a1, v4);
    v11 = 1;
    goto LABEL_6;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B53384()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(*(v2 + 8) + 8);
  sub_226D6BAAC();
  v4 = sub_226D676AC();

  *(swift_task_alloc() + 16) = v4;
  sub_226D6EB7C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226B53640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_226D6B82C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_226D6B8AC();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = sub_226D6C80C();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B537CC, 0, 0);
}

uint64_t sub_226B537CC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v15 = v0[9];
  v16 = v0[7];
  v17 = v0[6];
  v18 = v0[16];
  v6 = v0[4];
  v14 = v0[5];
  sub_226D6B8BC();
  sub_226D6B88C();
  v7 = *(v4 + 8);
  v7(v1, v3);
  sub_226D6B8BC();
  sub_226D6B89C();
  v7(v2, v3);
  (*(v5 + 16))(v15, v14, v16);
  sub_226D6B85C();

  sub_226D6C7FC();
  v8 = *(MEMORY[0x277CC7D48] + 4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_226B53968;
  v10 = v0[16];
  v11 = v0[2];
  v12 = v0[3];

  return MEMORY[0x282119AE0](v11, v10);
}

uint64_t sub_226B53968()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *v1;
  v6[18] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B53B34, 0, 0);
  }

  else
  {
    v7 = v6[16];
    v9 = v6[12];
    v8 = v6[13];
    v10 = v6[9];

    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_226B53B34()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

id sub_226B53BC0(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_226D6AF0C();
  result = sub_226D6AEFC();
  if (!v1)
  {
    v7[0] = 0;
    if ([a1 save_])
    {
      result = v7[0];
      v4 = *MEMORY[0x277D85DE8];
      return result;
    }

    v5 = v7[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226B53CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226B53640(a1, v4, v5, v7, v6);
}

uint64_t sub_226B53D68(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectConsentArbitratingConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B53DE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226B53E4C()
{
  v2 = v1;
  v3 = v0;
  v181 = sub_226D6B5EC();
  v180 = *(v181 - 8);
  v4 = *(v180 + 64);
  v5 = MEMORY[0x28223BE20](v181);
  v179 = v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = v172 - v7;
  v177 = sub_226D6707C();
  v194 = *(v177 - 8);
  v8 = *(v194 + 64);
  v9 = MEMORY[0x28223BE20](v177);
  v198 = (v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v199 = (v172 - v11);
  v184 = sub_226D66DBC();
  v183 = *(v184 - 8);
  v12 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v182 = v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6DFCC();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = v172 - v20;
  v22 = v0[2];
  v23 = sub_226D676AC();
  v24 = sub_226D6EB2C();
  v25 = sub_226D6EB3C();
  v191 = v23;
  v190 = sub_226D6EB4C();
  if (!v24 || !v25)
  {
    if (qword_28105F620 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_9;
  }

  v26 = qword_28105F620;
  v173 = v24;
  v174 = v25;
  if (v26 != -1)
  {
    goto LABEL_110;
  }

LABEL_4:
  v186 = v3;
  v27 = sub_226D6E07C();
  __swift_project_value_buffer(v27, qword_28105F628);
  v28 = sub_226D6E05C();
  v29 = sub_226D6E9AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_226AB4000, v28, v29, "Fetching history transactions...", v30, 2u);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
  }

  MEMORY[0x28223BE20](v31);
  v32 = v191;
  v172[-2] = v186;
  v172[-1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  sub_226D6EB8C();
  if (v2)
  {

    v33 = v173;
    v34 = v174;

    return;
  }

  v41 = v205;
  if (v205 >> 62)
  {
    v166 = v205;
    v42 = sub_226D6EDFC();
    v41 = v166;
    if (!v42)
    {
LABEL_112:

      v167 = v173;

      v168 = v174;
      v169 = sub_226D6E05C();
      v170 = sub_226D6E9AC();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        _os_log_impl(&dword_226AB4000, v169, v170, "No transactions, ignoring sync", v171, 2u);
        MEMORY[0x22AA8BEE0](v171, -1, -1);
      }

      return;
    }
  }

  else
  {
    v42 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_112;
    }
  }

  v187 = v41;
  v43 = sub_226D6E05C();
  v44 = sub_226D6E9AC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_226AB4000, v43, v44, "Generating history changeset...", v45, 2u);
    MEMORY[0x22AA8BEE0](v45, -1, -1);
  }

  v188 = v42;

  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v185 = 0;
  v46 = sub_226D6DFFC();
  __swift_project_value_buffer(v46, qword_281064510);
  sub_226D6DFBC();
  v47 = sub_226D6DFDC();
  v24 = sub_226D6EABC();
  if (sub_226D6EC8C())
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v47, v24, v49, "StoreMapping", "", v48, 2u);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
  }

  (v15[2])(v19, v21, v14);
  v50 = sub_226D6E03C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v172[0] = sub_226D6E02C();
  (v15[1])(v21, v14);
  v53 = MEMORY[0x277D84F98];
  v209 = MEMORY[0x277D84F98];
  v2 = 0;
  v25 = 0;
  v208 = sub_226B236A4(MEMORY[0x277D84F90]);
  v189 = v187 & 0xC000000000000001;
  v176 = v187 & 0xFFFFFFFFFFFFFF8;
  v175 = v187 + 32;
  v19 = v198;
  v15 = v199;
  while (1)
  {
    if (v189)
    {
      v55 = MEMORY[0x22AA8AFD0](v25, v187);
      v56 = __OFADD__(v25++, 1);
      if (v56)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v25 >= *(v176 + 16))
      {
        goto LABEL_106;
      }

      v55 = *(v175 + 8 * v25);
      v56 = __OFADD__(v25++, 1);
      if (v56)
      {
        goto LABEL_104;
      }
    }

    v193 = v25;
    v57 = v55;
    v14 = [v55 storeID];
    v24 = sub_226D6E39C();
    v25 = v58;

    v195 = v57;
    v59 = [v57 token];
    if (v59)
    {
      v3 = v59;
      v60 = v209;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = v60;
      v62 = sub_226C2FDD4(v24, v25);
      v64 = v60[2];
      v65 = (v63 & 1) == 0;
      v56 = __OFADD__(v64, v65);
      v66 = v64 + v65;
      if (v56)
      {
        goto LABEL_105;
      }

      v21 = v63;
      if (v60[3] >= v66)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = v62;
          sub_226C38D7C();
          v62 = v14;
          v19 = v198;
          if (v21)
          {
            goto LABEL_40;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_226C32F00(v66, isUniquelyReferenced_nonNull_native);
        v62 = sub_226C2FDD4(v24, v25);
        if ((v21 & 1) != (v67 & 1))
        {
LABEL_115:
          sub_226D6F25C();
          __break(1u);
          return;
        }
      }

      v19 = v198;
      if (v21)
      {
LABEL_40:
        v72 = v62;

        v53 = v205;
        v73 = *(v205 + 56);
        v74 = *(v73 + 8 * v72);
        *(v73 + 8 * v72) = v3;

LABEL_44:
        v209 = v53;
        v54 = v194;
        goto LABEL_45;
      }

LABEL_42:
      v53 = v205;
      *(v205 + 8 * (v62 >> 6) + 64) |= 1 << v62;
      v75 = (v53[6] + 16 * v62);
      *v75 = v24;
      v75[1] = v25;
      *(v53[7] + 8 * v62) = v3;
      v76 = v53[2];
      v56 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v56)
      {
        __break(1u);
        goto LABEL_109;
      }

      v53[2] = v77;
      goto LABEL_44;
    }

    v24 = sub_226C2FDD4(v24, v25);
    v69 = v68;

    v54 = v194;
    if (v69)
    {
      v53 = v209;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = v53;
      if (!v70)
      {
        sub_226C38D7C();
        v53 = v205;
      }

      v71 = *(v53[6] + 16 * v24 + 8);

      sub_226D4AE14(v24, v53);
      v209 = v53;
    }

LABEL_45:
    v78 = [v195 changes];
    if (!v78)
    {
      goto LABEL_22;
    }

    v25 = v78;
    sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
    v79 = sub_226D6E5EC();

    v80 = v79 >> 62 ? sub_226D6EDFC() : *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v192 = v53;
    if (v80)
    {
      break;
    }

LABEL_21:

    v54 = v194;
    v53 = v192;
LABEL_22:
    v25 = v193;

    if (v25 == v188)
    {
      v192 = v53;

      v101 = type metadata accessor for OrderMappingModel();
      v102 = swift_allocObject();
      v103 = sub_226BBB6F8(0, 1, 1, MEMORY[0x277D84F90]);
      v105 = v103[2];
      v104 = v103[3];
      if (v105 >= v104 >> 1)
      {
        v103 = sub_226BBB6F8((v104 > 1), v105 + 1, 1, v103);
      }

      v206 = v101;
      v207 = sub_226B590FC(&qword_2810623D0, type metadata accessor for OrderMappingModel);
      *&v205 = v102;
      v103[2] = v105 + 1;
      sub_226AC484C(&v205, &v103[5 * v105 + 4]);
      v106 = *MEMORY[0x277CC6500];
      v107 = v183;
      v108 = v182;
      v109 = v184;
      v198 = *(v183 + 104);
      v199 = (v183 + 104);
      (v198)(v182, v106, v184);
      v110 = sub_226D66D6C();
      v112 = *(v107 + 8);
      v111 = v107 + 8;
      v197 = v112;
      v112(v108, v109);
      if (v110)
      {
        v113 = v111;
        v114 = type metadata accessor for BankCredentialMappingModel();
        v115 = swift_allocObject();
        v117 = v103[2];
        v116 = v103[3];
        if (v117 >= v116 >> 1)
        {
          v103 = sub_226BBB6F8((v116 > 1), v117 + 1, 1, v103);
        }

        v206 = v114;
        v207 = sub_226B590FC(&qword_27D7A6F70, type metadata accessor for BankCredentialMappingModel);
        *&v205 = v115;
        v103[2] = v117 + 1;
        sub_226AC484C(&v205, &v103[5 * v117 + 4]);
        v109 = v184;
        v111 = v113;
        v108 = v182;
        v54 = v194;
      }

      (v198)(v108, *MEMORY[0x277CC64E8], v109);
      v118 = sub_226D66D6C();
      v197(v108, v109);
      if (v118)
      {
        v196 = v103;
        v183 = v111;
        sub_226D6703C();
        v119 = *(v54 + 104);
        v120 = v19;
        v121 = v15;
        v122 = v19;
        v123 = v177;
        v119(v120, *MEMORY[0x277CC6A80], v177);
        v124 = sub_226D6705C();
        v125 = *(v54 + 8);
        v125(v122, v123);
        v125(v121, v123);
        if (v124 & 1) != 0 || (sub_226D6703C(), v119(v122, *MEMORY[0x277CC6A78], v123), v126 = sub_226D6705C(), v125(v122, v123), v125(v121, v123), (v126))
        {
          matched = type metadata accessor for AccountMatchMappingModel();
          v128 = swift_allocObject();
          v103 = v196;
          v130 = v196[2];
          v129 = v196[3];
          v131 = v130 + 1;
          if (v130 >= v129 >> 1)
          {
            v103 = sub_226BBB6F8((v129 > 1), v130 + 1, 1, v196);
          }

          v206 = matched;
          v207 = sub_226B590FC(&qword_27D7A6F60, type metadata accessor for AccountMatchMappingModel);
          *&v205 = v128;
          v103[2] = v131;
          sub_226AC484C(&v205, &v103[5 * v130 + 4]);
          v132 = type metadata accessor for ConsentMappingModel();
          v133 = swift_allocObject();
          v134 = v103[3];
          if ((v130 + 2) > (v134 >> 1))
          {
            v103 = sub_226BBB6F8((v134 > 1), v130 + 2, 1, v103);
          }

          v206 = v132;
          v207 = sub_226B590FC(&qword_27D7A6F68, type metadata accessor for ConsentMappingModel);
          *&v205 = v133;
          v103[2] = v130 + 2;
          sub_226AC484C(&v205, &v103[5 * v131 + 4]);
          v109 = v184;
          v108 = v182;
        }

        else
        {
LABEL_85:
          v109 = v184;
          v108 = v182;
          v103 = v196;
        }
      }

      (v198)(v108, *MEMORY[0x277CC64F0], v109);
      v135 = sub_226D66D6C();
      v197(v108, v109);
      if (v135)
      {
        v136 = v178;
        sub_226D6B58C();
        v137 = v179;
        sub_226D6B5AC();
        v138 = MEMORY[0x277CC7F68];
        v139 = v181;
        v206 = v181;
        v207 = MEMORY[0x277CC7F68];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v205);
        v141 = v180;
        (*(v180 + 16))(boxed_opaque_existential_1, v136, v139);
        v201 = v139;
        v202 = v138;
        v142 = __swift_allocate_boxed_opaque_existential_1(&v200);
        (*(v141 + 32))(v142, v137, v139);
        (*(v141 + 8))(v136, v139);
        v143 = type metadata accessor for ExtractedOrderUserEventMappingModel();
        v144 = swift_allocObject();
        *(v144 + 16) = v203;
        *(v144 + 32) = v204;
        *(v144 + 40) = &type metadata for TrackedOrderBiomeStream;
        *(v144 + 48) = &off_283A6EDD8;
        sub_226AC484C(&v205, v144 + 56);
        sub_226AC484C(&v200, v144 + 96);
        v146 = v103[2];
        v145 = v103[3];
        v3 = v190;
        if (v146 >= v145 >> 1)
        {
          v103 = sub_226BBB6F8((v145 > 1), v146 + 1, 1, v103);
        }

        v206 = v143;
        v207 = sub_226B590FC(&qword_27D7A6F58, type metadata accessor for ExtractedOrderUserEventMappingModel);
        *&v205 = v144;
        v103[2] = v146 + 1;
        sub_226AC484C(&v205, &v103[5 * v146 + 4]);
      }

      else
      {
        v3 = v190;
      }

      if (v3)
      {
        v147 = v186[3];
        v148 = type metadata accessor for DropboxApplePayOrderMappingModel();
        swift_allocObject();

        v150 = sub_226CA4350(v149, 0);
        v152 = v103[2];
        v151 = v103[3];
        if (v152 >= v151 >> 1)
        {
          v103 = sub_226BBB6F8((v151 > 1), v152 + 1, 1, v103);
        }

        v206 = v148;
        v207 = sub_226B590FC(qword_2810606A0, type metadata accessor for DropboxApplePayOrderMappingModel);
        *&v205 = v150;
        v103[2] = v152 + 1;
        sub_226AC484C(&v205, &v103[5 * v152 + 4]);
      }

      v153 = v103[2];
      v154 = v103;
      if (!v153)
      {
LABEL_100:

        MEMORY[0x28223BE20](v159);
        v172[-6] = &v209;
        v160 = v173;
        v161 = v191;
        v172[-5] = v173;
        v172[-4] = v161;
        v162 = v174;
        v163 = v190;
        v172[-3] = v174;
        v172[-2] = v163;
        sub_226D6EB8C();

        sub_226B55594();

        sub_226AC7B44(v2);
        return;
      }

      v21 = 0;
      v14 = v154;
      v155 = (v154 + 4);
      v19 = &v205;
      v15 = &v208;
      while (v21 < v14[2])
      {
        v156 = sub_226AE532C(v155, &v205);
        v3 = v172;
        MEMORY[0x28223BE20](v156);
        v157 = v186;
        v172[-4] = &v205;
        v172[-3] = v157;
        v172[-2] = &v208;
        v158 = v185;
        sub_226D66E6C();
        v185 = v158;
        if (v158)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v205);

          sub_226B55594();

          v164 = v173;
          v165 = v174;

          sub_226AC7B44(v2);
          return;
        }

        ++v21;
        __swift_destroy_boxed_opaque_existential_0Tm(&v205);
        v155 += 40;
        if (v153 == v21)
        {
          goto LABEL_100;
        }
      }

LABEL_109:
      __break(1u);
LABEL_110:
      swift_once();
      goto LABEL_4;
    }
  }

  v172[1] = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v24 = 0;
  v196 = (v79 & 0xFFFFFFFFFFFFFF8);
  v197 = (v79 & 0xC000000000000001);
  while (1)
  {
    if (v197)
    {
      v81 = MEMORY[0x22AA8AFD0](v24, v79);
    }

    else
    {
      if (v24 >= v196[2])
      {
        goto LABEL_103;
      }

      v81 = *(v79 + 8 * v24 + 32);
    }

    v82 = v81;
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v83 = [v81 changedObjectID];
    sub_226AC7B44(v2);
    v84 = v208;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = v84;
    v86 = sub_226C3015C(v83);
    v88 = v84[2];
    v89 = (v87 & 1) == 0;
    v56 = __OFADD__(v88, v89);
    v90 = v88 + v89;
    if (v56)
    {
      goto LABEL_84;
    }

    v91 = v87;
    if (v84[3] >= v90)
    {
      if ((v85 & 1) == 0)
      {
        v100 = v86;
        sub_226C38C18();
        v86 = v100;
        v84 = v205;
      }
    }

    else
    {
      sub_226C32C90(v90, v85);
      v84 = v205;
      v86 = sub_226C3015C(v83);
      if ((v91 & 1) != (v92 & 1))
      {
        sub_226D6F25C();
        __break(1u);
        goto LABEL_115;
      }
    }

    v15 = v199;
    v208 = v84;
    if ((v91 & 1) == 0)
    {
      break;
    }

LABEL_64:
    v97 = (v84[7] + 8 * v86);
    v98 = v82;
    MEMORY[0x22AA8A610]();
    if (*((*v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v99 = *((*v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
      v15 = v199;
    }

    sub_226D6E65C();

    ++v24;
    v2 = sub_226B55820;
    v19 = v198;
    if (v25 == v80)
    {
      goto LABEL_21;
    }
  }

  v84[(v86 >> 6) + 8] |= 1 << v86;
  *(v84[6] + 8 * v86) = v83;
  *(v84[7] + 8 * v86) = MEMORY[0x277D84F90];
  v93 = v84[2];
  v56 = __OFADD__(v93, 1);
  v94 = v93 + 1;
  if (!v56)
  {
    v84[2] = v94;
    v95 = v86;
    v96 = v83;
    v86 = v95;
    v15 = v199;
    goto LABEL_64;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  swift_once();
LABEL_9:
  v35 = sub_226D6E07C();
  __swift_project_value_buffer(v35, qword_28105F628);
  v36 = sub_226D6E05C();
  v37 = sub_226D6E9CC();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v190;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_226AB4000, v36, v37, "Cloud or local store not found. Cannot apply changes.", v40, 2u);
    MEMORY[0x22AA8BEE0](v40, -1, -1);
  }
}

uint64_t sub_226B55594()
{
  v0 = sub_226D6E00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6DFCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6DFFC();
  __swift_project_value_buffer(v10, qword_281064510);
  v11 = sub_226D6DFDC();
  sub_226D6E01C();
  v12 = sub_226D6EAAC();
  if (sub_226D6EC8C())
  {

    sub_226D6E04C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v11, v12, v15, "StoreMapping", v13, v14, 2u);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226B55830(void *a1, uint64_t a2, uint64_t *a3)
{
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F628);
  sub_226AE532C(a1, v22);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v11 = *(v10 + 8);
    v12 = sub_226D6F1CC();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v15 = sub_226AC4530(v12, v14, &v23);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_226AB4000, v6, v7, "Performing operations for mapping model: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v19 = *a3;

  sub_226B55A30(v20, v18, v16, v17);
}

void sub_226B55A30(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v52 - v11;
  swift_getAssociatedTypeWitness();
  sub_226D6E6AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_226D6EC9C();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v52 - v18;
  v71 = a3;
  v72 = a4;
  v73 = v69;
  v74 = a2;
  v65 = a2;
  swift_getAssociatedConformanceWitness();
  sub_226D6E2EC();
  v20 = v70;
  sub_226B57538();
  if (!v20)
  {
    v70 = 0;
    v63 = v19;
    v64 = v13;
    v60 = v17;
    v55 = a3;
    v56 = a4;
    v21 = 0;
    v23 = v75 + 64;
    v22 = *(v75 + 64);
    v53 = v75;
    v24 = 1 << *(v75 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v61 = TupleTypeMetadata2;
    v59 = TupleTypeMetadata2 - 8;
    v52[1] = v57 + 16;
    v68 = (v57 + 32);
    v62 += 32;
    v54 = (v57 + 8);
    v28 = v58;
    v29 = v66;
    if ((v25 & v22) != 0)
    {
      while (1)
      {
        v30 = v21;
LABEL_13:
        v33 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v34 = v33 | (v30 << 6);
        v35 = v53;
        v36 = v57;
        (*(v57 + 16))(v29, *(v53 + 48) + *(v57 + 72) * v34, AssociatedTypeWitness);
        v37 = *(*(v35 + 56) + 8 * v34);
        v38 = *(v61 + 48);
        v39 = *(v36 + 32);
        v40 = v60;
        v41 = v61;
        v39();
        *&v40[v38] = v37;
        v42 = *(v41 - 8);
        (*(v42 + 56))(v40, 0, 1, v41);

        v69 = v30;
        v28 = v58;
LABEL_14:
        v43 = v63;
        (*v62)(v63, v40, v64);
        if ((*(v42 + 48))(v43, 1, v41) == 1)
        {

          return;
        }

        v44 = v43;
        v45 = *&v43[*(v41 + 48)];
        v46 = (*v68)(v28, v44, AssociatedTypeWitness);
        MEMORY[0x28223BE20](v46);
        v47 = v56;
        v52[-6] = v55;
        v52[-5] = v47;
        v52[-4] = v65;
        v52[-3] = v28;
        v52[-2] = v45;
        v48 = v28;
        v49 = *(v67 + 16);
        v50 = sub_226D676AC();
        v52[-4] = MEMORY[0x28223BE20](v50);
        v52[-3] = sub_226B5A514;
        v52[-2] = &v52[-8];
        v51 = v70;
        sub_226D6EB7C();
        v70 = v51;
        if (v51)
        {
          break;
        }

        (*v54)(v48, AssociatedTypeWitness);
        v21 = v69;
        v28 = v48;
        v29 = v66;
        if (!v26)
        {
          goto LABEL_6;
        }
      }

      (*v54)(v48, AssociatedTypeWitness);
    }

    else
    {
LABEL_6:
      if (v27 <= v21 + 1)
      {
        v31 = v21 + 1;
      }

      else
      {
        v31 = v27;
      }

      v32 = v31 - 1;
      while (1)
      {
        v30 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v30 >= v27)
        {
          v69 = v32;
          v40 = v60;
          v41 = v61;
          v42 = *(v61 - 8);
          (*(v42 + 56))(v60, 1, 1, v61);
          v26 = 0;
          goto LABEL_14;
        }

        v26 = *(v23 + 8 * v30);
        ++v21;
        if (v26)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_226B56090(uint64_t *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v66 = a5;
  v70[1] = *MEMORY[0x277D85DE8];
  v10 = sub_226D6B70C();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = [a2 identifier];
  if (!v19)
  {
    __break(1u);
  }

  v20 = v19;
  v69 = a3;
  v21 = sub_226D6E39C();
  v23 = v22;

  v24 = *a1;
  if (*(*a1 + 16))
  {
    v25 = sub_226C2FDD4(v21, v23);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v25);
      v30 = v67;
      v29 = v68;
      (*(v67 + 104))(v18, *MEMORY[0x277CC7FE8], v68);
      v31 = v28;
      sub_226B5EC38(v31, v18, v69);
      if (v5)
      {
        (*(v30 + 8))(v18, v29);
LABEL_13:

LABEL_29:
        v63 = *MEMORY[0x277D85DE8];
        return;
      }

      (*(v30 + 8))(v18, v29);
    }
  }

  else
  {
  }

  v32 = [a4 identifier];
  if (!v32)
  {
    __break(1u);
    goto LABEL_33;
  }

  v33 = v32;
  v34 = sub_226D6E39C();
  v36 = v35;

  v37 = *a1;
  if (*(*a1 + 16))
  {
    v38 = sub_226C2FDD4(v34, v36);
    v40 = v39;

    if (v40)
    {
      v41 = *(*(v37 + 56) + 8 * v38);
      v43 = v67;
      v42 = v68;
      (*(v67 + 104))(v16, *MEMORY[0x277CC7FF0], v68);
      v31 = v41;
      sub_226B5EC38(v31, v16, v69);
      if (v5)
      {
        (*(v43 + 8))(v16, v42);
        goto LABEL_13;
      }

      (*(v43 + 8))(v16, v42);

      v44 = v66;
      if (!v66)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v44 = v66;
  if (!v66)
  {
LABEL_25:
    v60 = v69;
LABEL_26:
    v70[0] = 0;
    if ([v60 save_])
    {
      v61 = v70[0];
    }

    else
    {
      v62 = v70[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    goto LABEL_29;
  }

LABEL_16:
  v45 = v44;
  v46 = [v45 identifier];
  if (v46)
  {
    v47 = v46;
    v48 = sub_226D6E39C();
    v50 = v49;

    v51 = *a1;
    if (*(*a1 + 16))
    {
      v52 = sub_226C2FDD4(v48, v50);
      v54 = v53;

      if (v54)
      {
        v55 = *(*(v51 + 56) + 8 * v52);
        v57 = v67;
        v56 = v68;
        v58 = v65;
        (*(v67 + 104))(v65, *MEMORY[0x277CC7FF8], v68);
        v59 = v55;
        v60 = v69;
        sub_226B5EC38(v59, v58, v69);
        if (v5)
        {
          (*(v57 + 8))(v58, v56);

          goto LABEL_29;
        }

        (*(v57 + 8))(v58, v56);

        goto LABEL_23;
      }
    }

    else
    {
    }

    v60 = v69;
LABEL_23:

    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_226B56544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v140 = a3;
  v141 = a4;
  v138 = a2;
  v119 = a1;
  v108 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  v8 = *(v127 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v100 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v99 - v11;
  v130 = sub_226D6EC9C();
  v132 = *(v130 - 8);
  v12 = *(v132 + 64);
  v13 = MEMORY[0x28223BE20](v130);
  v112 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v99 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v105 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v99 - v22;
  MEMORY[0x28223BE20](v21);
  v139 = &v99 - v23;
  v24 = sub_226D6EC9C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v135 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - v29;
  v142 = v16;
  v31 = sub_226D6E6AC();
  swift_getTupleTypeMetadata2();
  v32 = sub_226D6E62C();
  v33 = v138;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = AssociatedTypeWitness;
  v106 = v31;
  v104 = AssociatedConformanceWitness;
  v120 = sub_226B59144(v32, AssociatedTypeWitness, v31, AssociatedConformanceWitness);
  v35 = v24;

  v36 = *(v33 + 64);
  v129 = v33 + 64;
  v37 = 1 << *(v33 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v128 = (v37 + 63) >> 6;
  v136 = a5 + 56;
  v137 = a5;
  v133 = (v17 + 48);
  v134 = (v25 + 16);
  v125 = (v17 + 32);
  v118 = a5 + 72;
  v111 = (v132 + 16);
  v110 = (v127 + 48);
  v109 = (v132 + 8);
  v122 = (v17 + 8);
  v132 = v25 + 8;
  v103 = (v127 + 32);
  v102 = (v17 + 16);
  v99 = (v127 + 16);
  v101 = (v127 + 8);

  v115 = 0;
  v114 = 0;
  v117 = 0;
  v116 = 0;
  v40 = 0;
  v123 = v30;
  v124 = v24;
  while (1)
  {
    do
    {
      while (1)
      {
        if (!v39)
        {
          while (1)
          {
            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v42 >= v128)
            {
              goto LABEL_55;
            }

            v39 = *(v129 + 8 * v42);
            ++v40;
            if (v39)
            {
              v40 = v42;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          result = sub_226D6F25C();
          __break(1u);
          return result;
        }

LABEL_10:
        v43 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v44 = *(*(v33 + 56) + ((v40 << 9) | (8 * v43)));
        v45 = v44 >> 62;
        if (v44 >> 62)
        {
          break;
        }

        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }
      }
    }

    while (!sub_226D6EDFC());
    if (!sub_226D6EDFC())
    {
      goto LABEL_65;
    }

    if (!sub_226D6EDFC())
    {
      goto LABEL_64;
    }

LABEL_12:
    if ((v44 & 0xC000000000000001) != 0)
    {

      v47 = MEMORY[0x22AA8AFD0](0, v44);
    }

    else
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v46 = *(v44 + 32);

      v47 = v46;
    }

    v48 = v47;
    if (v45)
    {
      if (!sub_226D6EDFC())
      {
        goto LABEL_61;
      }

      if (sub_226D6EDFC() < 1)
      {
        goto LABEL_62;
      }

      v49 = sub_226D6EDFC();
    }

    else
    {
      v49 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_61;
      }
    }

    v50 = v49 - 1;
    if (__OFSUB__(v49, 1))
    {
      goto LABEL_60;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v45)
      {
        goto LABEL_29;
      }

      v51 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v50 <= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v45)
      {
LABEL_29:
        sub_226D6EDFC();
        goto LABEL_30;
      }

      v51 = v44 & 0xFFFFFFFFFFFFFF8;
    }

    v52 = *(v51 + 16);
LABEL_30:
    v44 = sub_226D6EF3C();
    v51 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_31:

    if (!(v44 >> 62))
    {
      v53 = *(v51 + 16);
      memmove((v51 + 32), (v51 + 40), 8 * v53 - 8);
      v54 = v53 - 1;
      if (__OFSUB__(v53, 1))
      {
        break;
      }

      goto LABEL_33;
    }

    v96 = sub_226D6EDFC();
    if (__OFSUB__(v96, 1))
    {
      goto LABEL_66;
    }

    memmove((v51 + 32), (v51 + 40), 8 * (v96 - 1));
    v97 = sub_226D6EDFC();
    v54 = v97 - 1;
    if (__OFSUB__(v97, 1))
    {
      break;
    }

LABEL_33:
    *(v51 + 16) = v54;
    v55 = v137;
    v56 = v140;
    v57 = v143;
    (*(v137 + 56))(v48, v141, v137);
    v143 = v57;
    if (v57)
    {

      sub_226AC7B44(v115);
      return sub_226AC7B44(v117);
    }

    v58 = v135;
    (*v134)(v135, v30, v35);
    v59 = v142;
    if ((*v133)(v58, 1, v142) == 1)
    {
      v41 = *v132;
      (*v132)(v30, v35);

      v41(v58, v35);
      v33 = v138;
    }

    else
    {
      (*v125)(v139, v58, v59);
      v144 = v44;
      v60 = v141;
      v61 = sub_226B57418(v56, v141, v55);
      v127 = &v99;
      v62 = MEMORY[0x28223BE20](v61);
      v63 = v131;
      *(&v99 - 4) = v60;
      *(&v99 - 3) = v55;
      *(&v99 - 2) = v62;
      *(&v99 - 1) = v64;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F78, &unk_226D758E0);
      sub_226B5A5A4();
      v65 = v143;
      sub_226D6E52C();
      if (v65)
      {

        (*v122)(v139, v142);
        (*v132)(v123, v124);

        sub_226AC7B44(v115);
        result = sub_226AC7B44(v117);
        v143 = v65;
        return result;
      }

      v67 = MEMORY[0x22AA8B6A0](v66);
      v68 = v121;
      (*(v55 + 72))(v63, v119, v60, v55);
      v143 = 0;
      objc_autoreleasePoolPop(v67);
      v69 = v112;
      v70 = v130;
      (*v111)(v112, v68, v130);
      v71 = v113;
      v72 = (*v110)(v69, 1, v113);
      v73 = v142;
      if (v72 == 1)
      {
        v127 = *v109;
        (v127)(v68, v70);
        v74 = *v122;
        v75 = v73;
        (*v122)(v139, v73);
        v77 = v123;
        v76 = v124;
        (*v132)(v123, v124);
        v78 = v69;
        v35 = v76;
        v30 = v77;
        (v127)(v78, v130);
        v74(v131, v75);
        v33 = v138;
      }

      else
      {
        v79 = v107;
        (*v103)(v107, v69, v71);
        v80 = swift_allocObject();
        v81 = v141;
        *(v80 + 16) = v141;
        *(v80 + 24) = v55;
        sub_226AC7B44(v115);
        (*v102)(v105, v131, v73);
        v82 = swift_allocObject();
        v82[2] = v81;
        v82[3] = v55;
        v82[4] = sub_226B5A608;
        v82[5] = v80;
        v114 = v80;
        v126 = v82;
        sub_226AC7B44(v117);
        v83 = v120;
        swift_isUniquelyReferenced_nonNull_native();
        v144 = v83;
        v84 = v104;
        v127 = sub_226B57D54(v79, v71, v104);
        if (__OFADD__(*(v83 + 16), (v85 & 1) == 0))
        {
          goto LABEL_63;
        }

        v86 = v85;
        sub_226D6EFEC();
        v87 = sub_226D6EFCC();
        v88 = v84;
        v30 = v123;
        v35 = v124;
        if (v87)
        {
          v127 = sub_226B57D54(v107, v71, v88);
          v33 = v138;
          v90 = v71;
          if ((v86 & 1) != (v89 & 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          v33 = v138;
          v90 = v71;
        }

        v91 = v142;
        v92 = v144;
        v120 = v144;
        if ((v86 & 1) == 0)
        {
          v93 = *(v126 + 40);
          v144 = (*(v126 + 32))();
          (*v99)(v100, v107, v90);
          sub_226D6EFDC();
          v92 = v120;
        }

        v94 = *(v92 + 56) + 8 * v127;
        sub_226D6E67C();
        (*v101)(v107, v90);
        (*v109)(v121, v130);
        v95 = *v122;
        (*v122)(v139, v91);
        (*v132)(v30, v35);
        v95(v131, v91);
        v117 = sub_226B5A650;
        v115 = sub_226B5A608;
        v116 = v126;
      }
    }
  }

  __break(1u);
LABEL_55:

  sub_226AC7B44(v115);
  result = sub_226AC7B44(v117);
  *v108 = v120;
  return result;
}

uint64_t (*sub_226B57418(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_226B5A680;
}

void sub_226B57538()
{
  v1 = *(v0 + 16);
  v2 = sub_226D676AC();
  sub_226D6EB7C();
}

void sub_226B575C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v34 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = MEMORY[0x22AA8B6A0](v17);
  v21 = *(a6 + 80);
  v22 = v47;
  v47 = a5;
  v21(v44, a4, a1, a5, a6);
  if (v22)
  {
    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v44 = a1;
    v34 = v12;
    objc_autoreleasePoolPop(v20);
    v23 = *(a6 + 88);
    v35 = v19;
    v24 = v23(v19, v47, a6);
    if (sub_226D6E66C())
    {
      v25 = 0;
      v42 = a6;
      v43 = (v11 + 16);
      v39 = a6 + 96;
      v40 = (v11 + 32);
      v41 = (v11 + 8);
      while (1)
      {
        v26 = sub_226D6E64C();
        sub_226D6E60C();
        if (v26)
        {
          v27 = v45;
          (*(v11 + 16))(v45, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, AssociatedTypeWitness);
        }

        else
        {
          v32 = sub_226D6EF1C();
          if (v34 != 8)
          {
            goto LABEL_14;
          }

          v48 = v32;
          v33 = v45;
          (*v43)(v45, &v48, AssociatedTypeWitness);
          v27 = v33;
          swift_unknownObjectRelease();
        }

        v28 = v25 + 1;
        v29 = v46;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v30 = (*v40)(v46, v27, AssociatedTypeWitness);
        v31 = MEMORY[0x22AA8B6A0](v30);
        (*(v42 + 96))(v29, v44, v47);
        objc_autoreleasePoolPop(v31);
        (*v41)(v29, AssociatedTypeWitness);
        ++v25;
        if (v28 == sub_226D6E66C())
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
LABEL_12:
      (*(v36 + 8))(v35, v37);
    }
  }
}

id sub_226B579F8(void *a1, void (*a2)(void *))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v12[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v12];

  if (v6)
  {
    v7 = v12[0];
    v8 = sub_226D6E36C();
    [a1 setTransactionAuthor_];

    a2(a1);
    if (!v2)
    {
      [a1 reset];
    }

    result = [a1 setTransactionAuthor_];
  }

  else
  {
    v10 = v12[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_226B57B54@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v21[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v21];

  if (v13)
  {
    v14 = v21[0];
    v15 = sub_226D6E36C();
    [a1 setTransactionAuthor_];

    a2(a1);
    if (!v4)
    {
      [a1 reset];
      (*(v8 + 32))(v20, v11, a3);
    }

    result = [a1 setTransactionAuthor_];
  }

  else
  {
    v17 = v21[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_226B57D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_226D6E2FC();

  return sub_226B57DB0(a1, v9, a2, a3);
}

unint64_t sub_226B57DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_226D6E35C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_226B57F38(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_226C694C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_226B57FB4(v6);
  return sub_226D6EF7C();
}

void sub_226B57FB4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226D6F1BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226AE59B4(0, &qword_28105F418, 0x277CBE4C8);
        v6 = sub_226D6E63C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_226B582E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_226B580C8(0, v2, 1, a1);
  }
}

void sub_226B580C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_226D6D4AC();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 timestamp];
      sub_226D6D45C();

      v23 = [v21 timestamp];
      v24 = v35;
      sub_226D6D45C();

      LOBYTE(v23) = sub_226D6D40C();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_226B582E8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_226D6D4AC();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_226C69374(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_226B58B58((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_226C69374(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_226C692E8(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 timestamp];
      v25 = v124;
      sub_226D6D45C();

      v26 = [v23 timestamp];
      v27 = v125;
      sub_226D6D45C();

      LODWORD(v122) = sub_226D6D40C();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 timestamp];
        v35 = v124;
        sub_226D6D45C();

        v36 = [v33 timestamp];
        v37 = v125;
        sub_226D6D45C();

        LODWORD(v36) = sub_226D6D40C() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_226BBB0C4(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_226BBB0C4((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_226B58B58((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_226C69374(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_226C692E8(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 timestamp];
    v54 = v124;
    sub_226D6D45C();

    v55 = [v52 timestamp];
    v56 = v125;
    sub_226D6D45C();

    LOBYTE(v55) = sub_226D6D40C();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_226B58B58(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_226D6D4AC();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 timestamp];
        v42 = v55;
        sub_226D6D45C();

        v43 = [v40 timestamp];
        v44 = v56;
        sub_226D6D45C();

        LOBYTE(v43) = sub_226D6D40C();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 timestamp];
        v22 = v55;
        sub_226D6D45C();

        v23 = [v20 timestamp];
        v24 = v56;
        sub_226D6D45C();

        LOBYTE(v23) = sub_226D6D40C();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_226B58FF4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_226D6EDFC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_226C40E9C(v3, 0);
  sub_226CEFD4C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226B59088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226B59F18(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226B590FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B59144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_226D6E66C())
  {
    sub_226D6F11C();
    v13 = sub_226D6F10C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_226D6E66C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_226D6E64C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_226D6EF1C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_226B57D54(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_226B59430(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B70C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6A32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 88))(v9, v5);
  if (v15 == *MEMORY[0x277CC7FF0])
  {
    v16 = sub_226D6EB3C();
    v17 = MEMORY[0x277CC7B90];
  }

  else if (v15 == *MEMORY[0x277CC7FE8])
  {
    v16 = sub_226D6EB2C();
    v17 = MEMORY[0x277CC7B88];
  }

  else
  {
    if (v15 != *MEMORY[0x277CC7FF8])
    {
      goto LABEL_43;
    }

    v16 = sub_226D6EB4C();
    v17 = MEMORY[0x277CC7B80];
  }

  (*(v11 + 104))(v14, *v17, v10);
  if (!v16)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_18;
  }

  v82 = a2;
  v18 = v16;
  v19 = sub_226D6A31C();
  v21 = v20;
  v22 = [v18 metadata];
  if (v22)
  {
    v23 = v22;
    v24 = sub_226D6E2BC();

    v25 = *(v24 + 16);
    v81 = v10;
    v79 = v14;
    if (v25)
    {
      v26 = sub_226C2FDD4(v19, v21);
      v28 = v27;

      if (v28)
      {
        sub_226AC4708(*(v24 + 56) + 32 * v26, v85);

        if (swift_dynamicCast())
        {
          v29 = v84[0];
          sub_226AE59B4(0, &qword_27D7A6F88, 0x277CCAAC8);
          sub_226AE59B4(0, &qword_27D7A6F90, 0x277CBE4C0);
          v30 = sub_226D6EA0C();
          if (v2)
          {
            if (qword_28105F620 != -1)
            {
              swift_once();
            }

            v31 = sub_226D6E07C();
            __swift_project_value_buffer(v31, qword_28105F628);
            v32 = v2;
            v33 = sub_226D6E05C();
            v34 = sub_226D6E9CC();

            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *v35 = 138412290;
              v37 = v2;
              v38 = _swift_stdlib_bridgeErrorToNSError();
              *(v35 + 4) = v38;
              *v36 = v38;
              _os_log_impl(&dword_226AB4000, v33, v34, "Failed to unarchive persistent history token with error: %@", v35, 0xCu);
              sub_226B17298(v36);
              MEMORY[0x22AA8BEE0](v36, -1, -1);
              MEMORY[0x22AA8BEE0](v35, -1, -1);
              sub_226B11B98(v29, *(&v29 + 1));
            }

            else
            {
              sub_226B11B98(v29, *(&v29 + 1));
            }

            v40 = 0;
            v80 = 0;
          }

          else
          {
            v75 = v30;
            v80 = 0;
            sub_226B11B98(v29, *(&v29 + 1));
            v40 = v75;
          }

LABEL_22:
          v41 = objc_opt_self();
          v42 = [v41 fetchHistoryAfterToken_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v43 = swift_allocObject();
          v78 = xmmword_226D71F20;
          *(v43 + 16) = xmmword_226D71F20;
          *(v43 + 32) = v18;
          sub_226AE59B4(0, &unk_28105F480, 0x277CBE4D0);
          v44 = v18;
          v45 = v42;
          v46 = sub_226D6E5CC();

          [v45 setAffectedStores_];

          *&v85[0] = 0;
          v47 = [v82 executeRequest:v45 error:v85];
          v48 = *&v85[0];
          if (v47)
          {
            v49 = v47;
            objc_opt_self();
            v50 = swift_dynamicCastObjCClassUnconditional();
            v51 = v48;
            if ([v50 result])
            {
              sub_226D6ED0C();

              swift_unknownObjectRelease();
              (*(v11 + 8))(v79, v81);
              sub_226B24A98(v85, v84);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
              swift_dynamicCast();
              result = v83;
            }

            else
            {

              (*(v11 + 8))(v79, v81);
              result = MEMORY[0x277D84F90];
            }

            goto LABEL_37;
          }

          v52 = *&v85[0];
          v53 = sub_226D6D04C();

          swift_willThrow();
          v54 = sub_226D6D03C();
          if ([v54 code] == 134301)
          {
            v77 = v54;
            v80 = v53;
            if (qword_28105F620 != -1)
            {
              swift_once();
            }

            v55 = sub_226D6E07C();
            __swift_project_value_buffer(v55, qword_28105F628);
            v56 = sub_226D6E05C();
            v57 = sub_226D6E9DC();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_226AB4000, v56, v57, "Caught NSPersistentHistoryTokenExpiredError while mapping", v58, 2u);
              MEMORY[0x22AA8BEE0](v58, -1, -1);
            }

            v59 = [v41 fetchHistoryAfterToken_];
            v60 = swift_allocObject();
            *(v60 + 16) = v78;
            *(v60 + 32) = v44;
            v61 = v44;
            v44 = v59;
            v62 = sub_226D6E5CC();

            [v44 setAffectedStores_];

            *&v85[0] = 0;
            v63 = [v82 executeRequest:v44 error:v85];
            v64 = *&v85[0];
            if (v63)
            {
              v65 = v63;
              objc_opt_self();
              v66 = swift_dynamicCastObjCClassUnconditional();
              v67 = v64;
              v68 = [v66 result];
              v70 = v79;
              v69 = v80;
              if (v68)
              {
                sub_226D6ED0C();

                swift_unknownObjectRelease();
                (*(v11 + 8))(v70, v81);
                sub_226B24A98(v85, v84);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
                swift_dynamicCast();
                result = v83;
                goto LABEL_37;
              }

              (*(v11 + 8))(v70, v81);
LABEL_18:
              result = MEMORY[0x277D84F90];
LABEL_37:
              v74 = *MEMORY[0x277D85DE8];
              return result;
            }

            v73 = *&v85[0];
            sub_226D6D04C();

            swift_willThrow();
            v40 = v61;
            v72 = v79;
            v71 = v77;
          }

          else
          {
            swift_willThrow();

            v71 = v44;
            v72 = v79;
          }

          result = (*(v11 + 8))(v72, v81);
          goto LABEL_37;
        }

LABEL_21:
        v80 = v2;
        v40 = 0;
        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_43:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B59F18(void *a1)
{
  v3 = sub_226D6B70C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v60 - v12;
  v65 = MEMORY[0x277D84F90];
  v14 = *(v4 + 104);
  v14(v60 - v12, *MEMORY[0x277CC7FF0], v3);
  v15 = sub_226B59430(v13, a1);
  if (v1)
  {
    return (*(v4 + 8))(v13, v3);
  }

  v17 = *(v4 + 8);
  v18 = v15;
  v62 = 0;
  v63 = v17;
  v17(v13, v3);
  sub_226CED904(v18);
  v14(v11, *MEMORY[0x277CC7FE8], v3);
  v61 = a1;
  v19 = v62;
  v20 = sub_226B59430(v11, a1);
  if (v19)
  {
    v63(v11, v3);
  }

  v21 = v20;
  v22 = v11;
  v23 = v63;
  v63(v22, v3);
  sub_226CED904(v21);
  v14(v8, *MEMORY[0x277CC7FF8], v3);
  v24 = sub_226B59430(v8, v61);
  v23(v8, v3);
  sub_226CED904(v24);
  v25 = v65;
  v64 = MEMORY[0x277D84F90];
  v62 = 0;
  if (v65 >> 62)
  {
    goto LABEL_50;
  }

  v26 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v27 = MEMORY[0x277D84F90];
  v60[1] = v25;
  if (v26)
  {
    v28 = 0;
    v63 = (v25 & 0xC000000000000001);
    v29 = v25 & 0xFFFFFFFFFFFFFF8;
    v61 = 0x8000000226D7FDA0;
    while (1)
    {
      if (v63)
      {
        v31 = v25;
        v32 = MEMORY[0x22AA8AFD0](v28);
      }

      else
      {
        if (v28 >= *(v29 + 16))
        {
          goto LABEL_47;
        }

        v31 = v25;
        v32 = *(v25 + 8 * v28 + 32);
      }

      v33 = v32;
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v56 = v25;
        v57 = sub_226D6EDFC();
        v25 = v56;
        v26 = v57;
        goto LABEL_7;
      }

      v35 = [v32 author];
      if (!v35)
      {
        goto LABEL_9;
      }

      v36 = v35;
      v37 = sub_226D6E39C();
      v39 = v38;

      if (v37 == 0xD000000000000027 && v61 == v39)
      {

        goto LABEL_10;
      }

      v41 = sub_226D6F21C();

      if (v41)
      {
      }

      else
      {
LABEL_9:
        sub_226D6EF6C();
        v30 = *(v64 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

LABEL_10:
      ++v28;
      v25 = v31;
      if (v34 == v26)
      {
        v42 = v64;
        v27 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_26:
  v64 = v27;
  if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
  {
    v43 = sub_226D6EDFC();
    if (v43)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v43 = *(v42 + 16);
    if (v43)
    {
LABEL_29:
      v44 = 0;
      v63 = (v42 & 0xC000000000000001);
      do
      {
        if (v63)
        {
          v46 = MEMORY[0x22AA8AFD0](v44, v42);
        }

        else
        {
          if (v44 >= *(v42 + 16))
          {
            goto LABEL_49;
          }

          v46 = *(v42 + 8 * v44 + 32);
        }

        v47 = v46;
        v48 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_48;
        }

        v49 = [v46 author];
        if (!v49)
        {
          goto LABEL_30;
        }

        v50 = v49;
        v51 = sub_226D6E39C();
        v53 = v52;

        if (v51 == 0xD000000000000026 && 0x8000000226D7FDD0 == v53)
        {

          goto LABEL_31;
        }

        v55 = sub_226D6F21C();

        if (v55)
        {
        }

        else
        {
LABEL_30:
          sub_226D6EF6C();
          v45 = *(v64 + 16);
          sub_226D6EF9C();
          sub_226D6EFAC();
          sub_226D6EF7C();
        }

LABEL_31:
        ++v44;
      }

      while (v48 != v43);
    }
  }

  v64 = sub_226B58FF4(v58);
  v59 = v62;
  sub_226B57F38(&v64);
  if (v59)
  {

    __break(1u);
  }

  else
  {

    return v64;
  }

  return result;
}

uint64_t sub_226B5A578(uint64_t a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a1, *a2);
}

unint64_t sub_226B5A5A4()
{
  result = qword_27D7A6F80;
  if (!qword_27D7A6F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6F78, &unk_226D758E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F80);
  }

  return result;
}

uint64_t sub_226B5A608()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();

  return sub_226D6E62C();
}

uint64_t sub_226B5A650@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_226B5A680()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 64))();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226B5A6FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_226B5A744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226B5A79C(uint64_t a1)
{
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_226D69A3C();
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_226D69A4C();
  if (v10[3])
  {
    v6 = sub_226D6D4AC();
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_226B5AAF4(v10);
    v8 = sub_226D6D4AC();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  return v4 & 1;
}

uint64_t sub_226B5A910(unsigned __int8 a1)
{
  v3 = a1;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (v3 == 2)
  {
    return sub_226D69A1C();
  }

  v7 = MEMORY[0x277D839B0];
  v6[0] = a1 & 1;
  sub_226D69A2C();
  return sub_226B5AAF4(v6);
}

uint64_t sub_226B5A9C8(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v12 = MEMORY[0x277D839B0];
  LOBYTE(v11[0]) = a1;
  sub_226D69A2C();
  sub_226B5AAF4(v11);
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v8 = sub_226D6D4AC();
  v12 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  sub_226D69A2C();
  return sub_226B5AAF4(v11);
}

uint64_t sub_226B5AAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BB0, &unk_226D74340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_226B5ABA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_226B5ABE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226B5AC68(uint64_t a1, void *a2)
{
  v4 = sub_226D6B49C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D691CC();
  sub_226D6740C();
  v9 = sub_226D691BC();
  if (v2)
  {
    v11 = *(v5 + 8);
    v10 = v5 + 8;
    v11(v8, v4);
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_28105F5C0);
    v13 = v2;
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9EC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_226AB4000, v14, v15, "Could not delete wallet messages: %@", v16, 0xCu);
      sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    swift_willThrow();
    return v10 & 1;
  }

  v20 = v9;
  result = (*(v5 + 8))(v8, v4);
  if (v20 >> 62)
  {
    result = sub_226D6EDFC();
    v22 = result;
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v22 != 0;
  if (!v22)
  {
LABEL_16:

    return v10 & 1;
  }

  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x22AA8AFD0](i, v20);
      }

      else
      {
        v24 = *(v20 + 8 * i + 32);
      }

      v25 = v24;
      [a2 deleteObject_];
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B5AF60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D66DBC();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6714C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ManagedOrderDeleter.DeleteResult();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6B49C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  sub_226B5B60C(a1, v15);
  v39 = v16;
  v40 = v17;
  (*(v17 + 32))(v20, v15, v16);
  v38 = v20;
  sub_226B5B670(v20);
  v22 = v2;
  sub_226AC40E8(v2 + 40, v41, &qword_27D7A6910, &unk_226D721C0);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v8 + 104))(v11, *MEMORY[0x277CC6B48], v7);
    sub_226D680BC();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  else
  {
    sub_226AC47B0(v41, &qword_27D7A6910, &unk_226D721C0);
  }

  sub_226B5B60C(v21, v15);
  v23 = v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60) + 48)];
  v24 = *(v40 + 8);
  v25 = v15;
  v26 = v39;
  v24(v25, v39);
  v27 = v38;
  if (v23 == 1)
  {
    sub_226AC40E8(v22 + 80, v41, &qword_27D7A6E50, &unk_226D73598);
    if (v42)
    {
      __swift_project_boxed_opaque_existential_1(v41, v42);
      sub_226D69A5C();
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    else
    {
      sub_226AC47B0(v41, &qword_27D7A6E50, &unk_226D73598);
    }
  }

  sub_226AC40E8(v22 + 120, v41, &qword_27D7A6FA0, &qword_226D79780);
  if (v42)
  {
    v29 = v35;
    v28 = v36;
    v30 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x277CC6508], v37);
    v31 = sub_226D66D6C();
    (*(v28 + 8))(v29, v30);
    if (v31)
    {
      v32 = __swift_project_boxed_opaque_existential_1(v41, v42);
      MEMORY[0x28223BE20](v32);
      *(&v34 - 2) = v27;
      off_283A6D830();
    }

    v24(v27, v26);
    return sub_226B5BD20(v41);
  }

  else
  {
    v24(v27, v26);
    return sub_226AC47B0(v41, &qword_27D7A6FA0, &qword_226D79780);
  }
}

uint64_t type metadata accessor for ManagedOrderDeleter.DeleteResult()
{
  result = qword_27D7A6FA8;
  if (!qword_27D7A6FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B5B60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedOrderDeleter.DeleteResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B5B670(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v57 - v6;
  v60 = a1;
  v7 = sub_226D6B47C();
  v9 = v8;
  v10 = v2[3];
  v11 = v2[4];
  v58 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  v12 = sub_226D69FFC();
  v13 = v12;
  v63 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_35;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = 0;
    v61 = v13 & 0xFFFFFFFFFFFFFF8;
    v62 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v62)
      {
        v18 = MEMORY[0x22AA8AFD0](v16, v13);
      }

      else
      {
        if (v16 >= *(v61 + 16))
        {
          goto LABEL_34;
        }

        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v14 = sub_226D6EDFC();
        goto LABEL_3;
      }

      v21 = [v18 request];
      v22 = [v21 content];

      v23 = [v22 threadIdentifier];
      v24 = sub_226D6E39C();
      v26 = v25;

      if (v24 == v7 && v26 == v9)
      {
      }

      else
      {
        v28 = sub_226D6F21C();

        if ((v28 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_226D6EF6C();
      v17 = *(v63 + 16);
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
LABEL_7:
      ++v16;
      if (v20 == v14)
      {
        v29 = v63;
        v15 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_21:

  if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
  {
    v30 = sub_226D6EDFC();
    if (v30)
    {
      goto LABEL_24;
    }

LABEL_37:

    v9 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v30 = *(v29 + 16);
  if (!v30)
  {
    goto LABEL_37;
  }

LABEL_24:
  v63 = v15;
  sub_226AE1D68(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_40;
  }

  v31 = 0;
  v9 = v63;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x22AA8AFD0](v31, v29);
    }

    else
    {
      v32 = *(v29 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = [v33 request];
    v35 = [v34 identifier];
    v36 = sub_226D6E39C();
    v38 = v37;

    v63 = v9;
    v40 = *(v9 + 16);
    v39 = *(v9 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_226AE1D68((v39 > 1), v40 + 1, 1);
      v9 = v63;
    }

    ++v31;
    *(v9 + 16) = v40 + 1;
    v41 = v9 + 16 * v40;
    *(v41 + 32) = v36;
    *(v41 + 40) = v38;
  }

  while (v30 != v31);

LABEL_38:
  if (!*(v9 + 16))
  {
    goto LABEL_43;
  }

  if (qword_28105F5B8 != -1)
  {
    goto LABEL_45;
  }

LABEL_40:
  v42 = sub_226D6E07C();
  __swift_project_value_buffer(v42, qword_28105F5C0);

  v43 = sub_226D6E05C();
  v44 = sub_226D6E9AC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63 = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x22AA8A6A0](v9, MEMORY[0x277D837D0]);
    v49 = sub_226AC4530(v47, v48, &v63);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_226AB4000, v43, v44, "Removing outstanding notifications: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x22AA8BEE0](v46, -1, -1);
    MEMORY[0x22AA8BEE0](v45, -1, -1);
  }

  v50 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_226D6A00C();
LABEL_43:

  v51 = sub_226D6D1AC();
  v52 = v59;
  (*(*(v51 - 8) + 56))(v59, 1, 1, v51);
  v53 = type metadata accessor for NotificationAttachmentStore();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  NotificationAttachmentStore.init(notificationAttachmentDirectory:)(v52);
  sub_226BCF534();
}

uint64_t sub_226B5BD7C()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t sub_226B5BDC0()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t sub_226B5BE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226B5BE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_226B5BF18(uint64_t a1)
{
  sub_226B5BFEC();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_226D6B49C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_226B5BFEC()
{
  if (!qword_27D7A6FB8)
  {
    sub_226D6B49C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A6FB8);
    }
  }
}

unint64_t sub_226B5C05C()
{
  result = qword_27D7A6FC0;
  if (!qword_27D7A6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6FC0);
  }

  return result;
}

uint64_t sub_226B5C0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask();
  sub_226AF265C(v1 + Task[9], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[7], a1);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + Task[8]);
    v15 = v14 < 1;
    v16 = v14 - 1;
    if (!v15)
    {
      exp2(v16);
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}