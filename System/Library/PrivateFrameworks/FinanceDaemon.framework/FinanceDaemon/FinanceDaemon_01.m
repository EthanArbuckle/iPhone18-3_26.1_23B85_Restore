uint64_t sub_226AD3328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226AD33F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226AD34B4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD35C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226AD35FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AD3640()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226AD3680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_226D6B9BC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_226AD379C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_226D6B9BC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226AD38B4()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
  v2 = v0[53];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);
  v3 = v0[59];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226AD39C4(uint64_t a1)
{
  result = sub_226D66C08(&qword_27D7A8900, type metadata accessor for PrismWebServiceRegisterTransactionTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AD3A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B3BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226AD3B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_226D6B3BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226AD3C50()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BankConnectPassMatcher.__allocating_init(taskQueueProvider:configurationProvider:webClientProvider:assetManager:institutionMatchingCache:softwareLibrary:paymentPassDataSourceProvider:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v14 = swift_allocObject();
  sub_226AC484C(a1, v14 + 16);
  sub_226AC484C(a2, v14 + 56);
  sub_226AC484C(a3, v14 + 96);
  *(v14 + 136) = a4;
  *(v14 + 144) = a5;
  v15 = *(a6 + 16);
  *(v14 + 152) = *a6;
  *(v14 + 168) = v15;
  *(v14 + 184) = *(a6 + 32);
  sub_226AC484C(a7, v14 + 192);
  return v14;
}

uint64_t BankConnectPassMatcher.init(taskQueueProvider:configurationProvider:webClientProvider:assetManager:institutionMatchingCache:softwareLibrary:paymentPassDataSourceProvider:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  sub_226AC484C(a1, v7 + 16);
  sub_226AC484C(a2, v7 + 56);
  sub_226AC484C(a3, v7 + 96);
  *(v7 + 136) = a4;
  *(v7 + 144) = a5;
  v14 = *(a6 + 16);
  *(v7 + 152) = *a6;
  *(v7 + 168) = v14;
  *(v7 + 184) = *(a6 + 32);
  sub_226AC484C(a7, v7 + 192);
  return v7;
}

uint64_t BankConnectPassMatcher.institution(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D690BC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AD40AC, 0, 0);
}

uint64_t sub_226AD40AC()
{
  v1 = v0[5];
  v2 = sub_226AD48A4(v0[3], v0[4]);
  v0[9] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v6[5];
    v9 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
    v10 = [v3 serialNumber];
    v11 = sub_226D6E39C();
    v13 = v12;

    *v4 = v11;
    v4[1] = v13;
    (*(v5 + 104))(v4, *MEMORY[0x277CC7760], v7);
    v14 = *(MEMORY[0x277CC7F10] + 4);
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_226AD427C;
    v16 = v0[8];

    return MEMORY[0x282119F40](v16, v8, v9);
  }

  else
  {
    v17 = v0[2];
    v18 = sub_226D671FC();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = v0[8];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_226AD427C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 88) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_226AD43DC, 0, 0);
}

uint64_t sub_226AD43DC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277CC7780] + 4);
  v11 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v5 = v1;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  *v6 = v0;
  v6[1] = sub_226AD44FC;
  v8 = v0[11];
  v9 = v0[2];

  return v11(v9, &unk_226D70860, v3, v7);
}

uint64_t sub_226AD44FC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226AD4688;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226AD4618;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226AD4618()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226AD4688()
{
  v1 = v0[12];

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to match an institution with a payment pass: %@", v11, 0xCu);
    sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);

    v15 = v5;
    v5 = v10;
  }

  else
  {
    v16 = v0[11];

    v15 = v10;
  }

  v17 = v0[2];
  v18 = sub_226D671FC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v0[8];

  v20 = v0[1];

  return v20();
}

id sub_226AD48A4(uint64_t a1, unint64_t a2)
{
  v5 = v2[27];
  v6 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v5);
  (*(v6 + 8))(&v16, v5, v6);
  v7 = v16;
  v8 = sub_226D6E36C();
  v9 = [v7 passWithFPANIdentifier_];

  if (!v9)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F710);

    v11 = sub_226D6E05C();
    v12 = sub_226D6E9CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_226AC4530(a1, a2, &v16);
      _os_log_impl(&dword_226AB4000, v11, v12, "A pass with %s is not found, skipping matching.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_226AD4A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226AD4A8C, 0, 0);
}

uint64_t sub_226AD4A8C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277CC6558] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  *v3 = v0;
  v3[1] = sub_226AD4B7C;
  v5 = *(v0 + 16);

  return MEMORY[0x282116CE0](v5, "bankConnect/passMatcher", 23, 2, &unk_226D70D40, v1, v4);
}

uint64_t sub_226AD4B7C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AD4CB8, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_226AD4CB8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_226AD4D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226AD4D40, 0, 0);
}

uint64_t sub_226AD4D40()
{
  v20 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = [v6 primaryAccountIdentifier];
    v10 = sub_226D6E39C();
    v12 = v11;

    v13 = sub_226AC4530(v10, v12, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Fetching institution for payment pass with fpanID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[5] = v14;
  *v14 = v0;
  v14[1] = sub_226AD4F38;
  v16 = v0[3];
  v15 = v0[4];
  v17 = v0[2];

  return sub_226AD502C(v17, v15);
}

uint64_t sub_226AD4F38()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226AD502C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_226D671FC();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[8] = v8;
  *v8 = v3;
  v8[1] = sub_226AD5124;

  return sub_226ADE79C(a2);
}

uint64_t sub_226AD5124(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 56);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226AD5274, 0, 0);
  }
}

id sub_226AD5274()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), v1 + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)), *(v0 + 40));
    if (v2 == 1)
    {
      v3 = [*(v0 + 24) associatedApplicationIdentifiers];
      if (!v3 || (v4 = v3, v5 = sub_226D6E89C(), v4, v6 = sub_226AE10EC(v5), , !v6))
      {

        v6 = MEMORY[0x277D84FA0];
      }

      *(v0 + 80) = v6;
      result = [*(v0 + 24) storeIdentifiers];
      if (result)
      {
        v8 = result;
        v9 = *(v0 + 72);

        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v10 = sub_226D6E5EC();
        *(v0 + 88) = v10;

        v11 = swift_task_alloc();
        *(v0 + 96) = v11;
        *v11 = v0;
        v11[1] = sub_226AD565C;
        v12 = *(v0 + 56);
        v13 = *(v0 + 32);

        return sub_226ADBB60(v12, v6, v10);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 72);
    v20 = sub_226D6E07C();
    __swift_project_value_buffer(v20, qword_28105F710);

    v21 = sub_226D6E05C();
    v22 = sub_226D6E9CC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 72);
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      v26 = *(v1 + 16);

      *(v25 + 4) = v26;

      _os_log_impl(&dword_226AB4000, v21, v22, "More than one (%{public}ld) institutions matched to pass, aborting matching.", v25, 0xCu);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    else
    {
      v27 = *(v0 + 72);
      swift_bridgeObjectRelease_n();
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  else
  {
    v14 = *(v0 + 72);

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F710);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226AB4000, v16, v17, "No institution matched, returning nil.", v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }
  }

  v28 = *(v0 + 56);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_226AD565C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v9 = sub_226AD5898;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v9 = sub_226AD57C8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226AD57C8()
{
  v1 = *(v0 + 48);
  if (*(v0 + 112) == 1)
  {
    (*(v1 + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
    v2 = 0;
  }

  else
  {
    (*(v1 + 8))(*(v0 + 56), *(v0 + 40));
    v2 = 1;
  }

  v3 = *(v0 + 56);
  (*(*(v0 + 48) + 56))(*(v0 + 16), v2, 1, *(v0 + 40));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226AD5898()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t BankConnectPassMatcher.institutions(for:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_226D690BC();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AD59D4, 0, 0);
}

uint64_t sub_226AD59D4()
{
  v55 = v0;
  v2 = *(v0 + 72);
  v50 = *(v0 + 80);
  v3 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 40;
    v46 = v2 + 40;
    do
    {
      v47 = v3;
      v7 = (v6 + 16 * v5);
      v3 = v5;
      while (1)
      {
        if (v3 >= v4)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_33;
        }

        v52 = v3 + 1;
        v8 = *(v7 - 1);
        v1 = *v7;
        v10 = v50[27];
        v9 = v50[28];
        __swift_project_boxed_opaque_existential_1(v50 + 24, v10);
        v11 = *(v9 + 8);

        v11(&v54, v10, v9);
        v12 = v54;
        v13 = sub_226D6E36C();
        v14 = [v12 passWithFPANIdentifier_];

        if (v14)
        {
          break;
        }

        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v15 = sub_226D6E07C();
        __swift_project_value_buffer(v15, qword_28105F710);

        v16 = sub_226D6E05C();
        v17 = sub_226D6E9CC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v54 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_226AC4530(v8, v1, &v54);
          _os_log_impl(&dword_226AB4000, v16, v17, "A pass with %s is not found, skipping matching.", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v19);
          MEMORY[0x22AA8BEE0](v19, -1, -1);
          MEMORY[0x22AA8BEE0](v18, -1, -1);
        }

        ++v3;
        v7 += 2;
        if (v52 == v4)
        {
          v3 = v47;
          goto LABEL_17;
        }
      }

      MEMORY[0x22AA8A610](v20);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v5 = v52;
      v3 = v53;
      v6 = v46;
    }

    while (v52 != v4);
  }

LABEL_17:
  v48[14] = v3;
  sub_226AE532C(v48[10] + 16, (v48 + 2));
  v4 = v48[5];
  v1 = v48[6];
  __swift_project_boxed_opaque_existential_1(v48 + 2, v4);
  if (v3 >> 62)
  {
LABEL_34:
    v22 = sub_226D6EDFC();
  }

  else
  {
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48[15] = v22;
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v54 = MEMORY[0x277D84F90];
    v24 = sub_226AE1D68(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      return MEMORY[0x282119F40](v24, v25, v26);
    }

    v49 = v1;
    v51 = v4;
    v27 = 0;
    v23 = v54;
    v28 = v3;
    v29 = v3 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v30 = MEMORY[0x22AA8AFD0](v27, v28);
      }

      else
      {
        v30 = *(v28 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = [v31 serialNumber];
      v33 = sub_226D6E39C();
      v35 = v34;

      v54 = v23;
      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_226AE1D68((v36 > 1), v37 + 1, 1);
        v23 = v54;
      }

      ++v27;
      *(v23 + 16) = v37 + 1;
      v38 = v23 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
    }

    while (v22 != v27);
    v4 = v51;
    v1 = v49;
  }

  v40 = v48[12];
  v39 = v48[13];
  v41 = v48[11];
  v42 = sub_226AE3C28(v23);

  *v39 = v42;
  (*(v40 + 104))(v39, *MEMORY[0x277CC7768], v41);
  v43 = *(MEMORY[0x277CC7F10] + 4);
  v44 = swift_task_alloc();
  v48[16] = v44;
  *v44 = v48;
  v44[1] = sub_226AD5EB4;
  v24 = v48[13];
  v25 = v4;
  v26 = v1;

  return MEMORY[0x282119F40](v24, v25, v26);
}

uint64_t sub_226AD5EB4(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 136) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_226AD6014, 0, 0);
}

uint64_t sub_226AD6014()
{
  v1 = v0[14];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277CC7780] + 4);
  v9 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v5 = swift_task_alloc();
  v0[19] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB8, &unk_226D70890);
  *v5 = v0;
  v5[1] = sub_226AD6140;
  v7 = v0[17];

  return v9(v0 + 7, &unk_226D70888, v3, v6);
}

uint64_t sub_226AD6140()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_226AD62D8;
  }

  else
  {
    v5 = *(v2 + 144);
    v6 = *(v2 + 112);

    v4 = sub_226AD6268;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226AD6268()
{
  v1 = v0[17];

  v2 = v0[7];
  v3 = v0[13];

  v4 = v0[1];

  return v4(v2);
}

char *sub_226AD62D8()
{
  v52 = v0;
  v1 = v0[18];

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = v0[14];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F710);

  v5 = v2;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v9 = 136315394;
    v47 = v10;
    v48 = v11;
    if (v8)
    {
      v46 = v7;
      v12 = v0[15];
      v51 = MEMORY[0x277D84F90];
      result = sub_226AE1D68(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v45 = v6;
      v14 = 0;
      v15 = v0[14];
      v16 = v51;
      v17 = v15 & 0xC000000000000001;
      v49 = v15 + 32;
      do
      {
        if (v17)
        {
          v18 = MEMORY[0x22AA8AFD0](v14, v0[14]);
        }

        else
        {
          v18 = *(v49 + 8 * v14);
        }

        v19 = v18;
        v20 = [v19 primaryAccountIdentifier];
        v21 = sub_226D6E39C();
        v23 = v22;

        v51 = v16;
        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_226AE1D68((v24 > 1), v25 + 1, 1);
          v16 = v51;
        }

        v26 = v0[15];
        ++v14;
        *(v16 + 16) = v25 + 1;
        v27 = v16 + 16 * v25;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
      }

      while (v14 != v26);
      v32 = v0[14];

      v6 = v45;
      v7 = v46;
    }

    else
    {
      v33 = v0[14];

      v16 = MEMORY[0x277D84F90];
    }

    v34 = v0[20];
    v35 = v0[17];
    v0[8] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
    sub_226AE3D6C();
    v36 = sub_226D6E31C();
    v38 = v37;

    v39 = sub_226AC4530(v36, v38, &v50);

    *(v9 + 4) = v39;
    *(v9 + 12) = 2112;
    v40 = v34;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v41;
    *v47 = v41;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to match institutions with payment passes with fpanIDs: %s: %@.", v9, 0x16u);
    sub_226AC47B0(v47, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);

    v31 = v34;
  }

  else
  {
    v28 = v0[20];
    v29 = v0[17];
    v30 = v0[14];

    v31 = v28;
  }

  v42 = v0[13];

  v43 = v0[1];
  v44 = MEMORY[0x277D84F90];

  return v43(v44);
}

uint64_t sub_226AD66A0(uint64_t a1)
{
  result = MEMORY[0x22AA8A960](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_226C24D14(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226AD67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226AD67E0, 0, 0);
}

uint64_t sub_226AD67E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277CC6558] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB8, &unk_226D70890);
  *v3 = v0;
  v3[1] = sub_226AD68D0;
  v5 = *(v0 + 16);

  return MEMORY[0x282116CE0](v5, "bankConnect/passesMatcher", 25, 2, &unk_226D70CA0, v1, v4);
}

uint64_t sub_226AD68D0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AE5A90, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_226AD6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_226AD6A30, 0, 0);
}

char *sub_226AD6A30()
{
  v41 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315138;
    if (v5 >> 62)
    {
      if (v0[5] < 0)
      {
        v35 = v0[5];
      }

      v8 = sub_226D6EDFC();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v40 = MEMORY[0x277D84F90];
      result = sub_226AE1D68(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return result;
      }

      v36 = v7;
      v37 = v6;
      v38 = v3;
      v9 = v40;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = 0;
        do
        {
          MEMORY[0x22AA8AFD0](v11, v0[5]);
          v12 = [swift_unknownObjectRetain() primaryAccountIdentifier];
          v13 = sub_226D6E39C();
          v15 = v14;

          swift_unknownObjectRelease_n();
          v40 = v9;
          v17 = *(v9 + 16);
          v16 = *(v9 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_226AE1D68((v16 > 1), v17 + 1, 1);
            v9 = v40;
          }

          ++v11;
          *(v9 + 16) = v17 + 1;
          v18 = v9 + 16 * v17;
          *(v18 + 32) = v13;
          *(v18 + 40) = v15;
        }

        while (v8 != v11);
      }

      else
      {
        v19 = (v0[5] + 32);
        do
        {
          v20 = *v19;
          v21 = [v20 primaryAccountIdentifier];
          v22 = sub_226D6E39C();
          v24 = v23;

          v40 = v9;
          v26 = *(v9 + 16);
          v25 = *(v9 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_226AE1D68((v25 > 1), v26 + 1, 1);
            v9 = v40;
          }

          *(v9 + 16) = v26 + 1;
          v27 = v9 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
          ++v19;
          --v8;
        }

        while (v8);
      }

      v3 = v38;
      v7 = v36;
      v6 = v37;
    }

    v0[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
    sub_226AE3D6C();
    v28 = sub_226D6E31C();
    v30 = v29;

    v31 = sub_226AC4530(v28, v30, &v39);

    *(v6 + 4) = v31;
    _os_log_impl(&dword_226AB4000, v3, v4, "Fetching institutions for payment passes with fpanIDs: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v32 = swift_task_alloc();
  v0[6] = v32;
  *v32 = v0;
  v32[1] = sub_226AD6DFC;
  v34 = v0[4];
  v33 = v0[5];

  return sub_226AD6F6C(v33);
}

uint64_t sub_226AD6DFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_226AD6F48, 0, 0);
  }
}

uint64_t sub_226AD6F6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_226D671FC();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v7 = sub_226D68DEC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[14] = v10;
  *v10 = v2;
  v10[1] = sub_226AD70F4;

  return sub_226AD8504(a1);
}

uint64_t sub_226AD70F4(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v6 = v4[12];
    v5 = v4[13];
    v8 = v4[10];
    v7 = v4[11];
    v9 = v4[6];
    v10 = v4[7];

    v11 = v4[1];

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226AD7278, 0, 0);
  }
}

uint64_t sub_226AD7278(__n128 a1)
{
  v73 = v1;
  result = *(v1 + 120);
  v3 = *(result + 16);
  *(v1 + 136) = v3;
  if (v3)
  {
    *(v1 + 224) = *(*(v1 + 72) + 80);
    v4 = *(v1 + 128);
    v5 = MEMORY[0x277D84F90];
    *(v1 + 144) = 0;
    *(v1 + 152) = v5;
    if (*(result + 16))
    {
      v6 = 0;
      a1.n128_u64[0] = 136315394;
      v66 = a1;
      while (1)
      {
        v7 = *(v1 + 104);
        v8 = *(v1 + 64);
        v9 = *(v1 + 72);
        v10 = *(v1 + 16);
        v12 = *(v9 + 16);
        v9 += 16;
        v11 = v12;
        v13 = *(v9 + 56);
        v14 = result + ((*(v1 + 224) + 32) & ~*(v1 + 224)) + v13 * v6;
        *(v1 + 160) = v13;
        *(v1 + 168) = v12;
        *(v1 + 176) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v12(v7, v14, v8);
        v15 = swift_task_alloc();
        *(v15 + 16) = v7;
        v16 = sub_226BA2CBC(sub_226AE530C, v15, v10);
        *(v1 + 184) = v16;

        if (v16)
        {
          break;
        }

        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v17 = *(v1 + 104);
        v19 = *(v1 + 80);
        v18 = *(v1 + 88);
        v20 = *(v1 + 64);
        v21 = sub_226D6E07C();
        __swift_project_value_buffer(v21, qword_28105F710);
        v11(v18, v17, v20);
        v11(v19, v17, v20);
        v22 = sub_226D6E05C();
        v23 = sub_226D6E9CC();
        v24 = os_log_type_enabled(v22, v23);
        v26 = *(v1 + 80);
        v25 = *(v1 + 88);
        v27 = *(v1 + 64);
        v28 = *(v1 + 72);
        if (v24)
        {
          v70 = v23;
          v30 = *(v1 + 40);
          v29 = *(v1 + 48);
          v67 = *(v1 + 32);
          v31 = swift_slowAlloc();
          log = v22;
          v69 = swift_slowAlloc();
          v72[0] = v69;
          *v31 = v66.n128_u32[0];
          sub_226D68DCC();
          v32 = sub_226D671DC();
          v71 = v4;
          v34 = v33;
          (*(v30 + 8))(v29, v67);
          v35 = *(v28 + 8);
          v35(v25, v27);
          v36 = sub_226AC4530(v32, v34, v72);
          v4 = v71;

          *(v31 + 4) = v36;
          *(v31 + 12) = 2080;
          v37 = sub_226D68DDC();
          v39 = v38;
          v35(v26, v27);
          v40 = sub_226AC4530(v37, v39, v72);

          *(v31 + 14) = v40;
          _os_log_impl(&dword_226AB4000, log, v70, "Institution %s was matched with a non-existing pass %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v69, -1, -1);
          v41 = v31;
          v5 = MEMORY[0x277D84F90];
          MEMORY[0x22AA8BEE0](v41, -1, -1);
        }

        else
        {

          v42 = *(v28 + 8);
          v42(v26, v27);
          v42(v25, v27);
        }

        v43 = *(v1 + 136);
        v44 = *(v1 + 144) + 1;
        (*(*(v1 + 72) + 8))(*(v1 + 104), *(v1 + 64));
        if (v44 == v43)
        {
          v54 = *(v1 + 120);
          goto LABEL_19;
        }

        v6 = *(v1 + 144) + 1;
        *(v1 + 144) = v6;
        *(v1 + 152) = v5;
        result = *(v1 + 120);
        if (v6 >= *(result + 16))
        {
          goto LABEL_26;
        }
      }

      v45 = *(v1 + 104);
      v46 = *(v1 + 56);
      sub_226D68DCC();
      v47 = [v16 associatedApplicationIdentifiers];
      if (!v47 || (v48 = v47, v49 = sub_226D6E89C(), v48, v50 = sub_226AE10EC(v49), , !v50))
      {

        v50 = MEMORY[0x277D84FA0];
      }

      *(v1 + 192) = v50;
      v51 = [v16 storeIdentifiers];
      if (v51)
      {
        v52 = v51;
        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v53 = sub_226D6E5EC();
      }

      else
      {
        v53 = MEMORY[0x277D84F90];
      }

      *(v1 + 200) = v53;
      v63 = swift_task_alloc();
      *(v1 + 208) = v63;
      *v63 = v1;
      v63[1] = sub_226AD7808;
      v64 = *(v1 + 56);
      v65 = *(v1 + 24);

      return sub_226ADBB60(v64, v50, v53);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }

  else
  {
LABEL_19:
    v55 = *(v1 + 96);
    v56 = *(v1 + 104);
    v58 = *(v1 + 80);
    v57 = *(v1 + 88);
    v60 = *(v1 + 48);
    v59 = *(v1 + 56);

    v61 = *(v1 + 8);
    v62 = MEMORY[0x277D84F90];

    return v61(v62);
  }

  return result;
}

uint64_t sub_226AD7808(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = v1;

  v7 = *(v4 + 200);
  v8 = *(v4 + 192);
  if (v1)
  {
    v9 = *(v4 + 152);
    v10 = *(v4 + 120);
    (*(*(v4 + 40) + 8))(*(v4 + 56), *(v4 + 32));

    v11 = sub_226AD8024;
  }

  else
  {
    v12 = *(v4 + 56);
    v13 = *(v4 + 32);
    v14 = *(v4 + 40);
    *(v4 + 228) = a1 & 1;
    (*(v14 + 8))(v12, v13);

    v11 = sub_226AD79C8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_226AD79C8()
{
  v83 = v0;
  if (*(v0 + 228))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 152);
    (*(v0 + 168))(*(v0 + 96), *(v0 + 104), *(v0 + 64));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_30:
      v81 = sub_226BBAAE4(0, v81[2] + 1, 1, v81);
    }

    v5 = v81[2];
    v4 = v81[3];
    if (v5 >= v4 >> 1)
    {
      v81 = sub_226BBAAE4(v4 > 1, v5 + 1, 1, v81);
    }

    v6 = *(v0 + 160);
    v7 = *(v0 + 224);
    v8 = *(v0 + 96);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);

    v81[2] = v5 + 1;
    (*(v10 + 32))(v81 + ((v7 + 32) & ~v7) + v6 * v5, v8, v9);
  }

  else
  {

    v81 = *(v0 + 152);
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144) + 1;
  (*(*(v0 + 72) + 8))(*(v0 + 104), *(v0 + 64));
  if (v13 == v12)
  {
LABEL_8:
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);

    v22 = *(v0 + 8);

    return v22(v81);
  }

  else
  {
    *&v14 = 136315394;
    v75 = v14;
    while (1)
    {
      v38 = *(v0 + 144) + 1;
      *(v0 + 144) = v38;
      *(v0 + 152) = v81;
      v39 = *(v0 + 120);
      if (v38 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v40 = *(v0 + 104);
      v41 = *(v0 + 64);
      v42 = *(v0 + 72);
      v43 = *(v0 + 16);
      v45 = *(v42 + 16);
      v42 += 16;
      v44 = v45;
      v46 = *(v42 + 56);
      v47 = v39 + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + v46 * v38;
      *(v0 + 160) = v46;
      *(v0 + 168) = v45;
      *(v0 + 176) = v42 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45(v40, v47, v41);
      v48 = swift_task_alloc();
      *(v48 + 16) = v40;
      v49 = sub_226BA2CBC(sub_226AE530C, v48, v43);
      *(v0 + 184) = v49;

      if (v49)
      {
        break;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 104);
      v52 = *(v0 + 80);
      v51 = *(v0 + 88);
      v53 = *(v0 + 64);
      v54 = sub_226D6E07C();
      __swift_project_value_buffer(v54, qword_28105F710);
      v44(v51, v50, v53);
      v44(v52, v50, v53);
      v55 = sub_226D6E05C();
      v56 = sub_226D6E9CC();
      v57 = os_log_type_enabled(v55, v56);
      v59 = *(v0 + 80);
      v58 = *(v0 + 88);
      v60 = *(v0 + 64);
      v61 = *(v0 + 72);
      if (v57)
      {
        v79 = v56;
        v25 = *(v0 + 40);
        v24 = *(v0 + 48);
        v76 = *(v0 + 32);
        v26 = swift_slowAlloc();
        log = v55;
        v78 = swift_slowAlloc();
        v82[0] = v78;
        *v26 = v75;
        sub_226D68DCC();
        v27 = sub_226D671DC();
        v80 = v11;
        v29 = v28;
        (*(v25 + 8))(v24, v76);
        v30 = *(v61 + 8);
        v30(v58, v60);
        v31 = sub_226AC4530(v27, v29, v82);
        v11 = v80;

        *(v26 + 4) = v31;
        *(v26 + 12) = 2080;
        v32 = sub_226D68DDC();
        v34 = v33;
        v30(v59, v60);
        v35 = sub_226AC4530(v32, v34, v82);

        *(v26 + 14) = v35;
        _os_log_impl(&dword_226AB4000, log, v79, "Institution %s was matched with a non-existing pass %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v78, -1, -1);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
      }

      else
      {

        v62 = *(v61 + 8);
        v62(v59, v60);
        v62(v58, v60);
      }

      v36 = *(v0 + 136);
      v37 = *(v0 + 144) + 1;
      (*(*(v0 + 72) + 8))(*(v0 + 104), *(v0 + 64));
      if (v37 == v36)
      {
        goto LABEL_8;
      }
    }

    v63 = *(v0 + 104);
    v64 = *(v0 + 56);
    sub_226D68DCC();
    v65 = [v49 associatedApplicationIdentifiers];
    if (!v65 || (v66 = v65, v67 = sub_226D6E89C(), v66, v68 = sub_226AE10EC(v67), , !v68))
    {

      v68 = MEMORY[0x277D84FA0];
    }

    *(v0 + 192) = v68;
    v69 = [v49 storeIdentifiers];
    if (v69)
    {
      v70 = v69;
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v71 = sub_226D6E5EC();
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

    *(v0 + 200) = v71;
    v72 = swift_task_alloc();
    *(v0 + 208) = v72;
    *v72 = v0;
    v72[1] = sub_226AD7808;
    v73 = *(v0 + 56);
    v74 = *(v0 + 24);

    return sub_226ADBB60(v73, v68, v71);
  }
}

uint64_t sub_226AD8024()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 216);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t *BankConnectPassMatcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  sub_226AC47B0((v0 + 19), &qword_27D7A5FD0, &qword_226D708A0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  return v0;
}

uint64_t BankConnectPassMatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  sub_226AC47B0((v0 + 19), &qword_27D7A5FD0, &qword_226D708A0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_226AD81C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226AD827C;

  return BankConnectPassMatcher.institution(for:)(a1, a2, a3);
}

uint64_t sub_226AD827C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226AD8370(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD8408;

  return BankConnectPassMatcher.institutions(for:)(a1);
}

uint64_t sub_226AD8408(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226AD8504(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D685BC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_226D68BAC();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_226D688BC();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = sub_226D68BFC();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v16 = *(*(sub_226D671FC() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62A0, &qword_226D70CD0);
  v2[22] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v19 = sub_226D68DEC();
  v2[26] = v19;
  v20 = *(v19 - 8);
  v2[27] = v20;
  v21 = *(v20 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v22 = sub_226D684AC();
  v2[30] = v22;
  v23 = *(v22 - 8);
  v2[31] = v23;
  v24 = *(v23 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62A8, &qword_226D70CD8) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v26 = sub_226D6870C();
  v2[37] = v26;
  v27 = *(v26 - 8);
  v2[38] = v27;
  v28 = *(v27 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AD893C, 0, 0);
}

uint64_t sub_226AD893C()
{
  v1 = v0[3];
  v32 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v3 = 0;
    v4 = v0[4];
    v5 = v1 & 0xC000000000000001;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v6 = v0[3] + 32;
    v7 = &off_2785C8000;
    v30 = v1;
    v31 = i;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x22AA8AFD0](v3, v28[3]);
      }

      else
      {
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_32;
        }

        v8 = *(v6 + 8 * v3);
      }

      v9 = v8;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [v8 v7[480]];
      if (v10 && (v10, (v11 = [v9 issuerCountryCode]) != 0))
      {
        v12 = v11;
        sub_226D6E39C();

        v13 = v29[11];
        __swift_project_boxed_opaque_existential_1(v29 + 7, v29[10]);
        LOBYTE(v12) = sub_226D66E8C();

        if (v12)
        {
          v14 = [v9 associatedApplicationIdentifiers];
          if (!v14 || (v15 = v14, v16 = sub_226D6E89C(), v15, v17 = sub_226AE10EC(v16), , !v17))
          {

            v17 = MEMORY[0x277D84FA0];
          }

          v7 = &off_2785C8000;
          v18 = [v9 storeIdentifiers];
          if (v18)
          {
            v19 = v18;
            sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
            v20 = sub_226D6E5EC();
          }

          else
          {
            v20 = MEMORY[0x277D84F90];
          }

          v21 = *(v17 + 16);

          if (v21)
          {

            goto LABEL_25;
          }

          if (v20 >> 62)
          {
            v22 = sub_226D6EDFC();
          }

          else
          {
            v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v22)
          {
LABEL_25:
            sub_226D6EF6C();
            v23 = *(v32 + 16);
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
          }

          else
          {
          }

          v1 = v30;
          i = v31;
          goto LABEL_5;
        }

        v1 = v30;
        i = v31;
        v7 = &off_2785C8000;
      }

      else
      {
      }

LABEL_5:
      ++v3;
      if (v0 == i)
      {
        v24 = v32;
        v0 = v28;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_35:
  v0[41] = v24;
  v25 = swift_task_alloc();
  v0[42] = v25;
  *v25 = v0;
  v25[1] = sub_226AD8CA0;
  v26 = v0[4];

  return sub_226ADCB10();
}

uint64_t sub_226AD8CA0()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226AD8D9C, 0, 0);
}

uint64_t sub_226AD8D9C()
{
  v2 = v0;
  v3 = v0[41];
  v4 = MEMORY[0x277D84F90];
  v7 = sub_226B222FC(MEMORY[0x277D84F90]);
  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    v8 = sub_226D6EDFC();
    v0[43] = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *(v0[41] + 16);
    v0[43] = v8;
    if (v8)
    {
LABEL_4:
      v9 = v0[41];
      v10 = *(v0[4] + 144);
      v0[46] = v7;
      v0[47] = v7;
      v0[44] = v10;
      v0[45] = 0;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA8AFD0](0);
        v12 = v0[44];
LABEL_8:
        v0[48] = v11;
        v0[49] = 1;
        v13 = [v11 serialNumber];
        v14 = sub_226D6E39C();
        v16 = v15;

        v0[50] = v14;
        v0[51] = v16;
        sub_226D6C11C();
        sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0]);
        v18 = sub_226D6E6CC();

        return MEMORY[0x2822009F8](sub_226AD96EC, v18, v17);
      }

      if (*(v9 + 16))
      {
        v11 = *(v9 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return MEMORY[0x282119B28](v8, v9, v5, v6);
    }
  }

  v0[54] = v7;
  v19 = v0[41];

  v21 = sub_226AD66A0(v20);
  v124 = v4;
  v22 = v2[41];
  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    v24 = v2[41];
    v23 = sub_226D6EDFC();
    v22 = v2[41];
    v110 = v7;
    v112 = v2;
    if (!v23)
    {
      goto LABEL_15;
    }

LABEL_17:
    v25 = 0;
    v26 = v21 + 56;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AA8AFD0](v25, v112[41]);
      }

      else
      {
        if (v25 >= *(v22 + 16))
        {
          goto LABEL_64;
        }

        v28 = *(v22 + 32 + 8 * v25);
      }

      v1 = v28;
      if (__OFADD__(v25++, 1))
      {
        break;
      }

      v2 = v23;
      v30 = [v28 serialNumber];
      v31 = sub_226D6E39C();
      v33 = v32;

      if (*(v21 + 16) && (v34 = *(v21 + 40), sub_226D6F2FC(), sub_226D6E42C(), v35 = sub_226D6F35C(), v36 = -1 << *(v21 + 32), v37 = v35 & ~v36, ((*(v26 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
      {
        v38 = ~v36;
        while (1)
        {
          v39 = (*(v21 + 48) + 16 * v37);
          v40 = *v39 == v31 && v39[1] == v33;
          if (v40 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v26 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:

        sub_226D6EF6C();
        v27 = v124[2];
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      v23 = v2;
      if (v25 == v2)
      {
        v1 = v124;
        v7 = v110;
        v2 = v112;
        v41 = v112[41];
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v23 = *(v22 + 16);
  v110 = v7;
  v112 = v2;
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_15:
  v1 = MEMORY[0x277D84F90];
LABEL_37:
  v2[55] = v1;

  v42 = *(v7 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v42)
  {
    v96 = v1;
    v43 = v2[31];
    v44 = v2[27];
    v103 = v2[23];
    v105 = v2[24];
    v101 = v2[22];
    v125 = MEMORY[0x277D84F90];
    sub_226AE1D88(0, v42, 0);
    v21 = v125;
    v1 = v7 + 64;
    v45 = -1 << *(v7 + 32);
    v46 = sub_226D6ED6C();
    v47 = 0;
    v48 = *(v7 + 36);
    v107 = v44;
    v97 = v7 + 72;
    v98 = v42;
    v100 = (v7 + 64);
    v99 = v48;
    while ((v46 & 0x8000000000000000) == 0 && v46 < 1 << *(v7 + 32))
    {
      if ((*(v1 + 8 * (v46 >> 6)) & (1 << v46)) == 0)
      {
        goto LABEL_66;
      }

      if (v48 != *(v7 + 36))
      {
        goto LABEL_67;
      }

      v116 = v46 >> 6;
      v113 = v47;
      v51 = v2[24];
      v50 = v2[25];
      v52 = *(v101 + 48);
      v53 = v2[30];
      v120 = v2[29];
      v122 = v21;
      v54 = v2[23];
      v118 = v2[21];
      v55 = *(v7 + 56);
      v56 = (*(v7 + 48) + 16 * v46);
      v58 = *v56;
      v57 = v56[1];
      (*(v43 + 16))(v50 + v52, v55 + *(v43 + 72) * v46, v53);
      *v51 = v58;
      *(v105 + 8) = v57;
      (*(v43 + 32))(&v51[*(v101 + 48)], v50 + v52, v53);
      sub_226AC40E8(v51, v54, &qword_27D7A62A0, &qword_226D70CD0);
      v59 = *(v103 + 8);

      v60 = v54 + *(v101 + 48);
      sub_226D671EC();
      sub_226AC40E8(v51, v54, &qword_27D7A62A0, &qword_226D70CD0);
      v61 = *v54;
      v62 = *(v103 + 8);
      v63 = *(v101 + 48);
      sub_226D68DBC();
      sub_226AC47B0(v51, &qword_27D7A62A0, &qword_226D70CD0);
      v64 = v54 + v63;
      v21 = v122;
      (*(v43 + 8))(v64, v53);
      v66 = *(v122 + 16);
      v65 = *(v122 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_226AE1D88(v65 > 1, v66 + 1, 1);
        v21 = v122;
      }

      v2 = v112;
      v67 = v112[29];
      v68 = v112[26];
      *(v21 + 16) = v66 + 1;
      (*(v107 + 32))(v21 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v66, v67, v68);
      v7 = v110;
      v49 = 1 << *(v110 + 32);
      v1 = v100;
      if (v46 >= v49)
      {
        goto LABEL_68;
      }

      v69 = v100[v116];
      if ((v69 & (1 << v46)) == 0)
      {
        goto LABEL_69;
      }

      v48 = v99;
      if (v99 != *(v110 + 36))
      {
        goto LABEL_70;
      }

      v70 = v69 & (-2 << (v46 & 0x3F));
      if (v70)
      {
        v49 = __clz(__rbit64(v70)) | v46 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v71 = v116 << 6;
        v72 = (v97 + 8 * v116);
        v73 = v116 + 1;
        while (v73 < (v49 + 63) >> 6)
        {
          v75 = *v72++;
          v74 = v75;
          v71 += 64;
          ++v73;
          if (v75)
          {
            sub_226AE5444(v46, v99, 0);
            v49 = __clz(__rbit64(v74)) + v71;
            goto LABEL_40;
          }
        }

        sub_226AE5444(v46, v99, 0);
      }

LABEL_40:
      v47 = v113 + 1;
      v46 = v49;
      if (v113 + 1 == v98)
      {
        v1 = v96;
        goto LABEL_57;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    if (!sub_226D6EDFC())
    {
      goto LABEL_72;
    }

LABEL_60:
    v76 = v2[4];
    v77 = v76[16];
    __swift_project_boxed_opaque_existential_1(v76 + 12, v76[15]);
    v78 = sub_226D6C2AC();
    v2[57] = v78;
    v79 = swift_task_alloc();
    v2[58] = v79;
    v79[2] = v78;
    v79[3] = v1;
    v79[4] = v76;
    v80 = *(MEMORY[0x277CC7D90] + 4);
    v81 = swift_task_alloc();
    v2[59] = v81;
    *v81 = v2;
    v81[1] = sub_226ADA60C;
    v8 = v2[20];
    v6 = v2[18];
    v9 = &unk_226D70CF0;
    v5 = v79;

    return MEMORY[0x282119B28](v8, v9, v5, v6);
  }

LABEL_57:
  v2[56] = v21;
  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_71;
  }

  if (*(v1 + 16))
  {
    goto LABEL_60;
  }

LABEL_72:

  v83 = v2[39];
  v82 = v2[40];
  v123 = v21;
  v85 = v2[35];
  v84 = v2[36];
  v87 = v2[33];
  v86 = v2[34];
  v88 = v2;
  v89 = v2[32];
  v91 = v2[28];
  v90 = v2[29];
  v102 = v2[25];
  v104 = v2[24];
  v106 = v2[23];
  v108 = v2[21];
  v109 = v2[20];
  v111 = v2[17];
  v114 = v2[16];
  v115 = v2[15];
  v117 = v2[14];
  v119 = v2[11];
  v93 = v2 + 7;
  v92 = v2[7];
  v121 = v93[1];

  v94 = v88[1];

  return v94(v123);
}

uint64_t sub_226AD96EC()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[36];
  sub_226D6C10C();
  v0[52] = v4;
  if (v4)
  {
    v6 = sub_226AD9788;
  }

  else
  {
    v0[53] = 0;
    v7 = v0[51];

    v6 = sub_226AD9960;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226AD9788()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[52];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error obtaining cached response with error: %@.", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[38] + 56))(v0[36], 1, 1, v0[37]);
  v0[53] = 0;
  v12 = v0[51];

  return MEMORY[0x2822009F8](sub_226AD9960, 0, 0);
}

uint64_t sub_226AD9960()
{
  v5 = v1;
  v6 = v1[38];
  v8 = *(v5 + 288);
  v7 = *(v5 + 296);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = *(v5 + 384);

    sub_226AC47B0(v8, &qword_27D7A62A8, &qword_226D70CD8);
LABEL_13:
    v34 = *(v5 + 368);
    v21 = *(v5 + 376);
    while (1)
    {
      v35 = *(v5 + 392);
      if (v35 == *(v5 + 344))
      {
        break;
      }

      v39 = *(v5 + 424);
      *(v5 + 368) = v34;
      *(v5 + 376) = v21;
      *(v5 + 360) = v39;
      v40 = *(v5 + 328);
      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x22AA8AFD0](v35);
        goto LABEL_70;
      }

      if (v35 < *(v40 + 16))
      {
        v41 = *(v40 + 8 * v35 + 32);
LABEL_70:
        *(v5 + 384) = v41;
        *(v5 + 392) = v35 + 1;
        if (!__OFADD__(v35, 1))
        {
          v103 = *(v5 + 352);
          v104 = [v41 serialNumber];
          v105 = sub_226D6E39C();
          v107 = v106;

          *(v5 + 400) = v105;
          *(v5 + 408) = v107;
          sub_226D6C11C();
          sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0]);
          v109 = sub_226D6E6CC();

          return MEMORY[0x2822009F8](sub_226AD96EC, v109, v108);
        }

LABEL_87:
        __break(1u);
LABEL_88:
        if (!sub_226D6EDFC())
        {
LABEL_89:

          v117 = *(v5 + 312);
          v116 = *(v5 + 320);
          v119 = *(v5 + 280);
          v118 = *(v5 + 288);
          v158 = v2;
          v121 = *(v5 + 264);
          v120 = *(v5 + 272);
          v122 = v5;
          v123 = *(v5 + 256);
          v125 = v122[28];
          v124 = v122[29];
          v126 = v122[25];
          v133 = v122[24];
          v135 = v122[23];
          v137 = v122[21];
          v139 = v122[20];
          v140 = v122[17];
          v144 = v122[16];
          v146 = v122[15];
          v147 = v122[14];
          v149 = v122[11];
          v152 = v122[8];
          v155 = v122[7];

          v127 = v122[1];

          return v127(v158);
        }

LABEL_65:
        v93 = *(v5 + 32);
        v94 = v93[16];
        __swift_project_boxed_opaque_existential_1(v93 + 12, v93[15]);
        v95 = sub_226D6C2AC();
        *(v5 + 456) = v95;
        v96 = swift_task_alloc();
        *(v5 + 464) = v96;
        v96[2] = v95;
        v96[3] = v4;
        v96[4] = v93;
        v97 = *(MEMORY[0x277CC7D90] + 4);
        v98 = swift_task_alloc();
        *(v5 + 472) = v98;
        *v98 = v5;
        v98[1] = sub_226ADA60C;
        v99 = *(v5 + 160);
        v100 = *(v5 + 144);
        v101 = &unk_226D70CF0;
        v102 = v96;

        return MEMORY[0x282119B28](v99, v101, v102, v100);
      }

LABEL_93:
      __break(1u);
LABEL_94:
      v128 = v21;
      sub_226C37384();
      v21 = v128;
LABEL_75:
      v2 = *(v5 + 384);
      v110 = *(v5 + 304);
      v154 = *(v5 + 296);
      v157 = *(v5 + 320);
      v111 = *(v5 + 272);
      v151 = *(v5 + 280);
      v4 = *(v5 + 240);
      v112 = *(v5 + 248);
      if (v3)
      {
        v0 = v21;

        v34 = *(v5 + 16);
        (*(v112 + 40))(v34[7] + *(v112 + 72) * v0, v111, v4);

        (*(v112 + 8))(v151, v4);
        (*(v110 + 8))(v157, v154);
        v21 = v34;
      }

      else
      {
        v34 = *(v5 + 16);
        v34[(v21 >> 6) + 8] |= 1 << v21;
        v113 = (v34[6] + 16 * v21);
        *v113 = v0;
        v113[1] = v7;
        (*(v112 + 32))(v34[7] + *(v112 + 72) * v21, v111, v4);

        (*(v112 + 8))(v151, v4);
        v99 = (*(v110 + 8))(v157, v154);
        v114 = v34[2];
        v25 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v25)
        {
          __break(1u);
          return MEMORY[0x282119B28](v99, v101, v102, v100);
        }

        v34[2] = v115;
        v21 = v34;
        v5 = v141;
      }
    }

    *(v5 + 432) = v21;
    v36 = *(v5 + 328);

    v2 = sub_226AD66A0(v143);
    v159 = MEMORY[0x277D84F90];
    v37 = *(v5 + 328);
    if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
    {
      v42 = *(v5 + 328);
      v38 = sub_226D6EDFC();
      v37 = *(v5 + 328);
      v142 = v5;
      if (!v38)
      {
LABEL_18:
        v4 = MEMORY[0x277D84F90];
LABEL_42:
        *(v5 + 440) = v4;

        v58 = *(v143 + 16);
        v2 = MEMORY[0x277D84F90];
        if (!v58)
        {
LABEL_62:
          *(v5 + 448) = v2;
          if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
          {
            goto LABEL_88;
          }

          if (!*(v4 + 16))
          {
            goto LABEL_89;
          }

          goto LABEL_65;
        }

        v129 = v4;
        v59 = *(v5 + 248);
        v60 = *(v5 + 216);
        v134 = *(v5 + 184);
        v136 = *(v5 + 192);
        v132 = *(v5 + 176);
        v160 = MEMORY[0x277D84F90];
        sub_226AE1D88(0, v58, 0);
        v2 = v160;
        v61 = v143 + 64;
        v62 = -1 << *(v143 + 32);
        v63 = sub_226D6ED6C();
        v64 = v143;
        v65 = v63;
        v66 = 0;
        v4 = *(v143 + 36);
        v138 = v60;
        v130 = v58;
        v131 = v4;
        v67 = v59;
        while ((v65 & 0x8000000000000000) == 0 && v65 < 1 << *(v64 + 32))
        {
          if ((*(v61 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
          {
            goto LABEL_82;
          }

          if (v4 != *(v64 + 36))
          {
            goto LABEL_83;
          }

          v148 = v65 >> 6;
          v145 = v66;
          v4 = *(v5 + 192);
          v69 = *(v5 + 200);
          v70 = *(v132 + 48);
          v71 = *(v5 + 240);
          v153 = *(v5 + 232);
          v156 = v2;
          v72 = *(v5 + 184);
          v150 = *(v5 + 168);
          v73 = (*(v64 + 48) + 16 * v65);
          v74 = *v73;
          v75 = v73[1];
          (*(v67 + 16))(v69 + v70, *(v64 + 56) + *(v67 + 72) * v65, v71);
          *v4 = v74;
          *(v136 + 8) = v75;
          (*(v67 + 32))(v4 + *(v132 + 48), v69 + v70, v71);
          sub_226AC40E8(v4, v72, &qword_27D7A62A0, &qword_226D70CD0);
          v76 = *(v134 + 8);

          v77 = v72 + *(v132 + 48);
          sub_226D671EC();
          sub_226AC40E8(v4, v72, &qword_27D7A62A0, &qword_226D70CD0);
          v78 = *v72;
          v79 = *(v134 + 8);
          v80 = *(v132 + 48);
          sub_226D68DBC();
          sub_226AC47B0(v4, &qword_27D7A62A0, &qword_226D70CD0);
          v81 = v72 + v80;
          v2 = v156;
          (*(v67 + 8))(v81, v71);
          v83 = *(v156 + 16);
          v82 = *(v156 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_226AE1D88(v82 > 1, v83 + 1, 1);
            v2 = v156;
          }

          v5 = v142;
          v84 = v142[29];
          v85 = v142[26];
          *(v2 + 16) = v83 + 1;
          (*(v138 + 32))(v2 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v83, v84, v85);
          v64 = v143;
          v68 = 1 << *(v143 + 32);
          v61 = v143 + 64;
          if (v65 >= v68)
          {
            goto LABEL_84;
          }

          v86 = *(v143 + 64 + 8 * v148);
          if ((v86 & (1 << v65)) == 0)
          {
            goto LABEL_85;
          }

          v4 = v131;
          if (v131 != *(v143 + 36))
          {
            goto LABEL_86;
          }

          v87 = v86 & (-2 << (v65 & 0x3F));
          if (v87)
          {
            v68 = __clz(__rbit64(v87)) | v65 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v88 = v148 << 6;
            v89 = (v143 + 72 + 8 * v148);
            v90 = v148 + 1;
            while (v90 < (v68 + 63) >> 6)
            {
              v92 = *v89++;
              v91 = v92;
              v88 += 64;
              ++v90;
              if (v92)
              {
                sub_226AE5444(v65, v131, 0);
                v64 = v143;
                v68 = __clz(__rbit64(v91)) + v88;
                goto LABEL_45;
              }
            }

            sub_226AE5444(v65, v131, 0);
            v64 = v143;
          }

LABEL_45:
          v66 = v145 + 1;
          v65 = v68;
          if (v145 + 1 == v130)
          {
            v4 = v129;
            goto LABEL_62;
          }
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v38 = *(v37 + 16);
      v142 = v5;
      if (!v38)
      {
        goto LABEL_18;
      }
    }

    v5 = 0;
    v43 = v2 + 56;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x22AA8AFD0](v5, v142[41]);
      }

      else
      {
        if (v5 >= *(v37 + 16))
        {
          goto LABEL_80;
        }

        v45 = *(v37 + 32 + 8 * v5);
      }

      v4 = v45;
      v25 = __OFADD__(v5++, 1);
      if (v25)
      {
        break;
      }

      v46 = [v45 serialNumber];
      v47 = sub_226D6E39C();
      v49 = v48;

      if (*(v2 + 16) && (v50 = *(v2 + 40), sub_226D6F2FC(), sub_226D6E42C(), v51 = sub_226D6F35C(), v52 = -1 << *(v2 + 32), v53 = v51 & ~v52, ((*(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
      {
        v54 = ~v52;
        while (1)
        {
          v55 = (*(v2 + 48) + 16 * v53);
          v56 = *v55 == v47 && v55[1] == v49;
          if (v56 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v43 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (v5 == v38)
        {
LABEL_41:
          v4 = v159;
          v5 = v142;
          v57 = v142[41];
          goto LABEL_42;
        }
      }

      else
      {
LABEL_23:

        sub_226D6EF6C();
        v44 = *(v159 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        if (v5 == v38)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  (*(v6 + 32))(*(v5 + 320), v8, v7);
  v10 = sub_226D686FC();
  if (!v10)
  {
LABEL_12:
    v30 = *(v5 + 384);
    v31 = *(v5 + 320);
    v7 = *(v5 + 296);
    v32 = *(v5 + 304);

    v33 = *(v32 + 8);
    v0 = v32 + 8;
    v33(v31, v7);
    goto LABEL_13;
  }

  if (!*(v10 + 16))
  {

    goto LABEL_12;
  }

  v11 = *(v5 + 384);
  v12 = *(v5 + 368);
  v3 = *(v5 + 272);
  v13 = *(v5 + 280);
  v14 = *(v5 + 248);
  v141 = v5;
  v15 = *(v5 + 240);
  v16 = *(v14 + 16);
  v16(v13, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v15);

  v17 = [v11 serialNumber];

  v0 = sub_226D6E39C();
  v7 = v18;

  v19 = v15;
  v5 = v141;
  v16(v3, v13, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141[2] = v12;
  v21 = sub_226C2FDD4(v0, v7);
  v23 = *(v12 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
    goto LABEL_93;
  }

  LOBYTE(v3) = v22;
  if (*(v141[46] + 24) >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_75;
  }

  sub_226C30724(v26, isUniquelyReferenced_nonNull_native);
  v27 = v141[2];
  v21 = sub_226C2FDD4(v0, v7);
  if ((v3 & 1) == (v28 & 1))
  {
    goto LABEL_75;
  }

  return sub_226D6F25C();
}

uint64_t sub_226ADA60C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  v2[60] = v0;

  v5 = v2[58];
  if (v0)
  {
    v7 = v2[55];
    v6 = v2[56];
    v8 = v2[54];

    v9 = sub_226ADB770;
  }

  else
  {
    v10 = v2[55];

    v9 = sub_226ADA770;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226ADA770()
{
  v1 = v0[20];
  v2 = sub_226D68BEC();
  v0[61] = v2;
  v3 = *(v2 + 16);
  v0[62] = v3;
  if (v3)
  {
    v4 = v0;
    v5 = v0[31];
    v6 = v0[13];
    v7 = *(v6 + 80);
    *(v4 + 136) = v7;
    v4[63] = *(v6 + 72);
    v8 = *(v6 + 16);
    v4[64] = v8;
    v4[65] = 0;
    v9 = v4[39];
    v90 = v4[20];
    v10 = v4[17];
    v11 = v4[12];
    v12 = v4[7];
    v13 = v4[8];
    v14 = v4[6];
    v96 = v4[5];
    v8(v10, v2 + ((v7 + 32) & ~v7), v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62B8, &qword_226D70D00);
    v15 = *(v5 + 72);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_226D70840;
    sub_226D6889C();
    sub_226D686EC();
    sub_226D68BDC();
    sub_226D68B7C();
    sub_226D688AC();
    (*(v6 + 8))(v10, v11);
    v17 = sub_226D685AC();
    v19 = v18;
    v4[66] = v18;
    (*(v14 + 8))(v12, v96);
    v20 = swift_task_alloc();
    v4[67] = v20;
    *v20 = v4;
    v20[1] = sub_226ADAEBC;
    v21 = v4[4];
    v22 = v4[11];

    return sub_226ADDDC4(v22, v17, v19);
  }

  else
  {

    v24 = v0[20];
    result = sub_226D68BEC();
    v25 = result;
    v93 = *(result + 16);
    v97 = v0;
    if (v93)
    {
      v26 = 0;
      v27 = v0[13];
      v28 = (v0[31] + 8);
      v86 = (v27 + 32);
      v77 = MEMORY[0x277D84F90];
      while (v26 < *(v25 + 16))
      {
        v29 = v0[33];
        v30 = v0[30];
        v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v32 = *(v27 + 72);
        (*(v27 + 16))(v0[16], v25 + v31 + v32 * v26, v0[12]);
        sub_226D6889C();
        v33 = sub_226D6849C();
        (*v28)(v29, v30);
        if (v33 == 2 || (v33 & 1) == 0)
        {
          v0 = v97;
          result = (*(v27 + 8))(v97[16], v97[12]);
        }

        else
        {
          v0 = v97;
          v34 = *v86;
          (*v86)(v97[15], v97[16], v97[12]);
          v35 = v77;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1DCC(0, *(v77 + 16) + 1, 1);
            v0 = v97;
            v35 = v77;
          }

          v37 = *(v35 + 16);
          v36 = *(v35 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_226AE1DCC(v36 > 1, v37 + 1, 1);
            v0 = v97;
            v35 = v77;
          }

          v38 = v0[15];
          v39 = v0[12];
          *(v35 + 16) = v37 + 1;
          v77 = v35;
          result = v34(v35 + v31 + v37 * v32, v38, v39);
        }

        if (v93 == ++v26)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
LABEL_18:

      v40 = *(v77 + 16);
      if (v40)
      {
        v41 = v0[27];
        v42 = v0[13];
        v43 = v0[6];
        v99 = MEMORY[0x277D84F90];
        sub_226AE1D88(0, v40, 0);
        v44 = v97;
        v45 = v99;
        v46 = *(v42 + 16);
        v42 += 16;
        v47 = v77 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
        v84 = *(v42 + 56);
        v87 = v46;
        v91 = v41;
        v80 = (v42 - 8);
        v82 = (v43 + 8);
        do
        {
          v48 = v44[32];
          v94 = v44[28];
          v98 = v45;
          v49 = v44[21];
          v50 = v44[14];
          v51 = v44[12];
          v52 = v44[7];
          v53 = v44[5];
          v87(v50, v47, v51);
          sub_226D6889C();
          sub_226D671EC();
          sub_226D688AC();
          sub_226D685AC();
          (*v82)(v52, v53);
          v45 = v98;
          sub_226D68DBC();
          (*v80)(v50, v51);
          v55 = *(v98 + 16);
          v54 = *(v98 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_226AE1D88(v54 > 1, v55 + 1, 1);
            v45 = v98;
          }

          v56 = v44[28];
          v57 = v44[26];
          *(v45 + 16) = v55 + 1;
          (*(v91 + 32))(v45 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v55, v56, v57);
          v47 += v84;
          --v40;
        }

        while (v40);
        v0 = v44;
        v58 = v44[54];
      }

      else
      {
        v59 = v0[54];

        v45 = MEMORY[0x277D84F90];
      }

      v60 = v0[57];
      v62 = v0[19];
      v61 = v0[20];
      v63 = v0[18];
      v100 = v0[56];
      sub_226CED260(v45);

      (*(v62 + 8))(v61, v63);
      v65 = v0[39];
      v64 = v0[40];
      v67 = v0[35];
      v66 = v0[36];
      v69 = v0[33];
      v68 = v0[34];
      v70 = v0[32];
      v72 = v0[28];
      v71 = v0[29];
      v73 = v0[25];
      v75 = v0[24];
      v76 = v0[23];
      v78 = v0[21];
      v79 = v0[20];
      v81 = v0[17];
      v83 = v0[16];
      v85 = v0[15];
      v88 = v0[14];
      v89 = v0[11];
      v92 = v0[8];
      v95 = v0[7];

      v74 = v0[1];

      return v74(v100);
    }
  }

  return result;
}

uint64_t sub_226ADAEBC()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_226ADB030, 0, 0);
}

uint64_t sub_226ADB030()
{
  v1 = v0[65] + 1;
  if (v1 == v0[62])
  {
    v2 = v0[61];

    v3 = v0[20];
    result = sub_226D68BEC();
    v5 = result;
    v94 = *(result + 16);
    v98 = v0;
    if (v94)
    {
      v6 = 0;
      v7 = v0[13];
      v8 = (v0[31] + 8);
      v87 = (v7 + 32);
      v78 = MEMORY[0x277D84F90];
      while (v6 < *(v5 + 16))
      {
        v9 = v0[33];
        v10 = v0[30];
        v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v12 = *(v7 + 72);
        (*(v7 + 16))(v0[16], v5 + v11 + v12 * v6, v0[12]);
        sub_226D6889C();
        v13 = sub_226D6849C();
        (*v8)(v9, v10);
        if (v13 == 2 || (v13 & 1) == 0)
        {
          v0 = v98;
          result = (*(v7 + 8))(v98[16], v98[12]);
        }

        else
        {
          v0 = v98;
          v14 = *v87;
          (*v87)(v98[15], v98[16], v98[12]);
          v15 = v78;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1DCC(0, *(v78 + 16) + 1, 1);
            v0 = v98;
            v15 = v78;
          }

          v17 = *(v15 + 16);
          v16 = *(v15 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_226AE1DCC(v16 > 1, v17 + 1, 1);
            v0 = v98;
            v15 = v78;
          }

          v18 = v0[15];
          v19 = v0[12];
          *(v15 + 16) = v17 + 1;
          v78 = v15;
          result = v14(v15 + v11 + v17 * v12, v18, v19);
        }

        if (v94 == ++v6)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v78 = MEMORY[0x277D84F90];
LABEL_18:

      v41 = *(v78 + 16);
      if (v41)
      {
        v42 = v0[27];
        v43 = v0[13];
        v44 = v0[6];
        v101 = MEMORY[0x277D84F90];
        sub_226AE1D88(0, v41, 0);
        v45 = v98;
        v46 = v101;
        v47 = *(v43 + 16);
        v43 += 16;
        v48 = v78 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
        v85 = *(v43 + 56);
        v88 = v47;
        v92 = v42;
        v81 = (v43 - 8);
        v83 = (v44 + 8);
        do
        {
          v49 = v45[32];
          v96 = v45[28];
          v100 = v46;
          v50 = v45[21];
          v51 = v45[14];
          v52 = v45[12];
          v53 = v45[7];
          v54 = v45[5];
          v88(v51, v48, v52);
          sub_226D6889C();
          sub_226D671EC();
          sub_226D688AC();
          sub_226D685AC();
          (*v83)(v53, v54);
          v46 = v100;
          sub_226D68DBC();
          (*v81)(v51, v52);
          v56 = *(v100 + 16);
          v55 = *(v100 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_226AE1D88(v55 > 1, v56 + 1, 1);
            v46 = v100;
          }

          v57 = v45[28];
          v58 = v45[26];
          *(v46 + 16) = v56 + 1;
          (*(v92 + 32))(v46 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v56, v57, v58);
          v48 += v85;
          --v41;
        }

        while (v41);
        v0 = v45;
        v59 = v45[54];
      }

      else
      {
        v60 = v0[54];

        v46 = MEMORY[0x277D84F90];
      }

      v61 = v0[57];
      v63 = v0[19];
      v62 = v0[20];
      v64 = v0[18];
      v102 = v0[56];
      sub_226CED260(v46);

      (*(v63 + 8))(v62, v64);
      v66 = v0[39];
      v65 = v0[40];
      v68 = v0[35];
      v67 = v0[36];
      v70 = v0[33];
      v69 = v0[34];
      v71 = v0[32];
      v73 = v0[28];
      v72 = v0[29];
      v74 = v0[25];
      v76 = v0[24];
      v77 = v0[23];
      v79 = v0[21];
      v80 = v0[20];
      v82 = v0[17];
      v84 = v0[16];
      v86 = v0[15];
      v89 = v0[14];
      v90 = v0[11];
      v93 = v0[8];
      v97 = v0[7];

      v75 = v0[1];

      return v75(v102);
    }
  }

  else
  {
    v0[65] = v1;
    v21 = v0[63];
    v20 = v0[64];
    v22 = *(v0 + 544);
    v23 = v0[61];
    v24 = v0[39];
    v25 = v0;
    v26 = v0[31];
    v27 = v0[17];
    v28 = v0[12];
    v29 = v0[13];
    v91 = v0[11];
    v95 = v0[20];
    v30 = v0[7];
    v31 = v0[8];
    v32 = v0[6];
    v99 = v25[5];
    v20(v27, v23 + ((v22 + 32) & ~v22) + v21 * v1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62B8, &qword_226D70D00);
    v33 = *(v26 + 72);
    v34 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_226D70840;
    sub_226D6889C();
    sub_226D686EC();
    sub_226D68BDC();
    sub_226D68B7C();
    sub_226D688AC();
    (*(v29 + 8))(v27, v28);
    v35 = sub_226D685AC();
    v37 = v36;
    v25[66] = v36;
    (*(v32 + 8))(v30, v99);
    v38 = swift_task_alloc();
    v25[67] = v38;
    *v38 = v25;
    v38[1] = sub_226ADAEBC;
    v39 = v25[4];
    v40 = v25[11];

    return sub_226ADDDC4(v40, v35, v37);
  }

  return result;
}

uint64_t sub_226ADB770()
{
  v1 = v0[57];

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[60];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[60];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to fetch the institutions via batch endpoint: %@.", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v12 = v0[60];
  v13 = v0[39];
  v14 = v0[40];
  v15 = v0[35];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[34];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[25];
  v27 = v0[24];
  v28 = v0[23];
  v29 = v0[21];
  v30 = v0[20];
  v31 = v0[17];
  v32 = v0[16];
  v33 = v0[15];
  v34 = v0[14];
  v35 = v0[11];
  v36 = v0[8];
  v37 = v0[7];

  v19 = sub_226D6A0DC();
  sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v20 = v12;
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CC7AB0], v19);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_226ADBAB0(id *a1)
{
  v1 = [*a1 serialNumber];
  v2 = sub_226D6E39C();
  v4 = v3;

  if (v2 == sub_226D68DDC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_226D6F21C();
  }

  return v7 & 1;
}

uint64_t sub_226ADBB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_226D690AC();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = sub_226D68C9C();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226ADBCB8, 0, 0);
}

uint64_t sub_226ADBCB8()
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 152);
  sub_226D6717C();
  sub_226D68C8C();
  *(v0 + 240) = sub_226AE41E4(&qword_27D7A6288, MEMORY[0x277CC75A8]);
  LOBYTE(v5) = sub_226D6ED1C();
  v6 = *(v4 + 8);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
LABEL_2:
    v7 = 1;
LABEL_42:
    v70 = *(v0 + 224);
    v69 = *(v0 + 232);
    v71 = *(v0 + 200);

    v72 = *(v0 + 8);
    v73 = *MEMORY[0x277D85DE8];

    return v72(v7);
  }

  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 152);
  sub_226D6717C();
  sub_226D68C7C();
  LOBYTE(v11) = sub_226D6ED1C();
  v6(v9, v10);
  v6(v8, v10);
  if (v11)
  {
    v12 = *(v0 + 160);
    v13 = -1;
    v14 = -1 << *(v12 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v12 + 56);
    v16 = (63 - v14) >> 6;
    v17 = *(v0 + 160);

    v18 = 0;
    if (v15)
    {
      while (1)
      {
        v19 = v18;
LABEL_11:
        v20 = (*(v12 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v15)))));
        v21 = *v20;
        v22 = v20[1];

        v23 = sub_226D6E36C();

        v24 = objc_opt_self();
        *(v0 + 144) = 0;
        v25 = [v24 bundleRecordWithApplicationIdentifier:v23 error:v0 + 144];

        v26 = *(v0 + 144);
        if (v25)
        {
          break;
        }

        v15 &= v15 - 1;
        v27 = v26;
        v28 = sub_226D6D04C();

        swift_willThrow();
        v18 = v19;
        if (!v15)
        {
          goto LABEL_8;
        }
      }

      v46 = *(v0 + 160);
      v47 = v26;

LABEL_46:

      goto LABEL_2;
    }

    while (1)
    {
LABEL_8:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        v31 = v12 & 0xFFFFFFFFFFFFFF8;
        if (*(v0 + 168) < 0)
        {
          v48 = *(v0 + 168);
        }

        v49 = sub_226D6EDFC();
        *(v0 + 264) = v31;
        *(v0 + 272) = v49;
        if (!v49)
        {
          goto LABEL_32;
        }

LABEL_17:
        v33 = *(v0 + 168);
        if ((v33 & 0xC000000000000001) != 0)
        {
          goto LABEL_48;
        }

        if (*(v31 + 16))
        {
          v34 = *(v33 + 32);
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_50;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 56 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v29 = *(v0 + 176);
    v30 = *(v0 + 160);

    sub_226AC40E8(v29 + 152, v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
    if (*(v0 + 80))
    {
      v12 = *(v0 + 168);
      sub_226AC484C((v0 + 56), v0 + 16);
      if (!(v12 >> 62))
      {
        v31 = v12 & 0xFFFFFFFFFFFFFF8;
        v32 = *(v31 + 16);
        *(v0 + 264) = v31;
        *(v0 + 272) = v32;
        if (v32)
        {
          goto LABEL_17;
        }

LABEL_32:
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    sub_226AC47B0(v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
    if (qword_28105F708 == -1)
    {
      goto LABEL_24;
    }

LABEL_50:
    swift_once();
LABEL_24:
    v42 = sub_226D6E07C();
    __swift_project_value_buffer(v42, qword_28105F710);
    v43 = sub_226D6E05C();
    v44 = sub_226D6E9EC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226AB4000, v43, v44, "Unable to validate associatedStoreIdentifiers, softwareLibrary unavailable on this platform.", v45, 2u);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
    }
  }

LABEL_33:
  v51 = *(v0 + 248);
  v50 = *(v0 + 256);
  v53 = *(v0 + 232);
  v52 = *(v0 + 240);
  v54 = *(v0 + 224);
  v55 = *(v0 + 208);
  v56 = *(v0 + 152);
  sub_226D6717C();
  sub_226D68C6C();
  LOBYTE(v56) = sub_226D6ED1C();
  v51(v54, v55);
  v51(v53, v55);
  if ((v56 & 1) == 0)
  {
LABEL_41:
    v7 = 0;
    goto LABEL_42;
  }

  v57 = *(v0 + 152);
  v58 = sub_226D6719C();
  v7 = v58;
  if (!v58)
  {
    goto LABEL_42;
  }

  v59 = *(v58 + 16);
  if (!v59)
  {
LABEL_40:

    goto LABEL_41;
  }

  v60 = 0;
  v61 = (v58 + 40);
  while (v60 < *(v7 + 16))
  {
    v63 = *(v61 - 1);
    v62 = *v61;
    v64 = objc_allocWithZone(MEMORY[0x277CC1E50]);

    v65 = sub_226D6E36C();

    *(v0 + 136) = 0;
    v25 = [v64 initWithBundleIdentifier:v65 error:v0 + 136];

    v66 = *(v0 + 136);
    if (v25)
    {
      v74 = v66;

      goto LABEL_46;
    }

    ++v60;
    v67 = v66;
    v68 = sub_226D6D04C();

    swift_willThrow();
    v61 += 2;
    if (v59 == v60)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_48:
  v34 = MEMORY[0x22AA8AFD0](0);
LABEL_20:
  v35 = v34;
  *(v0 + 280) = v34;
  *(v0 + 288) = 1;
  v36 = *(v0 + 200);
  sub_226AE532C(v0 + 16, v0 + 96);
  v37 = v35;
  sub_226D6909C();
  v38 = *(MEMORY[0x277CC7758] + 4);
  v39 = swift_task_alloc();
  *(v0 + 296) = v39;
  *v39 = v0;
  v39[1] = sub_226ADC344;
  v40 = *(v0 + 200);
  v41 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282118688]();
}

uint64_t sub_226ADC344(char a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(v4 + 304) = v1;

  v7 = *(v4 + 200);
  v8 = *(v4 + 184);
  v9 = (*(v4 + 192) + 8);
  if (v1)
  {
    (*v9)(v7, v8);
    v10 = sub_226ADC844;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    (*v9)(v7, v8);
    v10 = sub_226ADC500;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226ADC500()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v2 = 1;
    goto LABEL_13;
  }

  v2 = *(v0 + 288);
  if (v2 != *(v0 + 272))
  {
    v29 = *(v0 + 168);
    if ((v29 & 0xC000000000000001) == 0)
    {
      if (v2 >= *(*(v0 + 264) + 16))
      {
        goto LABEL_27;
      }

      v30 = *(v29 + 8 * v2 + 32);
LABEL_19:
      v31 = v30;
      *(v0 + 280) = v30;
      *(v0 + 288) = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        v32 = *(v0 + 200);
        sub_226AE532C(v0 + 16, v0 + 96);
        v33 = v31;
        sub_226D6909C();
        v34 = *(MEMORY[0x277CC7758] + 4);
        v35 = swift_task_alloc();
        *(v0 + 296) = v35;
        *v35 = v0;
        v35[1] = sub_226ADC344;
        v36 = *(v0 + 200);
        v37 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282118688]();
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

LABEL_25:
    v30 = MEMORY[0x22AA8AFD0](v2);
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v9 = *(v0 + 152);
  sub_226D6717C();
  sub_226D68C6C();
  LOBYTE(v9) = sub_226D6ED1C();
  v4(v7, v8);
  v4(v6, v8);
  if ((v9 & 1) == 0)
  {
LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  v10 = *(v0 + 152);
  v11 = sub_226D6719C();
  v2 = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v13 = 0;
  v14 = (v11 + 40);
  while (1)
  {
    if (v13 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    v16 = *(v14 - 1);
    v15 = *v14;
    v17 = objc_allocWithZone(MEMORY[0x277CC1E50]);

    v18 = sub_226D6E36C();

    *(v0 + 136) = 0;
    v19 = [v17 initWithBundleIdentifier:v18 error:v0 + 136];

    v20 = *(v0 + 136);
    if (v19)
    {
      break;
    }

    ++v13;
    v21 = v20;
    v22 = sub_226D6D04C();

    swift_willThrow();
    v14 += 2;
    if (v12 == v13)
    {
      goto LABEL_11;
    }
  }

  v38 = v20;

  v2 = 1;
LABEL_13:
  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  v25 = *(v0 + 200);

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26(v2);
}

uint64_t sub_226ADC844()
{
  v25 = *MEMORY[0x277D85DE8];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[35];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = v1;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[38];
    v9 = v0[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to determine if %@ was installed with error: %@.", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  v15 = v0[38];
  v16 = v0[35];
  v17 = v0[28];
  v18 = v0[29];
  v19 = v0[25];

  v20 = sub_226D6A0DC();
  sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v21 = v15;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277CC7AB0], v20);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22(0);
}

uint64_t sub_226ADCB10()
{
  v1[2] = v0;
  v2 = sub_226D6D4AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADCBD0, 0, 0);
}

uint64_t sub_226ADCBD0()
{
  v1 = v0[5];
  v0[6] = *(v0[2] + 144);
  sub_226D6D46C();
  sub_226D6C11C();
  sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0]);
  v3 = sub_226D6E6CC();

  return MEMORY[0x2822009F8](sub_226ADCC98, v3, v2);
}

uint64_t sub_226ADCC98()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_226D6C0DC();
  v0[7] = 0;
  (*(v4 + 8))(v1, v3);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_226ADCD7C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error removing expired cached responses: %@", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226ADCF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226ADCF4C, 0, 0);
}

uint64_t sub_226ADCF4C()
{
  *(v0 + 48) = *(*(v0 + 40) + 144);
  sub_226D6C11C();
  sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0]);
  v2 = sub_226D6E6CC();

  return MEMORY[0x2822009F8](sub_226ADD00C, v2, v1);
}

uint64_t sub_226ADD00C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_226D6C10C();
  v0[7] = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_226ADD0C4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error obtaining cached response with error: %@.", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = sub_226D6870C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_226ADD2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6C95C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_226D6C96C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADD3CC, 0, 0);
}

uint64_t sub_226ADD3CC()
{
  v51 = v0;
  v1 = v0[4];
  v47 = v1 >> 62;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[4]; ; i = v0[4])
  {
    v5 = v1 & 0xC000000000000001;
    v6 = i + 32;
    if (v3)
    {
      v7 = 0;
      v48 = MEMORY[0x277D84F90];
      do
      {
        v8 = v7;
        while (1)
        {
          if (v5)
          {
            v9 = MEMORY[0x22AA8AFD0](v8, v0[4]);
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v8 >= *(v2 + 16))
            {
              goto LABEL_45;
            }

            v9 = *(v6 + 8 * v8);
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }
          }

          v10 = v9;
          v11 = [v10 issuerCountryCode];
          if (v11)
          {
            break;
          }

          ++v8;
          if (v7 == v3)
          {
            goto LABEL_22;
          }
        }

        v45 = v1;
        v12 = v11;
        v13 = sub_226D6E39C();
        v44 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_226BBAB0C(0, *(v48 + 2) + 1, 1, v48);
        }

        v16 = *(v48 + 2);
        v15 = *(v48 + 3);
        if (v16 >= v15 >> 1)
        {
          v48 = sub_226BBAB0C((v15 > 1), v16 + 1, 1, v48);
        }

        *(v48 + 2) = v16 + 1;
        v17 = &v48[16 * v16];
        v1 = v45;
        *(v17 + 4) = v13;
        *(v17 + 5) = v44;
      }

      while (v7 != v3);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

LABEL_22:
    v18 = sub_226AE3C28(v48);

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = sub_226C24A6C(*(v18 + 16), 0);
      v21 = sub_226C3A908(&v49, v20 + 4, v19, v18);
      v22 = sub_226AD3C20();
      if (v21 != v19)
      {
        __break(1u);
LABEL_50:
        __break(1u);
        return MEMORY[0x282119B18](v22, v23);
      }

      if (!v47)
      {
LABEL_25:
        v1 = *(v2 + 16);
        goto LABEL_30;
      }
    }

    else
    {

      if (!v47)
      {
        goto LABEL_25;
      }
    }

    v24 = v0[4];
    if (v1 < 0)
    {
      v25 = v0[4];
    }

    v1 = sub_226D6EDFC();
LABEL_30:
    if (!v1)
    {
      break;
    }

    v50 = MEMORY[0x277D84F90];
    v22 = sub_226AE1E10(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      goto LABEL_50;
    }

    v46 = v6;
    v26 = 0;
    v27 = v0[7];
    v28 = v50;
    v47 = v2;
    v29 = v5;
    v30 = v1;
    while (1)
    {
      v2 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v5)
      {
        v31 = MEMORY[0x22AA8AFD0](v26, v0[4]);
      }

      else
      {
        if (v26 >= *(v47 + 16))
        {
          goto LABEL_47;
        }

        v31 = *(v46 + 8 * v26);
      }

      v32 = v31;
      v33 = v0[8];
      v34 = v0[5];
      v49 = v31;
      sub_226ADDA08(&v49, v33);

      v50 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      v1 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_226AE1E10(v35 > 1, v36 + 1, 1);
        v28 = v50;
      }

      v37 = v0[8];
      v38 = v0[6];
      *(v28 + 16) = v1;
      (*(v27 + 32))(v28 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v36, v37, v38);
      ++v26;
      v5 = v29;
      if (v2 == v30)
      {
        goto LABEL_41;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v3 = sub_226D6EDFC();
  }

LABEL_41:
  v39 = v0[11];
  sub_226D6C93C();
  v40 = *(MEMORY[0x277CC7D80] + 4);
  v41 = swift_task_alloc();
  v0[12] = v41;
  *v41 = v0;
  v41[1] = sub_226ADD7E0;
  v23 = v0[11];
  v22 = v0[2];
  v42 = v0[3];

  return MEMORY[0x282119B18](v22, v23);
}

uint64_t sub_226ADD7E0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  v6[13] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226ADD998, 0, 0);
  }

  else
  {
    v7 = v6[11];
    v8 = v6[8];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_226ADD998()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

char *sub_226ADDA08@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v32 = [*a1 passTypeIdentifier];
  sub_226D6E39C();
  v31 = [v3 serialNumber];
  sub_226D6E39C();
  v4 = [v3 associatedApplicationIdentifiers];
  if (!v4 || (v5 = v4, v6 = sub_226D6E89C(), v5, v7 = sub_226AE10EC(v6), , !v7))
  {

    v7 = MEMORY[0x277D84FA0];
  }

  v8 = *(v7 + 16);
  v33[6] = a2;
  if (v8)
  {
    v30 = sub_226C24A6C(v8, 0);
    v9 = sub_226C3A908(v33, v30 + 4, v8, v7);
    sub_226AD3C20();
    if (v9 == v8)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_8:
  v10 = [v3 storeIdentifiers];
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v10;
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v13 = sub_226D6E5EC();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v13 >> 62)
  {
    v14 = sub_226D6EDFC();
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  v33[0] = v11;
  result = sub_226AE1D68(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = 0;
  v17 = v33[0];
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x22AA8AFD0](v16, v13);
    }

    else
    {
      v18 = *(v13 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v19 stringValue];
    v21 = sub_226D6E39C();
    v23 = v22;

    v33[0] = v17;
    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_226AE1D68((v24 > 1), v25 + 1, 1);
      v17 = v33[0];
    }

    ++v16;
    *(v17 + 16) = v25 + 1;
    v26 = v17 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
  }

  while (v14 != v16);
LABEL_23:

  result = [v3 devicePrimaryPaymentApplication];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = result;
  [result paymentType];

  result = PKPaymentMethodTypeToString();
  if (result)
  {
    v28 = result;

    sub_226D6E39C();
    v29 = [v3 organizationName];
    sub_226D6E39C();

    return sub_226D6C94C();
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_226ADDDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D68BAC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v10 = sub_226D6D4AC();
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v12 = *(v11 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADDF50, 0, 0);
}

uint64_t sub_226ADDF50()
{
  v43 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[2];
  sub_226D68B9C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v0[13], &qword_27D7A8BE0, &unk_226D718F0);
LABEL_8:
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v12 = v0[10];
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[2];
    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F710);
    (*(v14 + 16))(v12, v15, v13);
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9BC();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[11];
      v19 = v0[12];
      v21 = v0[10];
      v22 = v0[6];
      v23 = v0[7];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136315138;
      sub_226D68B9C();
      v26 = sub_226D6E3FC();
      v28 = v27;
      (*(v23 + 8))(v21, v22);
      v29 = sub_226AC4530(v26, v28, &v42);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_226AB4000, v17, v18, "Response expiration not valid. Expiration: %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    else
    {
      v30 = v0[10];
      v31 = v0[6];
      v32 = v0[7];

      (*(v32 + 8))(v30, v31);
    }

    v34 = v0[16];
    v33 = v0[17];
    v36 = v0[12];
    v35 = v0[13];
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[8];

    v40 = v0[1];

    return v40();
  }

  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[15];
  (*(v7 + 32))(v0[17], v0[13], v6);
  sub_226D6D46C();
  v8 = sub_226D6D3FC();
  v9 = *(v7 + 8);
  v0[18] = v9;
  v0[19] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v6);
  if ((v8 & 1) == 0)
  {
    v9(v0[17], v0[14]);
    goto LABEL_8;
  }

  v0[20] = *(v0[5] + 144);
  sub_226D6C11C();
  sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0]);
  v11 = sub_226D6E6CC();

  return MEMORY[0x2822009F8](sub_226ADE320, v11, v10);
}

uint64_t sub_226ADE320()
{
  v1 = v0[20];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_226D6C0EC();
  v0[21] = 0;

  return MEMORY[0x2822009F8](sub_226ADE3B4, 0, 0);
}

uint64_t sub_226ADE3B4()
{
  v1 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 136), *(v0 + 112));
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226ADE470()
{
  v46 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v43 = v12;
  v44 = v0[14];
  v16 = v0[9];
  if (v11)
  {
    v42 = v0[18];
    v18 = v0[7];
    v17 = v0[8];
    v40 = v10;
    v19 = v0[6];
    v41 = v0[17];
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v20 = 136315394;
    v7(v17, v16, v19);
    v21 = sub_226D6E3FC();
    v23 = v22;
    (*(v18 + 8))(v16, v19);
    v24 = sub_226AC4530(v21, v23, &v45);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2112;
    v25 = v43;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v38 = v26;
    _os_log_impl(&dword_226AB4000, v9, v40, "Failed to add response: %s to cache for with error: %@.", v20, 0x16u);
    sub_226AC47B0(v38, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x22AA8BEE0](v39, -1, -1);
    MEMORY[0x22AA8BEE0](v20, -1, -1);

    v42(v41, v44);
  }

  else
  {
    v27 = v0[6];
    v28 = v0[7];

    (*(v28 + 8))(v16, v27);
    v14(v15, v44);
  }

  v30 = v0[16];
  v29 = v0[17];
  v32 = v0[12];
  v31 = v0[13];
  v34 = v0[9];
  v33 = v0[10];
  v35 = v0[8];

  v36 = v0[1];

  return v36();
}

uint64_t sub_226ADE79C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D671FC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_226D684AC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v2[10] = *(v8 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_226D68BAC();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62A8, &qword_226D70CD8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = sub_226D6870C();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADEA0C, 0, 0);
}

uint64_t sub_226ADEA0C()
{
  v1 = [*(v0 + 16) issuerCountryCode];
  if (!v1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v15 = 0xD000000000000032;
    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F710);
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();
    v19 = "bankConnect/passMatcher";
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Pass doesn't have a issuer country code, unable to determine eligibility. Aborting.";
LABEL_12:
    _os_log_impl(&dword_226AB4000, v17, v18, v21, v20, 2u);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
LABEL_13:

    v22 = sub_226D6A0DC();
    sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    v23 = swift_allocError();
    *v24 = v15;
    v24[1] = v19 | 0x8000000000000000;
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277CC7AC0], v22);
    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v25 = sub_226D6E07C();
    __swift_project_value_buffer(v25, qword_28105F710);
    v26 = v23;
    v27 = sub_226D6E05C();
    v28 = sub_226D6E9CC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v23;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_226AB4000, v27, v28, "Failed to fetch the institutions: %@.", v29, 0xCu);
      sub_226AC47B0(v30, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    v33 = *(v0 + 168);
    v34 = *(v0 + 136);
    v35 = *(v0 + 144);
    v36 = *(v0 + 104);
    v37 = *(v0 + 112);
    v38 = *(v0 + 96);
    v57 = *(v0 + 88);
    v58 = *(v0 + 56);
    v59 = *(v0 + 48);

    v39 = sub_226D6A0DC();
    sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
    swift_allocError();
    *v40 = v23;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277CC7AB0], v39);
    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }

  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_226D6E39C();
  v6 = v5;

  *(v0 + 176) = v4;
  *(v0 + 184) = v6;
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  if (sub_226D66E8C())
  {
    v8 = [*(v0 + 16) associatedApplicationIdentifiers];
    if (!v8 || (v9 = v8, v10 = sub_226D6E89C(), v9, v11 = sub_226AE10EC(v10), , !v11))
    {

      v11 = MEMORY[0x277D84FA0];
    }

    *(v0 + 192) = v11;
    v12 = [*(v0 + 16) storeIdentifiers];
    if (v12)
    {
      v13 = v12;
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v14 = sub_226D6E5EC();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    *(v0 + 200) = v14;
    if (*(v11 + 16))
    {
      goto LABEL_27;
    }

    if (v14 >> 62)
    {
      if (sub_226D6EDFC())
      {
        goto LABEL_27;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      v54 = swift_task_alloc();
      *(v0 + 208) = v54;
      *v54 = v0;
      v54[1] = sub_226ADF14C;
      v55 = *(v0 + 24);

      return sub_226ADCB10();
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v56 = sub_226D6E07C();
    __swift_project_value_buffer(v56, qword_28105F710);
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();
    v19 = "suer country code.";
    v15 = 0xD000000000000059;
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Failed to fetch the institutions. Payment pass doesn't have any associatedApplicationIdentifiers or associatedStoreIdentifiers.";
    goto LABEL_12;
  }

  v43 = *(v0 + 168);
  v44 = *(v0 + 136);
  v45 = *(v0 + 144);
  v47 = *(v0 + 104);
  v46 = *(v0 + 112);
  v49 = *(v0 + 88);
  v48 = *(v0 + 96);
  v51 = *(v0 + 48);
  v50 = *(v0 + 56);

  v52 = *(v0 + 8);
  v53 = MEMORY[0x277D84F90];

  return v52(v53);
}

uint64_t sub_226ADF14C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226ADF248, 0, 0);
}

uint64_t sub_226ADF248()
{
  v1 = [*(v0 + 16) serialNumber];
  v2 = sub_226D6E39C();
  v4 = v3;

  *(v0 + 216) = v2;
  *(v0 + 224) = v4;
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_226ADF320;
  v6 = *(v0 + 144);
  v7 = *(v0 + 24);

  return sub_226ADCF28(v6, v2, v4);
}

uint64_t sub_226ADF320()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226ADF41C, 0, 0);
}

uint64_t sub_226ADF41C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    sub_226AC47B0(v3, &qword_27D7A62A8, &qword_226D70CD8);
    v6 = v5[16];
    __swift_project_boxed_opaque_existential_1(v5 + 12, v5[15]);
    v7 = sub_226D6C2AC();
    *(v0 + 240) = v7;
    v8 = [v4 devicePrimaryPaymentApplication];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 paymentType];
    }

    else
    {
      v10 = 0;
    }

    v58 = *(v0 + 216);
    v57 = *(v0 + 224);
    v81 = *(v0 + 176);
    v59 = *(v0 + 16);
    v60 = swift_task_alloc();
    *(v0 + 248) = v60;
    v61 = *(v0 + 192);
    *(v60 + 16) = v7;
    *(v60 + 24) = v81;
    *(v60 + 40) = v59;
    *(v60 + 48) = v58;
    *(v60 + 56) = v57;
    *(v60 + 64) = v61;
    *(v60 + 80) = v10;
    v62 = *(MEMORY[0x277CC7D90] + 4);
    v63 = swift_task_alloc();
    *(v0 + 256) = v63;
    *v63 = v0;
    v63[1] = sub_226ADFAC0;
    v17 = *(v0 + 136);
    v20 = *(v0 + 120);
    v18 = &unk_226D70D68;
    v19 = v60;

    return MEMORY[0x282119B28](v17, v18, v19, v20);
  }

  v11 = *(v0 + 224);
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);

  (*(v2 + 32))(v15, v3, v1);
  v16 = *(v0 + 168);
  v17 = sub_226D686FC();
  if (v17)
  {
    v21 = v17;
    v22 = *(v17 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v24 = 0;
      v25 = *(v0 + 72);
      v79 = (v25 + 32);
      v76 = *(v17 + 16);
      while (v24 < *(v21 + 16))
      {
        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = *(v25 + 72);
        (*(v25 + 16))(*(v0 + 112), v21 + v26 + v27 * v24, *(v0 + 64));
        v28 = sub_226D6849C();
        if (v28 == 2 || (v28 & 1) == 0)
        {
          v17 = (*(v25 + 8))(*(v0 + 112), *(v0 + 64));
        }

        else
        {
          v78 = *v79;
          (*v79)(*(v0 + 104), *(v0 + 112), *(v0 + 64));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1D24(0, *(v23 + 16) + 1, 1);
          }

          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          v31 = v23;
          if (v30 >= v29 >> 1)
          {
            sub_226AE1D24(v29 > 1, v30 + 1, 1);
            v31 = v23;
          }

          v32 = *(v0 + 104);
          v33 = *(v0 + 64);
          *(v31 + 16) = v30 + 1;
          v17 = v78(v31 + v26 + v30 * v27, v32, v33);
          v23 = v31;
          v22 = v76;
        }

        if (v22 == ++v24)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      return MEMORY[0x282119B28](v17, v18, v19, v20);
    }

LABEL_17:

    v34 = v23;
    if (*(v23 + 16))
    {
      v35 = *(v0 + 96);
      v36 = *(v0 + 72);
      v37 = *(v0 + 80);
      v39 = *(v0 + 56);
      v38 = *(v0 + 64);
      v40 = *(v0 + 24);
      v41 = *(v36 + 80);
      v42 = v34 + ((v41 + 32) & ~v41);
      v43 = sub_226D6E79C();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v80 = *(v36 + 16);
      v80(v35, v42, v38);
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = 0;
      v44[4] = v40;
      (*(v36 + 32))(v44 + ((v41 + 40) & ~v41), v35, v38);

      sub_226B60364(0, 0, v39, &unk_226D70D78, v44);

      v45 = *(v34 + 16);
      if (v45)
      {
        v46 = *(v0 + 72);
        v47 = *(v0 + 40);
        v82 = MEMORY[0x277D84F90];
        sub_226AE1CE0(0, v45, 0);
        v48 = v82;
        v75 = (v46 + 8);
        v77 = *(v46 + 72);
        do
        {
          v50 = *(v0 + 88);
          v49 = *(v0 + 96);
          v51 = *(v0 + 64);
          v52 = *(v0 + 48);
          v80(v49, v42, v51);
          v80(v50, v49, v51);
          sub_226D671EC();
          (*v75)(v49, v51);
          v54 = *(v82 + 16);
          v53 = *(v82 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_226AE1CE0(v53 > 1, v54 + 1, 1);
          }

          v55 = *(v0 + 48);
          v56 = *(v0 + 32);
          *(v82 + 16) = v54 + 1;
          (*(v47 + 32))(v82 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v54, v55, v56);
          v42 += v77;
          --v45;
        }

        while (v45);

        goto LABEL_30;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_30:
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v64 = *(v0 + 168);
  v66 = *(v0 + 136);
  v65 = *(v0 + 144);
  v68 = *(v0 + 104);
  v67 = *(v0 + 112);
  v70 = *(v0 + 88);
  v69 = *(v0 + 96);
  v72 = *(v0 + 48);
  v71 = *(v0 + 56);

  v73 = *(v0 + 8);

  return v73(v48);
}

uint64_t sub_226ADFAC0()
{
  v2 = *(*v1 + 256);
  v3 = *v1;
  v3[33] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AE0284, 0, 0);
  }

  else
  {
    v4 = v3[31];
    v6 = v3[24];
    v5 = v3[25];
    v7 = v3[23];

    v8 = swift_task_alloc();
    v3[34] = v8;
    *v8 = v3;
    v8[1] = sub_226ADFC6C;
    v9 = v3[27];
    v10 = v3[28];
    v11 = v3[3];
    v12 = v3[17];

    return sub_226ADDDC4(v12, v9, v10);
  }
}

uint64_t sub_226ADFC6C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226ADFD84, 0, 0);
}

uint64_t sub_226ADFD84()
{
  v1 = v0[30];
  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  sub_226D68B8C();

  (*(v4 + 8))(v3, v5);
  v6 = v0[21];
  result = sub_226D686FC();
  if (!result)
  {
    goto LABEL_22;
  }

  v8 = result;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_14:

    v21 = v10;
    if (*(v10 + 16))
    {
      v22 = v0[12];
      v23 = v0[9];
      v24 = v0[10];
      v26 = v0[7];
      v25 = v0[8];
      v27 = v0[3];
      v28 = *(v23 + 80);
      v29 = v21 + ((v28 + 32) & ~v28);
      v30 = sub_226D6E79C();
      (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
      v59 = *(v23 + 16);
      v59(v22, v29, v25);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v27;
      (*(v23 + 32))(v31 + ((v28 + 40) & ~v28), v22, v25);

      sub_226B60364(0, 0, v26, &unk_226D70D78, v31);

      v32 = *(v21 + 16);
      if (v32)
      {
        v33 = v0[9];
        v34 = v0[5];
        v60 = MEMORY[0x277D84F90];
        sub_226AE1CE0(0, v32, 0);
        v35 = v60;
        v54 = (v33 + 8);
        v56 = *(v33 + 72);
        do
        {
          v37 = v0[11];
          v36 = v0[12];
          v38 = v0[8];
          v39 = v0[6];
          v59(v36, v29, v38);
          v59(v37, v36, v38);
          sub_226D671EC();
          (*v54)(v36, v38);
          v41 = *(v60 + 16);
          v40 = *(v60 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_226AE1CE0(v40 > 1, v41 + 1, 1);
          }

          v42 = v0[6];
          v43 = v0[4];
          *(v60 + 16) = v41 + 1;
          (*(v34 + 32))(v60 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v41, v42, v43);
          v29 += v56;
          --v32;
        }

        while (v32);

        goto LABEL_23;
      }
    }

LABEL_22:
    v35 = MEMORY[0x277D84F90];
LABEL_23:
    (*(v0[20] + 8))(v0[21], v0[19]);
    v44 = v0[21];
    v46 = v0[17];
    v45 = v0[18];
    v48 = v0[13];
    v47 = v0[14];
    v50 = v0[11];
    v49 = v0[12];
    v52 = v0[6];
    v51 = v0[7];

    v53 = v0[1];

    return v53(v35);
  }

  v11 = 0;
  v12 = v0[9];
  v58 = (v12 + 32);
  v55 = *(result + 16);
  while (v11 < *(v8 + 16))
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = *(v12 + 72);
    (*(v12 + 16))(v0[14], v8 + v13 + v14 * v11, v0[8]);
    v15 = sub_226D6849C();
    if (v15 == 2 || (v15 & 1) == 0)
    {
      result = (*(v12 + 8))(v0[14], v0[8]);
    }

    else
    {
      v57 = *v58;
      (*v58)(v0[13], v0[14], v0[8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_226AE1D24(0, *(v10 + 16) + 1, 1);
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      v18 = v10;
      if (v17 >= v16 >> 1)
      {
        sub_226AE1D24(v16 > 1, v17 + 1, 1);
        v18 = v10;
      }

      v19 = v0[13];
      v20 = v0[8];
      *(v18 + 16) = v17 + 1;
      result = v57(v18 + v13 + v17 * v14, v19, v20);
      v10 = v18;
      v9 = v55;
    }

    if (v9 == ++v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226AE0284()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  v7 = v0[33];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F710);
  v9 = v7;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9CC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_226AB4000, v10, v11, "Failed to fetch the institutions: %@.", v12, 0xCu);
    sub_226AC47B0(v13, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v16 = v0[21];
  v17 = v0[17];
  v18 = v0[18];
  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v26 = v0[11];
  v27 = v0[7];
  v28 = v0[6];

  v22 = sub_226D6A0DC();
  sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v23 = v7;
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CC7AB0], v22);
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_226AE055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_226D6C65C();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE0634, 0, 0);
}

uint64_t sub_226AE0634()
{
  v46 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  v44 = [v2 passTypeIdentifier];
  sub_226D6E39C();
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[9];
    v8 = sub_226C24A6C(*(v1 + 16), 0);
    v9 = sub_226C3A908(&v45, v8 + 4, v6, v7);

    v10 = sub_226AD3C20();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  v12 = v0[10];
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v42 = v0[10];
    }

    v13 = sub_226D6EDFC();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v45 = MEMORY[0x277D84F90];
    v10 = sub_226AE1D68(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v45;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = 0;
        do
        {
          MEMORY[0x22AA8AFD0](v15, v0[10]);
          v16 = [swift_unknownObjectRetain() stringValue];
          v17 = sub_226D6E39C();
          v19 = v18;

          swift_unknownObjectRelease_n();
          v45 = v14;
          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_226AE1D68((v20 > 1), v21 + 1, 1);
            v14 = v45;
          }

          ++v15;
          *(v14 + 16) = v21 + 1;
          v22 = v14 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
        }

        while (v13 != v15);
      }

      else
      {
        v23 = (v0[10] + 32);
        do
        {
          v24 = *v23;
          v25 = [v24 stringValue];
          v26 = sub_226D6E39C();
          v28 = v27;

          v45 = v14;
          v30 = *(v14 + 16);
          v29 = *(v14 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_226AE1D68((v29 > 1), v30 + 1, 1);
            v14 = v45;
          }

          *(v14 + 16) = v30 + 1;
          v31 = v14 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          ++v23;
          --v13;
        }

        while (v13);
      }

      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_17:
  v32 = v0[11];
  v10 = PKPaymentMethodTypeToString();
  if (!v10)
  {
LABEL_26:
    __break(1u);
    return MEMORY[0x282119AD0](v10, v11);
  }

  v33 = v10;
  v34 = v0[14];
  v36 = v0[7];
  v35 = v0[8];
  v37 = v0[6];

  sub_226D6E39C();
  v38 = [v37 organizationName];
  sub_226D6E39C();

  sub_226D6C64C();
  v39 = *(MEMORY[0x277CC7D38] + 4);
  v40 = swift_task_alloc();
  v0[15] = v40;
  *v40 = v0;
  v40[1] = sub_226AE0A18;
  v11 = v0[14];
  v10 = v0[2];
  v41 = v0[3];

  return MEMORY[0x282119AD0](v10, v11);
}

uint64_t sub_226AE0A18()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AE0BC0, 0, 0);
  }

  else
  {
    v7 = v6[14];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_226AE0BC0()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_226AE0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE0CC0, 0, 0);
}

uint64_t sub_226AE0CC0()
{
  v0[5] = *(v0[2] + 136);
  v1 = *(MEMORY[0x277CC81B8] + 4);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_226AE0D64;
  v4 = v0[3];
  v3 = v0[4];

  return MEMORY[0x28211A638](v3, v4);
}

uint64_t sub_226AE0D64()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226AE0E60, 0, 0);
}

uint64_t sub_226AE0E60()
{
  v1 = v0[4];
  v2 = sub_226D6D1AC();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_226AC47B0(v1, &unk_27D7A62F8, &unk_226D73B70);
  if (v3 == 1)
  {
    v4 = v0[3];
    v5 = sub_226D6848C();
    v7 = v6;
    v0[7] = v6;
    v8 = *(MEMORY[0x277CC81B0] + 4);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_226AE0FB8;
    v10 = v0[5];

    return MEMORY[0x28211A630](v5, v7);
  }

  else
  {
    v11 = v0[4];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_226AE0FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_226AE10EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6280, &unk_226D70CC0);
    v2 = sub_226D6EECC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_226AE4FD4(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_226AE3AD0(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226AE1290(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226AD4A68(a1, v5, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226AE1384()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_226D6D79C();
}

uint64_t sub_226AE13D0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_226D6D78C();
}

uint64_t sub_226AE1428()
{
  sub_226D6F2FC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_226D6D78C();
  return sub_226D6F35C();
}

uint64_t sub_226AE1490(uint64_t a1, id *a2)
{
  result = sub_226D6E37C();
  *a2 = 0;
  return result;
}

uint64_t sub_226AE1508(uint64_t a1, id *a2)
{
  v3 = sub_226D6E38C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_226AE1588@<X0>(uint64_t *a1@<X8>)
{
  sub_226D6E39C();
  v2 = sub_226D6E36C();

  *a1 = v2;
  return result;
}

uint64_t sub_226AE15CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_226D6D77C();
}

uint64_t sub_226AE1638(uint64_t a1)
{
  v2 = sub_226AE41E4(&qword_27D7A6390, type metadata accessor for FileAttributeKey);
  v3 = sub_226AE41E4(&qword_27D7A6398, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226AE16F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_226D6E36C();

  *a2 = v5;
  return result;
}

uint64_t sub_226AE173C(uint64_t a1)
{
  v2 = sub_226AE41E4(&qword_27D7A6380, type metadata accessor for FileProtectionType);
  v3 = sub_226AE41E4(&qword_27D7A6388, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226AE17F8()
{
  v1 = *v0;
  v2 = sub_226D6E39C();
  v3 = MEMORY[0x22AA8A590](v2);

  return v3;
}

uint64_t sub_226AE1834()
{
  v1 = *v0;
  sub_226D6E39C();
  sub_226D6E42C();
}

uint64_t sub_226AE1888()
{
  v1 = *v0;
  sub_226D6E39C();
  sub_226D6F2FC();
  sub_226D6E42C();
  v2 = sub_226D6F35C();

  return v2;
}

uint64_t sub_226AE18FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_226D6E39C();
  v6 = v5;
  if (v4 == sub_226D6E39C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_226D6F21C();
  }

  return v9 & 1;
}

uint64_t sub_226AE1984(uint64_t a1, unint64_t a2)
{
  v4 = sub_226AE19D0(a1, a2);
  sub_226AE1B00(&unk_283A69BB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_226AE19D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_226B10A88(v5, 0);
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

  result = sub_226D6EF4C();
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
        v10 = sub_226D6E48C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226B10A88(v10, 0);
        result = sub_226D6EEDC();
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

uint64_t sub_226AE1B00(uint64_t result)
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

  result = sub_226AE1BEC(result, v12, 1, v3);
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

char *sub_226AE1BEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62E0, &qword_226D70D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_226AE1CE0(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62F0, &unk_226D70D80, MEMORY[0x277CC6B80]);
  *v3 = result;
  return result;
}

size_t sub_226AE1D24(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62B8, &qword_226D70D00, MEMORY[0x277CC74D8]);
  *v3 = result;
  return result;
}

char *sub_226AE1D68(char *a1, int64_t a2, char a3)
{
  result = sub_226AE2A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226AE1D88(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62D0, &qword_226D759A0, MEMORY[0x277CC7650]);
  *v3 = result;
  return result;
}

size_t sub_226AE1DCC(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62C0, &qword_226D70D08, MEMORY[0x277CC7548]);
  *v3 = result;
  return result;
}

size_t sub_226AE1E10(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62C8, &unk_226D70D10, MEMORY[0x277CC8390]);
  *v3 = result;
  return result;
}

size_t sub_226AE1E54(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6210, &unk_226D70C40, type metadata accessor for AccountMatchResult);
  *v3 = result;
  return result;
}

size_t sub_226AE1E98(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6208, &unk_226D7BDB0, MEMORY[0x277CC6F70]);
  *v3 = result;
  return result;
}

char *sub_226AE1EDC(char *a1, int64_t a2, char a3)
{
  result = sub_226AE2B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226AE1EFC(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6178, &qword_226D70BB8, MEMORY[0x277CC7B18]);
  *v3 = result;
  return result;
}

size_t sub_226AE1F40(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6080, &qword_226D70A98, MEMORY[0x277D20920]);
  *v3 = result;
  return result;
}

size_t sub_226AE1F84(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6088, &unk_226D70AA0, MEMORY[0x277D20978]);
  *v3 = result;
  return result;
}

size_t sub_226AE1FC8(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6238, &unk_226D70C60, MEMORY[0x277CC6B60]);
  *v3 = result;
  return result;
}

size_t sub_226AE200C(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6220, &qword_226D70C50, MEMORY[0x277CC8170]);
  *v3 = result;
  return result;
}

void *sub_226AE2050(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3678(a1, a2, a3, *v3, &qword_27D7A6058, &qword_226D70A70, &qword_27D7A6060, &qword_226D70A78);
  *v3 = result;
  return result;
}

size_t sub_226AE2090(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6078, &qword_226D70A90, MEMORY[0x277CC8058]);
  *v3 = result;
  return result;
}

size_t sub_226AE20D4(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6250, &qword_226D70C70, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_226AE2118(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6070, &qword_226D70A88, _s8MetadataV9CloudItemV6ObjectVMa_0);
  *v3 = result;
  return result;
}

size_t sub_226AE215C(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6068, &qword_226D70A80, _s9OperationOMa);
  *v3 = result;
  return result;
}

size_t sub_226AE21A0(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6368, &qword_226D75950, type metadata accessor for OfflineLabAccountInfo);
  *v3 = result;
  return result;
}

size_t sub_226AE21E4(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60D8, &unk_226D70AE0, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  *v3 = result;
  return result;
}

size_t sub_226AE2228(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60E0, &qword_226D758C0, _s9OperationOMa_0);
  *v3 = result;
  return result;
}

char *sub_226AE226C(char *a1, int64_t a2, char a3)
{
  result = sub_226AE2CE8(a1, a2, a3, *v3, &qword_27D7A6098, &unk_226D758B0);
  *v3 = result;
  return result;
}

char *sub_226AE22A4(char *a1, int64_t a2, char a3)
{
  result = sub_226AE2CE8(a1, a2, a3, *v3, &qword_27D7A6120, &qword_226D70B20);
  *v3 = result;
  return result;
}

size_t sub_226AE22DC(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE2E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226AE22FC(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60A0, &qword_226D70AB0, _s8MetadataV9CloudItemV6ObjectVMa_1);
  *v3 = result;
  return result;
}

size_t sub_226AE2340(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6128, &qword_226D70B28, _s8MetadataV9CloudItemV6ObjectVMa);
  *v3 = result;
  return result;
}

char *sub_226AE2384(char *a1, int64_t a2, char a3)
{
  result = sub_226AE2FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226AE23A4(char *a1, int64_t a2, char a3)
{
  result = sub_226AE3100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226AE23C4(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60C0, &qword_226D70AC8, MEMORY[0x277CC7098]);
  *v3 = result;
  return result;
}

size_t sub_226AE2408(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &unk_27D7A60B0, &qword_226D70AC0, MEMORY[0x277D208F0]);
  *v3 = result;
  return result;
}

void *sub_226AE244C(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A6138, &qword_226D70B38, &qword_27D7A6140, &qword_226D70B40);
  *v3 = result;
  return result;
}

char *sub_226AE248C(char *a1, int64_t a2, char a3)
{
  result = sub_226AE3204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226AE24AC(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6268, &qword_226D70C88, MEMORY[0x277CC6DA8]);
  *v3 = result;
  return result;
}

char *sub_226AE24F0(char *a1, int64_t a2, char a3)
{
  result = sub_226AE3324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE2510(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A6158, &qword_226D70B98, &qword_27D7A6160, &qword_226D70BA0);
  *v3 = result;
  return result;
}

void *sub_226AE2550(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3678(a1, a2, a3, *v3, &qword_27D7A6168, &qword_226D70BA8, &qword_27D7A6170, &qword_226D70BB0);
  *v3 = result;
  return result;
}

size_t sub_226AE2590(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6148, &qword_226D70B48, MEMORY[0x277CC7A80]);
  *v3 = result;
  return result;
}

size_t sub_226AE25D4(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6188, &qword_226D70BC0, MEMORY[0x277CC78A0]);
  *v3 = result;
  return result;
}

size_t sub_226AE2618(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6190, &qword_226D70BC8, MEMORY[0x277CC7898]);
  *v3 = result;
  return result;
}

size_t sub_226AE265C(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6198, &qword_226D70BD0, MEMORY[0x277CC7890]);
  *v3 = result;
  return result;
}

void *sub_226AE26A0(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A61C0, &qword_226D775E0, &qword_27D7A61C8, &qword_226D70C00);
  *v3 = result;
  return result;
}

size_t sub_226AE26E0(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6270, &qword_226D70C90, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
  *v3 = result;
  return result;
}

size_t sub_226AE2724(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60A8, &qword_226D70AB8, MEMORY[0x277D208E8]);
  *v3 = result;
  return result;
}

size_t sub_226AE2768(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61B0, &qword_226D70BE8, MEMORY[0x277CC7540]);
  *v3 = result;
  return result;
}

size_t sub_226AE27AC(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61B8, &unk_226D70BF0, MEMORY[0x277CC7510]);
  *v3 = result;
  return result;
}

size_t sub_226AE27F0(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60E8, &qword_226D70AF0, _s8MetadataV9CloudItemV6ObjectVMa_2);
  *v3 = result;
  return result;
}

size_t sub_226AE2834(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &unk_27D7A6240, &qword_226D77F30, type metadata accessor for Permission);
  *v3 = result;
  return result;
}

size_t sub_226AE2878(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60F8, &qword_226D70B00, MEMORY[0x277CC7DD0]);
  *v3 = result;
  return result;
}

char *sub_226AE28BC(char *a1, int64_t a2, char a3)
{
  result = sub_226AE3448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226AE28DC(char *a1, int64_t a2, char a3)
{
  result = sub_226AE3558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE28FC(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &unk_27D7A61A0, &qword_226D70BD8, &unk_27D7A8C00, &qword_226D70BE0);
  *v3 = result;
  return result;
}

size_t sub_226AE293C(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61F8, &qword_226D70C28, MEMORY[0x277CC7F78]);
  *v3 = result;
  return result;
}

void *sub_226AE2980(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3678(a1, a2, a3, *v3, &qword_27D7A6258, &qword_226D70C78, &qword_27D7A6260, &qword_226D70C80);
  *v3 = result;
  return result;
}

size_t sub_226AE29C0(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61F0, &qword_226D70C20, MEMORY[0x277CC6610]);
  *v3 = result;
  return result;
}

size_t sub_226AE2A04(size_t a1, int64_t a2, char a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61E0, &qword_226D70C18, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_226AE2A48(void *a1, int64_t a2, char a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A61D0, &qword_226D70C08, &qword_27D7A61D8, &qword_226D70C10);
  *v3 = result;
  return result;
}

char *sub_226AE2A88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_226AE2B94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6228, &qword_226D70C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_226AE2CE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_226AE2E04(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6108, &qword_226D70B10);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18) - 8);
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

char *sub_226AE2FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A60C8, &qword_226D70AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226AE3100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A60D0, &qword_226D70AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_226AE3204(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6130, &qword_226D70B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226AE3324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A60F0, &qword_226D70AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_226AE3448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226AE3558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6360, &unk_226D71170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_226AE3678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_226AE37AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_226AE3988(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_226AE3AD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_226D6F2FC();
  sub_226D6E42C();
  result = sub_226D6F35C();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = sub_226D6F21C();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226AE3C28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8A960](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_226C24D14(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_226AE3CC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226AD67BC(a1, v5, v4);
}

unint64_t sub_226AE3D6C()
{
  result = qword_27D7A5FC8;
  if (!qword_27D7A5FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A5FC0, &unk_226D75DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A5FC8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of BankConnectPassMatching.institution(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_226AE5A84;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectPassMatching.institutions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226AD8408;

  return v11(a1, a2, a3);
}

uint64_t sub_226AE40F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AE4118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_226AE41E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226AE4230(uint64_t a1)
{
  v2 = sub_226D6715C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226AE41E4(&qword_27D7A6230, MEMORY[0x277CC6B60]);
  result = MEMORY[0x22AA8A960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226C24E64(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226AE43CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226AE5084();
  result = MEMORY[0x22AA8A960](v2, &type metadata for ManagedCloudOrderEvent.MerchantSource, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v10[2] = *(v5 + 32);
      v11 = *(v5 + 48);
      sub_226AE50D8(v10, v7);
      sub_226C25434(v7, v10);
      sub_226AE5134(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5], v8);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_226AE447C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v4 = sub_226D69D3C();
    v5 = sub_226AE41E4(&qword_27D7A6090, MEMORY[0x277CC7A58]);
    result = MEMORY[0x22AA8A960](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA8AFD0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_226C25988(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_226D6EDFC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226AE45DC(uint64_t a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226AE41E4(&qword_281062B60, MEMORY[0x277CC95F0]);
  result = MEMORY[0x22AA8A960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226C2514C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226AE4778(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x22AA8A960](result, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_226C24D14(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_226AE483C(uint64_t a1)
{
  v2 = type metadata accessor for AccountAndStartingDate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226AE41E4(&qword_27D7A61E8, type metadata accessor for AccountAndStartingDate);
  result = MEMORY[0x22AA8A960](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_226AE51A0(v13, v7);
      sub_226C25CAC(v9, v7);
      sub_226AE5204(v9);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_226AE49A4(uint64_t a1)
{
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226AE41E4(&qword_27D7A9630, MEMORY[0x277CC7098]);
  result = MEMORY[0x22AA8A960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226C2676C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226AE4B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8A960](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_226AE4FD4(v4, v5);
      sub_226C26A54(v6, v5);
      sub_226AE5030(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_226AE4BCC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v8 = sub_226AE59FC();
  v14[1] = MEMORY[0x22AA8A960](v4, v7, v8);
  v9 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = a2;
    }

    v11 = v10 - a2;
    v12 = (a1 + 8 * a2);
    while (v11)
    {
      v13 = *v12++;
      sub_226C264CC(v14, v13);

      --v11;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_226AE4C9C(uint64_t a1)
{
  v2 = sub_226D67C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226AE41E4(&qword_27D7A6150, MEMORY[0x277CC6F70]);
  result = MEMORY[0x22AA8A960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226C26E88(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226AE4E38(uint64_t a1)
{
  v2 = sub_226D66F6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226AE41E4(&qword_27D7A6118, MEMORY[0x277CC66D0]);
  result = MEMORY[0x22AA8A960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226C27458(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_226AE5084()
{
  result = qword_27D7A6180;
  if (!qword_27D7A6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6180);
  }

  return result;
}

uint64_t sub_226AE5134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226AE51A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAndStartingDate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AE5204(uint64_t a1)
{
  v2 = type metadata accessor for AccountAndStartingDate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226AE5260(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226AD6A0C(a1, v5, v4);
}

uint64_t sub_226AE532C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_226AE5390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226ADD2AC(a1, v4, v5, v6);
}

uint64_t sub_226AE5444(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_226AE5450(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226AD4D1C(a1, v5, v4);
}

uint64_t sub_226AE54FC(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226AE5A84;

  return sub_226AE055C(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_226AE55F0(uint64_t a1)
{
  v4 = *(sub_226D684AC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226AD827C;

  return sub_226AE0C24(a1, v6, v7, v8, v1 + v5);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_226AE56F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AE5714(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_226AE57B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_226AE59B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_226AE59FC()
{
  result = qword_27D7A6378;
  if (!qword_27D7A6378)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6378);
  }

  return result;
}

void sub_226AE5A94(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_226AE1EDC(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = sub_226D6EDAC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_226D6ED6C();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_226CCCCD8(v35, v36, v37, v1);
        v14 = v13;
        v15 = [v13 paymentType];

        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226AE1EDC((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A64B8, &qword_226D71318);
          v7 = sub_226D6E8CC();
          sub_226D6EE4C();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_226AE5444(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_226AE5444(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_226AE5444(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_226AE5DE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_226D676AC();
  v9 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v10 = type metadata accessor for BankConnectPassKitTransactionsDataSource();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v16[3] = v10;
  v16[4] = &protocol witness table for BankConnectPassKitTransactionsDataSource;
  v16[0] = v11;
  sub_226AE532C(v16, v15);
  v12 = type metadata accessor for BankConnectAccountMatcher();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_226AC484C(v15, v13 + 32);
  *(v13 + 72) = v8;
  a3[3] = v12;
  a3[4] = &off_283A6A758;
  *a3 = v13;
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

BOOL sub_226AE5ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x22AA83C70]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_226D68CBC();
  sub_226AEE790(&qword_27D7A6570, MEMORY[0x277CC75E0]);
  sub_226D6E53C();
  sub_226D6E53C();
  return v7 == v6;
}

uint64_t sub_226AE5F9C()
{
  result = sub_226AEE890();
  qword_27D7B61B0 = result;
  byte_27D7B61B8 = 0;
  return result;
}

uint64_t sub_226AE5FC4()
{
  result = sub_226AEE890();
  qword_27D7B61C0 = result;
  byte_27D7B61C8 = 1;
  return result;
}

uint64_t sub_226AE5FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6470, &unk_226D71300);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226D71190;
  *(v1 + 56) = type metadata accessor for FPANIDMatchStrategy(0);
  *(v1 + 64) = sub_226AEE790(&qword_27D7A6478, type metadata accessor for FPANIDMatchStrategy);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  v3 = *MEMORY[0x277CC75C8];
  v4 = sub_226D68CBC();
  v5 = *(*(v4 - 8) + 104);
  v5(boxed_opaque_existential_1, v3, v4);
  *(v1 + 96) = type metadata accessor for AccountTypeMatchStrategy(0);
  *(v1 + 104) = sub_226AEE790(&qword_27D7A6480, type metadata accessor for AccountTypeMatchStrategy);
  v6 = __swift_allocate_boxed_opaque_existential_1((v1 + 72));
  v5(v6, *MEMORY[0x277CC75D0], v4);
  *(v1 + 136) = type metadata accessor for PANSuffixMatchStrategy(0);
  *(v1 + 144) = sub_226AEE790(&qword_27D7A6488, type metadata accessor for PANSuffixMatchStrategy);
  v7 = __swift_allocate_boxed_opaque_existential_1((v1 + 112));
  v5(v7, *MEMORY[0x277CC75D8], v4);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 72);
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  *(v1 + 176) = matched;
  *(v1 + 184) = sub_226AEE790(&qword_27D7A6490, type metadata accessor for TransactionsMatchStrategy);
  v12 = __swift_allocate_boxed_opaque_existential_1((v1 + 152));
  v5(v12, *MEMORY[0x277CC75B8], v4);
  v13 = v12 + matched[5];
  *v13 = v8;
  v13[8] = v9;
  sub_226AE532C(v0 + 32, v12 + matched[6]);
  *(v12 + matched[7]) = v10;
  v14 = v10;
  return v1;
}

uint64_t sub_226AE6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_226D67C0C();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = sub_226D68CBC();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  v4[34] = matched;
  v12 = *(matched - 8);
  v4[35] = v12;
  v13 = *(v12 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE6420, 0, 0);
}

uint64_t sub_226AE6420()
{
  if (!*(*(v0 + 208) + 16))
  {
    if (qword_28105F708 == -1)
    {
LABEL_8:
      v12 = sub_226D6E07C();
      __swift_project_value_buffer(v12, qword_28105F710);
      v13 = sub_226D6E05C();
      v14 = sub_226D6E9CC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_226AB4000, v13, v14, "Failed to match an account. No accounts provided for matching.", v15, 2u);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
      }

      v16 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      v18 = v17;
      v19 = MEMORY[0x277CC7F90];
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  v1 = *(v0 + 216);
  v2 = sub_226AE5FF0();
  *(v0 + 328) = v2;
  v3 = *(v2 + 16);
  *(v0 + 336) = v3;

  if (v3)
  {
    *(v0 + 384) = *MEMORY[0x277CC75D0];
    *(v0 + 388) = *MEMORY[0x277CC75C0];
    v4 = *(v0 + 208);
    *(v0 + 344) = 0;
    *(v0 + 352) = v4;
    if (*(v2 + 16))
    {
      sub_226AE532C(v2 + 32, v0 + 16);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
      v7 = *(v6 + 24);
      v40 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 360) = v9;
      *v9 = v0;
      v9[1] = sub_226AE6A24;
      v10 = *(v0 + 200);

      return v40(v4, v10, v5, v6);
    }

    __break(1u);
    goto LABEL_27;
  }

  v20 = *(v0 + 208);

  if (*(v20 + 16) > 1uLL)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_28105F710);
    v22 = sub_226D6E05C();
    v23 = sub_226D6E9CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226AB4000, v22, v23, "Failed to match an account. Multiple accounts matched.", v24, 2u);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    v25 = sub_226D6B66C();
    sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
    swift_allocError();
    *v26 = v20;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CC7FA8], v25);
    goto LABEL_23;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v27 = sub_226D6E07C();
  __swift_project_value_buffer(v27, qword_28105F710);
  v28 = sub_226D6E05C();
  v29 = sub_226D6E9CC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_226AB4000, v28, v29, "Failed to match an account. No accounts matched.", v30, 2u);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
  }

  v16 = sub_226D6B66C();
  sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
  swift_allocError();
  v18 = v31;
  v19 = MEMORY[0x277CC7F98];
LABEL_22:
  (*(*(v16 - 8) + 104))(v18, *v19, v16);
LABEL_23:
  swift_willThrow();
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  v35 = *(v0 + 296);
  v34 = *(v0 + 304);
  v36 = *(v0 + 288);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_226AE6A24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  v7 = v3[44];
  if (v1)
  {
    v8 = v4[41];

    v9 = sub_226AE79C0;
  }

  else
  {

    v9 = sub_226AE6B74;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226AE6B74()
{
  v123 = v0;
  v1 = *(v0 + 368);
  v117 = *(v1 + 16);
  if (!v117)
  {
    v36 = *(v0 + 328);

    if (qword_28105F708 != -1)
    {
LABEL_66:
      swift_once();
    }

    v37 = sub_226D6E07C();
    __swift_project_value_buffer(v37, qword_28105F710);
    sub_226AE532C(v0 + 16, v0 + 136);
    v19 = sub_226D6E05C();
    v38 = sub_226D6E9CC();
    if (os_log_type_enabled(v19, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v122[0] = v40;
      *v39 = 136315138;
      v41 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      v42 = *(v41 + 8);
      v43 = sub_226D6F1CC();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v46 = sub_226AC4530(v43, v45, v122);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_226AB4000, v19, v38, "Failed to match accounts with strategy: %s.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x22AA8BEE0](v40, -1, -1);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
    }

    else
    {
LABEL_33:

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    v61 = sub_226D6B66C();
    sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277CC7F98], v61);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    goto LABEL_58;
  }

  v2 = 0;
  v114 = MEMORY[0x277D84F90];
  v116 = *(v0 + 368);
  do
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    v3 = *(v0 + 384);
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 248);
    v118 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v120 = *(v4 + 72);
    v115 = *(v0 + 368);
    sub_226AEEFFC(v115 + v118 + v120 * v2, *(v0 + 320), type metadata accessor for AccountMatchResult);
    v9 = *(v5 + 20);
    v119 = *(v6 + 104);
    v119(v7, v3, v8);
    sub_226AEE790(&qword_27D7A6460, MEMORY[0x277CC75E0]);
    LOBYTE(v3) = sub_226D6E35C();
    v10 = *(v6 + 8);
    v10(v7, v8);
    if (v3 & 1) != 0 || (v11 = *(v0 + 264), v12 = *(v0 + 248), v119(v11, *(v0 + 388), v12), v13 = sub_226D6E35C(), v10(v11, v12), (v13))
    {
      sub_226AEF1A0(*(v0 + 320), type metadata accessor for AccountMatchResult);
    }

    else
    {
      sub_226AEF064(*(v0 + 320), *(v0 + 304), type metadata accessor for AccountMatchResult);
      v14 = v114;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 176) = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226AE1E54(0, v114[2].isa + 1, 1);
        v14 = *(v0 + 176);
      }

      isa = v14[2].isa;
      v16 = v14[3].isa;
      if (isa >= v16 >> 1)
      {
        sub_226AE1E54(v16 > 1, isa + 1, 1);
        v14 = *(v0 + 176);
      }

      v18 = *(v0 + 304);
      v14[2].isa = (isa + 1);
      v114 = v14;
      sub_226AEF064(v18, v14 + v118 + isa * v120, type metadata accessor for AccountMatchResult);
    }

    ++v2;
    v1 = v116;
  }

  while (v117 != v2);
  v19 = v114;
  v20 = v114[2].isa;
  if (v20)
  {
    v21 = (v0 + 312);
    sub_226AEEFFC(v114 + v118, *(v0 + 312), type metadata accessor for AccountMatchResult);

    if (v20 == 1)
    {
      v22 = *(v0 + 368);
      v23 = *(v0 + 328);

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v24 = sub_226D6E07C();
      __swift_project_value_buffer(v24, qword_28105F710);
      sub_226AE532C(v0 + 16, v0 + 96);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9EC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v122[0] = v28;
        *v27 = 136315138;
        v29 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v30 = *(v29 + 8);
        v31 = sub_226D6F1CC();
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
        v34 = sub_226AC4530(v31, v33, v122);

        *(v27 + 4) = v34;
        v35 = "An account was matched explicitly with strategy: %s.";
        goto LABEL_50;
      }

      v91 = (v0 + 96);
LABEL_60:
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      goto LABEL_61;
    }

    sub_226AEF1A0(*v21, type metadata accessor for AccountMatchResult);
    v47 = *(v116 + 16);
    if (!v47)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {

    v47 = *(v116 + 16);
    if (!v47)
    {
      goto LABEL_32;
    }
  }

  v21 = (v0 + 296);
  sub_226AEEFFC(v115 + v118, *(v0 + 296), type metadata accessor for AccountMatchResult);
  if (v47 == 1 && (*(*(v0 + 216) + 24) & 1) == 0)
  {
    v82 = *(v0 + 368);
    v83 = *(v0 + 328);

    if (qword_28105F708 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

  sub_226AEF1A0(*v21, type metadata accessor for AccountMatchResult);
  v48 = *(v116 + 16);
  if (v48)
  {
    *(v0 + 184) = MEMORY[0x277D84F90];
    sub_226AE1E98(0, v48, 0);
    v49 = *(v0 + 184);
    v50 = v115 + v118;
    do
    {
      v51 = *(v0 + 288);
      v52 = *(v0 + 232);
      v53 = *(v0 + 240);
      v54 = *(v0 + 224);
      v21 = type metadata accessor for AccountMatchResult;
      sub_226AEEFFC(v50, v51, type metadata accessor for AccountMatchResult);
      (*(v52 + 16))(v53, v51, v54);
      sub_226AEF1A0(v51, type metadata accessor for AccountMatchResult);
      *(v0 + 184) = v49;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_226AE1E98(v55 > 1, v56 + 1, 1);
        v49 = *(v0 + 184);
      }

      v58 = *(v0 + 232);
      v57 = *(v0 + 240);
      v59 = *(v0 + 224);
      *(v49 + 16) = v56 + 1;
      (*(v58 + 32))(v49 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v56, v57, v59);
      v50 += v120;
      --v48;
    }

    while (v48);
    v60 = *(v0 + 368);
  }

  else
  {
    v63 = *(v0 + 368);

    v49 = MEMORY[0x277D84F90];
  }

  v64 = *(v0 + 336);
  v65 = *(v0 + 344) + 1;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v65 == v64)
  {
    v66 = *(v0 + 328);

    if (*(v49 + 16) < 2uLL)
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v92 = sub_226D6E07C();
      __swift_project_value_buffer(v92, qword_28105F710);
      v93 = sub_226D6E05C();
      v94 = sub_226D6E9CC();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_226AB4000, v93, v94, "Failed to match an account. No accounts matched.", v95, 2u);
        MEMORY[0x22AA8BEE0](v95, -1, -1);
      }

      v96 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      (*(*(v96 - 8) + 104))(v97, *MEMORY[0x277CC7F98], v96);
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v67 = sub_226D6E07C();
      __swift_project_value_buffer(v67, qword_28105F710);
      v68 = sub_226D6E05C();
      v69 = sub_226D6E9CC();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_226AB4000, v68, v69, "Failed to match an account. Multiple accounts matched.", v70, 2u);
        MEMORY[0x22AA8BEE0](v70, -1, -1);
      }

      v71 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      *v72 = v49;
      (*(*(v71 - 8) + 104))(v72, *MEMORY[0x277CC7FA8], v71);
    }

    swift_willThrow();
LABEL_58:
    v99 = *(v0 + 312);
    v98 = *(v0 + 320);
    v101 = *(v0 + 296);
    v100 = *(v0 + 304);
    v102 = *(v0 + 288);
    v103 = *(v0 + 264);
    v104 = *(v0 + 240);

    v105 = *(v0 + 8);
LABEL_62:

    return v105();
  }

  v73 = *(v0 + 344) + 1;
  *(v0 + 344) = v73;
  *(v0 + 352) = v49;
  v74 = *(v0 + 328);
  if (v73 >= *(v74 + 16))
  {
    __break(1u);
LABEL_68:
    swift_once();
LABEL_48:
    v84 = sub_226D6E07C();
    __swift_project_value_buffer(v84, qword_28105F710);
    sub_226AE532C(v0 + 16, v0 + 56);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9EC();
    if (!os_log_type_enabled(v25, v26))
    {

      v91 = (v0 + 56);
      goto LABEL_60;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v122[0] = v28;
    *v27 = 136315138;
    v85 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v86 = *(v85 + 8);
    v87 = sub_226D6F1CC();
    v89 = v88;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v90 = sub_226AC4530(v87, v89, v122);

    *(v27 + 4) = v90;
    v35 = "Successfully matched an account with strategy: %s.";
LABEL_50:
    _os_log_impl(&dword_226AB4000, v25, v26, v35, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v27, -1, -1);

LABEL_61:
    v106 = *v21;
    v107 = *(v0 + 312);
    v108 = *(v0 + 320);
    v110 = *(v0 + 296);
    v109 = *(v0 + 304);
    v111 = *(v0 + 288);
    v112 = *(v0 + 264);
    v113 = *(v0 + 240);
    sub_226AEF064(v106, *(v0 + 192), type metadata accessor for AccountMatchResult);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v105 = *(v0 + 8);
    goto LABEL_62;
  }

  sub_226AE532C(v74 + 40 * v73 + 32, v0 + 16);
  v75 = *(v0 + 40);
  v76 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v75);
  v77 = *(v76 + 24);
  v121 = (v77 + *v77);
  v78 = v77[1];
  v79 = swift_task_alloc();
  *(v0 + 360) = v79;
  *v79 = v0;
  v79[1] = sub_226AE6A24;
  v80 = *(v0 + 200);

  return v121(v49, v80, v75, v76);
}