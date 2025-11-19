uint64_t sub_226B5C2D0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_226D6D4AC();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_226D6BE1C();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B5C480, 0, 0);
}

uint64_t sub_226B5C480()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 112);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = *(v0 + 56);
  v6 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_226B41FC0();
  v24 = swift_allocObject();
  sub_226B42014(v6, v24 + 16);
  v7 = sub_226D6BE3C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_226D6BDFC();
  *(v0 + 120) = v10;
  *(v0 + 16) = v10;
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask();
  v12 = *(Task + 20);
  v13 = -*(v5 + *(Task + 24));
  sub_226D6D3DC();
  (*(v1 + 56))(v3, 1, 1, v20);
  sub_226D6BE0C();
  (*(v4 + 104))(v23, *MEMORY[0x277CC6D38], v22);
  v14 = *(MEMORY[0x277CC81D8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_226B5C654;
  v16 = *(v0 + 112);
  v17 = *(v0 + 56);
  v18 = MEMORY[0x277CC8178];

  return MEMORY[0x28211A688](v5 + v12, v16, v17, v7, v18);
}

uint64_t sub_226B5C654()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = sub_226B5C970;
  }

  else
  {
    v8 = sub_226B5C818;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226B5C818()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[3];
  v4 = v0[4];

  v5 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_226D676AC();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  sub_226D6EB7C();
  if (v1)
  {

    v8 = v0[14];
    v9 = v0[11];
    v11 = v0[7];
    v10 = v0[8];
  }

  else
  {
    v13 = v0[14];
    v14 = v0[11];
    v16 = v0[7];
    v15 = v0[8];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226B5C970()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

void sub_226B5CA04(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask();
  v6 = *(*(Task - 8) + 64);
  MEMORY[0x28223BE20](Task);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v9 = *(Task + 20);
  v10 = sub_226D69D9C();
  if (!v2)
  {
    if (v10)
    {
      v11 = v10;
      [v10 setTransactionsRequestAttemptCount_];
      [v11 setLastTransactionsRequestAttemptDate_];
      v25[0] = 0;
      if ([a2 save_])
      {
        v12 = v25[0];
      }

      else
      {
        v23 = v25[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v13 = sub_226D6E07C();
      __swift_project_value_buffer(v13, qword_28105F710);
      sub_226B5DDB8(a1, v8, type metadata accessor for BankConnectTransactionsDataFetchTask);
      v14 = sub_226D6E05C();
      v15 = sub_226D6E9AC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25[0] = v17;
        *v16 = 136315138;
        v18 = *(Task + 20);
        sub_226D6B9BC();
        sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v19 = sub_226D6F1CC();
        v21 = v20;
        sub_226B5DE20(v8, type metadata accessor for BankConnectTransactionsDataFetchTask);
        v22 = sub_226AC4530(v19, v21, v25);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_226AB4000, v14, v15, "Account %s doesn't exist", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
        MEMORY[0x22AA8BEE0](v16, -1, -1);
      }

      else
      {

        sub_226B5DE20(v8, type metadata accessor for BankConnectTransactionsDataFetchTask);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B5CD3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask();
  v3[7] = Task;
  v7 = *(*(Task - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B5CE04, 0, 0);
}

uint64_t sub_226B5CE04()
{
  v33 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226B5DDB8(v3, v1, type metadata accessor for BankConnectTransactionsDataFetchTask);
  sub_226B5DDB8(v4, v2, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  if (!v8)
  {
    v22 = *(v0 + 48);

    sub_226B5DE20(v22, MEMORY[0x277CC6528]);
    sub_226B5DE20(v9, type metadata accessor for BankConnectTransactionsDataFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v31 = *(v0 + 40);
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v32 = v14;
  *v12 = 136315394;
  v15 = *(v10 + 20);
  sub_226D6B9BC();
  sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v16 = sub_226D6F1CC();
  v18 = v17;
  sub_226B5DE20(v9, type metadata accessor for BankConnectTransactionsDataFetchTask);
  v19 = sub_226AC4530(v16, v18, &v32);

  *(v12 + 4) = v19;
  *(v12 + 12) = 2112;
  sub_226B5E018(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226B5DDB8(v11, v20, MEMORY[0x277CC6528]);
  v21 = _swift_stdlib_bridgeErrorToNSError();
  sub_226B5DE20(v11, MEMORY[0x277CC6528]);
  *(v12 + 14) = v21;
  *v13 = v21;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to fetch transactions for account %s with error: %@", v12, 0x16u);
  sub_226AC47B0(v13, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  MEMORY[0x22AA8BEE0](v14, -1, -1);
  MEMORY[0x22AA8BEE0](v12, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v23 = *(v0 + 32);
    v24 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v25 = sub_226D676AC();
    v26 = swift_task_alloc();
    *(v26 + 16) = v23;
    *(v26 + 24) = v25;
    sub_226D6EB7C();
  }

LABEL_8:
  v27 = *(v0 + 64);
  v28 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29();
}

void sub_226B5D22C(uint64_t a1, void *a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask();
  v10 = *(*(Task - 8) + 64);
  v11 = MEMORY[0x28223BE20](Task);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  sub_226D69F0C();
  v16 = *(Task + 20);
  v17 = sub_226D69D9C();
  if (v2)
  {
    goto LABEL_18;
  }

  v18 = v17;
  v49 = a2;
  v50 = v13;
  v19 = v52;
  v51 = 0;
  if (!v17)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v23 = sub_226D6E07C();
    __swift_project_value_buffer(v23, qword_28105F710);
    v24 = v15;
    sub_226B5DDB8(a1, v15, type metadata accessor for BankConnectTransactionsDataFetchTask);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9AC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53[0] = v28;
      *v27 = 136315138;
      v29 = *(Task + 20);
      sub_226D6B9BC();
      sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v30 = sub_226D6F1CC();
      v32 = v31;
      sub_226B5DE20(v24, type metadata accessor for BankConnectTransactionsDataFetchTask);
      v33 = sub_226AC4530(v30, v32, v53);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_226AB4000, v25, v26, "Account %s doesn't exist", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);

      goto LABEL_18;
    }

    v46 = v24;
LABEL_17:
    sub_226B5DE20(v46, type metadata accessor for BankConnectTransactionsDataFetchTask);
    goto LABEL_18;
  }

  if (([v17 isAccountEnabled] & 1) == 0)
  {
    if (qword_28105F708 == -1)
    {
LABEL_13:
      v34 = sub_226D6E07C();
      __swift_project_value_buffer(v34, qword_28105F710);
      v35 = v50;
      sub_226B5DDB8(a1, v50, type metadata accessor for BankConnectTransactionsDataFetchTask);
      v36 = sub_226D6E05C();
      v37 = sub_226D6E9AC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = v18;
        v40 = swift_slowAlloc();
        v53[0] = v40;
        *v38 = 136315138;
        v41 = *(Task + 20);
        sub_226D6B9BC();
        sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v42 = sub_226D6F1CC();
        v44 = v43;
        sub_226B5DE20(v35, type metadata accessor for BankConnectTransactionsDataFetchTask);
        v45 = sub_226AC4530(v42, v44, v53);

        *(v38 + 4) = v45;
        _os_log_impl(&dword_226AB4000, v36, v37, "Account %s was disabled while fetching data from the server.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x22AA8BEE0](v40, -1, -1);
        MEMORY[0x22AA8BEE0](v38, -1, -1);

        goto LABEL_18;
      }

      v46 = v35;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  v20 = [v18 transactionsRequestAttemptCount];
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  [v18 setTransactionsRequestAttemptCount_];
  sub_226D6D46C();
  v21 = sub_226D6D3EC();
  (*(v19 + 8))(v8, v5);
  [v18 setLastTransactionsRequestAttemptDate_];

  v53[0] = 0;
  if ([v49 save_])
  {
    v22 = v53[0];
  }

  else
  {
    v48 = v53[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_18:
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B5D840(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B5C2D0(a1);
}

uint64_t sub_226B5D8D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B5CD3C(a1, a2);
}

uint64_t sub_226B5D978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_226D6B9BC();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B5DA04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v3 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D71840;
  v7 = *(a1 + 20);
  v8 = sub_226D6B9BC();
  (*(*(v8 - 8) + 16))(v6 + v5, v1 + v7, v8);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = sub_226B1ED68(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_226B5DB68(uint64_t a1)
{
  v1 = *(a1 + 20);
  sub_226D6B9BC();
  sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v2 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v2);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

uint64_t sub_226B5DCBC(uint64_t a1)
{
  result = sub_226B5E018(&qword_27D7A6FC8, type metadata accessor for BankConnectTransactionsDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectTransactionsDataFetchTask()
{
  result = qword_27D7A6FE0;
  if (!qword_27D7A6FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B5DD60(uint64_t a1)
{
  result = sub_226B5E018(&qword_27D7A6FD8, type metadata accessor for BankConnectTransactionsDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B5DDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B5DE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B5DEE0()
{
  sub_226D6D4AC();
  if (v0 <= 0x3F)
  {
    sub_226D6B9BC();
    if (v1 <= 0x3F)
    {
      sub_226B20350();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_226B5DF94(uint64_t a1)
{
  *(a1 + 8) = sub_226B5E018(&qword_27D7A6FF0, type metadata accessor for BankConnectTransactionsDataFetchTask);
  result = sub_226B5E018(&qword_27D7A6FF8, type metadata accessor for BankConnectTransactionsDataFetchTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226B5E018(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_226B5E064(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_226D6EA3C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_226D6E1BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_226D6EA4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v7);
  sub_226D6E19C();
  v18 = MEMORY[0x277D84F90];
  sub_226B5F840(&qword_28105F478, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226B5F888(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0);
  sub_226D6ED5C();
  v2[4] = sub_226D6EA8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7008, &qword_226D73DF8);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  v2[5] = v12;
  v13 = v17;
  v2[2] = v16;
  v2[3] = v13;
  return v2;
}

void sub_226B5E300(void *a1)
{
  v2 = v1;
  v4 = sub_226D6E18C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6E1BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 userInfo];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = sub_226D6E2BC();

  v17 = *MEMORY[0x277CBE300];
  v47 = sub_226D6E39C();
  v48 = v18;
  sub_226D6EE8C();
  if (!*(v16 + 16) || (v19 = sub_226C2FE4C(&aBlock), (v20 & 1) == 0))
  {

    sub_226AE5030(&aBlock);
LABEL_11:
    v49 = 0u;
    v50 = 0u;
    goto LABEL_12;
  }

  sub_226AC4708(*(v16 + 56) + 32 * v19, &v49);
  sub_226AE5030(&aBlock);

  if (!*(&v50 + 1))
  {
LABEL_12:
    sub_226AC47B0(&v49, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v21 = v42;
    v40 = aBlock;
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v22 = sub_226D6E07C();
    __swift_project_value_buffer(v22, qword_28105F628);

    v23 = sub_226D6E05C();
    v24 = sub_226D6E9AC();

    LODWORD(v39) = v24;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v25 = 136315138;
      v26 = sub_226AC4530(v40, v21, &aBlock);
      v40 = v23;
      v27 = v26;

      *(v25 + 4) = v27;
      v28 = v40;
      _os_log_impl(&dword_226AB4000, v40, v39, "Received NSPersistentStoreRemoteChangeNotification for store: %s", v25, 0xCu);
      v29 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    else
    {
    }

    v34 = *(v2 + 40);
    os_unfair_lock_lock((v34 + 20));
    if (*(v34 + 16) == 1)
    {
      *(v34 + 17) = 1;
      os_unfair_lock_unlock((v34 + 20));
    }

    else
    {
      *(v34 + 16) = 1;
      os_unfair_lock_unlock((v34 + 20));
      v40 = *(v2 + 32);
      v35 = swift_allocObject();
      *(v35 + 16) = v2;
      *(v35 + 24) = v34;
      v45 = sub_226B5F804;
      v46 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_226C0B9A8;
      v44 = &block_descriptor_3;
      v39 = _Block_copy(&aBlock);

      sub_226D6E19C();
      *&v49 = MEMORY[0x277D84F90];
      sub_226B5F840(&qword_28105F588, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7000, &unk_226D73DE0);
      sub_226B5F888(&qword_28105F528, &qword_27D7A7000, &unk_226D73DE0);
      sub_226D6ED5C();
      v36 = v39;
      MEMORY[0x22AA8AB20](0, v13, v8, v39);
      _Block_release(v36);
      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v13, v9);
    }

    return;
  }

LABEL_13:
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v30 = sub_226D6E07C();
  __swift_project_value_buffer(v30, qword_28105F628);
  v31 = sub_226D6E05C();
  v32 = sub_226D6E9CC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226AB4000, v31, v32, "Received NSPersistentStoreRemoteChangeNotification but no store present", v33, 2u);
    MEMORY[0x22AA8BEE0](v33, -1, -1);
  }
}

void sub_226B5E900(uint64_t a1, uint64_t a2)
{
  os_transaction_create();
  while (1)
  {
    sub_226D66E6C();
    os_unfair_lock_lock((a2 + 20));
    if (*(a2 + 16) != 1)
    {
      __break(1u);
      return;
    }

    if (*(a2 + 17) != 1)
    {
      break;
    }

    *(a2 + 17) = 0;
    os_unfair_lock_unlock((a2 + 20));
  }

  *(a2 + 16) = 0;
  os_unfair_lock_unlock((a2 + 20));

  swift_unknownObjectRelease();
}

uint64_t sub_226B5EBB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_226B5EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v77 = *MEMORY[0x277D85DE8];
  v4 = sub_226D6A32C();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = sub_226D6B70C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  *&v75 = 0;
  v20 = [v19 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v75];
  v21 = v75;
  if (!v20)
  {
    v38 = v21;
    sub_226D6D04C();

    swift_willThrow();
LABEL_28:
    v67 = *MEMORY[0x277D85DE8];
    return;
  }

  v68 = v4;
  v69 = sub_226D6D21C();
  v23 = v22;

  (*(v15 + 16))(v18, v71, v14);
  v24 = (*(v15 + 88))(v18, v14);
  if (v24 == *MEMORY[0x277CC7FF0])
  {
    v25 = sub_226D6EB3C();
    if (v25)
    {
      v26 = v25;
      v27 = v70;
      v28 = v68;
      (*(v70 + 104))(v13, *MEMORY[0x277CC7B90], v68);
      v29 = sub_226D6A31C();
      v31 = v30;
      (*(v27 + 8))(v13, v28);
      v76 = MEMORY[0x277CC9318];
      v32 = v69;
      *&v75 = v69;
      *(&v75 + 1) = v23;
      sub_226B11B44(v69, v23);
      v33 = [v26 metadata];
      if (v33)
      {
        v34 = v33;
        v35 = sub_226D6E2BC();

        sub_226B24A98(&v75, v74);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v35;
        sub_226BE6188(v74, v29, v31, isUniquelyReferenced_nonNull_native);

        if (v73)
        {
          v37 = sub_226D6E2AC();
        }

        else
        {
          v37 = 0;
        }

        [v26 setMetadata_];
        v66 = v32;
LABEL_25:
        sub_226B11B98(v66, v23);

        goto LABEL_28;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_13:
    v50 = v69;
    v51 = v23;
LABEL_22:
    sub_226B11B98(v50, v51);
    goto LABEL_28;
  }

  if (v24 == *MEMORY[0x277CC7FE8])
  {
    v39 = sub_226D6EB2C();
    if (v39)
    {
      v26 = v39;
      v40 = v70;
      v41 = v68;
      (*(v70 + 104))(v11, *MEMORY[0x277CC7B88], v68);
      v42 = sub_226D6A31C();
      v44 = v43;
      (*(v40 + 8))(v11, v41);
      v76 = MEMORY[0x277CC9318];
      v45 = v69;
      *&v75 = v69;
      *(&v75 + 1) = v23;
      sub_226B11B44(v69, v23);
      v46 = [v26 metadata];
      if (v46)
      {
        v47 = v46;
        v48 = sub_226D6E2BC();

        sub_226B24A98(&v75, v74);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v48;
        sub_226BE6188(v74, v42, v44, v49);

        if (v73)
        {
          v37 = sub_226D6E2AC();
        }

        else
        {
          v37 = 0;
        }

        [v26 setMetadata_];
        v66 = v45;
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277CC7FF8])
  {
    v52 = v23;
    v53 = sub_226D6EB4C();
    v54 = v69;
    if (v53)
    {
      v55 = v53;
      v56 = v70;
      v57 = v68;
      (*(v70 + 104))(v8, *MEMORY[0x277CC7B80], v68);
      v58 = sub_226D6A31C();
      v60 = v59;
      (*(v56 + 8))(v8, v57);
      v76 = MEMORY[0x277CC9318];
      *&v75 = v54;
      *(&v75 + 1) = v52;
      sub_226B11B44(v54, v52);
      v61 = [v55 metadata];
      if (v61)
      {
        v62 = v61;
        v63 = sub_226D6E2BC();

        sub_226B24A98(&v75, v74);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v63;
        sub_226BE6188(v74, v58, v60, v64);

        if (v73)
        {
          v65 = sub_226D6E2AC();
        }

        else
        {
          v65 = 0;
        }

        [v55 setMetadata_];
        sub_226B11B98(v54, v52);

        goto LABEL_28;
      }

      goto LABEL_31;
    }

    v50 = v69;
    v51 = v52;
    goto LABEL_22;
  }

LABEL_32:
  sub_226D6F0AC();
  __break(1u);
}

uint64_t sub_226B5F38C(uint64_t a1)
{
  v2 = sub_226D6A32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B70C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CC7FF0])
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CC7B90], v2);
    v13 = sub_226D6A31C();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = sub_226D6EB3C();
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v12 == *MEMORY[0x277CC7FE8])
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CC7B88], v2);
    v13 = sub_226D6A31C();
    v15 = v17;
    (*(v3 + 8))(v6, v2);
    v16 = sub_226D6EB2C();
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  if (v12 != *MEMORY[0x277CC7FF8])
  {
    goto LABEL_19;
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CC7B80], v2);
  v13 = sub_226D6A31C();
  v15 = v27;
  (*(v3 + 8))(v6, v2);
  v16 = sub_226D6EB4C();
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_6:
  v18 = v16;
  v19 = [v18 metadata];
  if (v19)
  {
    v20 = v19;
    v21 = sub_226D6E2BC();

    if (*(v21 + 16))
    {
      v22 = sub_226C2FDD4(v13, v15);
      v24 = v23;

      if (v24)
      {
        sub_226AC4708(*(v21 + 56) + 32 * v22, v31);

        if (swift_dynamicCast())
        {
          v25 = v30[2];
          v26 = v30[3];
          sub_226AE59B4(0, &qword_27D7A6F88, 0x277CCAAC8);
          sub_226AE59B4(0, &qword_27D7A6F90, 0x277CBE4C0);
          v28 = sub_226D6EA0C();

          sub_226B11B98(v25, v26);
          return v28;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_16:

    return 0;
  }

  __break(1u);
LABEL_19:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B5F840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B5F888(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *sub_226B5F900()
{
  v77 = sub_226D67F1C();
  v0 = *(v77 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v77);
  v3 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_226D6A7AC();
  v4 = *(v76 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = v67 - v8;
  v87 = sub_226D6D1AC();
  v81 = *(v87 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v87);
  v74 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v67 - v12;
  MEMORY[0x28223BE20](v14);
  v78 = v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v67 - v21;
  MEMORY[0x28223BE20](v23);
  v80 = v67 - v24;
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v26 = result;
    v27 = [objc_opt_self() webServiceURLWithWebService_];

    if (v27)
    {
      sub_226D6D14C();

      v28 = v81;
      v29 = *(v81 + 56);
      v30 = v22;
      v31 = 0;
    }

    else
    {
      v28 = v81;
      v29 = *(v81 + 56);
      v30 = v22;
      v31 = 1;
    }

    v32 = v87;
    v29(v30, v31, 1, v87);
    v33 = v22;
    v34 = v80;
    sub_226B60108(v33, v80);
    sub_226B60178(v34, v19);
    if ((*(v28 + 48))(v19, 1, v32) == 1)
    {
      sub_226B601E8(v19);
      sub_226B60250();
      v82 = swift_allocError();
      swift_willThrow();
      sub_226B601E8(v34);
      return v19;
    }

    v72 = v0;
    v35 = v78;
    (*(v28 + 32))(v78, v19, v32);
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_28105F5C0);
    v37 = *(v28 + 16);
    v69 = v28 + 16;
    v68 = v37;
    v37(v13, v35, v32);
    v38 = sub_226D6E05C();
    v39 = sub_226D6E9AC();
    v40 = os_log_type_enabled(v38, v39);
    v71 = v4;
    v73 = v3;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = v28;
      v43 = swift_slowAlloc();
      v86[0] = v43;
      *v41 = 136315138;
      sub_226B602A4();
      v44 = sub_226D6F1CC();
      v46 = v45;
      v70 = *(v42 + 8);
      v70(v13, v32);
      v47 = sub_226AC4530(v44, v46, v86);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_226AB4000, v38, v39, "Creating Prism web service client with URL: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      MEMORY[0x22AA8BEE0](v41, -1, -1);
    }

    else
    {

      v70 = *(v28 + 8);
      v70(v13, v32);
    }

    v48 = v79;
    sub_226D6A79C();
    v49 = [objc_opt_self() ephemeralSessionConfiguration];
    sub_226D67E6C();
    sub_226D67F0C();
    v50 = sub_226D6E36C();

    [v49 set:v50 sourceApplicationBundleIdentifier:?];

    v51 = sub_226D1EA08();
    v67[1] = v49;
    [v49 set:v51 appleIDContext:?];

    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v52 = sub_226D69BDC();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = sub_226D69BCC();
      v56 = sub_226D676FC();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      v59 = sub_226D676EC();
      v60 = v78;
      v68(v74, v78, v87);
      v61 = v71;
      v62 = v48;
      v63 = v76;
      (*(v71 + 16))(v75, v62, v76);
      v86[3] = v52;
      v86[4] = MEMORY[0x277CC79A0];
      v86[0] = v55;
      v84 = v56;
      v85 = MEMORY[0x277CC6DA0];
      v83 = v59;
      sub_226D6827C();
      v64 = sub_226D699CC();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      v19 = sub_226D699BC();
      (*(v72 + 8))(v73, v77);
      (*(v61 + 8))(v79, v63);
      v70(v60, v87);
      sub_226B601E8(v80);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226B60108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B60178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B601E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226B60250()
{
  result = qword_27D7A7010;
  if (!qword_27D7A7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7010);
  }

  return result;
}

unint64_t sub_226B602A4()
{
  result = qword_27D7A7018;
  if (!qword_27D7A7018)
  {
    sub_226D6D1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7018);
  }

  return result;
}

unint64_t sub_226B60310()
{
  result = qword_27D7A7020;
  if (!qword_27D7A7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7020);
  }

  return result;
}

uint64_t sub_226B60364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_226AC40E8(a3, v27 - v11, &unk_27D7A8BA0, &qword_226D734E0);
  v13 = sub_226D6E79C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_226AC47B0(v12, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_226D6E6CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_226D6E40C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t Daemon.__allocating_init()()
{
  v0 = swift_allocObject();
  Daemon.init()();
  return v0;
}

void *Daemon.init()()
{
  v0 = sub_226D6E0AC();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v350 = &v343 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v364 = &v343 - v4;
  v378 = sub_226D679BC();
  v384 = *(v378 - 1);
  v5 = v384[8];
  v6 = MEMORY[0x28223BE20](v378);
  v349 = &v343 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v363 = &v343 - v8;
  v375 = sub_226D66E1C();
  v362 = *(v375 - 1);
  v9 = v362[8];
  v10 = MEMORY[0x28223BE20](v375);
  v360 = &v343 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v361 = &v343 - v12;
  v377 = sub_226D67F1C();
  v383 = *(v377 - 1);
  v13 = v383[8];
  MEMORY[0x28223BE20](v377);
  v376 = (&v343 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_226D6EA4C();
  v358 = *(v15 - 8);
  v359 = v15;
  v16 = *(v358 + 8);
  MEMORY[0x28223BE20](v15);
  v357 = &v343 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_226D6EA3C();
  v18 = *(*(v355 - 8) + 64);
  MEMORY[0x28223BE20](v355);
  v356 = &v343 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D6E1BC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v354 = &v343 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_226D6BBAC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v369 = &v343 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6D1AC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v351 = &v343 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_226D6B94C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v365 = &v343 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = sub_226D6B5EC();
  v348 = *(v386 - 8);
  v32 = *(v348 + 64);
  v33 = MEMORY[0x28223BE20](v386);
  v346 = &v343 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v372 = &v343 - v35;
  v373 = sub_226D6B92C();
  v371 = *(v373 - 8);
  v36 = *(v371 + 64);
  v37 = MEMORY[0x28223BE20](v373);
  v353 = &v343 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v382 = &v343 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v347 = *(v40 - 8);
  v41 = *(v347 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v381 = &v343 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v380 = &v343 - v44;
  v45 = sub_226D6DFCC();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v343 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v343 - v51;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v53 = sub_226D6DFFC();
  __swift_project_value_buffer(v53, qword_281064510);
  sub_226D6DFBC();
  v54 = sub_226D6DFDC();
  v55 = sub_226D6EABC();
  v56 = sub_226D6EC8C();
  v370 = v40;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v54, v55, v58, "DaemonStart", "", v57, 2u);
    MEMORY[0x22AA8BEE0](v57, -1, -1);
  }

  (*(v46 + 16))(v50, v52, v45);
  v59 = sub_226D6E03C();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v345 = sub_226D6E02C();
  (*(v46 + 8))(v52, v45);
  sub_226B697D4();
  v62 = type metadata accessor for XPCActivityScheduler();
  swift_allocObject();
  v63 = sub_226B29628();
  v64 = v385;
  v385[4] = v63;
  v64 += 32;
  v366 = v64;
  v367 = v62;
  *(v64 + 24) = v62;
  *(v64 + 32) = &off_283A6ACF0;
  LOBYTE(v393[0]) = 0;
  v65 = sub_226D6704C();
  v66 = MEMORY[0x277CC7F68];
  v67 = v386;
  *(&v416 + 1) = v386;
  v417 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v415);
  sub_226D6B58C();
  v379 = v65;
  sub_226D6701C();
  sub_226D66FEC();
  if (v415 == 1)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v68 = sub_226D6E07C();
    __swift_project_value_buffer(v68, qword_28105F5E0);
    v69 = sub_226D6E05C();
    v70 = sub_226D6E9EC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_226AB4000, v69, v70, "Using development container", v71, 2u);
      MEMORY[0x22AA8BEE0](v71, -1, -1);
    }
  }

  LOBYTE(v393[0]) = 0;
  *(&v416 + 1) = v67;
  v417 = v66;
  __swift_allocate_boxed_opaque_existential_1(&v415);
  sub_226D6B58C();
  sub_226D6701C();
  sub_226D66FEC();
  if (v415 == 1)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v72 = sub_226D6E07C();
    __swift_project_value_buffer(v72, qword_28105F5E0);
    v73 = sub_226D6E05C();
    v74 = sub_226D6E9EC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_226AB4000, v73, v74, "Using dropbox development container", v75, 2u);
      MEMORY[0x22AA8BEE0](v75, -1, -1);
    }
  }

  sub_226D66FEC();
  sub_226D66FEC();
  sub_226D6B91C();
  sub_226D6B5AC();
  sub_226D6B5CC();
  sub_226D6B8EC();
  sub_226D6B90C();
  v417 = 0;
  v416 = 0u;
  v415 = 0u;
  v76 = type metadata accessor for AuthorisationStatusProvider();
  memset(v393, 0, 40);
  swift_allocObject();
  v77 = AuthorisationStatusProvider.init()();
  v78 = type metadata accessor for DaemonCoreDataStoreServerHandlingPolicy();
  v79 = objc_allocWithZone(v78);
  v80 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker;
  v81 = sub_226D69A8C();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  *&v79[v80] = sub_226D69A7C();
  sub_226AC40E8(&v415, &v79[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_bundleInfoProvider], &qword_27D7A7028, &qword_226D73F30);
  sub_226AC40E8(v393, &v79[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider], &qword_27D7A7030, &qword_226D73F38);
  v84 = &v79[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider];
  v352 = v76;
  v84[3] = v76;
  v84[4] = &protocol witness table for AuthorisationStatusProvider;
  *v84 = v77;
  v500.receiver = v79;
  v500.super_class = v78;
  v85 = objc_msgSendSuper2(&v500, sel_init);
  sub_226AC47B0(v393, &qword_27D7A7030, &qword_226D73F38);
  sub_226AC47B0(&v415, &qword_27D7A7028, &qword_226D73F30);
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }

  v374 = qword_2810610C8;
  if (qword_281060130 != -1)
  {
    swift_once();
  }

  v368 = qword_281060138;
  v86 = sub_226D6C76C();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v89 = sub_226D6C75C();
  v90 = v353;
  (*(v371 + 16))(v353, v382, v373);
  sub_226D6A97C();
  v91 = v365;
  sub_226D6B93C();
  sub_226D6A97C();
  v344 = v85;
  sub_226D6BB8C();
  v92 = v369;
  sub_226D6BB9C();
  type metadata accessor for DaemonCoreDataStoreManager();
  swift_allocObject();

  v365 = v89;
  v93 = sub_226B6FA58(v90, v91, v92, v89);
  v94 = v385;
  v385[9] = v93;
  type metadata accessor for DaemonPersistentHistoryObserver();
  v95 = swift_allocObject();
  v96 = MEMORY[0x277D84F90];
  *(v95 + 16) = MEMORY[0x277D84F90];
  *(v95 + 24) = 0;
  v94[3] = v95;
  v97 = type metadata accessor for WalletMessageUpdater();
  v98 = swift_allocObject();
  v94[139] = v97;
  v94[140] = sub_226B6ABCC(&qword_281062070, type metadata accessor for WalletMessageUpdater);
  v94[136] = v98;
  v99 = v93[2];
  sub_226AE532C((v94 + 136), &v415);

  v100 = sub_226D676AC();
  *(&v343 - 2) = MEMORY[0x28223BE20](v100);
  sub_226D6EB8C();
  v353 = 0;
  if (LOBYTE(v393[0]) == 1)
  {
    __swift_project_boxed_opaque_existential_1(&v415, *(&v416 + 1));
    sub_226D69A5C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v415);
  v101 = *(v94[9] + 16);

  v102 = sub_226D676AC();

  v351 = type metadata accessor for BackgroundDeliveryRegistrationManager();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  v369 = v103;
  type metadata accessor for BackgroundDeliveryScheduler();
  v104 = swift_allocObject();
  v343 = v102;

  v94[13] = sub_226B684C4(v105, v104);
  sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  sub_226D6E1AC();
  *&v415 = v96;
  sub_226B6ABCC(&qword_28105F478, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226AC4194(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0);
  sub_226D6ED5C();
  (*(v358 + 13))(v357, *MEMORY[0x277D85260], v359);
  v359 = sub_226D6EA8C();
  v477[3] = &type metadata for AppleAccountInformationProvider;
  v477[4] = &off_283A6FBB0;
  v106 = v94[9];
  v107 = *(v106 + 16);
  v108 = *(v106 + 40);
  v478 = 0u;
  v479 = 0u;
  v480 = 0;
  sub_226AE532C((v94 + 136), v481);
  v109 = v108;

  v110 = v376;
  sub_226D67EEC();
  sub_226D67F0C();
  v111 = v383[1];
  ++v383;
  v358 = v111;
  v111(v110, v377);
  v112 = sub_226D6A36C();
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  swift_allocObject();
  v115 = sub_226D6A35C();
  v481[8] = v112;
  v481[5] = v115;
  v481[9] = MEMORY[0x277CC7BC8];
  v116 = v386;
  v482[3] = v386;
  v117 = MEMORY[0x277CC7F68];
  v482[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v482);
  sub_226D6B58C();
  v483[3] = v116;
  v483[4] = v117;
  __swift_allocate_boxed_opaque_existential_1(v483);
  sub_226D6B5AC();
  v118 = sub_226D69BFC();
  v119 = MEMORY[0x22AA85C90]();
  v483[15] = MEMORY[0x277CC79A8];
  v357 = v118;
  v483[14] = v118;
  v483[11] = v119;
  Service = type metadata accessor for BusinessQueryService();
  memset(v484, 0, sizeof(v484));
  memset(v487, 0, sizeof(v487));
  v485 = 0;
  v488 = 0;
  v121 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v121 + 112) = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  v417 = &off_283A72868;
  *(&v416 + 1) = Service;
  *&v415 = v121;
  type metadata accessor for BusinessConnectProvider();
  v122 = swift_allocObject();
  v123 = __swift_mutable_project_boxed_opaque_existential_1(&v415, Service);
  v124 = *(*(Service - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v126 = (&v343 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  v128 = *v126;
  v122[5] = Service;
  v122[6] = &off_283A72868;
  v122[2] = v128;
  __swift_destroy_boxed_opaque_existential_0Tm(&v415);
  v129 = v352;
  swift_allocObject();
  v130 = AuthorisationStatusProvider.init()();
  v483[9] = &protocol witness table for AuthorisationStatusProvider;
  v483[8] = v129;
  v483[5] = v130;
  v131 = objc_allocWithZone(MEMORY[0x277D06D78]);
  v132 = v374;

  v133 = [v131 init];
  v492 = &off_283A72E98;
  v491 = &type metadata for FoundInMailItemDocumentFinderDefaultIndex;
  v490 = v133;
  v134 = sub_226AE59B4(0, &unk_28105F450, 0x277CC1E70);
  v477[5] = v107;
  v477[6] = v359;
  v477[7] = v108;
  v483[10] = v132;
  v493 = &type metadata for WalletInfo;
  v494 = &protocol witness table for WalletInfo;
  v495 = v379;
  v496 = MEMORY[0x277CC6A68];
  v497 = v134;
  v498 = &off_283A6C170;
  v499 = v122;
  v417 = &protocol witness table for BackgroundDeliveryRegistrationManager;
  *(&v416 + 1) = v351;
  *&v415 = v369;

  sub_226AFD680(&v415, v484, &qword_27D7A7038, &qword_226D73F40);
  if (qword_281060AF8 != -1)
  {
    swift_once();
  }

  v486 = qword_281064530;
  *(&v416 + 1) = &type metadata for TrackedOrderBiomeStream;
  v417 = &off_283A6EDD8;

  sub_226AFD680(&v415, v487, &unk_27D7A7660, &unk_226D7B420);
  v135 = v361;
  sub_226D66E0C();
  v136 = type metadata accessor for ExtractedOrderConfigurationProvider();
  v137 = *(v136 + 48);
  v138 = *(v136 + 52);
  v139 = swift_allocObject();
  v140 = v362;
  v141 = v360;
  v142 = v375;
  (v362[2])(v360, v135, v375);
  v143 = sub_226B686A0(v141, v139);
  (v140[1])(v135, v142);
  v489 = v143;
  sub_226B6A058(v477, &v415);
  type metadata accessor for DaemonFinanceStoreImplementation();
  swift_allocObject();
  v144 = sub_226B67E88(&v415);
  v145 = *MEMORY[0x277CC6EA0];
  v146 = v384;
  v147 = v363;
  v148 = v378;
  v361 = v384[13];
  v362 = v384 + 13;
  (v361)(v363, v145, v378);
  sub_226D679AC();
  v149 = v146[1];
  v384 = v146 + 1;
  v360 = v149;
  (v149)(v147, v148);

  sub_226D6E09C();
  v150 = sub_226D6E0EC();
  v151 = *(v150 + 48);
  v152 = *(v150 + 52);
  v363 = v150;
  swift_allocObject();
  v359 = v144;
  v153 = v353;
  v154 = sub_226D6E0DC();
  v364 = v153;
  if (v153)
  {
    v326 = v364;
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v327 = sub_226D6E07C();
    __swift_project_value_buffer(v327, qword_28105F5E0);
    v328 = v326;
    v329 = sub_226D6E05C();
    v330 = sub_226D6E9CC();

    if (os_log_type_enabled(v329, v330))
    {
      v331 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      *v331 = 138412290;
      v333 = v326;
      v334 = _swift_stdlib_bridgeErrorToNSError();
      *(v331 + 4) = v334;
      *v332 = v334;
      _os_log_impl(&dword_226AB4000, v329, v330, "Could create finance store listener: %@", v331, 0xCu);
      sub_226AC47B0(v332, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v332, -1, -1);
      v335 = v331;
LABEL_42:
      MEMORY[0x22AA8BEE0](v335, -1, -1);
    }

LABEL_43:

    exit(1);
  }

  v155 = v385;
  v385[2] = v154;
  v156 = *(v155[9] + 16);
  v157 = sub_226D691EC();
  v158 = *(v157 + 48);
  v159 = *(v157 + 52);
  swift_allocObject();

  v160 = sub_226D691DC();
  v161 = type metadata accessor for EphemeralBankConnectWebServiceClientProvider();
  v162 = swift_allocObject();
  *(v162 + 16) = v160;
  sub_226D6BF8C();
  v163 = *(v155[9] + 16);
  *(&v416 + 1) = v161;
  v417 = sub_226B6ABCC(qword_28105F960, type metadata accessor for EphemeralBankConnectWebServiceClientProvider);
  v164 = v417;
  v353 = v160;
  v354 = v417;
  *&v415 = v162;

  v356 = sub_226D6BF6C();
  *(&v416 + 1) = v386;
  v417 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v415);
  sub_226D6B5AC();
  v165 = sub_226D6A92C();
  v166 = objc_allocWithZone(v165);
  v167 = sub_226D6A91C();
  v168 = sub_226D692BC();
  v169 = sub_226D692AC();
  v476[4] = MEMORY[0x277CC7838];
  v476[3] = v168;
  v476[0] = v169;
  v355 = *(v155[9] + 16);
  v418 = v164;
  v417 = v161;
  *(&v415 + 1) = v162;
  v170 = sub_226D6A0CC();
  swift_retain_n();

  v171 = sub_226D6A0BC();
  v420 = v170;
  v419 = v171;
  v421 = MEMORY[0x277CC7AA8];
  v422 = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v423 = &off_283A71A38;
  v424 = &type metadata for BankConnectPaymentPassDataSourceProvider;
  v425 = &protocol witness table for BankConnectPaymentPassDataSourceProvider;
  v172 = *(v155[9] + 16);
  v427 = &type metadata for BankConnectAccountMatcherProvider;
  v428 = &off_283A6A768;
  v173 = swift_allocObject();
  v426 = v173;
  v173[6] = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v173[7] = &off_283A71A38;
  v173[2] = v172;
  v174 = type metadata accessor for TransactionClassificationDataLoaderProvider();
  v175 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7040, &qword_226D73F48);
  v176 = swift_allocObject();
  v176[1] = 0u;
  v176[2] = 0u;
  *(v176 + 44) = 0u;
  *(v175 + 16) = v176;
  v430 = v174;
  v429 = v175;
  v431 = &off_283A71A48;
  v433 = &type metadata for FinanceConfigurationProvider;
  v434 = sub_226B6A0BC();
  v177 = swift_allocObject();
  v432 = v177;
  v178 = MEMORY[0x277CC6538];
  v177[5] = v375;
  v177[6] = v178;
  __swift_allocate_boxed_opaque_existential_1(v177 + 2);

  sub_226D66E0C();
  v179 = sub_226D6C26C();
  v180 = *(v179 + 48);
  v181 = *(v179 + 52);
  swift_allocObject();
  v182 = sub_226D6C25C();
  v437 = MEMORY[0x277CC8220];
  v436 = v179;
  v435 = v182;
  v183 = sub_226D6973C();
  v184 = sub_226D6971C();
  v440 = MEMORY[0x277CC78A8];
  v352 = v183;
  v439 = v183;
  v438 = v184;
  v185 = type metadata accessor for BankConnectPKCEGenerator();
  v186 = swift_allocObject();
  *(v186 + 16) = sub_226D45B28;
  *(v186 + 24) = 0;
  v443 = &off_283A72DC0;
  v442 = v185;
  v441 = v186;
  v187 = sub_226D6B15C();
  v188 = sub_226D6B14C();
  v447 = MEMORY[0x277CC7E18];
  v446 = v187;
  v445 = v188;
  sub_226D6C11C();
  v189 = *(v155[9] + 16);

  v375 = sub_226D6C0FC();
  v190 = MEMORY[0x277CC7CC8];
  v451 = MEMORY[0x277CC7CC8];
  v450 = v165;
  v449 = v167;
  v191 = *(v155[9] + 16);
  sub_226AE532C((v155 + 136), v393);
  v413 = sub_226D6BD3C();
  v414 = MEMORY[0x277CC8138];
  __swift_allocate_boxed_opaque_existential_1(&v412);
  v192 = v167;

  sub_226D6BD2C();
  v193 = sub_226D6976C();
  v194 = sub_226D6975C();
  v411 = MEMORY[0x277CC78C0];
  v410 = v193;
  *&v409 = v194;
  v408 = v354;
  v407 = v161;
  *&v406 = v162;
  v405 = v190;
  v404 = v165;
  *&v403 = v192;
  v401 = &type metadata for WidgetRefresher;
  v195 = sub_226B6A110();
  v402 = v195;
  v354 = type metadata accessor for FinancialDataAppPermissions();
  v398 = v354;
  v196 = sub_226B6ABCC(&unk_2810610B0, type metadata accessor for FinancialDataAppPermissions);
  v399 = v196;
  v197 = v374;
  *&v397 = v374;
  v198 = type metadata accessor for FinancialDataDeletedAccountsRemover();
  v396 = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v395 = v198;
  v199 = v368;
  *&v394 = v368;
  v200 = type metadata accessor for BankConnectConsentArbiter();
  v201 = swift_allocObject();
  v201[2] = v191;
  sub_226AC484C(&v406, (v201 + 3));
  sub_226AC484C(&v403, (v201 + 8));
  sub_226AC484C(v393, (v201 + 13));
  sub_226AC484C(&v400, (v201 + 18));
  v201[23] = &type metadata for WalletInfo;
  v201[24] = &protocol witness table for WalletInfo;
  sub_226AC484C(&v412, (v201 + 25));
  sub_226AC484C(&v409, (v201 + 30));
  sub_226AC484C(&v397, (v201 + 35));
  sub_226AC484C(&v394, (v201 + 40));
  v454 = &off_283A6D1B8;
  v453 = v200;
  v452 = v201;
  v456 = v198;
  v457 = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v455 = v199;
  v458 = &type metadata for WidgetRefresher;
  v202 = v155;
  v459 = v195;
  v203 = *(v155[9] + 16);
  v204 = sub_226D66D5C();
  v205 = *(v204 + 48);
  v206 = *(v204 + 52);
  swift_allocObject();
  swift_retain_n();

  v207 = v386;
  v208 = sub_226D66D4C();
  v461 = v204;
  v462 = MEMORY[0x277CC64E0];
  v460 = v208;
  sub_226AC40E8(v476, &v463, &qword_27D7A5FD0, &qword_226D708A0);
  v209 = type metadata accessor for EngagementEventTrigger();
  memset(v464, 0, sizeof(v464));
  v465 = 0;
  v210 = swift_allocObject();
  v467 = v209;
  v468 = &off_283A6D088;
  v466 = v210;
  v470 = v354;
  v471 = v196;
  v469 = v197;
  *(&v393[1] + 1) = &type metadata for BankConnectPaymentPassDataSourceProvider;
  *&v393[2] = &protocol witness table for BankConnectPaymentPassDataSourceProvider;
  v211 = type metadata accessor for PaymentPassCardArtRefresher();
  v212 = swift_allocObject();
  sub_226AC484C(v393, v212 + 16);
  v473 = v211;
  v474 = &off_283A72098;
  v472 = v212;
  sub_226AE532C((v155 + 136), v475);

  v214 = v357;
  v215 = MEMORY[0x22AA85C90](v213);
  v475[8] = v214;
  v475[9] = MEMORY[0x277CC79A8];
  *&v415 = v355;
  v444 = v356;
  v475[5] = v215;
  v448 = v375;
  v216 = type metadata accessor for OfflineLabConfigurationManager(0);
  *(&v393[1] + 1) = v216;
  *&v393[2] = &off_283A6DF38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v393);
  v218 = v376;
  sub_226D67EEC();
  v219 = sub_226D67F0C();
  v221 = v220;
  v358(v218, v377);
  v413 = v207;
  v414 = MEMORY[0x277CC7F70];
  __swift_allocate_boxed_opaque_existential_1(&v412);
  sub_226D6B58C();
  *boxed_opaque_existential_1 = v219;
  boxed_opaque_existential_1[1] = v221;
  boxed_opaque_existential_1[2] = 0xD000000000000021;
  boxed_opaque_existential_1[3] = 0x8000000226D7F6B0;
  sub_226AE532C(&v412, &v409);
  v222 = boxed_opaque_existential_1 + *(v216 + 24);
  sub_226D6B5FC();
  __swift_destroy_boxed_opaque_existential_0Tm(&v412);
  sub_226AFD680(v393, v464, &qword_27D7A7048, &qword_226D74690);
  sub_226B42014(&v415, (v202 + 15));
  v223 = v349;
  v224 = v378;
  (v361)(v349, *MEMORY[0x277CC6E98], v378);
  sub_226D679AC();
  (v360)(v223, v224);
  sub_226B42014(&v415, v393);
  v225 = swift_allocObject();
  memcpy((v225 + 16), v393, 0x3B0uLL);
  sub_226D6E09C();
  v226 = *(v363 + 12);
  v227 = *(v363 + 26);
  swift_allocObject();
  v228 = v364;
  v229 = sub_226D6E0DC();
  if (v228)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v336 = sub_226D6E07C();
    __swift_project_value_buffer(v336, qword_28105F5E0);
    v337 = v228;
    v329 = sub_226D6E05C();
    v338 = sub_226D6E9CC();

    if (os_log_type_enabled(v329, v338))
    {
      v339 = swift_slowAlloc();
      v340 = swift_slowAlloc();
      *v339 = 138412290;
      v341 = v228;
      v342 = _swift_stdlib_bridgeErrorToNSError();
      *(v339 + 4) = v342;
      *v340 = v342;
      _os_log_impl(&dword_226AB4000, v329, v338, "Could create bankconnect service listener: %@", v339, 0xCu);
      sub_226AC47B0(v340, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v340, -1, -1);
      v335 = v339;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v202[133] = v229;
  sub_226AE532C(v366, v393);
  v413 = v207;
  v414 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v412);
  sub_226D6B58C();
  v230 = *(&v393[1] + 1);
  v231 = __swift_mutable_project_boxed_opaque_existential_1(v393, *(&v393[1] + 1));
  v377 = &v343;
  v232 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v231);
  v234 = (&v343 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v235 + 16))(v234);
  v236 = *v234;
  v410 = &type metadata for BankConnectEnvironmentImplementation;
  v237 = sub_226B6A16C();
  v411 = v237;
  *&v409 = swift_allocObject();
  sub_226B42014(&v415, v409 + 16);
  v408 = &off_283A6ACF0;
  v238 = v367;
  v407 = v367;
  *&v406 = v236;
  type metadata accessor for BankConnectWebServiceCoordinator();
  v239 = swift_allocObject();
  v240 = __swift_mutable_project_boxed_opaque_existential_1(&v409, &type metadata for BankConnectEnvironmentImplementation);
  v374 = &v343;
  v241 = off_283A722F0;
  v242 = *(off_283A722F0 + 8);
  MEMORY[0x28223BE20](v240);
  v375 = v241[2];
  v376 = ((v242 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375(&v343 - v376);
  v243 = __swift_mutable_project_boxed_opaque_existential_1(&v406, v238);
  v244 = *(*(v238 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v246 = (&v343 - ((v245 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = *(v247 + 16);
  v383 = v245;
  v384 = (v247 + 16);
  v378 = v248;
  v248(v246);
  v249 = *v246;
  v404 = &type metadata for BankConnectEnvironmentImplementation;
  v405 = v237;
  *&v403 = swift_allocObject();
  memcpy((v403 + 16), &v343 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0), 0x3B0uLL);
  v402 = &off_283A6ACF0;
  v401 = v238;
  *&v400 = v249;
  v250 = v385;
  swift_defaultActor_initialize();
  v239[33] = 0;
  v239[34] = 0;
  sub_226AC484C(&v403, (v239 + 14));
  sub_226AC484C(&v400, (v239 + 19));
  v239[24] = &type metadata for WalletInfo;
  v239[25] = &protocol witness table for WalletInfo;
  sub_226AC484C(&v412, (v239 + 26));
  v239[31] = v379;
  v239[32] = MEMORY[0x277CC6A68];
  __swift_destroy_boxed_opaque_existential_0Tm(&v406);
  __swift_destroy_boxed_opaque_existential_0Tm(&v409);
  __swift_destroy_boxed_opaque_existential_0Tm(v393);
  v250[134] = v239;
  v251 = *(v250[9] + 16);
  sub_226AE532C((v250 + 136), v393);
  v252 = v368;

  v250[135] = sub_226B68304(v253, v252, &type metadata for WalletInfo, &protocol witness table for WalletInfo, v393);
  v254 = v250[3];
  *(&v393[1] + 1) = &type metadata for BankConnectEnvironmentImplementation;
  *&v393[2] = v237;
  *&v393[0] = swift_allocObject();
  sub_226B42014(&v415, *&v393[0] + 16);
  v255 = type metadata accessor for BankConnectCardArtObserver();
  v256 = swift_allocObject();
  v257 = __swift_mutable_project_boxed_opaque_existential_1(v393, &type metadata for BankConnectEnvironmentImplementation);
  MEMORY[0x28223BE20](v257);
  v258 = (&v343 - v376);
  v375(&v343 - v376);

  v259 = sub_226B6820C(v258, v256);
  __swift_destroy_boxed_opaque_existential_0Tm(v393);
  swift_beginAccess();
  v260 = *(v254 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v254 + 16) = v260;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v260 = sub_226BBB8E8(0, v260[2] + 1, 1, v260);
    *(v254 + 16) = v260;
  }

  v263 = v260[2];
  v262 = v260[3];
  if (v263 >= v262 >> 1)
  {
    v260 = sub_226BBB8E8((v262 > 1), v263 + 1, 1, v260);
  }

  *(&v393[1] + 1) = v255;
  *&v393[2] = &off_283A70D28;
  *&v393[0] = v259;
  v260[2] = v263 + 1;
  sub_226AC484C(v393, &v260[5 * v263 + 4]);
  *(v254 + 16) = v260;
  swift_endAccess();

  v377 = *(v250[9] + 16);
  sub_226AE532C(v366, v393);
  v264 = type metadata accessor for EphemeralOrderWebServiceClientProvider();
  v375 = v264;
  v376 = swift_allocObject();
  v265 = type metadata accessor for EphemeralPrismWebServiceClientProvider();
  v374 = v265;
  v368 = swift_allocObject();
  v266 = type metadata accessor for PushNotificationCoordinator();
  v267 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v267 + 112) = 0;
  *(v267 + 120) = [objc_allocWithZone(type metadata accessor for PushNotificationCoordinator.DelegateWrapper()) init];
  *(v267 + 128) = 0;
  *(v267 + 136) = 0;
  v268 = v352;
  v269 = sub_226D6971C();
  v270 = *(&v393[1] + 1);
  v271 = __swift_mutable_project_boxed_opaque_existential_1(v393, *(&v393[1] + 1));
  v379 = &v343;
  v272 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v271);
  v274 = (&v343 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v275 + 16))(v274);
  v276 = *v274;
  v414 = &off_283A6ACF0;
  v277 = v367;
  v413 = v367;
  *&v412 = v276;
  v410 = v264;
  *&v409 = v376;
  v411 = &off_283A6E5E8;
  v408 = &off_283A6B908;
  v407 = v265;
  *&v406 = v368;
  v405 = &off_283A720A8;
  v404 = v266;
  v278 = v266;
  *&v403 = v267;
  v402 = MEMORY[0x277CC78A8];
  v401 = v268;
  *&v400 = v269;
  type metadata accessor for OrderWebServiceCoordinator();
  v279 = swift_allocObject();
  v280 = __swift_mutable_project_boxed_opaque_existential_1(&v412, v277);
  v376 = &v343;
  MEMORY[0x28223BE20](v280);
  v282 = (&v343 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0));
  v378(v282);
  v283 = v410;
  v284 = __swift_mutable_project_boxed_opaque_existential_1(&v409, v410);
  v384 = &v343;
  v285 = *(v283[-1].Description + 8);
  MEMORY[0x28223BE20](v284);
  v287 = (&v343 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v288 + 16))(v287);
  v289 = v407;
  v290 = __swift_mutable_project_boxed_opaque_existential_1(&v406, v407);
  v383 = &v343;
  v291 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v290);
  v293 = (&v343 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v294 + 16))(v293);
  v295 = v404;
  v296 = __swift_mutable_project_boxed_opaque_existential_1(&v403, v404);
  v297 = *(v295[-1].Description + 8);
  MEMORY[0x28223BE20](v296);
  v299 = (&v343 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v300 + 16))(v299);
  v301 = *v282;
  v302 = *v287;
  v303 = *v293;
  v304 = *v299;
  v305 = v385;
  v399 = &off_283A6ACF0;
  v398 = v277;
  *&v397 = v301;
  v396 = &off_283A6E5E8;
  v395 = v375;
  *&v394 = v302;
  v391 = v374;
  v392 = &off_283A6B908;
  *&v390 = v303;
  v388 = v278;
  v389 = &off_283A720A8;
  v306 = v365;
  *&v387 = v304;
  swift_defaultActor_initialize();
  v279[41] = 0;
  v279[42] = 0;
  v279[14] = v377;
  sub_226AC484C(&v397, (v279 + 15));
  sub_226AC484C(&v394, (v279 + 20));
  sub_226AC484C(&v390, (v279 + 25));
  v279[30] = v306;
  sub_226AC484C(&v387, (v279 + 31));
  sub_226AC484C(&v400, (v279 + 36));
  __swift_destroy_boxed_opaque_existential_0Tm(&v403);
  __swift_destroy_boxed_opaque_existential_0Tm(&v406);
  __swift_destroy_boxed_opaque_existential_0Tm(&v409);
  __swift_destroy_boxed_opaque_existential_0Tm(&v412);
  __swift_destroy_boxed_opaque_existential_0Tm(v393);
  v305[10] = v279;
  v307 = *(v305[9] + 16);

  v308 = v346;
  sub_226D6B58C();
  *(&v393[1] + 1) = &type metadata for PostInstallCoordinator.PostInstallTasks;
  *&v393[2] = &off_283A71E78;
  v309 = type metadata accessor for PostInstallCoordinator();
  v310 = *(v309 + 48);
  v311 = *(v309 + 52);
  v312 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v393, &type metadata for PostInstallCoordinator.PostInstallTasks);
  v312[6] = &type metadata for PostInstallCoordinator.PostInstallTasks;
  v312[7] = &off_283A71E78;
  v312[2] = v307;
  v313 = v348;
  v314 = v308;
  v315 = v386;
  (*(v348 + 32))(v312 + OBJC_IVAR____TtC13FinanceDaemon22PostInstallCoordinator_userDefaults, v314, v386);
  __swift_destroy_boxed_opaque_existential_0Tm(v393);
  v305[11] = v312;
  v316 = *(v305[9] + 16);
  type metadata accessor for OrderChangeDistributedNotificationCoordinator();
  v317 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v317 + 112) = v316;
  *(v317 + 120) = 0;
  v305[12] = v317;
  v318 = *(v305[9] + 16);
  v319 = qword_281060348;

  if (v319 != -1)
  {
    swift_once();
  }

  v320 = qword_281064528;
  type metadata accessor for ExtractedOrderCascadeSetReader();
  v321 = swift_allocObject();
  v322 = v320;
  swift_defaultActor_initialize();

  (*(v313 + 8))(v372, v315);
  (*(v371 + 8))(v382, v373);
  v323 = *(v347 + 8);
  v324 = v370;
  v323(v381, v370);
  v323(v380, v324);
  v321[15] = v322;
  v321[16] = 0;
  v321[14] = v318;
  v305[14] = v321;
  sub_226B6A2D0(&v415);
  sub_226AC47B0(v476, &qword_27D7A5FD0, &qword_226D708A0);
  sub_226B6A324(v477);
  sub_226B634C8("DaemonStart", 11, 2);

  return v305;
}

uint64_t sub_226B634C8(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_226D6E00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6DFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6DFFC();
  __swift_project_value_buffer(v14, qword_281064510);
  v15 = sub_226D6DFDC();
  sub_226D6E01C();
  v20 = sub_226D6EAAC();
  result = sub_226D6EC8C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_226D6E04C();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_226D6DFAC();
      _os_signpost_emit_with_name_impl(&dword_226AB4000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_226B637A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7088, &qword_226D740D0);
  sub_226AC4194(qword_2810629D0, &qword_27D7A7088, &qword_226D740D0);
  return sub_226D6E0BC();
}

uint64_t sub_226B6384C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_226D69A8C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_226D69A7C();
  v8 = sub_226D6973C();
  v9 = sub_226D6971C();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v7;
  v11 = MEMORY[0x277CC7940];
  v10[6] = v4;
  v10[7] = v11;
  v10[8] = v9;
  v12 = MEMORY[0x277CC78A8];
  v10[11] = v8;
  v10[12] = v12;
  swift_weakInit();
  *(a2 + 8) = sub_226AB6D84;
  *(a2 + 16) = v10;
}

uint64_t sub_226B63930()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7078, &qword_226D740C8);
  sub_226AC4194(&qword_27D7A7080, &qword_27D7A7078, &qword_226D740C8);
  return sub_226D6E0BC();
}

uint64_t sub_226B639E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a1;
  v5 = sub_226D6B5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v26 = &type metadata for BankConnectEnvironmentImplementation;
  v10 = sub_226B6A16C();
  v27 = v10;
  v25[0] = swift_allocObject();
  sub_226B42014(a2, v25[0] + 16);
  v23 = v5;
  v24 = MEMORY[0x277CC7F68];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(v6 + 16))(boxed_opaque_existential_1, v9, v5);
  type metadata accessor for BankConnectServiceImplementation();
  v12 = swift_allocObject();
  v13 = v26;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v15 = *(v13[-1].Description + 8);
  MEMORY[0x28223BE20](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v12[5] = &type metadata for BankConnectEnvironmentImplementation;
  v12[6] = v10;
  v19 = swift_allocObject();
  v12[2] = v19;
  memcpy((v19 + 16), v17, 0x3B0uLL);
  sub_226AC484C(&v22, (v12 + 7));
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  (*(v6 + 8))(v9, v5);
  result = swift_weakInit();
  *(a3 + 8) = sub_226B6AF94;
  *(a3 + 16) = v12;
  return result;
}

uint64_t Daemon.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_226D6E0CC();

  v3 = *(v1 + 1064);

  sub_226D6E0CC();

  v4 = *(v1 + 16);

  v5 = *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));
  v6 = *(v1 + 72);

  v7 = *(v1 + 80);

  v8 = *(v1 + 88);

  v9 = *(v1 + 96);

  v10 = *(v1 + 104);

  v11 = *(v1 + 112);

  sub_226B6A2D0(v1 + 120);
  v12 = *(v1 + 1064);

  v13 = *(v1 + 1072);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 1088));
  return v1;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_226B63D3C@<X0>(_BYTE *a1@<X8>)
{
  sub_226D691CC();
  v4[3] = sub_226D6B5EC();
  v4[4] = MEMORY[0x277CC7F70];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_226D6B58C();
  sub_226D6704C();
  v2 = sub_226D6914C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v4);
  *a1 = v2 & 1;
  return result;
}

Swift::Void __swiftcall Daemon.run()()
{
  v1 = v0;
  v2 = sub_226D6B5EC();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6707C();
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v68 - v10;
  v11 = sub_226D6E1CC();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_226D6DFCC();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v75);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v22 = sub_226D6E07C();
  __swift_project_value_buffer(v22, qword_28105F5E0);
  v23 = sub_226D6E05C();
  v24 = sub_226D6E9EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_226AB4000, v23, v24, "Running daemon", v25, 2u);
    MEMORY[0x22AA8BEE0](v25, -1, -1);
  }

  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v26 = sub_226D6DFFC();
  __swift_project_value_buffer(v26, qword_281064510);
  sub_226D6DFBC();
  v27 = sub_226D6DFDC();
  v28 = sub_226D6EABC();
  if (sub_226D6EC8C())
  {
    v29 = swift_slowAlloc();
    v68 = v15;
    v30 = v19;
    v31 = v1;
    v32 = v11;
    v33 = v5;
    v34 = v29;
    *v29 = 0;
    v35 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v27, v28, v35, "DaemonRun", "", v34, 2u);
    v36 = v34;
    v5 = v33;
    v11 = v32;
    v1 = v31;
    v19 = v30;
    v15 = v68;
    MEMORY[0x22AA8BEE0](v36, -1, -1);
  }

  v37 = v75;
  (*(v15 + 16))(v19, v21, v75);
  v38 = sub_226D6E03C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_226D6E02C();
  (*(v15 + 8))(v21, v37);
  sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  *v14 = sub_226D6EA5C();
  v42 = v76;
  (*(v76 + 104))(v14, *MEMORY[0x277D85200], v11);
  v43 = sub_226D6E1DC();
  (*(v42 + 8))(v14, v11);
  if (v43)
  {
    v44 = sub_226D6E79C();
    v45 = *(*(v44 - 8) + 56);
    v46 = v72;
    v45(v72, 1, 1, v44);
    v47 = v1[10];
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v47;
    *(v48 + 40) = v1;
    *(v48 + 48) = "DaemonRun";
    *(v48 + 56) = 9;
    *(v48 + 64) = 2;
    *(v48 + 72) = v41;

    sub_226B60364(0, 0, v46, &unk_226D73F58, v48);

    v45(v46, 1, 1, v44);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v49[4] = v1;

    sub_226B67BC8(0, 0, v46, &unk_226D73F68, v49);

    sub_226AC47B0(v46, &unk_27D7A8BA0, &qword_226D734E0);
    sub_226BE10EC(v1[11]);
    sub_226C81494(v47);
    sub_226B68DA0((v1 + 15));
    v50 = v1[134];
    sub_226B17028(v50, v47);
    sub_226B9F100(v50, v47);
    v81 = &type metadata for BankConnectEnvironmentImplementation;
    v51 = sub_226B6A16C();
    v82 = v51;
    v80[0] = swift_allocObject();
    sub_226B42014((v1 + 15), v80[0] + 16);
    v52 = __swift_project_boxed_opaque_existential_1(v80, &type metadata for BankConnectEnvironmentImplementation);
    sub_226B68B14(v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    if (sub_226D6931C())
    {
      sub_226B68F50((v1 + 15));
    }

    v53 = v73;
    sub_226D6703C();
    v54 = sub_226D6706C();
    (*(v74 + 8))(v53, v5);
    if (v54)
    {
      v76 = v41;
      v55 = v69;
      sub_226D6B58C();
      v81 = &type metadata for BankConnectEnvironmentImplementation;
      v82 = v51;
      v80[0] = swift_allocObject();
      sub_226B42014((v1 + 15), v80[0] + 16);
      v56 = v71;
      v78 = v71;
      v79 = MEMORY[0x277CC7F68];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v77);
      v58 = v70;
      (*(v70 + 16))(boxed_opaque_existential_1, v55, v56);
      type metadata accessor for BankConnectServiceImplementation();
      v59 = swift_allocObject();
      v60 = v81;
      v61 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      v62 = *(v60[-1].Description + 8);
      MEMORY[0x28223BE20](v61);
      v64 = &v68 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v64);
      v59[5] = &type metadata for BankConnectEnvironmentImplementation;
      v59[6] = v51;
      v66 = swift_allocObject();
      v59[2] = v66;
      memcpy((v66 + 16), v64, 0x3B0uLL);
      sub_226AC484C(&v77, (v59 + 7));
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      (*(v58 + 8))(v55, v56);
      sub_226B69368(v59);
    }

    v67 = v1[13];
    sub_226BEB7D0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226B646D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 32) = a6;
  *(v8 + 40) = v19;
  *(v8 + 136) = a8;
  *(v8 + 24) = a5;
  v9 = sub_226D6E00C();
  *(v8 + 48) = v9;
  v10 = *(v9 - 8);
  *(v8 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v12 = sub_226D6DFCC();
  *(v8 + 72) = v12;
  v13 = *(v12 - 8);
  *(v8 + 80) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v8 + 104) = v16;
  *v16 = v8;
  v16[1] = sub_226B64868;

  return sub_226C0BF70();
}

uint64_t sub_226B64868()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B64964, 0, 0);
}

uint64_t sub_226B64964()
{
  v1 = *(*(v0 + 24) + 96);
  *(v0 + 112) = v1;
  return MEMORY[0x2822009F8](sub_226B64988, v1, 0);
}

uint64_t sub_226B64988()
{
  v1 = *(v0 + 112);
  sub_226B032F0(sub_226B03268, 0);

  return MEMORY[0x2822009F8](sub_226B64A08, 0, 0);
}

uint64_t sub_226B64A08()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = *(v2 + 24);
  v4 = sub_226D6E79C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_226B60364(0, 0, v1, &unk_226D740B8, v6);
  v8 = *(v3 + 24);
  *(v3 + 24) = v7;

  v9 = *(v2 + 1072);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_226B64B64;

  return sub_226CB5C18();
}

uint64_t sub_226B64B64()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B64C60, 0, 0);
}

uint64_t sub_226B64C60()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 1080);
  sub_226CE85E8();
  v3 = *(v1 + 112);
  *(v0 + 128) = v3;

  return MEMORY[0x2822009F8](sub_226B64CD0, v3, 0);
}

uint64_t sub_226B64CD0()
{
  v1 = *(v0 + 128);
  sub_226BAE5BC();

  return MEMORY[0x2822009F8](sub_226B64D38, 0, 0);
}

uint64_t sub_226B64D38()
{
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = sub_226D6DFFC();
  __swift_project_value_buffer(v3, qword_281064510);
  v4 = sub_226D6DFDC();
  sub_226D6E01C();
  v5 = sub_226D6EAAC();
  result = sub_226D6EC8C();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 32);
  if (*(v0 + 136))
  {
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7)
  {
LABEL_12:
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);

    sub_226D6E04C();

    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      v15 = "";
    }

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v4, v5, v20, v7, v15, v19, 2u);
    MEMORY[0x22AA8BEE0](v19, -1, -1);

    (*(v17 + 8))(v16, v18);
    goto LABEL_16;
  }

  __break(1u);
LABEL_7:
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);

  (*(v9 + 8))(v8, v10);
LABEL_16:
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v23 = *(v0 + 64);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_226B64F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_226B64FB8, 0, 0);
}

uint64_t sub_226B64FB8()
{
  v1 = *(MEMORY[0x277D859E8] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_226B6507C;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007C0](v3, v5, 0, 0, &unk_226D74030, v4, v6);
}

uint64_t sub_226B6507C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226B65170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B6520C, 0, 0);
}

uint64_t sub_226B6520C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_226D6E79C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_226B65D08(v1, &unk_226D74040, v6);
  sub_226AC47B0(v1, &unk_27D7A8BA0, &qword_226D734E0);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_226B65D08(v1, &unk_226D74050, v7);
  sub_226AC47B0(v1, &unk_27D7A8BA0, &qword_226D734E0);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_226B65D08(v1, &unk_226D74060, v8);
  sub_226AC47B0(v1, &unk_27D7A8BA0, &qword_226D734E0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226B65418()
{
  v1 = sub_226D67F1C();
  v0[39] = v1;
  v2 = *(v1 - 8);
  v0[40] = v2;
  v3 = *(v2 + 64) + 15;
  v0[41] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v0[42] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v0[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B65510, 0, 0);
}

uint64_t sub_226B65510()
{
  if (qword_281061980 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = v0[43];
  v3 = __swift_project_value_buffer(v1, qword_281064538);
  sub_226AE532C(v3, v2);
  sub_226B6AD74(v3 + *(v1 + 48), v2 + *(v1 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v4 = *(v1 + 48);
  sub_226AC484C(v2, (v0 + 18));
  sub_226B6ADDC(v2 + v4, type metadata accessor for OrderNotificationCenter.Continuation);
  v5 = v0[21];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 18, v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  v0[26] = swift_getAssociatedTypeWitness();
  v0[27] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 23);
  sub_226D6E84C();

  v10 = v0[27];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 23), v0[26]);
  v11 = *(MEMORY[0x277D856D8] + 4);
  v12 = swift_task_alloc();
  v0[44] = v12;
  *v12 = v0;
  v12[1] = sub_226B6575C;

  return MEMORY[0x282200310](v0 + 33, 0, 0);
}

uint64_t sub_226B6575C()
{
  v2 = *(*v1 + 352);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_226B6586C, 0, 0);
  }

  return result;
}

uint64_t sub_226B6586C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  *(v0 + 360) = v1;
  *(v0 + 368) = v2;
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  *(v0 + 376) = v3;
  *(v0 + 384) = v4;
  if (v1)
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v6 + 8))(v5, v7);
    v8 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v9 = sub_226D6E36C();

    v10 = [v8 initWithBundleIdentifier_];
    *(v0 + 392) = v10;

    v11 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v12 = MEMORY[0x277CC85E8];
    *(v0 + 248) = v11;
    *(v0 + 256) = v12;
    *(v0 + 224) = v10;
    v13 = sub_226D692BC();
    v14 = v10;
    v15 = sub_226D692AC();
    v16 = sub_226AE59B4(0, &qword_28105F4A0, 0x277CC1E90);
    type metadata accessor for OrderNotificationCenter();
    inited = swift_initStackObject();
    *(v0 + 400) = inited;
    sub_226AC484C((v0 + 224), inited + 16);
    *(inited + 56) = &type metadata for WalletInfo;
    *(inited + 64) = &protocol witness table for WalletInfo;
    *(inited + 72) = v15;
    *(inited + 80) = *(v0 + 296);
    v18 = MEMORY[0x277CC7838];
    *(inited + 96) = v13;
    *(inited + 104) = v18;
    *(inited + 112) = v16;
    *(inited + 120) = &off_283A6C158;
    v19 = swift_task_alloc();
    *(v0 + 408) = v19;
    *v19 = v0;
    v19[1] = sub_226B65AEC;

    return sub_226BE6F4C(v1, v2, v3);
  }

  else
  {
    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_226B65AEC()
{
  v1 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B65BE8, 0, 0);
}

uint64_t sub_226B65BE8()
{
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);

  sub_226B6AE3C(v4);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  sub_226AC47B0(v1 + 72, &qword_27D7A5FD0, &qword_226D708A0);
  v6 = *(v0 + 216);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, *(v0 + 208));
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *v8 = v0;
  v8[1] = sub_226B6575C;

  return MEMORY[0x282200310](v0 + 264, 0, 0);
}

uint64_t sub_226B65D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_226AC40E8(a1, v22 - v10, &unk_27D7A8BA0, &qword_226D734E0);
  v12 = sub_226D6E79C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_226D6E6CC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_226D6E78C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_226B65F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v5 = sub_226D67F1C();
  v3[41] = v5;
  v6 = *(v5 - 8);
  v3[42] = v6;
  v7 = *(v6 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v8 = type metadata accessor for ApplicationWorkspaceEvent(0);
  v3[55] = v8;
  v9 = *(v8 - 8);
  v3[56] = v9;
  v10 = *(v9 + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7050, &qword_226D74068) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7058, &qword_226D74070);
  v3[61] = v12;
  v13 = *(v12 - 8);
  v3[62] = v13;
  v14 = *(v13 + 64) + 15;
  v3[63] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7060, &qword_226D74078);
  v3[64] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[65] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7068, &qword_226D74080);
  v3[66] = v17;
  v18 = *(v17 - 8);
  v3[67] = v18;
  v19 = *(v18 + 64) + 15;
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B66260, 0, 0);
}

uint64_t sub_226B66260()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[55];
  (*(v0[62] + 104))(v0[63], *MEMORY[0x277D85778], v0[61]);
  sub_226D6E7EC();
  sub_226AC4194(&qword_28105F4C8, &qword_27D7A7060, &qword_226D74078);
  sub_226D6E84C();
  sub_226AC4194(&qword_28105F4D8, &qword_27D7A7068, &qword_226D74080);
  v5 = *(MEMORY[0x277D856D8] + 4);
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_226B663F4;
  v7 = v0[68];
  v8 = v0[66];
  v9 = v0[60];

  return MEMORY[0x282200310](v9, 0, 0);
}

uint64_t sub_226B663F4()
{
  v2 = *(*v1 + 552);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_226B66504, 0, 0);
  }

  return result;
}

uint64_t sub_226B66504()
{
  v1 = v0[60];
  if ((*(v0[56] + 48))(v1, 1, v0[55]) == 1)
  {
    v2 = v0[65];
    v3 = v0[63];
    v5 = v0[58];
    v4 = v0[59];
    v6 = v0[57];
    v8 = v0[53];
    v7 = v0[54];
    v103 = v0[52];
    v104 = v0[51];
    v105 = v0[50];
    v106 = v0[49];
    v107 = v0[48];
    v108 = v0[47];
    v109 = v0[46];
    v110 = v0[45];
    v111 = v0[44];
    v112 = v0[43];
    v113 = v0[40];
    v114 = v0[39];
    (*(v0[67] + 8))(v0[68], v0[66]);

    v9 = v0[1];

    return v9();
  }

  v12 = v0[58];
  v11 = v0[59];
  v13 = v0[42];
  v14 = v0[38];
  sub_226B6AB68(v1, v11);
  v15 = *(v14 + 1080);
  sub_226B6AD74(v11, v12, type metadata accessor for ApplicationWorkspaceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v13 + 32);
  v18 = v0[58];
  v19 = v0[41];
  if (EnumCaseMultiPayload == 1)
  {
    v20 = v0[50];
    v17(v0[51], v18, v0[41]);
    sub_226D67E6C();
    sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098]);
    sub_226D6E53C();
    sub_226D6E53C();
    if (v0[6] == v0[8] && v0[7] == v0[9])
    {
      v21 = 1;
    }

    else
    {
      v24 = v0[7];
      v25 = v0[9];
      v21 = sub_226D6F21C();
    }

    v26 = *(v0[42] + 8);
    v26(v0[50], v0[41]);

    if ((v21 & 1) == 0)
    {
      v27 = v0[51];
      v28 = v0[49];
      v29 = v0[41];
      sub_226D67E9C();
      sub_226D6E53C();
      sub_226D6E53C();
      v30 = v0[49];
      v31 = v0[41];
      if (v0[10] == v0[12] && v0[11] == v0[13])
      {
        v26(v0[49], v0[41]);
      }

      else
      {
        v41 = v0[11];
        v42 = v0[13];
        v43 = sub_226D6F21C();
        v26(v30, v31);

        if ((v43 & 1) == 0)
        {
          v46 = v0[51];
          v47 = v0[41];
          goto LABEL_26;
        }
      }
    }

    v44 = v0[51];
    v45 = v0[41];
    sub_226CE85E8();
    v46 = v44;
    v47 = v45;
LABEL_26:
    v26(v46, v47);
    goto LABEL_27;
  }

  v22 = v0[53];
  v17(v0[54], v18, v0[41]);
  sub_226D67E6C();
  sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v0[30] == v0[32] && v0[31] == v0[33])
  {
    v23 = 1;
  }

  else
  {
    v32 = v0[31];
    v33 = v0[33];
    v23 = sub_226D6F21C();
  }

  v26 = *(v0[42] + 8);
  v26(v0[53], v0[41]);

  if (v23)
  {
    v26(v0[54], v0[41]);
  }

  else
  {
    v34 = v0[52];
    v35 = v0[41];
    sub_226D67E9C();
    sub_226D6E53C();
    sub_226D6E53C();
    v36 = v0[54];
    v37 = v0[52];
    v38 = v0[41];
    if (v0[34] != v0[36] || v0[35] != v0[37])
    {
      v39 = v0[35];
      v40 = v0[37];
      sub_226D6F21C();
    }

    v26(v37, v38);
    v26(v36, v38);
  }

LABEL_27:
  v48 = v0[55];
  v49 = v0[42] + 32;
  v50 = *(v0[38] + 1072);
  sub_226B6AD74(v0[59], v0[57], type metadata accessor for ApplicationWorkspaceEvent);
  v51 = swift_getEnumCaseMultiPayload();
  v52 = v0[57];
  v53 = v0[41];
  if (v51 == 1)
  {
    v54 = v0[44];
    v17(v0[45], v52, v0[41]);
    sub_226D67E6C();
    sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098]);
    sub_226D6E53C();
    sub_226D6E53C();
    if (v0[14] == v0[16] && v0[15] == v0[17])
    {
      v55 = 1;
    }

    else
    {
      v58 = v0[15];
      v59 = v0[17];
      v55 = sub_226D6F21C();
    }

    v60 = v0[42] + 8;
    v26(v0[44], v0[41]);

    if ((v55 & 1) == 0)
    {
      v72 = v0[45];
      v73 = v0[43];
      v74 = v0[41];
      sub_226D67E9C();
      sub_226D6E53C();
      sub_226D6E53C();
      v75 = v0[59];
      v76 = v0[45];
      v77 = v0[43];
      v78 = v0[41];
      if (v0[18] != v0[20] || v0[19] != v0[21])
      {
        v79 = v0[19];
        v80 = v0[21];
        sub_226D6F21C();
      }

      v26(v77, v78);
      v26(v76, v78);
      sub_226B6ADDC(v75, type metadata accessor for ApplicationWorkspaceEvent);

      goto LABEL_58;
    }

    v61 = v0[59];
    v62 = v0[45];
    goto LABEL_37;
  }

  v56 = v0[47];
  v17(v0[48], v52, v0[41]);
  sub_226D67E6C();
  sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v0[22] == v0[24] && v0[23] == v0[25])
  {
    v57 = 1;
  }

  else
  {
    v64 = v0[23];
    v65 = v0[25];
    v57 = sub_226D6F21C();
  }

  v66 = v0[42] + 8;
  v26(v0[47], v0[41]);

  if (v57)
  {
LABEL_48:
    v85 = v0[39];
    v84 = v0[40];
    v86 = sub_226D6E79C();
    v87 = *(v86 - 8);
    (*(v87 + 56))(v84, 1, 1, v86);
    v88 = swift_allocObject();
    v88[2] = 0;
    v88[3] = 0;
    v88[4] = v50;
    sub_226AC40E8(v84, v85, &unk_27D7A8BA0, &qword_226D734E0);
    LODWORD(v85) = (*(v87 + 48))(v85, 1, v86);

    v89 = v0[39];
    if (v85 == 1)
    {
      sub_226AC47B0(v0[39], &unk_27D7A8BA0, &qword_226D734E0);
    }

    else
    {
      sub_226D6E78C();
      (*(v87 + 8))(v89, v86);
    }

    v91 = v88[2];
    v90 = v88[3];
    swift_unknownObjectRetain();

    if (v91)
    {
      swift_getObjectType();
      v92 = sub_226D6E6CC();
      v94 = v93;
      swift_unknownObjectRelease();
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    sub_226AC47B0(v0[40], &unk_27D7A8BA0, &qword_226D734E0);
    v95 = swift_allocObject();
    *(v95 + 16) = &unk_226D74088;
    *(v95 + 24) = v88;
    if (v94 | v92)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v92;
      v0[5] = v94;
    }

    v61 = v0[59];
    v96 = v0[48];
    v97 = v0[41];
    swift_task_create();

    v62 = v96;
    v63 = v97;
    goto LABEL_57;
  }

  v67 = v0[48];
  v68 = v0[46];
  v69 = v0[41];
  sub_226D67E9C();
  sub_226D6E53C();
  sub_226D6E53C();
  v70 = v0[46];
  v71 = v0[41];
  if (v0[26] == v0[28] && v0[27] == v0[29])
  {
    v26(v0[46], v0[41]);

    goto LABEL_48;
  }

  v81 = v0[27];
  v82 = v0[29];
  v83 = sub_226D6F21C();
  v26(v70, v71);

  if (v83)
  {
    goto LABEL_48;
  }

  v61 = v0[59];
  v62 = v0[48];
LABEL_37:
  v63 = v0[41];
LABEL_57:
  v26(v62, v63);
  sub_226B6ADDC(v61, type metadata accessor for ApplicationWorkspaceEvent);
LABEL_58:
  sub_226AC4194(&qword_28105F4D8, &qword_27D7A7068, &qword_226D74080);
  v98 = *(MEMORY[0x277D856D8] + 4);
  v99 = swift_task_alloc();
  v0[69] = v99;
  *v99 = v0;
  v99[1] = sub_226B663F4;
  v100 = v0[68];
  v101 = v0[66];
  v102 = v0[60];

  return MEMORY[0x282200310](v102, 0, 0);
}

uint64_t sub_226B67134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a3;
  v4 = sub_226D6D4AC();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B671F4, 0, 0);
}

uint64_t sub_226B671F4()
{
  v1 = *(v0 + 168);
  v2 = type metadata accessor for BackgroundDeliveryHistoryObserver(0);
  v3 = *(*(v1 + 72) + 16);

  v4 = sub_226D676AC();

  v5 = sub_226CF9EBC((v0 + 16), v4);
  *(v0 + 200) = v5;

  v6 = *(v1 + 24);
  swift_beginAccess();
  v7 = *(v6 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_226BBB8E8(0, v7[2] + 1, 1, v7);
    *(v6 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_226BBB8E8((v9 > 1), v10 + 1, 1, v7);
  }

  *(v0 + 80) = v2;
  *(v0 + 88) = &off_283A71E48;
  *(v0 + 56) = v5;
  v7[2] = v10 + 1;
  sub_226AC484C((v0 + 56), &v7[5 * v10 + 4]);
  *(v6 + 16) = v7;
  swift_endAccess();

  v11 = *(v0 + 40);
  v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_226D6E84C();

  v16 = *(v0 + 128);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v17 = *(MEMORY[0x277D856D8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *v18 = v0;
  v18[1] = sub_226B674C0;

  return MEMORY[0x282200310](v0 + 160, 0, 0);
}

uint64_t sub_226B674C0()
{
  v2 = *(*v1 + 208);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_226B675D0, 0, 0);
  }

  return result;
}

uint64_t sub_226B675D0()
{
  v1 = v0[20];
  v0[27] = v1;
  if (v1)
  {
    v2 = v0[24];
    v3 = *(v0[21] + 104);
    sub_226D6D46C();
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_226B676D4;
    v5 = v0[24];

    return sub_226BE9D80(v5, v1);
  }

  else
  {
    v8 = v0[24];
    v7 = v0[25];

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_226B676D4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_226B67918;
  }

  else
  {
    v8 = *(v2 + 216);

    v7 = sub_226B67854;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226B67854()
{
  v1 = v0[16];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_226B674C0;

  return MEMORY[0x282200310](v0 + 20, 0, 0);
}

uint64_t sub_226B67918()
{
  v25 = v0;
  if (qword_27D7A5F58 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[27];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_27D7A7CF8);

  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[27];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    v13 = sub_226D66F6C();
    v14 = MEMORY[0x22AA8A6A0](v9, v13);
    v16 = v15;

    v17 = sub_226AC4530(v14, v16, &v24);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&dword_226AB4000, v5, v6, "Error notifying scheduler for types %s: %@", v10, 0x16u);
    sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[16];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v21 = *(MEMORY[0x277D856D8] + 4);
  v22 = swift_task_alloc();
  v0[26] = v22;
  *v22 = v0;
  v22[1] = sub_226B674C0;

  return MEMORY[0x282200310](v0 + 20, 0, 0);
}

uint64_t sub_226B67BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_226AC40E8(a3, v27 - v11, &unk_27D7A8BA0, &qword_226D734E0);
  v13 = sub_226D6E79C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_226AC47B0(v12, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_226D6E6CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_226D6E40C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_226B67E88(uint64_t a1)
{
  sub_226AE532C(a1, v1 + 16);
  v3 = *(a1 + 48);
  *(v1 + 56) = *(a1 + 40);
  *(v1 + 64) = v3;
  v4 = *(a1 + 56);
  *(v1 + 72) = v4;
  sub_226AC40E8(a1 + 64, v1 + 80, &qword_27D7A6910, &unk_226D721C0);
  sub_226AE532C(a1 + 104, v1 + 120);
  sub_226AE532C(a1 + 144, v1 + 160);
  sub_226AE532C(a1 + 184, v1 + 200);
  sub_226AE532C(a1 + 224, v1 + 240);
  sub_226AE532C(a1 + 264, v1 + 280);
  *(v1 + 320) = *(a1 + 304);
  sub_226AE532C(a1 + 312, v1 + 328);
  result = sub_226AC40E8(a1 + 352, &v13, &qword_27D7A7038, &qword_226D73F40);
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_226AC484C(&v13, v1 + 368);
  v6 = *(a1 + 392);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + 408) = v6;
  result = sub_226AC40E8(a1 + 400, v1 + 416, &unk_27D7A7660, &unk_226D7B420);
  v7 = *(a1 + 440);
  if (v7)
  {
    *(v1 + 456) = v7;
    sub_226AE532C(a1 + 448, v1 + 464);
    *(v1 + 504) = *(a1 + 488);
    v8 = *(a1 + 528);
    v9 = *(a1 + 512);
    *(v1 + 512) = *(a1 + 496);
    *(v1 + 528) = v9;
    *(v1 + 544) = v8;
    v10 = *(a1 + 536);
    v11 = v4;

    v12 = v3;
    sub_226B6A324(a1);
    *(v1 + 552) = v10;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_226B6802C(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226B68114;

  return v5();
}

uint64_t sub_226B68114()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226B6820C(const void *a1, uint64_t a2)
{
  v10 = &type metadata for BankConnectEnvironmentImplementation;
  v11 = sub_226B6A16C();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), a1, 0x3B0uLL);
  *(a2 + 56) = 0;
  sub_226AE532C(v9, a2 + 16);
  v4 = *__swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7070, &qword_226D740C0);
  sub_226D6EB8C();

  v5 = *(a2 + 56);
  *(a2 + 56) = v8;

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return a2;
}

id sub_226B68304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = sub_226D676CC();
  v26[3] = v10;
  v26[4] = &off_283A71950;
  v26[0] = a1;
  v25[3] = type metadata accessor for FinancialDataDeletedAccountsRemover();
  v25[4] = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v25[0] = a2;
  v11 = type metadata accessor for BankConnectDataDeleter();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v24[3] = v10;
  v24[4] = &off_283A71950;
  v24[0] = v18;
  sub_226AE532C(v24, &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_contextProvider]);
  v19 = &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_walletInfo];
  *v19 = a3;
  *(v19 + 1) = a4;
  sub_226AE532C(v25, &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_deletedAccountsApplicationRemover]);
  sub_226AE532C(a5, &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_walletMessageUpdater]);
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v20;
}

void *sub_226B684C4(uint64_t a1, void *a2)
{
  v4 = sub_226D68D9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v23[3] = type metadata accessor for BackgroundDeliveryRegistrationManager();
  v23[4] = &protocol witness table for BackgroundDeliveryRegistrationManager;
  v23[0] = a1;
  swift_defaultActor_initialize();
  sub_226AE532C(v23, (a2 + 14));
  v6 = type metadata accessor for BackgroundDeliveryTasks();
  v7 = swift_allocObject();
  a2[22] = v6;
  a2[23] = &off_283A6E388;
  a2[19] = v7;
  v8 = sub_226D679FC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_226D679EC();
  v21 = sub_226D6929C();
  v22 = MEMORY[0x277CC7820];
  __swift_allocate_boxed_opaque_existential_1(&v20);
  sub_226D6928C();
  sub_226D68D8C();
  v12 = sub_226D69A8C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_226D69A7C();
  *&v20 = v11;
  v15 = sub_226D6A61C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_226D6A60C();
  v21 = v15;
  v22 = MEMORY[0x277CC7C48];
  *&v20 = v18;
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_226AC484C(&v20, (a2 + 24));
  return a2;
}

uint64_t sub_226B686A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v20[-1] - v11);
  v13 = sub_226D66E1C();
  v20[3] = v13;
  v20[4] = MEMORY[0x277CC6538];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, a1, v13);
  sub_226AE532C(v20, a2 + 16);
  v15 = sub_226D6A1FC();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  *v12 = 0;
  v16 = *(v9 + 36);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70A0, &qword_226D75ED0);
  bzero(v12 + v16, *(*(v17 - 8) + 64));
  sub_226B6AFA4(v7, v12 + v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  memcpy((a2 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList), v12, v10);
  return a2;
}

uint64_t sub_226B68888(uint64_t a1)
{
  v15[3] = &type metadata for BankConnectEnvironmentImplementation;
  v15[4] = sub_226B6A16C();
  v15[0] = swift_allocObject();
  sub_226B42014(a1, v15[0] + 16);
  v2 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v15, v14);
  v3 = swift_allocObject();
  sub_226AC484C(v14, v3 + 16);
  v4 = sub_226D6E36C();
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000002DLL;
  v5[3] = 0x8000000226D804E0;
  v5[4] = &unk_226D74018;
  v5[5] = v3;
  v13[4] = sub_226B6B020;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_226C01160;
  v13[3] = &block_descriptor_68;
  v6 = _Block_copy(v13);

  v7 = [v2 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  if ((v7 & 1) == 0)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Transaction classification system task couldn't be registered.", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_226B68B14(uint64_t a1)
{
  v15[3] = &type metadata for BankConnectEnvironmentImplementation;
  v15[4] = sub_226B6A16C();
  v15[0] = swift_allocObject();
  sub_226B42014(a1, v15[0] + 16);
  v2 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v15, v14);
  v3 = swift_allocObject();
  sub_226AC484C(v14, v3 + 16);
  v4 = sub_226D6E36C();
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000038;
  v5[3] = 0x8000000226D804A0;
  v5[4] = &unk_226D74010;
  v5[5] = v3;
  v13[4] = sub_226B6B020;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_226C01160;
  v13[3] = &block_descriptor_55;
  v6 = _Block_copy(v13);

  v7 = [v2 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  if ((v7 & 1) == 0)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Background refresh reminder system task couldn't be registered.", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_226B68DA0(uint64_t a1)
{
  v11[3] = &type metadata for BankConnectEnvironmentImplementation;
  v11[4] = sub_226B6A16C();
  v11[0] = swift_allocObject();
  sub_226B42014(a1, v11[0] + 16);
  v2 = __swift_project_boxed_opaque_existential_1(v11, &type metadata for BankConnectEnvironmentImplementation);
  sub_226B68888(v2);
  v3 = [objc_opt_self() sharedScheduler];
  v4 = sub_226D6E36C();
  v5 = [v3 taskRequestForIdentifier_];

  if (v5)
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F710);
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "Transaction classification system task is already registered. Skipping submission.", v9, 2u);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
    }
  }

  else
  {
    sub_226D24B38();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_226B68F50(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabSystemTask();
  v24[3] = &type metadata for BankConnectEnvironmentImplementation;
  v24[4] = sub_226B6A16C();
  v24[0] = swift_allocObject();
  sub_226B42014(a1, v24[0] + 16);
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F668);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, v22);
    _os_log_impl(&dword_226AB4000, v4, v5, "Registering for background system task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  v8 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v24, v23);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_226AC484C(v23, v9 + 24);
  v10 = sub_226D6E36C();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000022;
  v11[3] = 0x8000000226D80440;
  v11[4] = &unk_226D74000;
  v11[5] = v9;
  v22[4] = sub_226B173EC;
  v22[5] = v11;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_226C01160;
  v22[3] = &block_descriptor_4;
  v12 = _Block_copy(v22);

  v13 = [v8 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  v14 = sub_226D6E05C();
  if (v13)
  {
    v15 = sub_226D6E9AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, v22);
      _os_log_impl(&dword_226AB4000, v14, v15, "Registration for %s successful", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      v18 = v16;
LABEL_11:
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }
  }

  else
  {
    v19 = sub_226D6E9DC();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v14, v19, "Unable to register offline lab task", v20, 2u);
      v18 = v20;
      goto LABEL_11;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_226B69368(uint64_t *a1)
{
  v2 = *a1;
  refreshed = type metadata accessor for InstitutionsRefreshSystemTask();
  v24[3] = v2;
  v24[4] = sub_226B6ABCC(qword_2810608F0, type metadata accessor for BankConnectServiceImplementation);
  v24[0] = a1;
  v4 = qword_28105F708;

  if (v4 != -1)
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
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, v22);
    _os_log_impl(&dword_226AB4000, v6, v7, "Registering for background system task: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v10 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v24, v23);
  v11 = swift_allocObject();
  *(v11 + 16) = refreshed;
  sub_226AC484C(v23, v11 + 24);
  v12 = sub_226D6E36C();
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000027;
  v13[3] = 0x8000000226D80470;
  v13[4] = &unk_226D74008;
  v13[5] = v11;
  v22[4] = sub_226B6B020;
  v22[5] = v13;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_226C01160;
  v22[3] = &block_descriptor_43_0;
  v14 = _Block_copy(v22);

  v15 = [v10 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v14];
  _Block_release(v14);

  v16 = sub_226D6E05C();
  if (v15)
  {
    v17 = sub_226D6E9EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, v22);
      v20 = "Successfully registered for %s";
LABEL_11:
      _os_log_impl(&dword_226AB4000, v16, v17, v20, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }
  }

  else
  {
    v17 = sub_226D6E9DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, v22);
      v20 = "Unable to register for %s";
      goto LABEL_11;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_226B697D4()
{
  v71 = *MEMORY[0x277D85DE8];
  v0 = sub_226D6CF3C();
  v65 = *(v0 - 8);
  v66 = v0;
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v61 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v61 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  if (!_set_user_dir_suffix())
  {
    goto LABEL_15;
  }

  v62 = v9;
  v63 = v15;
  v64 = v12;
  v68 = v28;

  v29 = CPSharedResourcesDirectory();
  if (!v29)
  {
    __break(1u);
    goto LABEL_12;
  }

  v30 = v29;
  v31 = sub_226D6E39C();
  v33 = v32;

  v69 = v31;
  v70 = v33;
  MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
  sub_226D6D0BC();

  v34 = v5[4];
  v34(v23, v20, v4);
  sub_226D6D0FC();
  v61 = v5[1];
  v61(v23, v4);
  v34(v68, v26, v4);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  sub_226D6D17C();
  v37 = sub_226D6E36C();

  LOBYTE(v31) = [v36 fileExistsAtPath_];

  if (v31)
  {
LABEL_6:
    sub_226D6CF2C();
    sub_226D6CF1C();
    sub_226D6D0CC();
    (*(v65 + 8))(v3, v66);
    v42 = v61;
    v43 = CPSharedResourcesDirectory();
    v44 = v67;
    if (v43)
    {
      v45 = v43;
      v46 = sub_226D6E39C();
      v48 = v47;

      v69 = v46;
      v70 = v48;
      MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
      v49 = v62;
      sub_226D6D0BC();

      v50 = v64;
      v34(v64, v49, v4);
      v51 = v63;
      sub_226D6D0FC();
      v42(v50, v4);
      v34(v44, v51, v4);
      v52 = [v35 defaultManager];
      sub_226D6D17C();
      v53 = sub_226D6E36C();

      LOBYTE(v50) = [v52 fileExistsAtPath_];

      if (v50)
      {
LABEL_10:
        v42(v44, v4);
        result = (v42)(v68, v4);
        v59 = *MEMORY[0x277D85DE8];
        return result;
      }

      v54 = [v35 defaultManager];
      v55 = sub_226D6D0DC();
      v69 = 0;
      v56 = [v54 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:&v69];

      if (v56)
      {
        v57 = v69;
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
  }

  v38 = [v35 defaultManager];
  v39 = sub_226D6D0DC();
  v69 = 0;
  v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:&v69];

  if (v40)
  {
    v41 = v69;
    goto LABEL_6;
  }

LABEL_14:
  v60 = v69;
  sub_226D6D04C();

  swift_willThrow();
LABEL_15:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_226B6A0BC()
{
  result = qword_2810629C8;
  if (!qword_2810629C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810629C8);
  }

  return result;
}

unint64_t sub_226B6A110()
{
  result = qword_2810623E0[0];
  if (!qword_2810623E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810623E0);
  }

  return result;
}

unint64_t sub_226B6A16C()
{
  result = qword_28105FEE0;
  if (!qword_28105FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105FEE0);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
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

uint64_t sub_226B6A378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 72);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226AE5A84;

  return sub_226B646D4(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_226B6A468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226B64F98(a1, v4, v5, v6);
}

uint64_t sub_226B6A56C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B80654(v2, v0 + 24);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B6A61C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226BF6344(v2, v0 + 24);
}

uint64_t sub_226B6A6B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AE5A84;

  return sub_226B6DED8(v0 + 16);
}

uint64_t sub_226B6A748()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AE5A84;

  return sub_226D22DC4(v0 + 16);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226B6A81C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226C9ACEC(a1, v5);
}

uint64_t sub_226B6A8D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return sub_226B65170(a1, a2, v2);
}

uint64_t sub_226B6A980()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AE5A84;

  return sub_226B65418();
}

uint64_t sub_226B6AA18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B65F20(v2, v3, v4);
}

uint64_t sub_226B6AAC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B67134(v2, v3, v4);
}

uint64_t sub_226B6AB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationWorkspaceEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B6ABCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B6AC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CBAB34(a1, v4, v5, v6);
}

uint64_t sub_226B6ACC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AE5A84;

  return sub_226B6802C(v2);
}

uint64_t sub_226B6AD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B6ADDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B6AE3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226B6AEBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226D37410(a1, v4, v5, v6);
}

uint64_t sub_226B6AFA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BankConnectAccountValidationTask()
{
  result = qword_27D7A70A8;
  if (!qword_27D7A70A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226B6B0A8()
{
  sub_226D6B9BC();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B6B12C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B9BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B6B1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v1 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71840;
  v5 = sub_226D6B9BC();
  (*(*(v5 - 8) + 16))(v4 + v3, v0, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = sub_226B1ED68(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_226B6B314(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B6B3A8(a1);
}

uint64_t sub_226B6B3A8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(type metadata accessor for BankConnectAccountConnectionValidationResult() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B6B438, 0, 0);
}

uint64_t sub_226B6B438()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
  v2 = sub_226B6A16C();
  *(v0 + 88) = v2;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  sub_226B42014(v1, v3 + 16);
  v4 = type metadata accessor for BankConnectAccountConnectionValidator();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for BankConnectEnvironmentImplementation);
  v7 = off_283A722F0;
  v8 = *(off_283A722F0 + 8) + 15;
  v9 = swift_task_alloc();
  v7[2](v9, v6, &type metadata for BankConnectEnvironmentImplementation);
  *(v0 + 120) = &type metadata for BankConnectEnvironmentImplementation;
  *(v0 + 128) = v2;
  v10 = swift_allocObject();
  *(v0 + 96) = v10;
  memcpy((v10 + 16), v9, 0x3B0uLL);
  sub_226AC484C((v0 + 96), v5 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  *(v0 + 40) = v4;
  *(v0 + 48) = &off_283A71A08;
  *(v0 + 16) = v5;
  v11 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_226B6B640;
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);

  return sub_226CE9490(v13, v14);
}

uint64_t sub_226B6B640()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B6B73C, 0, 0);
}

uint64_t sub_226B6B73C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_226B6C480(v4);
  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_226B6C680(v5);
  sub_226B6CA78(v2, type metadata accessor for BankConnectAccountConnectionValidationResult);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v6 = v0[1];

  return v6();
}

unint64_t sub_226B6B804()
{
  sub_226D6B9BC();
  sub_226B6CAD8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_226B6B8B8(uint64_t a1)
{
  result = sub_226B6CAD8(&qword_27D7A70B8, type metadata accessor for BankConnectAccountValidationTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B6B9A0(uint64_t a1)
{
  result = sub_226B6CAD8(&qword_27D7A70C0, type metadata accessor for BankConnectAccountValidationTask);
  *(a1 + 8) = result;
  return result;
}

void sub_226B6B9F8(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D68CBC();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BankConnectAccountConnectionValidationResult();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D4AC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_226D673EC();
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() currentQueryGenerationToken];
  v48[0] = 0;
  v21 = [a1 setQueryGenerationFromToken:v20 error:v48];

  v22 = v48[0];
  if (v21)
  {
    sub_226D69F0C();
    v23 = v22;
    v24 = sub_226D69D9C();
    if (!v3 && v24)
    {
      v25 = v24;
      v26 = [v24 accountMatchObject];
      if (!v26)
      {
LABEL_15:

        goto LABEL_11;
      }

      v27 = v26;
      v28 = v47;
      sub_226D673FC();
      sub_226D6D46C();
      sub_226D673CC();
      sub_226B6CB40(v44, v14, type metadata accessor for BankConnectAccountConnectionValidationResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v32 = v42;
          v33 = v14;
          v34 = v27;
          v35 = v43;
          (*(v42 + 32))(v10, v33, v43);
          sub_226D673AC();
          (*(v32 + 16))(v41, v10, v35);
          sub_226D673BC();
          v36 = v35;
          v27 = v34;
          (*(v32 + 8))(v10, v36);
          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 1)
        {
          (*(v45 + 8))(v28, v46);

          sub_226B6CA78(v14, type metadata accessor for BankConnectAccountConnectionValidationResult);
          goto LABEL_11;
        }

        sub_226B6CA78(v14, type metadata accessor for BankConnectAccountConnectionValidationResult);
      }

      sub_226D673AC();
LABEL_13:

      v48[0] = 0;
      if (([a1 save_] & 1) == 0)
      {
        v39 = v48[0];
        sub_226D6D04C();

        swift_willThrow();
        (*(v45 + 8))(v47, v46);
        goto LABEL_11;
      }

      v37 = *(v45 + 8);
      v38 = v48[0];
      v37(v47, v46);

      goto LABEL_15;
    }
  }

  else
  {
    v30 = v48[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_11:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_226B6BEEC(uint64_t a1, void *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D61C();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D6DC();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D4AC();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for BankConnectAccountValidationTask();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v22 = a1;
  v23 = a2;
  v24 = v59;
  v25 = sub_226D69D9C();
  if (!v24)
  {
    v50 = v17;
    v51 = v11;
    v27 = v56;
    v26 = v57;
    v28 = v58;
    v52 = v23;
    v59 = 0;
    if (v25)
    {
      v29 = v15;
      v30 = v25;
      sub_226D6D46C();
      (*(v26 + 104))(v27, *MEMORY[0x277CC9810], v28);
      sub_226D6D62C();
      (*(v26 + 8))(v27, v28);
      v31 = v50;
      sub_226D6D23C();
      (*(v54 + 8))(v10, v55);
      v32 = *(v53 + 8);
      v33 = v29;
      v34 = v51;
      v32(v33, v51);
      v35 = sub_226D6D3EC();
      v32(v31, v34);
      [v30 setEarliestAccountValidationStartDate_];

      v60[0] = 0;
      if ([v52 save_])
      {
        v36 = v60[0];
      }

      else
      {
        v48 = v60[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v37 = sub_226D6E07C();
      __swift_project_value_buffer(v37, qword_28105F710);
      v38 = v22;
      v39 = v21;
      sub_226B6CB40(v38, v21, type metadata accessor for BankConnectAccountValidationTask);
      v40 = sub_226D6E05C();
      v41 = sub_226D6E9EC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v60[0] = v43;
        *v42 = 136315138;
        sub_226D6B9BC();
        sub_226B6CAD8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v44 = sub_226D6F1CC();
        v46 = v45;
        sub_226B6CA78(v39, type metadata accessor for BankConnectAccountValidationTask);
        v47 = sub_226AC4530(v44, v46, v60);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_226AB4000, v40, v41, "Account %s doesn't exist", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x22AA8BEE0](v43, -1, -1);
        MEMORY[0x22AA8BEE0](v42, -1, -1);
      }

      else
      {

        sub_226B6CA78(v21, type metadata accessor for BankConnectAccountValidationTask);
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B6C480(uint64_t a1)
{
  v5[3] = &type metadata for BankConnectEnvironmentImplementation;
  v5[4] = sub_226B6CA08();
  v5[0] = swift_allocObject();
  sub_226B42014(a1, v5[0] + 16);
  v2 = *__swift_project_boxed_opaque_existential_1(v5, &type metadata for BankConnectEnvironmentImplementation);
  v4 = sub_226D676AC();
  sub_226D6EB7C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t sub_226B6C680(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountValidationTask();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v7[3] = &type metadata for BankConnectEnvironmentImplementation;
  v7[4] = sub_226B6CA08();
  v7[0] = swift_allocObject();
  sub_226B42014(a1, v7[0] + 16);
  v4 = *__swift_project_boxed_opaque_existential_1(v7, &type metadata for BankConnectEnvironmentImplementation);
  v6 = sub_226D676AC();
  sub_226D6EB7C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

unint64_t sub_226B6CA08()
{
  result = qword_28105FEE8;
  if (!qword_28105FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105FEE8);
  }

  return result;
}

uint64_t sub_226B6CA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B6CAD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B6CB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_226B6CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = v3 + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
  swift_beginAccess();
  if (*(v9 + 24))
  {
    sub_226AE532C(v9, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v14);
    v11[3] = &type metadata for DaemonCoreDataSpotlightIndexer.SpotlightIndexingEvent;
    v11[4] = sub_226B6DDC8();
    v11[0] = 0xD00000000000002DLL;
    v11[1] = 0x8000000226D80730;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  v15 = a2;
  v16 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  v14 = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  v12.receiver = v4;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_, a1, v10);
  _Block_release(v10);
}

void sub_226B6CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = v4 + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
  swift_beginAccess();
  if (*(v10 + 24))
  {
    sub_226AE532C(v10, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v16);
    v13[3] = &type metadata for DaemonCoreDataSpotlightIndexer.SpotlightIndexingEvent;
    v13[4] = sub_226B6DDC8();
    v13[0] = 0xD000000000000032;
    v13[1] = 0x8000000226D806F0;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  v11 = sub_226D6E5CC();
  v17 = a3;
  v18 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  v16 = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  v14.receiver = v5;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler_, a1, v11, v12);
  _Block_release(v12);
}

uint64_t sub_226B6D03C(void *a1)
{
  v2 = v1;
  os_transaction_create();
  v4 = [a1 objectID];
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F5E0);
  v6 = v4;
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_226AB4000, v7, v8, "Creating attribute set for object with ID: %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context))
  {
    MEMORY[0x28223BE20](v12);
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70D8, &unk_226D741A0);
    sub_226D6EB8C();

    swift_unknownObjectRelease();
    return v19;
  }

  else
  {
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226AB4000, v15, v16, "No context set", v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    swift_unknownObjectRelease();
    return 0;
  }
}

void sub_226B6D3E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D69B8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v26[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v26];

  v13 = v26[0];
  if (v12)
  {
    v26[0] = 0;
    v14 = v13;
    v15 = [a1 existingObjectWithID:a2 error:v26];
    v16 = v26[0];
    if (v15)
    {
      v17 = v15;
      v25 = a3;
      swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      v19 = v16;
      if (v18)
      {
        sub_226B6D720();
        v20 = sub_226D6BC3C();

        (*(v7 + 8))(v10, v6);
      }

      else
      {

        v20 = 0;
      }

      *v25 = v20;
    }

    else
    {
      v22 = v26[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    sub_226B6D63C(a1);
  }

  else
  {
    v21 = v26[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_226B6D63C(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([a1 setQueryGenerationFromToken:0 error:v5])
  {
    v1 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F9840]();
  }

  else
  {
    v2 = v5[0];
    v3 = sub_226D6D04C();

    swift_willThrow();
    v4 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_226B6D720()
{
  v0 = sub_226D6D71C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_226D6D6DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_226D6D5DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  return sub_226D69B5C();
}

void sub_226B6D8E4()
{
  v1 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Reindexing Spotlight", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = sub_226B6DE1C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226B6DBD8;
  v9[3] = &block_descriptor_13;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 deleteSpotlightIndexWithCompletionHandler_];
  _Block_release(v7);
}

void sub_226B6DA74()
{
  v0 = [objc_opt_self() defaultSearchableIndex];
  sub_226B6CBA8(v0, sub_226B6DAF0, 0);
}

void sub_226B6DAF0()
{
  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F600);
  oslog = sub_226D6E05C();
  v1 = sub_226D6E9AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_226AB4000, oslog, v1, "Reindexing acknowledged", v2, 2u);
    MEMORY[0x22AA8BEE0](v2, -1, -1);
  }
}

void sub_226B6DBD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_226B6DCCC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_226B6DDC8()
{
  result = qword_281062800;
  if (!qword_281062800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062800);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_226B6DE30(uint64_t a1, int a2)
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

uint64_t sub_226B6DE78(uint64_t result, int a2, int a3)
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

uint64_t sub_226B6DEF8()
{
  sub_226AE532C(v0[19], (v0 + 9));
  v1 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v1);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[20] = v4;
  (*(v2 + 16))();
  v0[17] = &type metadata for BankConnectEnvironmentImplementation;
  v5 = sub_226B6A16C();
  v0[18] = v5;
  v6 = swift_allocObject();
  v0[14] = v6;
  memcpy((v6 + 16), v4, 0x3B0uLL);
  type metadata accessor for BackgroundRefreshReminderSystemTask();
  inited = swift_initStackObject();
  v0[21] = inited;
  v8 = v0[17];
  v9 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  inited[5] = &type metadata for BankConnectEnvironmentImplementation;
  inited[6] = v5;
  v13 = swift_allocObject();
  inited[2] = v13;
  memcpy((v13 + 16), v12, 0x3B0uLL);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v14 = sub_226B6EB28();
  if (v14 == 2)
  {

    v15 = v0[20];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v14;
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_226B6E1F0;

    return sub_226B6E3DC(v18 & 1);
  }
}

uint64_t sub_226B6E1F0()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_226B6E370;
  }

  else
  {
    v3 = sub_226B6E304;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B6E304()
{
  v1 = v0[21];

  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B6E370()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B6E3DC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B6E47C, 0, 0);
}

uint64_t sub_226B6E47C()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(*(v2 + 8) + 8);
  v4 = sub_226D6BAAC();
  if (sub_226B6EB28() == 2)
  {
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = sub_226D6E79C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;

    sub_226B6E8CC(0, 0, v5, &unk_226D74280, v8);

    sub_226AC47B0(v5, &unk_27D7A8BA0, &qword_226D734E0);
  }

  v9 = *(v0 + 24);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226B6E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_226B6E64C, 0, 0);
}

uint64_t sub_226B6E64C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_226B6E6F0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  return sub_226B1757C(v3, v4);
}

uint64_t sub_226B6E6F0()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_226B6E868;
  }

  else
  {
    v3 = sub_226B6E804;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B6E804()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226B6E868()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t sub_226B6E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_226B6F240(a3, v24 - v10);
  v12 = sub_226D6E79C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_226D6E6CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_226D6E40C() + 32;

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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_226B6EB28()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_226D6BFCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F710);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Starting background refresh reminder check.", v12, 2u);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  sub_226D6BFBC();
  v13 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v14 = sub_226D676AC();
  v15 = MEMORY[0x28223BE20](v14);
  *&v18[-16] = v8;
  *&v18[-8] = v15;
  sub_226D6EB8C();
  v16 = (v5 + 8);

  if (!v1)
  {
    v2 = v18[15];
  }

  (*v16)(v8, v4);
  return v2;
}

uint64_t sub_226B6ED68(uint64_t a1)
{
  v24[0] = a1;
  v1 = sub_226D6D4AC();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
  v5 = sub_226D6B7FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D72130;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277CC8008], v5);
  v11(v10 + v7, *MEMORY[0x277CC8000], v5);
  v11(v10 + 2 * v7, *MEMORY[0x277CC8010], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
  v12 = sub_226D6B81C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226D70840;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x277CC8028], v12);
  sub_226D6D46C();
  v17 = v24[1];
  v18 = sub_226D6BFAC();
  if (v17)
  {
    (*(v25 + 8))(v4, v26);
  }

  else
  {
    v20 = v18;
    (*(v25 + 8))(v4, v26);

    v21 = *(v20 + 16);

    if (v21)
    {
      v22 = *(sub_226D6BF9C() + 16);

      return v22 == 0;
    }

    else
    {
      sub_226D6BFCC();
      v23 = *(sub_226D6C14C() + 16) == 0;

      return (2 * v23);
    }
  }
}

uint64_t sub_226B6F0EC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226B6F148@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  result = sub_226B6ED68(v4);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226B6F17C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226B6E628(a1, v4, v5, v6, v7);
}

uint64_t sub_226B6F240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226B6F2B0()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v1 = sub_226D6E36C();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setMinDurationBetweenInstances_];
  [v3 setRequiresProtectionClass_];
  [v3 setRequiresUserInactivity_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresNetworkConnectivity_];
  v4 = sub_226D6E5CC();
  [v3 setInvolvedProcesses_];

  v5 = [objc_opt_self() sharedScheduler];
  v19[0] = 0;
  v6 = [v5 submitTaskRequest:v3 error:v19];

  if (v6)
  {
    v7 = v19[0];
  }

  else
  {
    v8 = v19[0];
    v9 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F710);
    v11 = v9;
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9CC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_226AB4000, v12, v13, "Couldn't submit request for background refresh reminder system task: %@", v14, 0xCu);
      sub_226AC47B0(v15, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }

    else
    {
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_226B6F5E4()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = sub_226D6E36C();
  v3 = [v1 taskRequestForIdentifier_];

  if (!v3)
  {
LABEL_11:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [v0 sharedScheduler];
  v5 = sub_226D6E36C();
  v21[0] = 0;
  v6 = [v4 cancelTaskRequestWithIdentifier:v5 error:v21];

  v7 = v21[0];
  if (!v6)
  {
    v10 = v21[0];
    v11 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_28105F710);
    v13 = v11;
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_226AB4000, v14, v15, "Background refresh reminder system task couldn't be cancelled. Error: %@", v16, 0xCu);
      sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v8 = *MEMORY[0x277D85DE8];

  v9 = v7;
}

uint64_t getEnumTagSinglePayload for BackgroundRefreshReminderNotificationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BackgroundRefreshReminderNotificationAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_226B6FA14(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_226B6FA30(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *sub_226B6FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_226D6BBAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = sub_226B703AC(a2, a1);
  v15 = sub_226D6B8FC();
  v40 = a4;
  if (v15)
  {
    v38 = a3;
    v39 = a2;
    v16 = v4[2];
    type metadata accessor for StoreMappingCoordinator();
    swift_allocObject();

    v17 = sub_226B5E064(v16, a4);
    v5[4] = v17;
    v18 = objc_opt_self();

    v19 = [v18 defaultCenter];
    [v19 addObserver:v17 selector:sel_startSync_ name:*MEMORY[0x277CBE260] object:0];

    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v20 = sub_226D6E07C();
    __swift_project_value_buffer(v20, qword_28105F600);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226AB4000, v21, v22, "Started mirroring coordinator", v23, 2u);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    a3 = v38;
    a2 = v39;
  }

  else
  {
    v4[4] = 0;
  }

  (*(v11 + 16))(v14, a3, v10);
  v24 = sub_226D68D2C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v5[3] = sub_226D68D0C();

  sub_226D68D1C();

  v27 = v5[2];
  sub_226D6973C();

  v28 = sub_226D6971C();
  v29 = sub_226B6FF0C(v27, v28);
  v5[5] = v29;
  if (v29)
  {
    [v29 startSpotlightIndexing];
  }

  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v30 = sub_226D6E07C();
  __swift_project_value_buffer(v30, qword_28105F600);
  v31 = sub_226D6E05C();
  v32 = sub_226D6E9AC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226AB4000, v31, v32, "Started Spotlight indexing", v33, 2u);
    MEMORY[0x22AA8BEE0](v33, -1, -1);
  }

  (*(v11 + 8))(a3, v10);
  v34 = sub_226D6B94C();
  (*(*(v34 - 8) + 8))(a2, v34);
  v35 = sub_226D6B92C();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v5;
}

uint64_t sub_226B6FE98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

char *sub_226B6FF0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_226D6B70C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v23[3] = v3;
  v23[4] = MEMORY[0x277CC78A8];
  v23[0] = a2;
  v9 = sub_226D6769C();
  v10 = [v9 persistentStoreDescriptions];

  sub_226B709B4();
  sub_226D6E5EC();

  (*(v5 + 104))(v8, *MEMORY[0x277CC7FF0], v4);
  v11 = sub_226D6E5BC();

  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v12 = sub_226D6769C();
    v13 = [v12 persistentStoreCoordinator];

    v14 = [objc_allocWithZone(type metadata accessor for DaemonCoreDataSpotlightIndexer()) initForStoreWithDescription:v11 coordinator:v13];
    sub_226AE532C(v23, v22);
    v15 = OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
    swift_beginAccess();
    v16 = v14;
    sub_226B70A00(v22, v14 + v15);
    swift_endAccess();
    v17 = sub_226D676AC();
    v18 = *&v16[OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context];
    *&v16[OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context] = v17;

    v19 = [objc_opt_self() defaultCenter];
    [v19 addObserver:v16 selector:sel_indexSearchableItemsToCurrentHistoryToken name:*MEMORY[0x277CBE260] object:v13];

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return 0;
  }

  return v16;
}

uint64_t sub_226B701D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72130;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v3 = [a1 domain];
  v4 = sub_226D6E39C();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  [a1 code];
  *(inited + 80) = sub_226D6F1CC();
  *(inited + 88) = v7;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x8000000226D808E0;
  v8 = [a1 localizedDescription];
  v9 = sub_226D6E39C();
  v11 = v10;

  *(inited + 112) = v9;
  *(inited + 120) = v11;
  sub_226B224FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
  swift_arrayDestroy();
  type metadata accessor for OrdersAutoBugCaptureReporter();
  v12 = swift_initStackObject();
  v13 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(v12 + 16) = v13;
  sub_226BA2B08();
}

uint64_t sub_226B703AC(uint64_t a1, uint64_t a2)
{
  v23[13] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v23[2] = v4;
  v23[3] = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v10 = sub_226D6A98C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70E8, &qword_226D74318) + 48);
  v16 = sub_226D6B94C();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  v17 = sub_226D6B92C();
  (*(*(v17 - 8) + 16))(&v14[v15], a2, v17);
  (*(v11 + 104))(v14, *MEMORY[0x277CC7CD0], v10);
  v18 = sub_226D676CC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  result = sub_226D6768C();
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_226B709B4()
{
  result = qword_28105F420;
  if (!qword_28105F420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F420);
  }

  return result;
}

uint64_t sub_226B70A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70E0, &qword_226D741B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B70A70()
{
  v1 = sub_226D6D4AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226B728E8(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  v10 = type metadata accessor for AccountAndStartingDate();
  sub_226AC40E8(v0 + *(v10 + 20), v9, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_226D6F31C();
    sub_226B728E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    (*(v2 + 8))(v5, v1);
  }

  return sub_226D6F35C();
}

uint64_t sub_226B70CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_226D6D52C();
  sub_226B728E8(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  sub_226AC40E8(v2 + *(a2 + 20), v12, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_226D6F31C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_226D6F31C();
  sub_226B728E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_226B70F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226B728E8(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  sub_226AC40E8(v2 + *(a2 + 20), v12, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_226D6F31C();
    sub_226B728E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    (*(v5 + 8))(v8, v4);
  }

  return sub_226D6F35C();
}

uint64_t sub_226B71160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = sub_226D6D4AC();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v27 - v18;
  if (sub_226D6D4EC())
  {
    sub_226AC40E8(a3, v12, &qword_27D7A8BE0, &unk_226D718F0);
    v20 = *(v28 + 48);
    if (v20(v12, 1, v13) == 1)
    {
      sub_226AC47B0(v12, &qword_27D7A8BE0, &unk_226D718F0);
      v21 = 1;
    }

    else
    {
      v27[1] = v3;
      v22 = v12;
      v23 = *(v28 + 32);
      v23(v19, v22, v13);
      v24 = type metadata accessor for AccountAndStartingDate();
      sub_226AC40E8(a1 + *(v24 + 20), v10, &qword_27D7A8BE0, &unk_226D718F0);
      if (v20(v10, 1, v13) == 1)
      {
        (*(v28 + 8))(v19, v13);
        sub_226AC47B0(v10, &qword_27D7A8BE0, &unk_226D718F0);
        v21 = 1;
      }

      else
      {
        v23(v17, v10, v13);
        sub_226B728E8(&qword_27D7A66D8, MEMORY[0x277CC9578]);
        v21 = sub_226D6E34C();
        v25 = *(v28 + 8);
        v25(v17, v13);
        v25(v19, v13);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t type metadata accessor for AccountAndStartingDate()
{
  result = qword_281061D28;
  if (!qword_281061D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B714D0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AccountAndStartingDate();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = *a1;
  v21 = sub_226D6E36C();
  v22 = [v20 valueForKeyPath_];

  if (v22)
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (*(&v43 + 1))
  {
    v23 = sub_226D6D52C();
    v24 = swift_dynamicCast();
    (*(*(v23 - 8) + 56))(v19, v24 ^ 1u, 1, v23);
  }

  else
  {
    sub_226AC47B0(&v44, &unk_27D7A8BB0, &unk_226D74340);
    v25 = sub_226D6D52C();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  }

  v26 = sub_226D6E36C();
  v27 = [v20 valueForKeyPath_];

  if (v27)
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v28 = v40;
  v44 = v42;
  v45 = v43;
  if (*(&v43 + 1))
  {
    v29 = sub_226D6D4AC();
    v30 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v12, v30 ^ 1u, 1, v29);
  }

  else
  {
    sub_226AC47B0(&v44, &unk_27D7A8BB0, &unk_226D74340);
    v31 = sub_226D6D4AC();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  }

  sub_226AC40E8(v19, v17, &qword_27D7A6D68, &qword_226D75210);
  sub_226AC40E8(v12, v10, &qword_27D7A8BE0, &unk_226D718F0);
  v32 = sub_226D6D52C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v17, 1, v32) == 1)
  {
    sub_226AC47B0(v10, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226AC47B0(v17, &qword_27D7A6D68, &qword_226D75210);
    v34 = 1;
    v35 = v41;
  }

  else
  {
    v36 = v38;
    (*(v33 + 32))(v38, v17, v32);
    sub_226B72784(v10, v36 + *(v28 + 20));
    v35 = v41;
    sub_226B72720(v36, v41);
    v34 = 0;
  }

  (*(v39 + 56))(v35, v34, 1, v28);
  sub_226AC47B0(v12, &qword_27D7A8BE0, &unk_226D718F0);
  return sub_226AC47B0(v19, &qword_27D7A6D68, &qword_226D75210);
}

BOOL sub_226B71A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for AccountAndStartingDate() + 20);
  v18 = *(v13 + 48);
  sub_226AC40E8(a1 + v17, v16, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(a2 + v17, &v16[v18], &qword_27D7A8BE0, &unk_226D718F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_226AC40E8(v16, v12, &qword_27D7A8BE0, &unk_226D718F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_226AC47B0(v16, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_226B728E8(&qword_27D7A6C38, MEMORY[0x277CC9578]);
  v22 = sub_226D6E35C();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
  return (v22 & 1) != 0;
}

uint64_t sub_226B71D90()
{
  v0 = sub_226D67F1C();
  v51 = *(v0 - 8);
  v1 = *(v51 + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70F0, &qword_226D74328);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for AccountAndStartingDate();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - v10;
  sub_226D683BC();
  v11 = [swift_getObjCClassFromMetadata() entityName];
  if (!v11)
  {
    sub_226D6E39C();
    v11 = sub_226D6E36C();
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v13 = sub_226D6834C();
  [v12 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71840;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 32) = 0x49746E756F636361;
  *(v14 + 40) = 0xE900000000000044;
  *(v14 + 88) = v15;
  *(v14 + 56) = v15;
  *(v14 + 64) = 0xD000000000000010;
  *(v14 + 72) = 0x8000000226D80900;
  v16 = sub_226D6E5CC();

  [v12 setPropertiesToFetch_];

  sub_226B04068();
  v17 = sub_226D6EBBC();
  v33 = v17;
  if (!(v17 >> 62))
  {
    v34 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v12;
    if (v34)
    {
      goto LABEL_8;
    }

LABEL_27:
    v37 = MEMORY[0x277D84F90];
LABEL_28:

    v44 = sub_226AE483C(v37);

    return v44;
  }

  v34 = sub_226D6EDFC();
  v46 = v12;
  if (!v34)
  {
    goto LABEL_27;
  }

LABEL_8:
  v35 = 0;
  v50 = v33 & 0xFFFFFFFFFFFFFF8;
  v51 = v33 & 0xC000000000000001;
  v36 = (v49 + 48);
  v37 = MEMORY[0x277D84F90];
  v47 = v6;
  while (1)
  {
    if (v51)
    {
      v38 = MEMORY[0x22AA8AFD0](v35, v33);
    }

    else
    {
      if (v35 >= *(v50 + 16))
      {
        goto LABEL_25;
      }

      v38 = *(v33 + 8 * v35 + 32);
    }

    v39 = v38;
    v0 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v53[0] = v38;
    sub_226B714D0(v53, v5);

    if ((*v36)(v5, 1, v6) == 1)
    {
      sub_226AC47B0(v5, &qword_27D7A70F0, &qword_226D74328);
    }

    else
    {
      v40 = v48;
      sub_226B72720(v5, v48);
      sub_226B72720(v40, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_226BBB680(0, v37[2] + 1, 1, v37);
      }

      v42 = v37[2];
      v41 = v37[3];
      if (v42 >= v41 >> 1)
      {
        v37 = sub_226BBB680(v41 > 1, v42 + 1, 1, v37);
      }

      v37[2] = v42 + 1;
      sub_226B72720(v52, v37 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42);
      v6 = v47;
    }

    ++v35;
    if (v0 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  swift_once();
  v18 = sub_226D6E07C();
  __swift_project_value_buffer(v18, qword_28105F5E0);
  (*(v51 + 16))(v36, v34, v0);
  v19 = 0;
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9CC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v51;
    v52 = v24;
    v53[0] = v24;
    *v22 = 136315394;
    sub_226B728E8(&qword_281062BC0, MEMORY[0x277CC7098]);
    v26 = sub_226D6F1CC();
    v28 = v27;
    (*(v25 + 8))(v36, v0);
    v29 = sub_226AC4530(v26, v28, v53);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2112;
    v30 = 0;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v31;
    *v23 = v31;
    _os_log_impl(&dword_226AB4000, v20, v21, "Could not find accountIDs associated to Application %s: %@", v22, 0x16u);
    sub_226AC47B0(v23, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    v32 = v52;
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x22AA8BEE0](v32, -1, -1);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  else
  {

    (*(v51 + 8))(v36, v0);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226B724B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_226D6A34C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CC7BB8])
  {

LABEL_3:
    (*(v7 + 8))(a2, v6);
    v12 = sub_226D67F1C();
    (*(*(v12 - 8) + 8))(a1, v12);
    return 0;
  }

  if (v11 == *MEMORY[0x277CC7BA0])
  {
    v14 = sub_226B71D90();

    (*(v7 + 8))(a2, v6);
    v15 = sub_226D67F1C();
    (*(*(v15 - 8) + 8))(a1, v15);
    return v14;
  }

  else
  {
    v16 = *MEMORY[0x277CC7BA8];
    v17 = v11;

    if (v17 == v16)
    {
      goto LABEL_3;
    }

    v18 = *(v7 + 8);
    v18(a2, v6);
    v19 = sub_226D67F1C();
    (*(*(v19 - 8) + 8))(a1, v19);
    v18(v10, v6);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_226B72720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAndStartingDate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B72784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226B7281C()
{
  sub_226D6D52C();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B728E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BankConnectServiceImplementation.loadGrantedAccounts(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_226D6764C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_226D6D4AC();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B72A50, 0, 0);
}

uint64_t sub_226B72A50()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v5 = *(*(v4 + 8) + 8);
  sub_226D6BAAC();
  v6 = sub_226D676AC();
  v0[14] = v6;

  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v6;
  sub_226D6EB8C();
  v8 = v0[13];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];

  v12 = v0[3];
  v0[15] = v0[2];
  v0[16] = v12;
  sub_226D6D46C();
  v13 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_226B41FC0();
  v25 = swift_allocObject();
  sub_226B42014(v13, v25 + 16);
  v14 = sub_226D6B13C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_226D6B12C();
  v0[4] = v17;
  v0[17] = v17;
  (*(v10 + 104))(v9, *MEMORY[0x277CC6D38], v11);
  v18 = *(MEMORY[0x277CC7EF0] + 4);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_226B72CBC;
  v20 = v0[10];
  v22 = v0[5];
  v21 = v0[6];
  v23 = MEMORY[0x277CC7E10];

  return MEMORY[0x282119F18](v22, v21, v20, v14, v23);
}

uint64_t sub_226B72CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_226B72EF8;
  }

  else
  {
    v5 = sub_226B72E24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B72E24()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  sub_226B7335C(v9, v3, v2);

  (*(v6 + 8))(v5, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_226B72EF8()
{
  v31 = v0;
  v1 = v0[17];

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[6];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_27D7A7D10);

  v5 = v2;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[19];
    v10 = v0[5];
    v9 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_226AC4530(v10, v9, &v30);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to load granted accounts for consentID: %s with: %@.", v11, 0x16u);
    sub_226B17298(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  v16 = v0[19];
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v29 = v0[11];
  v22 = v0[7];
  v23 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v24 = v16;
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CC7AB0], v23);
  swift_willThrow();
  sub_226B7335C(v22, v18, v17);

  (*(v21 + 8))(v19, v29);
  v25 = v0[13];
  v26 = v0[10];

  v27 = v0[1];

  return v27();
}

void sub_226B731F4(uint64_t *a1@<X8>)
{
  sub_226D6842C();
  v3 = sub_226D683FC();
  if (!v1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v3 id];
      v6 = sub_226D6E39C();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      v9 = sub_226D6A0DC();
      sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
      swift_allocError();
      (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277CC7AB8], v9);
      swift_willThrow();
    }
  }
}

void sub_226B7333C(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_226B731F4(a1);
}

uint64_t sub_226B7335C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v11 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v11 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD000000000000034;
  v14[3] = 0x8000000226D80940;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v13;

  sub_226D69AFC();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t BankConnectServiceImplementation.scheduleHistoricalTransactionTask(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6A0DC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = sub_226D6B9BC();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B7363C, 0, 0);
}

uint64_t sub_226B7363C()
{
  v1 = v0[12];
  v2 = v0[4];
  (*(v0[10] + 16))(v1, v0[3], v0[9]);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = *(*(v3 + 8) + 8);
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_task_alloc();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v2;
  sub_226D6EB7C();
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];

  (*(v10 + 8))(v7, v9);

  v13 = v0[1];

  return v13();
}

void sub_226B73BBC(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B9BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v14 = sub_226D69D9C();
  if (!v2)
  {
    v16 = v14;
    v39 = v13;
    if (v14)
    {
      sub_226D6D46C();
      v17 = sub_226D6D3EC();
      (*(v40 + 8))(v8, v5);
      [v16 setEarliestHistoricalTransactionsRequestStartDate_];

      v41 = 0;
      if ([a2 save_])
      {
        v18 = v41;
      }

      else
      {
        v32 = v41;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v19 = sub_226D6E07C();
      __swift_project_value_buffer(v19, qword_27D7A7D10);
      v20 = v39;
      v21 = a1;
      v22 = v9;
      (*(v10 + 16))(v39, v21, v9);
      v23 = sub_226D6E05C();
      v24 = sub_226D6E9CC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41 = v26;
        *v25 = 136315138;
        sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v27 = sub_226D6F1CC();
        v28 = v20;
        v30 = v29;
        (*(v10 + 8))(v28, v22);
        v31 = sub_226AC4530(v27, v30, &v41);

        *(v25 + 4) = v31;
        _os_log_impl(&dword_226AB4000, v23, v24, "Failed to schedule historical transactions task, no account found for %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }

      else
      {

        (*(v10 + 8))(v20, v9);
      }

      v33 = sub_226D6A0DC();
      sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
      swift_allocError();
      v35 = v34;
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_226D6EEFC();

      v41 = 0xD000000000000015;
      v42 = 0x8000000226D80920;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v36 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v36);

      v37 = v42;
      *v35 = v41;
      v35[1] = v37;
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277CC7AC0], v33);
      swift_willThrow();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id sub_226B74118()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_226D6E36C();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_226B741F0@<X0>(void *a1@<X8>)
{
  result = sub_226B74118();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_226B7421C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  result = sub_226B742D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_226B74270()
{
  v1 = [*v0 URL];
  sub_226D6D14C();
}

id sub_226B742D0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithStoreItemIdentifier:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_226B74384()
{
  v1 = v0;
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9OperationOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B76458(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      if (EnumCaseMultiPayload)
      {
        sub_226D6EEFC();

        v43 = 0xD000000000000014;
        v44 = 0x8000000226D80B60;
      }

      else
      {
        sub_226D6EEFC();

        v43 = 0xD000000000000014;
        v44 = 0x8000000226D80B80;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_226D6EEFC();

        v43 = 0xD000000000000016;
        v44 = 0x8000000226D80B40;
        v19 = [v12 description];
        goto LABEL_23;
      }

      v43 = 0;
      v44 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 3)
      {
        sub_226D6EEFC();

        v43 = 0xD000000000000028;
        v44 = 0x8000000226D80B10;
      }

      else
      {
        sub_226D6EEFC();
        MEMORY[0x22AA8A510](0xD000000000000032, 0x8000000226D80AD0);
      }
    }

    v19 = [v12 description];
LABEL_23:
    v27 = v19;
    v28 = sub_226D6E39C();
    v30 = v29;

    MEMORY[0x22AA8A510](v28, v30);

    MEMORY[0x22AA8A510](41, 0xE100000000000000);

    return v43;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v13 = v10[1];
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_226D6EEFC();

      v43 = 0xD000000000000013;
      v44 = 0x8000000226D80A90;
      v22 = [v12 description];
      v23 = sub_226D6E39C();
      v25 = v24;

      MEMORY[0x22AA8A510](v23, v25);

      MEMORY[0x22AA8A510](0xD000000000000017, 0x8000000226D80AB0);
      v18 = [v13 description];
    }

    else
    {
      v13 = v10[1];
      v43 = 0;
      v44 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 6)
      {
        sub_226D6EEFC();

        v43 = 0xD000000000000014;
        v44 = 0x8000000226D80A70;
      }

      else
      {
        sub_226D6EEFC();

        v43 = 0xD00000000000002BLL;
        v44 = 0x8000000226D80A40;
      }

      v14 = [v12 description];
      v15 = sub_226D6E39C();
      v17 = v16;

      MEMORY[0x22AA8A510](v15, v17);

      MEMORY[0x22AA8A510](8236, 0xE200000000000000);
      v18 = [v13 description];
    }

    v31 = v18;
    v32 = sub_226D6E39C();
    v34 = v33;

    MEMORY[0x22AA8A510](v32, v34);

    MEMORY[0x22AA8A510](41, 0xE100000000000000);

    return v43;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
    (*(v3 + 32))(v6, v10 + *(v26 + 48), v2);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000037, 0x8000000226D80A00);
    v21 = [v12 description];
  }

  else
  {
    if (EnumCaseMultiPayload == 9)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v3 + 32))(v6, v10 + *(v20 + 48), v2);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000039, 0x8000000226D809C0);
    }

    else
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v3 + 32))(v6, v10 + *(v36 + 48), v2);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000037, 0x8000000226D80980);
    }

    v21 = [v12 description];
  }

  v37 = v21;
  v38 = sub_226D6E39C();
  v40 = v39;

  MEMORY[0x22AA8A510](v38, v40);

  MEMORY[0x22AA8A510](8236, 0xE200000000000000);
  sub_226B764BC(&qword_281062B80, MEMORY[0x277CC9578]);
  v41 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v41);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);

  v42 = v43;
  (*(v3 + 8))(v6, v2);
  return v42;
}

void sub_226B74B68(void *a1)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = _s9OperationOMa();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B76458(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v17;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_226B74F50(*v17, a1);
        goto LABEL_21;
      }

      v22 = MEMORY[0x277CC7698];
      v23 = MEMORY[0x277CC7690];
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_226B7569C(*v17, a1);
        }

        else
        {
          sub_226B75D44(*v17, a1);
        }

        goto LABEL_21;
      }

      v22 = MEMORY[0x277CC78E8];
      v23 = MEMORY[0x277CC78E0];
    }

    sub_226B75594(*v17, a1, v22, v23);
LABEL_21:

    return;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v4 + 32))(v13, v17 + *(v24 + 48), v3);
      sub_226B76094(v19, v13, a1);
      (*(v4 + 8))(v13, v3);
    }

    else if (EnumCaseMultiPayload == 9)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v4 + 32))(v11, v17 + *(v21 + 48), v3);
      sub_226B761D8(v19, v11, a1);
      (*(v4 + 8))(v11, v3);
    }

    else
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v4 + 32))(v8, v17 + *(v25 + 48), v3);
      sub_226B762F0(v19, v8, a1);
      (*(v4 + 8))(v8, v3);
    }

    v20 = v19;
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      v20 = v17[1];
      sub_226B75B20(*v17, v20, a1);
    }

    else
    {
      v20 = v17[1];
      if (EnumCaseMultiPayload == 6)
      {
        sub_226B757B0(*v17, v17[1], a1);
      }

      else
      {
        sub_226B759EC(*v17, v17[1], a1);
      }
    }
  }
}

void *sub_226B74F50(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D67F1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  result = sub_226D678FC();
  if (!v2)
  {
    v41 = a2;
    v42 = result;
    v43 = v4;
    v44 = v7;
    v45 = 0;
    v66[3] = &type metadata for WidgetRefresher;
    v66[4] = sub_226B31FA8();
    v14 = type metadata accessor for WalletMessageUpdater();
    v15 = swift_allocObject();
    v65[3] = v14;
    v65[4] = sub_226B764BC(&qword_281062070, type metadata accessor for WalletMessageUpdater);
    v65[0] = v15;
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    if (qword_281060130 != -1)
    {
      swift_once();
    }

    v16 = qword_281060138;
    v61 = type metadata accessor for FinancialDataDeletedAccountsRemover();
    v62 = &protocol witness table for FinancialDataDeletedAccountsRemover;
    *&v60 = v16;
    v17 = sub_226D6B5EC();
    v18 = MEMORY[0x277CC7F68];
    *(&v52 + 1) = v17;
    *&v53[0] = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v51);

    sub_226D6B5AC();
    v19 = sub_226D6A92C();
    v20 = objc_allocWithZone(v19);
    v21 = sub_226D6A91C();
    v59[3] = v19;
    v59[4] = MEMORY[0x277CC7CC8];
    v58[4] = v18;
    v59[0] = v21;
    v58[3] = v17;
    __swift_allocate_boxed_opaque_existential_1(v58);
    sub_226D6B58C();
    *&v53[0] = 0;
    v51 = 0u;
    v52 = 0u;
    sub_226B1B848(v66, &v51);
    sub_226AE532C(v65, v53 + 8);
    sub_226AE532C(v59, v54);
    sub_226AE532C(v58, v55 + 8);
    sub_226B1B8B8(v63, &v46);
    if (v47)
    {
      sub_226AC47B0(v63, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      sub_226AC47B0(v66, &qword_27D7A6910, &unk_226D721C0);
      sub_226AC484C(&v46, &v48);
      v22 = v44;
    }

    else
    {
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v9 + 8))(v12, v8);
      v23 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v24 = sub_226D6E36C();

      v25 = [v23 initWithBundleIdentifier_];

      v49 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
      v50 = MEMORY[0x277CC85E8];
      *&v48 = v25;
      sub_226AC47B0(v63, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      sub_226AC47B0(v66, &qword_27D7A6910, &unk_226D721C0);
      v22 = v44;
      if (v47)
      {
        sub_226AC47B0(&v46, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    sub_226AC484C(&v48, v56);
    sub_226AC484C(&v60, v57 + 8);
    v67[12] = v57[0];
    v67[13] = v57[1];
    v67[14] = v57[2];
    v67[8] = v55[1];
    v67[9] = v55[2];
    v67[10] = v56[0];
    v67[11] = v56[1];
    v67[4] = v53[2];
    v67[5] = v54[0];
    v67[6] = v54[1];
    v67[7] = v55[0];
    v67[0] = v51;
    v67[1] = v52;
    v67[2] = v53[0];
    v67[3] = v53[1];
    v26 = v42;
    v27 = [v42 consentID];
    v28 = sub_226D6E39C();
    v30 = v29;

    MEMORY[0x28223BE20](v31);
    *(&v40 - 6) = v28;
    *(&v40 - 5) = v30;
    v32 = v41;
    *(&v40 - 4) = v41;
    *(&v40 - 3) = v67;
    *(&v40 - 16) = 1;
    v33 = v43;
    v34 = v45;
    sub_226D6EB8C();
    if (v34)
    {

      result = sub_226B1B944(v67);
    }

    else
    {

      *&v51 = 0;
      if ([v32 save_])
      {
        v35._rawValue = *(v22 + *(v33 + 20));
        v36 = *(v22 + *(v33 + 24));
        v37 = v51;
        ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(v35, v36);
      }

      else
      {
        v39 = v51;
        sub_226D6D04C();

        swift_willThrow();
      }

      sub_226B1B944(v67);
      result = sub_226B77148(v22, type metadata accessor for ManagedConsentDeleter.Metadata);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226B75594(uint64_t a1, void *a2, void (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  v13[1] = *MEMORY[0x277D85DE8];
  a3(0);
  v8 = a4(a1, a2);
  if (!v4)
  {
    v9 = v8;
    [a2 deleteObject_];
    v13[0] = 0;
    if ([a2 save_])
    {
      v10 = v13[0];
    }

    else
    {
      v11 = v13[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_226B7569C(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6794C();
  v4 = sub_226D678FC();
  if (!v2)
  {
    v5 = v4;
    sub_226D68F0C();
    v6 = v5;
    v7 = a2;

    v11[0] = 0;
    if ([v7 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_226B757B0(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6794C();
    v8 = sub_226D678FC();
    sub_226D68ECC();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226B759EC(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6996C();
    v7 = sub_226D6993C();
    sub_226D68EEC();
    v11[0] = 0;
    if ([a3 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_226B75B20(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    v8 = sub_226D68EBC();
    sub_226D68EDC();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226B75D44(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6A0AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  sub_226D68F0C();
  v10 = sub_226D68EBC();
  if (!v2)
  {
    v11 = v10;
    sub_226D6A08C();
    v24 = v11;
    v12 = sub_226D6996C();
    sub_226D6A09C();
    v14 = sub_226D6991C();
    v23[2] = v12;

    if (v14)
    {
      v15 = v14;
      v16 = v14;
      v17 = v24;
      sub_226D6994C();
    }

    else
    {
      v17 = v24;
      v18 = v24;
      sub_226D6A08C();
      v23[1] = v18;
      v15 = 0;
      v19 = a2;
      v16 = sub_226D6998C();
    }

    v25[0] = 0;
    if ([a2 save_])
    {
      v20 = *(v5 + 8);
      v21 = v25[0];
      v20(v9, v4);
    }

    else
    {
      v22 = v25[0];
      sub_226D6D04C();

      swift_willThrow();
      (*(v5 + 8))(v9, v4);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_226B76094(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_226D6794C();
  v5 = sub_226D678FC();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6D3EC();
    [v6 setBackgroundRefreshLastConfirmedAt_];

    v8 = [v6 backgroundRefreshConfirmationSequenceNumber];
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    [v6 setBackgroundRefreshConfirmationSequenceNumber_];
    v12[0] = 0;
    if ([a3 save_])
    {
      v9 = v12[0];
    }

    else
    {
      v10 = v12[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_226B761D8(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6996C();
  v5 = sub_226D6993C();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6D3EC();
    [v6 setBackgroundRefreshLastConfirmedAt_];

    v11[0] = 0;
    if ([a3 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_226B762F0(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6D3EC();
    [v6 setBackgroundRefreshLastConfirmedAt_];

    v11[0] = 0;
    if ([a3 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t _s9OperationOMa()
{
  result = qword_27D7A7100;
  if (!qword_27D7A7100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B76458(uint64_t a1, uint64_t a2)
{
  v4 = _s9OperationOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B764BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226B76504()
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v0 <= 0x3F)
  {
    sub_226B76634(319, &qword_27D7A7110);
    if (v1 <= 0x3F)
    {
      sub_226B76634(319, &qword_27D7A7118);
      if (v2 <= 0x3F)
      {
        sub_226B7668C(319, &qword_27D7A7120);
        if (v3 <= 0x3F)
        {
          sub_226B7668C(319, &qword_27D7A7128);
          if (v4 <= 0x3F)
          {
            sub_226B7668C(319, &qword_27D7A7130);
            if (v5 <= 0x3F)
            {
              sub_226B76704();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_226B76634(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_226B7668C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_226B76704()
{
  if (!qword_27D7A7138)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    sub_226D6D4AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A7138);
    }
  }
}

uint64_t sub_226B76788(uint64_t a1, uint64_t a2)
{
  v112 = a1;
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v103 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v104 = &v99 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v99 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v99 - v15;
  MEMORY[0x28223BE20](v14);
  v100 = &v99 - v16;
  v17 = _s9OperationOMa();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v109 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v108 = (&v99 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = (&v99 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v99 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v99 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v99 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v99 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v99 - v36);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&v99 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v99 - v42);
  MEMORY[0x28223BE20](v41);
  v45 = (&v99 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7140, &qword_226D744D0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = &v99 - v49;
  v51 = (&v99 + *(v48 + 56) - v49);
  sub_226B76458(v112, &v99 - v49);
  v52 = a2;
  v53 = v51;
  sub_226B76458(v52, v51);
  v112 = v50;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v55 = v112;
      if (EnumCaseMultiPayload == 2)
      {
        sub_226B76458(v112, v40);
        v88 = *v40;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_47;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_226B76458(v112, v37);
        v88 = *v37;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_226B76458(v112, v34);
        v88 = *v34;
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_32;
    }

    v55 = v112;
    if (EnumCaseMultiPayload)
    {
      sub_226B76458(v112, v43);
      v88 = *v43;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_32:
        v57 = *v51;
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
LABEL_33:
        v71 = sub_226D6EC3C();

LABEL_34:
        sub_226B77148(v55, _s9OperationOMa);
        return v71 & 1;
      }
    }

    else
    {
      sub_226B76458(v112, v45);
      v88 = *v45;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_32;
      }
    }

LABEL_47:

    sub_226AC47B0(v55, &qword_27D7A7140, &qword_226D744D0);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v55 = v112;
      sub_226B76458(v112, v31);
      v73 = *v31;
      v88 = v31[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_47;
      }

      v74 = *v51;
      v57 = v51[1];
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v75 = sub_226D6EC3C();

      if ((v75 & 1) == 0)
      {
LABEL_26:

LABEL_44:
        sub_226B77148(v55, _s9OperationOMa);
LABEL_48:
        v71 = 0;
        return v71 & 1;
      }
    }

    else
    {
      v55 = v112;
      if (EnumCaseMultiPayload == 6)
      {
        v56 = v105;
        sub_226B76458(v112, v105);
        v87 = *v56;
        v88 = *(v56 + 8);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
LABEL_36:

          goto LABEL_47;
        }
      }

      else
      {
        v86 = v106;
        sub_226B76458(v112, v106);
        v87 = *v86;
        v88 = *(v86 + 8);
        v89 = swift_getEnumCaseMultiPayload();
        if (v89 != 7)
        {
          goto LABEL_36;
        }
      }

      v58 = *v51;
      v57 = v51[1];
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v59 = sub_226D6EC3C();

      if ((v59 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v55 = v112;
    v76 = v107;
    sub_226B76458(v112, v107);
    v88 = *v76;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v78 = swift_getEnumCaseMultiPayload();
    v60 = v111;
    if (v78 != 8)
    {
      (*(v111 + 8))(v76 + v77, v110);
      goto LABEL_47;
    }

    v79 = *v51;
    v80 = *(v111 + 32);
    v81 = v76 + v77;
    v82 = v100;
    v83 = v110;
    v80(v100, v81, v110);
    v84 = v53 + v77;
    v85 = v99;
    goto LABEL_39;
  }

  v60 = v111;
  if (EnumCaseMultiPayload != 9)
  {
    v55 = v112;
    v90 = v109;
    sub_226B76458(v112, v109);
    v88 = *v90;
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v92 = swift_getEnumCaseMultiPayload();
    v83 = v110;
    if (v92 != 10)
    {
      (*(v60 + 8))(v90 + v91, v110);
      goto LABEL_47;
    }

    v79 = *v53;
    v80 = *(v60 + 32);
    v93 = v90 + v91;
    v82 = v104;
    v80(v104, v93, v110);
    v84 = v53 + v91;
    v85 = v103;
LABEL_39:
    v80(v85, v84, v83);
    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v94 = sub_226D6EC3C();

    if ((v94 & 1) == 0)
    {
      v96 = *(v60 + 8);
      v96(v85, v83);
      v96(v82, v83);
      goto LABEL_44;
    }

    v71 = sub_226D6D44C();
    v95 = *(v60 + 8);
    v95(v85, v83);
    v95(v82, v83);
    goto LABEL_34;
  }

  v61 = v108;
  sub_226B76458(v112, v108);
  v88 = *v61;
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = v110;
  if (v63 != 9)
  {
    (*(v60 + 8))(v61 + v62, v110);
    v55 = v112;
    goto LABEL_47;
  }

  v65 = *v51;
  v66 = *(v60 + 32);
  v67 = v102;
  v66(v102, v61 + v62, v110);
  v68 = v53 + v62;
  v69 = v101;
  v66(v101, v68, v64);
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v70 = sub_226D6EC3C();

  if ((v70 & 1) == 0)
  {
    v98 = *(v60 + 8);
    v98(v69, v64);
    v98(v67, v64);
    sub_226B77148(v112, _s9OperationOMa);
    goto LABEL_48;
  }

  v71 = sub_226D6D44C();
  v72 = *(v60 + 8);
  v72(v69, v64);
  v72(v67, v64);
  sub_226B77148(v112, _s9OperationOMa);
  return v71 & 1;
}

uint64_t sub_226B77148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B771A8(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a2;
  v186 = a1;
  v140 = a3;
  v169 = sub_226D6E23C();
  v177 = *(v169 - 8);
  v4 = *(v177 + 64);
  MEMORY[0x28223BE20](v169);
  v168 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_226D6777C();
  v146 = *(v155 - 8);
  v6 = *(v146 + 64);
  v7 = MEMORY[0x28223BE20](v155);
  v154 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v174 = &v133 - v9;
  v182 = sub_226D6774C();
  v10 = *(v182 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v182);
  v173 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v184 = &v133 - v15;
  MEMORY[0x28223BE20](v14);
  v145 = &v133 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7148, &qword_226D744D8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v159 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v161 = &v133 - v21;
  v181 = sub_226D68D5C();
  v176 = *(v181 - 8);
  v22 = *(v176 + 64);
  v23 = MEMORY[0x28223BE20](v181);
  v139 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v138 = &v133 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v133 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v133 - v30;
  v183 = sub_226D6D52C();
  v162 = *(v183 - 8);
  v32 = *(v162 + 64);
  v33 = MEMORY[0x28223BE20](v183);
  v179 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v133 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7150, &qword_226D744E0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v133 - v42;
  sub_226D6980C();
  v44 = sub_226D697CC();
  [v44 setReturnsObjectsAsFaults_];
  v45 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  v156 = v43;
  v157 = v41;
  v158 = v36;
  v167 = v44;
  v170 = v31;
  v135 = v29;
  v46 = sub_226B78CA8(v45);
  v180 = 0;

  v48 = 0;
  v50 = v46 + 64;
  v49 = *(v46 + 64);
  v149 = v46;
  v51 = 1 << *(v46 + 32);
  v189 = MEMORY[0x277D84FA0];
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & v49;
  v188 = MEMORY[0x277D84F90];
  v54 = (v51 + 63) >> 6;
  v55 = v162;
  v148 = v162 + 16;
  v175 = (v162 + 32);
  v178 = (v176 + 48);
  v185 = v10 + 32;
  v153 = (v162 + 8);
  v136 = (v176 + 32);
  v134 = (v176 + 16);
  v137 = (v176 + 8);
  v166 = (v177 + 8);
  v147 = (v10 + 16);
  v165 = (v10 + 8);
  v144 = (v146 + 16);
  v143 = v146 + 8;
  v142 = v146 + 32;
  *&v47 = 138412290;
  v141 = v47;
  v171 = MEMORY[0x277D84F90];
  v172 = MEMORY[0x277D84F90];
  v56 = v145;
  v57 = v181;
  v151 = v46 + 64;
  v150 = v54;
  v152 = v10;
  while (2)
  {
    v58 = v158;
    while (1)
    {
      if (!v53)
      {
        if (v54 <= v48 + 1)
        {
          v60 = v48 + 1;
        }

        else
        {
          v60 = v54;
        }

        v61 = v60 - 1;
        v62 = v167;
        while (1)
        {
          v59 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v59 >= v54)
          {
            v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7158, &qword_226D744E8);
            v71 = v157;
            (*(*(v99 - 8) + 56))(v157, 1, 1, v99);
            v176 = 0;
            v177 = v61;
            goto LABEL_20;
          }

          v53 = *(v50 + 8 * v59);
          ++v48;
          if (v53)
          {
            v177 = v59;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v177 = v48;
      v59 = v48;
LABEL_19:
      v176 = (v53 - 1) & v53;
      v63 = __clz(__rbit64(v53)) | (v59 << 6);
      v64 = v149;
      v65 = v183;
      v66 = v55;
      (*(v55 + 16))(v58, *(v149 + 48) + *(v55 + 72) * v63, v183);
      v67 = *(*(v64 + 56) + 8 * v63);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7158, &qword_226D744E8);
      v69 = *(v68 + 48);
      v70 = *(v66 + 32);
      v71 = v157;
      v70(v157, v58, v65);
      *(v71 + v69) = v67;
      (*(*(v68 - 8) + 56))(v71, 0, 1, v68);

      v62 = v167;
      v57 = v181;
LABEL_20:
      v72 = v156;
      sub_226B78FF0(v71, v156);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7158, &qword_226D744E8);
      if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
      {

        sub_226D679CC();

        return;
      }

      v186 = *(v72 + *(v73 + 48));
      v74 = v179;
      v75 = (*v175)(v179, v72, v183);
      v76 = v189;
      MEMORY[0x28223BE20](v75);
      *(&v133 - 2) = v74;
      v77 = v161;
      v78 = v180;
      sub_226BA2DD0(sub_226B79060, v76, v161);
      v79 = *v178;
      if ((*v178)(v77, 1, v57) != 1)
      {
        (*v136)(v170, v77, v57);
        v82 = v78;
        goto LABEL_44;
      }

      sub_226AC47B0(v77, &qword_27D7A7148, &qword_226D744D8);
      v80 = v160[24];
      __swift_project_boxed_opaque_existential_1(v160 + 20, v160[23]);
      v81 = v159;
      sub_226D6BBCC();
      v82 = v78;
      if (v78)
      {

        (*v153)(v179, v183);
        return;
      }

      v57 = v181;
      if (v79(v81, 1, v181) != 1)
      {
        break;
      }

      sub_226AC47B0(v81, &qword_27D7A7148, &qword_226D744D8);
      v83 = v152;
      if (qword_27D7A5F40 != -1)
      {
        swift_once();
      }

      v84 = sub_226D6E07C();
      __swift_project_value_buffer(v84, qword_27D7A7CC8);
      v85 = sub_226D6E05C();
      v86 = sub_226D6E9CC();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v186;
      if (v87)
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_226AB4000, v85, v86, "Failed to find key for sealed BankCredential", v89, 2u);
        MEMORY[0x22AA8BEE0](v89, -1, -1);
      }

      if (v88 >> 62)
      {
        v90 = sub_226D6EDFC();
        v180 = 0;
        if (!v90)
        {
LABEL_41:

          v92 = MEMORY[0x277D84F90];
          goto LABEL_8;
        }
      }

      else
      {
        v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v180 = 0;
        if (!v90)
        {
          goto LABEL_41;
        }
      }

      v187 = MEMORY[0x277D84F90];
      sub_226AE24AC(0, v90 & ~(v90 >> 63), 0);
      if (v90 < 0)
      {
        goto LABEL_72;
      }

      v91 = 0;
      v92 = v187;
      v93 = v88 & 0xC000000000000001;
      v94 = v182;
      do
      {
        if (v93)
        {
          MEMORY[0x22AA8AFD0](v91, v186);
        }

        else
        {
          v95 = *(v186 + 8 * v91 + 32);
        }

        sub_226D6776C();
        v187 = v92;
        v96 = v56;
        v98 = *(v92 + 16);
        v97 = *(v92 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_226AE24AC(v97 > 1, v98 + 1, 1);
          v94 = v182;
          v92 = v187;
        }

        ++v91;
        *(v92 + 16) = v98 + 1;
        (*(v83 + 32))(v92 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v98, v96, v94);
        v56 = v96;
      }

      while (v90 != v91);

      v57 = v181;
LABEL_8:
      sub_226CEE0F8(v92);
      (*v153)(v179, v183);
      v55 = v162;
      v58 = v158;
      v50 = v151;
      v54 = v150;
      v53 = v176;
      v48 = v177;
    }

    v100 = v135;
    (*v136)(v135, v81, v57);
    v101 = *v134;
    (*v134)(v170, v100, v57);
    v102 = v139;
    v101(v139, v100, v57);
    v103 = v102;
    v104 = v138;
    sub_226C26BA0(v138, v103);
    v105 = *v137;
    (*v137)(v104, v57);
    v105(v100, v57);
LABEL_44:
    v106 = v152;
    v107 = v186;
    if (!(v186 >> 62))
    {
      v108 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
        goto LABEL_46;
      }

LABEL_68:
      v180 = v82;

      v57 = v181;
      (*v137)(v170, v181);
      (*v153)(v179, v183);
      v55 = v162;
      v50 = v151;
      v54 = v150;
      v53 = v176;
      v48 = v177;
      continue;
    }

    break;
  }

  v108 = sub_226D6EDFC();
  if (!v108)
  {
    goto LABEL_68;
  }

LABEL_46:
  if (v108 >= 1)
  {
    v109 = 0;
    v163 = v107 & 0xC000000000000001;
    v164 = v108;
    do
    {
      if (v163)
      {
        v112 = MEMORY[0x22AA8AFD0](v109, v107);
      }

      else
      {
        v112 = *(v107 + 8 * v109 + 32);
      }

      v180 = v112;
      sub_226D6776C();
      v113 = v168;
      sub_226D68D3C();
      v114 = v174;
      v115 = v82;
      sub_226D6773C();
      if (v82)
      {
        (*v166)(v113, v169);
        if (qword_27D7A5F40 != -1)
        {
          swift_once();
        }

        v116 = sub_226D6E07C();
        __swift_project_value_buffer(v116, qword_27D7A7CC8);
        v117 = v82;
        v118 = sub_226D6E05C();
        v119 = sub_226D6E9CC();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *v120 = v141;
          v122 = v115;
          v123 = _swift_stdlib_bridgeErrorToNSError();
          *(v120 + 4) = v123;
          *v121 = v123;
          _os_log_impl(&dword_226AB4000, v118, v119, "Failed to open sealed BankCredential with error: %@", v120, 0xCu);
          sub_226AC47B0(v121, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v121, -1, -1);
          MEMORY[0x22AA8BEE0](v120, -1, -1);
        }

        (*v147)(v173, v184, v182);
        v124 = v172;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_226BBB90C(0, v124[2] + 1, 1, v124);
        }

        v125 = v115;
        v127 = v124[2];
        v126 = v124[3];
        v107 = v186;
        if (v127 >= v126 >> 1)
        {
          v124 = sub_226BBB90C(v126 > 1, v127 + 1, 1, v124);
          v125 = v115;
        }

        v110 = v182;
        (*(v106 + 8))(v184, v182);
        v124[2] = v127 + 1;
        v111 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v172 = v124;
        (*(v106 + 32))(v124 + v111 + *(v106 + 72) * v127, v173, v110);
        v82 = 0;
      }

      else
      {
        (*v166)(v113, v169);
        (*v144)(v154, v114, v155);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_226BBB934(0, v171[2] + 1, 1, v171);
        }

        v129 = v171[2];
        v128 = v171[3];
        if (v129 >= v128 >> 1)
        {
          v171 = sub_226BBB934(v128 > 1, v129 + 1, 1, v171);
        }

        v130 = v146;
        v131 = v155;
        (*(v146 + 8))(v174, v155);
        (*v165)(v184, v182);
        v132 = v171;
        v171[2] = v129 + 1;
        (*(v130 + 32))(v132 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v129, v154, v131);
        v56 = v145;
      }

      ++v109;
    }

    while (v164 != v109);
    goto LABEL_68;
  }

LABEL_73:
  __break(1u);
}