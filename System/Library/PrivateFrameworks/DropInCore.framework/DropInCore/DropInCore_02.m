uint64_t sub_249E1977C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 144) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E197A4, v1);
}

uint64_t sub_249E197A4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = qword_28130E740;
  OUTLINED_FUNCTION_76();
  sub_249E2A75C(v1 + v3, v2, &qword_27EF234B0, &qword_249E7D910);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E19838()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[14];
  v2 = v0[9];
  v3 = OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_226(v3, v4, v2);
  if (v5)
  {
    sub_249E2A8CC(v1, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_51_0();
  }

  else
  {
    v6 = v0[11];
    v7 = v0[6];
    v8 = *(v0[10] + 32);
    OUTLINED_FUNCTION_137();
    v9();
    v10 = *(v7 + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    v0[19] = v10;
    v11 = sub_249E198FC;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_249E198FC()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[19];
  v2 = v0[11];
  v0[20] = sub_249E4F34C();
  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E19960()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 152);
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = [*(v0 + 160) stateReason];
    v6 = sub_249E7AAA8();
    v8 = v7;

    v9 = [v1 stateExpiration];
    v10 = v3 + *(v4 + 24);
    sub_249E7A588();

    *v3 = 2;
    v3[1] = v6;
    v3[2] = v8;
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    OUTLINED_FUNCTION_51_0();
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249E19A5C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[19];
  sub_249E50708(v0[11], v0[8]);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E19AC0()
{
  OUTLINED_FUNCTION_23();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_81();
  v7(v6);
  OUTLINED_FUNCTION_51_0();
  v8 = OUTLINED_FUNCTION_254();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E19B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v11 = v10[18];
  v13 = v10[15];
  v12 = v10[16];
  v14 = v10[14];
  v16 = v10[11];
  v15 = v10[12];
  v17 = v10[8];
  sub_249E2530C();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_31();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_249E19BE4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_249E19C04, 0, 0);
}

uint64_t sub_249E19C04()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    OUTLINED_FUNCTION_70();
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_6();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_249DEE000, v3, v4, "Reevaluating Devices in Home: %@", v6, 0xCu);
    sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v9 = *(v0 + 16);

  sub_249DF8E38();
  *(v0 + 32) = v10;
  v11 = sub_249E51FB4(v10);
  *(v0 + 40) = v11;
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v0 + 32);
      *(v0 + 48) = *(*(v0 + 24) + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
      *(v0 + 56) = 0;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C204D50](0);
        v16 = *(v0 + 48);
      }

      else
      {
        v15 = *(v14 + 32);
      }

      *(v0 + 64) = v15;
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_253();
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v17 = *(v0 + 32);

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_253();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_249E19DB8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  sub_249E4FE48(*(v0 + 64));
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E19E18()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_275();
  if (v3)
  {
    v4 = *(v0 + 32);

    OUTLINED_FUNCTION_9_0();

    return v5();
  }

  else
  {
    v7 = *(v0 + 56) + 1;
    *(v0 + 56) = v7;
    v8 = *(v0 + 32);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C204D50]();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_328(v7, v8);
    }

    *(v0 + 64) = v9;
    v10 = *(v0 + 48);
    v11 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

void sub_249E19EE0()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_84();

  v7 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_274())
  {
    OUTLINED_FUNCTION_70();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315138;
    v10 = sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    v11 = MEMORY[0x24C204800](v2, v10);
    v13 = sub_249E3A958(v11, v12, &v35);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v14, v15, "Did update homes %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v35 = MEMORY[0x277D84F90];
  v16 = sub_249E51FB4(v2);
  v17 = 0;
  v18 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v16 == v17)
    {
      v23 = v35;
      sub_249E7AC78();
      OUTLINED_FUNCTION_166();
      OUTLINED_FUNCTION_28();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      OUTLINED_FUNCTION_22();
      v28 = swift_allocObject();
      OUTLINED_FUNCTION_185(v28);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_158();
      v29 = swift_allocObject();
      v30 = OUTLINED_FUNCTION_218(v29);
      *(v30 + 32) = v7;
      *(v30 + 40) = v23;
      v31 = OUTLINED_FUNCTION_32();
      sub_249E5ED90(v31, v32, v0, v33, v34);

      OUTLINED_FUNCTION_6_1();
      return;
    }

    sub_249E51FD8(v17, v18 == 0, v2);
    v19 = v18 ? MEMORY[0x24C204D50](v17, v2) : *(v2 + 8 * v17 + 32);
    v20 = v19;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    sub_249DF8E38();
    v22 = v21;

    v7 = &v35;
    sub_249E27E98(v22);
    ++v17;
  }

  __break(1u);
}

uint64_t sub_249E1A124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1A144, 0, 0);
}

uint64_t sub_249E1A144()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    if (v4 >> 62)
    {
      v5 = OUTLINED_FUNCTION_256();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 64) = v5;
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = *(v0 + 48);
        v7 = OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager;
        *(v0 + 72) = OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager;
        *(v0 + 80) = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C204D50](0);
          v7 = *(v0 + 72);
        }

        else
        {
          v8 = *(v6 + 32);
        }

        *(v0 + 88) = v8;
        v11 = *(*(v0 + 56) + v7);
        OUTLINED_FUNCTION_128();
        v5 = OUTLINED_FUNCTION_36_0();
      }

      return MEMORY[0x2822009F8](v5, v2, v3);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v9();
}

uint64_t sub_249E1A244()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 96);
  sub_249E4F8BC(*(v0 + 88));

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1A2A8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_275();
  if (v5)
  {

    OUTLINED_FUNCTION_9_0();

    return v3();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_238();
    if (v5)
    {
      v8 = OUTLINED_FUNCTION_328(v6, v7);
    }

    else
    {
      v8 = MEMORY[0x24C204D50](v6);
    }

    *(v0 + 88) = v8;
    v9 = *(*(v0 + 56) + *(v0 + 72));
    OUTLINED_FUNCTION_128();
    v10 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_249E1A3D4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  v8 = a1;
  v9 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_274())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_173();
    *v2 = 138412290;
    *(v2 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v12, v13, "Did add home %@");
    sub_249E2A8CC(v10, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v14 = v8;
  sub_249DF8E38();
  OUTLINED_FUNCTION_9_1();
  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_22();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_218(v20);
  *(v21 + 32) = v19;
  *(v21 + 40) = v14;
  v22 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v22, v23, v1, v24, v25);
}

uint64_t sub_249E1A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1A584, 0, 0);
}

uint64_t sub_249E1A584()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    if (v4 >> 62)
    {
      v5 = OUTLINED_FUNCTION_256();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 64) = v5;
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = *(v0 + 48);
        v7 = OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager;
        *(v0 + 72) = OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager;
        *(v0 + 80) = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C204D50](0);
          v7 = *(v0 + 72);
        }

        else
        {
          v8 = *(v6 + 32);
        }

        *(v0 + 88) = v8;
        v11 = *(*(v0 + 56) + v7);
        OUTLINED_FUNCTION_129();
        v5 = OUTLINED_FUNCTION_36_0();
      }

      return MEMORY[0x2822009F8](v5, v2, v3);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v9();
}

uint64_t sub_249E1A684()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 96);
  sub_249E4F8BC(*(v0 + 88));

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1A6E8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_275();
  if (v5)
  {

    OUTLINED_FUNCTION_9_0();

    return v3();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_238();
    if (v5)
    {
      v8 = OUTLINED_FUNCTION_328(v6, v7);
    }

    else
    {
      v8 = MEMORY[0x24C204D50](v6);
    }

    *(v0 + 88) = v8;
    v9 = *(*(v0 + 56) + *(v0 + 72));
    OUTLINED_FUNCTION_129();
    v10 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_249E1A808(void *a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_84();
  v10 = a1;
  v11 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_274())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_173();
    *v3 = 138412290;
    *(v3 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v14, v15, "Did remove home %@");
    sub_249E2A8CC(v12, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_185(v20);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_210(v21);
  *(v22 + 32) = v11;
  *(v22 + 40) = v10;
  v23 = v10;
  v24 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v24, v25, v1, v26, v4);
}

uint64_t sub_249E1A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = sub_249E7A628();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1AAC8, 0, 0);
}

uint64_t sub_249E1AAC8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  v2 = v0[13];
  if (Strong)
  {
    v3 = v0[6];
    v0[15] = *(Strong + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    v4 = [v3 uniqueIdentifier];
    sub_249E7A608();

    v5 = OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[13];

    OUTLINED_FUNCTION_9_0();

    return v11();
  }
}

uint64_t sub_249E1ABC4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  sub_249E4FBA8(v0[13]);
  v0[16] = *(v2 + 8);
  v0[17] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_126();
  v5(v4);
  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E1AC54()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 104);
  v2 = [*(v0 + 48) uniqueIdentifier];
  sub_249E7A608();

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_249E1AD0C;
  v4 = *(v0 + 112);
  v5 = OUTLINED_FUNCTION_97(*(v0 + 104));

  return sub_249E138E0(v5);
}

uint64_t sub_249E1AD0C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = v3[18];
  v5 = v3[17];
  v6 = v3[16];
  v7 = v3[13];
  v8 = v3[11];
  v9 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v12 + 152) = v11;

  v13 = OUTLINED_FUNCTION_81();
  v6(v13);
  v14 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_249E1AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = v13[19];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v13[7];
    OUTLINED_FUNCTION_108(v15, v13[8]);
    do
    {
      v19 = v13[9];
      v18 = v13[10];
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v20, v21, v22, v23);
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v24, v25, v26, v27);
      v28 = *(v19 + *(v17 + 48));
      swift_unknownObjectRelease();
      v29 = *(v19 + *(type metadata accessor for XPCClient() + 20));
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C();
      [v29 invalidate];

      OUTLINED_FUNCTION_187();
      sub_249E2A8CC(v30, v31, v32);
      v12 += v14;
      --v16;
    }

    while (v16);
    v33 = v13[19];
  }

  v34 = v13[14];

  v35 = v13[13];
  v36 = v13[9];
  v37 = v13[10];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_249E1AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1AFF8, 0, 0);
}

uint64_t sub_249E1AFF8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1B09C()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4F8BC(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_249E1B1A0()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v13);
  v15 = v36 - v14;
  v16 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v17 = v7;
  v18 = v9;
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_188();
    v36[1] = v3;
    v22 = v1;
    v23 = v21;
    v16 = OUTLINED_FUNCTION_234();
    *v23 = 138412546;
    *(v23 + 4) = v17;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v18;
    *v16 = v17;
    v16[1] = v18;
    v24 = v17;
    v25 = v18;
    _os_log_impl(&dword_249DEE000, v19, v20, v5, v23, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v1 = v22;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (sub_249DF4038())
  {
    OUTLINED_FUNCTION_9_1();
    sub_249E7AC78();
    OUTLINED_FUNCTION_28();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_22();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_282(v30);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_158();
    v31 = swift_allocObject();
    v32 = OUTLINED_FUNCTION_218(v31);
    *(v32 + 32) = v16;
    *(v32 + 40) = v17;
    v33 = OUTLINED_FUNCTION_99();
    sub_249E5ED90(v33, v34, v15, v1, v35);
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1B3A4, 0, 0);
}

uint64_t sub_249E1B3A4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1B448()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4FA38(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1B56C, 0, 0);
}

uint64_t sub_249E1B56C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1B610()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4FE48(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1B674()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1B758()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = v5;
  v13 = sub_249E7A698();
  v14 = sub_249E7AE28();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_188();
    v34 = v3;
    v16 = v15;
    v17 = OUTLINED_FUNCTION_6();
    v33 = v17;
    OUTLINED_FUNCTION_74();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v36 = [v12 home];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23740, &qword_249E7E0D8);
    v18 = sub_249E7AAC8();
    v20 = v11;
    v21 = sub_249E3A958(v18, v19, &v37);

    *(v16 + 14) = v21;
    v11 = v20;
    _os_log_impl(&dword_249DEE000, v13, v14, v34, v16, 0x16u);
    sub_249E2A8CC(v33, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v5 = v35;
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (sub_249DF4038())
  {
    OUTLINED_FUNCTION_103();
    sub_249E7AC78();
    OUTLINED_FUNCTION_28();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_22();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_185(v26);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_158();
    v27 = swift_allocObject();
    v28 = OUTLINED_FUNCTION_218(v27);
    *(v28 + 32) = v12;
    *(v28 + 40) = v5;
    v29 = OUTLINED_FUNCTION_99();
    sub_249E5ED90(v29, v30, v11, v1, v31);
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1B9C0, 0, 0);
}

uint64_t sub_249E1B9C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1BA64()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4FE48(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1BB54(void *a1, void *a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_84();
  v11 = a2;
  v12 = a1;
  v13 = sub_249E7A698();
  v14 = sub_249E7AE28();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_188();
    v16 = OUTLINED_FUNCTION_234();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v12;
    v17 = v11;
    v18 = v12;
    _os_log_impl(&dword_249DEE000, v13, v14, "Did add user %@ to home %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_22();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_185(v23);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_210(v24);
  *(v25 + 32) = v13;
  *(v25 + 40) = v12;
  v26 = v12;
  v27 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v27, v28, v2, v29, v4);
}

uint64_t sub_249E1BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1BD44, 0, 0);
}

uint64_t sub_249E1BD44()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E19BE4(v3);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1BE0C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_249E1BF6C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  oslog = sub_249E7A698();
  v5 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = OUTLINED_FUNCTION_188();
    v7 = OUTLINED_FUNCTION_234();
    *v6 = 138412546;
    *(v6 + 4) = v3;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    *v7 = v3;
    v7[1] = v4;
    v8 = v3;
    v9 = v4;
    _os_log_impl(&dword_249DEE000, oslog, v5, "Did remove user %@ from home %@", v6, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }
}

void sub_249E1C104()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_84();
  v11 = sub_249DF8B94(v4);
  v12 = v4;
  v13 = v6;
  v14 = sub_249E7A698();
  v15 = sub_249E7AE28();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_234();
    *v16 = 138412802;
    *(v16 + 4) = v12;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v12;
    v17[1] = v13;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v11 & 1;
    v18 = v12;
    v19 = v13;
    _os_log_impl(&dword_249DEE000, v14, v15, "Access Control Updated for user %@ in home %@, Drop In Access = %{BOOL}d", v16, 0x1Cu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_22();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_185(v24);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_210(v25);
  *(v26 + 32) = v14;
  *(v26 + 40) = v13;
  v27 = v13;
  v28 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v28, v29, v0, v30, v2);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E1C36C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_230();
  v9 = sub_249E7A628();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = v4;
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_70();
    v21 = swift_slowAlloc();
    v39 = v2;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_6();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&dword_249DEE000, v19, v20, "Did Set Conversation %@", v22, 0xCu);
    sub_249E2A8CC(v23, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v25 = [v18 state];
  v26 = [v18 UUID];
  sub_249E7A608();

  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_22();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v40;
  (*(v12 + 16))(v40, v17, v9);
  v33 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v34 = (v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v31;
  (*(v12 + 32))(&v35[v33], v32, v9);
  *&v35[v34] = v25;
  v36 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v36, v37, v1, v38, v35);

  (*(v12 + 8))(v17, v9);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(type metadata accessor for TransactionType(0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_249E7AC78();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1C760, 0, 0);
}

uint64_t sub_249E1C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[12] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v14[10];
      v19 = v14[11];
      v21 = v14[9];
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      sub_249E28F84(v23, v24);
      OUTLINED_FUNCTION_261();
      v25 = OUTLINED_FUNCTION_33();
      v26(v25);
      v27 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v27, v28, v29);
      OUTLINED_FUNCTION_156();

      *(v22 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v30, v31, "Task Priority = %s [Did Set Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v32 = v14[8];
    v14[13] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_297();
    OUTLINED_FUNCTION_28();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v37, v38, v39);
  }

  else
  {
    OUTLINED_FUNCTION_334();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1C914()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 104);
  sub_249E339F0(*(v0 + 64));
  OUTLINED_FUNCTION_18_0();
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1C97C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
  v0[14] = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
  v0[15] = *(v1 + v2);
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1C9EC()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);
  sub_249E27B08();

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1CA64()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[7];
  v0[16] = *(v0[12] + v0[14]);

  v0[17] = sub_249E2DA64(v1);
  v2 = OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1CAE0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 128);
  sub_249E2615C(*(v0 + 136), 0);

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1CB48()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_334();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1CBAC()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v10 = sub_249E7A628();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_142();
  v18 = v16 - v17;
  v55 = v19;
  MEMORY[0x28223BE20](v20);
  v56 = &v52 - v21;
  v22 = v3;
  v23 = sub_249E7A698();
  v24 = sub_249E7AE28();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_188();
    v53 = v9;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_6();
    v54 = v10;
    v28 = v27;
    OUTLINED_FUNCTION_74();
    v52 = swift_slowAlloc();
    v57 = v52;
    *v26 = 136315394;
    v29 = TUConversationState.description.getter([v22 state]);
    v31 = v18;
    v32 = v1;
    v33 = sub_249E3A958(v29, v30, &v57);

    *(v26 + 4) = v33;
    v1 = v32;
    v18 = v31;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v22;
    *v28 = v22;
    v34 = v22;
    _os_log_impl(&dword_249DEE000, v23, v24, "Did Update State to %s for Conversation %@", v26, 0x16u);
    sub_249E2A8CC(v28, &unk_27EF23C30, &qword_249E7DA20);
    v10 = v54;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_64();
    v9 = v53;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v35 = [v22 state];
  v36 = [v22 UUID];
  v37 = v56;
  sub_249E7A608();

  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_22();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_282(v42);
  swift_unknownObjectWeakInit();
  v43 = *(v13 + 16);
  v44 = OUTLINED_FUNCTION_113();
  v45(v44);
  v46 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v47 = swift_allocObject();
  v48 = OUTLINED_FUNCTION_210(v47);
  *(v48 + 32) = v36;
  *(v48 + 40) = v35;
  (*(v13 + 32))(v48 + v46, v18, v10);
  v49 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v49, v50, v9, v51, v1);

  (*(v13 + 8))(v37, v10);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_249E7AC78();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1CFFC, 0, 0);
}

uint64_t sub_249E1CFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[12] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v14[10];
      v19 = v14[11];
      v21 = v14[9];
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      sub_249E28F84(v23, v24);
      OUTLINED_FUNCTION_261();
      v25 = OUTLINED_FUNCTION_33();
      v26(v25);
      v27 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v27, v28, v29);
      OUTLINED_FUNCTION_156();

      *(v22 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v30, v31, "Task Priority = %s [Did Update State For Conversation Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[13] = sub_249E2DA64(v14[6]);
    v14[14] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_334();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1D19C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);
  sub_249E2615C(*(v0 + 104), 0);

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1D204()
{
  OUTLINED_FUNCTION_23();
  if (*(v0 + 104) == 6)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = sub_249E7A628();
    OUTLINED_FUNCTION_28_0(v3);
    v5 = *(v4 + 16);
    v6 = OUTLINED_FUNCTION_81();
    v7(v6);
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = sub_249E1D334;
    v12 = *(v0 + 96);
    v13 = OUTLINED_FUNCTION_97(*(v0 + 64));

    return sub_249E1940C(v13);
  }

  else
  {

    OUTLINED_FUNCTION_334();

    OUTLINED_FUNCTION_9_0();

    return v15();
  }
}

uint64_t sub_249E1D334()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  sub_249E2A8CC(v3, &qword_27EF234B0, &qword_249E7D910);
  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_249E1D444()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  OUTLINED_FUNCTION_37(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v53 = sub_249E7A5B8();
  v14 = OUTLINED_FUNCTION_3(v53);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = v2;
  v55 = v0;
  v23 = sub_249E7A698();
  v24 = sub_249E7AE28();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_70();
    v25 = swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_6();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    OUTLINED_FUNCTION_339(&dword_249DEE000, v23, v24, "Did Start Conversation %@");
    sub_249E2A8CC(v26, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7A598();
  v28 = *(v16 + 16);
  v29 = v53;
  v28(v13, v21, v53);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = v55 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  OUTLINED_FUNCTION_252();
  v34 = type metadata accessor for DropInSessionAnalyticEvent();
  sub_249E28EE8(v13, v33 + *(v34 + 24), &qword_27EF236C0, &unk_249E7F8F0);
  v35 = *(v34 + 28);
  OUTLINED_FUNCTION_213();
  sub_249E2A8CC(v36, v37, v38);
  v28((v33 + v35), v21, v29);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
  swift_endAccess();
  v42 = v54;
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_22();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_185(v47);
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(OUTLINED_FUNCTION_218(v48) + 32) = v33;
  v49 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v49, v50, v42, v51, v52);

  (*(v16 + 8))(v21, v29);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_249E7AC78();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1D844, 0, 0);
}

uint64_t sub_249E1D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[9] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v14[7];
      v19 = v14[8];
      v21 = v14[6];
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      sub_249E28F84(v23, v24);
      OUTLINED_FUNCTION_261();
      v25 = OUTLINED_FUNCTION_33();
      v26(v25);
      v27 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v27, v28, v29);
      OUTLINED_FUNCTION_156();

      *(v22 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v30, v31, "Task Priority = %s [Did Start Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[10] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_stateManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }

  else
  {
    v36 = v14[8];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1D9D4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_18();
  sub_249E2F110(v2, v3, v4);

  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E1DA40()
{
  OUTLINED_FUNCTION_11();
  *(v0 + 88) = *(*(v0 + 72) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1DAAC()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);
  sub_249E2615C(4, 0);

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1DB18()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

void sub_249E1DB78()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v89 = v3;
  v88 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  v85 = type metadata accessor for DropInSessionAnalyticEvent();
  v15 = OUTLINED_FUNCTION_28_0(v85);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v86 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  OUTLINED_FUNCTION_37(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_84();
  v24 = sub_249E7A628();
  v25 = OUTLINED_FUNCTION_3(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_142();
  v90 = v30 - v31;
  v87 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v80 - v34;
  v36 = v8;
  v37 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v38 = OUTLINED_FUNCTION_188();
    v82 = v24;
    v39 = v38;
    v40 = OUTLINED_FUNCTION_6();
    v83 = v2;
    v41 = v40;
    OUTLINED_FUNCTION_74();
    v42 = swift_slowAlloc();
    v84 = v14;
    v80 = v42;
    v91 = v42;
    *v39 = 138412546;
    *(v39 + 4) = v36;
    *v41 = v36;
    *(v39 + 12) = 2080;
    v43 = sub_249E6DA94(v6);
    v81 = v35;
    v44 = v43;
    v45 = v0;
    v46 = v27;
    v47 = v6;
    v49 = v48;
    v50 = v36;
    v51 = sub_249E3A958(v44, v49, &v91);
    v6 = v47;
    v27 = v46;
    v0 = v45;

    *(v39 + 14) = v51;
    v35 = v81;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v52, v53, v54, v55, v39, 0x16u);
    sub_249E2A8CC(v41, &unk_27EF23C30, &qword_249E7DA20);
    v2 = v83;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    __swift_destroy_boxed_opaque_existential_0(v80);
    v14 = v84;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v24 = v82;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v56 = [v36 UUID];
  sub_249E7A608();

  sub_249E7A598();
  sub_249E7A5B8();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  v61 = v2 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  OUTLINED_FUNCTION_252();
  v62 = v85;
  sub_249E28EE8(v0, v61 + *(v85 + 32), &qword_27EF236C0, &unk_249E7F8F0);
  v63 = sub_249E6DA94(v6);
  v64 = (v61 + *(v62 + 40));
  v65 = v64[1];
  *v64 = v63;
  v64[1] = v66;
  v67 = v61 + *(v62 + 36);
  *v67 = v88;
  *(v67 + 8) = v89 & 1;
  swift_endAccess();

  OUTLINED_FUNCTION_46_0();
  v68 = v86;
  sub_249E2AAB0(v61, v86);
  sub_249E28B3C(v68);
  OUTLINED_FUNCTION_21_0();
  sub_249E2AA5C();
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  OUTLINED_FUNCTION_22();
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_282(v73);
  swift_unknownObjectWeakInit();
  v74 = v90;
  (*(v27 + 16))(v90, v35, v24);
  v75 = (*(v27 + 80) + 41) & ~*(v27 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  *(v76 + 32) = v68;
  *(v76 + 40) = v6;
  (*(v27 + 32))(v76 + v75, v74, v24);
  v77 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v77, v78, v14, v79, v76);

  (*(v27 + 8))(v35, v24);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_249E7AC78();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1E128, 0, 0);
}

uint64_t sub_249E1E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v14 + 88) = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v14 + 72);
      v19 = *(v14 + 80);
      v21 = *(v14 + 64);
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      sub_249E28F84(v23, v24);
      OUTLINED_FUNCTION_261();
      v25 = OUTLINED_FUNCTION_33();
      v26(v25);
      v27 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v27, v28, v29);
      OUTLINED_FUNCTION_156();

      *(v22 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v30, v31, "Task Priority = %s [Did End Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    *(v14 + 96) = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    *(v14 + 104) = sub_249E1E584(*(v14 + 120));
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_337();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1E2C8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 96);
  sub_249E2615C(7, *(v0 + 104));

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1E330()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[6];
  v2 = v0[7];
  v3 = sub_249E7A628();
  OUTLINED_FUNCTION_28_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_81();
  v7(v6);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_249E1E410;
  v12 = v0[11];
  v13 = OUTLINED_FUNCTION_97(v0[7]);

  return sub_249E1940C(v13);
}

uint64_t sub_249E1E410()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  sub_249E2A8CC(v3, &qword_27EF234B0, &qword_249E7D910);
  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E1E520()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_337();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1E598()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  v11 = v71 - v10;
  v76 = type metadata accessor for DropInSessionAnalyticEvent();
  v12 = OUTLINED_FUNCTION_28_0(v76);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v77 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v18 = OUTLINED_FUNCTION_34_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_142();
  v25 = v23 - v24;
  v78 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = v71 - v28;
  v79 = v5;
  v30 = v5;
  v31 = v3;
  v32 = v30;
  v33 = sub_249E7A698();
  v34 = sub_249E7AE28();

  v35 = os_log_type_enabled(v33, v34);
  v75 = v32;
  if (v35)
  {
    OUTLINED_FUNCTION_188();
    v73 = v1;
    v36 = OUTLINED_FUNCTION_173();
    v72 = v20;
    v37 = v36;
    OUTLINED_FUNCTION_74();
    v38 = swift_slowAlloc();
    v74 = v11;
    v71[1] = v38;
    v81[0] = v38;
    *v1 = 138412546;
    *(v1 + 4) = v32;
    *v37 = v79;
    *(v1 + 12) = 2080;
    swift_getErrorValue();
    v39 = v80;
    v40 = v32;
    v41 = sub_249E7B3A8();
    sub_249E3A958(v41, v42, v81);
    OUTLINED_FUNCTION_157();

    *(v1 + 14) = v39;
    _os_log_impl(&dword_249DEE000, v33, v34, "Did Fail Conversation %@, Error = %s", v1, 0x16u);
    sub_249E2A8CC(v37, &unk_27EF23C30, &qword_249E7DA20);
    v20 = v72;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_336();
    v11 = v74;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v1 = v73;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (v79)
  {
    v43 = [v75 UUID];
    sub_249E7A608();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = sub_249E7A628();
  __swift_storeEnumTagSinglePayload(v29, v44, 1, v45);
  swift_getErrorValue();
  v46 = sub_249DF3DA4(v81[4]);
  v48 = v47;
  v49 = v1 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  swift_beginAccess();
  v50 = (v49 + *(v76 + 40));
  v51 = v50[1];
  *v50 = v46;
  v50[1] = v48;

  OUTLINED_FUNCTION_46_0();
  v52 = v77;
  sub_249E2AAB0(v49, v77);
  sub_249E28B3C(v52);
  OUTLINED_FUNCTION_21_0();
  sub_249E2AA5C();
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_22();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_282(v57);
  swift_unknownObjectWeakInit();
  v58 = OUTLINED_FUNCTION_296();
  sub_249E2A75C(v58, v59, &qword_27EF234B0, &qword_249E7D910);
  v60 = *(v20 + 80);
  v61 = v3;
  v62 = (v60 + 40) & ~v60;
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v64[2] = 0;
  v64[3] = 0;
  v64[4] = v52;
  sub_249E2A7A4(v25, v64 + v62, &qword_27EF234B0, &qword_249E7D910);
  *(v64 + v63) = v61;
  v65 = v61;
  v66 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v66, v67, v11, v68, v64);

  v69 = OUTLINED_FUNCTION_151();
  sub_249E2A8CC(v69, v70, &qword_249E7D910);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_249E7AC78();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1EAE4, 0, 0);
}

uint64_t sub_249E1EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[11] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v14[9];
      v19 = v14[10];
      v21 = v14[8];
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      sub_249E28F84(v23, v24);
      OUTLINED_FUNCTION_261();
      v25 = OUTLINED_FUNCTION_33();
      v26(v25);
      v27 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v27, v28, v29);
      OUTLINED_FUNCTION_156();

      *(v22 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v30, v31, "Task Priority = %s [Did Fail Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[12] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }

  else
  {
    v36 = v14[10];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1EC74()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 96);
  sub_249E27304(*(v0 + 48), *(v0 + 56));

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_249E1ED18;
  v3 = *(v0 + 88);
  v4 = OUTLINED_FUNCTION_97(*(v0 + 48));

  return sub_249E1940C(v4);
}

uint64_t sub_249E1ED18()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E1EDFC()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

void sub_249E1EE5C(float a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCClient();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v58 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v59 = &v52 - v15;
  v57 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v16 = sub_249E7A698();
  v17 = sub_249E7ADF8();
  if (OUTLINED_FUNCTION_201(v17))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a1;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v16, v17, "Call center manager audio power update received. audioPower: %f");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = sub_249E3F064();
    swift_unknownObjectRelease();
    v21 = 0;
    v23 = v19 + 56;
    v22 = *(v19 + 56);
    v60 = v19;
    v24 = 1 << *(v19 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    *&v20 = 136315138;
    v52 = v20;
    v56 = v7;
    v28 = v58;
    v53 = v4;
    v54 = v2;
    if ((v25 & v22) != 0)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v29 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        return;
      }

      v26 = *(v23 + 8 * v29);
      ++v21;
      if (v26)
      {
        v21 = v29;
        do
        {
LABEL_11:
          v30 = v59;
          v31 = v60[6].isa + *(v7 + 72) * (__clz(__rbit64(v26)) | (v21 << 6));
          OUTLINED_FUNCTION_2_5();
          sub_249E2AAB0(v32, v30);
          OUTLINED_FUNCTION_13_2();
          sub_249E2A924(v30, v28);
          if (*(v28 + *(v4 + 24)))
          {
            OUTLINED_FUNCTION_2_5();
            v33 = OUTLINED_FUNCTION_302();
            sub_249E2AAB0(v33, v34);
            v35 = v12;
            v36 = sub_249E7A698();
            v37 = sub_249E7ADF8();
            if (os_log_type_enabled(v36, v37))
            {
              OUTLINED_FUNCTION_70();
              v38 = swift_slowAlloc();
              OUTLINED_FUNCTION_74();
              v55 = swift_slowAlloc();
              v62 = v55;
              *v38 = v52;
              v39 = v35;
              v40 = sub_249E6A23C();
              OUTLINED_FUNCTION_0_6();
              sub_249E2AA5C();
              v41 = OUTLINED_FUNCTION_105();
              sub_249E3A958(v41, v42, v43);
              OUTLINED_FUNCTION_305();

              *(v38 + 4) = v40;
              OUTLINED_FUNCTION_339(&dword_249DEE000, v36, v37, "Notifying Client: %s");
              OUTLINED_FUNCTION_53_0();
              v4 = v53;
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();

              v12 = v39;
            }

            else
            {

              OUTLINED_FUNCTION_0_6();
              sub_249E2AA5C();
              v12 = v35;
            }

            v28 = v58;
            v44 = [*&v58[*(v4 + 20)] remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (OUTLINED_FUNCTION_7_0())
            {
              *&v45 = a1;
              [v61 didUpdateAudioPower_];
              swift_unknownObjectRelease();
              v7 = v56;
            }

            else
            {
              v46 = sub_249E7A698();
              v47 = sub_249E7ADF8();
              if (OUTLINED_FUNCTION_201(v47))
              {
                v48 = OUTLINED_FUNCTION_9();
                *v48 = 0;
                _os_log_impl(&dword_249DEE000, v46, v47, "Received audio power update, but client proxy is nil. Skipping client.", v48, 2u);
                OUTLINED_FUNCTION_65();
                MEMORY[0x24C205870]();
              }

              v7 = v56;
              v28 = v58;
            }
          }

          v26 &= v26 - 1;
          OUTLINED_FUNCTION_0_6();
          sub_249E2AA5C();
        }

        while (v26);
      }
    }

    __break(1u);
  }

  else
  {
    v60 = sub_249E7A698();
    v49 = sub_249E7ADF8();
    if (os_log_type_enabled(v60, v49))
    {
      v50 = OUTLINED_FUNCTION_9();
      *v50 = 0;
      _os_log_impl(&dword_249DEE000, v60, v49, "Received audio power update, but client data source is nil. Returning early.", v50, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v51 = v60;
  }
}

uint64_t sub_249E1F358(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_230();
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_22();
  swift_allocObject();
  OUTLINED_FUNCTION_174();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_218(v13);
  *(v14 + 32) = v3;
  *(v14 + 40) = a2;
  v15 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v15, v16, v2, v17, v18);
}

uint64_t sub_249E1F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 112) = a5;
  *(v5 + 40) = a4;
  v6 = *(type metadata accessor for XPCClient() - 8);
  *(v5 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v8 = sub_249E7AC78();
  *(v5 + 64) = v8;
  v9 = *(v8 - 8);
  *(v5 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1F550, 0, 0);
}

uint64_t sub_249E1F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[11] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v14[9];
      v19 = v14[10];
      v21 = v14[8];
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      sub_249E28F84(v23, v24);
      OUTLINED_FUNCTION_261();
      v25 = OUTLINED_FUNCTION_33();
      v26(v25);
      v27 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v27, v28, v29);
      OUTLINED_FUNCTION_156();

      *(v22 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v30, v31, "Task Priority = %s [Did Update Uplink Muted Status Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[12] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_337();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1F6E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 96) + qword_28130E738);
  *(v0 + 104) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v17 = *(v14 + 88);
  if (!*(v14 + 104))
  {
LABEL_11:

    OUTLINED_FUNCTION_337();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:

    v17 = *(v14 + 104);
    goto LABEL_11;
  }

  a10 = *(v14 + 48);
  v19 = Strong;
  sub_249E3F064();
  OUTLINED_FUNCTION_157();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_58();
  v22 = v21 & v20;
  result = OUTLINED_FUNCTION_198();
  v24 = 0;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_8:
      v26 = *(v14 + 104);
      v27 = *(v14 + 88);
      v28 = *(v14 + 56);
      v29 = *(v14 + 112);
      v30 = *(v19 + 48);
      v31 = *(a10 + 72);
      OUTLINED_FUNCTION_2_5();
      sub_249E2AAB0(v32, v28);
      v33 = OUTLINED_FUNCTION_308();
      sub_249E1F8F4(v33, v34, v26, v29);
      v35 = *(v14 + 56);
      OUTLINED_FUNCTION_306();
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C();
      v24 = v25;
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v16)
    {

      goto LABEL_10;
    }

    ++v24;
    if (*(v15 + 8 * v25))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_249E1F8F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = [*(a1 + *(type metadata accessor for XPCClient() + 20)) remoteObjectProxy];
  sub_249E7AFF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
  if (swift_dynamicCast())
  {
    [v10 session:a3 didUpdateUplinkMuteStatus:a4 & 1];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_249E7A698();
    v8 = sub_249E7ADF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_249DEE000, v7, v8, "Received uplinked muted status update, but client proxy is nil. Skipping client.", v9, 2u);
      MEMORY[0x24C205870](v9, -1, -1);
    }
  }
}

void sub_249E1FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_249E7A5B8();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_22();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v29 + 16))(&a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
  v43 = ((*(v29 + 80) + 40) & ~*(v29 + 80)) + v31;
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v42;
  v45 = *(v29 + 32);
  OUTLINED_FUNCTION_206();
  v46();
  *(v44 + v43) = v23 & 1;
  v47 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v47, v48, v37, v49, v44);

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_249E7A5B8();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1FCD4, 0, 0);
}

uint64_t sub_249E1FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v22 + 80) = Strong;
  if (Strong)
  {
    (*(*(v22 + 64) + 16))(*(v22 + 72), *(v22 + 48), *(v22 + 56));
    v27 = sub_249E7A698();
    v28 = sub_249E7AE28();
    v29 = OUTLINED_FUNCTION_224(v28);
    v31 = *(v22 + 64);
    v30 = *(v22 + 72);
    v32 = *(v22 + 56);
    if (v29)
    {
      v60 = *(v22 + 96);
      OUTLINED_FUNCTION_188();
      a11 = OUTLINED_FUNCTION_263();
      *v23 = 136315394;
      sub_249E28F84(&unk_27EF23778, MEMORY[0x277CC9578]);
      sub_249E7B2D8();
      v33 = *(v31 + 8);
      v34 = OUTLINED_FUNCTION_183();
      v35(v34);
      v36 = OUTLINED_FUNCTION_296();
      sub_249E3A958(v36, v37, v38);
      OUTLINED_FUNCTION_156();

      OUTLINED_FUNCTION_232();
      if (v60)
      {
        v39 = 0x657669746341;
      }

      else
      {
        v39 = 0x676E6974696157;
      }

      if (v60)
      {
        v40 = 0xE600000000000000;
      }

      else
      {
        v40 = 0xE700000000000000;
      }

      v41 = sub_249E3A958(v39, v40, &a11);

      *(v23 + 14) = v41;
      OUTLINED_FUNCTION_196(&dword_249DEE000, v42, v43, "Call center manager did set timeout %s. mode: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      v53 = *(v31 + 8);
      v54 = OUTLINED_FUNCTION_183();
      v55(v54);
    }

    *(v22 + 88) = *(Strong + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v56, v57, v58);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1FF24()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);
  sub_249E25AC0(*(v0 + 48), *(v0 + 96) & 1);

  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1FF94()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E20008()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E20030, v1);
}

uint64_t sub_249E20030()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 24) + qword_28130E738);
  *(v0 + 32) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E200A8()
{
  OUTLINED_FUNCTION_23();
  if (v0[4])
  {
    sub_249E28F30();
    v0[5] = OUTLINED_FUNCTION_40();
    *v1 = 28;
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_249E20194;
    v3 = v0[2];
    v4 = OUTLINED_FUNCTION_241();

    return sub_249E0E5CC(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_112();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_249E20194()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E20294()
{
  OUTLINED_FUNCTION_11();

  v1 = OUTLINED_FUNCTION_112();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E202E4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 24);
  sub_249E2530C();
  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E2033C()
{
  sub_249E7B338();
  OUTLINED_FUNCTION_157();

  if (v0 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_249E2038C(char a1)
{
  result = 0x46746F4E656D6F68;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x746F4E72656E776FLL;
      break;
    case 3:
    case 6:
      OUTLINED_FUNCTION_317();
      result = v8 | 1;
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_317();
      result = v7 - 1;
      break;
    case 7:
    case 13:
    case 17:
    case 28:
      OUTLINED_FUNCTION_317();
      result = v11 - 2;
      break;
    case 9:
      OUTLINED_FUNCTION_317();
      result = v5 + 17;
      break;
    case 11:
      OUTLINED_FUNCTION_317();
      result = v4 | 4;
      break;
    case 12:
      result = 0x657469766E496F6ELL;
      break;
    case 14:
      result = 0x6576697463416F6ELL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x6F4E656369766564;
      break;
    case 19:
      OUTLINED_FUNCTION_317();
      result = v9 + 10;
      break;
    case 20:
      result = 0x666C65536C696ELL;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0x4864696C61766E69;
      break;
    case 23:
      OUTLINED_FUNCTION_317();
      result = v10 + 16;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      OUTLINED_FUNCTION_317();
      result = v6 + 7;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 27:
      OUTLINED_FUNCTION_317();
      result = v3 + 2;
      break;
    case 29:
      result = 0x4E65657469766E69;
      break;
    case 30:
      result = 0x496E6F6973736573;
      break;
    case 31:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_249E20738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E2033C();
  *a2 = result;
  return result;
}

uint64_t sub_249E20768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E2038C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_249E207B8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_249E7AAA8();
  *(inited + 40) = v4;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = sub_249E2038C(a1);
  *(inited + 56) = v5;
  return sub_249E7AA08();
}

uint64_t sub_249E20860(uint64_t a1)
{
  v2 = sub_249E2B2C4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_249E2089C(uint64_t a1)
{
  v2 = sub_249E2B2C4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_249E208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v7 = sub_249E7A628();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v6[19] = *(v8 + 64);
  v6[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E209E0, 0, 0);
}

uint64_t sub_249E209E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v26 = *(v24 + 160);
  v25 = *(v24 + 168);
  v27 = *(v24 + 144);
  v28 = *(v24 + 152);
  v29 = *(v24 + 136);
  v61 = *(v24 + 128);
  v30 = *(v24 + 112);
  v31 = *(v24 + 120);
  v60 = *(v24 + 104);
  v57 = *(v24 + 96);
  v59 = sub_249E7AC78();
  v32 = v25;
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_249E29D24(v30, v24 + 16);
  v37 = v27;
  v56 = v27 + 16;
  v58 = *(v27 + 16);
  v58(v26, v31, v29);
  v55 = (*(v27 + 80) + 80) & ~*(v27 + 80);
  v38 = (v28 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v60;
  sub_249DF0790((v24 + 16), (v39 + 5));
  v54 = *(v37 + 32);
  OUTLINED_FUNCTION_212();
  v40();
  *(v39 + v38) = v61;

  sub_249E42EFC(v32, &unk_249E7E058, v39);
  sub_249E2A8CC(v32, &unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v59);
  sub_249E29D24(v30, v24 + 56);
  v58(v26, v31, v29);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v60;
  sub_249DF0790((v24 + 56), (v44 + 40));
  v54(&v44[v55], v26, v29);
  *&v44[v38] = v61;

  sub_249E42EFC(v32, &unk_249E7E068, v44);
  sub_249E2A8CC(v32, &unk_27EF236B0, &qword_249E7DFD0);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_195();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, v29, v54, v55, v37 + 32, v56, v57, v58, v31, v59, v30, v60, v61, a22, a23, a24);
}

uint64_t sub_249E20C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_249E20C94, 0, 0);
}

uint64_t sub_249E20C94()
{
  OUTLINED_FUNCTION_23();
  v0[6] = sub_249E5647C(v0[5]);
  OUTLINED_FUNCTION_63(&unk_249E7E088);
  v7 = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_249E2B32C;
  v3 = v0[4];
  v4 = v0[2];
  v5 = OUTLINED_FUNCTION_97(v0[3]);

  return v7(v5);
}

uint64_t sub_249E20D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = type metadata accessor for MessageContainer();
  v4[48] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E20DE0, 0, 0);
}

uint64_t sub_249E20DE0()
{
  OUTLINED_FUNCTION_11();
  v0[50] = *(v0[47] + 24);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_205(v1);

  return sub_249E437C8();
}

uint64_t sub_249E20E70()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 408);
  *v2 = *v0;
  *(v1 + 416) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E20F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t *a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v25 = v24[52];
  if (!v25)
  {
    v33 = OUTLINED_FUNCTION_153();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v35, v36, &qword_249E7E090);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_190(v37, 5);
    goto LABEL_45;
  }

  v26 = v24[47];
  v27 = v24[44];
  v29 = v27[3];
  v28 = v27[4];
  __swift_project_boxed_opaque_existential_0(v27, v29);
  v24[27] = v29;
  v24[28] = *(v28 + 8);
  __swift_allocate_boxed_opaque_existential_0(v24 + 24);
  OUTLINED_FUNCTION_52_0();
  (*(v30 + 16))();
  v24[32] = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  v24[33] = &off_285D09CA0;
  v24[29] = v25;
  v31 = *(v26 + 32);
  v32 = v25;
  sub_249E4AC08((v24 + 24), (v24 + 29));
  v38 = v24[46];
  v39 = v24[44];
  __swift_destroy_boxed_opaque_existential_0(v24 + 29);
  __swift_destroy_boxed_opaque_existential_0(v24 + 24);
  a11 = v27;
  v40 = v27[3];
  v41 = v27[4];
  v42 = OUTLINED_FUNCTION_145();
  v44 = __swift_project_boxed_opaque_existential_0(v42, v43);
  v24[43] = v32;
  v45 = *(v41 + 8);
  v46 = v32;
  v47 = v38;
  v48 = v46;
  v49 = sub_249E4E50C(v47);

  a17 = *(v49 + 16);
  if (!a17)
  {

    v52 = MEMORY[0x277D84F90];
LABEL_43:
    v24[53] = v52;
    v83 = a11[3];
    __swift_project_boxed_opaque_existential_0(v24[44], v83);
    OUTLINED_FUNCTION_20_0();
    v85 = v84(v83);
    if (!v44)
    {
      v95 = v85;
      v97 = v24[48];
      v96 = v24[49];
      v99 = v24[44];
      v98 = v24[45];
      v100 = sub_249E7A628();
      OUTLINED_FUNCTION_19_0(v100);
      v102 = *(v101 + 16);
      v103 = OUTLINED_FUNCTION_299();
      v104(v103);
      v105 = a11[3];
      v106 = a11[4];
      v107 = OUTLINED_FUNCTION_241();
      __swift_project_boxed_opaque_existential_0(v107, v108);
      OUTLINED_FUNCTION_14_1();
      v110 = v109(v105);
      v112 = v111;
      v113 = (v96 + *(v97 + 20));
      *v113 = v110;
      v113[1] = v111;
      *(v96 + *(v97 + 24)) = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249E7DF30;
      *(inited + 32) = 6580589;
      *(inited + 40) = 0xE300000000000000;

      v115 = sub_249E7A5D8();
      v116 = MEMORY[0x277D837D0];
      *(inited + 48) = v115;
      *(inited + 56) = v117;
      *(inited + 72) = v116;
      *(inited + 80) = 6580592;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = v110;
      *(inited + 104) = v112;
      *(inited + 120) = v116;
      *(inited + 128) = 112;
      *(inited + 136) = 0xE100000000000000;
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
      *(inited + 144) = v95;
      OUTLINED_FUNCTION_151();
      v24[54] = sub_249E7AA08();
      v118 = swift_task_alloc();
      v24[55] = v118;
      *v118 = v24;
      v118[1] = sub_249E21648;
      v119 = v24[50];
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_195();

      return sub_249E43C58(v120, v121, v122, v123);
    }

LABEL_45:
    v86 = v24[49];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_195();

    return v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  v50 = 0;
  v51 = v24 + 39;
  v52 = MEMORY[0x277D84F90];
  a10 = v49;
  a16 = v49 + 32;
  v53 = &unk_27EF23730;
  a12 = v48;
  a13 = v24;
  while (1)
  {
    v54 = v53;
    sub_249E29D24(a16 + 40 * v50, (v24 + 34));
    v55 = v24[38];
    __swift_project_boxed_opaque_existential_0(v24 + 34, v24[37]);
    v56 = *(v55 + 8);
    OUTLINED_FUNCTION_187();
    v58 = v57();
    __swift_destroy_boxed_opaque_existential_0(v24 + 34);
    v59 = v58 >> 62 ? sub_249E7B068() : *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v52 >> 62;
    result = v52 >> 62 ? sub_249E7B068() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a20 = v59;
    v62 = __OFADD__(result, v59);
    v63 = result + v59;
    if (v62)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    a19 = v50;
    if (result)
    {
      if (v60)
      {
        goto LABEL_18;
      }

      v64 = v52 & 0xFFFFFFFFFFFFFF8;
      v65 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v65 >= v63)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v60)
      {
LABEL_18:
        sub_249E7B068();
        goto LABEL_19;
      }

      v64 = v52 & 0xFFFFFFFFFFFFFF8;
    }

    v66 = *(v64 + 16);
LABEL_19:
    result = sub_249E7B158();
    v52 = result;
    v64 = result & 0xFFFFFFFFFFFFFF8;
    v65 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_20:
    v67 = *(v64 + 16);
    v68 = v65 - v67;
    v69 = v64 + 8 * v67;
    a18 = v64;
    if (v58 >> 62)
    {
      if (v58 < 0)
      {
        v44 = v58;
      }

      else
      {
        v44 = v58 & 0xFFFFFFFFFFFFFF8;
      }

      v70 = sub_249E7B068();
      if (v70)
      {
        v71 = v70;
        result = sub_249E7B068();
        if (v68 < result)
        {
          goto LABEL_54;
        }

        if (v71 < 1)
        {
          goto LABEL_56;
        }

        a14 = result;
        a15 = v52;
        v72 = v69 + 32;
        sub_249E2AB74(&qword_27EF23738, v54, &qword_249E7E098);
        for (i = 0; i != v71; ++i)
        {
          v74 = OUTLINED_FUNCTION_126();
          __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
          v76 = OUTLINED_FUNCTION_136();
          v78 = sub_249E51F0C(v76, v77, v58);
          v80 = *v79;
          (v78)(v51, 0);
          *(v72 + 8 * i) = v80;
          v53 = v54;
        }

        v48 = a12;
        v24 = a13;
        v44 = a14;
        v52 = a15;
        goto LABEL_33;
      }
    }

    else
    {
      v44 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        if (v68 < v44)
        {
          goto LABEL_55;
        }

        sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
        swift_arrayInitWithCopy();
        v53 = v54;
LABEL_33:

        if (v44 < a20)
        {
          goto LABEL_52;
        }

        if (v44 > 0)
        {
          v81 = *(a18 + 16);
          v62 = __OFADD__(v81, v44);
          v82 = v81 + v44;
          if (v62)
          {
            goto LABEL_53;
          }

          *(a18 + 16) = v82;
        }

        goto LABEL_38;
      }
    }

    v53 = v54;
    if (a20 > 0)
    {
      goto LABEL_52;
    }

LABEL_38:
    v50 = a19 + 1;
    if (a19 + 1 == a17)
    {

      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_249E21648()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = v1[55];
  v3 = v1[54];
  v4 = v1[53];
  v5 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E21764()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C();

  OUTLINED_FUNCTION_31_0();

  return v2();
}

uint64_t sub_249E217D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_249E217F8, 0, 0);
}

uint64_t sub_249E217F8()
{
  OUTLINED_FUNCTION_23();
  v0[6] = sub_249E56440(v0[5]);
  OUTLINED_FUNCTION_63(dword_249E7E070);
  v7 = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_249E218AC;
  v3 = v0[4];
  v4 = v0[2];
  v5 = OUTLINED_FUNCTION_97(v0[3]);

  return v7(v5);
}

uint64_t sub_249E218AC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;

  if (v0)
  {
  }

  v9 = *(v3 + 48);

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_249E219A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  v5 = type metadata accessor for MessageContainer();
  v4[44] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E21A40, 0, 0);
}

uint64_t sub_249E21A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_221();
  a22 = v24;
  v27 = v24[43];
  v28 = v24[40];
  v29 = *(v27 + 16);
  v30 = *(v29 + OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  v31 = *(v28 + 24);
  v32 = *(v28 + 32);
  v33 = OUTLINED_FUNCTION_299();
  __swift_project_boxed_opaque_existential_0(v33, v34);
  v24[27] = v31;
  v24[28] = *(v32 + 8);
  __swift_allocate_boxed_opaque_existential_0(v24 + 24);
  OUTLINED_FUNCTION_52_0();
  v36 = *(v35 + 16);
  OUTLINED_FUNCTION_248();
  v37();
  v38 = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  v24[29] = v30;
  v24[32] = v38;
  v24[33] = &off_285D09CA8;
  v39 = *(v27 + 32);
  v40 = v30;
  sub_249E4AC08((v24 + 24), (v24 + 29));
  v104 = v29;
  v41 = v24[42];
  v42 = v24[40];
  __swift_destroy_boxed_opaque_existential_0(v24 + 29);
  __swift_destroy_boxed_opaque_existential_0(v24 + 24);
  v44 = *(v28 + 24);
  v43 = *(v28 + 32);
  v45 = OUTLINED_FUNCTION_296();
  __swift_project_boxed_opaque_existential_0(v45, v46);
  v24[39] = v40;
  v47 = *(v43 + 8);
  v48 = v40;
  v49 = sub_249E4E05C(v41);

  a12 = MEMORY[0x277D84F90];
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v49 + 32;
    v52 = MEMORY[0x277D84F90];
    do
    {
      sub_249E29D24(v51, (v24 + 34));
      v53 = v24[38];
      __swift_project_boxed_opaque_existential_0(v24 + 34, v24[37]);
      v54 = *(v53 + 8);
      v55 = OUTLINED_FUNCTION_148();
      v57 = v56(v55);
      v58 = __swift_destroy_boxed_opaque_existential_0(v24 + 34);
      if (v57)
      {
        MEMORY[0x24C2047D0](v58);
        if (*((a12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_249E7AC08();
        }

        OUTLINED_FUNCTION_136();
        sub_249E7AC18();
        v52 = a12;
      }

      v51 += 40;
      --v50;
    }

    while (v50);
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  v59 = *(v28 + 24);
  __swift_project_boxed_opaque_existential_0(v24[40], v59);
  OUTLINED_FUNCTION_20_0();
  v103 = v60(v59);
  v62 = v24[44];
  v61 = v24[45];
  v64 = v24[40];
  v63 = v24[41];
  v65 = sub_249E7A628();
  OUTLINED_FUNCTION_19_0(v65);
  v67 = *(v66 + 16);
  v68 = OUTLINED_FUNCTION_250();
  v69(v68);
  v70 = *(v28 + 24);
  __swift_project_boxed_opaque_existential_0(v64, v70);
  OUTLINED_FUNCTION_14_1();
  v72 = v71(v70);
  v74 = v73;
  v75 = (v61 + *(v62 + 20));
  *v75 = v72;
  v75[1] = v73;
  *(v61 + *(v62 + 24)) = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;

  v77 = sub_249E7A5D8();
  v78 = MEMORY[0x277D837D0];
  *(inited + 48) = v77;
  *(inited + 56) = v79;
  *(inited + 72) = v78;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v72;
  *(inited + 104) = v74;
  *(inited + 120) = v78;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v103;
  v80 = sub_249E7AA08();
  v90 = sub_249E571AC(v80, v61, v52);
  v92 = v91;
  v93 = v24[43];

  v94 = *(*v93 + 120);

  v95 = sub_249E7A698();
  v96 = sub_249E7AE28();

  v97 = os_log_type_enabled(v95, v96);
  v98 = v24[45];
  if (v97)
  {
    OUTLINED_FUNCTION_70();
    v99 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v100 = swift_slowAlloc();
    a12 = v100;
    *v99 = 136315138;
    v101 = sub_249E3A958(v90, v92, &a12);

    *(v99 + 4) = v101;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v95, v96, "Message Send Succeeded: %s");
    __swift_destroy_boxed_opaque_existential_0(v100);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C();
  v102 = v24[45];

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_122();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, v103, v24 + 2, v104, a12, a13, a14, a15, a16);
}

uint64_t sub_249E21FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E21FCC, 0, 0);
}

uint64_t sub_249E21FCC()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_52_0();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_248();
  v3();
  OUTLINED_FUNCTION_63(dword_249E7E320);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 104) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_40_0(v5);

  return v9(v7);
}

uint64_t sub_249E22090()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    OUTLINED_FUNCTION_9_0();

    return v12();
  }
}

uint64_t sub_249E221AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E221D8, 0, 0);
}

uint64_t sub_249E221D8()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_52_0();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_248();
  v3();
  OUTLINED_FUNCTION_63(&unk_249E7E258);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 104) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_40_0(v5);

  return v9(v7);
}

uint64_t sub_249E2229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  v8 = type metadata accessor for MessageContainer();
  *(v7 + 1152) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E22360, 0, 0);
}

uint64_t sub_249E22360()
{
  OUTLINED_FUNCTION_11();
  v0[148] = *(v0[143] + 24);
  v1 = swift_task_alloc();
  v0[149] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_205(v1);

  return sub_249E437C8();
}

uint64_t sub_249E223F0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 1192);
  *v2 = *v0;
  *(v1 + 1200) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E224D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v17 = *(v15 + 1200);
  if (!v17)
  {
    v30 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v32, v33, &qword_249E7E090);
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_190(v34, 5);
    goto LABEL_15;
  }

  v18 = *(v15 + 1144);
  v19 = *(v15 + 1112);
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);
  v22 = OUTLINED_FUNCTION_83();
  __swift_project_boxed_opaque_existential_0(v22, v23);
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_52_0();
  v25 = *(v24 + 16);
  OUTLINED_FUNCTION_206();
  v26();
  v27 = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  OUTLINED_FUNCTION_314(v27);
  *(v15 + 968) = &off_285D09CA0;
  *(v15 + 936) = v17;
  OUTLINED_FUNCTION_313();
  v28 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v29 = OUTLINED_FUNCTION_121();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_15:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
  }

  v35 = *(v15 + 1128);
  v36 = *(v15 + 1112);
  v37 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23800, &qword_249E7E260);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v39 = OUTLINED_FUNCTION_310();
  v40 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_325(v40);
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF23810, &qword_249E7E270);

  v41 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v41, v42);

  if (!*(v15 + 1040))
  {
    sub_249E2A8CC(v15 + 1016, &qword_27EF23808, &qword_249E7E268);
LABEL_14:
    v52 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v54, v55, &qword_249E7E090);
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_190(v56, 1);

    goto LABEL_15;
  }

  sub_249DF0790((v15 + 1016), v15 + 976);
  v43 = *(v15 + 1000);
  v44 = *(v15 + 1008);
  __swift_project_boxed_opaque_existential_0((v15 + 976), v43);
  v45 = v44[1];
  OUTLINED_FUNCTION_79();
  v47 = v46();
  if (!sub_249E51FB4(v47))
  {

    __swift_destroy_boxed_opaque_existential_0((v15 + 976));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_326();
  if (v43)
  {
    v48 = MEMORY[0x24C204D50](0, v47);
  }

  else
  {
    v48 = *(v47 + 32);
  }

  OUTLINED_FUNCTION_324(v48);
  v49 = *(v19 + 24);
  __swift_project_boxed_opaque_existential_0(v43, v49);
  OUTLINED_FUNCTION_20_0();
  v51 = v50(v49);
  if (v43)
  {

    v29 = (v15 + 976);
    goto LABEL_4;
  }

  v66 = v51;
  v67 = *(v15 + 1176);
  OUTLINED_FUNCTION_88();
  v68 = *(v15 + 1112);
  v69 = sub_249E7A628();
  OUTLINED_FUNCTION_19_0(v69);
  v71 = *(v70 + 16);
  v72 = OUTLINED_FUNCTION_299();
  v73(v72);
  v74 = *(v19 + 24);
  __swift_project_boxed_opaque_existential_0(v68, v74);
  OUTLINED_FUNCTION_14_1();
  v76 = v75(v74);
  OUTLINED_FUNCTION_179(v76, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v78 = swift_initStackObject();
  v79 = OUTLINED_FUNCTION_154(v78, xmmword_249E7DF30);
  v79[2].n128_u64[0] = v16;
  v79[2].n128_u64[1] = 0xE300000000000000;

  v80 = sub_249E7A5D8();
  OUTLINED_FUNCTION_152(v80, v81);
  v78[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v78[9].n128_u64[0] = v66;
  OUTLINED_FUNCTION_250();
  *(v15 + 1232) = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v15 + 1240) = v82;
  *v82 = v83;
  OUTLINED_FUNCTION_124(v82);
  OUTLINED_FUNCTION_72();

  return sub_249E451F0();
}

uint64_t sub_249E2293C()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 1240);
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v8 = *(v7 + 192);
  v9 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v17 = *(v3 + 1232);
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_249E22A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v17 = *(v16 + 120);
  v18 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v19 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v25 = OUTLINED_FUNCTION_109();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_332(v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v18 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190(v14 + 360);
  OUTLINED_FUNCTION_331();
  if (v18)
  {
    v37 = *(v14 + 1224);
    v38 = *(v14 + 1176);

    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C();
    __swift_destroy_boxed_opaque_existential_0((v14 + 976));
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    v41 = OUTLINED_FUNCTION_127(v40);
    v42 = *(v14 + 1160);
    if (v41)
    {
      OUTLINED_FUNCTION_70();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v43 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
      v44 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v44, v45, v46);
      OUTLINED_FUNCTION_102();

      *(v43 + 4) = v42;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v47, v48, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
    }

    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_245();
    sub_249E24ED0(v49, v50, v51, v52);
    v53 = *(v14 + 1224);
    v54 = *(v14 + 1176);
    v55 = *(v14 + 1168);
    v65 = *(v14 + 1160);
    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);

    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_105();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E22D90()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);

  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  OUTLINED_FUNCTION_322();

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E22E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  v8 = type metadata accessor for MessageContainer();
  *(v7 + 1152) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E22EE8, 0, 0);
}

uint64_t sub_249E22EE8()
{
  OUTLINED_FUNCTION_11();
  v0[148] = *(v0[143] + 24);
  v1 = swift_task_alloc();
  v0[149] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_205(v1);

  return sub_249E437C8();
}

uint64_t sub_249E22F78()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 1192);
  *v2 = *v0;
  *(v1 + 1200) = v5;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E23060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v17 = *(v15 + 1200);
  if (!v17)
  {
    v30 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v32, v33, &qword_249E7E090);
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_190(v34, 5);
    goto LABEL_15;
  }

  v18 = *(v15 + 1144);
  v19 = *(v15 + 1112);
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);
  v22 = OUTLINED_FUNCTION_83();
  __swift_project_boxed_opaque_existential_0(v22, v23);
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_52_0();
  v25 = *(v24 + 16);
  OUTLINED_FUNCTION_206();
  v26();
  v27 = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  OUTLINED_FUNCTION_314(v27);
  *(v15 + 968) = &off_285D09CA0;
  *(v15 + 936) = v17;
  OUTLINED_FUNCTION_313();
  v28 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v29 = OUTLINED_FUNCTION_121();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_15:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
  }

  v35 = *(v15 + 1128);
  v36 = *(v15 + 1112);
  v37 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23800, &qword_249E7E260);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v39 = OUTLINED_FUNCTION_310();
  v40 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_325(v40);
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF23810, &qword_249E7E270);

  v41 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v41, v42);

  if (!*(v15 + 1040))
  {
    sub_249E2A8CC(v15 + 1016, &qword_27EF23808, &qword_249E7E268);
LABEL_14:
    v52 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v54, v55, &qword_249E7E090);
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_190(v56, 1);

    goto LABEL_15;
  }

  sub_249DF0790((v15 + 1016), v15 + 976);
  v43 = *(v15 + 1000);
  v44 = *(v15 + 1008);
  __swift_project_boxed_opaque_existential_0((v15 + 976), v43);
  v45 = v44[1];
  OUTLINED_FUNCTION_79();
  v47 = v46();
  if (!sub_249E51FB4(v47))
  {

    __swift_destroy_boxed_opaque_existential_0((v15 + 976));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_326();
  if (v43)
  {
    v48 = MEMORY[0x24C204D50](0, v47);
  }

  else
  {
    v48 = *(v47 + 32);
  }

  OUTLINED_FUNCTION_324(v48);
  v49 = *(v19 + 24);
  __swift_project_boxed_opaque_existential_0(v43, v49);
  OUTLINED_FUNCTION_20_0();
  v51 = v50(v49);
  if (v43)
  {

    v29 = (v15 + 976);
    goto LABEL_4;
  }

  v66 = v51;
  v67 = *(v15 + 1176);
  OUTLINED_FUNCTION_88();
  v68 = *(v15 + 1112);
  v69 = sub_249E7A628();
  OUTLINED_FUNCTION_19_0(v69);
  v71 = *(v70 + 16);
  v72 = OUTLINED_FUNCTION_299();
  v73(v72);
  v74 = *(v19 + 24);
  __swift_project_boxed_opaque_existential_0(v68, v74);
  OUTLINED_FUNCTION_14_1();
  v76 = v75(v74);
  OUTLINED_FUNCTION_179(v76, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v78 = swift_initStackObject();
  v79 = OUTLINED_FUNCTION_154(v78, xmmword_249E7DF30);
  v79[2].n128_u64[0] = v16;
  v79[2].n128_u64[1] = 0xE300000000000000;

  v80 = sub_249E7A5D8();
  OUTLINED_FUNCTION_152(v80, v81);
  v78[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v78[9].n128_u64[0] = v66;
  OUTLINED_FUNCTION_250();
  *(v15 + 1232) = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v15 + 1240) = v82;
  *v82 = v83;
  OUTLINED_FUNCTION_124(v82);
  OUTLINED_FUNCTION_72();

  return sub_249E451F0();
}

uint64_t sub_249E234C4()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 1240);
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v8 = *(v7 + 192);
  v9 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v17 = *(v3 + 1232);
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_249E235F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v17 = *(v16 + 120);
  v18 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v19 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v25 = OUTLINED_FUNCTION_109();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_332(v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v18 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190(v14 + 360);
  OUTLINED_FUNCTION_331();
  if (v18)
  {
    v37 = *(v14 + 1224);
    v38 = *(v14 + 1176);

    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C();
    __swift_destroy_boxed_opaque_existential_0((v14 + 976));
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    v41 = OUTLINED_FUNCTION_127(v40);
    v42 = *(v14 + 1160);
    if (v41)
    {
      OUTLINED_FUNCTION_70();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v43 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
      v44 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v44, v45, v46);
      OUTLINED_FUNCTION_102();

      *(v43 + 4) = v42;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v47, v48, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
    }

    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_245();
    sub_249E25004(v49, v50, v51, v52);
    v53 = *(v14 + 1224);
    v54 = *(v14 + 1176);
    v55 = *(v14 + 1168);
    v65 = *(v14 + 1160);
    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);

    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_105();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E23918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E23944, 0, 0);
}

uint64_t sub_249E23944()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_52_0();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_248();
  v3();
  OUTLINED_FUNCTION_63(&unk_249E7E318);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 104) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_40_0(v5);

  return v9(v7);
}

uint64_t sub_249E23A04()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    OUTLINED_FUNCTION_9_0();

    return v12();
  }
}

uint64_t sub_249E23B20()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 112);

  return v1();
}

uint64_t sub_249E23B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E23BA8, 0, 0);
}

uint64_t sub_249E23BA8()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_52_0();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_248();
  v3();
  OUTLINED_FUNCTION_63(&unk_249E7E228);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 104) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_40_0(v5);

  return v9(v7);
}

uint64_t sub_249E23C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  v8 = type metadata accessor for MessageContainer();
  *(v7 + 1152) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E23D2C, 0, 0);
}

uint64_t sub_249E23D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_191(OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  OUTLINED_FUNCTION_52_0();
  v20 = *(v19 + 16);
  OUTLINED_FUNCTION_206();
  v21();
  v22 = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  OUTLINED_FUNCTION_314(v22);
  v15[121] = &off_285D09CA8;
  v15[117] = v17;
  OUTLINED_FUNCTION_313();
  v23 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v24 = OUTLINED_FUNCTION_121();
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_11:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  v25 = v15[141];
  v26 = v15[139];
  v27 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237D0, &qword_249E7E230);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v29 = OUTLINED_FUNCTION_287();
  v30 = OUTLINED_FUNCTION_219();
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF237F8, &qword_249E7E250);

  v31 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v31, v32);

  if (!v15[130])
  {
    sub_249E2A8CC((v15 + 127), &qword_27EF237D8, &qword_249E7E238);
LABEL_10:
    v39 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v41, v42, &qword_249E7E090);
    OUTLINED_FUNCTION_91();
    *v43 = 0;
    swift_willThrow();

    goto LABEL_11;
  }

  v33 = OUTLINED_FUNCTION_186();
  v35 = v34(v33);
  v15[153] = v35;
  if (!v35)
  {
    __swift_destroy_boxed_opaque_existential_0(v15 + 122);
    goto LABEL_10;
  }

  v36 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(v15[139], v36);
  OUTLINED_FUNCTION_20_0();
  v38 = v37(v36);
  if (v30)
  {

    swift_unknownObjectRelease();
    v24 = v15 + 122;
    goto LABEL_3;
  }

  v53 = v38;
  v54 = v15[147];
  OUTLINED_FUNCTION_88();
  v55 = v15[139];
  v56 = sub_249E7A628();
  OUTLINED_FUNCTION_19_0(v56);
  v58 = *(v57 + 16);
  v59 = OUTLINED_FUNCTION_242();
  v60(v59);
  v61 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(v55, v61);
  OUTLINED_FUNCTION_14_1();
  v63 = v62(v61);
  OUTLINED_FUNCTION_181(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v65 = swift_initStackObject();
  v66 = OUTLINED_FUNCTION_154(v65, xmmword_249E7DF30);
  v66[2].n128_u64[0] = v18;
  v66[2].n128_u64[1] = 0xE300000000000000;

  v67 = sub_249E7A5D8();
  OUTLINED_FUNCTION_130(v67, v68);
  v65[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v65[9].n128_u64[0] = v53;
  OUTLINED_FUNCTION_151();
  v15[154] = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  v15[155] = v69;
  *v69 = v70;
  OUTLINED_FUNCTION_132(v69);
  OUTLINED_FUNCTION_72();

  return sub_249E5745C();
}

uint64_t sub_249E240E8()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 1240);
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v8 = *(v7 + 192);
  v9 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v17 = *(v3 + 1232);
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_249E24214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v17 = *(v16 + 120);
  v18 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v19 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v25 = OUTLINED_FUNCTION_109();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_332(v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v18 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190((v14 + 45));
  OUTLINED_FUNCTION_331();
  if (v18)
  {
    v37 = v14[153];
    v38 = v14[150];
    v39 = v14[147];
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C();

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    __swift_destroy_boxed_opaque_existential_0(v14 + 122);
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v40 = sub_249E7A698();
    v41 = sub_249E7AE28();
    v42 = OUTLINED_FUNCTION_127(v41);
    v43 = v14[145];
    if (v42)
    {
      OUTLINED_FUNCTION_70();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v44 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
      v45 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v45, v46, v47);
      OUTLINED_FUNCTION_102();

      *(v44 + 4) = v43;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v48, v49, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
    }

    OUTLINED_FUNCTION_125();
    v14[136] = &off_285D09CA8;
    v14[132] = v50;
    v51 = v50;
    v52 = OUTLINED_FUNCTION_244();
    sub_249E24ED0(v52, v53, v54, v55);
    OUTLINED_FUNCTION_291();
    v65 = v14[145];

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_105();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E24550()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1176);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  OUTLINED_FUNCTION_322();

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E245E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  v8 = type metadata accessor for MessageContainer();
  *(v7 + 1152) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E246AC, 0, 0);
}

uint64_t sub_249E246AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_191(OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  OUTLINED_FUNCTION_52_0();
  v20 = *(v19 + 16);
  OUTLINED_FUNCTION_206();
  v21();
  v22 = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  OUTLINED_FUNCTION_314(v22);
  v15[121] = &off_285D09CA8;
  v15[117] = v17;
  OUTLINED_FUNCTION_313();
  v23 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v24 = OUTLINED_FUNCTION_121();
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_11:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  v25 = v15[141];
  v26 = v15[139];
  v27 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237D0, &qword_249E7E230);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v29 = OUTLINED_FUNCTION_287();
  v30 = OUTLINED_FUNCTION_219();
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF237F8, &qword_249E7E250);

  v31 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v31, v32);

  if (!v15[130])
  {
    sub_249E2A8CC((v15 + 127), &qword_27EF237D8, &qword_249E7E238);
LABEL_10:
    v39 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_4_5();
    sub_249E2AB74(v41, v42, &qword_249E7E090);
    OUTLINED_FUNCTION_91();
    *v43 = 0;
    swift_willThrow();

    goto LABEL_11;
  }

  v33 = OUTLINED_FUNCTION_186();
  v35 = v34(v33);
  v15[153] = v35;
  if (!v35)
  {
    __swift_destroy_boxed_opaque_existential_0(v15 + 122);
    goto LABEL_10;
  }

  v36 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(v15[139], v36);
  OUTLINED_FUNCTION_20_0();
  v38 = v37(v36);
  if (v30)
  {

    swift_unknownObjectRelease();
    v24 = v15 + 122;
    goto LABEL_3;
  }

  v53 = v38;
  v54 = v15[147];
  OUTLINED_FUNCTION_88();
  v55 = v15[139];
  v56 = sub_249E7A628();
  OUTLINED_FUNCTION_19_0(v56);
  v58 = *(v57 + 16);
  v59 = OUTLINED_FUNCTION_242();
  v60(v59);
  v61 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(v55, v61);
  OUTLINED_FUNCTION_14_1();
  v63 = v62(v61);
  OUTLINED_FUNCTION_181(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v65 = swift_initStackObject();
  v66 = OUTLINED_FUNCTION_154(v65, xmmword_249E7DF30);
  v66[2].n128_u64[0] = v18;
  v66[2].n128_u64[1] = 0xE300000000000000;

  v67 = sub_249E7A5D8();
  OUTLINED_FUNCTION_130(v67, v68);
  v65[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v65[9].n128_u64[0] = v53;
  OUTLINED_FUNCTION_151();
  v15[154] = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  v15[155] = v69;
  *v69 = v70;
  OUTLINED_FUNCTION_132(v69);
  OUTLINED_FUNCTION_72();

  return sub_249E5745C();
}

uint64_t sub_249E24A68()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 1240);
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v8 = *(v7 + 192);
  v9 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v17 = *(v3 + 1232);
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_249E24B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v17 = *(v16 + 120);
  v18 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v19 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v25 = OUTLINED_FUNCTION_109();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_332(v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v18 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190((v14 + 45));
  OUTLINED_FUNCTION_331();
  if (v18)
  {
    v37 = v14[153];
    v38 = v14[150];
    v39 = v14[147];
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C();

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    __swift_destroy_boxed_opaque_existential_0(v14 + 122);
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v40 = sub_249E7A698();
    v41 = sub_249E7AE28();
    v42 = OUTLINED_FUNCTION_127(v41);
    v43 = v14[145];
    if (v42)
    {
      OUTLINED_FUNCTION_70();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v44 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
      v45 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v45, v46, v47);
      OUTLINED_FUNCTION_102();

      *(v44 + 4) = v43;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v48, v49, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C();
    }

    OUTLINED_FUNCTION_125();
    v14[136] = &off_285D09CA8;
    v14[132] = v50;
    v51 = v50;
    v52 = OUTLINED_FUNCTION_244();
    sub_249E25004(v52, v53, v54, v55);
    OUTLINED_FUNCTION_291();
    v65 = v14[145];

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_105();
    sub_249E2AA5C();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

void *sub_249E24ED0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  started = type metadata accessor for StartDropInResponse();
  v10 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v12 = &__src[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];

  result = sub_249DFCA5C(v13, v12);
  if (!v4)
  {
    sub_249E4C640(a1, a2, a3, __src);
    sub_249E2A924(v12, a4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
    return memcpy((a4 + *(v15 + 36)), __src, 0x51uLL);
  }

  return result;
}

void *sub_249E25004@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DropInStateResponse();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &__src[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];

  result = sub_249E17CF8(v13, v12);
  if (!v4)
  {
    sub_249E4C640(a1, a2, a3, __src);
    sub_249E2A924(v12, a4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
    return memcpy((a4 + *(v15 + 36)), __src, 0x51uLL);
  }

  return result;
}

void sub_249E25138()
{
  v1 = v0;

  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = *(v1 + qword_28130E738);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236D8, &qword_249E7E018);
    v6 = sub_249E7AAC8();
    v8 = sub_249E3A958(v6, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Did Set Session %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C205870](v4, -1, -1);
    MEMORY[0x24C205870](v3, -1, -1);
  }

  else
  {
  }
}

void sub_249E252B0(void *a1)
{
  v2 = *(v1 + qword_28130E738);
  *(v1 + qword_28130E738) = a1;
  v3 = a1;

  sub_249E25138();
}

void sub_249E2530C()
{
  v1 = v0;
  v2 = type metadata accessor for XPCClient();
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = sub_249E7A5B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_249DEE000, v20, v21, "Invalidating Session", v22, 2u);
    MEMORY[0x24C205870](v22, -1, -1);
  }

  sub_249E7A508();
  v23 = qword_28130DB90;
  swift_beginAccess();
  (*(v16 + 40))(v1 + v23, v19, v15);
  swift_endAccess();
  v24 = sub_249E7A628();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v24);
  v25 = qword_28130E758;
  swift_beginAccess();
  sub_249E28EE8(v14, v1 + v25, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  v26 = type metadata accessor for Pseudonym();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v26);
  v27 = qword_28130E750;
  swift_beginAccess();
  sub_249E28EE8(v10, v1 + v27, &qword_27EF236D0, &qword_249E7E010);
  swift_endAccess();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v24);
  v28 = qword_28130E740;
  swift_beginAccess();
  sub_249E28EE8(v14, v1 + v28, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v24);
  v29 = qword_28130E748;
  swift_beginAccess();
  sub_249E28EE8(v14, v1 + v29, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  v30 = qword_28130E730;
  swift_beginAccess();
  v31 = *(v1 + v30);
  *(v1 + v30) = MEMORY[0x277D84FA0];

  v32 = *(v1 + qword_28130E738);
  if (v32)
  {
    v33 = v32;
    sub_249E252B0(0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = sub_249E3F064();
      swift_unknownObjectRelease();
      v35 = 1 << *(v34 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v34 + 56);
      v38 = (v35 + 63) >> 6;

      v39 = 0;
      v40 = v43;
      if (v37)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v38)
        {

          goto LABEL_17;
        }

        v37 = *(v34 + 56 + 8 * v41);
        ++v39;
        if (v37)
        {
          v39 = v41;
          do
          {
LABEL_12:
            sub_249E2AAB0(*(v34 + 48) + *(v44 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v6);
            v42 = [*&v6[*(v40 + 20)] remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              [v45 didRemoveSession_];
              swift_unknownObjectRelease();
            }

            v37 &= v37 - 1;
            sub_249E2AA5C();
          }

          while (v37);
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
    }
  }
}

BOOL sub_249E258F8()
{
  v1 = sub_249E7A5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(v0 + qword_28130E738);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 state];
    if (v11 == 2)
    {
      v13 = qword_28130DB90;
      swift_beginAccess();
      (*(v2 + 16))(v8, v0 + v13, v1);
      sub_249E7A568();
      v15 = v14;
      sub_249E7A598();
      sub_249E7A568();
      v17 = v16;

      v18 = *(v2 + 8);
      v18(v6, v1);
      v18(v8, v1);
      return v15 >= v17;
    }

    if (v11 == 3 || v11 == 4)
    {

      return 1;
    }
  }

  return 0;
}

void sub_249E25AC0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_249E7A5B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + qword_28130E738);
  if (v11)
  {
    v26 = v11;
    v12 = sub_249E7A538();
    v13 = &selRef_setSessionEndDate_;
    if ((a2 & 1) == 0)
    {
      v13 = &selRef_setSessionStartTimeoutDate_;
    }

    [v26 *v13];

    sub_249E25DE8();
    v14 = v26;
  }

  else
  {
    (*(v7 + 16))(v10, a1, v6);
    v15 = sub_249E7A698();
    v16 = sub_249E7AE08();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      sub_249E28F84(&unk_27EF23778, MEMORY[0x277CC9578]);
      v19 = sub_249E7B2D8();
      v21 = v20;
      (*(v7 + 8))(v10, v6);
      v22 = sub_249E3A958(v19, v21, &v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      if (a2)
      {
        v23 = 0x657669746341;
      }

      else
      {
        v23 = 0x676E6974696157;
      }

      if (a2)
      {
        v24 = 0xE600000000000000;
      }

      else
      {
        v24 = 0xE700000000000000;
      }

      v25 = sub_249E3A958(v23, v24, &v27);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_249DEE000, v15, v16, "Session is nil. Failed to set session timeout to %s for mode: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v18, -1, -1);
      MEMORY[0x24C205870](v17, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_249E25DE8()
{
  v1 = type metadata accessor for XPCClient();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_28130E738);
  if (v6)
  {
    v22[0] = v6;
    v7 = sub_249E7A698();
    v8 = sub_249E7AE28();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v22[0];
      *(v9 + 4) = v22[0];
      *v10 = v6;
      v12 = v11;
      _os_log_impl(&dword_249DEE000, v7, v8, "Notify clients did update session %@", v9, 0xCu);
      sub_249E2A8CC(v10, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v10, -1, -1);
      MEMORY[0x24C205870](v9, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = sub_249E3F064();
      swift_unknownObjectRelease();
      v14 = 1 << *(v13 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v13 + 56);
      v17 = (v14 + 63) >> 6;

      v18 = 0;
      if (v16)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v17)
        {

          return;
        }

        v16 = *(v13 + 56 + 8 * v19);
        ++v18;
        if (v16)
        {
          v18 = v19;
          do
          {
LABEL_12:
            sub_249E2AAB0(*(v13 + 48) + *(v2 + 72) * (__clz(__rbit64(v16)) | (v18 << 6)), v5);
            v20 = [*&v5[*(v1 + 20)] remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              [v22[1] didUpdateSession_];
              swift_unknownObjectRelease();
            }

            v16 &= v16 - 1;
            sub_249E2AA5C();
          }

          while (v16);
        }
      }

      __break(1u);
    }

    else
    {
      v21 = v22[0];
    }
  }
}

BOOL sub_249E2615C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_249E7A698();
  v7 = sub_249E7AE28();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = sub_249E7AF18();
    v12 = sub_249E3A958(v10, v11, &v29);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_249E7AF58();
    v15 = sub_249E3A958(v13, v14, &v29);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_249DEE000, v6, v7, "Setting Session State to %s, reason: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v9, -1, -1);
    MEMORY[0x24C205870](v8, -1, -1);
  }

  v16 = *(v3 + qword_28130E738);
  if (v16)
  {
    v17 = v16;
    [v17 setState_];
    [v17 setStateReason_];
    sub_249E25DE8();
  }

  else
  {
    v18 = sub_249E7A698();
    v19 = sub_249E7AE08();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315394;
      v22 = sub_249E7AF18();
      v24 = sub_249E3A958(v22, v23, &v29);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_249E7AF58();
      v27 = sub_249E3A958(v25, v26, &v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_249DEE000, v18, v19, "Session is nil. Failed to set session state to %s with reason: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v21, -1, -1);
      MEMORY[0x24C205870](v20, -1, -1);
    }
  }

  return v16 != 0;
}

uint64_t sub_249E26418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src)
{
  v6[107] = v5;
  v6[106] = __src;
  v6[105] = a4;
  v6[104] = a3;
  v6[103] = a2;
  v6[102] = a1;
  memcpy(v6 + 2, __src, 0x51uLL);
  v7 = type metadata accessor for XPCClient();
  v6[108] = v7;
  v8 = *(v7 - 8);
  v6[109] = v8;
  v9 = *(v8 + 64) + 15;
  v6[110] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  v11 = sub_249E7A628();
  v6[113] = v11;
  v12 = *(v11 - 8);
  v6[114] = v12;
  v13 = *(v12 + 64) + 15;
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010) - 8) + 64) + 15;
  v6[117] = swift_task_alloc();
  v15 = type metadata accessor for Pseudonym();
  v6[118] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[119] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v6[120] = v17;
  v18 = *(v17 - 8);
  v6[121] = v18;
  v19 = *(v18 + 64) + 15;
  v6[122] = swift_task_alloc();
  v20 = sub_249E7A5B8();
  v6[123] = v20;
  v21 = *(v20 - 8);
  v6[124] = v21;
  v22 = *(v21 + 64) + 15;
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E266E0, v5, 0);
}

uint64_t sub_249E266E0()
{
  v94 = v0;
  v1 = *(v0 + 856);
  v2 = sub_249E258F8();
  *(v0 + 97) = v2;
  if (v2)
  {
    v3 = sub_249E7A698();
    v4 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_120(v4))
    {
      v5 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v5);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    goto LABEL_30;
  }

  v11 = *(v0 + 816);
  v91 = v1;
  v12 = sub_249E7A698();
  v13 = sub_249E7AE28();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 816);
  if (v14)
  {
    OUTLINED_FUNCTION_70();
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_6();
    *v16 = 138412290;
    *(v16 + 4) = v15;
    *v17 = v15;
    v18 = v15;
    _os_log_impl(&dword_249DEE000, v12, v13, "Setting Session to %@", v16, 0xCu);
    sub_249E2A8CC(v17, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v19 = *(v0 + 1000);
  v20 = *(v0 + 992);
  v86 = *(v0 + 1008);
  v87 = *(v0 + 984);
  v21 = *(v0 + 976);
  v22 = *(v0 + 968);
  v85 = *(v0 + 960);
  v89 = *(v0 + 936);
  v90 = *(v0 + 944);
  v23 = *(v0 + 856);
  v88 = *(v0 + 824);
  v24 = *(v0 + 816);
  sub_249E252B0(v15);
  sub_249E7A598();
  sub_249E7A768();
  OUTLINED_FUNCTION_49_0();
  sub_249E2AB74(v25, &unk_27EF23820, &unk_249E7E860);
  OUTLINED_FUNCTION_48_0();
  v27 = sub_249E2AB74(v26, &unk_27EF23820, &unk_249E7E860);
  OUTLINED_FUNCTION_47_0();
  sub_249E2AB74(v28, &unk_27EF23820, &unk_249E7E860);
  sub_249E7A6E8();
  (*(v22 + 8))(v21, v85);
  v29 = *(v0 + 800);
  sub_249E7A528();
  (*(v20 + 8))(v19, v87);
  OUTLINED_FUNCTION_252();
  v31 = *(v20 + 40);
  v30 = v20 + 40;
  OUTLINED_FUNCTION_187();
  v32();
  swift_endAccess();
  sub_249E2A75C(v88, v89, &qword_27EF236D0, &qword_249E7E010);
  v33 = OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_226(v33, v34, v90);
  if (v35)
  {
    sub_249E2A8CC(*(v0 + 936), &qword_27EF236D0, &qword_249E7E010);
  }

  else
  {
    v36 = *(v0 + 952);
    v37 = *(v0 + 856);
    sub_249E2A924(*(v0 + 936), v36);
    sub_249E27858(v36);
    sub_249E2AA5C();
  }

  v38 = *(v0 + 904);
  v39 = *(v0 + 896);
  sub_249E2A75C(*(v0 + 832), v39, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v39, 1, v38);
  if (v35)
  {
    sub_249E2A8CC(*(v0 + 896), &qword_27EF234B0, &qword_249E7D910);
  }

  else
  {
    v40 = *(v0 + 928);
    v41 = *(v0 + 912);
    v42 = *(v0 + 904);
    v43 = *(v0 + 896);
    v44 = OUTLINED_FUNCTION_240();
    v45(v44);
    sub_249E27B08();
    v46 = *(v41 + 8);
    v47 = OUTLINED_FUNCTION_126();
    v48(v47);
  }

  v49 = *(v0 + 904);
  v50 = *(v0 + 888);
  sub_249E2A75C(*(v0 + 840), v50, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v50, 1, v49);
  if (v35)
  {
    sub_249E2A8CC(*(v0 + 888), &qword_27EF234B0, &qword_249E7D910);
  }

  else
  {
    v51 = *(v0 + 920);
    v52 = *(v0 + 912);
    v53 = *(v0 + 904);
    v54 = *(v0 + 888);
    v55 = OUTLINED_FUNCTION_240();
    v56(v55);
    sub_249E27B08();
    v57 = *(v52 + 8);
    v58 = OUTLINED_FUNCTION_126();
    v59(v58);
  }

  if (*(*(v0 + 848) + 80) <= 0xFDu)
  {
    memcpy((v0 + 280), (v0 + 16), 0x51uLL);
    memcpy((v0 + 104), (v0 + 16), 0x51uLL);
    memcpy((v0 + 192), (v0 + 16), 0x51uLL);
    sub_249E2A248(v0 + 192, v0 + 368);
    v73 = sub_249E7A698();
    v74 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v74))
    {
      OUTLINED_FUNCTION_70();
      v75 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v93 = swift_slowAlloc();
      *v75 = 136315138;
      memcpy((v0 + 632), (v0 + 104), 0x51uLL);
      v76 = sub_249E7AAC8();
      sub_249E3A958(v76, v77, &v93);
      OUTLINED_FUNCTION_165();

      *(v75 + 4) = v27;
      OUTLINED_FUNCTION_202();
      _os_log_impl(v78, v79, v80, v81, v75, 0xCu);
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {
      sub_249E2A8CC(*(v0 + 848), &qword_27EF23838, &qword_249E7E2C0);
    }

    v83 = *(v0 + 856);
    OUTLINED_FUNCTION_252();
    sub_249E2A248(v0 + 280, v0 + 544);
    sub_249E64190();
    swift_endAccess();
    sub_249E2A2A4(v0 + 456);
    v84 = swift_task_alloc();
    *(v0 + 1016) = v84;
    *v84 = v0;
    v84[1] = sub_249E26F24;

    return sub_249E4D97C();
  }

  else
  {
    v60 = *(v0 + 856);
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_30:
      v92 = *(v0 + 97);
      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_168();

      return v82((v92 & 1) == 0);
    }

    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_157();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_58();
    v63 = v62 & v61;
    result = OUTLINED_FUNCTION_198();
    v65 = 0;
    if (v63)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v66 >= v23)
      {

        goto LABEL_30;
      }

      v63 = *(v30 + 8 * v66);
      ++v65;
      if (v63)
      {
        v65 = v66;
        do
        {
LABEL_23:
          v67 = *(v0 + 880);
          v68 = *(v91 + 48);
          v69 = *(v85 + 72);
          OUTLINED_FUNCTION_2_5();
          sub_249E2AAB0(v70, v67);
          v71 = [*(v67 + *(v27 + 20)) remoteObjectProxy];
          sub_249E7AFF8();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
          if (OUTLINED_FUNCTION_7_0())
          {
            [*(v0 + 808) didAddSession_];
            swift_unknownObjectRelease();
          }

          v63 &= v63 - 1;
          v72 = *(v0 + 880);
          OUTLINED_FUNCTION_0_6();
          result = sub_249E2AA5C();
        }

        while (v63);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249E26F24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 1016);
  v5 = *(v3 + 856);
  v6 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v9 + 1024) = v8;

  v10 = OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E2701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v19 = *(*(v14 + 856) + qword_28130E738);
  v20 = *(v14 + 1024);
  if (!v19)
  {

    goto LABEL_5;
  }

  v21 = v19;
  v22 = v20;
  v23 = [v21 participants];
  sub_249DF691C(0, &qword_27EF23840, 0x277D069E0);
  OUTLINED_FUNCTION_153();
  v24 = sub_249E7ABE8();

  a11 = v24;
  MEMORY[0x24C2047D0]();
  if (*((a11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_20;
  }

LABEL_3:
  v15 = *(v14 + 1024);
  OUTLINED_FUNCTION_249();
  sub_249E7AC18();
  v20 = a11;
  OUTLINED_FUNCTION_153();
  v25 = sub_249E7ABD8();

  [v21 setParticipants_];

LABEL_5:
  v26 = *(v14 + 856);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_157();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_58();
  v21 = v28 & v27;
  OUTLINED_FUNCTION_198();
  v29 = 0;
  while (v21)
  {
LABEL_11:
    v31 = *(v14 + 880);
    v32 = v20[6];
    v33 = v15[9];
    OUTLINED_FUNCTION_2_5();
    sub_249E2AAB0(v34, v31);
    [*(v31 + *(v16 + 20)) remoteObjectProxy];
    sub_249E7AFF8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
    if (OUTLINED_FUNCTION_7_0())
    {
      [*(v14 + 808) didAddSession_];
      swift_unknownObjectRelease();
    }

    v21 &= v21 - 1;
    v35 = *(v14 + 880);
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C();
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_20:
      sub_249E7AC08();
      goto LABEL_3;
    }

    if (v30 >= v18)
    {
      break;
    }

    v21 = *(v17 + 8 * v30);
    ++v29;
    if (v21)
    {
      v29 = v30;
      goto LABEL_11;
    }
  }

LABEL_16:
  HIDWORD(a10) = *(v14 + 97);
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_72();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

void sub_249E27304(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCClient();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = qword_28130DB88;
  sub_249E2A75C(a1, &v46 - v14, &qword_27EF234B0, &qword_249E7D910);
  v17 = a2;
  v48 = v16;
  v18 = sub_249E7A698();
  v19 = sub_249E7AE08();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = v3;
    v21 = v20;
    v46 = swift_slowAlloc();
    v52[0] = v46;
    *v21 = 136315394;
    sub_249E2A75C(v15, v13, &qword_27EF234B0, &qword_249E7D910);
    v22 = sub_249E7AAC8();
    v24 = v23;
    sub_249E2A8CC(v15, &qword_27EF234B0, &qword_249E7D910);
    v25 = sub_249E3A958(v22, v24, v52);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v26 = sub_249E7B3A8();
    v28 = sub_249E3A958(v26, v27, v52);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_249DEE000, v18, v19, "Conversation Failed. Identifier = %s, Error = %s", v21, 0x16u);
    v29 = v46;
    swift_arrayDestroy();
    MEMORY[0x24C205870](v29, -1, -1);
    v30 = v21;
    v3 = v47;
    MEMORY[0x24C205870](v30, -1, -1);
  }

  else
  {

    sub_249E2A8CC(v15, &qword_27EF234B0, &qword_249E7D910);
  }

  v31 = *(v3 + qword_28130E738);
  v32 = v50;
  if (v31)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = a2;
      v33 = v31;
      v34 = sub_249E3F064();
      swift_unknownObjectRelease();
      v35 = 1 << *(v34 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v34 + 56);
      v38 = (v35 + 63) >> 6;

      v39 = 0;
      if (v37)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v40 >= v38)
        {

          goto LABEL_20;
        }

        v37 = *(v34 + 56 + 8 * v40);
        ++v39;
        if (v37)
        {
          v39 = v40;
          do
          {
LABEL_13:
            sub_249E2AAB0(*(v34 + 48) + *(v49 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v32);
            v41 = [*(v32 + *(v6 + 20)) remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              v42 = v51;
              swift_unknownObjectRetain();
              v43 = sub_249E7A4C8();
              [v42 session:v33 didFailWithError:v43];

              v32 = v50;
              swift_unknownObjectRelease_n();
            }

            v37 &= v37 - 1;
            sub_249E2AA5C();
          }

          while (v37);
        }
      }

      __break(1u);
    }
  }

  else
  {
    v33 = sub_249E7A698();
    v44 = sub_249E7AE08();
    if (os_log_type_enabled(v33, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_249DEE000, v33, v44, "Session is nil", v45, 2u);
      MEMORY[0x24C205870](v45, -1, -1);
    }

LABEL_20:
  }
}

uint64_t sub_249E27858(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Pseudonym();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_249E2AAB0(a1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_249E7A698();
  v12 = sub_249E7AE28();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = sub_249E312EC();
    v23 = v2;
    v16 = v8;
    v17 = a1;
    v19 = v18;
    sub_249E2AA5C();
    v20 = sub_249E3A958(v15, v19, &v24);
    a1 = v17;
    v8 = v16;
    v2 = v23;

    *(v13 + 4) = v20;
    _os_log_impl(&dword_249DEE000, v11, v12, "Setting Device Pseudonym to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C205870](v14, -1, -1);
    MEMORY[0x24C205870](v13, -1, -1);
  }

  else
  {

    sub_249E2AA5C();
  }

  sub_249E2AAB0(a1, v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v21 = qword_28130E750;
  swift_beginAccess();
  sub_249E28EE8(v7, v2 + v21, &qword_27EF236D0, &qword_249E7E010);
  return swift_endAccess();
}

void sub_249E27B08()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v40 = v3;
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = sub_249E7A628();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v41 = *(v16 + 16);
  v42 = v6;
  v41(v20 - v19, v6, v13);
  v22 = sub_249E7A698();
  v23 = sub_249E7AE28();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_70();
    v24 = swift_slowAlloc();
    v38 = v12;
    v25 = v24;
    OUTLINED_FUNCTION_74();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v25 = 136315138;
    OUTLINED_FUNCTION_22_0();
    sub_249E28F84(v26, v27);
    v28 = sub_249E7B2D8();
    v39 = v2;
    (*(v16 + 8))(v21, v13);
    v29 = OUTLINED_FUNCTION_105();
    sub_249E3A958(v29, v30, v31);
    OUTLINED_FUNCTION_305();
    v2 = v39;

    *(v25 + 4) = v28;
    _os_log_impl(&dword_249DEE000, v22, v23, v40, v25, 0xCu);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v12 = v38;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    (*(v16 + 8))(v21, v13);
  }

  v41(v12, v42, v13);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v13);
  v35 = *v2;
  OUTLINED_FUNCTION_252();
  sub_249E28EE8(v12, v4 + v35, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E27DAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_249E27DFC()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_116();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_253();

  return sub_249E1F434(v5, v6, v7, v8, v9);
}

uint64_t sub_249E27E98(unint64_t a1)
{
  v3 = sub_249E51FB4(a1);
  v4 = sub_249E51FB4(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_249E3B424(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_249E27FE8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_249E27F44(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_249E27F90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_249E7B068();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_249E27FE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_249E7B068();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_249E51FB4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_249E2AB74(&qword_27EF23770, &qword_27EF23768, &qword_249E7E160);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23768, &qword_249E7E160);
          v9 = sub_249E51F0C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249E28180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = sub_249E7A628();
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[5] = type metadata accessor for DropInSessionFailureEvent();
  v3[6] = sub_249E28F84(&unk_27EF23700, type metadata accessor for DropInSessionFailureEvent);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3 + 2);
  sub_249E2AAB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x2822009F8](sub_249E282B0, 0, 0);
}

uint64_t sub_249E282B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_277();
  v18 = *(v17 + 120);
  sub_249E29D24(v14, (v15 + 7));
  sub_249E29D24(v14, (v15 + 12));
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_224(v20))
  {
    OUTLINED_FUNCTION_188();
    a9 = OUTLINED_FUNCTION_263();
    *v16 = 136315394;
    v21 = v15[10];
    __swift_project_boxed_opaque_existential_0(v15 + 7, v21);
    OUTLINED_FUNCTION_14_1();
    v22(v21);
    OUTLINED_FUNCTION_304();
    __swift_destroy_boxed_opaque_existential_0(v15 + 7);
    v23 = OUTLINED_FUNCTION_183();
    sub_249E3A958(v23, v24, v25);
    OUTLINED_FUNCTION_102();

    OUTLINED_FUNCTION_232();
    v26 = v15[15];
    v27 = v15[16];
    __swift_project_boxed_opaque_existential_0(v15 + 12, v26);
    OUTLINED_FUNCTION_32_0();
    v29 = *(v28 + 64);
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_301();
    v30();
    v31 = *(*(v27 + 8) + 32);
    OUTLINED_FUNCTION_151();
    sub_249E7AAD8();
    OUTLINED_FUNCTION_304();

    __swift_destroy_boxed_opaque_existential_0(v15 + 12);
    v32 = OUTLINED_FUNCTION_183();
    sub_249E3A958(v32, v33, v34);
    OUTLINED_FUNCTION_102();

    *(v16 + 14) = v26;
    OUTLINED_FUNCTION_196(&dword_249DEE000, v35, v36, "Sending message %s with payload %s");
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v15 + 7);
    __swift_destroy_boxed_opaque_existential_0(v15 + 12);
  }

  v37 = v15[21];
  v39 = v15[17];
  v38 = v15[18];
  sub_249E7A618();
  v40 = swift_task_alloc();
  OUTLINED_FUNCTION_295(v40);
  v41 = *(MEMORY[0x277D858E8] + 4);
  v42 = swift_task_alloc();
  v15[23] = v42;
  *v42 = v15;
  v42[1] = sub_249E28520;
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x282200600](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E28520()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E28620()
{
  OUTLINED_FUNCTION_11();
  (*(v0[20] + 8))(v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E2869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = sub_249E7A628();
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[5] = type metadata accessor for DropInStateEvent();
  v3[6] = sub_249E28F84(&qword_27EF23878, type metadata accessor for DropInStateEvent);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3 + 2);
  sub_249E2AAB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x2822009F8](sub_249E287CC, 0, 0);
}

uint64_t sub_249E287CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_277();
  v18 = *(v17 + 120);
  sub_249E29D24(v14, (v15 + 7));
  sub_249E29D24(v14, (v15 + 12));
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_224(v20))
  {
    OUTLINED_FUNCTION_188();
    a9 = OUTLINED_FUNCTION_263();
    *v16 = 136315394;
    v21 = v15[10];
    __swift_project_boxed_opaque_existential_0(v15 + 7, v21);
    OUTLINED_FUNCTION_14_1();
    v22(v21);
    OUTLINED_FUNCTION_304();
    __swift_destroy_boxed_opaque_existential_0(v15 + 7);
    v23 = OUTLINED_FUNCTION_183();
    sub_249E3A958(v23, v24, v25);
    OUTLINED_FUNCTION_102();

    OUTLINED_FUNCTION_232();
    v26 = v15[15];
    v27 = v15[16];
    __swift_project_boxed_opaque_existential_0(v15 + 12, v26);
    OUTLINED_FUNCTION_32_0();
    v29 = *(v28 + 64);
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_301();
    v30();
    v31 = *(*(v27 + 8) + 32);
    OUTLINED_FUNCTION_151();
    sub_249E7AAD8();
    OUTLINED_FUNCTION_304();

    __swift_destroy_boxed_opaque_existential_0(v15 + 12);
    v32 = OUTLINED_FUNCTION_183();
    sub_249E3A958(v32, v33, v34);
    OUTLINED_FUNCTION_102();

    *(v16 + 14) = v26;
    OUTLINED_FUNCTION_196(&dword_249DEE000, v35, v36, "Sending message %s with payload %s");
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v15 + 7);
    __swift_destroy_boxed_opaque_existential_0(v15 + 12);
  }

  v37 = v15[21];
  v39 = v15[17];
  v38 = v15[18];
  sub_249E7A618();
  v40 = swift_task_alloc();
  OUTLINED_FUNCTION_295(v40);
  v41 = *(MEMORY[0x277D858E8] + 4);
  v42 = swift_task_alloc();
  v15[23] = v42;
  *v42 = v15;
  v42[1] = sub_249E28A3C;
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x282200600](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E28A3C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E28B3C(uint64_t a1)
{
  v18 = type metadata accessor for DropInSessionAnalyticEvent();
  v19 = &off_285D09888;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_249E2AAB0(a1, boxed_opaque_existential_0);
  if (qword_27EF22FE0 != -1)
  {
    swift_once();
  }

  v3 = sub_249E7A6B8();
  __swift_project_value_buffer(v3, qword_27EF23B70);
  sub_249E29D24(v17, v16);
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_249E3A958(0xD00000000000002FLL, 0x8000000249E82550, &v15);
    *(v6 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_249E42508();
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v8 = sub_249E7A9E8();
    v10 = v9;

    __swift_destroy_boxed_opaque_existential_0(v16);
    v11 = sub_249E3A958(v8, v10, &v15);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_249DEE000, v4, v5, "Sending analytic event named: %s with info: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v7, -1, -1);
    MEMORY[0x24C205870](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v12 = sub_249E7AA88();
  __swift_project_boxed_opaque_existential_0(v17, v18);
  sub_249E42508();
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  v13 = sub_249E7A9C8();

  AnalyticsSendEvent();

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_249E28E18()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_37(v1);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  OUTLINED_FUNCTION_116();
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  *v6 = v7;
  v6[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1E02C(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_249E28EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_194(a1, a2, a3, a4);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  return v4;
}

unint64_t sub_249E28F30()
{
  result = qword_27EF236E8;
  if (!qword_27EF236E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF236E8);
  }

  return result;
}

uint64_t sub_249E28F84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_286();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E28FC8()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_283();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_271();

  return sub_249E208D8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_249E2906C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E20C70(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t objectdestroy_28Tm()
{
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v2);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_160();
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v9 = OUTLINED_FUNCTION_68();
  v10(v9);
  v11 = *(v0 + v1);

  v12 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_249E2921C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E217D4(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_249E29304()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1BD24(v3, v4, v5, v6, v7);
}

uint64_t sub_249E29390()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1BD24(v3, v4, v5, v6, v7);
}

uint64_t sub_249E2941C()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1B9A0(v3, v4, v5, v6, v7);
}

uint64_t sub_249E294A8()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1B54C(v3, v4, v5, v6, v7);
}

uint64_t sub_249E29534()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1B384(v3, v4, v5, v6, v7);
}

uint64_t sub_249E295C0()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1AFD8(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_158();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249E29690()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1A994(v3, v4, v5, v6, v7);
}

uint64_t sub_249E29748()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1A564(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_81Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_158();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_249E29818()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_3(v1);
  OUTLINED_FUNCTION_253();

  return sub_249E1A124(v3, v4, v5, v6, v7);
}

uint64_t sub_249E298A4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_239(v5);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_31();

  return sub_249E1EA20(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_249E299A4()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_103();
  v1 = sub_249E7A5B8();
  OUTLINED_FUNCTION_34_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_116();
  v10 = *(v0 + v8 + v9);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_3(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_6_3(v12);
  OUTLINED_FUNCTION_271();

  return sub_249E1FC10(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_249E29A88()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_239(v5);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1C670(v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_81();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

uint64_t sub_249E29BB0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_79();

  return sub_249E1D784(v7, v8, v9, v3);
}

uint64_t sub_249E29C54()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_37(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_3(v8);
  *v9 = v10;
  v9[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1CF00(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_249E29D24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_249E29D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_249E29DEC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_249E29E04()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  OUTLINED_FUNCTION_29_0(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_27_0(v5);
  OUTLINED_FUNCTION_31();

  return sub_249E221AC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t objectdestroy_120Tm()
{
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v2);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_160();
  v7 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v8 = OUTLINED_FUNCTION_68();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + v1));
  v10 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_249E29FA8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  OUTLINED_FUNCTION_29_0(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_27_0(v5);
  OUTLINED_FUNCTION_31();

  return sub_249E23B7C(v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_249E2A094()
{
  result = qword_27EF237B8;
  if (!qword_27EF237B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF237B8);
  }

  return result;
}

uint64_t sub_249E2A0E8()
{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_178();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_34();

  return sub_249E09BD4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E2A1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInSessionAnalyticEvent();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E2A2F8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  OUTLINED_FUNCTION_29_0(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_27_0(v5);
  OUTLINED_FUNCTION_31();

  return sub_249E21FA0(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_249E2A3CC()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  OUTLINED_FUNCTION_29_0(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_27_0(v5);
  OUTLINED_FUNCTION_31();

  return sub_249E23918(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t objectdestroy_128Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_249E7A628();
  if (!OUTLINED_FUNCTION_320(v7))
  {
    (*(*(v0 - 8) + 8))(v1 + ((v4 + 16) & ~v4), v0);
  }

  OUTLINED_FUNCTION_311();

  v8 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_249E2A59C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v4);
  v7 = *(v3 + ((*(v6 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = OUTLINED_FUNCTION_241();

  return a3(v8);
}

uint64_t objectdestroy_133Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_249E2A6B4()
{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_178();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_34();

  return sub_249E093B8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E2A75C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_194(a1, a2, a3, a4);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  return v4;
}

uint64_t sub_249E2A7A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_194(a1, a2, a3, a4);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  return v4;
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E2A8CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_249E2A924(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  return a2;
}

uint64_t sub_249E2A978()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_103();
  v2 = type metadata accessor for DropInStateManager.Context(v1);
  OUTLINED_FUNCTION_34_0(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_116();
  v11 = *(v0 + v9 + v10);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_3(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_6_3(v13);
  OUTLINED_FUNCTION_271();

  return sub_249E16274(v15, v16, v17, v18, v19, v20);
}

uint64_t sub_249E2AA5C()
{
  v1 = OUTLINED_FUNCTION_103();
  v3 = v2(v1);
  OUTLINED_FUNCTION_28_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_249E2AAB0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  return a2;
}

unint64_t sub_249E2AB04()
{
  result = qword_28130D138;
  if (!qword_28130D138)
  {
    sub_249DF691C(255, &unk_28130D128, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D138);
  }

  return result;
}

uint64_t sub_249E2AB74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_286();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E2ABB8()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v0 = OUTLINED_FUNCTION_103();
  v1 = type metadata accessor for DropInStateManager.Context(v0);
  OUTLINED_FUNCTION_37(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  OUTLINED_FUNCTION_116();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_271();

  return sub_249E17440(v7, v8, v9, v10, v11);
}

uint64_t sub_249E2AC80()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_239(v5);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E15008(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_249E2AD60()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_239(v5);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E147F0(v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_226Tm()
{
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_160();
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = OUTLINED_FUNCTION_68();
  v10(v9);

  v11 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_249E2AF00()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  OUTLINED_FUNCTION_16_1(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_239(v5);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1357C(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_249E2AFE0()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_204(v1);

  return sub_249E177F0(v3, v4, v5, v6);
}

uint64_t sub_249E2B074()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_204(v1);

  return sub_249E18AF8(v3, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for DropInManager.DropInManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DropInManager.DropInManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E2B270()
{
  result = qword_27EF238B0;
  if (!qword_27EF238B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF238B0);
  }

  return result;
}

unint64_t sub_249E2B2C4()
{
  result = qword_27EF238B8;
  if (!qword_27EF238B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF238B8);
  }

  return result;
}

void OUTLINED_FUNCTION_16_1(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  result = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_249E2AA5C();
}

uint64_t OUTLINED_FUNCTION_26()
{
  v2 = *(v0 + 40);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_29_0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v1 + ((((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = *(v4 + 8);
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);

  return sub_249E2AAB0(v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[12];
  v4 = v2[9];
  v5 = v2[10];
  result = v2[7];
  v7 = v2[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v16 = *(v12 + 1232);
  *(v12 + 352) = v14;
  *(v12 + 360) = a10;
  *(v12 + 376) = a9;
  *(v12 + 392) = a12;
  *(v12 + 408) = a11;
  *(v12 + 424) = v13;
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[62];
  v10 = v0[61];
  v11 = v0[59];
  v2 = v0[56];
  v12 = v0[53];
  v13 = v0[52];
  v14 = v0[50];
}

void OUTLINED_FUNCTION_53_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  *(v0 + 1256) = v1;
  v6 = *(v0 + 216);
  v7 = *(v0 + 200);
  v3 = *(v0 + 248);
  v8 = *(v0 + 232);
  v4 = *(v0 + 264);
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  *(v0 + 24) = sub_249E13DA8;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_56()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_249E2AA5C();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return sub_249E2AA5C();
}

uint64_t OUTLINED_FUNCTION_63@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_64()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

void *OUTLINED_FUNCTION_73()
{
  v2 = v0[143];
  v0[34] = v0[157];

  return memcpy(v0 + 35, v0 + 45, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_88()
{
  v1 = *(v0 + 1152);
  v3 = *(v0 + 265);
  v2 = *(v0 + 1120);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_92(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_107(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_108@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + ((*(a2 + 80) + 32) & ~*(a2 + 80));
  v3 = *(a2 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_114()
{
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 368);
  *(v1 - 96) = *(v0 + 360);
  v15 = *(v0 + 344);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v12 = *(v0 + 456);
  v8 = *(v0 + 296);
  *(v1 - 88) = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);

  return sub_249E7A618();
}

void OUTLINED_FUNCTION_116()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void OUTLINED_FUNCTION_118(uint64_t a1@<X8>)
{
  v1[12] = sub_249E1937C;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_119()
{
  v2 = v0[147];
  v3 = v0[146];
  v4 = v0[145];
}

BOOL OUTLINED_FUNCTION_120(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 1184);
  v4 = *(v2 + 1136);
  return v2 + 192;
}

void OUTLINED_FUNCTION_125()
{
  v1 = v0[152];
  v2 = *(v0[146] + *(v0[144] + 24));
  v3 = *(v0[148] + v0[149]);
  v4 = v0[138];
  v0[135] = v0[151];
}

BOOL OUTLINED_FUNCTION_127(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_128()
{
  *(v1 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_129()
{
  *(v1 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_130(uint64_t result, uint64_t a2)
{
  v5[6] = result;
  v5[7] = a2;
  v5[9] = v2;
  v5[10] = v6 + 3;
  v5[11] = 0xE300000000000000;
  v5[12] = v3;
  v5[13] = v4;
  v5[15] = v2;
  v5[16] = 112;
  v5[17] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 1176);
  v4 = *(v2 + 1136);
  return v2 + 192;
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_249E2A75C(v0 + 272, v0 + 672, v1, v2);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_249E2A75C(v1 + 272, v1 + 432, v0, v2);
}

void *OUTLINED_FUNCTION_135(float a1)
{
  *v1 = a1;

  return memcpy((v2 + 592), (v2 + 272), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_249E2AA5C();
}

uint64_t OUTLINED_FUNCTION_144(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_146()
{
  v1 = v0[152];
  v2 = v0[150];
  result = *(v0[146] + *(v0[144] + 24));
  v4 = v0[138];
  v0[135] = v0[151];
  return result;
}

void OUTLINED_FUNCTION_147()
{
  v1 = v0[157];
  v2 = v0[156];
  v3 = v0[146];
}

uint64_t OUTLINED_FUNCTION_149()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_152(uint64_t result, uint64_t a2)
{
  v5[6] = result;
  v5[7] = a2;
  v5[9] = v3;
  v5[10] = v7 + 3;
  v5[11] = v6;
  v5[12] = v2;
  v5[13] = v4;
  v5[15] = v3;
  v5[16] = 112;
  v5[17] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_155()
{
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v8 = v0[28];
}

void OUTLINED_FUNCTION_159()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
}

uint64_t OUTLINED_FUNCTION_162()
{
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[122];
  v5 = v0[119];
  v6 = v0[117];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[112];
  v10 = v0[111];
  v11 = v0[110];
}

uint64_t OUTLINED_FUNCTION_170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 96) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_174()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_178()
{
  v1 = v0[3];
  v9 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
}

uint64_t OUTLINED_FUNCTION_179(uint64_t result, uint64_t a2)
{
  v5 = (v2 + *(v4 + 20));
  *v5 = result;
  v5[1] = a2;
  *(v2 + *(v4 + 24)) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1)
{
  *(v2 + 416) = a1;
  *(a1 + 16) = *(v4 - 88);
  sub_249DF0790((v2 + 192), a1 + 24);
  v6 = *(v1 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_181(uint64_t result, uint64_t a2)
{
  v5 = (v2 + *(v4 + 20));
  *v5 = result;
  v5[1] = a2;
  *(v2 + *(v4 + 24)) = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_184(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x74726F70706152;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_186()
{
  sub_249DF0790((v0 + 1016), v0 + 976);
  v2 = *(v0 + 1008);
  __swift_project_boxed_opaque_existential_0((v0 + 976), *(v0 + 1000));
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_188()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_189()
{
}

uint64_t OUTLINED_FUNCTION_190@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t *OUTLINED_FUNCTION_191@<X0>(uint64_t a1@<X8>)
{
  v2[149] = a1;
  v2[150] = *(v1 + a1);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v2[115] = v4;
  v2[116] = *(v5 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v2 + 112);
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_193()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
}

uint64_t OUTLINED_FUNCTION_194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_196(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_197()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];
}

uint64_t OUTLINED_FUNCTION_198()
{
}

void OUTLINED_FUNCTION_200(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_201(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v24 = v22 + v20;
  *v24 = a18;
  *(v24 + 8) = a20 & 1;

  return sub_249E29D24(a17, v21 + 232);
}

uint64_t OUTLINED_FUNCTION_207()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_208()
{

  return memcpy((v0 + 824), v1, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_210(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_211()
{

  return sub_249E7A628();
}

uint64_t OUTLINED_FUNCTION_215(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_249E29D24(v2, &a1[2]);
}

uint64_t OUTLINED_FUNCTION_218(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_219()
{

  return sub_249E4E05C(v0);
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_249E4AC08(v0 + 896, v0 + 936);
}

uint64_t *OUTLINED_FUNCTION_223()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v5 = *(v2 + 3);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  *(v0 + 40) = v5;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 16));
}

BOOL OUTLINED_FUNCTION_224(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 424) = a1;
  *(a1 + 16) = *(v12 - 88);
  sub_249DF0790((v11 + 232), a1 + 24);
  return a1 + a11;
}

void OUTLINED_FUNCTION_227()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[15];
}

id OUTLINED_FUNCTION_233(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v4;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v3;
  *a1 = v4;
  a1[1] = v3;

  return v4;
}

uint64_t OUTLINED_FUNCTION_234()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_238()
{
  result = *(v0 + 80) + 1;
  *(v0 + 80) = result;
  v2 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_240()
{
  v3 = *(v1 + 856);
  v4 = *(v2 + 32);
  return v0;
}

uint64_t *OUTLINED_FUNCTION_251()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = v2[3];
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_252()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_256()
{

  return sub_249E7B068();
}

uint64_t OUTLINED_FUNCTION_257()
{
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[34];
}

uint64_t OUTLINED_FUNCTION_258()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_259()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_260()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);
  **(v0 + 56) = *(v0 + 104);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_261()
{

  return sub_249E7B2D8();
}

uint64_t OUTLINED_FUNCTION_262(float a1)
{
  *v1 = a1;

  return sub_249E7ACC8();
}

uint64_t OUTLINED_FUNCTION_263()
{

  return swift_slowAlloc();
}

uint64_t *OUTLINED_FUNCTION_264()
{
  v1[115] = v0;
  v1[116] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v1 + 112);
}

uint64_t OUTLINED_FUNCTION_265()
{
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
}

uint64_t OUTLINED_FUNCTION_266()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_267()
{

  return sub_249E2A8CC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_268(uint64_t a1)
{

  return sub_249E2A7A4(v2, a1 + v1, v4, v3);
}

uint64_t OUTLINED_FUNCTION_269(uint64_t a1)
{
  *(v1 + 432) = a1;
  v6 = *(v4 - 96);

  return sub_249E2A8CC(v6, v3, v2);
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return sub_249E2A75C(v21, a20, a3, v20);
}

BOOL OUTLINED_FUNCTION_272()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_273(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

BOOL OUTLINED_FUNCTION_274()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_276()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[41];
}

uint64_t OUTLINED_FUNCTION_278(uint64_t result)
{
  *(result + 64) = 5456969;
  *(result + 72) = 0xE300000000000000;
  return result;
}

void OUTLINED_FUNCTION_283()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

id OUTLINED_FUNCTION_287()
{
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_0(v3, *(v1 + 24));
  *(v0 + 1096) = v2;
  v5 = *(v4 + 8);

  return v2;
}

uint64_t OUTLINED_FUNCTION_290()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 1056));

  return __swift_destroy_boxed_opaque_existential_0((v0 + 976));
}

void OUTLINED_FUNCTION_291()
{
  v1 = v0[153];
  v2 = v0[150];
  v3 = v0[147];
  v4 = v0[146];
}

void *OUTLINED_FUNCTION_295(void *result)
{
  *(v3 + 176) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  result[5] = v5;
  return result;
}

id OUTLINED_FUNCTION_310()
{
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_0(v3, *(v0 + 24));
  *(v1 + 1096) = v2;
  v5 = *(v4 + 8);

  return v2;
}

void OUTLINED_FUNCTION_312()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
}

uint64_t OUTLINED_FUNCTION_314(uint64_t result)
{
  *(v1 + 1208) = result;
  *(v1 + 960) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_319()
{
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);

  return sub_249E3F064();
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_321()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_322()
{
  v2 = v0[156];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[145];
}

uint64_t OUTLINED_FUNCTION_323(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_324(uint64_t a1)
{
  *(v1 + 1224) = a1;
  v3 = *(v1 + 1112);
}

uint64_t OUTLINED_FUNCTION_325(uint64_t a1)
{

  return sub_249E4E50C(a1);
}

uint64_t OUTLINED_FUNCTION_326()
{

  return sub_249E51FD8(0, (v0 & 0xC000000000000001) == 0, v0);
}

id OUTLINED_FUNCTION_328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_329()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_249E2A75C(v4 + 272, v4 + 512, a3, a4);
}

uint64_t OUTLINED_FUNCTION_331()
{

  return sub_249E55A40(v1, v0);
}

uint64_t OUTLINED_FUNCTION_332(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_249E3A958(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_333()
{

  return sub_249E7AAC8();
}

uint64_t OUTLINED_FUNCTION_334()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_337()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_338()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_339(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_249E2D0E8()
{
  OUTLINED_FUNCTION_11();
  v0[2] = v1;
  v2 = sub_249E7A5B8();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E2D1A4, 0, 0);
}

uint64_t sub_249E2D1A4()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_249E7A598();
  v3 = sub_249E7A548();
  v4 = v0[5];
  if (v3)
  {
    v5 = v0[2];
    v6 = v0[5];
    sub_249E7A518();
    v8 = v7;
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_249E2D2C0;

    return sub_249E2D4A8(v8);
  }

  else
  {
    (*(v0[4] + 8))(v0[5], v0[3]);

    OUTLINED_FUNCTION_31_0();

    return v11();
  }
}

uint64_t sub_249E2D2C0()
{
  OUTLINED_FUNCTION_11();
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_249E2D438;
  }

  else
  {
    v3 = sub_249E2D3D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249E2D3D0()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_2_6();
  v1(v0);

  OUTLINED_FUNCTION_31_0();

  return v2();
}

uint64_t sub_249E2D438()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_2_6();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_249E2D4C8()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 16);
  if (v2 > 0.0)
  {
    v3 = v2 * 1000000000.0;
    if (*&v3 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v3 > -1.0)
    {
      if (v3 < 1.84467441e19)
      {
        v4 = v3;
        v5 = *(MEMORY[0x277D857E8] + 4);
        v6 = swift_task_alloc();
        *(v0 + 24) = v6;
        *v6 = v0;
        v6[1] = sub_249E2D5D8;
        v1 = v4;

        return MEMORY[0x282200480](v1);
      }

LABEL_13:
      __break(1u);
      return MEMORY[0x282200480](v1);
    }

    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_31_0();

  return v7();
}

uint64_t sub_249E2D5D8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t OUTLINED_FUNCTION_2_6()
{
  v1 = v0[3];
  v2 = *(v0[4] + 8);
  return v0[5];
}

uint64_t sub_249E2D6DC()
{
  v1 = [v0 type];
  if (!v1)
  {
LABEL_12:
    v3 = [v0 value];
    if (!v3)
    {
      sub_249E7AAA8();
      v3 = sub_249E7AA88();
    }

    v2 = IDSCopyBestGuessIDForID();

    if (!v2)
    {
      __break(1u);
      return 0;
    }

    return v2;
  }

  if (v1 == 1)
  {
LABEL_8:
    v0 = [v0 value];
    if (!v0)
    {
      sub_249E7AAA8();
      v0 = sub_249E7AA88();
    }

    v2 = IDSCopyIDForPhoneNumber();

    if (v2)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v1 != 2)
  {
    return 0;
  }

  v0 = [v0 value];
  if (!v0)
  {
    sub_249E7AAA8();
    v0 = sub_249E7AA88();
  }

  v2 = MEMORY[0x24C2050C0](v0);

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v2;
}

uint64_t sub_249E2D838()
{
  v1 = [v0 provider];
  v2 = [v1 identifier];

  v3 = sub_249E7AAA8();
  v5 = v4;

  if (v3 == sub_249E7A8A8() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_249E7B318();
  }

  return v8 & 1;
}

void sub_249E2D8F4(uint64_t a1, uint64_t a2)
{
  sub_249E2DBE0();
  v5 = v4;
  v6 = sub_249E51FB4(v4);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      goto LABEL_16;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C204D50](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 initiator];
    v11 = [v10 value];

    v12 = sub_249E7AAA8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {

LABEL_16:

      return;
    }

    v16 = sub_249E7B318();

    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_249E2DA64(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_249E7E650[a1];
  }

  if (qword_27EF22F98 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v3 = sub_249E7A6B8();
  __swift_project_value_buffer(v3, qword_27EF29170);
  v4 = sub_249E7A698();
  v5 = sub_249E7AE08();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_4();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_249DEE000, v4, v5, "Unsupported TUConversation State %ld", v6, 0xCu);
    OUTLINED_FUNCTION_1();
  }

  return 2;
}

uint64_t sub_249E2DB48()
{
  v1 = [v0 value];
  sub_249E7AAA8();

  sub_249E7AAE8();

  LOBYTE(v1) = sub_249E7AB68();

  return v1 & 1;
}

void sub_249E2DBE0()
{
  v1 = [v0 activeConversations];
  sub_249DF691C(0, &qword_27EF238C0, 0x277D6EE60);
  sub_249E2E860(&qword_27EF238C8, &qword_27EF238C0, 0x277D6EE60);
  v2 = sub_249E7AD58();

  v19 = MEMORY[0x277D84F90];
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_249E7B058();
    sub_249E7AD88();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v8 = *(v2 + 56);
    OUTLINED_FUNCTION_2_7();
    v6 = v9 & v10;
  }

  v11 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v5;
    v13 = v6;
    v14 = v5;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_249E08728();
      return;
    }

    while (1)
    {
      if (sub_249E2D838())
      {
        sub_249E7B1A8();
        v17 = *(v19 + 16);
        sub_249E7B1D8();
        sub_249E7B1E8();
        sub_249E7B1B8();
      }

      else
      {
      }

      v5 = v14;
      v6 = v15;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_249E7B088())
      {
        swift_dynamicCast();
        v16 = v18;
        v14 = v5;
        v15 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_249E2DE24(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 remoteMembers];
  sub_249DF691C(0, &qword_27EF238D0, 0x277D6EEA0);
  sub_249E2E860(&qword_27EF238D8, &qword_27EF238D0, 0x277D6EEA0);
  v5 = sub_249E7AD58();

  if (qword_27EF22F98 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    OUTLINED_FUNCTION_0_7();
LABEL_2:
    v6 = sub_249E7A6B8();
    __swift_project_value_buffer(v6, qword_27EF29170);

    v7 = sub_249E7A698();
    v8 = sub_249E7AE28();
    v9 = v5 & 0xC000000000000001;
    if (os_log_type_enabled(v7, v8))
    {
      v10 = OUTLINED_FUNCTION_4();
      *v10 = 134349056;
      v11 = v9 ? sub_249E7B068() : *(v5 + 16);
      *(v10 + 4) = v11;

      _os_log_impl(&dword_249DEE000, v7, v8, "Kicking remote members %{public}ld", v10, 0xCu);
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    if (v9)
    {
      swift_unknownObjectRetain();
      sub_249E7B058();
      sub_249E7AD88();
      v5 = v37;
      v12 = v38;
      v13 = v39;
      v9 = v40;
      v14 = v41;
    }

    else
    {
      v12 = v5 + 56;
      v15 = *(v5 + 56);
      v13 = ~(-1 << *(v5 + 32));
      OUTLINED_FUNCTION_2_7();
      v14 = v16 & v17;
    }

    v18 = (v13 + 64) >> 6;
    v33 = v12;
    v34 = v5;
    if (v5 < 0)
    {
      break;
    }

LABEL_12:
    v19 = v9;
    v20 = v14;
    v21 = v9;
    if (v14)
    {
LABEL_16:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v5 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (v23)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_24;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (sub_249E7B088())
  {
    swift_dynamicCast();
    v23 = v36;
    v21 = v9;
    v22 = v14;
    if (!v36)
    {
      break;
    }

LABEL_20:
    v35 = v22;
    v24 = v23;
    v25 = sub_249E7A698();
    v26 = sub_249E7AE28();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_4();
      v28 = v3;
      v29 = v2;
      v30 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v30 = v23;
      v31 = v24;
      _os_log_impl(&dword_249DEE000, v25, v26, "Kicking %@", v27, 0xCu);
      sub_249DF4A68(v30);
      v2 = v29;
      v3 = v28;
      v12 = v33;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    [v2 kickMember:v24 conversation:v3];
    v9 = v21;
    v14 = v35;
    v5 = v34;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_24:
  sub_249E08728();
}