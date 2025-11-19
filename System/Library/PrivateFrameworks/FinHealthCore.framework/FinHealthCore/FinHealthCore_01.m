uint64_t sub_226E25F08(uint64_t a1)
{
  v2 = sub_226E62EA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC71F8])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x277CC7200] || v7 == *MEMORY[0x277CC7210])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277CC7208])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CC7218])
  {
    return 6;
  }

  (*(v3 + 8))(v6, v2);
  return -1;
}

uint64_t sub_226E26088(uint64_t a1)
{
  v2 = sub_226E62E90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  result = 0;
  if (v7 != *MEMORY[0x277CC71F0])
  {
    if (v7 == *MEMORY[0x277CC71E8])
    {
      return 1;
    }

    else if (v7 == *MEMORY[0x277CC71E0])
    {
      return 2;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_226E261DC(uint64_t a1, void *a2)
{
  v4 = sub_226E63320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226E62D30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = v12;
  v30[4] = MEMORY[0x277CC6C70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(v10 + 16))(boxed_opaque_existential_1, a1, v9);
  sub_226E63300();
  if (v16)
  {
    v17 = sub_226E639B0();

    [a2 setDisplayName_];
  }

  sub_226E632D0();
  if (v18)
  {
    v19 = sub_226E639B0();

    [a2 setMerchantDetailedCategory_];
  }

  sub_226E2703C(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69A8, &qword_226E68878);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v14, v9);
    [a2 setMapsMerchantID_];
    strcpy(v29, "mapsMerchant-");
    HIWORD(v29[3]) = -4864;
    v28 = sub_226E632F0();
    v20 = sub_226E63FE0();
    MEMORY[0x22AA8D010](v20);

    v21 = sub_226E639B0();

    [a2 setMerchantUniqueIdentifier_];

    v22 = sub_226E632E0();
    if ((v22 & 0x100000000) == 0)
    {
      [a2 setMapsMerchantResultProviderID_];
    }
  }

  else
  {
    sub_226E2703C(v30, v29);
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      [a2 setMapsMerchantBrandID_];
      strcpy(v29, "mapsBrand-");
      HIBYTE(v29[2]) = 0;
      v29[3] = -369098752;
      v28 = sub_226E632F0();
      v23 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v23);

      v24 = sub_226E639B0();

      [a2 setMerchantUniqueIdentifier_];

      v25 = sub_226E632E0();
      if ((v25 & 0x100000000) == 0)
      {
        [a2 setMapsMerchantBrandResultProviderID_];
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t sub_226E2662C(uint64_t a1, void *a2)
{
  v4 = sub_226E63320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226E62D30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = v4;
  v29[4] = MEMORY[0x277CC85C0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(v5 + 16))(boxed_opaque_existential_1, a1, v4);
  sub_226E63300();
  if (v15)
  {
    v16 = sub_226E639B0();

    [a2 setDisplayName_];
  }

  sub_226E632D0();
  if (v17)
  {
    v18 = sub_226E639B0();

    [a2 setMerchantDetailedCategory_];
  }

  sub_226E2703C(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69A8, &qword_226E68878);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v13, v9);
    [a2 setMapsMerchantID_];
    strcpy(v28, "mapsMerchant-");
    HIWORD(v28[3]) = -4864;
    v27 = sub_226E632F0();
    v19 = sub_226E63FE0();
    MEMORY[0x22AA8D010](v19);

    v20 = sub_226E639B0();

    [a2 setMerchantUniqueIdentifier_];

    v21 = sub_226E632E0();
    if ((v21 & 0x100000000) == 0)
    {
      [a2 setMapsMerchantResultProviderID_];
    }
  }

  else
  {
    sub_226E2703C(v29, v28);
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      [a2 setMapsMerchantBrandID_];
      strcpy(v28, "mapsBrand-");
      HIBYTE(v28[2]) = 0;
      v28[3] = -369098752;
      v27 = sub_226E632F0();
      v22 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v22);

      v23 = sub_226E639B0();

      [a2 setMerchantUniqueIdentifier_];

      v24 = sub_226E632E0();
      if ((v24 & 0x100000000) == 0)
      {
        [a2 setMapsMerchantBrandResultProviderID_];
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_226E26A7C(uint64_t a1)
{
  v2 = sub_226E62E70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC7028])
  {
    return 16;
  }

  if (v7 != *MEMORY[0x277CC6FC0])
  {
    if (v7 != *MEMORY[0x277CC6FF8])
    {
      if (v7 == *MEMORY[0x277CC6FD0])
      {
        return 10;
      }

      if (v7 == *MEMORY[0x277CC7010])
      {
        return 22;
      }

      if (v7 == *MEMORY[0x277CC7020] || v7 == *MEMORY[0x277CC6FE8])
      {
        return 6;
      }

      if (v7 == *MEMORY[0x277CC7030])
      {
        return 17;
      }

      if (v7 == *MEMORY[0x277CC7000])
      {
        return 4;
      }

      if (v7 == *MEMORY[0x277CC7038])
      {
        return 11;
      }

      if (v7 == *MEMORY[0x277CC6FE0])
      {
        return 0;
      }

      if (v7 == *MEMORY[0x277CC7040])
      {
        return 21;
      }

      if (v7 == *MEMORY[0x277CC6FC8])
      {
        return 5;
      }

      if (v7 == *MEMORY[0x277CC6FF0])
      {
        return 19;
      }

      if (v7 == *MEMORY[0x277CC6FD8])
      {
        return 20;
      }

      if (v7 == *MEMORY[0x277CC7008])
      {
        return 18;
      }

      if (v7 == *MEMORY[0x277CC7018])
      {
        return 1;
      }

      (*(v3 + 8))(v6, v2);
    }

    return 16;
  }

  return 7;
}

unint64_t sub_226E26D3C()
{
  result = qword_27D7B69A0;
  if (!qword_27D7B69A0)
  {
    sub_226E62FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B69A0);
  }

  return result;
}

uint64_t sub_226E26D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_226E26DFC(uint64_t a1)
{
  v2 = sub_226E62CE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != *MEMORY[0x277CC6C48])
  {
    if (v7 == *MEMORY[0x277CC6C28])
    {
      return 1;
    }

    else if (v7 == *MEMORY[0x277CC6C58])
    {
      return 2;
    }

    else if (v7 == *MEMORY[0x277CC6C40])
    {
      return 3;
    }

    else if (v7 == *MEMORY[0x277CC6C50])
    {
      return 4;
    }

    else if (v7 == *MEMORY[0x277CC6C30])
    {
      return 5;
    }

    else if (v7 == *MEMORY[0x277CC6C38])
    {
      return 6;
    }

    else if (v7 == *MEMORY[0x277CC6C60])
    {
      return 7;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return v8;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_226E2703C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_226E270A0()
{
  type metadata accessor for TransactionBiomeStreamDonator();
  sub_226E48FC8(v1);
  return sub_226E48FE0(v1);
}

uint64_t sub_226E270E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[28] = a7;
  v8[29] = v7;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[22] = a1;
  v8[23] = a2;
  v9 = sub_226E635C0();
  v8[30] = v9;
  v10 = *(v9 - 8);
  v8[31] = v10;
  v11 = *(v10 + 64) + 15;
  v8[32] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69B0, &qword_226E68898);
  v8[33] = v12;
  v13 = *(v12 - 8);
  v8[34] = v13;
  v14 = *(v13 + 64) + 15;
  v8[35] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69B8, &unk_226E688A0) - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90) - 8) + 64) + 15;
  v8[37] = swift_task_alloc();
  v17 = sub_226E632C0();
  v8[38] = v17;
  v18 = *(v17 - 8);
  v8[39] = v18;
  v19 = *(v18 + 64) + 15;
  v8[40] = swift_task_alloc();
  v20 = sub_226E63870();
  v8[41] = v20;
  v21 = *(v20 - 8);
  v8[42] = v21;
  v22 = *(v21 + 64) + 15;
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v23 = sub_226E62B30();
  v8[45] = v23;
  v24 = *(v23 - 8);
  v8[46] = v24;
  v25 = *(v24 + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C0, &qword_226E688B0) - 8) + 64) + 15;
  v8[49] = swift_task_alloc();
  v27 = sub_226E630A0();
  v8[50] = v27;
  v28 = *(v27 - 8);
  v8[51] = v28;
  v29 = *(v28 + 64) + 15;
  v8[52] = swift_task_alloc();
  v30 = sub_226E630F0();
  v8[53] = v30;
  v31 = *(v30 - 8);
  v8[54] = v31;
  v32 = *(v31 + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C8, &qword_226E688B8) - 8) + 64) + 15;
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0) - 8) + 64) + 15;
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v35 = sub_226E638E0();
  v8[67] = v35;
  v36 = *(v35 - 8);
  v8[68] = v36;
  v37 = *(v36 + 64) + 15;
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v38 = sub_226E63830();
  v8[80] = v38;
  v39 = *(v38 - 8);
  v8[81] = v39;
  v40 = *(v39 + 64) + 15;
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v41 = sub_226E63860();
  v8[88] = v41;
  v42 = *(v41 - 8);
  v8[89] = v42;
  v43 = *(v42 + 64) + 15;
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E27774, 0, 0);
}

uint64_t sub_226E27774()
{
  v1 = v0[94];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = sub_226E572E0();
  v0[95] = v5;
  v6 = *(v2 + 16);
  v0[96] = v6;
  v0[97] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_226E63820();
  v7 = sub_226E63850();
  v8 = sub_226E63CD0();
  if (sub_226E63D70())
  {
    v9 = v0[87];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_226E63810();
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v7, v8, v11, "FinanceKitDateStore:streamTransactions", "", v10, 2u);
    MEMORY[0x22AA8E1B0](v10, -1, -1);
  }

  v12 = v0[94];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[29];

  (*(v17 + 16))(v16, v15, v18);
  v20 = sub_226E638A0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[98] = sub_226E63890();
  v23 = *(v17 + 8);
  v0[99] = v23;
  v0[100] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v15, v18);
  v24 = *(v13 + 8);
  v0[101] = v24;
  v0[102] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v12, v14);
  v25 = sub_226E62C40();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_226E62C30();
  v0[103] = v28;
  v29 = *((*MEMORY[0x277D85000] & *v19) + 0x78);
  v34 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  v0[104] = v31;
  *v31 = v0;
  v31[1] = sub_226E27A64;
  v32 = v0[29];

  return v34(v28);
}

uint64_t sub_226E27A64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v7 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v5 = sub_226E2CBE4;
  }

  else
  {
    v5 = sub_226E27B7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226E27B7C()
{
  v286 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  (*((*MEMORY[0x277D85000] & **(v0 + 232)) + 0x80))(*(v0 + 840));
  v4 = sub_226E56FC8();
  *(v0 + 856) = v4;
  v5 = *(v2 + 16);
  *(v0 + 864) = v5;
  *(v0 + 872) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v267 = v4;
  v270 = v5;
  (v5)(v1);

  v6 = sub_226E638C0();
  v7 = sub_226E63C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 840);
    v9 = *(v0 + 632);
    v10 = v0;
    v11 = *(v0 + 544);
    v12 = v10[67];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v285[0] = v14;
    *v13 = 136380675;
    sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
    v15 = sub_226E63970();
    v17 = sub_226E1FC98(v15, v16, v285);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_226DD4000, v6, v7, "FinanceKitDataStore : fhAccountsDict = %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x22AA8E1B0](v14, -1, -1);
    MEMORY[0x22AA8E1B0](v13, -1, -1);
  }

  else
  {
    v9 = *(v0 + 632);
    v10 = v0;
    v11 = *(v0 + 544);
    v12 = v10[67];
  }

  v18 = *(v11 + 8);
  v18(v9, v12);
  v264 = v18;
  v10[110] = v18;
  v19 = v10[24];
  v285[0] = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
LABEL_24:
    v20 = sub_226E63DE0();
    v283 = v10;
    if (v20)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v283 = v10;
    if (v20)
    {
LABEL_6:
      v21 = 0;
      v22 = v10[24];
      v275 = v10[105];
      v281 = v19 & 0xC000000000000001;
      v10 = (v19 & 0xFFFFFFFFFFFFFF8);
      v23 = v22 + 32;
      while (1)
      {
        if (v281)
        {
          v24 = MEMORY[0x22AA8D480](v21, v283[24]);
        }

        else
        {
          if (v21 >= v10[2])
          {
            goto LABEL_23;
          }

          v24 = *(v23 + 8 * v21);
        }

        v25 = v24;
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v27 = v283[105];

        v28 = [v25 accountID];
        v29 = sub_226E639C0();
        v31 = v30;

        v19 = v283[105];
        if (*(v275 + 16))
        {
          sub_226E20614(v29, v31);
          v33 = v32;

          if (v33)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }

        if ([v25 sourceType] == 1)
        {
          v19 = v285;
          sub_226E63EC0();
          v34 = *(v285[0] + 16);
          sub_226E63EE0();
          sub_226E63EF0();
          sub_226E63ED0();
          goto LABEL_8;
        }

LABEL_7:

LABEL_8:
        ++v21;
        if (v26 == v20)
        {
          v10 = v283;
          v35 = v285[0];
          if ((v285[0] & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_89;
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_89;
  }

LABEL_26:
  if ((v35 & 0x4000000000000000) != 0)
  {
LABEL_89:
    v36 = sub_226E63DE0();
  }

  else
  {
    v36 = *(v35 + 16);
  }

  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v285[0] = MEMORY[0x277D84F90];
    v38 = sub_226E217DC(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v40 = 0;
    v37 = v285[0];
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x22AA8D480](v40, v35);
      }

      else
      {
        v41 = *(v35 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = [v42 accountID];
      v44 = sub_226E639C0();
      v46 = v45;

      v285[0] = v37;
      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_226E217DC((v47 > 1), v48 + 1, 1);
        v37 = v285[0];
      }

      ++v40;
      *(v37 + 16) = v48 + 1;
      v49 = v37 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
    }

    while (v36 != v40);
    v10 = v283;
  }

  v10[111] = v37;
  v50 = v10[29];
  v270(v10[78], v267, v10[67]);
  v51 = v50;
  v52 = sub_226E638C0();
  v53 = sub_226E63CB0();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v10[29];
  v56 = 0x27D7B6000uLL;
  if (v54)
  {
    v57 = swift_slowAlloc();
    *v57 = 67109120;
    *(v57 + 4) = (*(**&v55[OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator] + 136))() & 1;

    _os_log_impl(&dword_226DD4000, v52, v53, "Biome donation learnFromApp=%{BOOL}d ", v57, 8u);
    MEMORY[0x22AA8E1B0](v57, -1, -1);
  }

  else
  {
  }

  v58 = v283;
  v59 = v283[78];
  v60 = v283[67];
  v283[112] = (v283[68] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v264(v59, v60);
  if (*(v37 + 16))
  {
    v270(v283[77], v267, v283[67]);

    v61 = sub_226E638C0();
    v62 = sub_226E63C90();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v283[77];
    v65 = v283[67];
    if (v63)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v285[0] = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x22AA8D0F0](v37, MEMORY[0x277D837D0]);
      v276 = v64;
      v70 = sub_226E1FC98(v68, v69, v285);
      v56 = 0x27D7B6000;

      *(v66 + 4) = v70;
      _os_log_impl(&dword_226DD4000, v61, v62, "FinanceKitDataStore : deleting biome events for accountIds=%s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x22AA8E1B0](v67, -1, -1);
      MEMORY[0x22AA8E1B0](v66, -1, -1);

      v71 = v276;
    }

    else
    {

      v71 = v64;
    }

    v264(v71, v65);
    v72 = v283[106];
    (*(**(v283[29] + *(v56 + 2512)) + 120))(v37);
    if (v72)
    {
      v73 = v283[105];
      v74 = v283[103];
      v75 = v283[98];

LABEL_77:
      v162 = v58[94];
      v163 = v58[93];
      v164 = v58[92];
      v165 = v58[91];
      v166 = v58[90];
      v167 = v58[87];
      v168 = v58[86];
      v169 = v58[85];
      v170 = v58[84];
      v171 = v58[83];
      v204 = v58[82];
      v206 = v58[79];
      v208 = v58[78];
      v210 = v58[77];
      v212 = v58[76];
      v214 = v58[75];
      v216 = v58[74];
      v218 = v58[73];
      v220 = v58[72];
      v222 = v58[71];
      v224 = v58[70];
      v226 = v58[69];
      v228 = v58[66];
      v230 = v58[65];
      v232 = v58[64];
      v234 = v58[63];
      v236 = v58[62];
      v238 = v58[61];
      v240 = v58[60];
      v242 = v58[59];
      v244 = v58[58];
      v246 = v58[57];
      v248 = v58[56];
      v250 = v58[55];
      v252 = v58[52];
      v254 = v58[49];
      v256 = v58[48];
      v258 = v58[47];
      v263 = v58[44];
      v266 = v58[43];
      v269 = v58[40];
      v272 = v58[37];
      v274 = v58[36];
      v280 = v58[35];
      v284 = v58[32];

      v125 = v58[1];
LABEL_78:

      return v125();
    }

    v270(v283[76], v267, v283[67]);

    v76 = sub_226E638C0();
    v77 = sub_226E63C90();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v283[76];
    v80 = v283[67];
    if (v78)
    {
      v81 = swift_slowAlloc();
      v278 = v79;
      v82 = swift_slowAlloc();
      v285[0] = v82;
      *v81 = 136315138;
      v83 = MEMORY[0x22AA8D0F0](v37, MEMORY[0x277D837D0]);
      v259 = v80;
      v85 = sub_226E1FC98(v83, v84, v285);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_226DD4000, v76, v77, "FinanceKitDataStore : deletion of biome events complete for accountIds=%s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x22AA8E1B0](v82, -1, -1);
      MEMORY[0x22AA8E1B0](v81, -1, -1);

      v264(v278, v259);
    }

    else
    {

      v264(v79, v80);
    }

    v277 = 0;
  }

  else
  {
    v277 = v283[106];
  }

  v86 = v283[105];
  v87 = *(v86 + 16);
  if (!v87)
  {
    v88 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v88 = sub_226E33090(*(v86 + 16), 0);
  v260 = sub_226E33840(v285, v88 + 4, v87, v86);

  v38 = sub_226E33994();
  if (v260 != v87)
  {
LABEL_91:
    __break(1u);
    return MEMORY[0x282116DF0](v38, v39);
  }

LABEL_56:
  v89 = v283[28];
  LOBYTE(v89) = (v283[27])(v88, v35);

  if ((v89 & 1) == 0)
  {
    v104 = v283[105];
    v105 = v283[75];
    v106 = v283[67];

    v270(v105, v267, v106);
    v107 = sub_226E638C0();
    v108 = sub_226E63CA0();
    v109 = os_log_type_enabled(v107, v108);
    v110 = v283[103];
    v111 = v283[98];
    v112 = v283[75];
    v113 = v283[67];
    if (v109)
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_226DD4000, v107, v108, "FinanceKitDataStore : failed to delete accounts", v114, 2u);
      MEMORY[0x22AA8E1B0](v114, -1, -1);
    }

    v264(v112, v113);
    v115 = v283[94];
    v116 = v283[93];
    v117 = v283[92];
    v118 = v283[91];
    v119 = v283[90];
    v120 = v283[87];
    v121 = v283[86];
    v122 = v283[85];
    v123 = v283[84];
    v124 = v283[83];
    v203 = v283[82];
    v205 = v283[79];
    v207 = v283[78];
    v209 = v283[77];
    v211 = v283[76];
    v213 = v283[75];
    v215 = v283[74];
    v217 = v283[73];
    v219 = v283[72];
    v221 = v283[71];
    v223 = v283[70];
    v225 = v283[69];
    v227 = v283[66];
    v229 = v283[65];
    v231 = v283[64];
    v233 = v283[63];
    v235 = v283[62];
    v237 = v283[61];
    v239 = v283[60];
    v241 = v283[59];
    v243 = v283[58];
    v245 = v283[57];
    v247 = v283[56];
    v249 = v283[55];
    v251 = v283[52];
    v253 = v283[49];
    v255 = v283[48];
    v257 = v283[47];
    v262 = v283[44];
    v265 = v283[43];
    v268 = v283[40];
    v271 = v283[37];
    v273 = v283[36];
    v279 = v283[35];
    v282 = v283[32];

    v125 = v283[1];
    goto LABEL_78;
  }

  v90 = v283[23];
  v270(v283[74], v267, v283[67]);

  v91 = sub_226E638C0();
  v92 = sub_226E63C90();

  v93 = os_log_type_enabled(v91, v92);
  v94 = v283[74];
  v95 = v283[67];
  if (v93)
  {
    v96 = v283[23];
    v97 = v283[22];
    v98 = swift_slowAlloc();
    v261 = v94;
    v99 = swift_slowAlloc();
    v285[0] = v99;
    *v98 = 136315138;
    v100 = v96 == 0;
    v58 = v283;
    if (v100)
    {
      v97 = 7104878;
      v101 = 0xE300000000000000;
    }

    else
    {
      v101 = v90;
    }

    v102 = sub_226E1FC98(v97, v101, v285);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_226DD4000, v91, v92, "FinanceKitDataStore : fetching transactions since token = %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x22AA8E1B0](v99, -1, -1);
    MEMORY[0x22AA8E1B0](v98, -1, -1);

    v103 = v261;
  }

  else
  {

    v103 = v94;
  }

  v126 = (v264)(v103, v95);
  v127 = v58[73];
  v128 = v58[67];
  v129 = v58[66];
  v130 = v58[65];
  v131 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v58[29]) + 0x88))(v126);
  v270(v127, v267, v128);
  sub_226E1A598(v129, v130, &qword_27D7B6858, &qword_226E688C0);
  v132 = sub_226E638C0();
  v133 = sub_226E63C90();
  v134 = os_log_type_enabled(v132, v133);
  v135 = v58[65];
  if (v134)
  {
    v136 = v58[64];
    v137 = swift_slowAlloc();
    *v137 = 134217984;
    sub_226E1A598(v135, v136, &qword_27D7B6858, &qword_226E688C0);
    v138 = sub_226E63590();
    v139 = v58;
    v140 = *(v138 - 8);
    v141 = (*(v140 + 48))(v136, 1, v138);
    v142 = v139[65];
    v143 = v139[64];
    if (v141 == 1)
    {
      sub_226E15E98(v142, &qword_27D7B6858, &qword_226E688C0);
      sub_226E15E98(v143, &qword_27D7B6858, &qword_226E688C0);
      v144 = 0;
    }

    else
    {
      sub_226E63550();
      v144 = v145;
      sub_226E15E98(v142, &qword_27D7B6858, &qword_226E688C0);
      (*(v140 + 8))(v143, v138);
    }

    *(v137 + 4) = v144;
    _os_log_impl(&dword_226DD4000, v132, v133, "FinanceKitDataStore : earliestDonationDate for biome events =%f", v137, 0xCu);
    MEMORY[0x22AA8E1B0](v137, -1, -1);

    v58 = v283;
    v131 = MEMORY[0x277D85000];
  }

  else
  {

    sub_226E15E98(v135, &qword_27D7B6858, &qword_226E688C0);
  }

  v146 = v58[63];
  v147 = v58[29];
  v149 = v58[22];
  v148 = v58[23];
  v264(v58[73], v58[67]);
  (*((*v131 & *v147) + 0x70))(v149, v148);
  if (v277)
  {
    v150 = v58[105];
    v151 = v58[103];
    v152 = v58[98];
    sub_226E15E98(v58[66], &qword_27D7B6858, &qword_226E688C0);

    goto LABEL_77;
  }

  v154 = v58[62];
  v153 = v58[63];
  v155 = v58;
  v156 = v58[46];
  v157 = v155[45];
  sub_226E1A598(v153, v154, &qword_27D7B69C8, &qword_226E688B8);
  v158 = *(v156 + 48);
  v155[113] = v158;
  v155[114] = (v156 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v157) = v158(v154, 1, v157);
  v159 = sub_226E15E98(v154, &qword_27D7B69C8, &qword_226E688B8);
  if (v157 == 1)
  {
    (*(**(v155[29] + OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator) + 128))(v159);
    v270(v155[72], v267, v155[67]);
    v173 = sub_226E638C0();
    v174 = sub_226E63C90();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_226DD4000, v173, v174, "FinanceKitDataStore : deleted all biome events because we are fetching all transactions", v175, 2u);
      MEMORY[0x22AA8E1B0](v175, -1, -1);
    }

    v176 = v155[72];
    v177 = v155[67];
    v178 = v155[61];
    v179 = v155;
    v180 = v155[46];
    v181 = v155[45];

    v264(v176, v177);
    v182 = *(v180 + 56);
    v155[115] = v182;
    v155[116] = (v180 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v182(v178, 1, 1, v181);
    v155[117] = 0;
    *(v155 + 1072) = 0;
    v184 = v155[51];
    v183 = v155[52];
    v186 = v155[49];
    v185 = v155[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69D8, &qword_226E688C8);
    v187 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69E0, &qword_226E688D0) - 8);
    v188 = *(v187 + 72);
    v189 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    *(swift_allocObject() + 16) = xmmword_226E685F0;
    swift_getKeyPath();
    sub_226E34C7C(&qword_27D7B69E8, MEMORY[0x277CC95F0]);
    sub_226E63430();
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69F0, &qword_226E68908);
    (*(*(v190 - 8) + 56))(v186, 1, 1, v190);
    sub_226E63090();
    v191 = MEMORY[0x277CC7C08];
    v179[5] = v185;
    v179[6] = v191;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v179 + 2);
    (*(v184 + 16))(boxed_opaque_existential_1, v183, v185);
    v193 = *(MEMORY[0x277CC6710] + 4);
    v194 = swift_task_alloc();
    v179[118] = v194;
    *v194 = v179;
    v194[1] = sub_226E294CC;
    v195 = v179[103];
    v38 = v179[55];
    v39 = v179 + 2;

    return MEMORY[0x282116DF0](v38, v39);
  }

  v160 = v155[103];
  v161 = v155[63];
  (*(v155[31] + 56))(v155[37], 1, 1, v155[30]);
  sub_226E62B60();
  v196 = v155[40];
  sub_226E15E98(v155[37], &qword_27D7B6940, &qword_226E68A90);
  sub_226E632B0();

  v197 = sub_226E34C7C(&qword_280CEA238, MEMORY[0x277CC8098]);
  v198 = *(MEMORY[0x277D856D0] + 4);
  v199 = swift_task_alloc();
  v155[126] = v199;
  *v199 = v155;
  v199[1] = sub_226E2B41C;
  v200 = v155[40];
  v201 = v155[38];
  v202 = v155[36];

  return MEMORY[0x282200308](v202, v201, v197);
}

uint64_t sub_226E294CC()
{
  v2 = *v1;
  v3 = (*v1)[118];
  v8 = *v1;
  (*v1)[119] = v0;

  if (v0)
  {
    v4 = v2[111];
    v5 = v2[105];

    v6 = sub_226E2CEBC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v6 = sub_226E295FC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E295FC()
{
  if (*(v0 + 1072) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));
  }

  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 360);
  (*(*(v0 + 432) + 32))(*(v0 + 448), *(v0 + 440), *(v0 + 424));
  sub_226E1A598(v4, v3, &qword_27D7B69C8, &qword_226E688B8);
  LODWORD(v4) = v2(v3, 1, v5);
  sub_226E15E98(v3, &qword_27D7B69C8, &qword_226E688B8);
  if (v4 == 1)
  {
    v6 = *(v0 + 488);
    v7 = *(v0 + 472);
    v8 = *(v0 + 448);
    sub_226E630E0();
    sub_226E15E98(v6, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E26D94(v7, v6, &qword_27D7B69C8, &qword_226E688B8);
  }

  v9 = *(v0 + 448);
  v10 = sub_226E630D0();
  *(v0 + 960) = v10;
  v11 = swift_task_alloc();
  *(v0 + 968) = v11;
  *v11 = v0;
  v11[1] = sub_226E297B8;
  v12 = *(v0 + 888);
  v13 = *(v0 + 840);
  v14 = *(v0 + 824);
  v15 = *(v0 + 528);
  v16 = *(v0 + 232);
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];

  return sub_226E2E68C(v10, v17, v18, v14, v13, v12, v15);
}

uint64_t sub_226E297B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 968);
  v6 = *v2;
  v4[122] = a1;
  v4[123] = v1;

  v7 = v3[120];
  if (v1)
  {
    v8 = v4[111];
    v9 = v4[105];

    v10 = sub_226E2D234;
  }

  else
  {

    v10 = sub_226E29914;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226E29914()
{
  v155 = v0;
  v1 = *(v0 + 936);
  v2 = *(v0 + 448);
  v3 = *(sub_226E630D0() + 16);

  v142 = v1 + v3;
  if (__OFADD__(v1, v3))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 72) = 0;
    v4 = *(v0 + 976);
    *(v0 + 80) = 0xE000000000000000;
    sub_226E63E70();
    v5 = *(v0 + 80);

    *(v0 + 56) = 0x3D73747265736E69;
    *(v0 + 64) = 0xE800000000000000;
    if (!(v4 >> 62))
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  if (*(v0 + 976) < 0)
  {
    v106 = *(v0 + 976);
  }

  v6 = sub_226E63DE0();
LABEL_4:
  v7 = *(v0 + 448);
  *(v0 + 120) = v6;
  v8 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v8);

  MEMORY[0x22AA8D010](0x6F686563616C7020, 0xED00003D7265646CLL);
  v9 = *(sub_226E630D0() + 16);

  v12 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
    __break(1u);
    return MEMORY[0x282116DF0](v10, v11);
  }

  v13 = *(v0 + 872);
  v14 = *(v0 + 864);
  v15 = *(v0 + 856);
  v16 = *(v0 + 568);
  v17 = *(v0 + 536);
  *(v0 + 128) = v12;
  v18 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v18);

  v20 = *(v0 + 56);
  v19 = *(v0 + 64);
  v14(v16, v15, v17);

  v21 = sub_226E638C0();
  v22 = sub_226E63CB0();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 896);
  v25 = *(v0 + 880);
  v26 = *(v0 + 568);
  v27 = *(v0 + 536);
  v140 = v20;
  if (v23)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v154[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_226E1FC98(v20, v19, v154);
    _os_log_impl(&dword_226DD4000, v21, v22, "FinanceKitDataStore : batch transactions %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x22AA8E1B0](v29, -1, -1);
    MEMORY[0x22AA8E1B0](v28, -1, -1);

    v25(v26, v27);
  }

  else
  {

    v25(v26, v27);
  }

  v30 = *(v0 + 776);
  v31 = *(v0 + 768);
  v32 = *(v0 + 760);
  v33 = *(v0 + 744);
  v34 = *(v0 + 704);
  v35 = *(v0 + 680);
  v36 = *(v0 + 208);
  (*(v0 + 200))(*(v0 + 976), MEMORY[0x277D84F90], 0, 0);

  v31(v33, v32, v34);

  sub_226E63820();
  v37 = sub_226E63850();
  v138 = sub_226E63CE0();

  v38 = sub_226E63D70();
  v39 = *(v0 + 816);
  v40 = *(v0 + 808);
  v41 = *(v0 + 792);
  v144 = *(v0 + 800);
  v147 = *(v0 + 704);
  v42 = *(v0 + 680);
  v43 = *(v0 + 640);
  v45 = *(v0 + 408);
  v44 = *(v0 + 416);
  v150 = *(v0 + 744);
  v153 = *(v0 + 400);
  if (v38)
  {
    v136 = *(v0 + 808);
    v46 = swift_slowAlloc();
    v134 = v44;
    v47 = swift_slowAlloc();
    v154[0] = v47;
    *v46 = 136315138;
    v48 = sub_226E1FC98(v140, v19, v154);

    *(v46 + 4) = v48;
    v49 = sub_226E63810();
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v37, v138, v49, "FinanceKitDateStore:transactionUpdates", "%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x22AA8E1B0](v47, -1, -1);
    MEMORY[0x22AA8E1B0](v46, -1, -1);

    v41(v42, v43);
    v136(v150, v147);
    (*(v45 + 8))(v134, v153);
  }

  else
  {

    v41(v42, v43);
    v40(v150, v147);
    (*(v45 + 8))(v44, v153);
  }

  v50 = *(v0 + 448);
  v51 = *(sub_226E630D0() + 16);

  if (v51)
  {
    *(v0 + 936) = v142;
    *(v0 + 1072) = 1;
    v53 = *(v0 + 408);
    v52 = *(v0 + 416);
    v54 = *(v0 + 392);
    v55 = *(v0 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69D8, &qword_226E688C8);
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69E0, &qword_226E688D0) - 8);
    v57 = *(v56 + 72);
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    *(swift_allocObject() + 16) = xmmword_226E685F0;
    swift_getKeyPath();
    sub_226E34C7C(&qword_27D7B69E8, MEMORY[0x277CC95F0]);
    sub_226E63430();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69F0, &qword_226E68908);
    (*(*(v59 - 8) + 56))(v54, 1, 1, v59);
    sub_226E63090();
    v60 = MEMORY[0x277CC7C08];
    *(v0 + 40) = v55;
    *(v0 + 48) = v60;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v53 + 16))(boxed_opaque_existential_1, v52, v55);
    v62 = *(MEMORY[0x277CC6710] + 4);
    v63 = swift_task_alloc();
    *(v0 + 944) = v63;
    *v63 = v0;
    v63[1] = sub_226E294CC;
    v64 = *(v0 + 824);
    v10 = *(v0 + 440);
    v11 = v0 + 16;

    return MEMORY[0x282116DF0](v10, v11);
  }

  v65 = *(v0 + 912);
  v66 = *(v0 + 904);
  v67 = *(v0 + 464);
  v68 = *(v0 + 360);
  sub_226E1A598(*(v0 + 488), v67, &qword_27D7B69C8, &qword_226E688B8);
  if (v66(v67, 1, v68) == 1)
  {
    sub_226E15E98(*(v0 + 464), &qword_27D7B69C8, &qword_226E688B8);
LABEL_22:
    v103 = swift_task_alloc();
    *(v0 + 992) = v103;
    *v103 = v0;
    v103[1] = sub_226E2A4EC;
    v104 = *(v0 + 824);
    v105 = *(v0 + 456);

    return sub_226E323C0(v105);
  }

  v69 = *(v0 + 984);
  v70 = *(v0 + 384);
  v71 = *(v0 + 232);
  v72 = *(*(v0 + 368) + 32);
  v72(v70, *(v0 + 464), *(v0 + 360));
  v73 = (*((*MEMORY[0x277D85000] & *v71) + 0x68))(v70);
  if (!v69)
  {
    v97 = *(v0 + 928);
    v98 = *(v0 + 920);
    v99 = *(v0 + 504);
    v100 = *(v0 + 384);
    v101 = *(v0 + 360);
    v102 = *(v0 + 208);
    (*(v0 + 200))(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v73, v74);

    sub_226E15E98(v99, &qword_27D7B69C8, &qword_226E688B8);
    v72(v99, v100, v101);
    v98(v99, 0, 1, v101);
    goto LABEL_22;
  }

  v75 = *(v0 + 888);
  v76 = *(v0 + 840);
  v77 = *(v0 + 824);
  v78 = *(v0 + 784);
  v148 = *(v0 + 504);
  v151 = *(v0 + 528);
  v79 = *(v0 + 488);
  v145 = *(v0 + 448);
  v81 = *(v0 + 424);
  v80 = *(v0 + 432);
  v82 = *(v0 + 384);
  v83 = *(v0 + 360);
  v84 = *(v0 + 368);

  (*(v84 + 8))(v82, v83);
  sub_226E15E98(v79, &qword_27D7B69C8, &qword_226E688B8);
  (*(v80 + 8))(v145, v81);
  sub_226E15E98(v148, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v151, &qword_27D7B6858, &qword_226E688C0);
  v85 = *(v0 + 752);
  v86 = *(v0 + 744);
  v87 = *(v0 + 736);
  v88 = *(v0 + 728);
  v89 = *(v0 + 720);
  v90 = *(v0 + 696);
  v91 = *(v0 + 688);
  v92 = *(v0 + 680);
  v93 = *(v0 + 672);
  v94 = *(v0 + 664);
  v107 = *(v0 + 656);
  v108 = *(v0 + 632);
  v109 = *(v0 + 624);
  v110 = *(v0 + 616);
  v111 = *(v0 + 608);
  v112 = *(v0 + 600);
  v113 = *(v0 + 592);
  v114 = *(v0 + 584);
  v115 = *(v0 + 576);
  v116 = *(v0 + 568);
  v117 = *(v0 + 560);
  v118 = *(v0 + 552);
  v119 = *(v0 + 528);
  v120 = *(v0 + 520);
  v121 = *(v0 + 512);
  v122 = *(v0 + 504);
  v123 = *(v0 + 496);
  v124 = *(v0 + 488);
  v125 = *(v0 + 480);
  v126 = *(v0 + 472);
  v127 = *(v0 + 464);
  v128 = *(v0 + 456);
  v129 = *(v0 + 448);
  v130 = *(v0 + 440);
  v131 = *(v0 + 416);
  v132 = *(v0 + 392);
  v133 = *(v0 + 384);
  v135 = *(v0 + 376);
  v137 = *(v0 + 352);
  v139 = *(v0 + 344);
  v141 = *(v0 + 320);
  v143 = *(v0 + 296);
  v146 = *(v0 + 288);
  v149 = *(v0 + 280);
  v152 = *(v0 + 256);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_226E2A4EC()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v8 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v4 = *(v2 + 888);
    v5 = *(v2 + 840);

    v6 = sub_226E2B0D0;
  }

  else
  {
    v6 = sub_226E2A614;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E2A614()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[70];
  v5 = v0[67];
  v6 = v0[57];
  v7 = sub_226E34034(v0[63], v6);
  sub_226E15E98(v6, &qword_27D7B69C8, &qword_226E688B8);
  v2(v4, v3, v5);
  v8 = sub_226E638C0();
  v9 = sub_226E63CB0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v7 & 1;
    _os_log_impl(&dword_226DD4000, v8, v9, "FinanceKitDataStore : first pull complete. isTokenUpdated = %{BOOL}d", v10, 8u);
    MEMORY[0x22AA8E1B0](v10, -1, -1);
  }

  v11 = v0[112];
  v12 = v0[110];
  v13 = v0[70];
  v14 = v0[67];

  v12(v13, v14);
  if ((v7 & 1) == 0)
  {
    v39 = v0[111];
    v40 = v0[105];
    v41 = v0[98];
    v42 = v0[97];
    v43 = v0[96];
    v44 = v0[95];
    v45 = v0[92];
    v46 = v0[88];
    v47 = v0[84];

    v43(v45, v44, v46);
    v48 = sub_226E63850();
    sub_226E63880();
    v49 = sub_226E63CC0();
    if (sub_226E63D70())
    {
      v50 = v0[98];
      v51 = v0[44];
      v52 = v0[41];
      v53 = v0[42];

      sub_226E638B0();

      if ((*(v53 + 88))(v51, v52) == *MEMORY[0x277D85B00])
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[42] + 8))(v0[44], v0[41]);
        v54 = "";
      }

      v71 = v0[103];
      v164 = v0[101];
      v168 = v0[102];
      v72 = v0[98];
      v148 = v0[92];
      v152 = v0[100];
      v142 = v0[99];
      v145 = v0[88];
      v73 = v0[84];
      v74 = v0[80];
      v171 = v0[63];
      v173 = v0[66];
      v139 = v0[61];
      v75 = v0[54];
      v156 = v0[53];
      v160 = v0[56];
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = sub_226E63810();
      _os_signpost_emit_with_name_impl(&dword_226DD4000, v48, v49, v77, "FinanceKitDateStore:streamTransactions", v54, v76, 2u);
      MEMORY[0x22AA8E1B0](v76, -1, -1);

      v142(v73, v74);
      v164(v148, v145);
      sub_226E15E98(v139, &qword_27D7B69C8, &qword_226E688B8);
      (*(v75 + 8))(v160, v156);
    }

    else
    {
      v55 = v0[103];
      v163 = v0[101];
      v167 = v0[102];
      v56 = v0[99];
      v57 = v0[98];
      v58 = v0[92];
      v59 = v0[88];
      v60 = v0[84];
      v61 = v0[80];
      v171 = v0[63];
      v173 = v0[66];
      v62 = v0[61];
      v159 = v0[56];
      v63 = v0[54];
      v151 = v0[100];
      v155 = v0[53];

      v56(v60, v61);
      v163(v58, v59);
      sub_226E15E98(v62, &qword_27D7B69C8, &qword_226E688B8);
      (*(v63 + 8))(v159, v155);
    }

    sub_226E15E98(v171, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E15E98(v173, &qword_27D7B6858, &qword_226E688C0);
    v78 = v0[94];
    v79 = v0[93];
    v80 = v0[92];
    v81 = v0[91];
    v82 = v0[90];
    v83 = v0[87];
    v84 = v0[86];
    v85 = v0[85];
    v86 = v0[84];
    v87 = v0[83];
    v91 = v0[82];
    v93 = v0[79];
    v95 = v0[78];
    v97 = v0[77];
    v99 = v0[76];
    v101 = v0[75];
    v103 = v0[74];
    v105 = v0[73];
    v107 = v0[72];
    v109 = v0[71];
    v111 = v0[70];
    v113 = v0[69];
    v115 = v0[66];
    v117 = v0[65];
    v119 = v0[64];
    v121 = v0[63];
    v123 = v0[62];
    v125 = v0[61];
    v127 = v0[60];
    v129 = v0[59];
    v131 = v0[58];
    v133 = v0[57];
    v135 = v0[56];
    v137 = v0[55];
    v140 = v0[52];
    v143 = v0[49];
    v146 = v0[48];
    v149 = v0[47];
    v153 = v0[44];
    v157 = v0[43];
    v161 = v0[40];
    v165 = v0[37];
    v169 = v0[36];
    v172 = v0[35];
    v174 = v0[32];

    v38 = v0[1];
    goto LABEL_16;
  }

  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[54];
  sub_226E15E98(v0[61], &qword_27D7B69C8, &qword_226E688B8);
  (*(v17 + 8))(v15, v16);
  v18 = v0[125];
  v19 = v0[103];
  v20 = v0[63];
  (*(v0[31] + 56))(v0[37], 1, 1, v0[30]);
  sub_226E62B60();
  if (v18)
  {
    v21 = v0[111];
    v22 = v0[105];
    v23 = v0[103];
    v24 = v0[98];
    v25 = v0[66];
    v26 = v0[63];
    v27 = v0[37];

    sub_226E15E98(v27, &qword_27D7B6940, &qword_226E68A90);
    sub_226E15E98(v26, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E15E98(v25, &qword_27D7B6858, &qword_226E688C0);
    v28 = v0[94];
    v29 = v0[93];
    v30 = v0[92];
    v31 = v0[91];
    v32 = v0[90];
    v33 = v0[87];
    v34 = v0[86];
    v35 = v0[85];
    v36 = v0[84];
    v37 = v0[83];
    v89 = v0[82];
    v90 = v0[79];
    v92 = v0[78];
    v94 = v0[77];
    v96 = v0[76];
    v98 = v0[75];
    v100 = v0[74];
    v102 = v0[73];
    v104 = v0[72];
    v106 = v0[71];
    v108 = v0[70];
    v110 = v0[69];
    v112 = v0[66];
    v114 = v0[65];
    v116 = v0[64];
    v118 = v0[63];
    v120 = v0[62];
    v122 = v0[61];
    v124 = v0[60];
    v126 = v0[59];
    v128 = v0[58];
    v130 = v0[57];
    v132 = v0[56];
    v134 = v0[55];
    v136 = v0[52];
    v138 = v0[49];
    v141 = v0[48];
    v144 = v0[47];
    v147 = v0[44];
    v150 = v0[43];
    v154 = v0[40];
    v158 = v0[37];
    v162 = v0[36];
    v166 = v0[35];
    v170 = v0[32];

    v38 = v0[1];
LABEL_16:

    return v38();
  }

  v64 = v0[40];
  sub_226E15E98(v0[37], &qword_27D7B6940, &qword_226E68A90);
  sub_226E632B0();

  v65 = sub_226E34C7C(&qword_280CEA238, MEMORY[0x277CC8098]);
  v66 = *(MEMORY[0x277D856D0] + 4);
  v67 = swift_task_alloc();
  v0[126] = v67;
  *v67 = v0;
  v67[1] = sub_226E2B41C;
  v68 = v0[40];
  v69 = v0[38];
  v70 = v0[36];

  return MEMORY[0x282200308](v70, v69, v65);
}

uint64_t sub_226E2B0D0()
{
  v1 = v0[103];
  v2 = v0[98];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[61];
  v6 = v0[56];
  v7 = v0[53];
  v8 = v0[54];

  sub_226E15E98(v5, &qword_27D7B69C8, &qword_226E688B8);
  (*(v8 + 8))(v6, v7);
  sub_226E15E98(v4, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v3, &qword_27D7B6858, &qword_226E688C0);
  v56 = v0[125];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[90];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v21 = v0[82];
  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[77];
  v25 = v0[76];
  v26 = v0[75];
  v27 = v0[74];
  v28 = v0[73];
  v29 = v0[72];
  v30 = v0[71];
  v31 = v0[70];
  v32 = v0[69];
  v33 = v0[66];
  v34 = v0[65];
  v35 = v0[64];
  v36 = v0[63];
  v37 = v0[62];
  v38 = v0[61];
  v39 = v0[60];
  v40 = v0[59];
  v41 = v0[58];
  v42 = v0[57];
  v43 = v0[56];
  v44 = v0[55];
  v45 = v0[52];
  v46 = v0[49];
  v47 = v0[48];
  v48 = v0[47];
  v49 = v0[44];
  v50 = v0[43];
  v51 = v0[40];
  v52 = v0[37];
  v53 = v0[36];
  v54 = v0[35];
  v55 = v0[32];

  v19 = v0[1];

  return v19();
}

uint64_t sub_226E2B41C()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v8 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = *(v2 + 888);
    v5 = *(v2 + 840);

    v6 = sub_226E2BB70;
  }

  else
  {
    v6 = sub_226E2B544;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E2B544()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[111];
    v5 = v0[105];
    v6 = v0[98];
    v7 = v0[97];
    v8 = v0[96];
    v9 = v0[95];
    v10 = v0[90];
    v11 = v0[88];
    v12 = v0[82];
    (*(v0[39] + 8))(v0[40], v0[38]);

    v8(v10, v9, v11);
    v13 = sub_226E63850();
    sub_226E63880();
    v14 = sub_226E63CC0();
    if (sub_226E63D70())
    {
      v15 = v0[98];
      v17 = v0[42];
      v16 = v0[43];
      v18 = v0[41];

      sub_226E638B0();

      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[42] + 8))(v0[43], v0[41]);
        v19 = "";
      }

      v41 = v0[103];
      v96 = v0[101];
      v99 = v0[102];
      v42 = v0[98];
      v91 = v0[90];
      v94 = v0[100];
      v87 = v0[99];
      v89 = v0[88];
      v43 = v0[82];
      v85 = v0[80];
      v37 = v0[66];
      v38 = v0[63];
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = sub_226E63810();
      _os_signpost_emit_with_name_impl(&dword_226DD4000, v13, v14, v45, "FinanceKitDateStore:streamTransactions", v19, v44, 2u);
      MEMORY[0x22AA8E1B0](v44, -1, -1);

      v87(v43, v85);
      v40 = v89;
      v39 = v91;
    }

    else
    {
      v30 = v0[103];
      v96 = v0[101];
      v98 = v0[102];
      v93 = v0[100];
      v31 = v0[99];
      v32 = v0[98];
      v33 = v0[90];
      v34 = v0[88];
      v35 = v0[82];
      v36 = v0[80];
      v37 = v0[66];
      v38 = v0[63];

      v31(v35, v36);
      v39 = v33;
      v40 = v34;
    }

    v96(v39, v40);
    sub_226E15E98(v38, &qword_27D7B69C8, &qword_226E688B8);
    sub_226E15E98(v37, &qword_27D7B6858, &qword_226E688C0);
    v46 = v0[94];
    v47 = v0[93];
    v48 = v0[92];
    v49 = v0[91];
    v50 = v0[90];
    v51 = v0[87];
    v52 = v0[86];
    v53 = v0[85];
    v54 = v0[84];
    v55 = v0[83];
    v57 = v0[82];
    v58 = v0[79];
    v59 = v0[78];
    v60 = v0[77];
    v61 = v0[76];
    v62 = v0[75];
    v63 = v0[74];
    v64 = v0[73];
    v65 = v0[72];
    v66 = v0[71];
    v67 = v0[70];
    v68 = v0[69];
    v69 = v0[66];
    v70 = v0[65];
    v71 = v0[64];
    v72 = v0[63];
    v73 = v0[62];
    v74 = v0[61];
    v75 = v0[60];
    v76 = v0[59];
    v77 = v0[58];
    v78 = v0[57];
    v79 = v0[56];
    v80 = v0[55];
    v81 = v0[52];
    v82 = v0[49];
    v83 = v0[48];
    v84 = v0[47];
    v86 = v0[44];
    v88 = v0[43];
    v90 = v0[40];
    v92 = v0[37];
    v95 = v0[36];
    v97 = v0[35];
    v100 = v0[32];

    v56 = v0[1];

    return v56();
  }

  else
  {
    (*(v3 + 32))(v0[35], v1, v2);
    v20 = sub_226E62C10();
    v0[128] = v20;
    v21 = sub_226E62C00();
    v0[129] = v21;
    v22 = sub_226E62BF0();
    v0[130] = v22;
    v23 = swift_task_alloc();
    v0[131] = v23;
    *v23 = v0;
    v23[1] = sub_226E2BF34;
    v24 = v0[111];
    v25 = v0[105];
    v26 = v0[103];
    v27 = v0[66];
    v28 = v0[29];

    return sub_226E2E68C(v20, v21, v22, v26, v25, v24, v27);
  }
}

uint64_t sub_226E2BB70()
{
  *(v0 + 136) = *(v0 + 1016);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_226E2BC04, 0, 0);
}

uint64_t sub_226E2BC04()
{
  v1 = v0[103];
  v2 = v0[98];
  v3 = v0[66];
  v4 = v0[63];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];

  (*(v6 + 8))(v5, v7);
  sub_226E15E98(v4, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v3, &qword_27D7B6858, &qword_226E688C0);
  v55 = v0[127];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[87];
  v14 = v0[86];
  v15 = v0[85];
  v16 = v0[84];
  v17 = v0[83];
  v20 = v0[82];
  v21 = v0[79];
  v22 = v0[78];
  v23 = v0[77];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[71];
  v30 = v0[70];
  v31 = v0[69];
  v32 = v0[66];
  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[62];
  v37 = v0[61];
  v38 = v0[60];
  v39 = v0[59];
  v40 = v0[58];
  v41 = v0[57];
  v42 = v0[56];
  v43 = v0[55];
  v44 = v0[52];
  v45 = v0[49];
  v46 = v0[48];
  v47 = v0[47];
  v48 = v0[44];
  v49 = v0[43];
  v50 = v0[40];
  v51 = v0[37];
  v52 = v0[36];
  v53 = v0[35];
  v54 = v0[32];

  v18 = v0[1];

  return v18();
}

uint64_t sub_226E2BF34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1048);
  v6 = *v2;
  v4[132] = a1;
  v4[133] = v1;

  v7 = v3[130];
  v8 = v3[129];
  v9 = v3[128];
  if (v1)
  {
    v10 = v4[111];
    v11 = v4[105];

    v12 = sub_226E2D5A4;
  }

  else
  {

    v12 = sub_226E2C0E0;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_226E2C0E0()
{
  v161 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = sub_226E62BF0();
  v4 = *(v3 + 16);
  v159 = v0;
  if (v4)
  {
    v5 = v0[31];
    v0[18] = MEMORY[0x277D84F90];
    sub_226E217DC(0, v4, 0);
    v6 = v0[18];
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v156 = *(v5 + 72);
    v8 = *(v5 + 16);
    do
    {
      v10 = v0[31];
      v9 = v0[32];
      v11 = v0[30];
      v8(v9, v7, v11);
      v12 = sub_226E635B0();
      v14 = v13;
      (*(v10 + 8))(v9, v11);
      v0[18] = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226E217DC((v15 > 1), v16 + 1, 1);
        v6 = v0[18];
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v156;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v18 = v0[35];
  v19 = v0[33];
  v20 = v0;
  v21 = *(sub_226E62C10() + 16);

  v22 = *(sub_226E62C00() + 16);

  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    v24 = v20[132];
    v20[13] = 0;
    v20[14] = 0xE000000000000000;
    sub_226E63E70();
    v25 = v20[14];

    v20[11] = 0x3D73657461647075;
    v20[12] = 0xE800000000000000;
    v21 = v20;
    if (!(v24 >> 62))
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  if (v21[132] < 0)
  {
    v101 = v21[132];
  }

  v26 = sub_226E63DE0();
LABEL_11:
  v21[19] = v26;
  v27 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v27);

  MEMORY[0x22AA8D010](0x736574656C656420, 0xE90000000000003DLL);
  v21[20] = *(v6 + 16);
  v28 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v28);

  v29 = MEMORY[0x22AA8D010](0x6F686563616C7020, 0xED00003D7265646CLL);
  v32 = &v23[-v26];
  if (__OFSUB__(v23, v26))
  {
    __break(1u);
    return MEMORY[0x282200308](v29, v30, v31);
  }

  v33 = v159[109];
  v34 = v159[108];
  v35 = v159[107];
  v36 = v159[69];
  v37 = v159[67];
  v159[21] = v32;
  v38 = sub_226E63FE0();
  MEMORY[0x22AA8D010](v38);

  v39 = v159[11];
  v40 = v159[12];
  v34(v36, v35, v37);

  v41 = sub_226E638C0();
  v42 = sub_226E63CB0();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v159[112];
  v45 = v159[110];
  v46 = v159[69];
  v47 = v159[67];
  v157 = v40;
  v151 = v39;
  if (v43)
  {
    v48 = v39;
    v49 = swift_slowAlloc();
    v146 = v45;
    v50 = swift_slowAlloc();
    v160[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_226E1FC98(v48, v40, v160);
    _os_log_impl(&dword_226DD4000, v41, v42, "FinanceKitDataStore : batch transactions %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x22AA8E1B0](v50, -1, -1);
    MEMORY[0x22AA8E1B0](v49, -1, -1);

    v146(v46, v47);
  }

  else
  {

    v45(v46, v47);
  }

  v51 = v159[133];
  v52 = v159[47];
  v53 = v159[35];
  v54 = v159[33];
  v55 = v159[29];
  sub_226E62C20();
  v56 = (*((*MEMORY[0x277D85000] & *v55) + 0x68))(v52);
  v58 = v159[132];
  v59 = v159[46];
  v60 = v159[47];
  v61 = v159[45];
  if (!v51)
  {
    v79 = v56;
    v80 = v57;
    v144 = v159[96];
    v149 = v159[97];
    v81 = v159[91];
    v136 = v159[88];
    v140 = v159[95];
    v154 = v159[83];
    v82 = v159[26];
    v83 = v159[25];
    (*(v59 + 8))(v60, v61);
    v83(v58, v6, v79, v80);

    v144(v81, v140, v136);

    sub_226E63820();
    v84 = sub_226E63850();
    v137 = sub_226E63CE0();

    v85 = sub_226E63D70();
    v86 = v159[102];
    v87 = v159[101];
    v88 = v159[100];
    v89 = v159[99];
    v141 = v159[88];
    v145 = v159[91];
    v90 = v159[83];
    v91 = v159[80];
    v92 = v159[34];
    v155 = v159[35];
    v150 = v159[33];
    if (v85)
    {
      v93 = swift_slowAlloc();
      v131 = v87;
      v94 = swift_slowAlloc();
      v160[0] = v94;
      *v93 = 136315138;
      v95 = sub_226E1FC98(v151, v157, v160);

      *(v93 + 4) = v95;
      v96 = sub_226E63810();
      _os_signpost_emit_with_name_impl(&dword_226DD4000, v84, v137, v96, "FinanceKitDateStore:transactionUpdates", "%s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x22AA8E1B0](v94, -1, -1);
      MEMORY[0x22AA8E1B0](v93, -1, -1);

      v89(v90, v91);
      v131(v145, v141);
    }

    else
    {

      v89(v90, v91);
      v87(v145, v141);
    }

    (*(v92 + 8))(v155, v150);
    v97 = sub_226E34C7C(&qword_280CEA238, MEMORY[0x277CC8098]);
    v98 = *(MEMORY[0x277D856D0] + 4);
    v99 = swift_task_alloc();
    v159[126] = v99;
    *v99 = v159;
    v99[1] = sub_226E2B41C;
    v100 = v159[40];
    v30 = v159[38];
    v29 = v159[36];
    v31 = v97;

    return MEMORY[0x282200308](v29, v30, v31);
  }

  v62 = v159[111];
  v63 = v159[103];
  v64 = v159[98];
  v147 = v159[63];
  v152 = v159[66];
  v65 = v159[39];
  v138 = v159[38];
  v142 = v159[40];
  v66 = v159[34];
  v134 = v159[35];
  v129 = v159[105];
  v132 = v159[33];

  (*(v59 + 8))(v60, v61);
  (*(v66 + 8))(v134, v132);
  (*(v65 + 8))(v142, v138);
  sub_226E15E98(v147, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v152, &qword_27D7B6858, &qword_226E688C0);
  v67 = v159[94];
  v68 = v159[93];
  v69 = v159[92];
  v70 = v159[91];
  v71 = v159[90];
  v72 = v159[87];
  v73 = v159[86];
  v74 = v159[85];
  v75 = v159[84];
  v76 = v159[83];
  v102 = v159[82];
  v103 = v159[79];
  v104 = v159[78];
  v105 = v159[77];
  v106 = v159[76];
  v107 = v159[75];
  v108 = v159[74];
  v109 = v159[73];
  v110 = v159[72];
  v111 = v159[71];
  v112 = v159[70];
  v113 = v159[69];
  v114 = v159[66];
  v115 = v159[65];
  v116 = v159[64];
  v117 = v159[63];
  v118 = v159[62];
  v119 = v159[61];
  v120 = v159[60];
  v121 = v159[59];
  v122 = v159[58];
  v123 = v159[57];
  v124 = v159[56];
  v125 = v159[55];
  v126 = v159[52];
  v127 = v159[49];
  v128 = v159[48];
  v130 = v159[47];
  v133 = v159[44];
  v135 = v159[43];
  v139 = v159[40];
  v143 = v159[37];
  v148 = v159[36];
  v153 = v159[35];
  v158 = v159[32];

  v77 = v159[1];

  return v77();
}

uint64_t sub_226E2CBE4()
{
  v1 = v0[103];
  v2 = v0[98];

  v50 = v0[106];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[85];
  v11 = v0[84];
  v12 = v0[83];
  v15 = v0[82];
  v16 = v0[79];
  v17 = v0[78];
  v18 = v0[77];
  v19 = v0[76];
  v20 = v0[75];
  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[69];
  v27 = v0[66];
  v28 = v0[65];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[62];
  v32 = v0[61];
  v33 = v0[60];
  v34 = v0[59];
  v35 = v0[58];
  v36 = v0[57];
  v37 = v0[56];
  v38 = v0[55];
  v39 = v0[52];
  v40 = v0[49];
  v41 = v0[48];
  v42 = v0[47];
  v43 = v0[44];
  v44 = v0[43];
  v45 = v0[40];
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[35];
  v49 = v0[32];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226E2CEBC()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 824);
  v3 = *(v0 + 784);
  v4 = *(v0 + 528);
  v5 = *(v0 + 504);
  v6 = *(v0 + 488);
  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  v9 = *(v0 + 400);

  (*(v8 + 8))(v7, v9);
  sub_226E15E98(v6, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v5, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v4, &qword_27D7B6858, &qword_226E688C0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1 == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));
  }

  v57 = *(v0 + 952);
  v10 = *(v0 + 752);
  v11 = *(v0 + 744);
  v12 = *(v0 + 736);
  v13 = *(v0 + 728);
  v14 = *(v0 + 720);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 672);
  v19 = *(v0 + 664);
  v22 = *(v0 + 656);
  v23 = *(v0 + 632);
  v24 = *(v0 + 624);
  v25 = *(v0 + 616);
  v26 = *(v0 + 608);
  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 576);
  v31 = *(v0 + 568);
  v32 = *(v0 + 560);
  v33 = *(v0 + 552);
  v34 = *(v0 + 528);
  v35 = *(v0 + 520);
  v36 = *(v0 + 512);
  v37 = *(v0 + 504);
  v38 = *(v0 + 496);
  v39 = *(v0 + 488);
  v40 = *(v0 + 480);
  v41 = *(v0 + 472);
  v42 = *(v0 + 464);
  v43 = *(v0 + 456);
  v44 = *(v0 + 448);
  v45 = *(v0 + 440);
  v46 = *(v0 + 416);
  v47 = *(v0 + 392);
  v48 = *(v0 + 384);
  v49 = *(v0 + 376);
  v50 = *(v0 + 352);
  v51 = *(v0 + 344);
  v52 = *(v0 + 320);
  v53 = *(v0 + 296);
  v54 = *(v0 + 288);
  v55 = *(v0 + 280);
  v56 = *(v0 + 256);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_226E2D234()
{
  v1 = v0[103];
  v2 = v0[98];
  v58 = v0[66];
  v3 = v0[63];
  v4 = v0[61];
  v5 = v0[56];
  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[51];
  v9 = v0[52];
  v10 = v0[50];

  (*(v8 + 8))(v9, v10);
  sub_226E15E98(v4, &qword_27D7B69C8, &qword_226E688B8);
  (*(v7 + 8))(v5, v6);
  sub_226E15E98(v3, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v58, &qword_27D7B6858, &qword_226E688C0);
  v59 = v0[123];
  v11 = v0[94];
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[87];
  v17 = v0[86];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v23 = v0[82];
  v24 = v0[79];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[75];
  v29 = v0[74];
  v30 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[66];
  v36 = v0[65];
  v37 = v0[64];
  v38 = v0[63];
  v39 = v0[62];
  v40 = v0[61];
  v41 = v0[60];
  v42 = v0[59];
  v43 = v0[58];
  v44 = v0[57];
  v45 = v0[56];
  v46 = v0[55];
  v47 = v0[52];
  v48 = v0[49];
  v49 = v0[48];
  v50 = v0[47];
  v51 = v0[44];
  v52 = v0[43];
  v53 = v0[40];
  v54 = v0[37];
  v55 = v0[36];
  v56 = v0[35];
  v57 = v0[32];

  v21 = v0[1];

  return v21();
}

uint64_t sub_226E2D5A4()
{
  v1 = v0[103];
  v2 = v0[98];
  v3 = v0[66];
  v4 = v0[63];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  sub_226E15E98(v4, &qword_27D7B69C8, &qword_226E688B8);
  sub_226E15E98(v3, &qword_27D7B6858, &qword_226E688C0);
  v58 = v0[133];
  v11 = v0[94];
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[87];
  v17 = v0[86];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v23 = v0[82];
  v24 = v0[79];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[75];
  v29 = v0[74];
  v30 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[66];
  v36 = v0[65];
  v37 = v0[64];
  v38 = v0[63];
  v39 = v0[62];
  v40 = v0[61];
  v41 = v0[60];
  v42 = v0[59];
  v43 = v0[58];
  v44 = v0[57];
  v45 = v0[56];
  v46 = v0[55];
  v47 = v0[52];
  v48 = v0[49];
  v49 = v0[48];
  v50 = v0[47];
  v51 = v0[44];
  v52 = v0[43];
  v53 = v0[40];
  v54 = v0[37];
  v55 = v0[36];
  v56 = v0[35];
  v57 = v0[32];

  v21 = v0[1];

  return v21();
}

uint64_t sub_226E2D8F4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_226E2DC00(uint64_t a1)
{
  v2 = sub_226E635C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_226E62F70();
}

uint64_t FinanceStore.isTokenUpdated(savedToken:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C8, &qword_226E688B8) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v1[3] = v3;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_226E2DD9C;

  return sub_226E323C0(v3);
}

uint64_t sub_226E2DD9C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_226E2DF40;
  }

  else
  {
    v3 = sub_226E2DEB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E2DEB0()
{
  v1 = v0[3];
  v2 = sub_226E34034(v0[2], v1);
  sub_226E15E98(v1, &qword_27D7B69C8, &qword_226E688B8);

  v3 = v0[1];

  return v3(v2 & 1);
}

uint64_t sub_226E2DF40()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(0);
}

uint64_t sub_226E2E164(uint64_t a1, int a2, void *aBlock, const void *a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(a4);
  v6[3] = _Block_copy(a5);
  if (a1)
  {
    v13 = sub_226E639C0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v6[4] = v15;
  sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
  v16 = sub_226E63AF0();
  v6[5] = v16;
  v17 = swift_allocObject();
  v6[6] = v17;
  *(v17 + 16) = v11;
  v18 = swift_allocObject();
  v6[7] = v18;
  *(v18 + 16) = v12;
  a6;
  v19 = swift_task_alloc();
  v6[8] = v19;
  *v19 = v6;
  v19[1] = sub_226E2E31C;

  return sub_226E270E0(v13, v15, v16, sub_226E34B4C, v17, sub_226E34B54, v18);
}

uint64_t sub_226E2E31C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 16);
  v11 = *v1;

  v12 = *(v3 + 24);
  if (v2)
  {
    v13 = sub_226E63450();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v14 = *(v11 + 8);

  return v14();
}

void sub_226E2E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_226E202A4(0, &qword_280CE9FB0, off_2785CA828);
  v7 = sub_226E63AE0();
  v8 = sub_226E63AE0();
  if (a4)
  {
    v9 = sub_226E639B0();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, v7, v8);
}

uint64_t sub_226E2E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
  v4 = sub_226E63AE0();
  v5 = sub_226E63AE0();
  v6 = (*(a3 + 16))(a3, v4, v5);

  return v6;
}

uint64_t sub_226E2E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[27] = a7;
  v8[28] = v7;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  v9 = sub_226E638E0();
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v11 = *(v10 + 64) + 15;
  v8[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A40, &qword_226E68A10) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v13 = sub_226E62FC0();
  v8[34] = v13;
  v14 = *(v13 - 8);
  v8[35] = v14;
  v15 = *(v14 + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v16 = sub_226E635C0();
  v8[39] = v16;
  v17 = *(v16 - 8);
  v8[40] = v17;
  v18 = *(v17 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E2E89C, 0, 0);
}

uint64_t sub_226E2E89C()
{
  v1 = MEMORY[0x277D84F90];
  v0[20] = MEMORY[0x277D84F90];
  v3 = v0[22];
  v2 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A48, &qword_226E68A18);
  v73 = *(v0 + 27);
  inited = swift_initStackObject();
  v68 = v0 + 20;
  v0[46] = inited;
  *(inited + 16) = xmmword_226E685E0;
  *(inited + 32) = v2;
  v69 = inited + 32;
  v5 = swift_task_alloc();
  v5[1] = vextq_s8(v73, v73, 8uLL);

  v6 = sub_226E2D8F4(sub_226E34B5C, v5, v3, MEMORY[0x277CC7678], sub_226E331A0);

  v7 = *(v6 + 16);
  v67 = inited;
  if (v7)
  {
    v8 = v0[40];
    v9 = v0[35];
    sub_226E3315C(0, v7, 0);
    v10 = v1;
    v11 = *(v9 + 16);
    v9 += 16;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v70 = *(v9 + 56);
    v71 = v11;
    v13 = (v9 - 8);
    do
    {
      v14 = v0[45];
      v15 = v0[38];
      v16 = v0[34];
      v71(v15, v12, v16);
      sub_226E62F60();
      (*v13)(v15, v16);
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226E3315C(v17 > 1, v18 + 1, 1);
      }

      v19 = v0[45];
      v20 = v0[39];
      *(v10 + 16) = v18 + 1;
      (*(v8 + 32))(v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v19, v20);
      v12 += v70;
      --v7;
    }

    while (v7);

    inited = v67;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *(inited + 40) = v10;
  v21 = *(inited + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v69;
    while (1)
    {
      v24 = *(*(v69 + 8 * v22) + 16);
      v25 = v24 == 0;
      if (v24)
      {
        break;
      }

      if (v21 == ++v22)
      {
        v22 = *(inited + 16);
        break;
      }
    }
  }

  else
  {
    v22 = 0;
    v25 = 1;
    v23 = v69;
  }

  if (sub_226E3399C(v22, 0, v25, 2uLL, 0, 1, inited) <= 0)
  {
    goto LABEL_52;
  }

  v26 = *(inited + 16);
  if (v26)
  {
    v27 = 0;
    while (1)
    {
      v28 = *(*(v23 + 8 * v27) + 16);
      v29 = v28 == 0;
      if (v28)
      {
        break;
      }

      if (v26 == ++v27)
      {
        v27 = *(inited + 16);
        break;
      }
    }
  }

  else
  {
    v27 = 0;
    v29 = 1;
  }

  v30 = *(v0[28] + OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator);
  v31 = sub_226E3399C(v27, 0, v29, 2uLL, 0, 1, inited);
  v32 = MEMORY[0x277D84F90];
  v74 = v0;
  if (!v31)
  {
LABEL_51:
    (*(*v30 + 112))(v32);

    v0 = v74;
LABEL_52:
    v57 = v0[21];
    v58 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A50, &qword_226E68A20);
    v59 = swift_initStackObject();
    v0[47] = v59;
    *(v59 + 16) = xmmword_226E685E0;
    *(v59 + 32) = v57;
    *(v59 + 40) = v58;

    v60 = sub_226E2FD74(v59);
    v0[48] = v60;
    v61 = *(MEMORY[0x277CC6728] + 4);
    v62 = swift_task_alloc();
    v0[49] = v62;
    *v62 = v0;
    v62[1] = sub_226E2F050;
    v63 = v0[24];
    v34 = v60;

    return MEMORY[0x282116E18](v34);
  }

  v33 = v31;
  v75 = MEMORY[0x277D84F90];
  v34 = sub_226E217DC(0, v31 & ~(v31 >> 63), 0);
  v35 = *(inited + 16);
  if (v35)
  {
    v36 = 0;
    v37 = v74;
    while (1)
    {
      v38 = *(*(v23 + 8 * v36) + 16);
      v39 = v38 == 0;
      if (v38)
      {
        break;
      }

      if (v35 == ++v36)
      {
        v36 = *(inited + 16);
        break;
      }
    }
  }

  else
  {
    v36 = 0;
    v39 = 1;
    v37 = v74;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = 0;
    v65 = (v68 - 6);
    v66 = v30;
    v32 = v75;
    v72 = v37[40];
    while (v40 < v33)
    {
      v42 = __OFADD__(v40++, 1);
      if (v42)
      {
        goto LABEL_56;
      }

      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v36 > 1)
      {
        goto LABEL_58;
      }

      if (v39)
      {
        goto LABEL_62;
      }

      v43 = *(v23 + 8 * v36);
      if (v41 >= *(v43 + 16))
      {
        goto LABEL_59;
      }

      v44 = v33;
      v45 = v37[44];
      v46 = v37[39];
      (*(v72 + 16))(v45, v43 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v41, v46);
      v47 = sub_226E635B0();
      v49 = v48;
      v34 = (*(v72 + 8))(v45, v46);
      v51 = *(v75 + 16);
      v50 = *(v75 + 24);
      if (v51 >= v50 >> 1)
      {
        v34 = sub_226E217DC((v50 > 1), v51 + 1, 1);
      }

      *(v75 + 16) = v51 + 1;
      v52 = v75 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      ++v41;
      v23 = v69;
      if (v41 == *(*(v69 + 8 * v36) + 16))
      {
        ++v36;
        v37 = v74;
        v33 = v44;
        while (1)
        {
          v39 = v36 == 2;
          if (v36 == 2)
          {
            v41 = 0;
            goto LABEL_41;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A68, &qword_226E68A38);
          sub_226E34C18();
          v53 = sub_226E337D0(v65, v36, v67);
          v55 = *v54;

          (v53)(v65, 0);
          v56 = *(v55 + 16);

          if (v56)
          {
            break;
          }

          v42 = __OFADD__(v36++, 1);
          v37 = v74;
          if (v42)
          {
            goto LABEL_61;
          }
        }

        v41 = 0;
        v37 = v74;
      }

      else
      {
        v39 = 0;
        v37 = v74;
        v33 = v44;
      }

LABEL_41:
      if (v40 == v33)
      {
        v30 = v66;
        goto LABEL_51;
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
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return MEMORY[0x282116E18](v34);
}

uint64_t sub_226E2F050(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v11 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  if (v1)
  {
    v6 = v3[47];
    v5 = v3[48];
    v7 = v3[46];
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A58, &qword_226E68A28);
    swift_arrayDestroy();

    swift_setDeallocating();
    v8 = *(v6 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A60, &qword_226E68A30);
    swift_arrayDestroy();
    v9 = sub_226E2FC80;
  }

  else
  {
    v9 = sub_226E2F1D8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226E2F1D8()
{
  v137 = v0;
  v113 = 0;
  v1 = v0[35];
  v2 = v0[30];
  v112 = v0[28];
  v131 = v0[25];
  v111 = OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator;
  v3 = (v1 + 56);
  v125 = (v1 + 32);
  v4 = (v0[40] + 8);
  v127 = v1;
  v126 = (v1 + 8);
  v120 = (v2 + 8);
  v121 = (v2 + 16);
  v130 = v0[50];
  v114 = v0[51];
  v110 = MEMORY[0x277D84F90];
  v123 = v4;
  v124 = (v1 + 56);
LABEL_33:
  while (1)
  {
    result = v0[47];
    v72 = *(result + 16);
    if (v113 == v72)
    {
      break;
    }

    if (v113 >= v72)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v73 = result + 8 * v113++;
    v74 = *(v73 + 32);

    v15 = v74;
    v129 = v74;
    if (v74)
    {
      v5 = *(v74 + 16);
      if (!v5)
      {
        v69 = *v3;
        goto LABEL_32;
      }

      v6 = 0;
      while (1)
      {
        v7 = v6 + 1;
        while (1)
        {
          if (v7 - 1 >= v5)
          {
            __break(1u);
            goto LABEL_46;
          }

          v16 = v0[33];
          v17 = v0[34];
          v18 = v0[32];
          v19 = v15 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * (v7 - 1);
          v20 = *(v127 + 16);
          v20(v18, v19, v17);
          v128 = *(v127 + 56);
          v128(v18, 0, 1, v17);
          sub_226E26D94(v18, v16, &qword_27D7B6A40, &qword_226E68A10);
          if ((*(v127 + 48))(v16, 1, v17) == 1)
          {
            v75 = v0[50];
            v76 = v0[47];
            v77 = v0[48];
            v78 = v0[46];

            goto LABEL_38;
          }

          v21 = v0[43];
          (*v125)(v0[37], v0[33], v0[34]);
          sub_226E62F60();
          v133 = v7;
          if (*(v130 + 16))
          {
            v22 = v0[50];
            v23 = sub_226E18C8C(v0[43]);
            v24 = *v4;
            if (v25)
            {
              v26 = v0[43];
              v27 = v0[39];
              v28 = *(*(v130 + 56) + 8 * v23);

              v24(v26, v27);
              goto LABEL_15;
            }
          }

          else
          {
            v24 = *v4;
          }

          v24(v0[43], v0[39]);
          v28 = MEMORY[0x277D84F90];
LABEL_15:
          v29 = v0[42];
          v30 = v0[39];
          v31 = v0[37];
          sub_226E62FB0();
          v32 = sub_226E635B0();
          v34 = v33;
          v24(v29, v30);
          if (!*(v131 + 16))
          {

LABEL_22:
            v122 = v24;
            v46 = v0[36];
            v47 = v0[37];
            v48 = v0[34];
            v49 = v0[31];
            v50 = v0[29];

            v51 = sub_226E56FC8();
            (*v121)(v49, v51, v50);
            v20(v46, v47, v48);
            v52 = sub_226E638C0();
            v53 = sub_226E63CA0();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = v0[41];
              v55 = v0[36];
              v115 = v0[39];
              v116 = v0[34];
              v118 = v0[31];
              v119 = v0[37];
              v117 = v0[29];
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v136 = v57;
              *v56 = 136315138;
              sub_226E62FB0();
              v58 = sub_226E635B0();
              v60 = v59;
              v122(v54, v115);
              v61 = *v126;
              (*v126)(v55, v116);
              v62 = sub_226E1FC98(v58, v60, &v136);

              *(v56 + 4) = v62;
              _os_log_impl(&dword_226DD4000, v52, v53, "Warning: Missing account ID  %s or personalizedInsightsEnabled disabled", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v57);
              MEMORY[0x22AA8E1B0](v57, -1, -1);
              MEMORY[0x22AA8E1B0](v56, -1, -1);

              (*v120)(v118, v117);
              result = (v61)(v119, v116);
            }

            else
            {
              v8 = v0[36];
              v9 = v0[37];
              v10 = v0[34];
              v11 = v0[31];
              v12 = v0[29];

              v13 = *v126;
              (*v126)(v8, v10);
              (*v120)(v11, v12);
              result = (v13)(v9, v10);
            }

            v15 = v129;
            v3 = v124;
            goto LABEL_7;
          }

          v35 = v0[25];
          v36 = sub_226E20614(v32, v34);
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            goto LABEL_22;
          }

          v39 = v0[26];
          v40 = *(*(v131 + 56) + 8 * v36);
          v41 = [v40 accountID];
          v42 = sub_226E639C0();
          v44 = v43;

          v0[18] = v42;
          v0[19] = v44;
          v45 = swift_task_alloc();
          *(v45 + 16) = v0 + 18;
          LOBYTE(v39) = sub_226E31B70(sub_226E34BC0, v45, v39);

          if (v39 & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v0[28]) + 0x90))(v0[37], v0[27]))
          {
            (*(**(v112 + v111) + 104))(v0[37], v40, v28);
            if (v114)
            {
              v94 = v0[50];
              v95 = v0[47];
              v96 = v0[48];
              v97 = v0[46];
              (*v126)(v0[37], v0[34]);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A58, &qword_226E68A28);
              swift_arrayDestroy();

              swift_setDeallocating();
              v98 = *(v95 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A60, &qword_226E68A30);
              swift_arrayDestroy();

              v100 = v0[44];
              v99 = v0[45];
              v102 = v0[42];
              v101 = v0[43];
              v103 = v0[41];
              v105 = v0[37];
              v104 = v0[38];
              v106 = v0[36];
              v108 = v0[32];
              v107 = v0[33];
              v135 = v0[31];

              v109 = v0[1];

              return v109();
            }
          }

          if ([v40 accountType] != 5)
          {
            break;
          }

          (*v126)(v0[37], v0[34]);

          v3 = v124;
          v15 = v129;
LABEL_7:
          v5 = *(v15 + 16);
          v7 = v133 + 1;
          v4 = v123;
          if (v133 == v5)
          {
            v69 = v128;
            goto LABEL_32;
          }
        }

        v63 = v0[37];
        v64 = v0[38];
        v65 = v0[34];
        sub_226E202A4(0, &qword_280CE9FB0, off_2785CA828);
        v20(v64, v63, v65);
        v66 = v40;
        sub_226E23504(v64, v40, v28);
        MEMORY[0x22AA8D0C0]();
        if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v70 = *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_226E63B10();
        }

        v67 = v0[37];
        v68 = v0[34];
        sub_226E63B30();

        result = (*v126)(v67, v68);
        v110 = v0[20];
        v69 = v128;
        v15 = v129;
        v5 = *(v129 + 16);
        v6 = v133;
        v4 = v123;
        v3 = v124;
        if (v5 == v133)
        {
LABEL_32:
          v71 = v0[32];
          v69(v71, 1, 1, v0[34]);
          sub_226E15E98(v71, &qword_27D7B6A40, &qword_226E68A10);
          goto LABEL_33;
        }
      }
    }
  }

  v89 = v0[50];
  v90 = v0[48];
  v91 = v0[46];
  v93 = v0[33];
  v92 = v0[34];

  (*v3)(v93, 1, 1, v92);
LABEL_38:
  v79 = v0[44];
  v80 = v0[45];
  v82 = v0[42];
  v81 = v0[43];
  v83 = v0[41];
  v85 = v0[37];
  v84 = v0[38];
  v86 = v0[36];
  v87 = v0[33];
  v132 = v0[32];
  v134 = v0[31];

  v88 = v0[1];

  return v88(v110);
}

uint64_t sub_226E2FC80()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = v0[32];
  v10 = v0[33];
  v13 = v0[31];
  v14 = v0[51];

  v11 = v0[1];

  return v11();
}

void *sub_226E2FD74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v52 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - v11;
  v12 = sub_226E62FC0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A40, &qword_226E68A10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v23 = &v37 - v22;
  v24 = 0;
  v54 = v13 + 16;
  v55 = (v13 + 56);
  v53 = v13 + 48;
  v49 = (v7 + 56);
  v50 = (v13 + 32);
  v47 = (v7 + 48);
  v48 = (v13 + 8);
  v43 = v7;
  v46 = (v7 + 32);
  v38 = a1 + 32;
  v39 = a1;
  v56 = MEMORY[0x277D84F90];
  v44 = v6;
  v41 = v20;
  while (1)
  {
    v35 = *(v39 + 16);
    if (v24 == v35)
    {
      break;
    }

    if (v24 >= v35)
    {
      goto LABEL_22;
    }

    v36 = v24 + 1;
    v34 = *(v38 + 8 * v24);

    v24 = v36;
    if (v34)
    {
      v40 = v36;
      v25 = *(v34 + 16);
      if (v25)
      {
        v26 = 0;
        v45 = v34;
        while (v26 < v25)
        {
          (*(v13 + 16))(v20, v34 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v26, v12);
          (*(v13 + 56))(v20, 0, 1, v12);
          sub_226E26D94(v20, v23, &qword_27D7B6A40, &qword_226E68A10);
          if ((*(v13 + 48))(v23, 1, v12) == 1)
          {
            goto LABEL_20;
          }

          v27 = v51;
          (*v50)(v51, v23, v12);
          sub_226E62F60();
          (*v49)(v5, 0, 1, v6);
          (*v48)(v27, v12);
          if ((*v47)(v5, 1, v6) == 1)
          {
            result = sub_226E15E98(v5, &qword_27D7B6940, &qword_226E68A90);
          }

          else
          {
            v28 = *v46;
            v29 = v42;
            (*v46)(v42);
            (v28)(v52, v29, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_226E32EB8(0, v56[2] + 1, 1, v56);
            }

            v31 = v56[2];
            v30 = v56[3];
            if (v31 >= v30 >> 1)
            {
              v56 = sub_226E32EB8(v30 > 1, v31 + 1, 1, v56);
            }

            v32 = v56;
            v56[2] = v31 + 1;
            v33 = v32 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31;
            v6 = v44;
            result = (v28)(v33, v52, v44);
            v34 = v45;
            v20 = v41;
          }

          ++v26;
          v25 = *(v34 + 16);
          if (v26 == v25)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_14:
      (*v55)(v20, 1, 1, v12);
      result = sub_226E15E98(v20, &qword_27D7B6A40, &qword_226E68A10);
      v24 = v40;
    }
  }

  (*v55)(v23, 1, 1, v12);
LABEL_20:

  return v56;
}

uint64_t sub_226E30320()
{
  v1 = sub_226E63380();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_226E63370();
  sub_226E62B30();
  sub_226E34C7C(&unk_280CEA240, MEMORY[0x277CC6610]);
  v4 = sub_226E63360();
  v6 = v5;

  if (!v0)
  {
    v8 = sub_226E634F0();
    sub_226E3437C(v4, v6);
    return v8;
  }

  return result;
}

uint64_t sub_226E30414@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 && (v4 = sub_226E634B0(), v5 >> 60 != 15))
  {
    v8 = v4;
    v9 = v5;
    v10 = sub_226E63350();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_226E63340();
    v13 = sub_226E62B30();
    sub_226E34C7C(&qword_27D7B69F8, MEMORY[0x277CC6610]);
    sub_226E63330();
    if (v2)
    {

      return sub_226E343D0(v8, v9);
    }

    else
    {
      sub_226E343D0(v8, v9);

      return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    }
  }

  else
  {
    v6 = sub_226E62B30();
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_226E30590(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226E635C0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_226E62E60();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = sub_226E630C0();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A00, &qword_226E68938) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_226E63080();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A08, &qword_226E68940) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v16 = sub_226E62FF0();
  v1[18] = v16;
  v17 = *(v16 - 8);
  v1[19] = v17;
  v18 = *(v17 + 64) + 15;
  v1[20] = swift_task_alloc();
  v19 = sub_226E63060();
  v1[21] = v19;
  v20 = *(v19 - 8);
  v1[22] = v20;
  v21 = *(v20 + 64) + 15;
  v1[23] = swift_task_alloc();
  v22 = sub_226E638E0();
  v1[24] = v22;
  v23 = *(v22 - 8);
  v1[25] = v23;
  v24 = *(v23 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E3090C, 0, 0);
}

uint64_t sub_226E3090C()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = sub_226E56FC8();
  v0[29] = v4;
  v5 = *(v3 + 16);
  v0[30] = v5;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_226E638C0();
  v7 = sub_226E63C90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226DD4000, v6, v7, "FinanceKitDataStore : fetching accounts", v8, 2u);
    MEMORY[0x22AA8E1B0](v8, -1, -1);
  }

  v9 = v0[28];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[20];
  v13 = v0[17];

  v14 = *(v11 + 8);
  v0[32] = v14;
  v14(v9, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A10, &qword_226E68948);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_226E62FE0();
  v16 = *(MEMORY[0x277CC66B0] + 4);
  v17 = swift_task_alloc();
  v0[33] = v17;
  *v17 = v0;
  v17[1] = sub_226E30AFC;
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[2];

  return MEMORY[0x282116D98](v18, v19);
}

uint64_t sub_226E30AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[19] + 8))(v2[20], v2[18]);
  if (v0)
  {
    v5 = sub_226E31414;
  }

  else
  {
    v5 = sub_226E30C64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226E30C64()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A18, qword_226E68958);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_226E63070();
  v4 = *(MEMORY[0x277CC6708] + 4);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_226E30D7C;
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[2];

  return MEMORY[0x282116DE0](v7, v6);
}

uint64_t sub_226E30D7C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_226E31638;
  }

  else
  {
    v3 = sub_226E30E90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_226E30E90()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[12];
  v9 = sub_226E63050();
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  v11 = sub_226E2D8F4(sub_226E343E4, v10, v9, MEMORY[0x277CC6F70], sub_226E33118);

  v2(v5, v4, v7);

  v12 = sub_226E638C0();
  v13 = sub_226E63C90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v11 + 16);

    _os_log_impl(&dword_226DD4000, v12, v13, "FinanceKitDataStore : fetched accounts count = %ld", v14, 0xCu);
    MEMORY[0x22AA8E1B0](v14, -1, -1);
  }

  else
  {
  }

  v15 = v75;
  v16 = *(v75 + 200) + 8;
  (*(v75 + 256))(*(v75 + 216), *(v75 + 192));
  v73 = *(v11 + 16);
  if (v73)
  {
    v17 = *(v75 + 56);
    v18 = *(v75 + 32);
    result = sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
    v20 = 0;
    v69 = v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v66 = (v18 + 8);
    v71 = v17;
    v64 = (v17 + 8);
    v21 = MEMORY[0x277D84F98];
    v63 = v11;
    while (1)
    {
      if (v20 >= *(v11 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v26 = v15[8];
      v25 = v15[9];
      v27 = v15[5];
      v28 = v15[6];
      v29 = v15[3];
      v77 = v20;
      v30 = *(v71 + 16);
      v30(v25, v69 + *(v71 + 72) * v20, v28);
      sub_226E62E40();
      v31 = sub_226E635B0();
      v33 = v32;
      (*v66)(v27, v29);
      v30(v26, v25, v28);
      v34 = v31;
      v35 = FHAccount.init(from:)(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_226E20614(v31, v33);
      v38 = v21[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_26;
      }

      v42 = v37;
      if (v21[3] >= v41)
      {
        v15 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = result;
          sub_226E33664();
          result = v49;
        }
      }

      else
      {
        sub_226E333C0(v41, isUniquelyReferenced_nonNull_native);
        result = sub_226E20614(v31, v33);
        v15 = v75;
        if ((v42 & 1) != (v43 & 1))
        {

          return sub_226E64010();
        }
      }

      v44 = v15[9];
      v45 = v15[6];
      if (v42)
      {
        v22 = result;

        v23 = v21[7];
        v24 = *(v23 + 8 * v22);
        *(v23 + 8 * v22) = v35;

        result = (*v64)(v44, v45);
      }

      else
      {
        v21[(result >> 6) + 8] |= 1 << result;
        v46 = (v21[6] + 16 * result);
        *v46 = v34;
        v46[1] = v33;
        *(v21[7] + 8 * result) = v35;
        result = (*v64)(v44, v45);
        v47 = v21[2];
        v40 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v40)
        {
          goto LABEL_27;
        }

        v21[2] = v48;
      }

      v20 = v77 + 1;
      v11 = v63;
      if (v73 == v77 + 1)
      {
        goto LABEL_19;
      }
    }
  }

  v21 = MEMORY[0x277D84F98];
LABEL_19:
  v65 = v15[28];
  v67 = v15[27];
  v51 = v15[22];
  v50 = v15[23];
  v62 = v15[21];
  v68 = v15[26];
  v70 = v15[20];
  v53 = v15[16];
  v52 = v15[17];
  v54 = v15;
  v57 = v15 + 14;
  v56 = v15[14];
  v55 = v57[1];
  v58 = v54[12];
  v72 = v54[13];
  v59 = v54[10];
  v60 = v54[11];
  v74 = v54[9];
  v76 = v54[8];
  v78 = v54[5];

  (*(v55 + 8))(v53, v56);
  (*(v51 + 8))(v50, v62);
  (*(v60 + 8))(v58, v59);

  v61 = v54[1];

  return v61(v21);
}

uint64_t sub_226E31414()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 192));
  v3 = v1;
  v4 = sub_226E638C0();
  v5 = sub_226E63CA0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226DD4000, v4, v5, "Failed to retrive accounts : %@", v6, 0xCu);
    sub_226E15E98(v7, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v7, -1, -1);
    MEMORY[0x22AA8E1B0](v6, -1, -1);
  }

  v10 = *(v0 + 256);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = v4;
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 96);
  v25 = *(v0 + 72);
  v26 = *(v0 + 64);
  v27 = *(v0 + 40);

  v10(v15, v16);
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_226E31638()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 288);
  v5 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 192));
  v6 = v4;
  v7 = sub_226E638C0();
  v8 = sub_226E63CA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226DD4000, v7, v8, "Failed to retrive accounts : %@", v9, 0xCu);
    sub_226E15E98(v10, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v10, -1, -1);
    MEMORY[0x22AA8E1B0](v9, -1, -1);
  }

  v13 = *(v0 + 256);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = v7;
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 128);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  v28 = *(v0 + 72);
  v29 = *(v0 + 64);
  v30 = *(v0 + 40);

  v13(v18, v19);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_226E31894(uint64_t a1)
{
  v27 = a1;
  v26 = sub_226E632A0();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226E62C80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_226E630B0();
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v12 = 0;
    v29 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = v5 + 16;
    v13 = (v5 + 8);
    v23 = result;
    v24 = (v1 + 8);
    v22 = v11;
    while (v12 < *(v10 + 16))
    {
      (*(v5 + 16))(v8, v29 + *(v5 + 72) * v12, v4);
      if (sub_226E62C60())
      {
        v14 = sub_226E62C70();
        v16 = v15;
        v17 = v25;
        sub_226E62D90();
        v18 = sub_226E63280();
        v20 = v19;
        (*v24)(v17, v26);
        if (v14 == v18 && v16 == v20)
        {

          (*v13)(v8, v4);
LABEL_13:

          return 1;
        }

        v21 = sub_226E63FF0();

        result = (*v13)(v8, v4);
        v11 = v22;
        v10 = v23;
        if (v21)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = (*v13)(v8, v4);
      }

      if (v11 == ++v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_226E31B70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_226E31CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_226E63590();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_226E53C0C() & 1) != 0 && (v10 = *sub_226E553A8(), v11 = sub_226E639B0(), v12 = [v10 BOOLForKey_], v10, v11, v12))
  {
    v13 = *(v19 + 56);

    return v13(a1, 1, 1, v6);
  }

  else
  {
    sub_226E63570();
    v15 = sub_226E63530();
    (*(v19 + 8))(v9, v6);
    v16 = FHDateFromNumberOfDays(v15, -365);

    if (v16)
    {
      sub_226E63560();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    (*(v19 + 56))(v5, v17, 1, v6);
    return sub_226E26D94(v5, a1, &qword_27D7B6858, &qword_226E688C0);
  }
}

BOOL sub_226E31EF4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_226E63590();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_226E62E70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  v27 = a1;
  sub_226E62F00();
  (*(v15 + 104))(v19, *MEMORY[0x277CC6FE0], v14);
  sub_226E34C7C(&qword_27D7B6A20, MEMORY[0x277CC7048]);
  sub_226E63AC0();
  sub_226E63AC0();
  v22 = *(v15 + 8);
  v22(v19, v14);
  v22(v21, v14);
  if (v31 != v30)
  {
    return 0;
  }

  sub_226E1A598(v28, v6, &qword_27D7B6858, &qword_226E688C0);
  v23 = v29;
  if ((*(v29 + 48))(v6, 1, v7) != 1)
  {
    (*(v23 + 32))(v13, v6, v7);
    sub_226E62EF0();
    v24 = sub_226E63540();
    v25 = *(v23 + 8);
    v25(v11, v7);
    v25(v13, v7);
    return (v24 & 1) == 0;
  }

  sub_226E15E98(v6, &qword_27D7B6858, &qword_226E688C0);
  return 1;
}

id FinanceKitDataStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitDataStore.init()()
{
  v1 = OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator;
  type metadata accessor for TransactionBiomeStreamDonator();
  sub_226E48FC8(v4);
  *&v0[v1] = sub_226E48FE0(v4);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FinanceKitDataStore();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FinanceKitDataStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitDataStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226E323C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226E630F0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C0, &qword_226E688B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_226E630A0();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E32514, 0, 0);
}

uint64_t sub_226E32514()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69F0, &qword_226E68908);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_226E63090();
  v6 = MEMORY[0x277CC7C08];
  v0[5] = v3;
  v0[6] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  v8 = *(MEMORY[0x277CC6710] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_226E32660;
  v10 = v0[11];
  v11 = v0[8];

  return MEMORY[0x282116DF0](v10, v0 + 2);
}

uint64_t sub_226E32660()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_226E32850;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = sub_226E3277C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E3277C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];
  sub_226E630E0();
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226E32850()
{
  v1 = v0[12];
  v2 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_226E328F4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_226E1A614;

  return v7();
}

uint64_t sub_226E329DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_226E17C50;

  return v8();
}

uint64_t sub_226E32AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_226E1A598(a3, v25 - v11, &qword_27D7B6870, &qword_226E683B0);
  v13 = sub_226E63B80();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_226E15E98(v12, &qword_27D7B6870, &qword_226E683B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_226E63B70();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_226E63B40();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_226E639E0() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);

    return v23;
  }

LABEL_8:
  sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_226E32DC0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1C5F8;

  return v7(a1);
}

size_t sub_226E32EB8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6948, &qword_226E68A40);
  v10 = *(sub_226E635C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_226E635C0() - 8);
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

void *sub_226E33090(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_226E33118(size_t a1, int64_t a2, char a3)
{
  result = sub_226E331E4(a1, a2, a3, *v3, &qword_27D7B6A30, &unk_226E68A00, MEMORY[0x277CC6F70]);
  *v3 = result;
  return result;
}

size_t sub_226E3315C(size_t a1, int64_t a2, char a3)
{
  result = sub_226E331E4(a1, a2, a3, *v3, &qword_27D7B6948, &qword_226E68A40, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_226E331A0(size_t a1, int64_t a2, char a3)
{
  result = sub_226E331E4(a1, a2, a3, *v3, &qword_27D7B6A78, &qword_226E68A48, MEMORY[0x277CC7678]);
  *v3 = result;
  return result;
}

size_t sub_226E331E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_226E333C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A28, &qword_226E689F8);
  v39 = a2;
  result = sub_226E63F60();
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
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
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

id sub_226E33664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A28, &qword_226E689F8);
  v2 = *v0;
  v3 = sub_226E63F50();
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

uint64_t (*sub_226E337D0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_226E33838;
  }

  __break(1u);
  return result;
}

void *sub_226E33840(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_226E3399C(unint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if ((a4 + 1) >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

void sub_226E33AFC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v47 = v2;
  if (v2 && (v3 = [v2 passesOfStyles_]) != 0)
  {
    v4 = v3;
    sub_226E202A4(0, &qword_280CE9F90, 0x277D37F98);
    v5 = sub_226E63AF0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v54 = v5 & 0xC000000000000001;
  v55 = v5 & 0xFFFFFFFFFFFFFF8;
  v50 = a1;
  v51 = v5 >> 62;
  v12 = FHRelativeDBDirectoryName;
  v48 = v10;
  v49 = a1 + 64;
  while (v9)
  {
    v13 = v9;
LABEL_16:
    v9 = (v13 - 1) & v13;
    if (v5)
    {
      v15 = *(*(a1 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v13)))));
      v52 = (v13 - 1) & v13;
      if (v51)
      {
        v16 = sub_226E63DE0();
      }

      else
      {
        v16 = *(v55 + 16);
      }

      v56 = v15;

      if (v16)
      {
        v17 = 0;
        v53 = v16;
        while (1)
        {
          if (v54)
          {
            v18 = MEMORY[0x22AA8D480](v17, v5);
          }

          else
          {
            if (v17 >= *(v55 + 16))
            {
              goto LABEL_59;
            }

            v18 = *(v5 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_58;
          }

          v21 = [v18 v12[336]];
          if (v21)
          {
            v22 = v21;
            v23 = [v21 isPeerPaymentPass];

            if (v23)
            {
              if ([v56 accountType] == 1)
              {
                break;
              }
            }
          }

          v24 = [v19 v12[336]];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 isAppleCardPass];

            if (v26)
            {
              if ([v56 accountType] == 2)
              {
                break;
              }
            }
          }

          v27 = v5;
          v28 = [v19 v12[336]];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 primaryAccountIdentifier];

            v31 = sub_226E639C0();
            v33 = v32;
          }

          else
          {
            v31 = 0;
            v33 = 0;
          }

          v34 = [v56 externalAccountID];
          v35 = sub_226E639C0();
          v37 = v36;

          if (v33)
          {
            if (v31 == v35 && v33 == v37)
            {
              v5 = v27;

              goto LABEL_45;
            }

            v38 = sub_226E63FF0();

            if (v38)
            {
              v5 = v27;
LABEL_45:

              v12 = FHRelativeDBDirectoryName;
LABEL_46:
              v39 = [v19 v12[336]];
              if (v39)
              {
                v40 = v39;
                v41 = [v39 devicePrimaryPaymentApplication];
                v42 = v41;
                if (v41)
                {
                  v43 = v41;
                  v44 = [v43 dpanSuffix];
                  [v56 setDpanSuffix_];

                  v45 = [v43 virtualCardSuffix];
                  [v56 setVirtualCardSuffix_];
                }

                v46 = [v40 primaryAccountNumberSuffix];
                if (!v46)
                {
                  sub_226E639C0();
                  v46 = sub_226E639B0();
                }

                [v56 setFpanSuffix_];
              }

              else
              {
              }

              goto LABEL_9;
            }
          }

          else
          {
          }

          v5 = v27;
          v12 = FHRelativeDBDirectoryName;
          ++v17;
          if (v20 == v53)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_46;
      }

LABEL_8:

LABEL_9:
      v6 = v49;
      a1 = v50;
      v10 = v48;
      v9 = v52;
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return;
    }

    v13 = *(v6 + 8 * v14);
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_226E34034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B69C8, &qword_226E688B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_226E62B30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v19 = *(v12 + 48);
  if (v19(a1, 1, v11) == 1 && v19(a2, 1, v11) == 1)
  {
    v20 = 0;
  }

  else
  {
    sub_226E1A598(a1, v10, &qword_27D7B69C8, &qword_226E688B8);
    if (v19(v10, 1, v11) == 1)
    {
      sub_226E15E98(v10, &qword_27D7B69C8, &qword_226E688B8);
      v20 = v19(a2, 1, v11) != 1;
    }

    else
    {
      v21 = v10;
      v22 = *(v12 + 32);
      v22(v18, v21, v11);
      sub_226E1A598(a2, v8, &qword_27D7B69C8, &qword_226E688B8);
      if (v19(v8, 1, v11) == 1)
      {
        (*(v12 + 8))(v18, v11);
        sub_226E15E98(v8, &qword_27D7B69C8, &qword_226E688B8);
        v20 = 0;
      }

      else
      {
        v22(v16, v8, v11);
        sub_226E34C7C(&qword_27D7B6A38, MEMORY[0x277CC6610]);
        v23 = sub_226E639A0();
        v24 = *(v12 + 8);
        v24(v16, v11);
        v24(v18, v11);
        v20 = v23 ^ 1;
      }
    }
  }

  return v20 & 1;
}

uint64_t sub_226E3437C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226E343D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226E3437C(a1, a2);
  }

  return a1;
}

uint64_t dispatch thunk of FinanceKitDataStore.streamTransactions(since:savedAccounts:transactionHandler:accountHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *((*MEMORY[0x277D85000] & *v7) + 0x58);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_226E17C50;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of FinanceKitDataStore.fetchAccounts(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E346F8;

  return v8(a1);
}

uint64_t sub_226E346F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226E347F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226E17C50;

  return sub_226E2E164(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_226E348C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_226E1A614;

  return sub_226E328F4(v2, v3, v5);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226E349C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E1A614;

  return sub_226E329DC(a1, v4, v5, v7);
}

uint64_t sub_226E34A94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E1A614;

  return sub_226E32DC0(a1, v5);
}

uint64_t sub_226E34BC0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226E63FF0() & 1;
  }
}

unint64_t sub_226E34C18()
{
  result = qword_27D7B6A70;
  if (!qword_27D7B6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B6A68, &qword_226E68A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6A70);
  }

  return result;
}

uint64_t sub_226E34C7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226E34CC4()
{
  v0 = sub_226E3A188(&unk_283A7A2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A80, &qword_226E68A70);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_226E34D48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226E63490();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_226E34DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url;
  swift_beginAccess();
  return sub_226E1A598(v1 + v3, a1, &qword_27D7B6A98, &qword_226E68A78);
}

uint64_t sub_226E34E1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url;
  swift_beginAccess();
  sub_226E3A28C(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_226E34EE4()
{
  v1 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_226E34F30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id UpcomingPayments.init(accountTypes:transactionTypes:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = sub_226E63490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A98, &qword_226E68A78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v47 - v11;
  v12 = sub_226E638E0();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionCadence;
  v16 = sub_226E3A188(&unk_283A7A410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A80, &qword_226E68A70);
  swift_arrayDestroy();
  *&v2[v15] = v16;
  *&v2[OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionKeys] = &unk_283A7A490;
  v17 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url;
  v47 = v5;
  v18 = *(v5 + 56);
  v52 = v4;
  v18(&v2[OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_url], 1, 1, v4);
  v19 = OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures;
  *&v2[OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionFeatures] = 0;
  v55 = type metadata accessor for UpcomingPayments();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = @"ModelResources/upcoming_payments_classifier_v1";
  v23 = sub_226E639B0();
  v24 = [v21 pathForResource:v22 ofType:v23];

  if (v24)
  {
    sub_226E639C0();

    v25 = v50;
    sub_226E63460();

    v18(v25, 0, 1, v52);
    swift_beginAccess();
    sub_226E3A28C(v25, &v3[v17]);
    swift_endAccess();
    type metadata accessor for PredictionFeatures();
    PredictionFeatures.__allocating_init(accountTypes:transactionTypes:)(v53, v54);
    v27 = v26;

    swift_beginAccess();
    v28 = *&v3[v19];
    *&v3[v19] = v27;
  }

  else
  {
    v29 = v8;
    v30 = v47;
    v31 = v52;

    v32 = sub_226E56FC8();
    v34 = v48;
    v33 = v49;
    (*(v48 + 16))(v51, v32, v49);
    v35 = v21;
    v36 = sub_226E638C0();
    v37 = sub_226E63C90();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v38 = 136315138;
      v39 = [v35 bundleURL];
      LODWORD(v53) = v37;
      v40 = v39;
      sub_226E63480();

      sub_226E3D208(&qword_27D7B6AA0, MEMORY[0x277CC9260]);
      v41 = sub_226E63FE0();
      v43 = v42;
      (*(v30 + 8))(v29, v31);
      v44 = sub_226E1FC98(v41, v43, &v56);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_226DD4000, v36, v53, "Failed to load model from bundleURL %s", v38, 0xCu);
      v45 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x22AA8E1B0](v45, -1, -1);
      MEMORY[0x22AA8E1B0](v38, -1, -1);

      (*(v34 + 8))(v51, v49);
    }

    else
    {

      (*(v34 + 8))(v51, v33);
    }
  }

  v57.receiver = v3;
  v57.super_class = v55;
  return objc_msgSendSuper2(&v57, sel_init);
}

uint64_t sub_226E35598()
{
  v1 = v0;
  v2 = sub_226E638E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AA8, &qword_226E68A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for IntermediatePrediction();
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A98, &qword_226E68A78);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v65 - v18;
  v20 = sub_226E63490();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v80 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = 1;
  if ((static FinHealthFeatureFlag.isEnabled(_:)(aBlock) & 1) == 0)
  {
    v29 = sub_226E56FC8();
    (*(v3 + 16))(v6, v29, v2);
    v30 = sub_226E638C0();
    v31 = sub_226E63CA0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226DD4000, v30, v31, "UpcomingPayment batchPredictions: Maps Data Donation feature flag(FinHealthMapsDataDonation) is disabled", v32, 2u);
      MEMORY[0x22AA8E1B0](v32, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return MEMORY[0x277D84F90];
  }

  v24 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity_];
  v76 = sub_226E3A688(v24);
  v25 = objc_opt_self();
  aBlock[4] = sub_226E35EBC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E23500;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);
  v27 = [v25 initWithBuilder_];
  _Block_release(v26);
  v28 = [v24 clearDataWithClauseBuilder_];
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v28);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {

    sub_226E15E98(v19, &qword_27D7B6A98, &qword_226E68A78);
    return v76;
  }

  v72 = v27;
  v34 = v80;
  (*(v21 + 32))(v80, v19, v20);
  v35 = objc_allocWithZone(FHModel);
  v36 = @"UpcomingPaymentsClassifier";
  v37 = sub_226E63470();
  v73 = [v35 initWithModelURL:v37 modelName:v36];

  v38 = MEMORY[0x277D85000];
  v39 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  if (!v39)
  {

    (*(v21 + 8))(v34, v20);
    return v76;
  }

  v40 = v39;
  v69 = v21;
  v70 = v20;
  v67 = v10;
  v68 = v11;
  v41 = (*((*v38 & *v39) + 0x70))();

  v42 = 1 << *(v41 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v41 + 64);
  v45 = (v42 + 63) >> 6;
  v75 = "ource_identifier";
  v66 = (v79 + 48);

  v46 = 0;
  v47 = v73;
  v74 = v24;
  while (v44)
  {
LABEL_20:
    v49 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v50 = v49 | (v46 << 6);
    v51 = *(*(v41 + 56) + 8 * v50);
    if (*(v51 + 16))
    {
      v52 = (*(v41 + 48) + 16 * v50);
      v53 = v52[1];
      v71 = *v52;

      v54 = sub_226E20614(0xD000000000000017, v75 | 0x8000000000000000);
      if ((v55 & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_226E2233C(*(v51 + 56) + 32 * v54, aBlock);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v81 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v81 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v81 == 4)
      {
        v56 = v47;
        v57 = v67;
        (*((*MEMORY[0x277D85000] & *v1) + 0xB0))(v71, v53, v56, v51);
        if ((*v66)(v57, 1, v68) != 1)
        {
          v58 = v78;
          sub_226E3C6A0(v57, v78);
          if (*(*(v58 + *(v68 + 24)) + 16))
          {
            sub_226E3C760(v58, v77);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = v73;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v76 = sub_226E38E94(0, v76[2] + 1, 1, v76);
            }

            v60 = v76;
            v62 = v76[2];
            v61 = v76[3];
            v63 = v62 + 1;
            if (v62 >= v61 >> 1)
            {
              v71 = v62 + 1;
              v60 = sub_226E38E94(v61 > 1, v62 + 1, 1, v76);
              v63 = v71;
            }

            v60[2] = v63;
            v64 = (*(v79 + 80) + 32) & ~*(v79 + 80);
            v76 = v60;
            sub_226E3C6A0(v77, v60 + v64 + *(v79 + 72) * v62);
            v58 = v78;
          }

          else
          {
            v47 = v73;
          }

          sub_226E3C704(v58);
          goto LABEL_14;
        }

        sub_226E15E98(v57, &qword_27D7B6AA8, &qword_226E68A80);

        v47 = v73;
        v24 = v74;
      }

      else
      {
LABEL_14:

        v24 = v74;
      }
    }
  }

  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v45)
    {

      (*(v69 + 8))(v80, v70);

      return v76;
    }

    v44 = *(v41 + 64 + 8 * v48);
    ++v46;
    if (v44)
    {
      v46 = v48;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_226E35EBC(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = @"!=";

    MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E733E0);

    v3 = sub_226E639B0();

    [a1 addIntegerClause:v2 fieldName:v3 expression:2];
  }
}

uint64_t sub_226E35FA4(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v51 = sub_226E638E0();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v51);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v50 = sub_226E635C0();
  v10 = *(*(v50 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v50);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v36 - v14;
  result = MEMORY[0x28223BE20](v13);
  v45 = &v36 - v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v49 = (v16 + 48);
    v41 = (v16 + 16);
    v42 = (v16 + 32);
    v39 = (v3 + 16);
    v40 = (v16 + 8);
    v38 = (v3 + 8);
    v20 = (a1 + 40);
    *&v17 = 136315138;
    v37 = v17;
    v43 = v9;
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;

      sub_226E635A0();
      v23 = v50;
      if ((*v49)(v9, 1, v50) == 1)
      {
        sub_226E15E98(v9, &qword_27D7B6940, &qword_226E68A90);
        v24 = sub_226E56FC8();
        v25 = v44;
        (*v39)(v44, v24, v51);

        v26 = sub_226E638C0();
        v27 = sub_226E63CA0();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v52 = v29;
          *v28 = v37;
          *(v28 + 4) = sub_226E1FC98(v22, v21, &v52);
          _os_log_impl(&dword_226DD4000, v26, v27, "Failed to convert transactionID %s to UUID", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x22AA8E1B0](v29, -1, -1);
          MEMORY[0x22AA8E1B0](v28, -1, -1);
        }

        (*v38)(v25, v51);

        v9 = v43;
      }

      else
      {
        v30 = v45;
        (*v42)(v45, v9, v23);
        v31 = v47;
        (*v41)(v47, v30, v23);
        v32 = v46;
        v33 = v31;
        v34 = v23;
        sub_226E2035C(v46, v33);
        v35 = *v40;
        (*v40)(v32, v34);
        v35(v30, v34);
      }

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  return result;
}

void sub_226E363E8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v252 = a1;
  v253 = a2;
  v264 = a5;
  v244 = sub_226E63030();
  v242 = *(v244 - 8);
  v8 = *(v242 + 64);
  MEMORY[0x28223BE20](v244);
  v240 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AB0, &qword_226E68A88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v239 = &v225 - v12;
  v13 = sub_226E63040();
  v250 = *(v13 - 8);
  v251 = v13;
  v14 = *(v250 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v246 = &v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v248 = &v225 - v17;
  v249 = sub_226E62FD0();
  v247 = *(v249 - 8);
  v18 = *(v247 + 64);
  v19 = MEMORY[0x28223BE20](v249);
  v234 = &v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v241 = &v225 - v21;
  v245 = sub_226E63590();
  v243 = *(v245 - 8);
  v22 = *(v243 + 64);
  v23 = MEMORY[0x28223BE20](v245);
  v233 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v237 = &v225 - v25;
  v238 = sub_226E62D70();
  v236 = *(v238 - 8);
  v26 = *(v236 + 64);
  v27 = MEMORY[0x28223BE20](v238);
  v231 = &v225 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v235 = &v225 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v255 = &v225 - v32;
  v33 = sub_226E635C0();
  v256 = *(v33 - 8);
  v257 = v33;
  v34 = *(v256 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v230 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v229 = &v225 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v232 = &v225 - v40;
  MEMORY[0x28223BE20](v39);
  v254 = &v225 - v41;
  v42 = sub_226E638E0();
  v43 = *(v42 - 1);
  v44 = v43[8];
  v45 = MEMORY[0x28223BE20](v42);
  v269 = &v225 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v259 = &v225 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v258 = &v225 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v263 = &v225 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = &v225 - v53;
  v283[0] = sub_226E3A188(MEMORY[0x277D84F90]);
  v262 = v5;
  v55 = *(v5 + OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionKeys);

  sub_226E3C7C4(v55, v283, a4);
  v228 = 0;
  v260 = a4;

  v56 = sub_226E56FC8();
  v58 = v43 + 2;
  v57 = v43[2];
  v266 = v56;
  v267 = v57;
  (v57)(v54);
  v59 = sub_226E638C0();
  v60 = sub_226E63C80();
  v61 = os_log_type_enabled(v59, v60);
  v265 = v42;
  v268 = v43;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    *&v280 = v261;
    *v62 = 136315138;
    swift_beginAccess();

    v63 = a3;
    v64 = sub_226E63970();
    v66 = v65;

    v67 = v64;
    a3 = v63;
    v68 = sub_226E1FC98(v67, v66, &v280);
    v58 = v43 + 2;

    *(v62 + 4) = v68;
    v42 = v265;
    v43 = v268;
    _os_log_impl(&dword_226DD4000, v59, v60, "predictionFeatures: %s", v62, 0xCu);
    v69 = v261;
    __swift_destroy_boxed_opaque_existential_1Tm(v261);
    MEMORY[0x22AA8E1B0](v69, -1, -1);
    MEMORY[0x22AA8E1B0](v62, -1, -1);
  }

  v70 = v43[1];
  v70(v54, v42);
  swift_beginAccess();
  v71 = v283[0];

  sub_226E38488(v72);

  v73 = sub_226E63950();

  v74 = [a3 predictClassProbabilitiesWithDict_];

  if (!v74)
  {
    v87 = v269;
    v267(v269, v266, v42);
    v88 = sub_226E638C0();
    v89 = sub_226E63CA0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_226DD4000, v88, v89, "failed to predict due to potential feauture name mismatch", v90, 2u);
      MEMORY[0x22AA8E1B0](v90, -1, -1);
    }

    v70(v87, v42);
    goto LABEL_88;
  }

  sub_226E3CA2C();
  v75 = sub_226E63960();

  v76 = v263;
  v267(v263, v266, v42);

  v77 = sub_226E638C0();
  v78 = sub_226E63C80();

  v79 = os_log_type_enabled(v77, v78);
  v269 = v75;
  v261 = v71;
  v226 = v70;
  v227 = v58;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v280 = v81;
    *v80 = 136315138;
    v82 = sub_226E63970();
    v84 = v70;
    v85 = sub_226E1FC98(v82, v83, &v280);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_226DD4000, v77, v78, "prediction: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    v86 = v81;
    v75 = v269;
    MEMORY[0x22AA8E1B0](v86, -1, -1);
    MEMORY[0x22AA8E1B0](v80, -1, -1);

    v84(v76, v42);
  }

  else
  {

    v70(v76, v42);
  }

  v91 = v75 + 64;
  v92 = 1 << v75[32];
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v75 + 8);
  if (v94)
  {
    v95 = 0;
    v96 = __clz(__rbit64(v94));
    v97 = (v94 - 1) & v94;
    v98 = (v92 + 63) >> 6;
LABEL_18:
    sub_226E3CA78(*(v75 + 6) + 40 * v96, &v274);
    v101 = *(*(v75 + 7) + 8 * v96);
    *(&v276 + 1) = v101;
    v277 = v274;
    v278 = v275;
    v279 = v276;

    v102 = v101;
    v103 = &qword_226E68A98;
    while (v97)
    {
      v104 = v95;
LABEL_26:
      v105 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v106 = v105 | (v104 << 6);
      sub_226E3CA78(*(v75 + 6) + 40 * v106, v272);
      v107 = *(*(v75 + 7) + 8 * v106);
      *(&v273 + 1) = v107;
      v274 = v272[0];
      v42 = &v274;
      v275 = v272[1];
      v276 = v273;
      sub_226E1A598(&v277, v272, &qword_27D7B6AC0, &qword_226E68A98);
      v108 = *(&v273 + 1);
      v109 = v107;
      [v108 doubleValue];
      v111 = v110;

      sub_226E1A598(&v274, v270, &qword_27D7B6AC0, &qword_226E68A98);
      v112 = v271;
      [v271 doubleValue];
      v114 = v113;

      sub_226E3CAD4(v270);
      sub_226E3CAD4(v272);
      if (v111 >= v114)
      {
        sub_226E15E98(&v274, &qword_27D7B6AC0, &qword_226E68A98);
      }

      else
      {
        sub_226E15E98(&v277, &qword_27D7B6AC0, &qword_226E68A98);
        v277 = v274;
        v278 = v275;
        v279 = v276;
      }

      v95 = v104;
      v75 = v269;
    }

    while (1)
    {
      v104 = (v95 + 1);
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v104 >= v98)
      {

        v280 = v277;
        v281 = v278;
        v282 = v279;
        v42 = v265;
        goto LABEL_29;
      }

      v97 = *&v91[8 * v104];
      ++v95;
      if (v97)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v99 = 0;
  v98 = (v92 + 63) >> 6;
  while (v98 - 1 != v99)
  {
    v95 = (v99 + 1);
    v100 = *&v75[8 * v99 + 72];
    v94 -= 64;
    ++v99;
    if (v100)
    {
      v97 = (v100 - 1) & v100;
      v96 = __clz(__rbit64(v100)) - v94;
      goto LABEL_18;
    }
  }

  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
LABEL_29:
  sub_226E1A598(&v280, &v277, &qword_27D7B6AC8, qword_226E68AA0);
  if (*(&v278 + 1))
  {

    v274 = v277;
    v275 = v278;
    *&v276 = v279;
    if (swift_dynamicCast())
    {
      v104 = *(&v277 + 1);
      v98 = v277;
      goto LABEL_34;
    }
  }

  else
  {
    sub_226E15E98(&v277, &qword_27D7B6AC8, qword_226E68AA0);
  }

  v104 = 0xED00006E6F697463;
  v98 = 0x69646572705F6F6ELL;
LABEL_34:
  sub_226E1A598(&v280, &v277, &qword_27D7B6AC8, qword_226E68AA0);
  if (*(&v278 + 1))
  {
    v115 = *(&v279 + 1);
    [*(&v279 + 1) doubleValue];
    v117 = v116;

    sub_226E3CAD4(&v277);
  }

  else
  {
    sub_226E15E98(&v277, &qword_27D7B6AC8, qword_226E68AA0);
    v117 = 0.0;
  }

  v103 = *(v262 + OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionCadence);
  if (!v103[2] || (v118 = *(v262 + OBJC_IVAR____TtC13FinHealthCore16UpcomingPayments_predictionCadence), , sub_226E20614(v98, v104), v120 = v119, , (v120 & 1) == 0))
  {

    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);
    goto LABEL_44;
  }

  if (v117 < 0.66)
  {
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);
LABEL_41:

LABEL_42:

LABEL_44:
    v121 = v264;
    v122 = type metadata accessor for IntermediatePrediction();
    (*(*(v122 - 8) + 56))(v121, 1, 1, v122);
LABEL_89:

    return;
  }

  if (!*(v260 + 16) || (v123 = sub_226E20614(0x6E5F797469746E65, 0xEB00000000656D61), v124 = v260, (v125 & 1) == 0) || (sub_226E2233C(*(v260 + 56) + 32 * v123, &v277), (swift_dynamicCast() & 1) == 0))
  {
LABEL_81:

    v153 = v259;
    v267(v259, v266, v42);

    v129 = v42;
    v154 = sub_226E638C0();
    v155 = sub_226E63CA0();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      *&v277 = v157;
      *v156 = 136315138;
      v158 = sub_226E63970();
      v160 = sub_226E1FC98(v158, v159, &v277);

      *(v156 + 4) = v160;
      _os_log_impl(&dword_226DD4000, v154, v155, "Skipping due to empty entity name %s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v157);
      MEMORY[0x22AA8E1B0](v157, -1, -1);
      MEMORY[0x22AA8E1B0](v156, -1, -1);

      v161 = v259;
LABEL_87:
      v226(v161, v129);
      sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);
LABEL_88:
      v168 = type metadata accessor for IntermediatePrediction();
      (*(*(v168 - 8) + 56))(v264, 1, 1, v168);
      goto LABEL_89;
    }

LABEL_86:

    v161 = v153;
    goto LABEL_87;
  }

  v95 = v274;
  v126 = HIBYTE(*(&v274 + 1)) & 0xFLL;
  if ((*(&v274 + 1) & 0x2000000000000000) == 0)
  {
    v126 = v274 & 0xFFFFFFFFFFFFLL;
  }

  if (!v126)
  {

    goto LABEL_81;
  }

  v263 = *(&v274 + 1);
  if (*(v124 + 16))
  {
    v127 = sub_226E20614(0xD000000000000012, 0x8000000226E73240);
    if (v128)
    {
      sub_226E2233C(*(v260 + 56) + 32 * v127, &v277);
      if (swift_dynamicCast())
      {
        v129 = v42;
        v131 = *(&v274 + 1);
        v130 = v274;
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v129 = v42;
  v130 = 0;
  v131 = 0xE000000000000000;
LABEL_59:
  v132 = sub_226E63A10();
  v262 = v131;
  if (v132 > 0)
  {
    v95 = v130;
  }

  else
  {
    v131 = v263;
  }

  if (!*(v260 + 16) || (v133 = sub_226E20614(0x79636E6572727563, 0xED000065646F635FLL), v134 = v260, (v135 & 1) == 0) || (sub_226E2233C(*(v260 + 56) + 32 * v133, &v277), (swift_dynamicCast() & 1) == 0))
  {
LABEL_84:

    v153 = v258;
    v267(v258, v266, v129);

    v154 = sub_226E638C0();
    v162 = sub_226E63CA0();

    if (os_log_type_enabled(v154, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v277 = v164;
      *v163 = 136315138;
      v165 = sub_226E63970();
      v167 = sub_226E1FC98(v165, v166, &v277);

      *(v163 + 4) = v167;
      _os_log_impl(&dword_226DD4000, v154, v162, "Skipping due to currency code not three character string%s", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v164);
      MEMORY[0x22AA8E1B0](v164, -1, -1);
      MEMORY[0x22AA8E1B0](v163, -1, -1);

      v161 = v258;
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v259 = v95;
  v225 = v274;
  if (sub_226E63A10() != 3)
  {

    goto LABEL_84;
  }

  if (!*(v134 + 16) || (v136 = sub_226E20614(0x695F656372756F73, 0xE900000000000064), (v137 & 1) == 0))
  {
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);

    goto LABEL_41;
  }

  sub_226E2233C(*(v134 + 56) + 32 * v136, &v277);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);

    goto LABEL_42;
  }

  v138 = *(&v274 + 1);
  if (!v103[2] || (v139 = v274, v140 = sub_226E20614(v98, v104), (v141 & 1) == 0))
  {
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);

    goto LABEL_88;
  }

  v268 = v131;
  if (!*(v260 + 16) || (v142 = *(v103[7] + 8 * v140), v143 = sub_226E20614(0xD000000000000010, 0x8000000226E73260), (v144 & 1) == 0) || (sub_226E2233C(*(v260 + 56) + 32 * v143, &v277), (swift_dynamicCast() & 1) == 0) || !*(v260 + 16) || (v145 = *&v274, v146 = sub_226E20614(0x615F746E756F6D61, 0xEE00656761726576), (v147 & 1) == 0) || (sub_226E2233C(*(v260 + 56) + 32 * v146, &v277), (swift_dynamicCast() & 1) == 0))
  {
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);

LABEL_94:
    v169 = type metadata accessor for IntermediatePrediction();
    (*(*(v169 - 8) + 56))(v264, 1, 1, v169);
    goto LABEL_89;
  }

  v148 = *&v274;
  v149 = v255;
  sub_226E635A0();
  if ((*(v256 + 48))(v149, 1, v257) == 1)
  {
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);

    v150 = &qword_27D7B6940;
    v151 = &qword_226E68A90;
    v152 = v255;
LABEL_107:
    sub_226E15E98(v152, v150, v151);
    goto LABEL_94;
  }

  (*(v256 + 32))(v254, v255, v257);
  if (!*(v260 + 16))
  {
    goto LABEL_106;
  }

  v170 = sub_226E20614(0xD00000000000001BLL, 0x8000000226E73000);
  if ((v171 & 1) == 0)
  {
    goto LABEL_106;
  }

  sub_226E2233C(*(v260 + 56) + 32 * v170, &v277);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_106;
  }

  v172 = v274;
  if ((v98 != 0x796C68746E6F6DLL || v104 != 0xE700000000000000) && (sub_226E63FF0() & 1) == 0)
  {
    v175 = v145 + v142 * 0x15180uLL;
    goto LABEL_110;
  }

  if (!*(v260 + 16) || (v173 = sub_226E20614(0xD000000000000015, 0x8000000226E732B0), (v174 & 1) == 0) || (sub_226E2233C(*(v260 + 56) + 32 * v173, &v277), !swift_dynamicCast()))
  {
LABEL_106:

    (*(v256 + 8))(v254, v257);
    v150 = &qword_27D7B6AC8;
    v151 = qword_226E68AA0;
    v152 = &v280;
    goto LABEL_107;
  }

  v175 = *&v274;
LABEL_110:
  if (*(v260 + 16) && (v176 = sub_226E20614(0x746361736E617274, 0xEF7364695F6E6F69), (v177 & 1) != 0) && (sub_226E2233C(*(v260 + 56) + 32 * v176, &v277), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40), (swift_dynamicCast() & 1) != 0))
  {
    v178 = v274;
  }

  else
  {
    v178 = MEMORY[0x277D84F90];
  }

  v265 = v178;
  v267 = objc_opt_self();
  v179 = swift_allocObject();
  v180 = v268;
  *(v179 + 16) = v259;
  *(v179 + 24) = v180;
  *(v179 + 32) = v139;
  *(v179 + 40) = v138;
  *(v179 + 48) = v148;
  *(v179 + 56) = v175;
  v181 = v253;
  *(v179 + 64) = v252;
  *(v179 + 72) = v181;
  *(v179 + 80) = v172;
  *&v279 = sub_226E3CB28;
  *(&v279 + 1) = v179;
  *&v277 = MEMORY[0x277D85DD0];
  *(&v277 + 1) = 1107296256;
  *&v278 = sub_226E23500;
  *(&v278 + 1) = &block_descriptor_9;
  v182 = _Block_copy(&v277);

  v183 = [v267 initWithBuilder_];
  _Block_release(v182);
  v267 = v183;
  if (!v183)
  {
    goto LABEL_128;
  }

  v266 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity_];
  if (v266)
  {
    [v266 insertOrUpdate:v267 upsert:1];
  }

  if ((*&v148 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_126;
  }

  if (v148 <= -9.22337204e18)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v148 >= 9.22337204e18)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v184 = MEMORY[0x22AA8D350](v148);
  v185 = v184;
  v187 = v186;
  v189 = v188;
  v190 = HIDWORD(v184);
  v226 = HIWORD(v184);
  v255 = (v186 >> 16);
  v258 = HIDWORD(v186);
  v260 = HIWORD(v186);
  LODWORD(v227) = HIWORD(v188);
  v191 = objc_allocWithZone(MEMORY[0x277CCA980]);
  LODWORD(v277) = v185;
  WORD2(v277) = v190;
  WORD3(v277) = v226;
  WORD4(v277) = v187;
  WORD5(v277) = v255;
  WORD6(v277) = v258;
  HIWORD(v277) = v260;
  LOWORD(v278) = v189;
  WORD1(v278) = v227;
  v192 = [v191 initWithDecimal_];
  v193 = [objc_opt_self() defaultDatabaseAmountMultiplier];
  if (v193)
  {
    v194 = v193;

    v195 = [v192 decimalNumberByDividingBy_];
    v269 = v195;

    [v195 decimalValue];
    v196 = v235;
    sub_226E62D80();
    sub_226E63500();
    v197 = sub_226E53234();
    v198 = v232;
    asUUID(rawString:lossy:)(v252, v253, v197, v232);
    v199 = sub_226E62D60();
    v201 = v200;
    v203 = v202;
    v204 = MEMORY[0x22AA8D320](0);
    v207 = MEMORY[0x22AA8D330](v199, v201, v203, v204, v205, v206);
    v208 = v247;
    v209 = MEMORY[0x277CC7788];
    if ((v207 & 1) == 0)
    {
      v209 = MEMORY[0x277CC7790];
    }

    v210 = v241;
    v211 = v249;
    (*(v247 + 104))(v241, *v209, v249);
    v212 = v257;
    v213 = *(v256 + 16);
    v213(v229, v198, v257);
    v213(v230, v254, v212);
    (*(v236 + 16))(v231, v196, v238);
    (*(v208 + 16))(v234, v210, v211);
    v277 = 0u;
    v278 = 0u;
    *&v279 = 0;
    BYTE8(v279) = 1;
    v214 = v243;
    (*(v243 + 16))(v233, v237, v245);
    v215 = sub_226E63390();
    (*(*(v215 - 8) + 56))(v239, 1, 1, v215);
    (*(v242 + 104))(v240, *MEMORY[0x277CC7810], v244);
    v216 = v248;
    sub_226E63020();
    *&v274 = MEMORY[0x277D84FA0];
    sub_226E35FA4(v265, &v274);

    v218 = v250;
    v217 = v251;
    v219 = v246;
    (*(v250 + 16))(v246, v216, v251);
    v220 = v274;
    v221 = v253;

    sub_226E550F0(v252, v221, v219, v220, v264);

    (*(v218 + 8))(v216, v217);
    (*(v208 + 8))(v241, v249);
    v222 = v257;
    v223 = *(v256 + 8);
    v223(v232, v257);
    (*(v214 + 8))(v237, v245);
    (*(v236 + 8))(v235, v238);
    v223(v254, v222);
    sub_226E15E98(&v280, &qword_27D7B6AC8, qword_226E68AA0);
    v224 = type metadata accessor for IntermediatePrediction();
    (*(*(v224 - 8) + 56))(v264, 0, 1, v224);

    goto LABEL_89;
  }

LABEL_129:
  __break(1u);
}

unint64_t sub_226E38488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD8, &qword_226E68B08);
    v2 = sub_226E63F70();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_226E3D250(&v25, v27);
        sub_226E3D250(v27, v28);
        sub_226E3D250(v28, &v26);
        result = sub_226E20614(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_226E3D250(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_226E3D250(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_226E386D0(id result)
{
  if (result)
  {
    return [result addKeyPairsWithJoinType:@"right" leftEntity:@"features_heuristics" rightEntity:@"transactions" joinKey:@"t_identifier"];
  }

  return result;
}

void sub_226E38714(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = @"==";

    MEMORY[0x22AA8D010](0xD000000000000015, 0x8000000226E733E0);

    v3 = sub_226E639B0();

    [a1 addIntegerClause:v2 fieldName:v3 expression:2];
  }
}

uint64_t sub_226E387FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v51 - v10;
  v12 = sub_226E635C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v51 - v19;
  result = MEMORY[0x28223BE20](v18);
  v23 = v51 - v22;
  if (!a1)
  {
    return result;
  }

  v24 = *(a1 + 16);
  if (!v24)
  {
    return result;
  }

  if (v24 == 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v57 = a4;
  v58 = result;
  sub_226E2233C(a1 + 64, v62);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v56 = a3;
  if (v24 < 3)
  {
    goto LABEL_26;
  }

  v25 = v13;
  v26 = v61;
  v55 = v60;
  sub_226E2233C(a1 + 96, v62);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
  }

  v54 = v26;
  if (v24 == 3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = v61;
  v52 = v60;
  sub_226E2233C(a1 + 128, v62);
  result = swift_dynamicCast();
  v53 = v25;
  if ((result & 1) == 0)
  {
  }

  if (v24 < 5)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v51[1] = v60;
  sub_226E2233C(a1 + 160, v62);
  v28 = swift_dynamicCast();
  v29 = v56;
  v30 = v27;
  if ((v28 & 1) == 0)
  {
  }

  v32 = v60;
  v31 = v61;
  sub_226E635A0();

  v33 = v53;
  if ((*(v53 + 48))(v11, 1, v58) == 1)
  {

    return sub_226E15E98(v11, &qword_27D7B6940, &qword_226E68A90);
  }

  else
  {
    (*(v33 + 32))(v23, v11, v58);
    swift_beginAccess();
    v34 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_226E39BC0(v52, v30, v32, v31, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v60;
    swift_endAccess();
    swift_beginAccess();
    v36 = v54;
    v37 = v55;
    if (*(*(v29 + 16) + 16) && (sub_226E20614(v55, v54), (v38 & 1) != 0))
    {
      swift_endAccess();
      v39 = v57;
      swift_beginAccess();
      v40 = *(v39 + 16);
      if (*(v40 + 16) && (v41 = sub_226E20614(v37, v36), (v42 & 1) != 0))
      {
        v43 = *(*(v40 + 56) + 8 * v41);
        swift_endAccess();
        v60 = v43;
      }

      else
      {
        swift_endAccess();
        v60 = MEMORY[0x277D84FA0];
      }

      v44 = v53;
      v45 = v58;
      (*(v53 + 16))(v17, v23, v58);
      sub_226E2035C(v20, v17);
      v46 = *(v44 + 8);
      v46(v20, v45);
      v47 = v60;
      v48 = v57;
      swift_beginAccess();
      v49 = *(v48 + 16);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v48 + 16);
      *(v48 + 16) = 0x8000000000000000;
      sub_226E39A20(v47, v37, v36, v50, &qword_27D7B6B08, &qword_226E68B40);

      *(v48 + 16) = v59;
      swift_endAccess();
      return (v46)(v23, v45);
    }

    else
    {
      swift_endAccess();

      return (*(v33 + 8))(v23, v58);
    }
  }
}

id UpcomingPayments.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UpcomingPayments.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpcomingPayments();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_226E38E94(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE8, &qword_226E68B18);
  v10 = *(type metadata accessor for IntermediatePrediction() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for IntermediatePrediction() - 8);
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

uint64_t sub_226E3906C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE0, &qword_226E68B10);
  v37 = a2;
  result = sub_226E63F60();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226E39310(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_226E63F60();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_226E395B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B10, &qword_226E68B48);
  v40 = a2;
  result = sub_226E63F60();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226E39870(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226E63DB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_226E640A0();

      sub_226E63A00();
      v13 = sub_226E640C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226E39A20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_226E20614(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_226E39310(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_226E20614(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_226E39EB0(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_226E39BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_226E20614(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_226E395B0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_226E20614(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_226E3A010();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_226E39D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE0, &qword_226E68B10);
  v2 = *v0;
  v3 = sub_226E63F50();
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

void *sub_226E39EB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_226E63F50();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_226E3A010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B10, &qword_226E68B48);
  v2 = *v0;
  v3 = sub_226E63F50();
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

unint64_t sub_226E3A188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AE0, &qword_226E68B10);
    v3 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226E3A28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6A98, &qword_226E68A78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UpcomingPayments()
{
  result = qword_280CEA380;
  if (!qword_280CEA380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226E3A348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_226E20614(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226E3A444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B10, &qword_226E68B48);
    v3 = sub_226E63F70();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226E3A558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD8, &qword_226E68B08);
    v3 = sub_226E63F70();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E1A598(v4, &v13, &qword_27D7B6AF8, &qword_226E68B28);
      v5 = v13;
      v6 = v14;
      result = sub_226E20614(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226E3D250(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226E3A688(void *a1)
{
  v230 = sub_226E638E0();
  v232 = *(v230 - 8);
  v2 = *(v232 + 64);
  v3 = MEMORY[0x28223BE20](v230);
  v213 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v222 = &v162 - v6;
  MEMORY[0x28223BE20](v5);
  v227 = &v162 - v7;
  v212 = type metadata accessor for IntermediatePrediction();
  v190 = *(v212 - 8);
  v8 = *(v190 + 64);
  v9 = MEMORY[0x28223BE20](v212);
  v205 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v204 = &v162 - v11;
  v189 = sub_226E63030();
  v231 = *(v189 - 8);
  v12 = *(v231 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AB0, &qword_226E68A88);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v187 = &v162 - v16;
  v203 = sub_226E63040();
  *&v220 = *(v203 - 8);
  v17 = *(v220 + 64);
  v18 = MEMORY[0x28223BE20](v203);
  v186 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v202 = &v162 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v192 = &v162 - v23;
  v207 = sub_226E62D70();
  v219 = *(v207 - 8);
  v24 = v219[8];
  v25 = MEMORY[0x28223BE20](v207);
  v201 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v210 = &v162 - v27;
  v211 = sub_226E62FD0();
  v218 = *(v211 - 8);
  v28 = *(v218 + 8);
  v29 = MEMORY[0x28223BE20](v211);
  v185 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v209 = &v162 - v31;
  v206 = sub_226E63590();
  v217 = *(v206 - 8);
  v32 = *(v217 + 64);
  v33 = MEMORY[0x28223BE20](v206);
  v184 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v208 = &v162 - v35;
  v225 = sub_226E635C0();
  v36 = *(v225 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v225);
  v200 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v199 = &v162 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v198 = &v162 - v43;
  MEMORY[0x28223BE20](v42);
  v233 = &v162 - v44;
  v45 = objc_opt_self();
  v244 = sub_226E386D0;
  v245 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v243 = sub_226E23500;
  *(&v243 + 1) = &block_descriptor_14;
  v46 = _Block_copy(&aBlock);
  v47 = @"features_heuristics";
  v48 = [v45 initWithBuilder_];
  _Block_release(v46);
  v235 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity:v47 joinClause:v48];

  v49 = objc_opt_self();
  v244 = sub_226E38714;
  v245 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v243 = sub_226E23500;
  *(&v243 + 1) = &block_descriptor_17;
  v50 = _Block_copy(&aBlock);
  v51 = [v49 initWithBuilder_];
  _Block_release(v50);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6B00, &unk_226E68B30);
  v226 = (v52 + 16);
  if (a1)
  {
    v53 = @"AND";
    v54 = sub_226E63AE0();
    v244 = sub_226E3D26C;
    v245 = v52;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v243 = sub_226E1EB4C;
    *(&v243 + 1) = &block_descriptor_35;
    v55 = _Block_copy(&aBlock);

    [a1 0x1FCE66826];
    _Block_release(v55);
  }

  v214 = v51;
  v221 = v52;
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D84F90];
  *(v56 + 16) = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6B08, &qword_226E68B40);
  v58 = v56 + 16;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_226E3A444(v57);
  v197 = (v59 + 16);
  v60 = v235;
  if (v235)
  {
    v234 = v235;
    v61 = @"AND";
    v62 = sub_226E63AE0();
    v63 = swift_allocObject();
    v64 = v221;
    v63[2] = v59;
    v63[3] = v64;
    v63[4] = v56;
    v244 = sub_226E3D260;
    v245 = v63;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v243 = sub_226E1EB4C;
    *(&v243 + 1) = &block_descriptor_32;
    v65 = _Block_copy(&aBlock);

    v66 = v234;
    [v234 0x1FCE66826];
    _Block_release(v65);

    v60 = v235;
  }

  v215 = v59;
  v216 = v56;
  swift_beginAccess();
  v67 = *v58;
  v68 = *v58 + 64;
  v69 = 1 << *(*v58 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(*v58 + 64);
  v72 = (v69 + 63) >> 6;
  v234 = @"_4bd92d83a";
  v228 = (v232 + 16);
  v229 = (v232 + 8);
  v224 = (v36 + 8);
  v194 = *MEMORY[0x277CC7788];
  v193 = v218 + 104;
  v191 = (v36 + 48);
  v183 = (v36 + 32);
  v182 = (v36 + 16);
  v181 = (v219 + 2);
  v180 = (v218 + 16);
  v179 = (v217 + 16);
  v178 = *MEMORY[0x277CC7810];
  v177 = (v231 + 104);
  v176 = (v220 + 16);
  v175 = (v220 + 8);
  v195 = (v219 + 1);
  v196 = (v218 + 8);
  v217 += 8;

  v73 = 0;
  v219 = MEMORY[0x277D84F90];
  *&v74 = 136315138;
  v220 = v74;
  v75 = v230;
  v76 = v227;
  v232 = v68;
  v231 = v72;
  v223 = v67;
LABEL_8:
  v77 = v73;
  while (1)
  {
    if (!v71)
    {
      while (1)
      {
        v73 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          __break(1u);
          goto LABEL_64;
        }

        if (v73 >= v72)
        {
          break;
        }

        v71 = *(v68 + 8 * v73);
        ++v77;
        if (v71)
        {
          goto LABEL_16;
        }
      }

      v149 = sub_226E56FC8();
      v150 = v213;
      (*v228)(v213, v149, v75);
      v151 = sub_226E638C0();
      v152 = sub_226E63C80();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *&v239 = v154;
        *v153 = v220;
        v155 = v219;

        v157 = v60;
        v158 = MEMORY[0x22AA8D0F0](v156, v212);
        v160 = v159;

        v161 = sub_226E1FC98(v158, v160, &v239);

        *(v153 + 4) = v161;
        _os_log_impl(&dword_226DD4000, v151, v152, "IntermediatePredictions from FPP: %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v154);
        MEMORY[0x22AA8E1B0](v154, -1, -1);
        MEMORY[0x22AA8E1B0](v153, -1, -1);

        (*v229)(v150, v75);
      }

      else
      {

        (*v229)(v150, v75);
        v155 = v219;
      }

      return v155;
    }

    v73 = v77;
LABEL_16:
    v78 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v79 = v78 | (v73 << 6);
    v80 = (*(v67 + 48) + 16 * v79);
    v81 = *v80;
    v60 = v80[1];
    v82 = *(*(v67 + 56) + 8 * v79);
    sub_226E639C0();

    v83 = sub_226E63A80();

    if ((v83 & 1) == 0)
    {

      v77 = v73;
      v60 = v235;
      goto LABEL_10;
    }

    v84 = v226;
    swift_beginAccess();
    v85 = *v84;
    if (!*(v85 + 16))
    {
      break;
    }

    v86 = sub_226E20614(v81, v60);
    if ((v87 & 1) == 0)
    {
      break;
    }

    v88 = *(*(v85 + 56) + 8 * v86);
    swift_endAccess();
    *&v239 = 0x726163656C707061;
    *(&v239 + 1) = 0xEA00000000002D64;

    MEMORY[0x22AA8D010](v81, v60);
    v89 = v239;
    v90 = sub_226E53234();
    asUUID(rawString:lossy:)(v89, *(&v89 + 1), v90, v233);
    if (!*(v88 + 16))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_endAccess();

      (*v195)(v210, v207);
      (*v196)(v209, v211);
      (*v217)(v208, v206);
      (*v224)(v233, v225);
LABEL_68:

      return MEMORY[0x277D84F90];
    }

    v91 = sub_226E20614(0x695F656372756F73, 0xE900000000000064);
    if ((v92 & 1) == 0)
    {
      goto LABEL_65;
    }

    sub_226E2233C(*(v88 + 56) + 32 * v91, &v238);
    sub_226E3D250(&v238, &v239);
    swift_dynamicCast();
    v93 = v237;
    if (!*(v88 + 16))
    {
      goto LABEL_37;
    }

    v218 = v236;
    v94 = sub_226E20614(0x6E5F797469746E65, 0xEB00000000656D61);
    if ((v95 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_226E2233C(*(v88 + 56) + 32 * v94, &v239);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v96 = HIBYTE(*(&v238 + 1)) & 0xFLL;
    if ((*(&v238 + 1) & 0x2000000000000000) == 0)
    {
      v96 = v238 & 0xFFFFFFFFFFFFLL;
    }

    if (!v96)
    {

LABEL_37:

      v110 = sub_226E56FC8();
      v111 = v222;
      v75 = v230;
      (*v228)(v222, v110, v230);

      v112 = sub_226E638C0();
      v113 = sub_226E63CA0();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *&v239 = v115;
        *v114 = v220;
        v116 = sub_226E63970();
        v118 = v117;

        v119 = sub_226E1FC98(v116, v118, &v239);
        v75 = v230;

        *(v114 + 4) = v119;
        _os_log_impl(&dword_226DD4000, v112, v113, "Skipping due to empty entity name %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v115);
        MEMORY[0x22AA8E1B0](v115, -1, -1);
        MEMORY[0x22AA8E1B0](v114, -1, -1);
      }

      else
      {
      }

      (*v229)(v111, v75);
      (*v224)(v233, v225);
      v77 = v73;
      v76 = v227;
      goto LABEL_41;
    }

    v173 = v238;
    if (!*(v88 + 16) || (v174 = *(&v238 + 1), v97 = sub_226E20614(0x79636E6572727563, 0xED000065646F635FLL), (v98 & 1) == 0) || (sub_226E2233C(*(v88 + 56) + 32 * v97, &v239), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_34;
    }

    v99 = *(&v238 + 1);
    v172 = v238;
    result = sub_226E63A10();
    if (result == 3)
    {
      v171 = v99;
      if (!*(v88 + 16))
      {
        goto LABEL_70;
      }

      result = sub_226E20614(0x615F746E756F6D61, 0xEE00656761726576);
      v76 = v227;
      if ((v120 & 1) == 0)
      {
        goto LABEL_71;
      }

      sub_226E2233C(*(v88 + 56) + 32 * result, &v238);
      sub_226E3D250(&v238, &v239);
      result = swift_dynamicCast();
      if (!*(v88 + 16))
      {
        goto LABEL_72;
      }

      v170 = v236;
      result = sub_226E20614(0x6974636964657270, 0xEF657461645F6E6FLL);
      if ((v121 & 1) == 0)
      {
        goto LABEL_73;
      }

      sub_226E2233C(*(v88 + 56) + 32 * result, &v238);
      sub_226E3D250(&v238, &v239);
      swift_dynamicCast();
      sub_226E63500();
      (*v193)(v209, v194, v211);
      v122 = MEMORY[0x22AA8D350](v170);
      v124 = v123;
      v166 = v125;
      v163 = v122;
      v164 = HIDWORD(v122);
      v165 = HIWORD(v122);
      v167 = v123 >> 16;
      v169 = HIDWORD(v123);
      v170 = HIWORD(v123);
      v168 = HIWORD(v125);
      v126 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v239) = v163;
      WORD2(v239) = v164;
      WORD3(v239) = v165;
      WORD4(v239) = v124;
      WORD5(v239) = v167;
      WORD6(v239) = v169;
      HIWORD(v239) = v170;
      v240 = v166;
      v241 = v168;
      v170 = [v126 initWithDecimal_];
      result = [objc_opt_self() defaultDatabaseAmountMultiplier];
      if (!result)
      {
        goto LABEL_74;
      }

      v127 = result;

      v128 = v170;
      v60 = [v170 decimalNumberByDividingBy_];

      [v60 decimalValue];
      sub_226E62D80();
      v129 = v197;
      swift_beginAccess();
      v130 = *v129;
      if (!*(v130 + 16))
      {
        goto LABEL_66;
      }

      v131 = sub_226E20614(v218, v93);
      if ((v132 & 1) == 0)
      {
        goto LABEL_66;
      }

      v218 = v60;
      v133 = (*(v130 + 56) + 16 * v131);
      v134 = *v133;
      v135 = v133[1];
      swift_endAccess();

      v136 = v192;
      sub_226E635A0();

      v137 = v225;
      if ((*v191)(v136, 1, v225) == 1)
      {

        sub_226E15E98(v136, &qword_27D7B6940, &qword_226E68A90);

        (*v195)(v210, v207);
        (*v196)(v209, v211);
        (*v217)(v208, v206);
        (*v224)(v233, v137);
        goto LABEL_68;
      }

      v138 = v198;
      (*v183)(v198, v136, v137);
      v139 = *v182;
      (*v182)(v199, v233, v137);
      v139(v200, v138, v137);
      (*v181)(v201, v210, v207);
      (*v180)(v185, v209, v211);
      aBlock = 0u;
      v243 = 0u;
      v244 = 0;
      LOBYTE(v245) = 1;
      (*v179)(v184, v208, v206);
      v140 = sub_226E63390();
      (*(*(v140 - 8) + 56))(v187, 1, 1, v140);
      (*v177)(v188, v178, v189);
      v141 = v202;
      sub_226E63020();
      v142 = v186;
      (*v176)(v186, v141, v203);
      v143 = v204;
      sub_226E550F0(v89, *(&v89 + 1), v142, v82, v204);
      sub_226E3C760(v143, v205);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v219 = sub_226E38E94(0, v219[2] + 1, 1, v219);
      }

      v75 = v230;
      v60 = v235;
      v67 = v223;
      v145 = v219[2];
      v144 = v219[3];
      v174 = v145 + 1;
      if (v145 >= v144 >> 1)
      {
        v219 = sub_226E38E94(v144 > 1, v145 + 1, 1, v219);
      }

      sub_226E3C704(v204);
      (*v175)(v202, v203);
      v146 = *v224;
      v147 = v225;
      (*v224)(v198, v225);
      (*v195)(v210, v207);
      (*v196)(v209, v211);
      (*v217)(v208, v206);
      v146(v233, v147);
      v148 = v219;
      v219[2] = v174;
      sub_226E3C6A0(v205, v148 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v145);
      v68 = v232;
      v72 = v231;
      goto LABEL_8;
    }

    v76 = v227;
LABEL_34:
    v101 = sub_226E56FC8();
    v75 = v230;
    (*v228)(v76, v101, v230);

    v102 = sub_226E638C0();
    v103 = sub_226E63CA0();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v239 = v105;
      *v104 = v220;
      v106 = sub_226E63970();
      v108 = v107;

      v109 = sub_226E1FC98(v106, v108, &v239);
      v75 = v230;

      *(v104 + 4) = v109;
      _os_log_impl(&dword_226DD4000, v102, v103, "Skipping due to currency code not three character string%s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x22AA8E1B0](v105, -1, -1);
      MEMORY[0x22AA8E1B0](v104, -1, -1);
    }

    else
    {
    }

    (*v229)(v76, v75);
    (*v224)(v233, v225);
    v77 = v73;
LABEL_41:
    v60 = v235;
    v67 = v223;
LABEL_10:
    v68 = v232;
    v72 = v231;
  }

  result = swift_endAccess();
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226E3C6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntermediatePrediction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E3C704(uint64_t a1)
{
  v2 = type metadata accessor for IntermediatePrediction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E3C760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntermediatePrediction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E3C7C4(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v9 = *(i - 1);
    v8 = *i;
    v10 = *(a3 + 16);

    if (!v10 || (v11 = sub_226E20614(v9, v8), (v12 & 1) == 0) || (sub_226E2233C(*(a3 + 56) + 32 * v11, &v37), (swift_dynamicCast() & 1) == 0))
    {
      v24 = *a2;
      v25 = sub_226E20614(v9, v8);
      if (v26)
      {
        v27 = v25;
        v28 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a2;
        v37 = *a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226E39D48();
          v30 = v37;
        }

        v7 = *(*(v30 + 48) + 16 * v27 + 8);

        sub_226E39870(v27, v30);
        *a2 = v30;
      }

      goto LABEL_5;
    }

    v13 = *a2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *a2;
    v15 = v37;
    v16 = sub_226E20614(v9, v8);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v15[3] >= v21)
    {
      if ((v14 & 1) == 0)
      {
        v35 = v16;
        sub_226E39D48();
        v16 = v35;
      }
    }

    else
    {
      sub_226E3906C(v21, v14);
      v16 = sub_226E20614(v9, v8);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }
    }

    v31 = v37;
    if (v22)
    {
      *(v37[7] + 8 * v16) = v36;
    }

    else
    {
      v37[(v16 >> 6) + 8] |= 1 << v16;
      v32 = (v31[6] + 16 * v16);
      *v32 = v9;
      v32[1] = v8;
      *(v31[7] + 8 * v16) = v36;
      v33 = v31[2];
      v20 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v31[2] = v34;
    }

    *a2 = v31;

LABEL_5:
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_226E64010();
  __break(1u);
  return result;
}