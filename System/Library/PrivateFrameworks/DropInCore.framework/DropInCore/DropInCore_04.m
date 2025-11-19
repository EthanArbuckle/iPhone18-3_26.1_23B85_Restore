uint64_t sub_249E43C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_18();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E43C8C()
{
  OUTLINED_FUNCTION_50();
  v41 = v0;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];

  v5 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v6 = v0[5];
    v7 = v0[2];
    v8 = OUTLINED_FUNCTION_188();
    v40 = OUTLINED_FUNCTION_62_0();
    *v8 = 136315394;
    v9 = sub_249E7A9E8();
    sub_249E3A958(v9, v10, &v40);
    OUTLINED_FUNCTION_53_1();

    *(v8 + 4) = v1;
    *(v8 + 12) = 2080;
    v11 = sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
    v12 = MEMORY[0x24C204800](v6, v11);
    v14 = sub_249E3A958(v12, v13, &v40);

    *(v8 + 14) = v14;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v20 = sub_249E51FB4(v0[5]);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = v20;
    v40 = MEMORY[0x277D84F90];
    sub_249E7B1C8();
    if (v22 < 0)
    {
      __break(1u);
      return MEMORY[0x282200600]();
    }

    v23 = 0;
    v24 = v0[5];
    v25 = v24 & 0xC000000000000001;
    v26 = v24 + 32;
    do
    {
      if (v25)
      {
        v27 = MEMORY[0x24C204D50](v23, v0[5]);
      }

      else
      {
        v27 = *(v26 + 8 * v23);
      }

      v28 = v27;
      ++v23;
      sub_249E61370();

      sub_249E7B1A8();
      v29 = *(v40 + 16);
      sub_249E7B1D8();
      sub_249E7B1E8();
      sub_249E7B1B8();
    }

    while (v22 != v23);
    v21 = v40;
  }

  v0[7] = v21;
  v30 = v0[6];
  v32 = v0[3];
  v31 = v0[4];
  v33 = v0[2];
  OUTLINED_FUNCTION_22();
  v34 = swift_allocObject();
  v0[8] = v34;
  swift_weakInit();
  v35 = swift_task_alloc();
  v0[9] = v35;
  v35[2] = v34;
  v35[3] = v32;
  v35[4] = v31;
  v35[5] = v21;
  v35[6] = v33;
  v36 = *(MEMORY[0x277D858E8] + 4);
  v37 = swift_task_alloc();
  v0[10] = v37;
  *v37 = v0;
  v37[1] = sub_249E43F98;
  v42 = MEMORY[0x277D84F78] + 8;
  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x282200600]();
}

uint64_t sub_249E43F98()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E440FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v7[27] = v9;
  v10 = *(v9 - 8);
  v7[28] = v10;
  v11 = *(v10 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E44214, 0, 0);
}

uint64_t sub_249E44214()
{
  v1 = v0[20];
  OUTLINED_FUNCTION_8_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[29];
    v3 = v0[28];
    v4 = v0[27];
    v47 = v0[23];
    v44 = v0;
    v45 = v0[22];
    v5 = v0[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7D7D0;
    v7 = *MEMORY[0x277D442F0];
    *(inited + 32) = sub_249E7AAA8();
    *(inited + 40) = v8;
    sub_249E7A808();
    OUTLINED_FUNCTION_49_0();
    sub_249E42168(v9, &unk_27EF23820, &unk_249E7E860);
    OUTLINED_FUNCTION_48_0();
    sub_249E42168(v10, &unk_27EF23820, &unk_249E7E860);
    OUTLINED_FUNCTION_47_0();
    sub_249E42168(v11, &unk_27EF23820, &unk_249E7E860);
    sub_249E7A6E8();
    (*(v3 + 8))(v2, v4);
    v42 = sub_249E7AA08();
    OUTLINED_FUNCTION_54_1();
    v49 = v12;
    MEMORY[0x24C204750](v5, v45);
    result = sub_249E51FB4(v47);
    v41 = result;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      v40 = *v0[19];
      v15 = v0[23];
      v38 = v0 + 9;
      v39 = v15 & 0xC000000000000001;
      v37 = v15 + 32;
      do
      {
        v48 = v14;
        if (v39)
        {
          v16 = MEMORY[0x24C204D50](v14, v0[23]);
        }

        else
        {
          v16 = *(v37 + 8 * v14);
        }

        v17 = v16;
        v19 = v0[25];
        v18 = v0[26];
        v20 = v0[24];
        v21 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v21);
        v22 = swift_allocObject();
        v22[2] = 0;
        v46 = v22 + 2;
        v22[3] = 0;
        v22[4] = Strong;
        v22[5] = v17;
        v22[6] = 0xD00000000000001DLL;
        v22[7] = v49;
        v22[8] = v20;
        v22[9] = v42;
        sub_249E49F10(v18, v19, &unk_27EF236B0, &qword_249E7DFD0);
        LODWORD(v18) = __swift_getEnumTagSinglePayload(v19, 1, v21);
        v0 = v44;

        v23 = v17;

        v24 = v44[25];
        if (v18 == 1)
        {
          sub_249E2A8CC(v44[25], &unk_27EF236B0, &qword_249E7DFD0);
        }

        else
        {
          sub_249E7AC68();
          (*(*(v21 - 8) + 8))(v24, v21);
        }

        if (*v46)
        {
          v25 = v22[3];
          v26 = *v46;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v27 = sub_249E7AC28();
          v29 = v28;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        OUTLINED_FUNCTION_8_3();
        v30 = swift_allocObject();
        *(v30 + 16) = &unk_249E7F9E8;
        *(v30 + 24) = v22;

        if (v29 | v27)
        {
          v31 = v38;
          *v38 = 0;
          v38[1] = 0;
          v44[11] = v27;
          v44[12] = v29;
        }

        else
        {
          v31 = 0;
        }

        v14 = v48 + 1;
        v32 = v44[26];
        v44[16] = 1;
        v44[17] = v31;
        v44[18] = v40;
        swift_task_create();

        sub_249E2A8CC(v32, &unk_27EF236B0, &qword_249E7DFD0);
      }

      while (v41 != v48 + 1);
    }
  }

  v33 = v0[29];
  v34 = v0[25];
  v35 = v0[26];

  OUTLINED_FUNCTION_9_0();

  return v36();
}

uint64_t sub_249E4471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v10;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  return MEMORY[0x2822009F8](sub_249E4474C, 0, 0);
}

uint64_t sub_249E4474C()
{
  OUTLINED_FUNCTION_82();
  v2 = v0[30];
  v1 = v0[31];
  v0[36] = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
  v3 = v1;
  v4 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v5 = v0[31];
    OUTLINED_FUNCTION_4();
    v6 = OUTLINED_FUNCTION_31_2();
    *v3 = 138412290;
    *(v3 + 1) = v5;
    *v6 = v5;
    v7 = v5;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_249E2A8CC(v6, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v13 = v0[31];

  v0[2] = v0;
  v0[3] = sub_249E448E8;
  v14 = swift_continuation_init();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
  v0[37] = v15;
  v0[25] = v15;
  OUTLINED_FUNCTION_15_2();
  v0[19] = 1107296256;
  OUTLINED_FUNCTION_14_2();
  v0[21] = v16;
  v0[22] = v14;
  [v13 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249E448E8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E449E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = *(v22 + 280);
  v25 = *(v22 + 288);
  v28 = *(v22 + 264);
  v27 = *(v22 + 272);
  v29 = *(v22 + 240);
  v30 = *(v22 + 248);

  v31 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v32 = *(v22 + 272);
    v33 = *(v22 + 256);
    v34 = *(v22 + 264);
    v59 = *(v22 + 248);
    v61 = *(v22 + 280);
    swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_31_2();
    a11 = swift_slowAlloc();
    *v26 = 136315906;
    *(v26 + 4) = sub_249E3A958(v33, v34, &a11);
    *(v26 + 12) = 2080;
    v36 = sub_249E7A9E8();
    v38 = sub_249E3A958(v36, v37, &a11);

    *(v26 + 14) = v38;
    *(v26 + 22) = 2112;
    v39 = [v59 destinationDevice];
    *(v26 + 24) = v39;
    *v35 = v39;
    *(v26 + 32) = 2080;
    v40 = sub_249E7A9E8();
    sub_249E3A958(v40, v41, &a11);
    OUTLINED_FUNCTION_53_1();

    *(v26 + 34) = v38;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v42, v43, v44, v45, v46, 0x2Au);
    sub_249E2A8CC(v35, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v47 = *(v22 + 272);
  v48 = *(v22 + 280);
  v49 = *(v22 + 256);
  v50 = *(v22 + 264);
  v60 = *(v22 + 296);
  v62 = *(v22 + 248);
  v51 = sub_249E7AA88();
  *(v22 + 312) = v51;
  sub_249E56C58(v47);
  v52 = sub_249E7A9C8();
  *(v22 + 320) = v52;

  sub_249E56EE0(v48);
  v53 = sub_249E7A9C8();
  *(v22 + 328) = v53;

  *(v22 + 80) = v22;
  *(v22 + 88) = sub_249E44D24;
  swift_continuation_init();
  *(v22 + 200) = v60;
  OUTLINED_FUNCTION_15_2();
  *(v22 + 152) = 1107296256;
  OUTLINED_FUNCTION_14_2();
  *(v22 + 168) = v55;
  *(v22 + 176) = v54;
  [v62 sendEventID:v51 event:v52 options:v53 completion:v22 + 144];
  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200938](v56);
}

uint64_t sub_249E44D24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 112);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E44E20()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);

  [*(v0 + 248) invalidate];
  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E44E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 304);
  swift_willThrow();
  v26 = *(v22 + 304);
  v27 = *(v22 + 288);
  v28 = *(v22 + 240);
  v29 = *(v22 + 248);
  v30 = v26;
  v31 = sub_249E7A698();
  v32 = sub_249E7AE08();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v22 + 248);
    v34 = OUTLINED_FUNCTION_188();
    v35 = OUTLINED_FUNCTION_6();
    a9 = OUTLINED_FUNCTION_4_0();
    a10 = a9;
    OUTLINED_FUNCTION_28_1(5.778e-34);
    v36 = *(v22 + 208);
    v37 = *(v22 + 216);
    v38 = *(v22 + 224);
    v39 = v33;
    v40 = sub_249E7B3A8();
    sub_249E3A958(v40, v41, &a10);
    OUTLINED_FUNCTION_61_0();
    *(v34 + 14) = v37;
    OUTLINED_FUNCTION_196(&dword_249DEE000, v42, v43, "Failed to send on link %@, Error = %s");
    sub_249E2A8CC(v35, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_13_3();
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
  }

  [*(v22 + 248) invalidate];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E45008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 328);
  v26 = *(v22 + 336);
  v28 = *(v22 + 312);
  v27 = *(v22 + 320);
  swift_willThrow();

  v29 = *(v22 + 336);
  v30 = *(v22 + 288);
  v31 = *(v22 + 240);
  v32 = *(v22 + 248);
  v33 = v29;
  v34 = sub_249E7A698();
  v35 = sub_249E7AE08();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v22 + 248);
    v37 = OUTLINED_FUNCTION_188();
    v38 = OUTLINED_FUNCTION_6();
    a9 = OUTLINED_FUNCTION_4_0();
    a10 = a9;
    OUTLINED_FUNCTION_28_1(5.778e-34);
    v39 = *(v22 + 208);
    v40 = *(v22 + 216);
    v41 = *(v22 + 224);
    v42 = v36;
    v43 = sub_249E7B3A8();
    sub_249E3A958(v43, v44, &a10);
    OUTLINED_FUNCTION_61_0();
    *(v37 + 14) = v40;
    OUTLINED_FUNCTION_196(&dword_249DEE000, v45, v46, "Failed to send on link %@, Error = %s");
    sub_249E2A8CC(v38, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_13_3();
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
  }

  [*(v22 + 248) invalidate];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E4518C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_249E42E74(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_249E451F0()
{
  OUTLINED_FUNCTION_11();
  *(v1 + 680) = v0;
  *(v1 + 145) = v2;
  *(v1 + 672) = v3;
  *(v1 + 664) = v4;
  *(v1 + 656) = v5;
  *(v1 + 648) = v6;
  *(v1 + 640) = v7;
  *(v1 + 632) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  *(v1 + 688) = v9;
  v10 = *(v9 - 8);
  *(v1 + 696) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 704) = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_249E452D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = v22[85];
  v27 = v22[83];
  v28 = v22[80];
  v22[89] = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;

  v29 = v27;
  v30 = sub_249E7A698();
  v31 = sub_249E7AE28();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v22[83];
    v33 = v22[80];
    v34 = OUTLINED_FUNCTION_188();
    v35 = OUTLINED_FUNCTION_6();
    v36 = OUTLINED_FUNCTION_4_0();
    a11 = v36;
    *v34 = 136315394;
    v37 = sub_249E7A9E8();
    sub_249E3A958(v37, v38, &a11);
    OUTLINED_FUNCTION_53_1();

    *(v34 + 4) = v23;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v32;
    *v35 = v32;
    v39 = v32;
    _os_log_impl(&dword_249DEE000, v30, v31, "Handling Send Request %s to Device %@", v34, 0x16u);
    sub_249E2A8CC(v35, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v40 = v22[83];
  v41 = sub_249E61370();
  v22[90] = v41;
  v42 = sub_249E7A698();
  v43 = sub_249E7AE28();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_4();
    v45 = OUTLINED_FUNCTION_6();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    OUTLINED_FUNCTION_19_1(&dword_249DEE000, v47, v48, "Activating Link %@");
    sub_249E2A8CC(v45, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  v22[2] = v22;
  v22[3] = sub_249E455AC;
  v49 = swift_continuation_init();
  v22[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
  v22[68] = v49;
  v22[64] = MEMORY[0x277D85DD0];
  v22[65] = 1107296256;
  v22[66] = sub_249E4518C;
  v22[67] = &block_descriptor_4;
  [v41 activateWithCompletion_];
  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200938](v50);
}

uint64_t sub_249E455AC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 728) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E456A8()
{
  v51 = v0;
  v1 = *(v0 + 145);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  OUTLINED_FUNCTION_54_1();
  v49 = 0xD00000000000001FLL;
  v50 = v4;
  MEMORY[0x24C204750]();
  v5 = v50;
  *(v0 + 736) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  v7 = *MEMORY[0x277D442F0];
  *(inited + 32) = sub_249E7AAA8();
  *(inited + 40) = v8;
  if (v1)
  {
    v9 = *(v0 + 704);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);
    sub_249E7A838();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1();
    sub_249E42168(v12, v13, v14);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_52_1();
    sub_249E42168(v15, v16, v17);
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_52_1();
    sub_249E42168(v18, v19, v20);
    sub_249E7A6E8();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    *(inited + 48) = *(v0 + 672);
  }

  v21 = *(v0 + 712);
  v22 = *(v0 + 680);
  v23 = *(v0 + 664);
  v24 = *(v0 + 640);
  v25 = sub_249E7AA08();

  v26 = v23;

  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();

  if (os_log_type_enabled(v27, v28))
  {
    v47 = v25;
    v29 = *(v0 + 664);
    v30 = *(v0 + 640);
    v31 = swift_slowAlloc();
    v48 = v5;
    v32 = OUTLINED_FUNCTION_6();
    v49 = swift_slowAlloc();
    *v31 = 136315906;
    *(v31 + 4) = sub_249E3A958(0xD00000000000001FLL, v48, &v49);
    OUTLINED_FUNCTION_42_0();
    v33 = sub_249E7A9E8();
    v35 = sub_249E3A958(v33, v34, &v49);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2112;
    *(v31 + 24) = v29;
    *v32 = v29;
    *(v31 + 32) = 2080;
    v36 = v29;
    v25 = v47;
    v37 = sub_249E7A9E8();
    v39 = sub_249E3A958(v37, v38, &v49);

    *(v31 + 34) = v39;
    _os_log_impl(&dword_249DEE000, v27, v28, "Sending Request, RequestID = %s, Request = %s, Destination Device = %@, Options = %s", v31, 0x2Au);
    sub_249E2A8CC(v32, &unk_27EF23C30, &qword_249E7DA20);
    v5 = v48;
    OUTLINED_FUNCTION_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }

  sub_249E56C58(*(v0 + 640));
  v41 = v40;
  *(v0 + 744) = v40;
  sub_249E56EE0(v25);
  v43 = v42;
  *(v0 + 752) = v42;

  v44 = swift_task_alloc();
  *(v0 + 760) = v44;
  *v44 = v0;
  v44[1] = sub_249E45AB0;
  v45 = *(v0 + 720);

  return sub_249E613F4(0xD00000000000001FLL, v5, v41, v43);
}

uint64_t sub_249E45AB0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 760);
  *v4 = *v1;
  v3[96] = v7;
  v3[97] = v8;
  v3[98] = v0;

  if (!v0)
  {
    v9 = v3[94];
    v10 = v3[93];
    v11 = v3[92];
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_249E45BE0()
{
  v54 = v0;
  v1 = *(v0 + 776);

  sub_249E46078(v2, v0 + 152);
  memcpy((v0 + 224), (v0 + 152), 0x41uLL);

  v3 = *(v0 + 216);
  if (v3 == 255)
  {
    v34 = *(v0 + 776);
    v35 = *(v0 + 768);
    v36 = *(v0 + 720);

    sub_249E49CD8();
    OUTLINED_FUNCTION_40();
    *v37 = 2;
    swift_willThrow();
    [v36 invalidate];

    v38 = *(v0 + 704);

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = *(v0 + 776);
    v13 = *(v0 + 768);
    v14 = *(v0 + 712);
    v15 = *(v0 + 680);
    *(v0 + 80) = v5;
    *(v0 + 88) = v4;
    v51 = v6;
    v52 = v4;
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    v49 = v8;
    v50 = v7;
    *(v0 + 112) = v8;
    *(v0 + 120) = v9;
    v47 = v10;
    v48 = v9;
    *(v0 + 128) = v10;
    *(v0 + 136) = v11;
    v46 = v11;
    *(v0 + 144) = v3;

    sub_249E49F10(v0 + 152, v0 + 296, &qword_27EF23CB0, &unk_249E7F9B0);
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();

    OUTLINED_FUNCTION_52_1();
    sub_249E2A8CC(v18, v19, v20);
    v21 = os_log_type_enabled(v16, v17);
    v22 = *(v0 + 776);
    if (v21)
    {
      v45 = *(v0 + 776);
      v23 = *(v0 + 768);
      v24 = OUTLINED_FUNCTION_188();
      v53[0] = OUTLINED_FUNCTION_62_0();
      *v24 = 136315394;

      v25 = sub_249E7A9E8();
      v26 = v5;
      v28 = v27;

      v29 = sub_249E3A958(v25, v28, v53);
      v5 = v26;

      *(v24 + 4) = v29;
      OUTLINED_FUNCTION_42_0();
      memcpy((v0 + 368), (v0 + 224), 0x41uLL);
      sub_249E49D2C(v0 + 368, v0 + 440);
      v30 = sub_249DF34CC();
      v32 = v31;
      sub_249E2A8CC(v0 + 152, &qword_27EF23CB0, &unk_249E7F9B0);
      v33 = sub_249E3A958(v30, v32, v53);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_249DEE000, v16, v17, "Received Response %s, Sender = %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }

    v40 = *(v0 + 768);
    v41 = *(v0 + 720);
    v42 = *(v0 + 704);
    v43 = *(v0 + 632);
    [v41 invalidate];

    *v43 = v40;
    *(v43 + 8) = v5;
    *(v43 + 16) = v52;
    *(v43 + 24) = v51;
    *(v43 + 32) = v50;
    *(v43 + 40) = v49;
    *(v43 + 48) = v48;
    *(v43 + 56) = v47;
    *(v43 + 64) = v46;
    *(v43 + 72) = v3 & 1;
    OUTLINED_FUNCTION_9_0();
  }

  return v39();
}

uint64_t sub_249E45F58()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[91];
  v2 = v0[90];
  swift_willThrow();
  [v2 invalidate];

  v3 = v0[91];
  v4 = v0[88];

  OUTLINED_FUNCTION_9_0();

  return v5();
}

uint64_t sub_249E45FDC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[90];

  [v4 invalidate];

  v5 = v0[98];
  v6 = v0[88];

  OUTLINED_FUNCTION_9_0();

  return v7();
}

uint64_t sub_249E46078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_12;
  }

  v4 = *MEMORY[0x277D442C8];
  sub_249E7AAA8();
  sub_249E7B0C8();
  sub_249E558D4(&v23, a1, &v25);
  sub_249DFE850(&v23);
  if (!*(&v26 + 1))
  {
LABEL_12:
    result = sub_249E2A8CC(&v25, &unk_27EF23C40, &qword_249E7D8E0);
    goto LABEL_13;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    goto LABEL_14;
  }

  v6 = v23;
  v7 = v24;
  v8 = *MEMORY[0x277D44278];
  *&v25 = sub_249E7AAA8();
  *(&v25 + 1) = v9;
  sub_249E7B0C8();
  sub_249E558D4(&v23, a1, &v25);
  sub_249DFE850(&v23);
  if (*(&v26 + 1))
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_249E2A8CC(&v25, &unk_27EF23C40, &qword_249E7D8E0);
    v11 = 0;
    v12 = 0;
  }

  v18 = *MEMORY[0x277D442D0];
  *&v25 = sub_249E7AAA8();
  *(&v25 + 1) = v19;
  sub_249E7B0C8();
  sub_249E558D4(&v23, a1, &v25);
  sub_249DFE850(&v23);
  if (*(&v26 + 1))
  {
    v20 = swift_dynamicCast();
    if (v20)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    if (v20)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_249E2A8CC(&v25, &unk_27EF23C40, &qword_249E7D8E0);
    v13 = 0;
    v14 = 0;
  }

  v21 = *MEMORY[0x277D442A0];
  *&v25 = sub_249E7AAA8();
  *(&v25 + 1) = v22;
  sub_249E7B0C8();
  sub_249E558D4(&v23, a1, &v25);
  sub_249DFE850(&v23);
  if (*(&v26 + 1))
  {
    result = swift_dynamicCast();
    v15 = v23;
    v16 = v24;
    if (!result)
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    result = sub_249E2A8CC(&v25, &unk_27EF23C40, &qword_249E7D8E0);
    v15 = 0;
    v16 = 0;
  }

  v17 = 1;
LABEL_14:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  return result;
}

uint64_t sub_249E46384()
{
  sub_249DF77C0(v0 + 16);

  v1 = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
  v2 = sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0(v2);
  (*(v3 + 8))(&v1[v0]);
  v4 = *(v0 + OBJC_IVAR____TtC10DropInCore14RapportManager_eventNames);

  v5 = *(v0 + OBJC_IVAR____TtC10DropInCore14RapportManager_requestNames);

  v6 = *(v0 + OBJC_IVAR____TtC10DropInCore14RapportManager_companionLinkClientLoader);

  return v0;
}

uint64_t sub_249E4641C()
{
  sub_249E46384();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RapportManager()
{
  result = qword_28130DC98;
  if (!qword_28130DC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E464C8()
{
  result = sub_249E7A6B8();
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

uint64_t sub_249E465A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return MEMORY[0x2822009F8](sub_249E465C4, 0, 0);
}

uint64_t sub_249E465C4()
{
  v1 = v0[22];
  OUTLINED_FUNCTION_8_1();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = Strong;
    aBlock = v0 + 10;
    v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
    v0[24] = v4;
    [v4 setControlFlags_];
    v0[25] = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
    v5 = v4;
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_4();
      v9 = OUTLINED_FUNCTION_6();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_249DEE000, v6, v7, "Activating Companion Link Client %@", v8, 0xCu);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_1();
    }

    v0[14] = sub_249E4A094;
    v0[15] = v3;
    v11 = MEMORY[0x277D85DD0];
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_249E52140;
    v0[13] = &block_descriptor_38_0;
    v12 = _Block_copy(aBlock);
    v13 = v0[15];

    [v5 setInterruptionHandler_];
    _Block_release(v12);
    v0[14] = sub_249E4A0B0;
    v0[15] = v3;
    v47 = v11;
    v0[10] = v11;
    v0[11] = 1107296256;
    v0[12] = sub_249E52140;
    v0[13] = &block_descriptor_41;
    v14 = _Block_copy(aBlock);
    v15 = v0[15];

    v48 = v5;
    [v5 setInvalidationHandler_];
    _Block_release(v14);
    v16 = *(v3 + OBJC_IVAR____TtC10DropInCore14RapportManager_requestNames);
    v17 = *(v16 + 16);
    OUTLINED_FUNCTION_54_1();

    v19 = 0;
    v20 = (v16 + 40);
    while (v17 != v19)
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return MEMORY[0x282200938](v18);
      }

      ++v19;
      v22 = *(v20 - 1);
      v21 = *v20;

      MEMORY[0x24C204750](v22, v21);
      v23 = sub_249E7AA88();

      OUTLINED_FUNCTION_8_3();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_249E4A0B4;
      *(v24 + 24) = v3;
      v0[14] = sub_249E4A0B8;
      v0[15] = v24;
      v0[10] = v47;
      v0[11] = 1107296256;
      v0[12] = sub_249E475FC;
      v0[13] = &block_descriptor_47;
      v25 = _Block_copy(aBlock);
      v26 = v0[15];

      [v48 registerRequestID:v23 options:0 handler:v25];
      _Block_release(v25);

      v20 += 2;
    }

    v27 = *(v3 + OBJC_IVAR____TtC10DropInCore14RapportManager_eventNames);
    v28 = *(v27 + 16);
    OUTLINED_FUNCTION_54_1();

    v29 = 0;
    v30 = (v27 + 40);
    while (v28 != v29)
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_19;
      }

      ++v29;
      v31 = *(v30 - 1);
      v32 = *v30;

      MEMORY[0x24C204750](v31, v32);
      v33 = sub_249E7AA88();

      OUTLINED_FUNCTION_8_3();
      v34 = swift_allocObject();
      *(v34 + 16) = sub_249E4A0E0;
      *(v34 + 24) = v3;
      v0[14] = sub_249E4A0E4;
      v0[15] = v34;
      v0[10] = v47;
      v0[11] = 1107296256;
      v0[12] = sub_249E47BDC;
      v0[13] = &block_descriptor_53;
      v35 = _Block_copy(aBlock);
      v36 = v0[15];

      [v48 registerEventID:v33 options:0 handler:v35];
      _Block_release(v35);

      v30 += 2;
    }

    v0[14] = sub_249E4A10C;
    v0[15] = v3;
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E47C9C;
    v0[13] = &block_descriptor_56;
    v37 = _Block_copy(aBlock);
    v38 = v0[15];

    [v48 setDeviceFoundHandler_];
    _Block_release(v37);
    v0[14] = sub_249E4A130;
    v0[15] = v3;
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E47C9C;
    v0[13] = &block_descriptor_59;
    v39 = _Block_copy(aBlock);
    v40 = v0[15];

    [v48 setDeviceLostHandler_];
    _Block_release(v39);
    v0[14] = sub_249E4A154;
    v0[15] = v3;
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E47F84;
    v0[13] = &block_descriptor_62_0;
    v41 = _Block_copy(aBlock);
    v42 = v0[15];

    [v48 setDeviceChangedHandler_];
    _Block_release(v41);
    v0[2] = v0;
    v0[3] = sub_249E46D2C;
    v43 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E4518C;
    v0[13] = &block_descriptor_65;
    v0[14] = v43;
    [v48 activateWithCompletion_];
    v18 = (v0 + 2);

    return MEMORY[0x282200938](v18);
  }

  else
  {
    sub_249E49CD8();
    OUTLINED_FUNCTION_40();
    *v44 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_9_0();

    return v45();
  }
}

uint64_t sub_249E46D2C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E46E28()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v5 = *(v0 + 192);
    OUTLINED_FUNCTION_4();
    v6 = OUTLINED_FUNCTION_31_2();
    *v3 = 138412290;
    *(v3 + 1) = v5;
    *v6 = v5;
    v7 = v5;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_249E2A8CC(v6, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 168);

  *v15 = v14;
  OUTLINED_FUNCTION_9_0();

  return v16();
}

uint64_t sub_249E46F3C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v4 = v0[26];
  OUTLINED_FUNCTION_9_0();

  return v5();
}

void sub_249E46FB0()
{
  oslog = sub_249E7A698();
  v0 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_249DEE000, oslog, v0, "Rapport Connection Interrupted", v1, 2u);
    MEMORY[0x24C205870](v1, -1, -1);
  }
}

uint64_t sub_249E4705C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_249DEE000, v4, v5, "Rapport Connection Invalidated", v6, 2u);
    MEMORY[0x24C205870](v6, -1, -1);
  }

  v7 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_249E5ED90(0, 0, v3, &unk_249E7FA48, v9);
}

unint64_t sub_249E471DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - v11;
  if (a1)
  {
    result = sub_249E57980(a1);
    if (result)
    {
      v13 = result;
      sub_249E46078(a2, &v42);
      v14 = v46;
      if (v46 == 255)
      {
      }

      else
      {
        v40 = a3;
        v39 = *(&v42 + 1);
        v15 = v42;
        v37 = *(&v43 + 1);
        v38 = v43;
        v35 = *(&v44 + 1);
        v36 = v44;
        v33 = *(&v45 + 1);
        v34 = v45;
        *__src = v42;
        *&__src[16] = v43;
        *&__src[32] = v44;
        *&__src[48] = v45;
        __src[64] = v46;

        sub_249E49F10(&v42, v41, &qword_27EF23CB0, &unk_249E7F9B0);
        v16 = sub_249E7A698();
        v17 = sub_249E7AE28();

        sub_249E2A8CC(&v42, &qword_27EF23CB0, &unk_249E7F9B0);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v41[0] = v32;
          *v18 = 136315394;
          v19 = sub_249E7A9E8();
          HIDWORD(v31) = v17;
          v21 = v15;
          v22 = sub_249E3A958(v19, v20, v41);

          *(v18 + 4) = v22;
          *(v18 + 12) = 2080;
          sub_249E4A270(v21, v39, v38, v37, v36, v35, v34, v33, v14 & 1);
          v23 = sub_249DF34CC();
          v25 = v24;
          sub_249E2A8CC(&v42, &qword_27EF23CB0, &unk_249E7F9B0);
          v26 = sub_249E3A958(v23, v25, v41);

          *(v18 + 14) = v26;
          _os_log_impl(&dword_249DEE000, v16, BYTE4(v31), "Received Request %s from %s", v18, 0x16u);
          v27 = v32;
          swift_arrayDestroy();
          MEMORY[0x24C205870](v27, -1, -1);
          MEMORY[0x24C205870](v18, -1, -1);
        }

        v28 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v12, 1, 1, v28);
        v29 = swift_allocObject();
        swift_weakInit();
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v29;
        v30[5] = v13;
        memcpy(v30 + 6, __src, 0x41uLL);
        v30[15] = v40;
        v30[16] = a4;

        sub_249E5ED90(0, 0, v12, &unk_249E7FA30, v30);
      }
    }
  }

  return result;
}

uint64_t sub_249E475FC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_249E7A9D8();
  if (a3)
  {
    a3 = sub_249E7A9D8();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_249E4A2DC, v10);
}

void sub_249E47708(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_249E7A9C8();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_249E7A9C8();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_249E7A4C8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

unint64_t sub_249E477F0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - v7;
  if (a1)
  {
    result = sub_249E57980(a1);
    if (result)
    {
      v9 = result;
      sub_249E46078(a2, &v36);
      v10 = v40;
      if (v40 == 255)
      {
      }

      else
      {
        v34 = *(&v36 + 1);
        v11 = v36;
        v32 = *(&v37 + 1);
        v33 = v37;
        v30 = *(&v38 + 1);
        v31 = v38;
        v28 = *(&v39 + 1);
        v29 = v39;
        *__src = v36;
        *&__src[16] = v37;
        *&__src[32] = v38;
        *&__src[48] = v39;
        __src[64] = v40;

        sub_249E49F10(&v36, v35, &qword_27EF23CB0, &unk_249E7F9B0);
        v12 = sub_249E7A698();
        v13 = sub_249E7AE28();

        sub_249E2A8CC(&v36, &qword_27EF23CB0, &unk_249E7F9B0);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v35[0] = v27;
          *v14 = 136315394;
          v15 = sub_249E7A9E8();
          v17 = v11;
          v18 = sub_249E3A958(v15, v16, v35);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2080;
          sub_249E4A270(v17, v34, v33, v32, v31, v30, v29, v28, v10 & 1);
          v19 = sub_249DF34CC();
          v21 = v20;
          sub_249E2A8CC(&v36, &qword_27EF23CB0, &unk_249E7F9B0);
          v22 = sub_249E3A958(v19, v21, v35);

          *(v14 + 14) = v22;
          _os_log_impl(&dword_249DEE000, v12, v13, "Received Event %s from %s", v14, 0x16u);
          v23 = v27;
          swift_arrayDestroy();
          MEMORY[0x24C205870](v23, -1, -1);
          MEMORY[0x24C205870](v14, -1, -1);
        }

        v24 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v24);
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        v26[2] = 0;
        v26[3] = 0;
        v26[4] = v25;
        v26[5] = v9;
        memcpy(v26 + 6, __src, 0x41uLL);
        sub_249E5ED90(0, 0, v8, &unk_249E7FA20, v26);
      }
    }
  }

  return result;
}

uint64_t sub_249E47BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_249E7A9D8();
  if (a3)
  {
    a3 = sub_249E7A9D8();
  }

  v5(v6, a3);
}

void sub_249E47C9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_249E47D04(void *a1, uint64_t a2, const char *a3)
{
  v4 = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
  v5 = a1;
  oslog = sub_249E7A698();
  v6 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_31_2();
    *v4 = 138412546;
    *(v4 + 4) = v5;
    *v7 = v5;
    *(v4 + 6) = 1024;
    v8 = v5;
    v9 = sub_249E616D8();

    *(v4 + 14) = v9;
    _os_log_impl(&dword_249DEE000, oslog, v6, a3, v4, 0x12u);
    sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_1();
    v10 = oslog;
  }

  else
  {

    v10 = v5;
  }
}

void sub_249E47E34(void *a1)
{
  v1 = a1;
  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    *(v3 + 4) = v1;
    *v4 = v1;
    *(v3 + 12) = 1024;
    v5 = v1;
    v6 = sub_249E616D8();

    *(v3 + 14) = v6;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Device Changed %@, Supports Drop In = %{BOOL}d", v3, 0x12u);
    sub_249E2A8CC(v4, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v4, -1, -1);
    MEMORY[0x24C205870](v3, -1, -1);
    v7 = oslog;
  }

  else
  {

    v7 = v1;
  }
}

void sub_249E47F84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_249E48018()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[9];
  OUTLINED_FUNCTION_8_1();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10DropInCore14RapportManager_companionLinkClientLoader);
    v0[11] = v3;

    return MEMORY[0x2822009F8](sub_249E480DC, v3, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v4();
  }
}

uint64_t sub_249E480DC()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[11];
  sub_249E714C0();

  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_249E48178;
  v3 = v0[10];

  return sub_249E434D8();
}

uint64_t sub_249E48178()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v9 = v8;
  *(v10 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249E48278()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E482D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_56_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_50();
  a18 = v20;
  v24 = v20[13];
  v25 = v20[10];
  v26 = v24;
  v27 = sub_249E7A698();
  v28 = sub_249E7AE08();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v20[13];
    v30 = v20[10];
    v31 = OUTLINED_FUNCTION_4();
    v32 = OUTLINED_FUNCTION_4_0();
    a10 = v32;
    *v31 = 136315138;
    swift_getErrorValue();
    v34 = v20[5];
    v33 = v20[6];
    v35 = v20[7];
    v36 = sub_249E7B3A8();
    sub_249E3A958(v36, v37, &a10);
    OUTLINED_FUNCTION_61_0();
    *(v31 + 4) = v21;
    _os_log_impl(&dword_249DEE000, v27, v28, "Failed to Activate Companion Link %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    v38 = v20[13];
    v39 = v20[10];
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_41_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_249E48430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_249E48454, 0, 0);
}

uint64_t sub_249E48454()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[5];
  OUTLINED_FUNCTION_8_1();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_249E4852C;

    return sub_249E437C8();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E4852C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E48618()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[10];
  v2 = v0[8];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[11] = Strong;
    if (Strong)
    {
      v4 = *(v0[8] + 24);
      swift_getObjectType();
      v5 = *(v4 + 16);
      OUTLINED_FUNCTION_19_2();
      v16 = v6 + *v6;
      v8 = *(v7 + 4);
      v9 = swift_task_alloc();
      v0[12] = v9;
      *v9 = v0;
      v9[1] = sub_249E48790;
      v10 = v0[7];
      v11 = v0[6];
      v12 = OUTLINED_FUNCTION_25_0(v0[8]);

      return v13(v12);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v15();
}

uint64_t sub_249E48790()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E48894()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E488F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a7;
  v8[39] = a8;
  v8[36] = a5;
  v8[37] = a6;
  v8[35] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v8[40] = v9;
  v10 = *(v9 - 8);
  v8[41] = v10;
  v11 = *(v10 + 64) + 15;
  v8[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E489C8, 0, 0);
}

uint64_t sub_249E489C8()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[35];
  OUTLINED_FUNCTION_8_1();
  Strong = swift_weakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_249E48AA8;

    return sub_249E437C8();
  }

  else
  {
    v5 = v0[42];

    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249E48AA8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 352);
  *v2 = *v0;
  *(v1 + 360) = v5;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E48B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[43];
  if (v22[45])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v22[46] = Strong;
    if (Strong)
    {
      v27 = *(v22[43] + 24);
      swift_getObjectType();
      v28 = *(v27 + 8);
      OUTLINED_FUNCTION_19_2();
      v86 = v29 + *v29;
      v31 = *(v30 + 4);
      v32 = swift_task_alloc();
      v22[47] = v32;
      *v32 = v22;
      v32[1] = sub_249E48F68;
      v33 = v22[36];
      v34 = v22[37];
      OUTLINED_FUNCTION_25_0(v22[43]);
      OUTLINED_FUNCTION_72();

      return v41(v35, v36, v37, v38, v39, v40, v41, v42, a9, v86, a11, a12, a13, a14);
    }

    sub_249E49CD8();
    v45 = OUTLINED_FUNCTION_40();
    *v46 = 1;
    v48 = v22[41];
    v47 = v22[42];
    v49 = v22[40];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7D7D0;
    v51 = *MEMORY[0x277D442F0];
    *(inited + 32) = sub_249E7AAA8();
    *(inited + 40) = v52;
    sub_249E7A818();
    v53 = &unk_249E7E860;
    OUTLINED_FUNCTION_49_0();
    v55 = OUTLINED_FUNCTION_37_1(v54);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_37_1(v56);
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_37_1(v57);
    OUTLINED_FUNCTION_20_1();
    v58 = OUTLINED_FUNCTION_34_2();
    v59(v58);
    sub_249E7AA08();
    if (v45)
    {
      v60 = v22[43];
      v61 = v22[37];
      v62 = v45;
      sub_249E49D2C(v61, (v22 + 2));
      v63 = v45;
      v64 = sub_249E7A698();
      v53 = sub_249E7AE08();

      sub_249E2A190(v61);
      if (os_log_type_enabled(v64, v53))
      {
        v65 = v22[37];
        v66 = OUTLINED_FUNCTION_188();
        v67 = OUTLINED_FUNCTION_6();
        v55 = OUTLINED_FUNCTION_4_0();
        a11 = v55;
        *v66 = 138412546;
        v68 = v45;
        v69 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 4) = v69;
        *v67 = v69;
        OUTLINED_FUNCTION_42_0();
        v70 = sub_249DF34CC();
        v72 = sub_249E3A958(v70, v71, &a11);

        *(v66 + 14) = v72;
        OUTLINED_FUNCTION_29_1(&dword_249DEE000, v73, v74, "Send Rapport Response Error: %@ to %s");
        sub_249E2A8CC(v67, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_1();
        __swift_destroy_boxed_opaque_existential_0(v55);
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_15();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_57_0();
    v76 = v75;

    (v55)(0, v76, v45);
  }

  else
  {
  }

  v77 = v22[42];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E48F68()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 376);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  v5[48] = v0;

  if (!v0)
  {
    v11 = v5[46];
    swift_unknownObjectRelease();
    v5[49] = v3;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_249E4907C()
{
  OUTLINED_FUNCTION_50();
  v46 = v0;
  v1 = v0[49];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  v6 = *MEMORY[0x277D442F0];
  *(inited + 32) = sub_249E7AAA8();
  *(inited + 40) = v7;
  sub_249E7A818();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_37_1(v8);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37_1(v9);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_37_1(v10);
  OUTLINED_FUNCTION_20_1();
  v11 = OUTLINED_FUNCTION_34_2();
  v12(v11);
  v13 = sub_249E7AA08();
  if (v1)
  {
    v14 = v0[43];
    v15 = v0[37];

    sub_249E49D2C(v15, (v0 + 11));
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();
    sub_249E2A190(v15);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[37];
      v19 = OUTLINED_FUNCTION_188();
      v45 = OUTLINED_FUNCTION_62_0();
      *v19 = 136315394;
      v20 = sub_249E7A9F8();
      v22 = v21;

      v23 = sub_249E3A958(v20, v22, &v45);

      *(v19 + 4) = v23;
      OUTLINED_FUNCTION_42_0();
      v24 = sub_249DF34CC();
      OUTLINED_FUNCTION_42(v24, v25, v26, v27, v28, v29, v30, v31, v45);
      OUTLINED_FUNCTION_61_0();
      *(v19 + 14) = v23;
      OUTLINED_FUNCTION_29_1(&dword_249DEE000, v32, v33, "Send Rapport Response: %s to %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }

    sub_249E56C58(v1);
    v34 = v35;
  }

  else
  {
    v34 = 0;
  }

  v36 = v0[45];
  v37 = v0[43];
  v39 = v0[38];
  v38 = v0[39];
  sub_249E56EE0(v13);
  v41 = v40;

  v39(v34, v41, 0);

  v42 = v0[42];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X1, X16 }
}

void sub_249E49358()
{
  OUTLINED_FUNCTION_50();
  v90 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  swift_unknownObjectRelease();
  *(v0 + 264) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 384);
  v6 = *(v0 + 344);
  v7 = *(v0 + 288);
  if (v4 && *(v0 + 81) == 6)
  {

    v8 = sub_249E7A698();
    v9 = sub_249E7AE28();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 360);
    v12 = *(v0 + 344);
    if (v10)
    {
      v13 = *(v0 + 288);
      v14 = OUTLINED_FUNCTION_4();
      v15 = OUTLINED_FUNCTION_4_0();
      v89 = v15;
      *v14 = 136315138;
      v16 = sub_249E7A9E8();
      v18 = sub_249E3A958(v16, v17, &v89);

      *(v14 + 4) = v18;
      OUTLINED_FUNCTION_19_1(&dword_249DEE000, v19, v20, "Request already handled, Request = %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_15_1();
    }

    else
    {
    }

    v83 = *(v0 + 264);
  }

  else
  {

    v21 = v5;
    v22 = sub_249E7A698();
    v23 = sub_249E7AE08();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 384);
      v25 = *(v0 + 288);
      v26 = OUTLINED_FUNCTION_188();
      v89 = OUTLINED_FUNCTION_62_0();
      *v26 = 136315394;
      swift_getErrorValue();
      v28 = *(v0 + 240);
      v27 = *(v0 + 248);
      v29 = *(v0 + 256);
      v30 = sub_249E7B3A8();
      v38 = OUTLINED_FUNCTION_42(v30, v31, v32, v33, v34, v35, v36, v37, v89);

      *(v26 + 4) = v38;
      *(v26 + 12) = 2080;
      v39 = sub_249E7A9E8();
      v47 = OUTLINED_FUNCTION_42(v39, v40, v41, v42, v43, v44, v45, v46, v89);

      *(v26 + 14) = v47;
      _os_log_impl(&dword_249DEE000, v22, v23, "Failed to handle request. Error = %s, Request = %s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15_1();
    }

    v48 = *(v0 + 384);
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v51 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7D7D0;
    v53 = *MEMORY[0x277D442F0];
    *(inited + 32) = sub_249E7AAA8();
    *(inited + 40) = v54;
    sub_249E7A818();
    v55 = &unk_249E7E860;
    OUTLINED_FUNCTION_49_0();
    v57 = OUTLINED_FUNCTION_37_1(v56);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_37_1(v58);
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_37_1(v59);
    OUTLINED_FUNCTION_20_1();
    v60 = OUTLINED_FUNCTION_34_2();
    v61(v60);
    sub_249E7AA08();
    if (v48)
    {
      v62 = *(v0 + 344);
      v63 = *(v0 + 296);
      v64 = v48;
      sub_249E49D2C(v63, v0 + 16);
      v65 = v48;
      v66 = sub_249E7A698();
      v55 = sub_249E7AE08();

      sub_249E2A190(v63);
      if (os_log_type_enabled(v66, v55))
      {
        v67 = *(v0 + 296);
        v68 = OUTLINED_FUNCTION_188();
        v69 = OUTLINED_FUNCTION_6();
        v57 = OUTLINED_FUNCTION_4_0();
        v89 = v57;
        *v68 = 138412546;
        v70 = v48;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v71;
        *v69 = v71;
        OUTLINED_FUNCTION_42_0();
        v72 = sub_249DF34CC();
        v80 = OUTLINED_FUNCTION_42(v72, v73, v74, v75, v76, v77, v78, v79, v89);

        *(v68 + 14) = v80;
        OUTLINED_FUNCTION_29_1(&dword_249DEE000, v81, v82, "Send Rapport Response Error: %@ to %s");
        sub_249E2A8CC(v69, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_1();
        __swift_destroy_boxed_opaque_existential_0(v57);
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_15();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_57_0();
    v85 = v84;

    (v57)(0, v85, v48);

    v83 = v48;
  }

  v86 = *(v0 + 336);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_249E498AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 2;
  v6 = *(*v2 + 112);
  sub_249DF691C(0, &unk_28130D1D0, 0x277D6EEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CC0, &qword_249E7FA78);
  v7 = sub_249E7AAC8();
  MEMORY[0x24C204750](v7);

  sub_249E7A6A8();
  v8 = *(v2 + 112);
  v9 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  sub_249DF1A08(a1);
  sub_249DF2D58(v8);
  sub_249DF2D58(a1);
  return v3;
}

uint64_t sub_249E499D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 2;
  v6 = *(*v2 + 112);
  sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CB8, &qword_249E7FA70);
  v7 = sub_249E7AAC8();
  MEMORY[0x24C204750](v7);

  sub_249E7A6A8();
  v8 = *(v2 + 112);
  v9 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  sub_249DF1A08(a1);
  sub_249DF2D58(v8);
  sub_249DF2D58(a1);
  return v3;
}

uint64_t sub_249E49AFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249E49BF4;

  return v7(a1);
}

uint64_t sub_249E49BF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5();
}

unint64_t sub_249E49CD8()
{
  result = qword_27EF23CA8;
  if (!qword_27EF23CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23CA8);
  }

  return result;
}

uint64_t sub_249E49D88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_3(v6);
  *v7 = v8;
  v7[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_49_1();

  return sub_249E440FC(v9, v10, v11, v12, v13, v4, v5);
}

uint64_t sub_249E49E54()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_4_3();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  *v6 = v7;
  v6[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_34();

  return sub_249E4471C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_249E49F10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_249E49F70()
{
  OUTLINED_FUNCTION_23();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26_1(v4);

  return v7(v6);
}

uint64_t sub_249E4A004()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E042BC;

  return sub_249E465A4(v2, v0);
}

uint64_t block_copy_helper_36_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E4A0B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249E4A0E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249E4A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  if (a9)
  {
  }

  return result;
}

uint64_t sub_249E4A1D0()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_4_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E042BC;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_49_1();

  return sub_249E48430(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_249E4A270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
  }
}

uint64_t sub_249E4A2E4()
{
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_49_1();

  return sub_249E488F4(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_249E4A39C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  v7 = OUTLINED_FUNCTION_5_8();

  return sub_249E47FF8(v7, v8, v9, v3);
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249E4A478()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  v7 = OUTLINED_FUNCTION_5_8();

  return sub_249E431CC(v7, v8, v9, v3);
}

unint64_t sub_249E4A514()
{
  result = qword_28130D230;
  if (!qword_28130D230)
  {
    sub_249E7AE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D230);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RapportManager.RapportManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E4A64C()
{
  result = qword_27EF23CC8;
  if (!qword_27EF23CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23CC8);
  }

  return result;
}

void OUTLINED_FUNCTION_13_3()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_249E7A6E8();
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_28_1(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_29_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_1(unint64_t *a1)
{

  return sub_249E42168(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 112);

  return sub_249E4A15C(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

void OUTLINED_FUNCTION_57_0()
{
  v3 = v1[45];
  v4 = v1[43];
  v6 = v1[38];
  v5 = v1[39];

  sub_249E56EE0(v0);
}

uint64_t OUTLINED_FUNCTION_61_0()
{
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_63_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_249E4A968(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, _BYTE *), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v6 = a4;
  v8 = result;
  v9 = 0;
  v10 = *(a3 + 16);
  v11 = a3 + 32;
  v12 = MEMORY[0x277D84F90];
  v18 = result;
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_14;
    }

    if (v9 >= *(a3 + 16))
    {
      break;
    }

    sub_249E3B9A4(v11, v21);
    v13 = v8(v21);
    if (v5)
    {
      __swift_destroy_boxed_opaque_existential_0(v21);

LABEL_14:

      return v12;
    }

    if (v13)
    {
      v6(v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a5(0, *(v12 + 16) + 1, 1);
        v12 = v22;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        a5(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      v6 = a4;
      result = (a4)(v20, v12 + 40 * v16 + 32);
      v8 = v18;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v21);
    }

    v11 += 40;
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E4AAF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_249E7A6B8();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_remoteTransport) = a2;
  sub_249E7A6A8();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_logger, v13, v5);
  return v2;
}

uint64_t sub_249E4AC08(uint64_t a1, uint64_t a2)
{
  v6 = sub_249E7A628();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  sub_249E3B9A4(a1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D00, &qword_249E7FE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D08, &qword_249E7FE78);
  if (!swift_dynamicCast())
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    sub_249E4DF9C(&v48, &qword_27EF23D10, &qword_249E7FE80);
    sub_249E4D928();
    OUTLINED_FUNCTION_40();
    return OUTLINED_FUNCTION_190(v33, 2);
  }

  v45 = a2;
  sub_249DF0790(&v48, v52);
  v15 = *(v2 + 16);
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_0(v52, v52[3]);
  v16 = OUTLINED_FUNCTION_10_2();
  v17(v16);
  v18 = sub_249DF530C(v14);
  v19 = *(v9 + 8);
  v19(v14, v6);
  if (!v18)
  {
    sub_249E3B9A4(v52, v51);
    v35 = sub_249E7A698();
    v36 = sub_249E7AE08();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_70();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v46 = swift_slowAlloc();
      *&v48 = v46;
      *v37 = 136315138;
      __swift_project_boxed_opaque_existential_0(v51, v51[3]);
      v38 = OUTLINED_FUNCTION_10_2();
      v39(v38);
      sub_249DF49D8();
      v40 = sub_249E7B2D8();
      v42 = v41;
      v19(v14, v6);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v43 = sub_249E3A958(v40, v42, &v48);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_249DEE000, v35, v36, "Failed to find home with UUID %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    sub_249E4D928();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v44, 3);
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  sub_249E4B0F4(v18, v45);
  if (!v3)
  {
    sub_249E3B9A4(v45, v51);
    sub_249E3B9A4(a1, &v48);
    v20 = sub_249E7A698();
    v21 = sub_249E7AE28();
    if (!os_log_type_enabled(v20, v21))
    {

      __swift_destroy_boxed_opaque_existential_0(v51);
      __swift_destroy_boxed_opaque_existential_0(&v48);
      return __swift_destroy_boxed_opaque_existential_0(v52);
    }

    v22 = OUTLINED_FUNCTION_188();
    v53 = swift_slowAlloc();
    *v22 = 136315394;
    sub_249E3B9A4(v51, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    v23 = sub_249E7AAC8();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(v51);
    v26 = sub_249E3A958(v23, v25, &v53);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = v50;
    __swift_project_boxed_opaque_existential_0(&v48, *(&v49 + 1));
    v28 = *(v27 + 32);
    v29 = sub_249E7B2D8();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_0(&v48);
    v32 = sub_249E3A958(v29, v31, &v53);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_249DEE000, v20, v21, "Validated Outgoing Sender and Message on %s. Message = %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  return __swift_destroy_boxed_opaque_existential_0(v52);
}

void sub_249E4B0F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [*(v3 + 16) currentAccessory];
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = a1;
    v10 = sub_249E7A698();
    v11 = sub_249E7AE28();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v7;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_249DEE000, v10, v11, "Validating Current Accessory %@ in home %@", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v13, -1, -1);
      MEMORY[0x24C205870](v12, -1, -1);
    }

    sub_249E4BC64(v8, v9);
  }

  else
  {
    v16 = [a1 currentUser];
    v17 = a1;
    v8 = v16;
    v18 = sub_249E7A698();
    v19 = sub_249E7AE28();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v8;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v8;
      v21[1] = v17;
      v22 = v17;
      v23 = v8;
      _os_log_impl(&dword_249DEE000, v18, v19, "Validating Current User %@ in home %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v21, -1, -1);
      MEMORY[0x24C205870](v20, -1, -1);
    }

    sub_249E4B6C4(v8, v17, a2);
  }
}

uint64_t sub_249E4B3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_249E3B9A4(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_249DF691C(0, &unk_28130D190, 0x277CD1EE0);
  if (OUTLINED_FUNCTION_15_3())
  {
    v10 = v38;
    OUTLINED_FUNCTION_12_3();
    sub_249E4B6C4(v11, v12, v13);
  }

  else
  {
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    if ((OUTLINED_FUNCTION_15_3() & 1) == 0)
    {
      if ((OUTLINED_FUNCTION_15_3() & 1) == 0)
      {
        sub_249E4D928();
        v17 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_190(v35, 11);
        goto LABEL_8;
      }

      memcpy(__dst, __src, 0x41uLL);
      OUTLINED_FUNCTION_12_3();
      sub_249E4C178(v31, v32, v33, v34);
      v16 = v6;
      if (v6)
      {
        sub_249E2A190(__dst);
        goto LABEL_7;
      }

      sub_249E2A2A4(&v38);
      sub_249E2A190(__dst);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0(v37);
      return 1;
    }

    v10 = v38;
    OUTLINED_FUNCTION_12_3();
    sub_249E4BC64(v14, v15);
  }

  v16 = v6;
  if (!v6)
  {

    goto LABEL_13;
  }

LABEL_7:
  v17 = v16;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(v37);
  sub_249E3B9A4(a1, __src);
  v18 = v17;
  v19 = sub_249E7A698();
  v20 = sub_249E7AE08();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_188();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v21 = 136315394;
    sub_249E3B9A4(__src, v37);
    v24 = sub_249E7AAC8();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_0(__src);
    v27 = sub_249E3A958(v24, v26, &v40);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2112;
    v28 = v17;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v29;
    *v22 = v29;
    _os_log_impl(&dword_249DEE000, v19, v20, "Failed to Validate Destination %s. Error = %@", v21, 0x16u);
    sub_249E4DF9C(v22, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(__src);
  }

  return 0;
}

void sub_249E4B6C4(void *a1, id a2, uint64_t a3)
{
  v6 = [a2 homeAccessControlForUser_];
  v7 = [v6 isAccessAllowed];

  if (!v7)
  {
    v23 = a1;
    v24 = sub_249E7A698();
    v25 = sub_249E7AE08();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_249DEE000, v24, v25, "User does not have Home Access: %@", v26, 0xCu);
      sub_249E4DF9C(v27, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v27, -1, -1);
      MEMORY[0x24C205870](v26, -1, -1);
    }

    sub_249E4D928();
    swift_allocError();
    v30 = 9;
    goto LABEL_10;
  }

  if ((sub_249DF8B94(a1) & 1) == 0)
  {
    v31 = a1;
    v32 = sub_249E7A698();
    v33 = sub_249E7AE08();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_249DEE000, v32, v33, "User does not have Drop In Access: %@", v34, 0xCu);
      sub_249E4DF9C(v35, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v35, -1, -1);
      MEMORY[0x24C205870](v34, -1, -1);
    }

    sub_249E7ADD8();
    goto LABEL_14;
  }

  sub_249E3B9A4(a3, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
  sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  if (swift_dynamicCast())
  {

    v8 = [a2 homeAccessControlForUser_];
    v9 = [v8 isRemoteAccessAllowed];

    if ((v9 & 1) == 0)
    {
      v37 = a1;
      v38 = sub_249E7A698();
      v39 = sub_249E7AE08();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_249DEE000, v38, v39, "User does not have remote access. %@", v40, 0xCu);
        sub_249E4DF9C(v41, &unk_27EF23C30, &qword_249E7DA20);
        MEMORY[0x24C205870](v41, -1, -1);
        MEMORY[0x24C205870](v40, -1, -1);
      }

      sub_249E4D928();
      swift_allocError();
      v30 = 5;
LABEL_10:
      *v29 = v30;
LABEL_14:
      swift_willThrow();
      return;
    }
  }

  sub_249E3B9A4(a3, v44);
  v10 = a1;
  v11 = a2;
  v12 = sub_249E7A698();
  v13 = sub_249E7AE28();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45 = v16;
    *v14 = 138412802;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    *(v14 + 22) = 2080;
    sub_249E3B9A4(v44, v43);
    v17 = v10;
    v18 = v11;
    v19 = sub_249E7AAC8();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v22 = sub_249E3A958(v19, v21, &v45);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_249DEE000, v12, v13, "Validated User %@ in Home %@ on Transport %s", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C205870](v16, -1, -1);
    MEMORY[0x24C205870](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v44);
  }
}

void sub_249E4BC64(void *a1, void *a2)
{
  v5 = sub_249E7A628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v43 - v11;
  v13 = [a1 home];
  if (v13)
  {
    v43[1] = v2;
    v44 = v13;
    v14 = [v13 uniqueIdentifier];
    sub_249E7A608();

    v15 = [a2 uniqueIdentifier];
    sub_249E7A608();

    LOBYTE(v15) = sub_249E7A5F8();
    v16 = *(v6 + 8);
    v16(v10, v5);
    v16(v12, v5);
    if (v15)
    {
      v17 = a2;
      if ([a1 supportsDropIn])
      {

        return;
      }

      v35 = a1;
      v36 = v17;
      v37 = sub_249E7A698();
      v38 = sub_249E7AE08();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412546;
        *(v39 + 4) = v35;
        *(v39 + 12) = 2112;
        *(v39 + 14) = v36;
        *v40 = v35;
        v40[1] = v36;
        v41 = v35;
        v42 = v36;
        _os_log_impl(&dword_249DEE000, v37, v38, "Accessory does not support Drop In. %@, Home = %@", v39, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
        swift_arrayDestroy();
        MEMORY[0x24C205870](v40, -1, -1);
        MEMORY[0x24C205870](v39, -1, -1);
      }

      sub_249E4D928();
      swift_allocError();
      v34 = 12;
    }

    else
    {
      v25 = a1;
      v26 = a2;
      v27 = sub_249E7A698();
      v28 = sub_249E7AE08();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412546;
        *(v29 + 4) = v25;
        *(v29 + 12) = 2112;
        *(v29 + 14) = v26;
        *v30 = v25;
        v30[1] = v26;
        v31 = v25;
        v32 = v26;
        _os_log_impl(&dword_249DEE000, v27, v28, "Accessory not contained in target home. %@, Home = %@", v29, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
        swift_arrayDestroy();
        MEMORY[0x24C205870](v30, -1, -1);
        MEMORY[0x24C205870](v29, -1, -1);
      }

      sub_249E4D928();
      swift_allocError();
      v34 = 10;
    }

    *v33 = v34;
    swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = sub_249E7A698();
    v20 = sub_249E7AE08();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_249DEE000, v19, v20, "No Home for Accessory. %@", v21, 0xCu);
      sub_249E4DF9C(v22, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v22, -1, -1);
      MEMORY[0x24C205870](v21, -1, -1);
    }

    sub_249E4D928();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
  }
}

void sub_249E4C178(_OWORD *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v50 = a2;
  v39 = __src[3];
  v40 = __src[1];
  v37 = __src[2];
  v38 = *__src;
  v36 = *(__src + 64);
  memcpy(__dst, __src, sizeof(__dst));
  v34 = a3;
  sub_249E3B9A4(a3, v44);
  v9 = *__dst;
  v10 = *&__dst[8];
  v11 = *&__dst[16];
  v12 = *&__dst[24];
  v48 = *&__dst[32];
  v49 = *&__dst[48];
  if (__dst[64])
  {
    sub_249E49D2C(__src, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
    if (swift_dynamicCast())
    {
      v45[0] = v9;
      v45[1] = v10;
      v45[2] = v11;
      v45[3] = v12;
      v46 = v48;
      v47 = v49;
      v13 = *(v35 + OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_remoteTransport);
      v14 = v50;
      v15 = sub_249DFB168(v45, v41[0], v13);
      if (v15)
      {
        v16 = v15;

        v17 = v36 & 1 | 0x80;
        sub_249E49D2C(__src, v42);
        v18 = v14;
        __swift_destroy_boxed_opaque_existential_0(v44);
        memcpy(v42, __dst, 0x41uLL);
        sub_249E2A190(v42);
LABEL_18:
        *a4 = v16;
        *(a4 + 8) = v14;
        *(a4 + 16) = v38;
        *(a4 + 32) = v40;
        *(a4 + 48) = v37;
        *(a4 + 64) = v39;
        *(a4 + 80) = v17;
        return;
      }

      sub_249DFA758(v45, v41[0], v13);
      v16 = v23;

      goto LABEL_11;
    }

LABEL_8:
    sub_249E4D928();
    swift_allocError();
    *v22 = 8;
    swift_willThrow();
    sub_249E4DF9C(__dst, &qword_27EF23CF8, &qword_249E7FE68);
    return;
  }

  sub_249E49D2C(__src, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
  sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v19 = v50;
  sub_249DF9E00(v9, v10, v11, v12, 0, 0, 0, 0, v41[0]);
  if (v20)
  {
    v16 = v20;

    v17 = v36 & 1 | 0x80;
    sub_249E49D2C(__src, v42);
    v21 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
    memcpy(v42, __dst, 0x41uLL);
    sub_249E2A190(v42);
    v14 = v19;
    goto LABEL_18;
  }

  v16 = sub_249DF8FA4(v9, v10, v11, v12, 0, 0, v41[0]);

  v5 = v4;
  v14 = v19;
LABEL_11:
  v24 = v16;
  __swift_destroy_boxed_opaque_existential_0(v44);
  memcpy(v42, __dst, 0x41uLL);
  sub_249E2A190(v42);
  if (v16)
  {
    sub_249E4B6C4(v24, v14, v34);

    if (v5)
    {

      return;
    }

    v17 = v36 & 1;
    sub_249E49D2C(__src, v41);
    v33 = v14;
    goto LABEL_18;
  }

  sub_249E49D2C(__src, v41);
  v25 = sub_249E7A698();
  v26 = sub_249E7AE08();
  sub_249E2A190(__src);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v41[0] = v28;
    *v27 = 136315138;
    v29 = sub_249DF34CC();
    v31 = sub_249E3A958(v29, v30, v41);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_249DEE000, v25, v26, "Failed to find user for sender %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C205870](v28, -1, -1);
    MEMORY[0x24C205870](v27, -1, -1);
  }

  sub_249E4D928();
  swift_allocError();
  *v32 = 4;
  swift_willThrow();
}

void *sub_249E4C640@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v65 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - v10;
  v12 = sub_249E7A628();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v67);
  if (!v68)
  {
    v21 = &unk_27EF23C40;
    v22 = &qword_249E7D8E0;
    v23 = &v67;
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_249E4D928();
    OUTLINED_FUNCTION_40();
    return OUTLINED_FUNCTION_190(v24, 2);
  }

  v64 = a4;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v21 = &qword_27EF234B0;
    v22 = &qword_249E7D910;
    v23 = v11;
LABEL_6:
    sub_249E4DF9C(v23, v21, v22);
    goto LABEL_7;
  }

  (*(v15 + 32))(v20, v11, v12);
  v26 = v65;
  sub_249E4CC44(v20, a2, v65, __src);
  if (v4)
  {
    v27 = OUTLINED_FUNCTION_13_4();
    return v28(v27);
  }

  else
  {
    v29 = OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_logger;
    sub_249E3B9A4(v26, &v67);

    v63 = v29;
    v30 = sub_249E7A698();
    v31 = sub_249E7AE28();

    v62 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_188();
      v61 = v32;
      v60 = swift_slowAlloc();
      v70 = v60;
      *v32 = 136315394;
      sub_249E3B9A4(&v67, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
      v33 = sub_249E7AAC8();
      v59 = v30;
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(&v67);
      v36 = sub_249E3A958(v33, v35, &v70);

      v37 = v61;
      *(v61 + 1) = v36;
      *(v37 + 6) = 2080;
      v38 = sub_249E7A9E8();
      v40 = sub_249E3A958(v38, v39, &v70);

      v41 = v61;
      *(v61 + 14) = v40;
      v42 = v59;
      _os_log_impl(&dword_249DEE000, v59, v62, "Validated Incoming Message on %s. Message = %s", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v67);
    }

    sub_249E49D2C(a2, &v67);
    sub_249E2A248(__src, &v67);
    v43 = sub_249E7A698();
    v44 = sub_249E7AE28();
    sub_249E2A190(a2);
    sub_249E2A2A4(__src);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_188();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v45 = 136315394;
      v62 = v44;
      v46 = sub_249DF34CC();
      v47 = v43;
      v49 = sub_249E3A958(v46, v48, v66);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      sub_249E2A248(__src, &v67);
      v50 = sub_249E4D280();
      v52 = v51;
      sub_249E2A2A4(__src);
      v53 = sub_249E3A958(v50, v52, v66);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_249DEE000, v47, v62, "Sender = %s, HomeMessageSender = %s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {
    }

    v54 = v64;
    v55 = __src[1];
    sub_249E4B0F4(v55, v65);
    v56 = OUTLINED_FUNCTION_13_4();
    v57(v56);

    return memcpy(v54, __src, 0x51uLL);
  }
}

void sub_249E4CC44(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = a4;
  v8 = sub_249E7A628();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  swift_getObjectType();
  v14 = sub_249DF530C(a1);
  if (v14)
  {
    v15 = v14;
    v16 = v28;
    sub_249E4C178(a2, v14, a3, __src);

    if (!v16)
    {
      memcpy(v27, __src, 0x51uLL);
    }
  }

  else
  {
    (*(v9 + 16))(v12, a1, v8);
    v17 = sub_249E7A698();
    v18 = sub_249E7AE08();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      sub_249DF49D8();
      v21 = sub_249E7B2D8();
      v23 = v22;
      (*(v9 + 8))(v12, v8);
      v24 = sub_249E3A958(v21, v23, &v30);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_249DEE000, v17, v18, "Failed to find home with UUID %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C205870](v20, -1, -1);
      MEMORY[0x24C205870](v19, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    sub_249E4D928();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
  }
}

uint64_t sub_249E4CEE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_logger;
  v3 = sub_249E7A6B8();
  OUTLINED_FUNCTION_8_2(v3);
  (*(v4 + 8))(v0 + v2);

  return v0;
}

uint64_t sub_249E4CF58()
{
  sub_249E4CEE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HomeMessageValidator()
{
  result = qword_28130D798;
  if (!qword_28130D798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E4D004()
{
  result = sub_249E7A6B8();
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

uint64_t sub_249E4D0C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 81))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 80) & 0x7E | (*(a1 + 80) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_249E4D108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_249E4D1B8()
{
  result = qword_28130D7C0[0];
  if (!qword_28130D7C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130D7C0);
  }

  return result;
}

void *sub_249E4D230@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *v4;
  result = sub_249E4C640(a1, a2, a3, __src);
  if (!v5)
  {
    return memcpy(a4, __src, 0x51uLL);
  }

  return result;
}

uint64_t sub_249E4D280()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v26 = v0[3];
  v27 = v0[4];
  v28 = v0[5];
  v29 = v0[6];
  v30 = v0[7];
  v31 = v0[8];
  v32 = v0[9];
  *(v0 + 80);
  sub_249E7B128();

  v13 = OUTLINED_FUNCTION_22_1(v5, v6, v7, v8, v9, v10, v11, v12, v24, 0, 0xE000000000000000);
  v14 = sub_249E7AAA8();
  v16 = v15;

  MEMORY[0x24C204750](v14, v16);

  OUTLINED_FUNCTION_20_2();
  v17 = [v2 (v1 + 1272)];
  v18 = sub_249E7AAA8();
  v20 = v19;

  MEMORY[0x24C204750](v18, v20);

  v21 = OUTLINED_FUNCTION_241();
  MEMORY[0x24C204750](v21);
  v22 = sub_249DF34CC();
  MEMORY[0x24C204750](v22);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v25;
}

uint64_t sub_249E4D4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_249E7A628();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a2 + 80);
  if (*(a1 + 80) < 0)
  {
    if (v15 < 0)
    {
      v24 = a2;
      v23 = *a2;
      v16 = *(v24 + 8);
      v25 = [v13 uniqueIdentifier];
      sub_249E7A608();

      v26 = [v23 uniqueIdentifier];
      sub_249E7A608();

      LOBYTE(v26) = sub_249E7A5F8();
      v21 = *(v7 + 8);
      v27 = OUTLINED_FUNCTION_241();
      v21(v27);
      (v21)(v12, v4);
      if (v26)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v30 = 0;
    return v30 & 1;
  }

  if (v15 < 0)
  {
    goto LABEL_8;
  }

  v18 = a2;
  v17 = *a2;
  v16 = *(v18 + 8);
  v19 = [v13 uniqueIdentifier];
  sub_249E7A608();

  v20 = [v17 uniqueIdentifier];
  sub_249E7A608();

  LOBYTE(v20) = sub_249E7A5F8();
  v21 = *(v7 + 8);
  v22 = OUTLINED_FUNCTION_241();
  v21(v22);
  (v21)(v12, v4);
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v28 = [v14 uniqueIdentifier];
  sub_249E7A608();

  v29 = [v16 uniqueIdentifier];
  sub_249E7A608();

  v30 = sub_249E7A5F8();
  v31 = OUTLINED_FUNCTION_241();
  v21(v31);
  (v21)(v12, v4);
  return v30 & 1;
}

uint64_t sub_249E4D760()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v10 = v0[8];
  v11 = v0[9];
  v8 = *(v0 + 80);
  MEMORY[0x24C205020](v8 < 0);
  sub_249E7AF88();
  sub_249E7AF88();
  if (v8)
  {
    MEMORY[0x24C205020](1);
    return sub_249E30EBC();
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();

    return sub_249E7AB18();
  }
}

uint64_t sub_249E4D884()
{
  sub_249E7B408();
  sub_249E4D760();
  return sub_249E7B438();
}

uint64_t sub_249E4D8D4()
{
  sub_249E7B408();
  sub_249E4D760();
  return sub_249E7B438();
}

unint64_t sub_249E4D928()
{
  result = qword_27EF23CD8;
  if (!qword_27EF23CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23CD8);
  }

  return result;
}

uint64_t sub_249E4D97C()
{
  v1[2] = v0;
  v2 = sub_249E7A628();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E4DA3C, 0, 0);
}

uint64_t sub_249E4DA3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v1;
  v5 = v0[4];
  v4 = v0[5];
  if (*(v1 + 80) < 0)
  {
    v21 = [v3 uniqueIdentifier];
    sub_249E7A608();

    sub_249E7A5D8();
    v22 = sub_249E4DFF8(v3);
    v23 = objc_allocWithZone(MEMORY[0x277D069E0]);
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_17_1();
    v20 = sub_249E4DE40(v24, v25, v26, v27, v28, v29, v30, v22, v37, v38, v39);
    v31 = *(v5 + 8);
    v32 = OUTLINED_FUNCTION_241();
    v33(v32);
  }

  else
  {
    v6 = [v3 name];
    v7 = sub_249E7AAA8();

    v8 = [v3 uniqueIdentifier];
    sub_249E7A608();

    sub_249E7A5D8();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_241();
    v11(v10);
    v12 = objc_allocWithZone(MEMORY[0x277D069E0]);
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_17_1();
    v20 = sub_249E4DE40(v13, v14, v15, v16, v17, v18, v19, v7, v37, v38, v39);
  }

  v34 = v0[5];

  v35 = v0[1];

  return v35(v20);
}

uint64_t sub_249E4DBF4()
{
  v0 = sub_249E7B268();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_249E4DC40(char a1)
{
  result = 0x4D64696C61766E69;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1701670760;
      goto LABEL_8;
    case 4:
      v3 = 1919251317;
LABEL_8:
      result = v3 | 0x46746F4E00000000;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_249E4DDDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E4DBF4();
  *a2 = result;
  return result;
}

uint64_t sub_249E4DE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E4DC40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_249E4DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v15 = sub_249E7AA88();

  if (a5)
  {
    v16 = sub_249E7AA88();
  }

  else
  {
    v16 = 0;
  }

  if (a7)
  {
    v17 = sub_249E7AA88();
  }

  else
  {
    v17 = 0;
  }

  if (a9)
  {
    v18 = sub_249E7AA88();
  }

  else
  {
    v18 = 0;
  }

  if (a11 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_249E7A4E8();
    sub_249E4E9BC(a10, a11);
  }

  v20 = [v11 initWithType:a1 value:v15 givenName:v16 familyName:v17 displayName:v18 imageData:v19];

  return v20;
}

uint64_t sub_249E4DF9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_249E4DFF8(void *a1)
{
  v1 = [a1 configuredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E4E05C(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_5_9(a1);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_8_2(v5);
  (*(v12 + 16))();
  v51 = v1;
  v52 = v4;
  __swift_allocate_boxed_opaque_existential_0(v50);
  OUTLINED_FUNCTION_8_2(v1);
  (*(v13 + 16))();
  sub_249E3B9A4(v53, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D00, &qword_249E7FE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D08, &qword_249E7FE78);
  if (!OUTLINED_FUNCTION_16_2())
  {
    OUTLINED_FUNCTION_9_4();
    sub_249E4DF9C(v47, &qword_27EF23D10, &qword_249E7FE80);
LABEL_12:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_249DF0790(v47, v49);
  v14 = *(v3 + 16);
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_0(v49, v49[3]);
  v15 = OUTLINED_FUNCTION_0_12();
  v16(v15);
  v17 = sub_249DF530C(v2);
  v18 = *(v9 + 8);
  v19 = OUTLINED_FUNCTION_241();
  v20 = v18(v19);
  if (!v17)
  {
    sub_249E3B9A4(v49, v48);
    v33 = sub_249E7A698();
    v34 = sub_249E7AE08();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_70();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v36 = swift_slowAlloc();
      *&v47[0] = v36;
      *v35 = 136315138;
      __swift_project_boxed_opaque_existential_0(v48, v48[3]);
      v37 = OUTLINED_FUNCTION_0_12();
      v38(v37);
      sub_249DF49D8();
      v39 = sub_249E7B2D8();
      v41 = v40;
      v42 = OUTLINED_FUNCTION_241();
      v18(v42);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v43 = sub_249E3A958(v39, v41, v47);

      *(v35 + 4) = v43;
      OUTLINED_FUNCTION_19_3(&dword_249DEE000, v44, v45, "Failed to find home with UUID %s");
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v48);
    }

    __swift_destroy_boxed_opaque_existential_0(v49);
    goto LABEL_12;
  }

  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_6();
  v21 = sub_249E4A968(sub_249E4E4D8, v6, v2, sub_249E4EB90, sub_249E5DAAC);

  v22 = sub_249E7A698();
  v23 = sub_249E7AE28();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_70();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v25 = swift_slowAlloc();
    v48[0] = v25;
    *v24 = 136315138;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237F8, &qword_249E7E250);
    v27 = MEMORY[0x24C204800](v21, v26);
    v29 = v28;

    v30 = sub_249E3A958(v27, v29, v48);

    *(v24 + 4) = v30;
    OUTLINED_FUNCTION_21_2(&dword_249DEE000, v31, v32, "Validated Destinations: %s");
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v49);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v50);
  return v21;
}

uint64_t sub_249E4E50C(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_5_9(a1);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_8_2(v5);
  (*(v12 + 16))();
  v51 = v1;
  v52 = v4;
  __swift_allocate_boxed_opaque_existential_0(v50);
  OUTLINED_FUNCTION_8_2(v1);
  (*(v13 + 16))();
  sub_249E3B9A4(v53, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D00, &qword_249E7FE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D08, &qword_249E7FE78);
  if (!OUTLINED_FUNCTION_16_2())
  {
    OUTLINED_FUNCTION_9_4();
    sub_249E4DF9C(v47, &qword_27EF23D10, &qword_249E7FE80);
LABEL_12:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_249DF0790(v47, v49);
  v14 = *(v3 + 16);
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_0(v49, v49[3]);
  v15 = OUTLINED_FUNCTION_0_12();
  v16(v15);
  v17 = sub_249DF530C(v2);
  v18 = *(v9 + 8);
  v19 = OUTLINED_FUNCTION_241();
  v20 = v18(v19);
  if (!v17)
  {
    sub_249E3B9A4(v49, v48);
    v33 = sub_249E7A698();
    v34 = sub_249E7AE08();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_70();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v36 = swift_slowAlloc();
      *&v47[0] = v36;
      *v35 = 136315138;
      __swift_project_boxed_opaque_existential_0(v48, v48[3]);
      v37 = OUTLINED_FUNCTION_0_12();
      v38(v37);
      sub_249DF49D8();
      v39 = sub_249E7B2D8();
      v41 = v40;
      v42 = OUTLINED_FUNCTION_241();
      v18(v42);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v43 = sub_249E3A958(v39, v41, v47);

      *(v35 + 4) = v43;
      OUTLINED_FUNCTION_19_3(&dword_249DEE000, v44, v45, "Failed to find home with UUID %s");
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v48);
    }

    __swift_destroy_boxed_opaque_existential_0(v49);
    goto LABEL_12;
  }

  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_6();
  v21 = sub_249E4A968(sub_249E4E988, v6, v2, sub_249E4EB90, sub_249E5DACC);

  v22 = sub_249E7A698();
  v23 = sub_249E7AE28();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_70();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v25 = swift_slowAlloc();
    v48[0] = v25;
    *v24 = 136315138;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23810, &qword_249E7E270);
    v27 = MEMORY[0x24C204800](v21, v26);
    v29 = v28;

    v30 = sub_249E3A958(v27, v29, v48);

    *(v24 + 4) = v30;
    OUTLINED_FUNCTION_21_2(&dword_249DEE000, v31, v32, "Validated Destinations: %s");
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v49);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v50);
  return v21;
}

uint64_t sub_249E4E9BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249DFE8F8(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for HomeMessageValidator.HomeMessageValidatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeMessageValidator.HomeMessageValidatorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E4EB3C()
{
  result = qword_27EF23D18;
  if (!qword_27EF23D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23D18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{
  *(v1 - 304) = a1;

  return sub_249E7A628();
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  v2 = *(v0 - 304);
}

double OUTLINED_FUNCTION_9_4()
{
  *(v0 - 256) = 0;
  result = 0.0;
  *(v0 - 272) = 0u;
  *(v0 - 288) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_18_2()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 128));
}

void OUTLINED_FUNCTION_19_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x24C204750);
}

void OUTLINED_FUNCTION_21_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_22_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return [v11 description];
}

void sub_249E4ED84(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v6 = sub_249E514A8(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C204D50](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

void sub_249E4EE70(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC);
    sub_249E7AD88();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_249E7B088())
        {
          sub_249E513DC();
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_249E08728();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_249E4F0C4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC);
    sub_249E7AD88();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_249E7B088())
        {
          break;
        }

        sub_249E513DC();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_249E08728();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_249E4F2F4()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 112);

  v2 = OUTLINED_FUNCTION_13_5();
  sub_249E4F3B4(v2, v3, v4);
}

uint64_t sub_249E4F34C()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 112);

  v2 = OUTLINED_FUNCTION_13_5();
  sub_249E4EE70(v2, v3, v4);
  v6 = v5;

  return v6;
}

void sub_249E4F3B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v24 = MEMORY[0x277D84F90];
  if ((a3 & 0xC000000000000001) != 0)
  {
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC);
    sub_249E7AD88();
    v4 = v23[1];
    v5 = v23[2];
    v6 = v23[3];
    v7 = v23[4];
    v8 = v23[5];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v21 = v4;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v23[0] = v17;
        v18 = a1(v23);
        if (v3)
        {
          break;
        }

        if (v18)
        {
          sub_249E7B1A8();
          v19 = *(v24 + 16);
          sub_249E7B1D8();
          sub_249E7B1E8();
          sub_249E7B1B8();
        }

        else
        {
        }

        v7 = v15;
        v8 = v16;
        v4 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_249E7B088())
        {
          sub_249E513DC();
          swift_dynamicCast();
          v17 = v22;
          v15 = v7;
          v16 = v8;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      sub_249E08728();
    }

    else
    {
LABEL_22:
      sub_249E08728();
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_22;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_249E4F638@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC);
    sub_249E7AD88();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_249E4F724()
{
  v1 = v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_249E7B088())
    {
      sub_249E513DC();
      swift_dynamicCast();
      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v3 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      while (1)
      {
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v4 >= ((v0[2] + 64) >> 6))
        {
          v6 = 0;
          v5 = 0;
          goto LABEL_12;
        }

        v2 = *(v0[1] + 8 * v4);
        ++v3;
        if (v2)
        {
          v3 = v4;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v4 = v0[3];
LABEL_11:
    v5 = (v2 - 1) & v2;
    v6 = *(*(*v0 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v2)))));
    v7 = v6;
LABEL_12:
    v1[3] = v3;
    v1[4] = v5;
    if (v6)
    {
LABEL_13:
      v8 = v1[5];
      if (!__OFADD__(v8, 1))
      {
        v1[5] = v8 + 1;
        return;
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_249E4F83C(uint64_t a1)
{
  swift_defaultActor_initialize();
  sub_249E7A6A8();
  sub_249DFC07C(a1);
  *(v1 + 112) = v3;
  return v1;
}

void sub_249E4F8BC(void *a1)
{
  v2 = a1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_4();
    v5 = OUTLINED_FUNCTION_8_5();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    OUTLINED_FUNCTION_7_6(&dword_249DEE000, v7, v8, "Adding Device: %@");
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  swift_beginAccess();
  v9 = v2;
  sub_249E63F70(&v11, v9);
  swift_endAccess();

  v10 = [objc_opt_self() defaultCenter];
  if (qword_28130D208 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_28130E6E8 object:v9];
}

void sub_249E4FA38(void *a1)
{
  v2 = a1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_4();
    v5 = OUTLINED_FUNCTION_8_5();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    OUTLINED_FUNCTION_7_6(&dword_249DEE000, v7, v8, "Removing Device: %@");
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  swift_beginAccess();
  v9 = sub_249E68458(v2);
  swift_endAccess();

  v10 = [objc_opt_self() defaultCenter];
  if (qword_28130D200 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_28130E6E0 object:v2];
}

void sub_249E4FBA8(uint64_t a1)
{
  v2 = sub_249E7A628();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  sub_249E4F2F4();
  v12 = v11;
  (*(v5 + 16))(v10, a1, v2);
  v13 = sub_249E7A698();
  v14 = sub_249E7AE28();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 134218242;
    *(v15 + 4) = sub_249E51FB4(v12);
    *(v15 + 12) = 2080;
    OUTLINED_FUNCTION_0_13();
    sub_249E517C8(v16, v17);
    v18 = sub_249E7B2D8();
    v20 = v19;
    (*(v5 + 8))(v10, v2);
    v21 = sub_249E3A958(v18, v20, &v27);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249DEE000, v13, v14, "Removing %ld devices from home: %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  v22 = sub_249E514A8(v12);
  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x24C204D50](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v24 = *(v12 + 8 * i + 32);
    }

    v25 = v24;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_249E4FA38(v24);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_249E4FE48(void *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();
  v34 = v4;

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_4();
    v7 = OUTLINED_FUNCTION_8_5();
    *v2 = 138412290;
    *(v2 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "Updating Device: %@", v2, 0xCu);
    sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  swift_beginAccess();
  v9 = *(v3 + 112);
  if ((v9 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC);
    sub_249E7AD88();
    v11 = v35[4];
    v10 = v35[5];
    v12 = v35[6];
    v13 = v35[7];
    v14 = v35[8];
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = (v9 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(v9 + 56));
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v11 = v9;
  }

  v18 = 0;
  v19 = (v12 + 64) >> 6;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v20 = v13;
  v21 = v14;
  v22 = v13;
  if (!v14)
  {
    while (1)
    {
      v22 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_21;
      }

      v21 = v10[v22];
      ++v20;
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
LABEL_27:
    [v14 postNotificationName:qword_28130E6D8 object:v18];

    return;
  }

LABEL_14:
  v23 = (v21 - 1) & v21;
  v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  if (v24)
  {
    while (1)
    {
      v35[0] = v24;
      if (sub_249E502B4(v35, v34))
      {
        break;
      }

      v13 = v22;
      v14 = v23;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      if (sub_249E7B088())
      {
        sub_249E513DC();
        swift_dynamicCast();
        v24 = v35[0];
        v22 = v13;
        v23 = v14;
        if (v35[0])
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_12_4();
    v18 = v24;
    v28 = sub_249E7A698();
    v29 = sub_249E7AE28();

    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_4();
      v30 = OUTLINED_FUNCTION_8_5();
      *v9 = 138412290;
      *(v9 + 4) = v18;
      *v30 = v18;
      v31 = v18;
      OUTLINED_FUNCTION_7_6(&dword_249DEE000, v32, v33, "Found and Updating Existing Device: %@");
      sub_249E2A8CC(v30, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15_1();
    }

    [v18 updateWithDevice:v34 updateState:0];
    v14 = [objc_opt_self() defaultCenter];
    if (qword_28130D1F8 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

LABEL_21:
  OUTLINED_FUNCTION_12_4();
  v25 = sub_249E7A698();
  v26 = sub_249E7AE28();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_249DEE000, v25, v26, "No existing device found. Adding as a new device.", v27, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  sub_249E4F8BC(v34);
}

uint64_t sub_249E502B4(id *a1, void *a2)
{
  v4 = sub_249E7A628();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = [*a1 homeKitIdentifier];
  if (v21)
  {
    v22 = v21;
    sub_249E7A608();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  __swift_storeEnumTagSinglePayload(v20, v23, 1, v4);
  v25 = [a2 homeKitIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_249E7A608();

    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v24, 1, v4);
  v27 = *(v7 + 48);
  sub_249DF6A08(v20, v10);
  sub_249DF6A08(v18, &v10[v27]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) != 1)
  {
    sub_249DF6A08(v10, v15);
    if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v4) != 1)
    {
      v29 = v35;
      v30 = &v10[v27];
      v31 = v34;
      (*(v35 + 32))(v34, v30, v4);
      sub_249E517C8(&qword_27EF23760, MEMORY[0x277CC95F0]);
      v28 = sub_249E7AA78();
      v32 = *(v29 + 8);
      v32(v31, v4);
      sub_249E2A8CC(v18, &qword_27EF234B0, &qword_249E7D910);
      sub_249E2A8CC(v20, &qword_27EF234B0, &qword_249E7D910);
      v32(v15, v4);
      sub_249E2A8CC(v10, &qword_27EF234B0, &qword_249E7D910);
      return v28 & 1;
    }

    sub_249E2A8CC(v18, &qword_27EF234B0, &qword_249E7D910);
    sub_249E2A8CC(v20, &qword_27EF234B0, &qword_249E7D910);
    (*(v35 + 8))(v15, v4);
    goto LABEL_11;
  }

  sub_249E2A8CC(v18, &qword_27EF234B0, &qword_249E7D910);
  sub_249E2A8CC(v20, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v4) != 1)
  {
LABEL_11:
    sub_249E2A8CC(v10, &qword_27EF23750, &qword_249E7E130);
    v28 = 0;
    return v28 & 1;
  }

  sub_249E2A8CC(v10, &qword_27EF234B0, &qword_249E7D910);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_249E50708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DropInStateManager.Context(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_249E7A628();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  (*(v14 + 16))(v18 - v17, a1, v11);
  sub_249E30560(a2, v10);
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();
  if (os_log_type_enabled(v20, v21))
  {
    v41 = a2;
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42[0] = v40;
    *v22 = 136315394;
    OUTLINED_FUNCTION_0_13();
    sub_249E517C8(v23, v24);
    v39 = v21;
    v25 = sub_249E7B2D8();
    v26 = a1;
    v28 = v27;
    (*(v14 + 8))(v19, v11);
    v29 = sub_249E3A958(v25, v28, v42);
    a1 = v26;

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    v30 = sub_249E30088();
    v32 = v31;
    sub_249E30628(v10);
    v33 = sub_249E3A958(v30, v32, v42);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_249DEE000, v20, v39, "Updating Device with Accessory ID: %s, context = %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    a2 = v41;
    OUTLINED_FUNCTION_1();
  }

  else
  {

    sub_249E30628(v10);
    (*(v14 + 8))(v19, v11);
  }

  v34 = swift_beginAccess();
  v35 = *(v3 + 112);
  MEMORY[0x28223BE20](v34);
  *&v38[-16] = a1;

  v36 = sub_249E5159C(sub_249E514CC, &v38[-32], v35);
  MEMORY[0x28223BE20](v36);
  *&v38[-16] = v3;
  *&v38[-8] = a2;
  sub_249E4F0C4(sub_249E517AC, &v38[-32], v36);
}

void sub_249E50A8C(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "Updating %@", v7, 0xCu);
    sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v8, -1, -1);
    MEMORY[0x24C205870](v7, -1, -1);
  }

  [v4 setState_];
  v10 = a3[1];
  v11 = a3[2];
  v12 = sub_249E7AA88();
  [v4 setStateReason_];

  v13 = a3 + *(type metadata accessor for DropInStateManager.Context(0) + 24);
  v14 = sub_249E7A538();
  [v4 setStateExpiration_];

  v15 = [objc_opt_self() defaultCenter];
  if (qword_28130D1F8 != -1)
  {
    swift_once();
  }

  [v15 postNotificationName:qword_28130E6D8 object:v4];
}

uint64_t sub_249E50C80()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);

  v4 = sub_249E6972C(v3);

  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_4();
    *v7 = 134217984;
    *(v7 + 4) = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "Drop In Devices (%ld):", v7, 0xCu);
    OUTLINED_FUNCTION_15();
  }

  v8 = *(v1 + 112);

  sub_249E4F638(v9, &v21);
  while (1)
  {
    sub_249E4F724();
    if (!v11)
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    v14 = v11;
    v15 = sub_249E7A698();
    v16 = sub_249E7AE28();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 134218242;
      *(v17 + 4) = v12;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v18 = v13;
      v19 = v14;
      _os_log_impl(&dword_249DEE000, v15, v16, "+ %ld: %@", v17, 0x16u);
      sub_249E2A8CC(v18, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
      v14 = v15;
      v15 = v19;
    }
  }

  return sub_249E08728();
}

uint64_t sub_249E50E80()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC10DropInCore13DeviceManager_logger;
  v3 = sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0(v3);
  (*(v4 + 8))(v0 + v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E50EE8()
{
  sub_249E50E80();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DeviceManager()
{
  result = qword_28130E028;
  if (!qword_28130E028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E50F68()
{
  result = sub_249E7A6B8();
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

uint64_t sub_249E51010(id *a1, uint64_t a2, SEL *a3)
{
  v42 = a2;
  v5 = sub_249E7A628();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v41 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v14 = OUTLINED_FUNCTION_28_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v41 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  v29 = [*a1 *a3];
  if (v29)
  {
    v30 = v29;
    sub_249E7A608();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v28, v31, 1, v5);
  (*(v8 + 16))(v26, v42, v5);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v5);
  v32 = *(v13 + 48);
  sub_249DF6A08(v28, v18);
  sub_249DF6A08(v26, &v18[v32]);
  OUTLINED_FUNCTION_16_3(v18);
  if (!v34)
  {
    sub_249DF6A08(v18, v23);
    OUTLINED_FUNCTION_16_3(&v18[v32]);
    if (!v34)
    {
      v35 = &v18[v32];
      v36 = v41;
      (*(v8 + 32))(v41, v35, v5);
      OUTLINED_FUNCTION_0_13();
      sub_249E517C8(v37, v38);
      v33 = sub_249E7AA78();
      v39 = *(v8 + 8);
      v39(v36, v5);
      sub_249E2A8CC(v26, &qword_27EF234B0, &qword_249E7D910);
      sub_249E2A8CC(v28, &qword_27EF234B0, &qword_249E7D910);
      v39(v23, v5);
      sub_249E2A8CC(v18, &qword_27EF234B0, &qword_249E7D910);
      return v33 & 1;
    }

    OUTLINED_FUNCTION_15_4(v26);
    OUTLINED_FUNCTION_15_4(v28);
    (*(v8 + 8))(v23, v5);
LABEL_12:
    sub_249E2A8CC(v18, &qword_27EF23750, &qword_249E7E130);
    v33 = 0;
    return v33 & 1;
  }

  OUTLINED_FUNCTION_15_4(v26);
  OUTLINED_FUNCTION_15_4(v28);
  OUTLINED_FUNCTION_16_3(&v18[v32]);
  if (!v34)
  {
    goto LABEL_12;
  }

  sub_249E2A8CC(v18, &qword_27EF234B0, &qword_249E7D910);
  v33 = 1;
  return v33 & 1;
}

unint64_t sub_249E513DC()
{
  result = qword_28130D160;
  if (!qword_28130D160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D160);
  }

  return result;
}

uint64_t sub_249E51420()
{
  result = sub_249E7AA88();
  qword_28130E6E8 = result;
  return result;
}

uint64_t sub_249E51458()
{
  result = OUTLINED_FUNCTION_14_3();
  qword_28130E6E0 = result;
  return result;
}

uint64_t sub_249E51480()
{
  result = OUTLINED_FUNCTION_14_3();
  qword_28130E6D8 = result;
  return result;
}

uint64_t sub_249E514A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_249E7B068();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_249E514F4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_249E51518(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_249E7AF68();
  v5 = -1 << *(a2 + 32);
  result = sub_249E7B048();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_249E5159C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v22 = MEMORY[0x277D84FA0];
    sub_249E7B058();
    while (1)
    {
      while (1)
      {
        if (!sub_249E7B088())
        {

          return v4;
        }

        sub_249E513DC();
        swift_dynamicCast();
        v6 = a1(&v21);
        if (v3)
        {

          v20 = v21;

          return v4;
        }

        v7 = v21;
        if (v6)
        {
          break;
        }
      }

      if (*(v4 + 24) <= *(v4 + 16))
      {
        sub_249E64EF8();
      }

      v4 = v22;
      v8 = *(v22 + 40);
      result = sub_249E7AF68();
      v10 = v4 + 56;
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + 8 * v14) = v7;
      ++*(v4 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = sub_249E51810(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }

    return v4;
  }

  return result;
}

uint64_t sub_249E517C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E51810(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v30 = a1;
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v4;
    v28 = &v26;
    MEMORY[0x28223BE20](a1);
    v26 = v8;
    v27 = (&v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_249E6697C(0, v8, v27);
    v29 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v32[0] = *(*(v5 + 48) + 8 * v17);
      v18 = v32[0];
      v19 = v31;
      v20 = v30(v32);
      v31 = v19;
      if (v19)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v21 = v20;

      v5 = v4;
      if (v21)
      {
        *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          a2 = sub_249E51CB0(v27, v26, v29, v5);
          goto LABEL_18;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  a2 = sub_249E51C20(v25, v8, v5, v30);

  MEMORY[0x24C205870](v25, -1, -1);
LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_249E51AB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_249E51CB0(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_249E51C20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_249E51AB4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_249E51CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  result = sub_249E7B108();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_249E7AF68();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void (*sub_249E51E9C(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x24C204D50](v5, v4);
  }

  *v3 = v7;
  return sub_249E51F04;
}

void (*sub_249E51F0C(uint64_t a1, unint64_t a2, uint64_t a3))(id *)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x24C204D50](v5, v4);
  }

  *v3 = v7;
  return sub_249E51FD4;
}

unint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_249DF1AC8(a3);

  return sub_249E514F4(a2, v5, a3);
}

void OUTLINED_FUNCTION_7_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  sub_249E08728();
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_249E7AA88();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{

  return sub_249E2A8CC(a1, v1, v2);
}

uint64_t sub_249E52140(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_249E521BC()
{
  v1 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
  OUTLINED_FUNCTION_20_3();
  return *(v0 + v1);
}

uint64_t sub_249E5221C(char a1)
{
  v3 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void HomeManager.init(options:cachePolicy:)()
{
  OUTLINED_FUNCTION_15_0();
  v26 = v1;
  v27 = v2;
  v25 = sub_249E7AE68();
  v3 = OUTLINED_FUNCTION_3(v25);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_249E7AE58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v13 = sub_249E7A958();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_1_0();
  v0[OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded] = 0;
  v24 = OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249E7A888();
  v30 = v15;
  MEMORY[0x24C204750](0x6E614D656D6F682ELL, 0xEC00000072656761);
  sub_249E7A938();
  v29 = MEMORY[0x277D84F90];
  sub_249E55078(&qword_28130D230, MEMORY[0x277D85230]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&unk_28130D280);
  sub_249E7B018();
  (*(v5 + 104))(v10, *MEMORY[0x277D85260], v25);
  v16 = v0;
  *&v0[v24] = sub_249E7AE98();
  *&v0[OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoadedHandlers] = MEMORY[0x277D84F90];
  v17 = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  *&v0[OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:v26 cachePolicy:v27];
  [v18 setDiscretionary_];
  v19 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v18 setDelegateQueue_];

  v20 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v16[OBJC_IVAR____TtC10DropInCore11HomeManager_manager] = v20;
  v28.receiver = v16;
  v28.super_class = type metadata accessor for HomeManager();
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = *&v21[OBJC_IVAR____TtC10DropInCore11HomeManager_manager];
  v23 = v21;
  [v22 setDelegate_];

  OUTLINED_FUNCTION_6_1();
}

id HomeManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t HomeManager.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeManager());
  HomeManager.init(options:cachePolicy:)();
  v2 = v1;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_249E526DC()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_249E7A928();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v26 = OUTLINED_FUNCTION_11_4();
  v11 = OUTLINED_FUNCTION_3(v26);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_11();
  v25 = *(v2 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v14);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v6;
  v15[4] = v4;
  v27[4] = sub_249E55054;
  v27[5] = v15;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v27[2] = v16;
  v27[3] = &block_descriptor_5;
  v17 = _Block_copy(v27);

  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v18, v19);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&qword_28130D2A0);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v20 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v20);
  _Block_release(v17);
  v21 = OUTLINED_FUNCTION_6_7();
  v22(v21);
  v23 = OUTLINED_FUNCTION_7_7();
  v24(v23);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E52918(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
    swift_beginAccess();
    if (v6[v7])
    {
      v8 = [*&v6[OBJC_IVAR____TtC10DropInCore11HomeManager_manager] homes];
      sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
      v9 = sub_249E7ABE8();

      a2(v9);
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      v11 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoadedHandlers;
      swift_beginAccess();

      sub_249E3A1AC();
      v12 = *(*&v6[v11] + 16);
      sub_249E3A2C4(v12);
      v13 = *&v6[v11];
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = sub_249E55674;
      *(v14 + 40) = v10;
      *&v6[v11] = v13;
      swift_endAccess();
    }
  }

  else
  {
    a2(MEMORY[0x277D84F90]);
  }
}

void sub_249E52B3C(uint64_t a1, uint64_t a2)
{
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v3 = sub_249E7ABD8();
  (*(a2 + 16))(a2, v3);
}

void sub_249E52BB8()
{
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  OUTLINED_FUNCTION_22();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_249E526DC();

  sub_249E7AE48();
}

void sub_249E52C9C()
{
  OUTLINED_FUNCTION_15_0();
  v4 = OUTLINED_FUNCTION_22_2();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v24 = OUTLINED_FUNCTION_11_4();
  v8 = OUTLINED_FUNCTION_3(v24);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  v23 = *(v3 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v11);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v2;
  v12[4] = v0;
  v25[4] = sub_249E5511C;
  v25[5] = v12;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v25[2] = v13;
  v25[3] = &block_descriptor_13;
  v14 = _Block_copy(v25);
  v15 = v2;
  swift_unknownObjectRetain();

  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v16, v17);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&qword_28130D2A0);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v18 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v18);
  _Block_release(v14);
  v19 = OUTLINED_FUNCTION_6_7();
  v20(v19);
  v21 = OUTLINED_FUNCTION_7_7();
  v22(v21);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E52ECC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
      v7 = sub_249E7AE78();
    }

    v8 = *&v6[OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues];
    v9 = a2;
    [v8 setObject:v7 forKey:a3];
  }
}

uint64_t sub_249E53014()
{
  sub_249E52BB8();
  v1 = [*(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_manager) homes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();

  return v2;
}

id sub_249E53144()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_manager) currentHome];

  return v1;
}

id sub_249E531C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_manager) currentAccessory];

  return v1;
}

id HomeManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_249E532D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 homes];
    sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    v6 = sub_249E7ABE8();

    v7 = sub_249E51FB4(v6);
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C204D50](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      [v9 setDelegate_];
    }

    v27 = a2;

    v11 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
    swift_beginAccess();
    v4[v11] = 1;
    v12 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoadedHandlers;
    swift_beginAccess();
    v26 = v12;
    v13 = *&v4[v12];
    v14 = *(v13 + 16);
    v15 = OBJC_IVAR____TtC10DropInCore11HomeManager_manager;

    v16 = 0;
    v17 = (v13 + 40);
    while (v14 != v16)
    {
      if (v16 >= *(v13 + 16))
      {
        goto LABEL_18;
      }

      ++v16;
      v19 = *(v17 - 1);
      v18 = *v17;
      v20 = *&v4[v15];

      v21 = [v20 homes];
      v22 = sub_249E7ABE8();

      v28 = v22;
      v19(&v28);

      v17 += 2;
    }

    v23 = *&v4[v26];
    *&v4[v26] = MEMORY[0x277D84F90];

    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    v25 = v27;
    sub_249E53670(sub_249E5566C, v24);
  }
}

void sub_249E5356C(void *a1, void *a2)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v4 = [a2 homes];
    sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    sub_249E7ABE8();

    v5 = sub_249E7ABD8();
    [a1 didUpdateHomes_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_249E53670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v41 = sub_249E7A928();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_249E7A958();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249E7A998();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_249E7A9B8();
  result = (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v45 = OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues;
  v18 = [*(v3 + OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues) keyEnumerator];
  v19 = [v18 allObjects];

  v20 = sub_249E7ABE8();
  v21 = sub_249E54F24(v20);

  if (!v21)
  {
    return result;
  }

  result = sub_249E51FB4(v21);
  v46 = result;
  if (result)
  {
    if (v46 >= 1)
    {
      v22 = 0;
      v44 = v21 & 0xC000000000000001;
      v36 = (v4 + 8);
      v37 = v50;
      v35 = (v7 + 8);
      v23 = v38;
      do
      {
        if (v44)
        {
          v24 = MEMORY[0x24C204D50](v22, v21);
        }

        else
        {
          v24 = *(v21 + 8 * v22 + 32);
          swift_unknownObjectRetain();
        }

        v25 = [*(v3 + v45) objectForKey_];
        if (v25)
        {
          v26 = v25;
          v27 = swift_allocObject();
          v28 = v43;
          v27[2] = v42;
          v27[3] = v28;
          v27[4] = v24;
          v50[2] = sub_249E5551C;
          v50[3] = v27;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v50[0] = sub_249E52140;
          v50[1] = &block_descriptor_104;
          v47 = _Block_copy(aBlock);

          swift_unknownObjectRetain();
          sub_249E7A938();
          v48 = MEMORY[0x277D84F90];
          sub_249E55078(&qword_28130D2D0, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
          sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
          v29 = v21;
          v30 = v40;
          v31 = v41;
          sub_249E7B018();
          v32 = v47;
          MEMORY[0x24C204A90](0, v23, v30, v47);
          _Block_release(v32);
          swift_unknownObjectRelease();

          v33 = v30;
          v21 = v29;
          (*v36)(v33, v31);
          (*v35)(v23, v39);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v22;
      }

      while (v46 != v22);
    }

LABEL_16:
    __break(1u);
    return result;
  }
}

void sub_249E53C24(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a2 setDelegate_];
    v5 = [a2 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v6 = sub_249E7ABE8();

    v7 = sub_249E51FB4(v6);
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {

        v11 = swift_allocObject();
        *(v11 + 16) = a2;
        v12 = a2;
        sub_249E53670(sub_249E55648, v11);

        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C204D50](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v9 setDelegate_];
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_249E53E58()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_249E7A928();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v28 = OUTLINED_FUNCTION_11_4();
  v12 = OUTLINED_FUNCTION_3(v28);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_11();
  v27 = *(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v15);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_3();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v7;
  v29[4] = v5;
  v29[5] = v16;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v29[2] = v17;
  v29[3] = v3;
  v18 = _Block_copy(v29);

  v19 = v7;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v22 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v22);
  _Block_release(v18);
  v23 = OUTLINED_FUNCTION_6_7();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_7();
  v26(v25);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E54120()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_249E7A928();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v28 = OUTLINED_FUNCTION_11_4();
  v12 = OUTLINED_FUNCTION_3(v28);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_11();
  v27 = *(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v15);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_3();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v7;
  v29[4] = v5;
  v29[5] = v16;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v29[2] = v17;
  v29[3] = v3;
  v18 = _Block_copy(v29);

  v19 = v7;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v22 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v22);
  _Block_release(v18);
  v23 = OUTLINED_FUNCTION_6_7();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_7();
  v26(v25);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

Swift::Void __swiftcall HomeManager.home(_:didAdd:)(HMHome _, HMAccessory didAdd)
{
  OUTLINED_FUNCTION_15_0();
  v6 = OUTLINED_FUNCTION_22_2();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v27 = OUTLINED_FUNCTION_11_4();
  v10 = OUTLINED_FUNCTION_3(v27);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_11();
  v26 = *(v5 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v13);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v4;
  v14[4] = v2;
  v28[4] = sub_249E551A8;
  v28[5] = v14;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v28[2] = v15;
  v28[3] = &block_descriptor_48;
  v16 = _Block_copy(v28);

  v17 = v4;
  v18 = v2;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v19, v20);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&qword_28130D2A0);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v21 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v21);
  _Block_release(v16);
  v22 = OUTLINED_FUNCTION_6_7();
  v23(v22);
  v24 = OUTLINED_FUNCTION_7_7();
  v25(v24);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E545E0(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [a2 setDelegate_];
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a2;
    v8 = a3;
    v9 = a2;
    sub_249E53670(sub_249E555DC, v7);
  }

  return result;
}

void sub_249E547E4()
{
  OUTLINED_FUNCTION_15_0();
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_249E7A928();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v31 = OUTLINED_FUNCTION_11_4();
  v13 = OUTLINED_FUNCTION_3(v31);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_11();
  v30 = *(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v16);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v8;
  v17[4] = v6;
  v32[4] = v4;
  v32[5] = v17;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v32[2] = v18;
  v32[3] = v29;
  v19 = _Block_copy(v32);

  v20 = v8;
  v21 = v6;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v24 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v24);
  _Block_release(v19);
  v25 = OUTLINED_FUNCTION_6_7();
  v26(v25);
  v27 = OUTLINED_FUNCTION_7_7();
  v28(v27);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E54A20(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [a2 setDelegate_];
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = a2;
    v9 = a3;
    sub_249E53670(sub_249E55594, v7);
  }

  return result;
}

uint64_t sub_249E54B80(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_3();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    OUTLINED_FUNCTION_8_3();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = a2;
    v12 = a3;
    sub_249E53670(a5, v10);
  }

  return result;
}

id sub_249E54C18(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v9 = *a4;

    return [a1 v9];
  }

  return result;
}

uint64_t sub_249E54DC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_20_3();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    OUTLINED_FUNCTION_22();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = a2;
    sub_249E53670(a4, v8);
  }

  return result;
}

id sub_249E54E4C(void *a1, uint64_t a2, const char **a3)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v7 = *a3;

    return [a1 v7];
  }

  return result;
}

uint64_t sub_249E54F24(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_249E7B1C8();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_249DF686C(v3, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23E80, qword_249E80078);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_249E7B1A8();
    v4 = *(v7 + 16);
    sub_249E7B1D8();
    sub_249E7B1E8();
    sub_249E7B1B8();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E55078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E550C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249E55674(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_249E7A958();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  v2 = *(v0 - 88);
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_249E7A928();
}

uint64_t OUTLINED_FUNCTION_23_2(unint64_t *a1)
{

  return sub_249E550C0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

double sub_249E55870@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_249DFDA24(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_249DF686C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_249E558D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_249DFDA9C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_249DF686C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_249E55938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;
  v2 = sub_249E7A5D8();
  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  v5 = type metadata accessor for MessageContainer();
  v6 = (v0 + *(v5 + 20));
  v7 = v6[1];
  *(inited + 96) = *v6;
  *(inited + 104) = v7;
  *(inited + 120) = v3;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  v8 = *(v0 + *(v5 + 24));
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v8;

  return sub_249E7AA08();
}

uint64_t sub_249E55A40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_249E7A628();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E55870(6580589, 0xE300000000000000, a1, &v26);
  if (!v27)
  {
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_14() & 1) == 0)
  {
    goto LABEL_17;
  }

  v23 = a2;
  v28 = v24;
  sub_249E55870(6580592, 0xE300000000000000, a1, &v26);
  if (!v27)
  {
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_0_14() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = v25;
  v22 = v24;
  sub_249E55870(112, 0xE100000000000000, a1, &v26);

  if (!v27)
  {
LABEL_13:

LABEL_14:

    v15 = &unk_27EF23C40;
    v16 = &qword_249E7D8E0;
    v17 = &v26;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  if ((OUTLINED_FUNCTION_0_14() & 1) == 0)
  {
LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

  v14 = v24;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    v15 = &qword_27EF234B0;
    v16 = &qword_249E7D910;
    v17 = v7;
LABEL_15:
    sub_249DF6A78(v17, v15, v16);
LABEL_18:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v19 = *(v9 + 32);
  v19(v12, v7, v8);
  v20 = v23;
  v19(v23, v12, v8);
  result = type metadata accessor for MessageContainer();
  v21 = &v20[*(result + 20)];
  *v21 = v22;
  *(v21 + 1) = v13;
  *&v20[*(result + 24)] = v14;
  return result;
}

uint64_t sub_249E55D58()
{
  sub_249E7B128();

  strcpy(v6, "[Identifier = ");
  HIBYTE(v6[1]) = -18;
  sub_249E7A628();
  sub_249E55FBC(&qword_28130D350, MEMORY[0x277CC95F0]);
  v1 = sub_249E7B2D8();
  MEMORY[0x24C204750](v1);

  MEMORY[0x24C204750](0x3D20656D614E202CLL, 0xE900000000000020);
  v2 = type metadata accessor for MessageContainer();
  MEMORY[0x24C204750](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x24C204750](0x616F6C796150202CLL, 0xEC000000203D2064);
  v5 = *(*(v0 + *(v2 + 24)) + 16);
  v3 = sub_249E7B2D8();
  MEMORY[0x24C204750](v3);

  MEMORY[0x24C204750](0x5D736574796220, 0xE700000000000000);
  return v6[0];
}

uint64_t sub_249E55F18(uint64_t a1)
{
  result = sub_249E55FBC(&qword_27EF23EF0, type metadata accessor for MessageContainer);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for MessageContainer()
{
  result = qword_27EF23EF8;
  if (!qword_27EF23EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E55FBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_249E5602C()
{
  sub_249E7A628();
  if (v0 <= 0x3F)
  {
    sub_249E560B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_249E560B8()
{
  if (!qword_27EF23F08)
  {
    v0 = sub_249E7AA28();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF23F08);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_dynamicCast();
}

uint64_t sub_249E5613C()
{
  v0 = sub_249E7B268();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_249E56188(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 2:
    case 5:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

_BYTE *_s7RapportOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_249E56328(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249E7B068();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_249E5DA6C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C204D50](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_249E5DA6C(v8 > 1, v9 + 1, 1);
      }

      ++v5;
      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E564B8(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(_BYTE *, unint64_t))
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    a2(0, v5, 0);
    v6 = v18;
    v11 = a1 + 32;
    do
    {
      sub_249E29D88(v11, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24090, &qword_249E80240);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      swift_dynamicCast();
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        a2(v12 > 1, v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      a5(v17, v6 + 40 * v13 + 32);
      v11 += 48;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_249E56600(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249E7B068();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_249E5DAEC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C204D50](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_249DF691C(0, &unk_28130D190, 0x277CD1EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24090, &qword_249E80240);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_249E5DAEC(v7 > 1, v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_249E29DEC(v9, (v3 + 48 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5677C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249E7B068();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_249E5DB0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C204D50](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24050, &qword_249E80208);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_249E5DB0C(v7 > 1, v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_249DFDB78(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E568E0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_249E7B068())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24060, &qword_249E80218);
  v3 = sub_249E7B108();
  if (v2)
  {
LABEL_4:

    sub_249E7B058();
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    sub_249E5E70C();
    result = sub_249E7AD88();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      swift_dynamicCast();
      v18 = *(v3 + 40);
      result = sub_249E7B0A8();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = *(v3 + 48) + 40 * v22;
      *(v27 + 32) = v30;
      *v27 = v28;
      *(v27 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_249E7B088();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      swift_dynamicCast();
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v12 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_249E08728();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_249E56C58(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24070, &qword_249E80228);
    OUTLINED_FUNCTION_286();
    v2 = sub_249E7B258();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_23_3();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;

  v10 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_249DF686C(a1[7] + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v34[2] = v36;
    v35[0] = v37[0];
    v35[1] = v37[1];
    v34[0] = v36;

    swift_dynamicCast();
    sub_249DFDB78(v35, v29);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_249DFDB78(v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_249DFDB78(v33, v34);
    v16 = *(v2 + 40);
    v17 = sub_249E7B0A8() & ~(-1 << *(v2 + 32));
    if (((-1 << v17) & ~*(v9 + 8 * (v17 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_42_1();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v9 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_41_1();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_43_2();
LABEL_21:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_40_2();
    *(v9 + v22) |= v23;
    v25 = *(v2 + 48) + 40 * v24;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    sub_249DFDB78(v34, (*(v2 + 56) + 32 * v24));
    ++*(v2 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = a1[v11 + 8];
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_249E56EE0(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24070, &qword_249E80228);
    OUTLINED_FUNCTION_286();
    v2 = sub_249E7B258();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_23_3();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;

  v10 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v14 = v13[1];
    v15 = *(a1[7] + 8 * v12);
    *&v34[0] = *v13;
    *(&v34[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_249DFDB78(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_249DFDB78(v33, v34);
    v16 = *(v2 + 40);
    v17 = sub_249E7B0A8() & ~(-1 << *(v2 + 32));
    if (((-1 << v17) & ~*(v9 + 8 * (v17 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_42_1();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v9 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_41_1();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_43_2();
LABEL_21:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_40_2();
    *(v9 + v22) |= v23;
    v25 = *(v2 + 48) + 40 * v24;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    sub_249DFDB78(v34, (*(v2 + 56) + 32 * v24));
    ++*(v2 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = a1[v11 + 8];
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_249E5715C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC10DropInCore10IDSManager_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_249E57C2C();

  return swift_unknownObjectRelease();
}

uint8_t *sub_249E571AC(void *a1, uint64_t a2, unint64_t a3)
{
  v31 = type metadata accessor for IDSManager.MessageType(0);
  v4 = OUTLINED_FUNCTION_28_0(v31);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_249E7A628();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v33 = a2;
  (*(v13 + 16))(v17 - v16, a2, v10);
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_70();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v21 = 136315138;
    OUTLINED_FUNCTION_0_15();
    sub_249E5E658(v22, v23);
    v24 = sub_249E7B2D8();
    v26 = v25;
    (*(v13 + 8))(v18, v10);
    v27 = sub_249E3A958(v24, v26, &v35);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_249DEE000, v19, v20, "Handling Send Event %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  swift_storeEnumTagMultiPayload();
  v28 = sub_249E584CC(a1, v33, v9, a3, 0, 1);
  sub_249E5E3E8(v9);
  return v28;
}

uint64_t sub_249E5745C()
{
  OUTLINED_FUNCTION_11();
  *(v1 + 89) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v0;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  v8 = sub_249E7A628();
  *(v1 + 144) = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_17_3();
  *(v1 + 152) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_249E5751C()
{
  OUTLINED_FUNCTION_50();
  v38 = v0;
  v3 = *(v0 + 136);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 112), *(v0 + 144));
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  v6 = OUTLINED_FUNCTION_127(v5);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  if (v6)
  {
    OUTLINED_FUNCTION_70();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v37 = swift_slowAlloc();
    *v10 = 136315138;
    OUTLINED_FUNCTION_0_15();
    sub_249E5E658(v11, v12);
    sub_249E7B2D8();
    v13 = OUTLINED_FUNCTION_9_6();
    v14(v13);
    v15 = sub_249E3A958(v1, v2, &v37);

    *(v10 + 4) = v15;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v16, v17, "Handling Send Request %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870](v18);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 89);
  v22 = *(v0 + 120);
  v23 = swift_task_alloc();
  *(v0 + 168) = v23;
  v24 = *(v0 + 104);
  *(v23 + 16) = v19;
  *(v23 + 24) = v24;
  *(v23 + 40) = v22;
  *(v23 + 48) = v20;
  *(v23 + 56) = v21 & 1;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  *(v0 + 176) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237E0, &unk_249E7E240);
  *v26 = v0;
  v26[1] = sub_249E57758;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822008A0](v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_249E57758()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = *(v2 + 176);
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E57858()
{
  OUTLINED_FUNCTION_90();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);
  v10 = *(v0 + 56);
  v11 = *(v0 + 24);
  v8 = *(v0 + 72);
  v9 = *(v0 + 40);

  *v3 = v4;
  *(v3 + 24) = v9;
  *(v3 + 8) = v11;
  *(v3 + 56) = v8;
  *(v3 + 40) = v10;
  *(v3 + 72) = v5 & 1;
  OUTLINED_FUNCTION_9_0();

  return v6();
}

uint64_t sub_249E5791C()
{
  OUTLINED_FUNCTION_11();
  v2 = v0[20];
  v1 = v0[21];

  OUTLINED_FUNCTION_9_0();
  v4 = v0[23];

  return v3();
}

unint64_t sub_249E57980(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24078, &qword_249E80230);
    OUTLINED_FUNCTION_286();
    v2 = sub_249E7B258();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_23_3();
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {

          return v2;
        }

        v7 = a1[v11 + 8];
        ++v10;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v11 = v10;
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    sub_249DFE7F4(a1[6] + 40 * v12, __src);
    sub_249DF686C(a1[7] + 32 * v12, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_249DFE7F4(__dst, v23);
    if (!swift_dynamicCast())
    {
      break;
    }

    v7 &= v7 - 1;
    sub_249DF686C(&__dst[40], v24);
    sub_249E2A8CC(__dst, &unk_27EF24080, &qword_249E80238);
    v25 = v22;
    sub_249DFDB78(v24, v26);
    v13 = v25;
    sub_249DFDB78(v26, v27);
    sub_249DFDB78(v27, &v25);
    result = sub_249DFDA24(v13, *(&v13 + 1));
    v14 = result;
    if (v15)
    {
      v16 = v2[6] + 16 * result;
      v17 = *(v16 + 8);
      *v16 = v13;

      v18 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v18);
      result = sub_249DFDB78(&v25, v18);
      v10 = v11;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v13;
      result = sub_249DFDB78(&v25, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v10 = v11;
    }
  }

  sub_249E2A8CC(__dst, &unk_27EF24080, &qword_249E80238);

  return 0;
}

void sub_249E57C54()
{
  OUTLINED_FUNCTION_15_0();
  ObjectType = swift_getObjectType();
  v1 = sub_249E7AE68();
  v2 = OUTLINED_FUNCTION_3(v1);
  v37 = v3;
  v38 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_249E7AE58();
  v10 = OUTLINED_FUNCTION_28_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = sub_249E7A958();
  v14 = OUTLINED_FUNCTION_37(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  sub_249E7A6A8();
  v36 = OBJC_IVAR____TtC10DropInCore10IDSManager_serialQueue;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A948();
  v40 = MEMORY[0x277D84F90];
  sub_249E5E658(&qword_28130D230, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  sub_249E2AB74(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0);
  sub_249E7B018();
  (*(v37 + 104))(v8, *MEMORY[0x277D85260], v38);
  *&v0[v36] = sub_249E7AE98();
  v17 = OBJC_IVAR____TtC10DropInCore10IDSManager_pendingMessageResponseHandlers;
  sub_249E7A628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23F88, &unk_249E80198);
  OUTLINED_FUNCTION_0_15();
  sub_249E5E658(v18, v19);
  *&v0[v17] = sub_249E7AA08();
  *&v0[OBJC_IVAR____TtC10DropInCore10IDSManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D18778]);
  v20 = sub_249E5D9B4(0xD000000000000024, 0x8000000249E83070);
  if (!v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  *&v0[OBJC_IVAR____TtC10DropInCore10IDSManager_service] = v20;
  v21 = objc_opt_self();
  v22 = sub_249DFC27C(v21, &selRef_stringGUID);
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = &v0[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID];
  *v24 = v22;
  v24[1] = v23;
  v39.receiver = v0;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedInstance];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = *&v27[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID];
  v31 = *&v27[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID + 8];

  v32 = sub_249E7AA88();

  sub_249E5E1DC(&v27[OBJC_IVAR____TtC10DropInCore10IDSManager_service]);
  if (v33)
  {
    v34 = sub_249E7AA88();
  }

  else
  {
    v34 = 0;
  }

  [v29 addListenerID:v32 forService:v34];

  OUTLINED_FUNCTION_6_1();
}

void sub_249E580E4()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_249E7A6B8();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = [objc_opt_self() sharedInstance];
  if (v12)
  {
    v13 = v12;
    v14 = *&v1[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID];
    v15 = *&v1[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID + 8];

    v16 = sub_249E7AA88();

    v17 = OBJC_IVAR____TtC10DropInCore10IDSManager_service;
    sub_249E5E1DC(&v1[OBJC_IVAR____TtC10DropInCore10IDSManager_service]);
    if (v18)
    {
      v19 = sub_249E7AA88();
    }

    else
    {
      v19 = 0;
    }

    [v13 removeListenerID:v16 forService:v19];

    (*(v6 + 16))(v11, &v1[OBJC_IVAR____TtC10DropInCore10IDSManager_logger], v3);
    v20 = sub_249E7A698();
    v21 = sub_249E7AE28();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_9();
      *v22 = 0;
      _os_log_impl(&dword_249DEE000, v20, v21, "IDSManager deinit()", v22, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    (*(v6 + 8))(v11, v3);
    [*&v1[v17] removeDelegate_];
    v23.receiver = v1;
    v23.super_class = ObjectType;
    objc_msgSendSuper2(&v23, sel_dealloc);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E5840C()
{
  result = sub_249E7A6B8();
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

uint8_t *sub_249E584CC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v120) = a6;
  v126 = a5;
  v127 = a4;
  v129 = a3;
  v130 = a1;
  v137 = *MEMORY[0x277D85DE8];
  v123 = sub_249E7A628();
  v124 = *(v123 - 8);
  v7 = *(v124 + 64);
  v8 = MEMORY[0x28223BE20](v123);
  v125 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = &v116 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v119 = *(v118 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v116 - v13;
  v14 = type metadata accessor for IDSManager.MessageType(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v122 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v116 - v18;
  v20 = sub_249E7AA08();
  v21 = *MEMORY[0x277D18668];
  *&v133 = sub_249E7AAA8();
  *(&v133 + 1) = v22;
  sub_249E7B0C8();
  sub_249E7A5D8();
  v23 = sub_249E7AA88();

  v24 = IDSGetUUIDData();

  v121 = a2;
  if (v24)
  {
    v25 = sub_249E7A4F8();
    v27 = v26;

    *(&v134 + 1) = MEMORY[0x277CC9318];
    *&v133 = v25;
    *(&v133 + 1) = v27;
    sub_249DFDB78(&v133, v132);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v20;
    sub_249DFDF38(v132, &v135);
    v20 = v131;
    sub_249DFE850(&v135);
  }

  else
  {
    v28 = sub_249DFDA9C(&v135);
    if (v29)
    {
      v30 = v28;
      swift_isUniquelyReferenced_nonNull_native();
      *&v132[0] = v20;
      v31 = *(v20 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23520, &qword_249E80210);
      sub_249E7B208();
      v20 = *&v132[0];
      sub_249DFE850(*(*&v132[0] + 48) + 40 * v30);
      sub_249DFDB78((*(v20 + 56) + 32 * v30), &v133);
      sub_249E7B218();
    }

    else
    {
      v133 = 0u;
      v134 = 0u;
    }

    sub_249DFE850(&v135);
    sub_249E2A8CC(&v133, &unk_27EF23C40, &qword_249E7D8E0);
  }

  v32 = *MEMORY[0x277D18570];
  *&v133 = sub_249E7AAA8();
  *(&v133 + 1) = v33;
  v34 = MEMORY[0x277D837D0];
  sub_249E7B0C8();
  v35 = MEMORY[0x277D839B0];
  *(&v134 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v133) = 1;
  sub_249DFDB78(&v133, v132);
  swift_isUniquelyReferenced_nonNull_native();
  v131 = v20;
  sub_249DFDF38(v132, &v135);
  v36 = v131;
  sub_249DFE850(&v135);
  v37 = *MEMORY[0x277D185A0];
  *&v133 = sub_249E7AAA8();
  *(&v133 + 1) = v38;
  sub_249E7B0C8();
  *(&v134 + 1) = v35;
  LOBYTE(v133) = 1;
  sub_249DFDB78(&v133, v132);
  swift_isUniquelyReferenced_nonNull_native();
  v131 = v36;
  sub_249DFDF38(v132, &v135);
  v39 = v131;
  sub_249DFE850(&v135);
  sub_249E5E384(v129, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v41 = v125;
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v11;
      v43 = v19;
      v44 = v123;
      (*(v124 + 32))(v11, v43, v123);
      v45 = v122;
      v46 = v121;
      if (v120)
      {
        v47 = v117;
        sub_249E7A7F8();
        sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
        sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
        v120 = v11;
        v44 = v123;
        sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
        v48 = v118;
        v41 = v125;
        v42 = v120;
        sub_249E7A6E8();
        (*(v119 + 8))(v47, v48);
        v126 = v135;
      }

      v49 = *MEMORY[0x277D18610];
      *&v133 = sub_249E7AAA8();
      *(&v133 + 1) = v50;
      sub_249E7B0C8();
      v51 = sub_249E7A5D8();
      *(&v134 + 1) = v34;
      *&v133 = v51;
      *(&v133 + 1) = v52;
      sub_249DFDB78(&v133, v132);
      swift_isUniquelyReferenced_nonNull_native();
      v131 = v39;
      sub_249DFDF38(v132, &v135);
      v39 = v131;
      sub_249DFE850(&v135);
      v53 = v124;
      (*(v124 + 8))(v42, v44);
      v55 = v127;
      v54 = v128;
    }

    else
    {
      v45 = v122;
      if (v120)
      {
        v61 = v117;
        sub_249E7A7B8();
        sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
        sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
        sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
        v62 = v118;
        v41 = v125;
        sub_249E7A6E8();
        (*(v119 + 8))(v61, v62);
        v126 = v135;
      }

      v55 = v127;
      v54 = v128;
      v44 = v123;
      v46 = v121;
      v53 = v124;
    }
  }

  else
  {
    if (v120)
    {
      v56 = v117;
      sub_249E7A7D8();
      sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
      sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
      sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
      v57 = v118;
      sub_249E7A6E8();
      (*(v119 + 8))(v56, v57);
      v126 = v135;
    }

    v58 = *MEMORY[0x277D185B0];
    *&v133 = sub_249E7AAA8();
    *(&v133 + 1) = v59;
    sub_249E7B0C8();
    *(&v134 + 1) = v35;
    LOBYTE(v133) = 1;
    sub_249DFDB78(&v133, v132);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v39;
    sub_249DFDF38(v132, &v135);
    v39 = v131;
    sub_249DFE850(&v135);
    v53 = v124;
    v60 = v19;
    v44 = v123;
    (*(v124 + 8))(v60, v123);
    v55 = v127;
    v54 = v128;
    v41 = v125;
    v45 = v122;
    v46 = v121;
  }

  v63 = *MEMORY[0x277D18650];
  *&v133 = sub_249E7AAA8();
  *(&v133 + 1) = v64;
  sub_249E7B0C8();
  *(&v134 + 1) = MEMORY[0x277D839F8];
  *&v133 = v126;
  sub_249DFDB78(&v133, v132);
  swift_isUniquelyReferenced_nonNull_native();
  v131 = v39;
  sub_249DFDF38(v132, &v135);
  v126 = v131;
  sub_249DFE850(&v135);
  v65 = OBJC_IVAR____TtC10DropInCore10IDSManager_logger;
  sub_249E5E384(v129, v45);
  (*(v53 + 16))(v41, v46, v44);
  v66 = v130;

  v129 = v65;
  v67 = sub_249E7A698();
  v68 = sub_249E7AE28();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v135 = v125;
    *v69 = 136316162;
    LODWORD(v124) = v68;
    v70 = sub_249E5D7E0();
    v72 = v71;
    sub_249E5E3E8(v45);
    v73 = sub_249E3A958(v70, v72, &v135);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    sub_249E5E658(&qword_28130D350, MEMORY[0x277CC95F0]);
    v74 = sub_249E7B2D8();
    v76 = v75;
    (*(v53 + 8))(v41, v44);
    v77 = sub_249E3A958(v74, v76, &v135);

    *(v69 + 14) = v77;
    *(v69 + 22) = 2080;
    v78 = sub_249E7A9E8();
    v80 = sub_249E3A958(v78, v79, &v135);

    *(v69 + 24) = v80;
    *(v69 + 32) = 2080;
    v81 = v126;

    v82 = sub_249E7A9E8();
    v84 = v83;

    v85 = sub_249E3A958(v82, v84, &v135);

    *(v69 + 34) = v85;
    *(v69 + 42) = 2080;
    v55 = v127;
    v54 = v128;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24050, &qword_249E80208);
    v87 = MEMORY[0x24C204800](v55, v86);
    v89 = sub_249E3A958(v87, v88, &v135);

    *(v69 + 44) = v89;
    _os_log_impl(&dword_249DEE000, v67, v124, "Sending %s, Identifier = %s, Message = %s, Options = %s, Destinations = %s", v69, 0x34u);
    v90 = v125;
    swift_arrayDestroy();
    MEMORY[0x24C205870](v90, -1, -1);
    v91 = v69;
    v66 = v130;
    MEMORY[0x24C205870](v91, -1, -1);

    v92 = v81;
  }

  else
  {

    (*(v53 + 8))(v41, v44);
    sub_249E5E3E8(v45);
    v92 = v126;
  }

  v93 = *(v54 + OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  sub_249E56C58(v66);
  v95 = v94;
  sub_249DF691C(0, &unk_27EF23FD8, 0x277CBEB98);
  sub_249E5677C(v55);
  v96 = sub_249E5CC40();
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  sub_249E5E70C();
  v97 = sub_249E7AD58();

  v98 = sub_249E568E0(v97);

  v135 = 0;
  *&v133 = 0;

  v99 = sub_249E5E278(v95, v98, 300, v92, &v135, &v133, v93);
  v100 = v135;
  if ((v99 & 1) == 0)
  {
    v108 = v133;
    v109 = v100;
    sub_249E7A4D8();

LABEL_32:
    swift_willThrow();

    goto LABEL_33;
  }

  if (!v135)
  {
    v110 = v133;
    goto LABEL_29;
  }

  v135 = 0;
  v136 = 0;
  v101 = v133;
  v102 = v100;
  sub_249E7AA98();
  v103 = v136;
  if (!v136)
  {
LABEL_29:
    v111 = sub_249E7A698();
    v112 = sub_249E7AE08();
    if (os_log_type_enabled(v111, v112))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_249DEE000, v111, v112, "Message Identifier is nil", v95, 2u);
      MEMORY[0x24C205870](v95, -1, -1);
    }

    sub_249E5DA18();
    swift_allocError();
    *v113 = 0;
    goto LABEL_32;
  }

  v95 = v135;

  v104 = sub_249E7A698();
  v105 = sub_249E7AE28();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v135 = v107;
    *v106 = 136315138;
    *(v106 + 4) = sub_249E3A958(v95, v103, &v135);
    _os_log_impl(&dword_249DEE000, v104, v105, "Request to Send Message Successful! Message Identifier = %s)", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x24C205870](v107, -1, -1);
    MEMORY[0x24C205870](v106, -1, -1);
  }

LABEL_33:
  v114 = *MEMORY[0x277D85DE8];
  return v95;
}

uint64_t sub_249E594DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v20 = a2;
  v21 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_249E59720(a3, a4, a5, v21, a7 & 1, sub_249E5E788, v18);
}