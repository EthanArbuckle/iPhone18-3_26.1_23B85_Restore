uint64_t sub_226D044E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226D04570()
{
  sub_226D04674(319, &qword_28105F538, MEMORY[0x277CC8058], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_226D04674(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_226D6D52C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226D04674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t BankConnectServiceImplementation.revokeConnectionAuthorization(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9228, &qword_226D7C9E0);
  v3[110] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[111] = swift_task_alloc();
  v6 = sub_226D682FC();
  v3[112] = v6;
  v7 = *(v6 - 8);
  v3[113] = v7;
  v3[114] = *(v7 + 64);
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v8 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v3[117] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[118] = swift_task_alloc();
  v10 = sub_226D67F1C();
  v3[119] = v10;
  v11 = *(v10 - 8);
  v3[120] = v11;
  v12 = *(v11 + 64) + 15;
  v3[121] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D04894, 0, 0);
}

uint64_t sub_226D04894()
{
  v59 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = (v0 + 16);
  v2 = *(v0 + 864);
  v3 = sub_226D6E07C();
  *(v0 + 976) = __swift_project_value_buffer(v3, qword_27D7A7D10);

  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 864);
    v7 = *(v0 + 856);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(v7, v6, &v58);
    _os_log_impl(&dword_226AB4000, v4, v5, "Revoking consent for consentID: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v10 = *(v0 + 872);
  v11 = *__swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  v12 = sub_226D676AC();
  *(v0 + 984) = v12;
  v13 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  v14 = *(*(v13 + 8) + 8);
  sub_226D6BAEC();
  v15 = *(v0 + 560);
  v16 = *(v0 + 568);
  v17 = __swift_project_boxed_opaque_existential_1((v0 + 536), v15);
  *(v0 + 520) = v15;
  *(v0 + 528) = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  v19 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  v20 = *(*(v19 + 8) + 8);
  sub_226D6BAFC();
  v21 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  v22 = *(*(v21 + 8) + 8);
  sub_226D6BADC();
  *(v0 + 688) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  v23 = __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  sub_226AE532C((v23 + 68), v0 + 696);
  *(v0 + 760) = sub_226D6B5EC();
  *(v0 + 768) = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1((v0 + 736));
  sub_226D6B58C();
  *(v0 + 288) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  sub_226B1B848(v0 + 496, v0 + 256);
  sub_226AE532C(v0 + 576, v0 + 296);
  sub_226AE532C(v0 + 616, v0 + 336);
  sub_226AE532C(v0 + 736, v0 + 376);
  sub_226B1B8B8(v0 + 656, v0 + 816);
  if (*(v0 + 840))
  {
    sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
    sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
    sub_226AC484C((v0 + 816), v0 + 776);
  }

  else
  {
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v25 + 8))(v24, v26);
    v27 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v28 = sub_226D6E36C();

    v29 = [v27 initWithBundleIdentifier_];

    *(v0 + 800) = sub_226B42B94();
    *(v0 + 808) = MEMORY[0x277CC85E8];
    *(v0 + 776) = v29;
    sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
    sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
    if (*(v0 + 840))
    {
      sub_226AC47B0(v0 + 816, &qword_27D7A6918, &unk_226D7BBC0);
    }
  }

  v30 = *(v0 + 888);
  v31 = *(v0 + 880);
  v32 = *(v0 + 872);
  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  sub_226AC484C((v0 + 776), v0 + 416);
  sub_226AC484C((v0 + 696), v0 + 456);
  v35 = *(v0 + 464);
  *(v0 + 208) = *(v0 + 448);
  *(v0 + 224) = v35;
  *(v0 + 240) = *(v0 + 480);
  v36 = *(v0 + 400);
  *(v0 + 144) = *(v0 + 384);
  *(v0 + 160) = v36;
  v37 = *(v0 + 432);
  *(v0 + 176) = *(v0 + 416);
  *(v0 + 192) = v37;
  v38 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 320);
  *(v0 + 96) = v38;
  v39 = *(v0 + 368);
  *(v0 + 112) = *(v0 + 352);
  *(v0 + 128) = v39;
  v40 = *(v0 + 272);
  *v1 = *(v0 + 256);
  *(v0 + 32) = v40;
  v41 = *(v0 + 304);
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 64) = v41;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
  v42 = swift_task_alloc();
  v42[2] = v12;
  v42[3] = v32;
  v42[4] = v34;
  v42[5] = v33;
  v42[6] = v1;
  sub_226D6EB7C();
  v43 = *(v0 + 944);
  v44 = *(v0 + 936);
  v45 = *(v0 + 928);
  v46 = *(v0 + 904);
  v47 = *(v0 + 896);
  v48 = *(v0 + 888);
  v57 = v12;
  v49 = *(v0 + 880);

  v50 = *(v49 + 48);
  *(v0 + 992) = *(v48 + *(v49 + 64));
  sub_226BAE320(v48, v43);
  v51 = *(v46 + 32);
  *(v0 + 1000) = v51;
  *(v0 + 1008) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v51(v45, v48 + v50, v47);
  ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(*(v43 + *(v44 + 20)), *(v43 + *(v44 + 24)));
  v52 = swift_task_alloc();
  *(v0 + 1016) = v52;
  *v52 = v0;
  v52[1] = sub_226D04F34;
  v53 = *(v0 + 872);
  v54 = *(v0 + 864);
  v55 = *(v0 + 856);

  return sub_226D07264(v55, v54, v57);
}

uint64_t sub_226D04F34()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v7 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v4 = *(v2 + 992);

    v5 = sub_226D05720;
  }

  else
  {
    v5 = sub_226D05050;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D05050()
{
  v18 = v0;
  v1 = v0[122];
  v2 = v0[108];

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[108];
    v6 = v0[107];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v17);
    _os_log_impl(&dword_226AB4000, v3, v4, "Successfully cleaned up local consent for consentID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = v0[116];
  __swift_project_boxed_opaque_existential_1((v0[109] + 16), *(v0[109] + 40));
  v10 = sub_226D682EC();
  v12 = v11;
  v0[129] = v11;
  v13 = *(MEMORY[0x277CC8088] + 4);
  v14 = swift_task_alloc();
  v0[130] = v14;
  v15 = sub_226B41FC0();
  *v14 = v0;
  v14[1] = sub_226D05214;

  return MEMORY[0x28211A3F8](v10, v12, &type metadata for BankConnectEnvironmentImplementation, v15);
}

uint64_t sub_226D05214(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v3 = *(*v1 + 1032);
  v5 = *v1;
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_226D05334, 0, 0);
}

uint64_t sub_226D05334()
{
  v16 = v0[125];
  v17 = v0[124];
  v18 = v0[126];
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  (*(v3 + 16))(v1, v0[116], v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[132] = v10;
  *(v10 + 16) = v5;
  v16(v10 + v8, v1, v4);
  *(v10 + v9) = v17;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v7;
  v11[1] = v6;
  v12 = *(MEMORY[0x277CC7780] + 4);
  v19 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v13 = swift_task_alloc();
  v0[133] = v13;
  *v13 = v0;
  v13[1] = sub_226D054E4;
  v14 = v0[131];

  return v19();
}

uint64_t sub_226D054E4()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  *(*v1 + 1072) = v0;

  v5 = *(v2 + 1056);

  if (v0)
  {
    v6 = sub_226D0581C;
  }

  else
  {
    v6 = sub_226D05618;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D05618()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 904);
  v7 = *(v0 + 896);
  v8 = *(v0 + 888);

  (*(v6 + 8))(v4, v7);
  sub_226D094F4(v3, type metadata accessor for ManagedConsentDeleter.Metadata);
  sub_226B1B944(v0 + 16);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226D05720()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);

  (*(v3 + 8))(v2, v4);
  sub_226D094F4(v1, type metadata accessor for ManagedConsentDeleter.Metadata);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 968);
  v7 = *(v0 + 944);
  v8 = *(v0 + 928);
  v9 = *(v0 + 920);
  v10 = *(v0 + 888);
  sub_226B1B944(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226D0581C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 944);
  v3 = *(v0 + 928);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);

  (*(v4 + 8))(v3, v5);
  sub_226D094F4(v2, type metadata accessor for ManagedConsentDeleter.Metadata);
  v6 = *(v0 + 1072);
  v7 = *(v0 + 968);
  v8 = *(v0 + 944);
  v9 = *(v0 + 928);
  v10 = *(v0 + 920);
  v11 = *(v0 + 888);
  sub_226B1B944(v0 + 16);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t BankConnectServiceImplementation.revokeConsents(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[110] = v2;
  v3[109] = a2;
  v3[108] = a1;
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v3[111] = v4;
  v5 = *(v4 - 8);
  v3[112] = v5;
  v3[113] = *(v5 + 64);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v6 = sub_226D67F1C();
  v3[118] = v6;
  v7 = *(v6 - 8);
  v3[119] = v7;
  v8 = *(v7 + 64) + 15;
  v3[120] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D05A74, 0, 0);
}

uint64_t sub_226D05A74()
{
  v76 = v0;
  if (qword_27D7A5F60 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v1 = (v0 + 16);
    v2 = *(v0 + 872);
    v3 = sub_226D6E07C();
    *(v0 + 968) = __swift_project_value_buffer(v3, qword_27D7A7D10);

    v4 = sub_226D6E05C();
    v5 = sub_226D6E9EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 872);
      v7 = *(v0 + 864);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v75 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_226AC4530(v7, v6, &v75);
      _os_log_impl(&dword_226AB4000, v4, v5, "Revoking consents for institutionID: %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    v10 = *(v0 + 880);
    v11 = *__swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v12 = sub_226D676AC();
    *(v0 + 976) = v12;
    v13 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v14 = *(*(v13 + 8) + 8);
    sub_226D6BAEC();
    v15 = *(v0 + 560);
    v16 = *(v0 + 568);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 536), v15);
    *(v0 + 520) = v15;
    *(v0 + 528) = *(v16 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
    v19 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v20 = *(*(v19 + 8) + 8);
    sub_226D6BAFC();
    v21 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v22 = *(*(v21 + 8) + 8);
    sub_226D6BADC();
    *(v0 + 688) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    v23 = __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    sub_226AE532C((v23 + 68), v0 + 696);
    *(v0 + 760) = sub_226D6B5EC();
    *(v0 + 768) = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1((v0 + 736));
    sub_226D6B58C();
    *(v0 + 288) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_226B1B848(v0 + 496, v0 + 256);
    sub_226AE532C(v0 + 576, v0 + 296);
    sub_226AE532C(v0 + 616, v0 + 336);
    sub_226AE532C(v0 + 736, v0 + 376);
    sub_226B1B8B8(v0 + 656, v0 + 816);
    if (*(v0 + 840))
    {
      sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
      sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
      sub_226AC484C((v0 + 816), v0 + 776);
    }

    else
    {
      v24 = *(v0 + 960);
      v25 = *(v0 + 952);
      v26 = *(v0 + 944);
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v25 + 8))(v24, v26);
      v27 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v28 = sub_226D6E36C();

      v29 = [v27 initWithBundleIdentifier_];

      *(v0 + 800) = sub_226B42B94();
      *(v0 + 808) = MEMORY[0x277CC85E8];
      *(v0 + 776) = v29;
      sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
      sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
      if (*(v0 + 840))
      {
        sub_226AC47B0(v0 + 816, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    v30 = *(v0 + 872);
    v31 = *(v0 + 864);
    sub_226AC484C((v0 + 776), v0 + 416);
    sub_226AC484C((v0 + 696), v0 + 456);
    v32 = *(v0 + 464);
    *(v0 + 208) = *(v0 + 448);
    *(v0 + 224) = v32;
    *(v0 + 240) = *(v0 + 480);
    v33 = *(v0 + 400);
    *(v0 + 144) = *(v0 + 384);
    *(v0 + 160) = v33;
    v34 = *(v0 + 432);
    *(v0 + 176) = *(v0 + 416);
    *(v0 + 192) = v34;
    v35 = *(v0 + 336);
    *(v0 + 80) = *(v0 + 320);
    *(v0 + 96) = v35;
    v36 = *(v0 + 368);
    *(v0 + 112) = *(v0 + 352);
    *(v0 + 128) = v36;
    v37 = *(v0 + 272);
    *v1 = *(v0 + 256);
    *(v0 + 32) = v37;
    v38 = *(v0 + 304);
    *(v0 + 48) = *(v0 + 288);
    *(v0 + 64) = v38;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
    v39 = swift_task_alloc();
    v39[2] = v12;
    v39[3] = v31;
    v39[4] = v30;
    v39[5] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9230, &qword_226D7CA08);
    sub_226D6EB7C();
    v71 = v10;

    v40 = *(v0 + 856);
    *(v0 + 984) = v40;
    v41 = *(v40 + 16);
    *(v0 + 992) = v41;
    v72 = v41;
    if (!v41)
    {
      break;
    }

    v42 = *(v0 + 896);
    v73 = *(*(v0 + 888) + 20);
    v74 = *(v0 + 936);
    v43 = v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v44 = *(v42 + 72);
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      v46 = *(v0 + 936);
      sub_226D0948C(v43, v46, type metadata accessor for ManagedConsentDeleter.Metadata);
      v47 = *(v74 + v73);

      sub_226D094F4(v46, type metadata accessor for ManagedConsentDeleter.Metadata);
      v48 = *(v47 + 16);
      v49 = v45[2];
      v50 = v49 + v48;
      if (__OFADD__(v49, v48))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v50 <= v45[3] >> 1)
      {
        if (*(v47 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v49 <= v50)
        {
          v52 = v49 + v48;
        }

        else
        {
          v52 = v49;
        }

        v45 = sub_226BBB630(isUniquelyReferenced_nonNull_native, v52, 1, v45);
        if (*(v47 + 16))
        {
LABEL_21:
          v53 = (v45[3] >> 1) - v45[2];
          v54 = *(type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0) - 8);
          if (v53 < v48)
          {
            goto LABEL_36;
          }

          v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v56 = *(v54 + 72);
          swift_arrayInitWithCopy();

          if (v48)
          {
            v57 = v45[2];
            v58 = __OFADD__(v57, v48);
            v59 = v57 + v48;
            if (v58)
            {
              goto LABEL_37;
            }

            v45[2] = v59;
          }

          goto LABEL_11;
        }
      }

      if (v48)
      {
        goto LABEL_34;
      }

LABEL_11:
      v43 += v44;
      if (!--v41)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v45 = MEMORY[0x277D84F90];
LABEL_26:
  v60 = 0;
  v61 = *(v0 + 896);
  v62 = *(v0 + 888);
  do
  {
    v63 = v60;
    if (v72 == v60)
    {
      break;
    }

    if (v60 >= *(v40 + 16))
    {
      goto LABEL_35;
    }

    v64 = *(v0 + 928);
    sub_226D0948C(v40 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60++, v64, type metadata accessor for ManagedConsentDeleter.Metadata);
    v65 = *(v64 + *(v62 + 24));
    sub_226D094F4(v64, type metadata accessor for ManagedConsentDeleter.Metadata);
  }

  while (v65 != 1);
  ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(v45, v72 != v63);

  *(v0 + 1000) = __swift_project_boxed_opaque_existential_1(v71 + 2, v71[5])[51];
  v66 = *(MEMORY[0x277CC81B0] + 4);

  v67 = swift_task_alloc();
  *(v0 + 1008) = v67;
  *v67 = v0;
  v67[1] = sub_226D06300;
  v68 = *(v0 + 872);
  v69 = *(v0 + 864);

  return MEMORY[0x28211A630](v69, v68);
}

uint64_t sub_226D06300()
{
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 1000);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D06418, 0, 0);
}

uint64_t sub_226D06418()
{
  v31 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 872);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 872);
    v6 = *(v0 + 864);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v30);
    _os_log_impl(&dword_226AB4000, v3, v4, "Successfully cleaned up local consent for institutionID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  if (*(v0 + 992))
  {
    *(v0 + 1016) = 0;
    v13 = *(v0 + 984);
    if (*(v13 + 16))
    {
      v14 = *(v0 + 920);
      v15 = *(v0 + 880);
      v16 = *(*(v0 + 896) + 80);
      *(v0 + 1080) = v16;
      sub_226D0948C(v13 + ((v16 + 32) & ~v16), v14, type metadata accessor for ManagedConsentDeleter.Metadata);
      v17 = sub_226D682EC();
      v19 = v18;
      *(v0 + 1024) = v17;
      *(v0 + 1032) = v18;
      __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
      v20 = *(MEMORY[0x277CC8088] + 4);
      v21 = swift_task_alloc();
      *(v0 + 1040) = v21;
      v12 = sub_226B41FC0();
      *v21 = v0;
      v21[1] = sub_226D066CC;
      v11 = &type metadata for BankConnectEnvironmentImplementation;
      v9 = v17;
      v10 = v19;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x28211A3F8](v9, v10, v11, v12);
  }

  else
  {
    v22 = *(v0 + 984);
    v23 = *(v0 + 960);
    v24 = *(v0 + 936);
    v25 = *(v0 + 928);
    v26 = *(v0 + 920);
    v27 = *(v0 + 912);

    sub_226B1B944(v0 + 16);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_226D066CC(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v4 = *v1;
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_226D067CC, 0, 0);
}

uint64_t sub_226D067CC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 912);
  v4 = *(v0 + 880);
  v5 = (*(v0 + 1080) + 24) & ~*(v0 + 1080);
  v6 = *(v0 + 904) + v5;
  sub_226BAE320(*(v0 + 920), v3);
  v7 = swift_allocObject();
  *(v0 + 1056) = v7;
  *(v7 + 16) = v4;
  sub_226BAE320(v3, v7 + v5);
  v8 = (v7 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v8 = v2;
  v8[1] = v1;
  v9 = *(MEMORY[0x277CC7780] + 4);
  v13 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v10 = swift_task_alloc();
  *(v0 + 1064) = v10;
  *v10 = v0;
  v10[1] = sub_226D06924;
  v11 = *(v0 + 1048);

  return v13();
}

uint64_t sub_226D06924()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  v2[134] = v0;

  v5 = v2[132];
  if (v0)
  {
    v6 = v2[123];

    v7 = sub_226D06C68;
  }

  else
  {

    v7 = sub_226D06A6C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D06A6C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 992);

  if (v2 + 1 == v3)
  {
    v8 = *(v0 + 984);
    v9 = *(v0 + 960);
    v10 = *(v0 + 936);
    v11 = *(v0 + 928);
    v12 = *(v0 + 920);
    v13 = *(v0 + 912);

    sub_226B1B944(v0 + 16);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 1016) + 1;
    *(v0 + 1016) = v16;
    v17 = *(v0 + 984);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v0 + 920);
      v19 = *(v0 + 896);
      v20 = *(v0 + 880);
      v21 = *(v19 + 80);
      *(v0 + 1080) = v21;
      sub_226D0948C(v17 + ((v21 + 32) & ~v21) + *(v19 + 72) * v16, v18, type metadata accessor for ManagedConsentDeleter.Metadata);
      v22 = sub_226D682EC();
      v24 = v23;
      *(v0 + 1024) = v22;
      *(v0 + 1032) = v23;
      __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
      v25 = *(MEMORY[0x277CC8088] + 4);
      v26 = swift_task_alloc();
      *(v0 + 1040) = v26;
      v7 = sub_226B41FC0();
      *v26 = v0;
      v26[1] = sub_226D066CC;
      v6 = &type metadata for BankConnectEnvironmentImplementation;
      v4 = v22;
      v5 = v24;
    }

    return MEMORY[0x28211A3F8](v4, v5, v6, v7);
  }
}

uint64_t sub_226D06C68()
{
  v1 = v0[131];
  v2 = v0[122];

  v3 = v0[134];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[115];
  v8 = v0[114];
  sub_226B1B944((v0 + 2));

  v9 = v0[1];

  return v9();
}

id sub_226D06D28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v43 = a4;
  v44 = a3;
  v45[1] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D682FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() currentQueryGenerationToken];
  v45[0] = 0;
  v18 = [a1 setQueryGenerationFromToken:v17 error:v45];

  v20 = v45[0];
  if (v18)
  {
    v39 = v13;
    MEMORY[0x28223BE20](v19);
    v21 = v43;
    *(&v39 - 4) = v44;
    *(&v39 - 3) = v21;
    *(&v39 - 2) = a1;
    *(&v39 - 1) = a2;
    v22 = v20;
    result = sub_226D6EB8C();
    if (!v6)
    {
      v24 = v16;
      v26 = v43;
      v25 = v44;
      v27 = sub_226D09680();
      MEMORY[0x28223BE20](v27);
      *(&v39 - 4) = v41;
      *(&v39 - 3) = v25;
      *(&v39 - 2) = v26;
      *(&v39 - 1) = a1;
      v28 = v42;
      sub_226D6EB8C();
      v45[0] = 0;
      v31 = [a1 save_];
      v32 = v45[0];
      if (v31)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9228, &qword_226D7C9E0);
        v34 = *(v33 + 48);
        v35 = v28;
        v36 = *(v33 + 64);
        v37 = v40;
        sub_226BAE320(v35, v40);
        (*(v39 + 32))(v37 + v34, v24, v12);
        *(v37 + v36) = v27;
        result = v32;
      }

      else
      {
        v38 = v45[0];

        sub_226D6D04C();

        swift_willThrow();
        sub_226D094F4(v28, type metadata accessor for ManagedConsentDeleter.Metadata);
        result = (*(v39 + 8))(v24, v12);
      }
    }
  }

  else
  {
    v29 = v45[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D07264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_226D07288, 0, 0);
}

uint64_t sub_226D07288()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  sub_226D6EB8C();

  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 64) = v6;
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = swift_task_alloc();
    v9[2] = v7;
    v9[3] = v6;
    v9[4] = v8;
    sub_226D6EB8C();

    if (*(v0 + 88) == 1)
    {
      *(v0 + 72) = __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 16), *(*(v0 + 56) + 40))[51];
      v10 = *(MEMORY[0x277CC81B0] + 4);

      v11 = swift_task_alloc();
      *(v0 + 80) = v11;
      *v11 = v0;
      v11[1] = sub_226D07484;

      return MEMORY[0x28211A630](v7, v6);
    }

    v12 = *(v0 + 64);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_226D07484()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_226D075BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_226D0766C;

  return sub_226D078F0(a3, a4);
}

uint64_t sub_226D0766C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226D07768, 0, 0);
}

uint64_t sub_226D07768()
{
  v12 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7D10);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v11);
    _os_log_impl(&dword_226AB4000, v3, v4, "Successfully revoked consent for consentID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_226D078F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D682FC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D079B4, 0, 0);
}

uint64_t sub_226D079B4()
{
  v9 = *(v0 + 16);
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 16), *(*(v0 + 32) + 40));
  v2 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v1[4]);
  v3 = sub_226D6C2AC();
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  v5 = *(MEMORY[0x277CC7D90] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_226D07ACC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282119B28](v6, &unk_226D7CA30, v4, v7);
}

uint64_t sub_226D07ACC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_226D07C50;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_226D07BE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D07BE8()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226D07C50()
{
  v30 = v0;
  v1 = v0[8];
  v2 = v0[9];

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[2];
  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_27D7A7D10);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9CC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[11];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v17 = 136315394;
    v18 = sub_226D682EC();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_226AC4530(v18, v20, &v29);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v27 = v23;
    _os_log_impl(&dword_226AB4000, v10, v11, "Unable to revoke consent for consentID: %s, failed with error: %@. The consent has been removed from the device.", v17, 0x16u);
    sub_226AC47B0(v27, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = v0[7];

  v25 = v0[1];

  return v25();
}

unint64_t sub_226D07EE4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v46 = a2;
  v39 = a3;
  v50[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v50[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v50];

  v14 = v50[0];
  if (!v13)
  {
    v33 = v50[0];
    sub_226D6D04C();

LABEL_21:
    result = swift_willThrow();
    goto LABEL_22;
  }

  sub_226D6794C();
  v15 = v14;
  result = sub_226D6791C();
  v17 = v3;
  if (!v3)
  {
    v18 = result;
    if (result >> 62)
    {
      goto LABEL_30;
    }

    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v49 = v17;
    v43 = a1;
    if (v19)
    {
      v20 = 0;
      v41 = v18 & 0xFFFFFFFFFFFFFF8;
      v42 = v18 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      v40 = v18;
      while (1)
      {
        if (v42)
        {
          v22 = MEMORY[0x22AA8AFD0](v20, v18);
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v20 >= *(v41 + 16))
          {
            goto LABEL_29;
          }

          v22 = *(v18 + 8 * v20 + 32);
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            v19 = sub_226D6EDFC();
            goto LABEL_5;
          }
        }

        v47 = v23;
        v48 = v22;
        v17 = v19;
        v24 = v9;
        v25 = [v22 consentID];
        v26 = sub_226D6E39C();
        v28 = v27;

        MEMORY[0x28223BE20](v29);
        *(&v38 - 6) = v26;
        *(&v38 - 5) = v28;
        v30 = v46;
        *(&v38 - 4) = v43;
        *(&v38 - 3) = v30;
        *(&v38 - 16) = 1;
        v31 = v49;
        sub_226D6EB8C();
        v49 = v31;
        if (v31)
        {

          goto LABEL_22;
        }

        v9 = v24;
        sub_226D0948C(v11, v24, type metadata accessor for ManagedConsentDeleter.Metadata);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_226BBB9A8(0, v21[2] + 1, 1, v21);
        }

        v18 = v40;
        a1 = v21[2];
        v32 = v21[3];
        if (a1 >= v32 >> 1)
        {
          v21 = sub_226BBB9A8(v32 > 1, a1 + 1, 1, v21);
        }

        sub_226D094F4(v11, type metadata accessor for ManagedConsentDeleter.Metadata);
        v21[2] = a1 + 1;
        sub_226BAE320(v9, v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * a1);
        ++v20;
        if (v47 == v19)
        {
          goto LABEL_24;
        }
      }
    }

    v21 = MEMORY[0x277D84F90];
LABEL_24:

    v50[0] = 0;
    v35 = [v43 save_];
    v36 = v50[0];
    if (v35)
    {
      *v39 = v21;
      result = v36;
      goto LABEL_22;
    }

    v37 = v50[0];

    sub_226D6D04C();

    goto LABEL_21;
  }

LABEL_22:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D08368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_226D682FC();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D08488, 0, 0);
}

uint64_t sub_226D08488()
{
  v1 = v0[3];
  (*(v0[10] + 16))(v0[11], v1, v0[9]);
  v2 = *(v1 + *(type metadata accessor for ManagedConsentDeleter.Metadata(0) + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[7];
    v5 = (v0[8] + *(v0[6] + 20));
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v10 = v0[8];
      sub_226D0948C(v6, v10, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
      v12 = *v5;
      v11 = v5[1];

      sub_226D094F4(v10, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226BBAB0C(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_226BBAB0C((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v9 = &v8[16 * v14];
        *(v9 + 4) = v12;
        *(v9 + 5) = v11;
      }

      v6 += v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v0[12] = v8;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_226D08670;
  v16 = v0[11];
  v17 = v0[2];

  return sub_226D078F0(v16, v8);
}

uint64_t sub_226D08670()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_226D087E4, 0, 0);
}

uint64_t sub_226D087E4()
{
  v14 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7D10);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v13);
    _os_log_impl(&dword_226AB4000, v3, v4, "Successfully revoked consent for consentID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_226D08980(uint64_t a1, unint64_t a2)
{
  sub_226D6794C();
  result = sub_226D6788C();
  if (!v2)
  {
    if (result)
    {
      return sub_226D6830C();
    }

    else
    {
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v6 = sub_226D6E07C();
      __swift_project_value_buffer(v6, qword_27D7A7D10);

      v7 = sub_226D6E05C();
      v8 = sub_226D6E9CC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_226AC4530(a1, a2, &v15);
        _os_log_impl(&dword_226AB4000, v7, v8, "Failed to get consent from store for consentID: %s. Unable to revoke the token.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        MEMORY[0x22AA8BEE0](v10, -1, -1);
        MEMORY[0x22AA8BEE0](v9, -1, -1);
      }

      v11 = sub_226D6A0DC();
      sub_226BD7738();
      swift_allocError();
      v13 = v12;
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_226D6EEFC();

      v15 = 0xD000000000000025;
      v16 = 0x8000000226D87C70;
      MEMORY[0x22AA8A510](a1, a2);
      MEMORY[0x22AA8A510](46, 0xE100000000000000);
      v14 = v16;
      *v13 = v15;
      v13[1] = v14;
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277CC7AC0], v11);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226D08BE8@<X0>(uint64_t *a1@<X8>)
{
  sub_226D6794C();
  result = sub_226D678EC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226D08C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D682FC();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_226D6C70C();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D08D74, 0, 0);
}

uint64_t sub_226D08D74()
{
  v1 = v0[10];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);

  sub_226D6C6FC();
  v3 = *(MEMORY[0x277CC7D40] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_226D08E54;
  v5 = v0[10];
  v6 = v0[2];

  return MEMORY[0x282119AD8](v5);
}

uint64_t sub_226D08E54()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D0900C, 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_226D0900C()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

void sub_226D0907C(uint64_t *a1@<X8>)
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
      *a1 = 0;
      a1[1] = 0;
    }
  }
}

unint64_t sub_226D09130@<X0>(BOOL *a1@<X8>)
{
  sub_226D6794C();
  result = sub_226D6791C();
  if (!v1)
  {
    if (result >> 62)
    {
      v4 = sub_226D6EDFC();
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a1 = v4 == 0;
  }

  return result;
}

uint64_t sub_226D09208(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D682FC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226AE5A84;

  return sub_226D075BC(a1, v10, v1 + v6, v9, v11, v12);
}

unint64_t sub_226D09348@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_226D07EE4(v1[2], v1[5], a1);
}

uint64_t sub_226D09368(uint64_t a1)
{
  v4 = *(type metadata accessor for ManagedConsentDeleter.Metadata(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AE5A84;

  return sub_226D08368(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_226D0948C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D094F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D09554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D08C54(a1, v4, v5, v6);
}

void sub_226D09620(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_226D0907C(a1);
}

unint64_t sub_226D09640@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_226D09130(a1);
}

uint64_t sub_226D09660()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_226D08980(v0[2], v0[3]);
}

uint64_t sub_226D09680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  sub_226D6EB8C();
  return v1;
}

uint64_t sub_226D09834()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  type metadata accessor for ManagedConsentDeleter.Metadata(0);
  return sub_226D6EB8C();
}

uint64_t sub_226D098B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_226D08BE8(a1);
}

void sub_226D098E8(uint64_t a1, void *a2)
{
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  (*(v7 + 8))(&v16, v6, v7);
  v8 = v16;
  sub_226D6EB8C();
  if (v3)
  {
    sub_226CCE0AC();
    swift_allocError();
    *v9 = v3;
    swift_willThrow();
  }

  else
  {
    v10 = v16;
    v16 = v8;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    v12 = BankConnectPaymentPassDataSource.isDynamicCardArtEnabled(for:)(v11);
    if (!v13)
    {
      if (v12)
      {
        if (v10)
        {
          goto LABEL_10;
        }

        v16 = v8;
        v14 = 0;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_10;
        }

        v16 = v8;
        v14 = 1;
      }

      v15._countAndFlagsBits = a1;
      v15._object = a2;
      BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(v14, v15);
    }
  }

LABEL_10:
}

void sub_226D09A3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v19[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v19];

  v11 = v19[0];
  if (v10)
  {
    sub_226D69F0C();
    v12 = v11;
    v13 = sub_226D69DDC();
    sub_226B2A4F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_226D70840;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_226B16404();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;

    v15 = sub_226D6E91C();
    [v13 setPredicate_];

    v16 = sub_226D6EBAC();
    if (!v4)
    {
      *a4 = v16 == 1;
    }
  }

  else
  {
    v17 = v19[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D09C48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226D09C98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_226D09F24()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[3] = v2;
  if (v2 && (v3 = *(v1 + 120), Strong = swift_unknownObjectWeakLoadStrong(), (v0[4] = Strong) != 0))
  {
    v5 = qword_28105F640;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    v0[5] = __swift_project_value_buffer(v7, qword_28105F648);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9BC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Retrieving enabled topics from delegate", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    v11 = off_283A6E600;
    v12 = type metadata accessor for OrderWebServiceCoordinator();
    v17 = (v11 + *v11);
    v13 = v11[1];
    v14 = swift_task_alloc();
    v0[6] = v14;
    *v14 = v0;
    v14[1] = sub_226D0A17C;

    return (v17)(v12, &off_283A6E5F8);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_226D0A17C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  v7 = *(v3 + 16);
  if (v1)
  {
    v8 = sub_226D0A450;
  }

  else
  {
    v8 = sub_226D0A2B0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_226D0A2B0()
{
  v18 = v0;
  v1 = v0[7];
  v2 = v0[5];

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x22AA8A6A0](v5, MEMORY[0x277D837D0]);
    v10 = sub_226AC4530(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Updating enabled topics to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v11 = v0[7];
  v13 = v0[3];
  v12 = v0[4];
  v14 = sub_226D6E5CC();

  [v13 _setEnabledTopics_];

  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

uint64_t sub_226D0A450()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v9 = v0[3];
  v8 = v0[4];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to retrieve enabled topics with error: %@", v10, 0xCu);
    sub_226B17298(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v0[4];
    swift_unknownObjectRelease();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_226D0A5C4()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0A660, v0, 0);
}

uint64_t sub_226D0A660()
{
  v1 = v0[2];
  *(v1 + 128) = 1;
  v2 = *(v1 + 136);
  v0[4] = v2;
  if (v2)
  {
    v3 = qword_28105F640;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_226D6E07C();
    v0[5] = __swift_project_value_buffer(v4, qword_28105F648);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9BC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226AB4000, v5, v6, "Awaiting concurrent enabled topics update", v7, 2u);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v8 = *(MEMORY[0x277D857E0] + 4);
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_226D0A8F8;
  }

  else
  {
    v10 = v0[2];
    v11 = v0[3];
    v12 = sub_226D6E79C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = sub_226D0BCE4();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v13;
    v14[4] = v10;
    swift_retain_n();
    v15 = sub_226B60364(0, 0, v11, &unk_226D7CC28, v14);
    v0[9] = v15;
    v16 = *(v10 + 136);
    *(v10 + 136) = v15;

    v17 = *(MEMORY[0x277D857E0] + 4);
    v18 = swift_task_alloc();
    v0[10] = v18;
    *v18 = v0;
    v18[1] = sub_226D0AF4C;
  }

  return MEMORY[0x282200460]();
}

uint64_t sub_226D0A8F8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D0AA08, v2, 0);
}

uint64_t sub_226D0AA08()
{
  v1 = v0[2];
  if (*(v1 + 128) == 1)
  {
    v2 = *(v1 + 136);
    v0[7] = v2;
    if (v2)
    {
      v3 = v0[5];

      v4 = sub_226D6E05C();
      v5 = sub_226D6E9BC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "Awaiting another concurrent enabled topics update", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = *(MEMORY[0x277D857E0] + 4);
      v8 = swift_task_alloc();
      v0[8] = v8;
      *v8 = v0;
      v8[1] = sub_226D0AD2C;
    }

    else
    {
      v18 = v0[4];

      v19 = v0[2];
      v20 = v0[3];
      v21 = sub_226D6E79C();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      v22 = sub_226D0BCE4();
      v23 = swift_allocObject();
      v23[2] = v19;
      v23[3] = v22;
      v23[4] = v19;
      swift_retain_n();
      v24 = sub_226B60364(0, 0, v20, &unk_226D7CC28, v23);
      v0[9] = v24;
      v25 = *(v19 + 136);
      *(v19 + 136) = v24;

      v26 = *(MEMORY[0x277D857E0] + 4);
      v27 = swift_task_alloc();
      v0[10] = v27;
      *v27 = v0;
      v27[1] = sub_226D0AF4C;
    }

    return MEMORY[0x282200460]();
  }

  else
  {
    v9 = v0[5];
    v10 = sub_226D6E05C();
    v11 = sub_226D6E9BC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[4];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226AB4000, v10, v11, "Enabled topics update no longer needed, skipping", v14, 2u);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }

    else
    {
    }

    v15 = v0[3];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_226D0AD2C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D0AE3C, v2, 0);
}

uint64_t sub_226D0AE3C()
{
  v1 = v0[5];
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  v6 = v0[4];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Enabled topics updated already, skipping", v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v8 = v0[3];

  v9 = v0[1];

  return v9();
}

uint64_t sub_226D0AF4C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D0B05C, v2, 0);
}

uint64_t sub_226D0B05C()
{
  v1 = v0[9];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226D0B0E4()
{
  *(*(v0 + 16) + 128) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226D0B17C;
  v2 = *(v0 + 16);

  return sub_226D09F04();
}

uint64_t sub_226D0B17C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D0B28C, v2, 0);
}

uint64_t sub_226D0B28C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226D0B2F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226D0B318, v2, 0);
}

uint64_t sub_226D0B318()
{
  v20 = v0;
  v1 = *(v0[4] + 112);
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = objc_allocWithZone(MEMORY[0x277CEEA00]);
    v5 = v1;
    v6 = sub_226D6E36C();
    v7 = sub_226D6E36C();
    v8 = [v4 initWithTopic:v6 identifier:v7];

    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    v9 = v0[3];
    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F648);

    v11 = sub_226D6E05C();
    v12 = sub_226D6E9EC();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[2];
      v13 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_226AC4530(v14, v13, &v19);
      _os_log_impl(&dword_226AB4000, v11, v12, "Requesting token for topic %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    [v5 requestTokenForInfo_];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_226D0B53C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226D0B560, v2, 0);
}

uint64_t sub_226D0B560()
{
  v20 = v0;
  v1 = *(v0[4] + 112);
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = objc_allocWithZone(MEMORY[0x277CEEA00]);
    v5 = v1;
    v6 = sub_226D6E36C();
    v7 = sub_226D6E36C();
    v8 = [v4 initWithTopic:v6 identifier:v7];

    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    v9 = v0[3];
    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F648);

    v11 = sub_226D6E05C();
    v12 = sub_226D6E9EC();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[2];
      v13 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_226AC4530(v14, v13, &v19);
      _os_log_impl(&dword_226AB4000, v11, v12, "Invalidating token for topic %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    [v5 invalidateTokenForInfo_];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_226D0B784()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226D0B814(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_28105F640 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F648);
  v7 = a3;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  if (os_log_type_enabled(v8, v9))
  {
    v22 = a1;
    v23 = a2;
    v10 = swift_slowAlloc();
    result = swift_slowAlloc();
    v24 = result;
    *v10 = 136315138;
    if (!a3)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v12 = result;

    v13 = [v7 topic];
    v14 = sub_226D6E39C();
    v16 = v15;

    v17 = sub_226AC4530(v14, v16, &v24);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v8, v9, "Received token for topic %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);

    a1 = v22;
    a2 = v23;
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (a2 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = [v7 topic];
  v19 = sub_226D6E39C();
  v21 = v20;

  sub_226C10490(a1, a2, v19, v21);

  return swift_unknownObjectRelease();
}

void sub_226D0BA74(void *a1)
{
  if (qword_28105F640 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F648);
  v3 = a1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = &selRef_transactionAuthor;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    if (!a1)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = v8;
    v10 = [v3 topic];

    if (!v10)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v11 = sub_226D6E39C();
    v13 = v12;

    v14 = sub_226AC4530(v11, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v4, v5, "Received message for topic %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);

    v6 = &selRef_transactionAuthor;
  }

  else
  {
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = [v3 v6[51]];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = sub_226D6E39C();
  v19 = v18;

  sub_226C10DE8(v17, v19);

  swift_unknownObjectRelease();
}

unint64_t sub_226D0BCE4()
{
  result = qword_281060F68[0];
  if (!qword_281060F68[0])
  {
    type metadata accessor for PushNotificationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281060F68);
  }

  return result;
}

uint64_t sub_226D0BD38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D0B0C4(a1, v4, v5, v6);
}

uint64_t sub_226D0BDEC(uint64_t a1)
{
  v35 = sub_226D6D52C();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v36 = *(a1 + 16);
  if (v36)
  {
    v7 = a1;
    v28 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_226D6ED6C();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v32 = a1;
    v33 = v3;
    v30 = v3 + 8;
    v31 = v3 + 16;
    v29 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(v7 + 36))
      {
        goto LABEL_22;
      }

      v37 = v11;
      v15 = *(v7 + 48);
      v17 = v33;
      v16 = v34;
      v18 = v35;
      (*(v33 + 16))(v34, v15 + *(v33 + 72) * v10, v35);
      sub_226D6D4DC();
      (*(v17 + 8))(v16, v18);
      sub_226D6EF6C();
      v19 = *(v38 + 16);
      sub_226D6EF9C();
      v20 = v32;
      sub_226D6EFAC();
      result = sub_226D6EF7C();
      v13 = 1 << *(v20 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v8 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v7 = v20;
      if (v12 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v25 = (v29 + 8 * v14);
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_226AE5444(v10, v12, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_226AE5444(v10, v12, 0);
      }

LABEL_4:
      v11 = v37 + 1;
      v10 = v13;
      if (v37 + 1 == v36)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226D0C0D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_226D6B9BC();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v2[9] = v8;
  v9 = sub_226D67C0C();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = swift_task_alloc();
  v2[13] = v12;
  *v12 = v2;
  v12[1] = sub_226D0C28C;

  return sub_226D0CFB4(v8, a1);
}

uint64_t sub_226D0C28C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226D0CDB0;
  }

  else
  {
    v3 = sub_226D0C3A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D0C3A0()
{
  v61 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v3, &qword_27D7A6D50, &unk_226D75230);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    (*(v5 + 16))(v4, v7, v6);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v60 = v16;
      *v15 = 136315138;
      sub_226D0FF44(&qword_27D7A6E40);
      v17 = sub_226D6F1CC();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_226AC4530(v17, v19, &v60);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_226AB4000, v9, v10, "Failed to find an account with fqaid: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

LABEL_16:
    v51 = v0[12];
    v52 = v0[8];
    v53 = v0[9];
    v55 = v0[6];
    v54 = v0[7];

    v56 = v0[1];

    return v56();
  }

  (*(v2 + 32))(v0[12], v3, v1);
  v21 = sub_226D67B5C();
  v0[15] = v22;
  if (!v22)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v31 = v0[7];
    v32 = v0[4];
    v33 = v0[5];
    v34 = v0[2];
    v35 = sub_226D6E07C();
    __swift_project_value_buffer(v35, qword_28105F710);
    (*(v33 + 16))(v31, v34, v32);
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9AC();
    v38 = os_log_type_enabled(v36, v37);
    v40 = v0[11];
    v39 = v0[12];
    v41 = v0[10];
    v42 = v0[7];
    v44 = v0[4];
    v43 = v0[5];
    if (v38)
    {
      v59 = v0[10];
      v45 = swift_slowAlloc();
      v57 = v37;
      v46 = swift_slowAlloc();
      v60 = v46;
      *v45 = 136315138;
      sub_226D0FF44(&qword_27D7A6E40);
      v47 = sub_226D6F1CC();
      v58 = v39;
      v49 = v48;
      (*(v43 + 8))(v42, v44);
      v50 = sub_226AC4530(v47, v49, &v60);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_226AB4000, v36, v57, "The account is already unlinked: %s.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
      MEMORY[0x22AA8BEE0](v45, -1, -1);

      (*(v40 + 8))(v58, v59);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v39, v41);
    }

    goto LABEL_16;
  }

  v23 = v21;
  v24 = v22;
  v25 = v0[12];
  v26 = v0[8];
  sub_226D67B4C();
  v27 = swift_task_alloc();
  v0[16] = v27;
  *v27 = v0;
  v27[1] = sub_226D0C8EC;
  v28 = v0[8];
  v29 = v0[3];

  return sub_226D0D298(v28, v23, v24);
}

uint64_t sub_226D0C8EC()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[15];
    (*(v3[5] + 8))(v3[8], v3[4]);

    return MEMORY[0x2822009F8](sub_226D0CE4C, 0, 0);
  }

  else
  {
    v5 = v3[15];
    (*(v3[5] + 8))(v3[8], v3[4]);

    v6 = swift_task_alloc();
    v3[18] = v6;
    *v6 = v3;
    v6[1] = sub_226D0CAA4;
    v7 = v3[3];
    v8 = v3[2];

    return sub_226D0DD1C(v8);
  }
}

uint64_t sub_226D0CAA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_226D0CF00;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_226D0CBCC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D0CBCC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[2];
  v4 = *(v0[3] + 16);
  v5 = sub_226D676AC();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v5;
  sub_226D6EB7C();

  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  if (v2)
  {
    (*(v8 + 8))(v0[12], v0[10]);
    v13 = v0[12];
    v14 = v0[8];
    v15 = v0[9];
    v17 = v0[6];
    v16 = v0[7];

    v18 = v0[1];
  }

  else
  {
    v10 = v0[2];
    v11 = sub_226D676AC();
    v12 = swift_task_alloc();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    sub_226D6EB7C();

    (*(v8 + 8))(v7, v9);
    v20 = v0[12];
    v21 = v0[8];
    v22 = v0[9];
    v24 = v0[6];
    v23 = v0[7];

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_226D0CDB0()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226D0CE4C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[17];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226D0CF00()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[19];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226D0CFB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6EB9C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_226D6B9BC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v3[10] = *(v8 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0D0DC, 0, 0);
}

uint64_t sub_226D0D0DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v18 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v8 = *(v0[4] + 16);
  v9 = sub_226D676AC();
  v0[12] = v9;
  (*(v4 + 16))(v1, v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[13] = v11;
  (*(v4 + 32))(v11 + v10, v1, v3);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v5 + 104))(v18, *MEMORY[0x277CBE110], v6);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v9;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *v13 = v0;
  v13[1] = sub_226CCE4BC;
  v15 = v0[7];
  v16 = v0[2];

  return MEMORY[0x28210EE50](v16, v15, sub_226D100F8, v11, v14);
}

uint64_t sub_226D0D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_226D682FC();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0D398, 0, 0);
}

uint64_t sub_226D0D398()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  v5 = sub_226D6C2AC();
  v0[11] = v5;
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  sub_226D6A64C();
  v7 = v0[2];
  sub_226D6CCAC();
  sub_226D6CC2C();
  sub_226D6B9BC();
  sub_226D0FF44(&qword_27D7A81F8);
  v8 = sub_226D6CC8C();
  v9 = v0[10];
  v11 = v0[3];
  v10 = v0[4];
  v12 = v8;
  v14 = v13;

  v15 = sub_226D6D20C();
  v17 = v16;
  v0[12] = v16;
  sub_226B11B98(v12, v14);
  v18 = swift_task_alloc();
  v0[13] = v18;
  v18[2] = v5;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v18[6] = v15;
  v18[7] = v17;
  v19 = *(MEMORY[0x277CC7D90] + 4);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_226D0D7FC;
  v21 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282119B28](v20, &unk_226D7CD00, v18, v21);
}

uint64_t sub_226D0D7FC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_226D0DA78;
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    v4 = sub_226D0D920;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D0D920()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[15];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  v10 = *(v8 + 16);
  v11 = sub_226D676AC();
  v12 = swift_task_alloc();
  v12[2] = v9;
  v12[3] = v11;
  v12[4] = v8;
  sub_226D6EB7C();
  v13 = v0[10];
  v14 = v0[7];
  if (!v5)
  {
    sub_226AC47B0(v0[7], &qword_27D7A6D50, &unk_226D75230);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_226D0DA78()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  (*(v6 + 8))(v4, v5);
  v7 = v0[15];
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
    _os_log_impl(&dword_226AB4000, v10, v11, "Failed to unlink an account remotely. %@", v12, 0xCu);
    sub_226AC47B0(v13, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  v19 = v0[2];
  v20 = *(v18 + 16);
  v21 = sub_226D676AC();
  v22 = swift_task_alloc();
  v22[2] = v19;
  v22[3] = v21;
  v22[4] = v18;
  sub_226D6EB7C();
  v23 = v0[10];
  sub_226AC47B0(v0[7], &qword_27D7A6D50, &unk_226D75230);

  v24 = v0[1];

  return v24();
}

uint64_t sub_226D0DD1C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6EB9C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_226D6B9BC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0DE40, 0, 0);
}

uint64_t sub_226D0DE40()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v17 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v8 = *(v0[4] + 16);
  v9 = sub_226D676AC();
  v0[12] = v9;
  (*(v4 + 16))(v1, v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[13] = v11;
  (*(v4 + 32))(v11 + v10, v1, v3);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v5 + 104))(v17, *MEMORY[0x277CBE110], v6);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v9;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
  *v13 = v0;
  v13[1] = sub_226D0DFFC;
  v15 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v15, sub_226D0FE8C, v11, v14);
}

uint64_t sub_226D0DFFC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226CCE6C8;
  }

  else
  {
    v7 = sub_226D0E190;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D0E190()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_226D0E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = sub_226D682FC();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = sub_226D6C53C();
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0E33C, 0, 0);
}

uint64_t sub_226D0E33C()
{
  v1 = v0[13];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C0, &qword_226D7CE10);
  v6 = *(sub_226D6BB7C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_226D70840;

  sub_226D6BB6C();
  sub_226D6C52C();
  v9 = *(MEMORY[0x277CC7D88] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_226D0E4DC;
  v11 = v0[13];
  v12 = v0[2];

  return MEMORY[0x282119B20](v11);
}

uint64_t sub_226D0E4DC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *v1;
  v6[15] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D0E694, 0, 0);
  }

  else
  {
    v7 = v6[13];
    v8 = v6[10];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_226D0E694()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_226D0E704(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_226D6B9BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v17 = sub_226D69D9C();
  if (!v4)
  {
    v18 = v17;
    v39 = v12;
    v40 = a4;
    v41 = 0;
    if (!v17)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v25 = sub_226D6E07C();
      __swift_project_value_buffer(v25, qword_28105F710);
      v26 = v39;
      (*(v13 + 16))(v16, a1, v39);
      v27 = sub_226D6E05C();
      v28 = sub_226D6E9CC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v13;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43[0] = v31;
        *v30 = 136315138;
        sub_226D0FF44(&qword_27D7A6E40);
        v32 = sub_226D6F1CC();
        v34 = v33;
        (*(v29 + 8))(v16, v26);
        v35 = sub_226AC4530(v32, v34, v43);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_226AB4000, v27, v28, "Failed to fetch an account with fqaid: %s.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x22AA8BEE0](v31, -1, -1);
        MEMORY[0x22AA8BEE0](v30, -1, -1);
      }

      else
      {

        (*(v13 + 8))(v16, v26);
      }

      v24 = 1;
      v23 = v40;
      goto LABEL_14;
    }

    sub_226D0EBA4(v17);
    [v18 setExternalAccountId_];
    v19 = sub_226D68CBC();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    sub_226D69E6C();
    [v18 setIsAccountMismatched_];
    v20 = [v18 accountMatchObject];
    if (v20)
    {
      v21 = v20;
      [v18 setAccountMatchObject_];
      [a2 deleteObject_];
    }

    v43[0] = 0;
    if ([a2 save_])
    {
      v22 = v43[0];
      v23 = v40;
      sub_226D67C1C();
      v24 = 0;
LABEL_14:
      v37 = sub_226D67C0C();
      (*(*(v37 - 8) + 56))(v23, v24, 1, v37);
      goto LABEL_15;
    }

    v36 = v43[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_15:
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D0EBA4(void *a1)
{
  v2 = v1;
  v4 = [a1 externalAccountId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_226D6E39C();
    v8 = v7;

    v35 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
    v9 = *(sub_226D6831C() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_226D70840;
    v13 = (v12 + v11);
    *v13 = v6;
    v13[1] = v8;
    v14 = *MEMORY[0x277CC7290];
    (*(v9 + 104))();
    sub_226D6AD4C();
  }

  v15 = [a1 accountId];
  v16 = sub_226D6E39C();
  v18 = v17;

  v36 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
  v19 = sub_226D6831C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_226D750B0;
  v24 = (v23 + v22);
  *v24 = v16;
  v24[1] = v18;
  v25 = *(v20 + 104);
  (v25)(v24, *MEMORY[0x277CC7298], v19);
  v26 = (v24 + v21);
  *v26 = v16;
  v26[1] = v18;
  v27 = *MEMORY[0x277CC7278];
  v25();
  v28 = (v24 + 2 * v21);
  *v28 = v16;
  v28[1] = v18;
  v29 = *MEMORY[0x277CC7288];
  v25();
  v30 = (v24 + 3 * v21);
  *v30 = v16;
  v30[1] = v18;
  v31 = *MEMORY[0x277CC72A0];
  v25();
  v32 = (v24 + 4 * v21);
  *v32 = v16;
  v32[1] = v18;
  v33 = *MEMORY[0x277CC7280];
  v25();
  swift_bridgeObjectRetain_n();
  sub_226D6AD4C();
}

void sub_226D0EED8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v61 = a1;
  v54 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v56 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = v52 - v8;
  MEMORY[0x28223BE20](v7);
  v64 = v52 - v9;
  v60 = sub_226D6D52C();
  v55 = *(v60 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v60);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v52 - v19;
  sub_226D6AC0C();
  v21 = sub_226D6AAFC();
  [v21 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_226D71F40;
  v23 = sub_226D6CD7C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = *MEMORY[0x277CC71E0];
  v25 = sub_226D6823C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v16, v24, v25);
  (*(v26 + 56))(v16, 0, 1, v25);
  v27 = MEMORY[0x22AA86C40](v61, 0, v20, v16);
  sub_226AC47B0(v16, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v20, &qword_27D7A6558, &qword_226D7CCE0);
  *(v22 + 32) = v27;
  sub_226B2A4F4();
  *(v22 + 40) = sub_226D6E91C();
  v28 = sub_226D6E5CC();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v21 setPredicate_];
  v30 = v63;
  v31 = sub_226D6EBBC();
  if (v30)
  {
  }

  else
  {
    v32 = v31;
    v52[1] = 0;
    v33 = v56;
    v63 = v12;
    v34 = v60;
    if (v31 >> 62)
    {
      goto LABEL_28;
    }

    v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v36 = v33;
    v53 = v21;
    if (v35)
    {
      v37 = 0;
      v61 = v32 & 0xFFFFFFFFFFFFFF8;
      v62 = v32 & 0xC000000000000001;
      v58 = (v55 + 48);
      v59 = (v55 + 56);
      v38 = MEMORY[0x277D84F90];
      v57 = (v55 + 32);
      v60 = v35;
      while (1)
      {
        if (v62)
        {
          v39 = MEMORY[0x22AA8AFD0](v37, v32);
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v37 >= *(v61 + 16))
          {
            goto LABEL_27;
          }

          v39 = *(v32 + 8 * v37 + 32);
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            v35 = sub_226D6EDFC();
            goto LABEL_5;
          }
        }

        v33 = v32;
        v41 = v39;
        v42 = [v41 sharedId];
        if (v42)
        {
          v43 = v42;
          sub_226D6D4FC();

          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        (*v59)(v36, v44, 1, v34);
        v21 = v36;
        v45 = v65;
        sub_226BACBC0(v36, v65);
        v46 = v34;
        v47 = v64;
        sub_226BACBC0(v45, v64);

        if ((*v58)(v47, 1, v46) == 1)
        {
          sub_226AC47B0(v47, &qword_27D7A6D68, &qword_226D75210);
          v34 = v46;
          v36 = v21;
        }

        else
        {
          v48 = *v57;
          (*v57)(v63, v47, v46);
          v34 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_226BBB95C(0, *(v38 + 2) + 1, 1, v38);
          }

          v50 = *(v38 + 2);
          v49 = *(v38 + 3);
          if (v50 >= v49 >> 1)
          {
            v38 = sub_226BBB95C(v49 > 1, v50 + 1, 1, v38);
          }

          *(v38 + 2) = v50 + 1;
          v48(&v38[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v50]);
          v36 = v56;
        }

        v32 = v33;
        ++v37;
        if (v40 == v60)
        {
          goto LABEL_25;
        }
      }
    }

    v38 = MEMORY[0x277D84F90];
LABEL_25:

    v51 = sub_226AE45DC(v38);

    *v54 = v51;
  }
}

void sub_226D0F5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a3;
  v33 = a2;
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  sub_226D6AC0C();
  v12 = sub_226D6AAFC();
  [v12 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D71F40;
  v14 = sub_226D6CD7C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_226D6823C();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = MEMORY[0x22AA86C40](a1, 0, v11, v7);
  sub_226AC47B0(v7, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v11, &qword_27D7A6558, &qword_226D7CCE0);
  *(v13 + 32) = v16;
  sub_226B2A4F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226D70840;
  v18 = v34;
  v19 = sub_226D0BDEC(v33);
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92B0, &qword_226D7CCE8);
  *(v17 + 64) = sub_226D0FE28();
  *(v17 + 32) = v19;
  *(v13 + 40) = sub_226D6E91C();
  v20 = sub_226D6E5CC();
  v21 = v35;

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v12 setPredicate_];
  v23 = sub_226D6EBBC();
  if (!v18)
  {
    v24 = v23;
    if (v23 >> 62)
    {
      v25 = sub_226D6EDFC();
      if (v25)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_4:
        if (v25 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v25; ++i)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x22AA8AFD0](i, v24);
          }

          else
          {
            v27 = *(v24 + 8 * i + 32);
          }

          v28 = v27;
          [v27 setSharedId_];
        }
      }
    }

    v36[0] = 0;
    if ([v21 save_])
    {
      v29 = v36[0];
    }

    else
    {
      v30 = v36[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_226D0F9DC(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  sub_226D6AC0C();
  v12 = sub_226D6AAFC();
  v13 = sub_226D6CD7C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = *MEMORY[0x277CC71E0];
  v15 = sub_226D6823C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v7, v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  v17 = MEMORY[0x22AA86C40](a1, 0, v11, v7);
  sub_226AC47B0(v7, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v11, &qword_27D7A6558, &qword_226D7CCE0);
  [v12 setPredicate_];

  [v12 setReturnsObjectsAsFaults_];
  v18 = v31;
  v19 = sub_226D6EBBC();
  if (v18)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v30 = v12;
  v31 = 0;
  if (v19 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v22 = a2;
    if (!i)
    {
      break;
    }

    v23 = 0;
    a2 = (v20 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x22AA8AFD0](v23, v20);
      }

      else
      {
        if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [v22 deleteObject_];

      ++v23;
      if (v26 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_13:

  v32[0] = 0;
  if (([v22 save_] & 1) == 0)
  {
    v28 = v32[0];
    sub_226D6D04C();

    swift_willThrow();
    v12 = v30;
LABEL_16:

    goto LABEL_17;
  }

  v27 = v32[0];

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D0FD78()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);

  return swift_deallocClassInstance();
}

unint64_t sub_226D0FE28()
{
  result = qword_27D7A92B8;
  if (!qword_27D7A92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A92B0, &qword_226D7CCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A92B8);
  }

  return result;
}

void sub_226D0FE8C(uint64_t *a1@<X8>)
{
  v3 = *(sub_226D6B9BC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_226D0EED8(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_226D0FF44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_226D6B9BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226D0FF88(uint64_t a1)
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
  v10[1] = sub_226AD827C;

  return sub_226D0E218(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226D100F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_226D6B9BC() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_226CEA87C(a1);
}

uint64_t sub_226D10190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 560) = a5;
  *(v7 + 160) = a3;
  *(v7 + 168) = a4;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  v8 = sub_226D671FC();
  *(v7 + 192) = v8;
  v9 = *(v8 - 8);
  *(v7 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v11 = sub_226D6B5EC();
  *(v7 + 216) = v11;
  v12 = *(v11 - 8);
  *(v7 + 224) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  *(v7 + 248) = matched;
  v16 = *(*(matched - 8) + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  v17 = sub_226D6B9BC();
  *(v7 + 264) = v17;
  v18 = *(v17 - 8);
  *(v7 + 272) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230) - 8) + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  v21 = sub_226D67C0C();
  *(v7 + 328) = v21;
  v22 = *(v21 - 8);
  *(v7 + 336) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D10464, 0, 0);
}

uint64_t sub_226D10464()
{
  v1 = *(v0 + 152);
  if (*(v0 + 560))
  {
    v2 = [v1 devicePrimaryPaymentApplication];
    *(v0 + 392) = v2;
    if (v2)
    {
      v3 = v2;
      if ([v2 state] - 1 <= 2)
      {
        if (*(v0 + 560) == 1)
        {
          v4 = swift_task_alloc();
          *(v0 + 400) = v4;
          *v4 = v0;
          v4[1] = sub_226D11134;
          v5 = *(v0 + 184);
          v6 = *(v0 + 168);

          return sub_226D17BB8(v6);
        }

        else
        {
          v32 = swift_task_alloc();
          *(v0 + 416) = v32;
          *v32 = v0;
          v32[1] = sub_226D117D4;
          v33 = *(v0 + 184);
          v34 = *(v0 + 168);

          return sub_226D17EAC(v34);
        }
      }
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
      *v18 = 0;
      _os_log_impl(&dword_226AB4000, v16, v17, "Can't connect a payment pass that hasn't been activated", v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    v19 = sub_226D6B66C();
    sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CC7F98], v19);
    swift_willThrow();
    v22 = *(v0 + 360);
    v21 = *(v0 + 368);
    v24 = *(v0 + 344);
    v23 = *(v0 + 352);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v29 = *(v0 + 280);
    v30 = *(v0 + 288);
    v35 = *(v0 + 256);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v8 = [v1 primaryAccountIdentifier];
    v9 = sub_226D6E39C();
    v11 = v10;

    *(v0 + 376) = v11;
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = sub_226D108CC;
    v13 = *(v0 + 320);
    v14 = *(v0 + 184);

    return sub_226D17530(v13, v9, v11);
  }
}

uint64_t sub_226D108CC()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D109E4, 0, 0);
}

uint64_t sub_226D109E4()
{
  v82 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v3, &qword_27D7A6D50, &unk_226D75230);
    v4 = [*(v0 + 152) devicePrimaryPaymentApplication];
    *(v0 + 392) = v4;
    if (v4)
    {
      v5 = v4;
      if ([v4 state] - 1 <= 2)
      {
        if (*(v0 + 560) == 1)
        {
          v6 = swift_task_alloc();
          *(v0 + 400) = v6;
          *v6 = v0;
          v6[1] = sub_226D11134;
          v7 = *(v0 + 184);
          v8 = *(v0 + 168);

          return sub_226D17BB8(v8);
        }

        else
        {
          v64 = swift_task_alloc();
          *(v0 + 416) = v64;
          *v64 = v0;
          v64[1] = sub_226D117D4;
          v65 = *(v0 + 184);
          v66 = *(v0 + 168);

          return sub_226D17EAC(v66);
        }
      }
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v48 = sub_226D6E07C();
    __swift_project_value_buffer(v48, qword_28105F710);
    v49 = sub_226D6E05C();
    v50 = sub_226D6E9CC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_226AB4000, v49, v50, "Can't connect a payment pass that hasn't been activated", v51, 2u);
      MEMORY[0x22AA8BEE0](v51, -1, -1);
    }

    v52 = sub_226D6B66C();
    sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
    swift_allocError();
    (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277CC7F98], v52);
    swift_willThrow();
    v55 = *(v0 + 360);
    v54 = *(v0 + 368);
    v57 = *(v0 + 344);
    v56 = *(v0 + 352);
    v59 = *(v0 + 312);
    v58 = *(v0 + 320);
    v61 = *(v0 + 296);
    v60 = *(v0 + 304);
    v62 = *(v0 + 280);
    v63 = *(v0 + 288);
    v69 = *(v0 + 256);
    v72 = *(v0 + 240);
    v75 = *(v0 + 232);
    v78 = *(v0 + 208);

    v47 = *(v0 + 8);
  }

  else
  {
    v10 = *(v2 + 32);
    v10(*(v0 + 368), v3, v1);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 328);
    v14 = *(v0 + 336);
    v15 = *(v0 + 152);
    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F710);
    (*(v14 + 16))(v11, v12, v13);
    v17 = v15;
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9AC();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 360);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    if (v20)
    {
      v79 = v10;
      v24 = *(v0 + 304);
      v67 = *(v0 + 264);
      v68 = *(v0 + 272);
      v76 = v19;
      v25 = *(v0 + 152);
      v70 = *(v0 + 328);
      v26 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81[0] = v73;
      *v26 = 136315394;
      v27 = [v25 primaryAccountIdentifier];
      v28 = sub_226D6E39C();
      v30 = v29;

      v31 = sub_226AC4530(v28, v30, v81);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      sub_226D67B4C();
      sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v32 = sub_226D6F1CC();
      v34 = v33;
      v35 = v24;
      v10 = v79;
      (*(v68 + 8))(v35, v67);
      (*(v22 + 8))(v21, v70);
      v36 = sub_226AC4530(v32, v34, v81);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_226AB4000, v18, v76, "An account is connected already. Let's skip matching.\nexternalAccountId: %s\nfqaid: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v73, -1, -1);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v10(*(v0 + 144), *(v0 + 368), *(v0 + 328));
    v38 = *(v0 + 360);
    v37 = *(v0 + 368);
    v40 = *(v0 + 344);
    v39 = *(v0 + 352);
    v42 = *(v0 + 312);
    v41 = *(v0 + 320);
    v44 = *(v0 + 296);
    v43 = *(v0 + 304);
    v46 = *(v0 + 280);
    v45 = *(v0 + 288);
    v71 = *(v0 + 256);
    v74 = *(v0 + 240);
    v77 = *(v0 + 232);
    v80 = *(v0 + 208);

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_226D11134(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = v1;
  v5 = v3[50];
  v8 = *v2;
  v4[51] = v1;

  if (v1)
  {
    v6 = sub_226D135AC;
  }

  else
  {
    v6 = sub_226D11250;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D11250()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  *(v0 + 432) = *(v0 + 104);
  sub_226AC40E8(v4, v3, &qword_27D7A72A0, &unk_226D7C550);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 240), &qword_27D7A72A0, &unk_226D7C550);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    sub_226D6B58C();
    v8 = sub_226D6B5CC();
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
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
        _os_log_impl(&dword_226AB4000, v10, v11, "Show account matching picker while connecting a primary account", v12, 2u);
        MEMORY[0x22AA8BEE0](v12, -1, -1);
      }

      v13 = *(v0 + 432);

      v14 = sub_226D6B66C();
      sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      *v15 = v13;
      (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CC7FA8], v14);
      swift_willThrow();

      v17 = *(v0 + 360);
      v16 = *(v0 + 368);
      v19 = *(v0 + 344);
      v18 = *(v0 + 352);
      v21 = *(v0 + 312);
      v20 = *(v0 + 320);
      v23 = *(v0 + 296);
      v22 = *(v0 + 304);
      v24 = *(v0 + 280);
      v25 = *(v0 + 288);
      v45 = *(v0 + 256);
      v46 = *(v0 + 240);
      v47 = *(v0 + 232);
      v48 = *(v0 + 208);

      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      v32 = *(v0 + 168);
      if (sub_226D6718C())
      {
        v33 = *(v0 + 152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
        inited = swift_initStackObject();
        *(v0 + 464) = inited;
        *(inited + 16) = xmmword_226D71F20;
        *(inited + 32) = v33;
        v35 = v33;
        v36 = swift_task_alloc();
        *(v0 + 472) = v36;
        *v36 = v0;
        v36[1] = sub_226D12714;
        v37 = *(v0 + 176);
        v38 = *(v0 + 184);
        v39 = *(v0 + 168);

        return sub_226D18C18(inited, v39, v37);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 64), *(*(v0 + 184) + 88));
        if (qword_27D7A5EB0 != -1)
        {
          swift_once();
        }

        sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
        v40 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v41 = swift_task_alloc();
        *(v0 + 480) = v41;
        *v41 = v0;
        v41[1] = sub_226D1294C;
        v42 = *(v0 + 432);
        v43 = *(v0 + 256);
        v44 = *(v0 + 152);

        return sub_226AE6274(v43, v44, v42);
      }
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 296), *(v0 + 240), *(v0 + 264));
    v28 = swift_task_alloc();
    *(v0 + 440) = v28;
    *v28 = v0;
    v28[1] = sub_226D11E74;
    v29 = *(v0 + 312);
    v30 = *(v0 + 296);
    v31 = *(v0 + 184);

    return sub_226D183F4(v29, v30);
  }
}

uint64_t sub_226D117D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[15] = v2;
  v4[16] = a1;
  v4[17] = v1;
  v5 = v3[52];
  v8 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_226D136CC;
  }

  else
  {
    v6 = sub_226D118F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D118F0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  *(v0 + 432) = *(v0 + 128);
  sub_226AC40E8(v4, v3, &qword_27D7A72A0, &unk_226D7C550);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 240), &qword_27D7A72A0, &unk_226D7C550);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    sub_226D6B58C();
    v8 = sub_226D6B5CC();
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
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
        _os_log_impl(&dword_226AB4000, v10, v11, "Show account matching picker while connecting a primary account", v12, 2u);
        MEMORY[0x22AA8BEE0](v12, -1, -1);
      }

      v13 = *(v0 + 432);

      v14 = sub_226D6B66C();
      sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      *v15 = v13;
      (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CC7FA8], v14);
      swift_willThrow();

      v17 = *(v0 + 360);
      v16 = *(v0 + 368);
      v19 = *(v0 + 344);
      v18 = *(v0 + 352);
      v21 = *(v0 + 312);
      v20 = *(v0 + 320);
      v23 = *(v0 + 296);
      v22 = *(v0 + 304);
      v24 = *(v0 + 280);
      v25 = *(v0 + 288);
      v45 = *(v0 + 256);
      v46 = *(v0 + 240);
      v47 = *(v0 + 232);
      v48 = *(v0 + 208);

      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      v32 = *(v0 + 168);
      if (sub_226D6718C())
      {
        v33 = *(v0 + 152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
        inited = swift_initStackObject();
        *(v0 + 464) = inited;
        *(inited + 16) = xmmword_226D71F20;
        *(inited + 32) = v33;
        v35 = v33;
        v36 = swift_task_alloc();
        *(v0 + 472) = v36;
        *v36 = v0;
        v36[1] = sub_226D12714;
        v37 = *(v0 + 176);
        v38 = *(v0 + 184);
        v39 = *(v0 + 168);

        return sub_226D18C18(inited, v39, v37);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 64), *(*(v0 + 184) + 88));
        if (qword_27D7A5EB0 != -1)
        {
          swift_once();
        }

        sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
        v40 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v41 = swift_task_alloc();
        *(v0 + 480) = v41;
        *v41 = v0;
        v41[1] = sub_226D1294C;
        v42 = *(v0 + 432);
        v43 = *(v0 + 256);
        v44 = *(v0 + 152);

        return sub_226AE6274(v43, v44, v42);
      }
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 296), *(v0 + 240), *(v0 + 264));
    v28 = swift_task_alloc();
    *(v0 + 440) = v28;
    *v28 = v0;
    v28[1] = sub_226D11E74;
    v29 = *(v0 + 312);
    v30 = *(v0 + 296);
    v31 = *(v0 + 184);

    return sub_226D183F4(v29, v30);
  }
}

uint64_t sub_226D11E74()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226D11F70, 0, 0);
}

uint64_t sub_226D11F70()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 312), &qword_27D7A6D50, &unk_226D75230);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 216);
    sub_226D6B58C();
    v7 = sub_226D6B5CC();
    (*(v5 + 8))(v4, v6);
    if (v7)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v8 = sub_226D6E07C();
      __swift_project_value_buffer(v8, qword_28105F710);
      v9 = sub_226D6E05C();
      v10 = sub_226D6E9AC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_226AB4000, v9, v10, "Show account matching picker while connecting a primary account", v11, 2u);
        MEMORY[0x22AA8BEE0](v11, -1, -1);
      }

      v12 = *(v0 + 432);

      v13 = sub_226D6B66C();
      sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
      swift_allocError();
      *v14 = v12;
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277CC7FA8], v13);
      swift_willThrow();

      v16 = *(v0 + 360);
      v15 = *(v0 + 368);
      v18 = *(v0 + 344);
      v17 = *(v0 + 352);
      v20 = *(v0 + 312);
      v19 = *(v0 + 320);
      v22 = *(v0 + 296);
      v21 = *(v0 + 304);
      v23 = *(v0 + 280);
      v24 = *(v0 + 288);
      v55 = *(v0 + 256);
      v56 = *(v0 + 240);
      v57 = *(v0 + 232);
      v58 = *(v0 + 208);

      v25 = *(v0 + 8);

      return v25();
    }

    else
    {
      v42 = *(v0 + 168);
      if (sub_226D6718C())
      {
        v43 = *(v0 + 152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
        inited = swift_initStackObject();
        *(v0 + 464) = inited;
        *(inited + 16) = xmmword_226D71F20;
        *(inited + 32) = v43;
        v45 = v43;
        v46 = swift_task_alloc();
        *(v0 + 472) = v46;
        *v46 = v0;
        v46[1] = sub_226D12714;
        v47 = *(v0 + 176);
        v48 = *(v0 + 184);
        v49 = *(v0 + 168);

        return sub_226D18C18(inited, v49, v47);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 64), *(*(v0 + 184) + 88));
        if (qword_27D7A5EB0 != -1)
        {
          swift_once();
        }

        sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
        v50 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v51 = swift_task_alloc();
        *(v0 + 480) = v51;
        *v51 = v0;
        v51[1] = sub_226D1294C;
        v52 = *(v0 + 432);
        v53 = *(v0 + 256);
        v54 = *(v0 + 152);

        return sub_226AE6274(v53, v54, v52);
      }
    }
  }

  else
  {
    v27 = *(v0 + 352);
    v28 = *(v0 + 328);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v31 = *(*(v0 + 336) + 32);
    v31(v27, *(v0 + 312), v28);
    v31(v29, v27, v28);
    v32 = *(v30 + 20);
    v33 = *MEMORY[0x277CC75C0];
    v34 = sub_226D68CBC();
    (*(*(v34 - 8) + 104))(v29 + v32, v33, v34);
    v35 = *(v0 + 288);
    v36 = *(v0 + 256);
    sub_226D67B4C();
    v37 = swift_task_alloc();
    *(v0 + 448) = v37;
    *v37 = v0;
    v37[1] = sub_226D12568;
    v38 = *(v0 + 432);
    v39 = *(v0 + 288);
    v40 = *(v0 + 184);
    v41 = *(v0 + 152);

    return sub_226D19EF4(v39, v41, v38);
  }
}

uint64_t sub_226D12568()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  v2[57] = v0;

  v5 = v2[54];
  v6 = v2[36];
  v7 = v2[34];
  v8 = v2[33];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_226D137EC;
  }

  else
  {
    v2[62] = v10;
    v2[63] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_226D12C44;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_226D12714()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v5 = *v0;

  swift_setDeallocating();
  v3 = *(v2 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_226D12844, 0, 0);
}

uint64_t sub_226D12844()
{
  __swift_project_boxed_opaque_existential_1((v0[23] + 64), *(v0[23] + 88));
  if (qword_27D7A5EB0 != -1)
  {
    swift_once();
  }

  sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, v0 + 2);
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_226D1294C;
  v3 = v0[54];
  v4 = v0[32];
  v5 = v0[19];

  return sub_226AE6274(v4, v5, v3);
}

uint64_t sub_226D1294C()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = *(v2 + 432);

    v5 = sub_226D12B1C;
  }

  else
  {
    v5 = sub_226D12A68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D12A68()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[36];
  v2 = v0[32];
  sub_226D67B4C();
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_226D12568;
  v4 = v0[54];
  v5 = v0[36];
  v6 = v0[23];
  v7 = v0[19];

  return sub_226D19EF4(v5, v7, v4);
}

uint64_t sub_226D12B1C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v17 = *(v0 + 488);

  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226D12C44()
{
  v33 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9AC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315138;
    v14 = sub_226D671AC();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_226AC4530(v14, v16, &v32);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "Connecting a primary account for institution: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[35];
  v20 = v0[31];
  v19 = v0[32];
  v21 = v0[19];
  sub_226D67B4C();
  v22 = [v21 primaryAccountIdentifier];
  v23 = sub_226D6E39C();
  v25 = v24;

  v0[64] = v23;
  v0[65] = v25;
  v26 = *(v20 + 20);
  v27 = swift_task_alloc();
  v0[66] = v27;
  *v27 = v0;
  v27[1] = sub_226D12ED8;
  v28 = v0[43];
  v29 = v0[35];
  v30 = v0[23];

  return sub_226D1B5B4(v28, v29, v23, v25, v19 + v26);
}

uint64_t sub_226D12ED8()
{
  v2 = *(*v1 + 528);
  v3 = *v1;
  v3[67] = v0;

  if (v0)
  {
    v4 = v3[65];

    return MEMORY[0x2822009F8](sub_226D13190, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[68] = v5;
    *v5 = v3;
    v5[1] = sub_226D1305C;
    v6 = v3[65];
    v7 = v3[35];
    v8 = v3[23];
    v9 = v3[64];

    return sub_226D1C0AC(v9, v6, v7);
  }
}

uint64_t sub_226D1305C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 520);

  if (v0)
  {
    v6 = sub_226D13448;
  }

  else
  {
    v6 = sub_226D132DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D13190()
{
  v20 = *(v0 + 536);
  v1 = *(v0 + 504);
  v2 = *(v0 + 392);
  v3 = *(v0 + 256);
  (*(v0 + 496))(*(v0 + 280), *(v0 + 264));

  sub_226D1E728(v3, type metadata accessor for AccountMatchResult);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v16 = *(v0 + 256);
  v17 = *(v0 + 240);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226D132DC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 392);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 256);
  v7 = *(v0 + 144);
  (*(v0 + 496))(*(v0 + 280), *(v0 + 264));
  (*(v4 + 32))(v7, v3, v5);

  sub_226D1E728(v6, type metadata accessor for AccountMatchResult);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 208);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_226D13448()
{
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v20 = *(v0 + 552);
  v1 = *(v0 + 504);
  v2 = *(v0 + 392);
  v3 = *(v0 + 256);
  (*(v0 + 496))(*(v0 + 280), *(v0 + 264));

  sub_226D1E728(v3, type metadata accessor for AccountMatchResult);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v16 = *(v0 + 256);
  v17 = *(v0 + 240);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226D135AC()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 408);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226D136CC()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 424);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226D137EC()
{
  v1 = *(v0 + 256);

  sub_226D1E728(v1, type metadata accessor for AccountMatchResult);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  v14 = *(v0 + 256);
  v15 = *(v0 + 240);
  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 456);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226D1392C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_226D671FC();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_226D67C0C();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_226D6715C();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = swift_task_alloc();
  v2[15] = v14;
  *v14 = v2;
  v14[1] = sub_226D13B10;

  return sub_226D1B140(a1);
}

uint64_t sub_226D13B10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_226D146FC;
  }

  else
  {
    v5 = sub_226D13C24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D13C24()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[10];
    v23 = MEMORY[0x277D84F90];
    sub_226AE1FC8(0, v2, 0);
    v5 = v23;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v21 = *(v4 + 56);
    v22 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[14];
      v10 = v0[11];
      v11 = v0[9];
      v22(v10, v7, v11);
      sub_226D67B6C();
      (*v8)(v10, v11);
      v13 = *(v23 + 16);
      v12 = *(v23 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_226AE1FC8(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[14];
      v15 = v0[12];
      *(v23 + 16) = v13 + 1;
      (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v21;
      --v2;
    }

    while (v2);
    v16 = v0[16];
  }

  else
  {
    v17 = v0[16];

    v5 = MEMORY[0x277D84F90];
  }

  v0[18] = sub_226AE4230(v5);

  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_226D13E2C;
  v19 = v0[4];

  return sub_226D1DC58();
}

uint64_t sub_226D13E2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_226D148C0;
  }

  else
  {
    v5 = sub_226D13F40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D13F40()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[20];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[22] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = v0[20];
    v11 = v0[18];

    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[5];

    v16 = v0[1];
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }

  if (v2 < 0)
  {
    v29 = v0[20];
  }

  result = sub_226D6EDFC();
  v0[22] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v0[23] = v4;
      v0[24] = v1;
      v5 = v0[20];
      v6 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x22AA8AFD0]() : *(v5 + 8 * v4 + 32);
      v7 = v6;
      v0[25] = v6;
      v8 = v0[18];
      v9 = sub_226AE8A00();
      LOBYTE(v8) = sub_226C995A4(v9, v8);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v4 = v0[23] + 1;
      if (v4 == v0[22])
      {
        goto LABEL_10;
      }
    }

    v18 = v0[4];
    v19 = v18[41];
    v20 = v18[42];
    __swift_project_boxed_opaque_existential_1(v18 + 38, v19);
    v21 = [v7 primaryAccountIdentifier];
    v22 = sub_226D6E39C();
    v24 = v23;

    v0[26] = v24;
    v25 = *(v20 + 8);
    v30 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[27] = v27;
    *v27 = v0;
    v27[1] = sub_226D141FC;
    v28 = v0[5];

    return v30(v28, v22, v24, v19, v20);
  }

  return result;
}

uint64_t sub_226D141FC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226D14314, 0, 0);
}

uint64_t sub_226D14314()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v6 = *(v0 + 24);
    (*(v2 + 32))(*(v0 + 64), v3, v1);
    v7 = sub_226D671AC();
    v9 = v8;
    v11 = sub_226D671AC();
    v12 = v7;
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    if (v12 == v11 && v9 == v10)
    {

      (*(v14 + 8))(v13, v15);
    }

    else
    {
      v17 = sub_226D6F21C();

      (*(v14 + 8))(v13, v15);
      if ((v17 & 1) == 0)
      {

        goto LABEL_3;
      }
    }

    v5 = (v0 + 16);
    MEMORY[0x22AA8A610](*(v0 + 200));
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    v18 = *(v0 + 200);
    sub_226D6E65C();

    goto LABEL_14;
  }

  v4 = *(v0 + 200);
  sub_226AC47B0(v3, &qword_27D7A5FA8, &qword_226D73790);

LABEL_3:
  v5 = (v0 + 192);
LABEL_14:
  v19 = *v5;
  while (1)
  {
    v20 = *(v0 + 184) + 1;
    if (v20 == *(v0 + 176))
    {
      break;
    }

    *(v0 + 184) = v20;
    *(v0 + 192) = v19;
    v21 = *(v0 + 160);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v22 = *(v21 + 8 * v20 + 32);
    }

    v23 = v22;
    *(v0 + 200) = v22;
    v24 = *(v0 + 144);
    v25 = sub_226AE8A00();
    LOBYTE(v24) = sub_226C995A4(v25, v24);

    if ((v24 & 1) == 0)
    {
      v34 = *(v0 + 32);
      v35 = v34[41];
      v36 = v34[42];
      __swift_project_boxed_opaque_existential_1(v34 + 38, v35);
      v37 = [v23 primaryAccountIdentifier];
      v38 = sub_226D6E39C();
      v40 = v39;

      *(v0 + 208) = v40;
      v41 = *(v36 + 8);
      v46 = (v41 + *v41);
      v42 = v41[1];
      v43 = swift_task_alloc();
      *(v0 + 216) = v43;
      *v43 = v0;
      v43[1] = sub_226D141FC;
      v44 = *(v0 + 40);

      return v46(v44, v38, v40, v35, v36);
    }
  }

  v26 = *(v0 + 160);
  v27 = *(v0 + 144);

  v28 = *(v0 + 112);
  v29 = *(v0 + 88);
  v30 = *(v0 + 64);
  v31 = *(v0 + 40);

  v32 = *(v0 + 8);

  return v32(v19);
}

uint64_t sub_226D146FC()
{
  v1 = v0[17];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to find payment passes: %@.", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];
  v15 = MEMORY[0x277D84F90];

  return v14(v15);
}

uint64_t sub_226D148C0()
{
  v1 = v0[18];

  v2 = v0[21];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to find payment passes: %@.", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[5];

  v15 = v0[1];
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t sub_226D14A8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 328) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_226D6B9BC();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v9 = sub_226D67C0C();
  *(v5 + 112) = v9;
  v10 = *(v9 - 8);
  *(v5 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  *(v5 + 152) = matched;
  v13 = *(*(matched - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v14 = sub_226D671FC();
  *(v5 + 168) = v14;
  v15 = *(v14 - 8);
  *(v5 + 176) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D14C54, 0, 0);
}

uint64_t sub_226D14C54()
{
  v44 = v0;
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v33 = *(v0 + 56);
    }

    v34 = sub_226D6EDFC();
    *(v0 + 192) = v34;
    if (v34)
    {
LABEL_3:
      if (*(v0 + 328) == 1)
      {
        v3 = swift_task_alloc();
        *(v0 + 200) = v3;
        *v3 = v0;
        v3[1] = sub_226D15074;
        v4 = *(v0 + 72);
        v5 = *(v0 + 80);
        v7 = *(v0 + 56);
        v6 = *(v0 + 64);

        return sub_226D18C18(v7, v6, v4);
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 64), *(*(v0 + 80) + 88));
      if (qword_27D7A5EB0 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 192);
      sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0 + 56);
        v11 = MEMORY[0x277D84F90];
        *(v0 + 208) = 0;
        *(v0 + 216) = v11;
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AA8AFD0](0);
        }

        else
        {
          v12 = *(v10 + 32);
        }

        *(v0 + 224) = v12;
        if (qword_28105F708 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v14 = *(v0 + 176);
      v13 = *(v0 + 184);
      v15 = *(v0 + 168);
      v16 = *(v0 + 64);
      v17 = sub_226D6E07C();
      *(v0 + 232) = __swift_project_value_buffer(v17, qword_28105F710);
      (*(v14 + 16))(v13, v16, v15);
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9AC();
      v20 = os_log_type_enabled(v18, v19);
      v22 = *(v0 + 176);
      v21 = *(v0 + 184);
      v23 = *(v0 + 168);
      if (v20)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = v25;
        *v24 = 136315138;
        v26 = sub_226D671AC();
        v28 = v27;
        (*(v22 + 8))(v21, v23);
        v29 = sub_226AC4530(v26, v28, &v43);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_226AB4000, v18, v19, "Connecting a secondary account for institution: %s.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      else
      {

        (*(v22 + 8))(v21, v23);
      }

      v30 = swift_task_alloc();
      *(v0 + 240) = v30;
      *v30 = v0;
      v30[1] = sub_226D15448;
      v31 = *(v0 + 80);
      v32 = *(v0 + 64);

      return sub_226D1B140(v32);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 192) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v35 = *(v0 + 184);
  v36 = *(v0 + 160);
  v38 = *(v0 + 136);
  v37 = *(v0 + 144);
  v39 = *(v0 + 128);
  v40 = *(v0 + 104);

  v41 = *(v0 + 8);
  v42 = MEMORY[0x277D84F90];

  return v41(v42);
}

uint64_t sub_226D15074()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226D15170, 0, 0);
}

uint64_t sub_226D15170()
{
  v27 = v0;
  __swift_project_boxed_opaque_existential_1((v0[10] + 64), *(v0[10] + 88));
  if (qword_27D7A5EB0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, v0 + 2);
  if (v1 < 1)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v2 = v0[7];
  v3 = MEMORY[0x277D84F90];
  v0[26] = 0;
  v0[27] = v3;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    v4 = *(v2 + 32);
  }

  v0[28] = v4;
  if (qword_28105F708 != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[8];
  v9 = sub_226D6E07C();
  v0[29] = __swift_project_value_buffer(v9, qword_28105F710);
  (*(v6 + 16))(v5, v8, v7);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = sub_226D671AC();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_226AC4530(v18, v20, &v26);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v10, v11, "Connecting a secondary account for institution: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_226D15448;
  v23 = v0[10];
  v24 = v0[8];

  return sub_226D1B140(v24);
}

uint64_t sub_226D15448(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_226D17094;
  }

  else
  {
    v5 = sub_226D1555C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D1555C()
{
  v40 = v0;
  if (*(v0[31] + 16))
  {
    v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[33] = v2;
    *v2 = v0;
    v2[1] = sub_226D15910;
    v3 = v0[31];
    v4 = v0[28];
    v5 = v0[20];

    return sub_226AE6274(v5, v4, v3);
  }

  else
  {
    v7 = v0[28];

    v8 = v0[26] + 1;
    if (v8 == v0[24])
    {
      v9 = v0[27];
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v10 = v0[23];
      v11 = v0[20];
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[16];
      v15 = v0[13];

      v16 = v0[1];

      return v16(v9);
    }

    else
    {
      v0[26] = v8;
      v17 = v0[7];
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AA8AFD0]();
      }

      else
      {
        v18 = *(v17 + 8 * v8 + 32);
      }

      v0[28] = v18;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v20 = v0[22];
      v19 = v0[23];
      v21 = v0[21];
      v22 = v0[8];
      v23 = sub_226D6E07C();
      v0[29] = __swift_project_value_buffer(v23, qword_28105F710);
      (*(v20 + 16))(v19, v22, v21);
      v24 = sub_226D6E05C();
      v25 = sub_226D6E9AC();
      v26 = os_log_type_enabled(v24, v25);
      v28 = v0[22];
      v27 = v0[23];
      v29 = v0[21];
      if (v26)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315138;
        v32 = sub_226D671AC();
        v34 = v33;
        (*(v28 + 8))(v27, v29);
        v35 = sub_226AC4530(v32, v34, &v39);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_226AB4000, v24, v25, "Connecting a secondary account for institution: %s.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x22AA8BEE0](v31, -1, -1);
        MEMORY[0x22AA8BEE0](v30, -1, -1);
      }

      else
      {

        (*(v28 + 8))(v27, v29);
      }

      v36 = swift_task_alloc();
      v0[30] = v36;
      *v36 = v0;
      v36[1] = sub_226D15448;
      v37 = v0[10];
      v38 = v0[8];

      return sub_226D1B140(v38);
    }
  }
}

uint64_t sub_226D15910()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_226D15CC0;
  }

  else
  {
    v4 = sub_226D15A40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D15A40()
{
  v1 = v0[28];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[13];
  sub_226D67B4C();
  v5 = [v1 primaryAccountIdentifier];
  v6 = sub_226D6E39C();
  v8 = v7;

  v0[35] = v6;
  v0[36] = v8;
  v9 = *(v3 + 20);
  v10 = swift_task_alloc();
  v0[37] = v10;
  *v10 = v0;
  v10[1] = sub_226D15B40;
  v11 = v0[17];
  v12 = v0[13];
  v13 = v0[10];

  return sub_226D1B5B4(v11, v12, v6, v8, v2 + v9);
}

uint64_t sub_226D15B40()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {
    v4 = v3[36];

    return MEMORY[0x2822009F8](sub_226D1628C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[39] = v5;
    *v5 = v3;
    v5[1] = sub_226D1615C;
    v6 = v3[36];
    v7 = v3[13];
    v8 = v3[10];
    v9 = v3[35];

    return sub_226D1C0AC(v9, v6, v7);
  }
}

uint64_t sub_226D15CC0()
{
  v53 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v9 = 136315394;
    v12 = [v8 primaryAccountIdentifier];
    v13 = sub_226D6E39C();
    v51 = v8;
    v15 = v14;

    v16 = sub_226AC4530(v13, v15, &v52);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to connect a secondary account: %s.\n%@", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 208) + 1;
  if (v19 == *(v0 + 192))
  {
    v20 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27(v20);
  }

  else
  {
    *(v0 + 208) = v19;
    v29 = *(v0 + 56);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v30 = *(v29 + 8 * v19 + 32);
    }

    *(v0 + 224) = v30;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 168);
    v34 = *(v0 + 64);
    v35 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v35, qword_28105F710);
    (*(v32 + 16))(v31, v34, v33);
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9AC();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v41 = *(v0 + 168);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v42 = 136315138;
      v44 = sub_226D671AC();
      v46 = v45;
      (*(v40 + 8))(v39, v41);
      v47 = sub_226AC4530(v44, v46, &v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_226AB4000, v36, v37, "Connecting a secondary account for institution: %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }

    v48 = swift_task_alloc();
    *(v0 + 240) = v48;
    *v48 = v0;
    v48[1] = sub_226D15448;
    v49 = *(v0 + 80);
    v50 = *(v0 + 64);

    return sub_226D1B140(v50);
  }
}

uint64_t sub_226D1615C()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 288);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_226D16BA8;
  }

  else
  {
    v4 = sub_226D16760;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D1628C()
{
  v54 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 160);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  sub_226D1E728(v2, type metadata accessor for AccountMatchResult);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v5 = v1;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9AC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v10 = 136315394;
    v13 = [v9 primaryAccountIdentifier];
    v14 = sub_226D6E39C();
    v52 = v9;
    v16 = v15;

    v17 = sub_226AC4530(v14, v16, &v53);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to connect a secondary account: %s.\n%@", v10, 0x16u);
    sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 208) + 1;
  if (v20 == *(v0 + 192))
  {
    v21 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);

    v28 = *(v0 + 8);

    return v28(v21);
  }

  else
  {
    *(v0 + 208) = v20;
    v30 = *(v0 + 56);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v31 = *(v30 + 8 * v20 + 32);
    }

    *(v0 + 224) = v31;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 168);
    v35 = *(v0 + 64);
    v36 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v36, qword_28105F710);
    (*(v33 + 16))(v32, v35, v34);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9AC();
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v42 = *(v0 + 168);
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53 = v44;
      *v43 = 136315138;
      v45 = sub_226D671AC();
      v47 = v46;
      (*(v41 + 8))(v40, v42);
      v48 = sub_226AC4530(v45, v47, &v53);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_226AB4000, v37, v38, "Connecting a secondary account for institution: %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    v49 = swift_task_alloc();
    *(v0 + 240) = v49;
    *v49 = v0;
    v49[1] = sub_226D15448;
    v50 = *(v0 + 80);
    v51 = *(v0 + 64);

    return sub_226D1B140(v51);
  }
}

uint64_t sub_226D16760()
{
  v49 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v47 = *(v5 + 32);
  v47(v2, v3, v6);
  (*(v5 + 16))(v4, v2, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 216);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_226BBB240(0, *(v8 + 2) + 1, 1, *(v0 + 216));
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_226BBB240(v9 > 1, v10 + 1, 1, v8);
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 112);

  (*(v14 + 8))(v12, v15);
  sub_226D1E728(v11, type metadata accessor for AccountMatchResult);
  *(v8 + 2) = v10 + 1;
  v47(&v8[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10], v13, v15);
  v16 = *(v0 + 208) + 1;
  if (v16 == *(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 128);
    v22 = *(v0 + 104);

    v23 = *(v0 + 8);

    return v23(v8);
  }

  else
  {
    *(v0 + 208) = v16;
    *(v0 + 216) = v8;
    v25 = *(v0 + 56);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v26 = *(v25 + 8 * v16 + 32);
    }

    *(v0 + 224) = v26;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v29 = *(v0 + 168);
    v30 = *(v0 + 64);
    v31 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v31, qword_28105F710);
    (*(v28 + 16))(v27, v30, v29);
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9AC();
    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v37 = *(v0 + 168);
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      v40 = sub_226D671AC();
      v42 = v41;
      (*(v36 + 8))(v35, v37);
      v43 = sub_226AC4530(v40, v42, &v48);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_226AB4000, v32, v33, "Connecting a secondary account for institution: %s.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v35, v37);
    }

    v44 = swift_task_alloc();
    *(v0 + 240) = v44;
    *v44 = v0;
    v44[1] = sub_226D15448;
    v45 = *(v0 + 80);
    v46 = *(v0 + 64);

    return sub_226D1B140(v46);
  }
}

uint64_t sub_226D16BA8()
{
  v54 = v0;
  (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
  v1 = *(v0 + 320);
  v2 = *(v0 + 160);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  sub_226D1E728(v2, type metadata accessor for AccountMatchResult);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v5 = v1;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9AC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v10 = 136315394;
    v13 = [v9 primaryAccountIdentifier];
    v14 = sub_226D6E39C();
    v52 = v9;
    v16 = v15;

    v17 = sub_226AC4530(v14, v16, &v53);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to connect a secondary account: %s.\n%@", v10, 0x16u);
    sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 208) + 1;
  if (v20 == *(v0 + 192))
  {
    v21 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);

    v28 = *(v0 + 8);

    return v28(v21);
  }

  else
  {
    *(v0 + 208) = v20;
    v30 = *(v0 + 56);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v31 = *(v30 + 8 * v20 + 32);
    }

    *(v0 + 224) = v31;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 168);
    v35 = *(v0 + 64);
    v36 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v36, qword_28105F710);
    (*(v33 + 16))(v32, v35, v34);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9AC();
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v42 = *(v0 + 168);
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53 = v44;
      *v43 = 136315138;
      v45 = sub_226D671AC();
      v47 = v46;
      (*(v41 + 8))(v40, v42);
      v48 = sub_226AC4530(v45, v47, &v53);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_226AB4000, v37, v38, "Connecting a secondary account for institution: %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    v49 = swift_task_alloc();
    *(v0 + 240) = v49;
    *v49 = v0;
    v49[1] = sub_226D15448;
    v50 = *(v0 + 80);
    v51 = *(v0 + 64);

    return sub_226D1B140(v51);
  }
}

uint64_t sub_226D17094()
{
  v53 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v9 = 136315394;
    v12 = [v8 primaryAccountIdentifier];
    v13 = sub_226D6E39C();
    v51 = v8;
    v15 = v14;

    v16 = sub_226AC4530(v13, v15, &v52);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to connect a secondary account: %s.\n%@", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 208) + 1;
  if (v19 == *(v0 + 192))
  {
    v20 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27(v20);
  }

  else
  {
    *(v0 + 208) = v19;
    v29 = *(v0 + 56);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v30 = *(v29 + 8 * v19 + 32);
    }

    *(v0 + 224) = v30;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 168);
    v34 = *(v0 + 64);
    v35 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v35, qword_28105F710);
    (*(v32 + 16))(v31, v34, v33);
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9AC();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v41 = *(v0 + 168);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v42 = 136315138;
      v44 = sub_226D671AC();
      v46 = v45;
      (*(v40 + 8))(v39, v41);
      v47 = sub_226AC4530(v44, v46, &v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_226AB4000, v36, v37, "Connecting a secondary account for institution: %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }

    v48 = swift_task_alloc();
    *(v0 + 240) = v48;
    *v48 = v0;
    v48[1] = sub_226D15448;
    v49 = *(v0 + 80);
    v50 = *(v0 + 64);

    return sub_226D1B140(v50);
  }
}

uint64_t sub_226D17530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6EB9C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D175F4, 0, 0);
}

uint64_t sub_226D175F4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0[5] + 16);
  v7 = sub_226D676AC();
  v0[9] = v7;
  v8 = swift_allocObject();
  v0[10] = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v9 = *(MEMORY[0x277CBE118] + 4);

  v7;
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *v10 = v0;
  v10[1] = sub_226D17754;
  v12 = v0[8];
  v13 = v0[2];

  return MEMORY[0x28210EE50](v13, v12, sub_226D1E9E8, v8, v11);
}

uint64_t sub_226D17754()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226D17950;
  }

  else
  {
    v7 = sub_226D178E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D178E8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D17950()
{
  v22 = v0;

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);

  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  if (v7)
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_226AC4530(v10, v9, &v21);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to fetch an account with externalAccountID %s. %@.", v11, 0x16u);
    sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 16);
  v17 = sub_226D67C0C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(v0 + 64);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_226D17BB8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6EB9C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_226D671FC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D17CDC, 0, 0);
}

uint64_t sub_226D17CDC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v19 = v0[7];
  v6 = v0[4];
  v18 = v0[5];
  v7 = v0[3];
  v8 = *(v6 + 16);
  v9 = sub_226D676AC();
  v0[12] = v9;
  (*(v4 + 16))(v1, v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[13] = v12;
  (*(v4 + 32))(v12 + v10, v1, v3);
  *(v12 + v11) = v9;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  (*(v5 + 104))(v19, *MEMORY[0x277CBE110], v18);
  v13 = *(MEMORY[0x277CBE118] + 4);
  v9;

  v14 = swift_task_alloc();
  v0[14] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C8, &unk_226D7CDF0);
  *v14 = v0;
  v14[1] = sub_226D0DFFC;
  v16 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v16, sub_226D1E788, v12, v15);
}

uint64_t sub_226D17EAC(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_226D67C0C();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_226D17FB4;

  return sub_226D17BB8(a1);
}

uint64_t sub_226D17FB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226D1810C, 0, 0);
  }
}

void *sub_226D1810C()
{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[2];
  v3 = v2[16];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
  result = (*(v4 + 8))(&v32, v3, v4);
  v29 = v32;
  v30 = *(v1 + 16);
  v31 = v1;
  if (v30)
  {
    v6 = 0;
    v7 = v0[4];
    v8 = (v7 + 32);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v11 = *(v7 + 72);
      (*(v7 + 16))(v0[6], v0[8] + v10 + v11 * v6, v0[3]);
      sub_226D67B5C();
      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = sub_226D6E36C();

      v14 = [v29 passWithFPANIdentifier_];

      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = [v14 devicePrimaryPaymentApplication];
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if ([v15 state] == 10)
      {

LABEL_10:
LABEL_11:
        v17 = *v8;
        (*v8)(v0[5], v0[6], v0[3]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE1E98(0, v9[2] + 1, 1);
          v9 = v32;
        }

        v20 = v9[2];
        v19 = v9[3];
        if (v20 >= v19 >> 1)
        {
          sub_226AE1E98(v19 > 1, v20 + 1, 1);
          v9 = v32;
        }

        v21 = v0[5];
        v22 = v0[3];
        v9[2] = v20 + 1;
        v23 = v9 + v10 + v20 * v11;
        v8 = (v7 + 32);
        result = v17(v23, v21, v22);
        goto LABEL_16;
      }

      v24 = [v16 state];

      if (!v24)
      {
        goto LABEL_11;
      }

      result = (*(v7 + 8))(v0[6], v0[3]);
LABEL_16:
      if (v30 == ++v6)
      {
        goto LABEL_21;
      }
    }

    v16 = v14;
    goto LABEL_10;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:
  v25 = v0[8];
  v27 = v0[5];
  v26 = v0[6];

  v28 = v0[1];

  return v28(v9);
}

uint64_t sub_226D183F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6EB9C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_226D6B9BC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v3[10] = *(v8 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D18528, 0, 0);
}

uint64_t sub_226D18528()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v19 = v0[7];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = *(v0[4] + 16);
  v9 = sub_226D676AC();
  v0[13] = v9;
  v10 = *(v2 + 16);
  v0[14] = v10;
  v0[15] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v7, v4);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v0[16] = v12;
  (*(v2 + 32))(v12 + v11, v1, v4);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v6 + 104))(v19, *MEMORY[0x277CBE110], v5);
  v13 = *(MEMORY[0x277CBE118] + 4);
  v9;
  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *v14 = v0;
  v14[1] = sub_226D186F0;
  v16 = v0[7];
  v17 = v0[2];

  return MEMORY[0x28210EE50](v17, v16, sub_226D100F8, v12, v15);
}

uint64_t sub_226D186F0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226D18900;
  }

  else
  {
    v7 = sub_226D18884;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D18884()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226D18900()
{
  v33 = v0;

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F710);
  v3(v4, v6, v5);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 144);
  v13 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 136315394;
    sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_226AC4530(v17, v19, &v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v12;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v30 = v22;
    _os_log_impl(&dword_226AB4000, v9, v10, "Failed to fetch an account with accountID %s. %@.", v16, 0x16u);
    sub_226AC47B0(v30, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v23 = *(v0 + 16);
  v24 = sub_226D67C0C();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  v27 = *(v0 + 56);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_226D18C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[11] = a1;
  v6 = sub_226D6B9BC();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = sub_226D6BE1C();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = sub_226D67C0C();
  v4[20] = v12;
  v13 = *(v12 - 8);
  v4[21] = v13;
  v14 = *(v13 + 64) + 15;
  v4[22] = swift_task_alloc();
  v15 = sub_226D6D4AC();
  v4[23] = v15;
  v16 = *(v15 - 8);
  v4[24] = v16;
  v17 = *(v16 + 64) + 15;
  v4[25] = swift_task_alloc();
  Calculator = type metadata accessor for BankConnectLinkingDateQueryCalculator();
  v4[26] = Calculator;
  v19 = *(*(Calculator - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v20 = swift_task_alloc();
  v4[28] = v20;
  *v20 = v4;
  v20[1] = sub_226D18E54;

  return sub_226D17EAC(a2);
}

uint64_t sub_226D18E54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = sub_226D198B4;
  }

  else
  {
    v5 = sub_226D18F68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D18F68()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v5 = type metadata accessor for BankConnectPassKitTransactionsDataSource();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v0[5] = v5;
  v0[6] = &protocol witness table for BankConnectPassKitTransactionsDataSource;
  v0[2] = v6;
  sub_226AE532C((v0 + 2), v1);
  v7 = v1 + *(v2 + 20);
  sub_226D6D66C();
  sub_226D6D46C();
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_226D1908C;
  v9 = v0[27];
  v10 = v0[25];
  v11 = v0[11];

  return sub_226C7DDF8(v11, v10, 1);
}

uint64_t sub_226D1908C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *(*v2 + 184);
  v8 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = v3[29];

    v10 = sub_226D19AA8;
  }

  else
  {
    v10 = sub_226D19214;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226D19214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 232);
  v7 = *(v6 + 16);
  *(v5 + 272) = v7;
  if (v7)
  {
    v8 = *(v5 + 168);
    *(v5 + 280) = *(*(v5 + 256) + 16);
    *(v5 + 320) = *(v8 + 80);
    *(v5 + 288) = 0;
    if (*(v6 + 16))
    {
      v9 = 0;
      while (1)
      {
        v10 = *(v5 + 280);
        v6 = (*(*(v5 + 168) + 16))(*(v5 + 176), v6 + ((*(v5 + 320) + 32) & ~*(v5 + 320)) + *(*(v5 + 168) + 72) * v9, *(v5 + 160));
        if (v10)
        {
          break;
        }

        v11 = *(v5 + 272);
        v12 = *(v5 + 288) + 1;
        (*(*(v5 + 168) + 8))(*(v5 + 176), *(v5 + 160));
        if (v12 == v11)
        {
          v21 = *(v5 + 232);
          goto LABEL_13;
        }

        v9 = *(v5 + 288) + 1;
        *(v5 + 288) = v9;
        v6 = *(v5 + 232);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    *(v5 + 296) = 0;
    v13 = *(v5 + 256);
    if (*(v13 + 16))
    {
      v14 = *(v5 + 176);
      v15 = *(v5 + 128);
      v16 = *(v5 + 104);
      (*(*(v5 + 144) + 16))(*(v5 + 152), v13 + ((*(*(v5 + 144) + 80) + 32) & ~*(*(v5 + 144) + 80)), *(v5 + 136));
      v17 = v16[31];
      v18 = v16[32];
      __swift_project_boxed_opaque_existential_1(v16 + 28, v17);
      sub_226D67B4C();
      v19 = *(MEMORY[0x277CC81D8] + 4);
      v20 = swift_task_alloc();
      *(v5 + 304) = v20;
      *v20 = v5;
      v20[1] = sub_226D19498;
      a2 = *(v5 + 152);
      a3 = *(v5 + 96);
      v6 = *(v5 + 128);
      a4 = v17;
      a5 = v18;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x28211A688](v6, a2, a3, a4, a5);
  }

  else
  {
LABEL_13:

    v22 = *(v5 + 256);
    v23 = *(v5 + 216);

    sub_226D1E728(v23, type metadata accessor for BankConnectLinkingDateQueryCalculator);
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 16));
    v24 = *(v5 + 216);
    v25 = *(v5 + 200);
    v26 = *(v5 + 176);
    v27 = *(v5 + 152);
    v28 = *(v5 + 128);

    v29 = *(v5 + 8);

    return v29();
  }
}

uint64_t sub_226D19498()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v22 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = v2[29];
    v7 = v2[18];
    v6 = v2[19];
    v9 = v2[16];
    v8 = v2[17];
    v12 = v2 + 14;
    v10 = v2[14];
    v11 = v12[1];

    (*(v7 + 8))(v6, v8);
    (*(v11 + 8))(v9, v10);
    v13 = sub_226D19CC0;
  }

  else
  {
    v15 = v2[18];
    v14 = v2[19];
    v17 = v2[16];
    v16 = v2[17];
    v20 = v2 + 14;
    v18 = v2[14];
    v19 = v20[1];
    (*(v15 + 8))(v14, v16);
    (*(v19 + 8))(v17, v18);
    v13 = sub_226D19648;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_226D19648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 296) + 1;
  if (v6 == *(v5 + 280))
  {
    while (1)
    {
      v7 = *(v5 + 272);
      v8 = *(v5 + 288) + 1;
      a1 = (*(*(v5 + 168) + 8))(*(v5 + 176), *(v5 + 160));
      if (v8 == v7)
      {
        break;
      }

      v9 = *(v5 + 288) + 1;
      *(v5 + 288) = v9;
      v10 = *(v5 + 232);
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v11 = *(v5 + 280);
      a1 = (*(*(v5 + 168) + 16))(*(v5 + 176), v10 + ((*(v5 + 320) + 32) & ~*(v5 + 320)) + *(*(v5 + 168) + 72) * v9, *(v5 + 160));
      if (v11)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }

    v20 = *(v5 + 232);

    v21 = *(v5 + 256);
    v22 = *(v5 + 216);

    sub_226D1E728(v22, type metadata accessor for BankConnectLinkingDateQueryCalculator);
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 16));
    v23 = *(v5 + 216);
    v24 = *(v5 + 200);
    v25 = *(v5 + 176);
    v26 = *(v5 + 152);
    v27 = *(v5 + 128);

    v28 = *(v5 + 8);

    return v28();
  }

  else
  {
LABEL_6:
    *(v5 + 296) = v6;
    v12 = *(v5 + 256);
    if (v6 >= *(v12 + 16))
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      v13 = *(v5 + 176);
      v14 = *(v5 + 128);
      v15 = *(v5 + 104);
      (*(*(v5 + 144) + 16))(*(v5 + 152), v12 + ((*(*(v5 + 144) + 80) + 32) & ~*(*(v5 + 144) + 80)) + *(*(v5 + 144) + 72) * v6, *(v5 + 136));
      v16 = v15[31];
      v17 = v15[32];
      __swift_project_boxed_opaque_existential_1(v15 + 28, v16);
      sub_226D67B4C();
      v18 = *(MEMORY[0x277CC81D8] + 4);
      v19 = swift_task_alloc();
      *(v5 + 304) = v19;
      *v19 = v5;
      v19[1] = sub_226D19498;
      a2 = *(v5 + 152);
      a3 = *(v5 + 96);
      a1 = *(v5 + 128);
      a4 = v16;
      a5 = v17;
    }

    return MEMORY[0x28211A688](a1, a2, a3, a4, a5);
  }
}

uint64_t sub_226D198B4()
{
  v22 = v0;
  v1 = v0[30];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[9];
    v11 = sub_226D6F26C();
    v13 = sub_226AC4530(v11, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "    Failed to load BankConnect transactions for account matching.     %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  v14 = v0[27];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

uint64_t sub_226D19AA8()
{
  v22 = v0;
  sub_226D1E728(v0[27], type metadata accessor for BankConnectLinkingDateQueryCalculator);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[33];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[9];
    v11 = sub_226D6F26C();
    v13 = sub_226AC4530(v11, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "    Failed to load BankConnect transactions for account matching.     %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  v14 = v0[27];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

uint64_t sub_226D19CC0()
{
  v23 = v0;
  v1 = v0[27];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_226D1E728(v1, type metadata accessor for BankConnectLinkingDateQueryCalculator);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[39];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[9];
    v12 = sub_226D6F26C();
    v14 = sub_226AC4530(v12, v13, &v22);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v5, v6, "    Failed to load BankConnect transactions for account matching.     %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[27];
  v16 = v0[25];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[16];

  v20 = v0[1];

  return v20();
}

uint64_t sub_226D19EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6B9BC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = sub_226D67C0C();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1A0A0, 0, 0);
}

uint64_t sub_226D1A0A0()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_12:
    v17 = 1;
    goto LABEL_15;
  }

  v3 = v0[12];
  v5 = *(v3 + 16);
  v4 = v3 + 16;
  v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v69 = *(v4 + 56);
  v72 = v5;
  while (1)
  {
    v7 = v0[3];
    v72(v0[15], v6, v0[11]);
    v8 = sub_226D67B5C();
    v10 = v9;
    v11 = [v7 primaryAccountIdentifier];
    v12 = sub_226D6E39C();
    v14 = v13;

    if (!v10)
    {

      goto LABEL_4;
    }

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = sub_226D6F21C();

    if (v16)
    {
      goto LABEL_14;
    }

LABEL_4:
    (*(v4 - 8))(v0[15], v0[11]);
    v6 += v69;
    if (!--v2)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  (*(v0[12] + 32))(v0[19], v0[15], v0[11]);
  v17 = 0;
LABEL_15:
  v19 = v0 + 19;
  v18 = v0[19];
  v20 = v0[18];
  v21 = v0[11];
  v22 = v0[12];
  (*(v22 + 56))(v18, v17, 1, v21);
  sub_226AC40E8(v18, v20, &qword_27D7A6D50, &unk_226D75230);
  v23 = *(v22 + 48);
  v0[20] = v23;
  v0[21] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v24 = v23(v20, 1, v21);
  v25 = v0[18];
  if (v24 == 1)
  {
    sub_226AC47B0(v0[18], &qword_27D7A6D50, &unk_226D75230);
    goto LABEL_19;
  }

  v26 = v0[10];
  v27 = v0[6];
  v28 = v0[7];
  v29 = v0[2];
  (*(v0[12] + 32))(v0[14], v0[18], v0[11]);
  sub_226D67B4C();
  sub_226D1E9A0(&qword_27D7A6C50, MEMORY[0x277CC8058]);
  LOBYTE(v29) = sub_226D6E35C();
  v30 = *(v28 + 8);
  v0[22] = v30;
  v0[23] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v27);
  if ((v29 & 1) == 0)
  {
    v46 = v0[9];
    v47 = __swift_project_boxed_opaque_existential_1((v0[5] + 264), *(v0[5] + 288));
    sub_226D67B4C();
    v48 = *v47;
    v49 = swift_task_alloc();
    v0[24] = v49;
    *v49 = v0;
    v49[1] = sub_226D1A72C;
    v50 = v0[9];
    goto LABEL_35;
  }

  (*(v0[12] + 8))(v0[14], v0[11]);
LABEL_19:
  v32 = v0 + 17;
  v31 = v0[17];
  v70 = v0[20];
  v73 = v0[21];
  v33 = v0[16];
  v34 = v0[11];
  v35 = v0[4];
  v36 = v0[2];
  *(swift_task_alloc() + 16) = v36;
  sub_226BA3090(sub_226D1E980, v35, v31);

  sub_226AC40E8(v31, v33, &qword_27D7A6D50, &unk_226D75230);
  if (v70(v33, 1, v34) == 1)
  {
    sub_226AC47B0(*v32, &qword_27D7A6D50, &unk_226D75230);
    v32 = v0 + 19;
    v19 = v0 + 16;
    goto LABEL_31;
  }

  (*(v0[12] + 32))(v0[13], v0[16], v0[11]);
  sub_226D67B5C();
  if (v37)
  {
    v38 = v0[3];

    v39 = sub_226D67B5C();
    v41 = v40;
    v42 = [v38 primaryAccountIdentifier];
    v43 = sub_226D6E39C();
    v45 = v44;

    if (v41)
    {
      if (v39 == v43 && v41 == v45)
      {

        goto LABEL_30;
      }

      v51 = sub_226D6F21C();

      if (v51)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v62 = v0[13];
    v63 = v0[8];
    v64 = __swift_project_boxed_opaque_existential_1((v0[5] + 264), *(v0[5] + 288));
    sub_226D67B4C();
    v65 = *v64;
    v66 = swift_task_alloc();
    v0[26] = v66;
    *v66 = v0;
    v66[1] = sub_226D1AD60;
    v50 = v0[8];
LABEL_35:

    return sub_226D0C0D8(v50);
  }

  else
  {
LABEL_30:
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_31:
    v52 = *v19;
    v53 = *v32;
    v55 = v0[18];
    v54 = v0[19];
    v57 = v0[16];
    v56 = v0[17];
    v59 = v0[14];
    v58 = v0[15];
    v67 = v0[13];
    v68 = v0[10];
    v71 = v0[9];
    v74 = v0[8];
    sub_226AC47B0(v53, &qword_27D7A6D50, &unk_226D75230);
    sub_226AC47B0(v52, &qword_27D7A6D50, &unk_226D75230);

    v60 = v0[1];

    return v60();
  }
}

uint64_t sub_226D1A72C()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 200) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_226D1AC44;
  }

  else
  {
    v7 = sub_226D1A8AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D1A8AC()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  v2 = v0 + 17;
  v1 = v0[17];
  v3 = v0[25];
  v37 = v0[20];
  v39 = v0[21];
  v5 = v0 + 16;
  v4 = v0[16];
  v6 = v0[11];
  v7 = v0[4];
  v8 = v0[2];
  *(swift_task_alloc() + 16) = v8;
  sub_226BA3090(sub_226D1E980, v7, v1);

  sub_226AC40E8(v1, v4, &qword_27D7A6D50, &unk_226D75230);
  if (v37(v4, 1, v6) == 1)
  {
    sub_226AC47B0(v0[17], &qword_27D7A6D50, &unk_226D75230);
    v2 = v0 + 19;
LABEL_12:
    v19 = *v5;
    v20 = *v2;
    v22 = v0[18];
    v21 = v0[19];
    v24 = v0[16];
    v23 = v0[17];
    v26 = v0[14];
    v25 = v0[15];
    v35 = v0[13];
    v36 = v0[10];
    v38 = v0[9];
    v40 = v0[8];
    sub_226AC47B0(v20, &qword_27D7A6D50, &unk_226D75230);
    sub_226AC47B0(v19, &qword_27D7A6D50, &unk_226D75230);

    v27 = v0[1];

    return v27();
  }

  (*(v0[12] + 32))(v0[13], v0[16], v0[11]);
  sub_226D67B5C();
  if (!v9)
  {
LABEL_11:
    (*(v0[12] + 8))(v0[13], v0[11]);
    v5 = v0 + 19;
    goto LABEL_12;
  }

  v10 = v0[3];

  v11 = sub_226D67B5C();
  v13 = v12;
  v14 = [v10 primaryAccountIdentifier];
  v15 = sub_226D6E39C();
  v17 = v16;

  if (v13)
  {
    if (v11 == v15 && v13 == v17)
    {

      goto LABEL_11;
    }

    v18 = sub_226D6F21C();

    if (v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v29 = v0[13];
  v30 = v0[8];
  v31 = __swift_project_boxed_opaque_existential_1((v0[5] + 264), *(v0[5] + 288));
  sub_226D67B4C();
  v32 = *v31;
  v33 = swift_task_alloc();
  v0[26] = v33;
  *v33 = v0;
  v33[1] = sub_226D1AD60;
  v34 = v0[8];

  return sub_226D0C0D8(v34);
}

uint64_t sub_226D1AC44()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[10];
  v11 = v0[8];
  v12 = v0[25];
  sub_226AC47B0(v0[19], &qword_27D7A6D50, &unk_226D75230);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226D1AD60()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_226D1B004;
  }

  else
  {
    v6 = sub_226D1AED0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D1AED0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v9 = v0[10];
  v10 = v0[9];
  v11 = v0[8];
  sub_226AC47B0(v0[17], &qword_27D7A6D50, &unk_226D75230);
  sub_226AC47B0(v1, &qword_27D7A6D50, &unk_226D75230);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226D1B004()
{
  v1 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_226AC47B0(v1, &qword_27D7A6D50, &unk_226D75230);
  v2 = v0[18];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v10 = v0[10];
  v11 = v0[9];
  v12 = v0[8];
  v13 = v0[27];
  sub_226AC47B0(v0[19], &qword_27D7A6D50, &unk_226D75230);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226D1B140(uint64_t a1)
{
  v3 = sub_226D67C0C();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_226D1B244;

  return sub_226D17BB8(a1);
}

uint64_t sub_226D1B244(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226D1B39C, 0, 0);
  }
}

void sub_226D1B39C()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[3];
    v22 = (v4 + 32);
    v5 = MEMORY[0x277D84F90];
    v20 = *(v1 + 16);
    v21 = v0[7];
    while (v3 < *(v1 + 16))
    {
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      (*(v4 + 16))(v0[5], v0[7] + v7 + v8 * v3, v0[2]);
      sub_226D67B5C();
      v9 = v0[5];
      if (v10)
      {
        v6 = v0[2];

        (*(v4 + 8))(v9, v6);
      }

      else
      {
        v11 = *v22;
        (*v22)(v0[4], v0[5], v0[2]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226AE1E98(0, *(v5 + 16) + 1, 1);
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_226AE1E98(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[4];
        v15 = v0[2];
        *(v5 + 16) = v13 + 1;
        v11(v5 + v7 + v13 * v8, v14, v15);
        v2 = v20;
        v1 = v21;
      }

      if (v2 == ++v3)
      {
        v16 = v0[7];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_14:
    v18 = v0[4];
    v17 = v0[5];

    v19 = v0[1];

    v19(v5);
  }
}

uint64_t sub_226D1B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_226D67C0C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_226D682FC();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_226D68CBC();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = sub_226D6B9BC();
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1B790, 0, 0);
}

uint64_t sub_226D1B790()
{
  v58 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v55 = v0[16];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F710);
  (*(v2 + 16))(v1, v8, v3);
  (*(v4 + 16))(v55, v6, v5);

  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[15];
  if (v12)
  {
    v51 = v0[4];
    v52 = v0[5];
    v53 = v0[14];
    v54 = v11;
    v18 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57[0] = v56;
    *v18 = 136315650;
    v19 = sub_226D6B96C();
    v21 = v20;
    (*(v14 + 8))(v13, v16);
    v22 = sub_226AC4530(v19, v21, v57);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_226AC4530(v51, v52, v57);
    *(v18 + 22) = 2048;
    v23 = sub_226D68CAC();
    (*(v17 + 8))(v15, v53);
    *(v18 + 24) = v23;
    _os_log_impl(&dword_226AB4000, v10, v54, "    linkAccount with fqaID: %s;\n    fpanID: %s;\n    matchingType: %ld", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v56, -1, -1);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
  }

  else
  {
    (*(v17 + 8))(v0[16], v0[14]);

    (*(v14 + 8))(v13, v16);
  }

  v24 = v0[13];
  v25 = v0[7];
  v26 = v0[3];
  v27 = v25[27];
  __swift_project_boxed_opaque_existential_1(v25 + 23, v25[26]);
  v28 = sub_226D6C2AC();
  v0[20] = v28;
  v29 = v25[7];
  __swift_project_boxed_opaque_existential_1(v25 + 3, v25[6]);
  sub_226D6A64C();
  v30 = v0[17];
  v31 = v0[3];
  sub_226D6CCAC();
  sub_226D6CC2C();
  sub_226D1E9A0(&qword_27D7A81F8, MEMORY[0x277CC8058]);
  v32 = sub_226D6CC8C();
  v34 = v33;

  v35 = v0[7];
  v36 = v0[3];
  v37 = sub_226D6D20C();
  v39 = v38;
  v0[21] = v38;
  sub_226B11B98(v32, v34);
  v40 = *(v35 + 16);
  v41 = sub_226D676AC();
  v0[22] = v41;
  v42 = swift_task_alloc();
  v42[2] = v36;
  v42[3] = v41;
  v42[4] = v35;
  v43 = MEMORY[0x277D84F78];
  sub_226D6EB7C();
  v44 = v0[13];
  v46 = v0[4];
  v45 = v0[5];

  v47 = swift_task_alloc();
  v0[23] = v47;
  v47[2] = v28;
  v47[3] = v44;
  v47[4] = v46;
  v47[5] = v45;
  v47[6] = v37;
  v47[7] = v39;
  v48 = *(MEMORY[0x277CC7D90] + 4);
  v49 = swift_task_alloc();
  v0[24] = v49;
  *v49 = v0;
  v49[1] = sub_226D1BD04;

  return MEMORY[0x282119B28](v49, &unk_226D7CE08, v47, v43 + 8);
}

uint64_t sub_226D1BD04()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_226D1BFD0;
  }

  else
  {
    v5 = *(v2 + 184);
    v6 = *(v2 + 168);

    v4 = sub_226D1BE2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D1BE2C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = swift_task_alloc();
  v10 = *(v0 + 40);
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v10;
  sub_226D6EB7C();

  if (v1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);
    (*(*(v0 + 72) + 32))(*(v0 + 16), *(v0 + 80), *(v0 + 64));
    (*(v19 + 8))(v18, v20);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_226D1BFD0()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 200);
  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226D1C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_226D1C0D0, 0, 0);
}

uint64_t sub_226D1C0D0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v0[10] + 16);
  type metadata accessor for BankConnectPassKitTransactionsImporter();
  v4 = swift_allocObject();
  v0[11] = v4;
  v4[2] = v3;
  v5 = sub_226D6AC3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v4[3] = sub_226D6AC2C();
  v8 = sub_226D6B6FC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v4[4] = sub_226D6B6EC();
  v11 = sub_226D676AC();
  v0[12] = v11;
  v12 = swift_task_alloc();
  v12[2] = v11;
  v12[3] = v2;
  v12[4] = v1;
  v13 = MEMORY[0x277D84F78];
  sub_226D6EB7C();
  v14 = v0[9];

  v15 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v16 = type metadata accessor for BankConnectPassKitTransactionsDataSource();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v0[5] = v16;
  v0[6] = &protocol witness table for BankConnectPassKitTransactionsDataSource;
  v0[2] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v0[13] = v18;
  v19 = swift_task_alloc();
  v0[14] = v19;
  v19[2] = v4;
  v19[3] = v14;
  v19[4] = v0 + 2;
  v19[5] = v18;
  v20 = *(MEMORY[0x277CC6558] + 4);
  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = sub_226D1C34C;

  return MEMORY[0x282116CE0](v21, "bankConnect/importPassKitTransactions", 37, 2, &unk_226D7C7E0, v19, v13 + 8);
}

uint64_t sub_226D1C34C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_226D1C4E4;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_226D1C468;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D1C468()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226D1C4E4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v4 = *(v0 + 128);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D1C570@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = sub_226D67C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  sub_226D69F0C();
  v9 = sub_226D69DDC();
  sub_226D671AC();
  v10 = sub_226D69E7C();

  [v9 setPredicate_];

  v11 = v39;
  v12 = sub_226D6EBBC();
  if (v11)
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F710);
    v14 = v11;
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_226D6F26C();
      v21 = sub_226AC4530(v19, v20, &v40);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_226AB4000, v15, v16, "Failed to fetch accounts: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    v22 = sub_226D6B66C();
    sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8]);
    swift_allocError();
    *v23 = v11;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CC7FA0], v22);
    return swift_willThrow();
  }

  else
  {
    v25 = v12;
    v26 = v38;
    v36 = 0;
    v37 = v9;
    v39 = v1;
    if (v12 >> 62)
    {
      v27 = sub_226D6EDFC();
    }

    else
    {
      v27 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27)
    {
      v40 = MEMORY[0x277D84F90];
      result = sub_226AE1E98(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
      }

      else
      {
        v28 = v40;
        if ((v25 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v27; ++i)
          {
            MEMORY[0x22AA8AFD0](i, v25);
            sub_226D67C1C();
            v40 = v28;
            v31 = *(v28 + 16);
            v30 = *(v28 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_226AE1E98(v30 > 1, v31 + 1, 1);
              v28 = v40;
            }

            *(v28 + 16) = v31 + 1;
            (*(v2 + 32))(v28 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v31, v8, v39);
          }
        }

        else
        {
          v32 = 32;
          do
          {
            v33 = *(v25 + v32);
            sub_226D67C1C();
            v40 = v28;
            v35 = *(v28 + 16);
            v34 = *(v28 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_226AE1E98(v34 > 1, v35 + 1, 1);
              v28 = v40;
            }

            *(v28 + 16) = v35 + 1;
            (*(v2 + 32))(v28 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v35, v6, v39);
            v32 += 8;
            --v27;
          }

          while (v27);
        }

        *v38 = v28;
      }
    }

    else
    {

      *v26 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_226D1CA74(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B9BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v14 = sub_226D69D9C();
  if (v2)
  {
LABEL_7:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = v14;
  v33 = v13;
  v34 = v9;
  v35 = a1;
  v36 = v10;
  v37 = 0;
  if (v14)
  {
    sub_226D6D46C();
    v16 = sub_226D6D3EC();
    (*(v38 + 8))(v8, v5);
    [v15 setLastPassLinkingAttemptDate_];

    v39 = 0;
    if ([a2 save_])
    {
      v17 = v39;
    }

    else
    {
      v18 = v39;
      sub_226D6D04C();

      swift_willThrow();
    }

    goto LABEL_7;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v20 = sub_226D6E07C();
  __swift_project_value_buffer(v20, qword_28105F710);
  (*(v36 + 16))(v33, v35, v34);
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9CC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315138;
    sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v26 = v33;
    v25 = v34;
    v27 = sub_226D6F1CC();
    v29 = v28;
    (*(v36 + 8))(v26, v25);
    v30 = sub_226AC4530(v27, v29, &v39);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_226AB4000, v21, v22, "Failed to fetch an account with fqaid: %s.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v33, v34);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_226D6EEFC();

  v39 = 0xD000000000000027;
  v40 = 0x8000000226D87FC0;
  sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v31 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v31);

  MEMORY[0x22AA8A510](46, 0xE100000000000000);
  sub_226D6F0AC();
  __break(1u);
}

uint64_t sub_226D1CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = sub_226D682FC();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = sub_226D6C61C();
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1D058, 0, 0);
}

uint64_t sub_226D1D058()
{
  v1 = v0[13];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C0, &qword_226D7CE10);
  v6 = *(sub_226D6BB7C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_226D70840;

  sub_226D6BB6C();
  sub_226D6C60C();
  v9 = *(MEMORY[0x277CC7D68] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_226D0E4DC;
  v11 = v0[13];
  v12 = v0[2];

  return MEMORY[0x282119B00](v11);
}

uint64_t sub_226D1D1F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v71 = a2;
  v65 = a5;
  v66 = a3;
  v67 = a4;
  v69 = a6;
  v74 = *MEMORY[0x277D85DE8];
  v64 = sub_226D68CBC();
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D52C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_226D673EC();
  v68 = *(v61 - 8);
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v61);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D4AC();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6B9BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  sub_226D69F0C();
  v27 = v70;
  result = sub_226D69D9C();
  if (v27)
  {
    goto LABEL_9;
  }

  v54 = v15;
  v55 = 0;
  v53 = v26;
  v56 = v20;
  v57 = v14;
  v58 = v19;
  v70 = a1;
  if (result)
  {
    v29 = result;
    sub_226D6D46C();
    v30 = sub_226D6D3EC();
    (*(v59 + 8))(v18, v54);
    [v29 setLastPassLinkingDate_];

    [v29 setNeedsPassLinking_];
    sub_226D6D51C();
    (*(v56 + 16))(v24, v70, v58);
    (*(v62 + 16))(v63, v65, v64);

    sub_226D6D46C();
    v31 = v57;
    sub_226D673DC();
    v32 = v71;
    v33 = v55;
    v34 = sub_226BF2498(v31, v71);
    v35 = v68;
    v36 = v61;
    if (!v33)
    {

      v72 = 0;
      if ([v32 save_])
      {
        v37 = v72;
        sub_226D67C1C();
LABEL_8:
        result = (*(v35 + 8))(v31, v36);
LABEL_9:
        v39 = *MEMORY[0x277D85DE8];
        return result;
      }

      v38 = v72;
      sub_226D6D04C();

      swift_willThrow();
    }

    goto LABEL_8;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v40 = sub_226D6E07C();
  __swift_project_value_buffer(v40, qword_28105F710);
  (*(v56 + 16))(v53, v70, v58);
  v41 = sub_226D6E05C();
  v42 = sub_226D6E9CC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v72 = v44;
    *v43 = 136315138;
    sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v45 = v53;
    v46 = v58;
    v47 = sub_226D6F1CC();
    v49 = v48;
    (*(v56 + 8))(v45, v46);
    v50 = sub_226AC4530(v47, v49, &v72);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_226AB4000, v41, v42, "Failed to fetch an account with fqaid: %s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x22AA8BEE0](v44, -1, -1);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v53, v58);
  }

  v72 = 0;
  v73 = 0xE000000000000000;
  sub_226D6EEFC();

  v72 = 0xD000000000000027;
  v73 = 0x8000000226D87FC0;
  sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v51 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v51);

  MEMORY[0x22AA8A510](46, 0xE100000000000000);
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226D1D924(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6B9BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67B4C();
  v8 = MEMORY[0x22AA87A30](v7, a2);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

void sub_226D1DA10(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() currentQueryGenerationToken];
  v13[0] = 0;
  v4 = [a1 setQueryGenerationFromToken:v3 error:v13];

  v5 = v13[0];
  if (v4)
  {
    sub_226D69F0C();
    v6 = v5;
    v7 = sub_226D69D6C();
    if (!v1)
    {
      v8 = v7;
      if (v7)
      {
        [a1 deleteObject_];
        v13[0] = 0;
        if ([a1 save_])
        {
          v9 = v13[0];
        }

        else
        {
          v12 = v13[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    v10 = v13[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D1DB90@<X0>(uint64_t a1@<X8>)
{
  sub_226D69F0C();
  result = sub_226D69D8C();
  if (!v1)
  {
    if (result)
    {
      sub_226D67C1C();
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = sub_226D67C0C();
    return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
  }

  return result;
}

uint64_t sub_226D1DC58()
{
  v1[3] = v0;
  v2 = sub_226D6EB9C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1DD18, 0, 0);
}

uint64_t sub_226D1DD18()
{
  v16 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_1(v4 + 13, v5);
  (*(v6 + 8))(&v15, v5, v6);
  v0[7] = BankConnectPaymentPassDataSource.paymentPasses()();

  v7 = v4[2];
  v8 = sub_226D676AC();
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v10 = *(MEMORY[0x277CBE118] + 4);
  v8;
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  *v11 = v0;
  v11[1] = sub_226D1DEB0;
  v13 = v0[6];

  return MEMORY[0x28210EE50](v0 + 2, v13, sub_226D1E964, v9, v12);
}

uint64_t sub_226D1DEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  v2[11] = v0;

  (*(v5 + 8))(v4, v6);
  v8 = v2[9];
  if (v0)
  {
    v9 = v2[7];

    v10 = sub_226D1E338;
  }

  else
  {

    v10 = sub_226D1E058;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226D1E058()
{
  v1 = v0[7];
  v2 = v0[2];
  v36 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_29;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[7]; v3; i = v0[7])
  {
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v0 = (i + 32);
    v7 = v2 + 56;
    v8 = &off_2785C8000;
    v34 = v6;
    v35 = v3;
    v33 = v1;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x22AA8AFD0](v5, v32[7]);
      }

      else
      {
        if (v5 >= *(v1 + 16))
        {
          goto LABEL_28;
        }

        v9 = v0[v5];
      }

      v10 = v9;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v12 = [v9 v8[480]];
      if (v12)
      {
        v13 = v12;
        if ([v12 state] == 1)
        {
          v14 = [v10 primaryAccountIdentifier];
          v15 = sub_226D6E39C();
          v17 = v16;

          if (*(v2 + 16) && (v18 = *(v2 + 40), sub_226D6F2FC(), sub_226D6E42C(), v19 = sub_226D6F35C(), v20 = -1 << *(v2 + 32), v21 = v19 & ~v20, ((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
          {
            v22 = ~v20;
            while (1)
            {
              v23 = (*(v2 + 48) + 16 * v21);
              v24 = *v23 == v15 && v23[1] == v17;
              if (v24 || (sub_226D6F21C() & 1) != 0)
              {
                break;
              }

              v21 = (v21 + 1) & v22;
              if (((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
LABEL_21:

            sub_226D6EF6C();
            v25 = *(v36 + 16);
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
          }

          v6 = v34;
          v3 = v35;
          v1 = v33;
          v8 = &off_2785C8000;
        }

        else
        {
        }
      }

      else
      {
      }

      if (v5 == v3)
      {
        v26 = v36;
        v0 = v32;
        v27 = v32[7];
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v3 = sub_226D6EDFC();
  }

  v26 = MEMORY[0x277D84F90];
LABEL_31:
  v28 = v0[8];
  v29 = v0[6];

  v30 = v0[1];

  return v30(v26);
}

uint64_t sub_226D1E338()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

void sub_226D1E3A8(uint64_t *a1@<X8>)
{
  sub_226D69F0C();
  v3 = sub_226D69DDC();
  [v3 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x8000000226D86610;
  v5 = sub_226D6E5CC();

  [v3 setPropertiesToFetch_];

  [v3 setReturnsDistinctResults_];
  v6 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v7 = v6;
    v22 = v3;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_27:
      v9 = sub_226D6EDFC();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = a1;
    if (v9)
    {
      a1 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        v10 = a1;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x22AA8AFD0](v10, v7);
            a1 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v10 >= *(v8 + 16))
            {
              goto LABEL_26;
            }

            v11 = *(v7 + 8 * v10 + 32);
            a1 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v12 = v11;
          v13 = [v12 externalAccountId];
          if (v13)
          {
            break;
          }

          v10 = (v10 + 1);
          if (a1 == v9)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        v15 = sub_226D6E39C();
        v21 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_226BBAB0C(0, *(v24 + 2) + 1, 1, v24);
        }

        v18 = *(v24 + 2);
        v17 = *(v24 + 3);
        if (v18 >= v17 >> 1)
        {
          v24 = sub_226BBAB0C((v17 > 1), v18 + 1, 1, v24);
        }

        *(v24 + 2) = v18 + 1;
        v19 = &v24[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v21;
      }

      while (a1 != v9);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

LABEL_24:

    v20 = sub_226AE3C28(v24);

    *v23 = v20;
  }
}