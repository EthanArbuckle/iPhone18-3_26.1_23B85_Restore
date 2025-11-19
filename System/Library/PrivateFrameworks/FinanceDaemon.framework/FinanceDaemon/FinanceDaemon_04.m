uint64_t sub_226B18988(uint64_t a1, char a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *(v2 + 68) = a2;
  *(v2 + 16) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D0, &qword_226D72168) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226B18A54, 0, 0);
}

uint64_t sub_226B18A54()
{
  v22 = *MEMORY[0x277D85DE8];
  if (qword_27D7A5EC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = off_27D7A68C0;
  v3 = *(*off_27D7A68C0 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*off_27D7A68C0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27D7A68C0 + v4));
  sub_226AC40E8(&v2[v3], v1, &qword_27D7A68D0, &qword_226D72168);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_226AC47B0(v1, &qword_27D7A68D0, &qword_226D72168);
  os_unfair_lock_unlock(&v2[v4]);
  if (v3 == 1)
  {
    sub_226B1961C(*(v0 + 68));
    *(v0 + 64) = 0;
    v13 = sub_226D6E2AC();

    v14 = CFUserNotificationCreate(0, 3600.0, 3uLL, (v0 + 64), v13);
    *(v0 + 32) = v14;

    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v14, sub_226B19324, 0);
    *(v0 + 40) = RunLoopSource;
    v16 = swift_task_alloc();
    *(v0 + 48) = v16;
    *(v16 + 16) = RunLoopSource;
    v17 = *(MEMORY[0x277D859E0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 56) = v18;
    v19 = sub_226D6B0FC();
    *v18 = v0;
    v18[1] = sub_226B18E18;
    v20 = *(v0 + 16);
    v21 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822007B8](v20, 0, 0, 0xD000000000000010, 0x8000000226D7F410, sub_226B19A78, v16, v19);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = *MEMORY[0x277CC7DE8];
    v8 = sub_226D6B0FC();
    (*(*(v8 - 8) + 104))(v6, v7, v8);
    v9 = *(v0 + 24);

    v10 = *(v0 + 8);
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }
}

uint64_t sub_226B18E18()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_226B18F5C, 0, 0);
}

uint64_t sub_226B18F5C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);

  v2 = *(v0 + 24);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

id sub_226B18FF8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6E36C();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_226B190E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B0FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = (*(v10 + 48))(a1, 1, v9);
  if (a2 == 2)
  {
    if (!v14)
    {
      v15 = MEMORY[0x277CC7E00];
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    if (!v14)
    {
      v15 = MEMORY[0x277CC7DF0];
LABEL_9:
      (*(v10 + 16))(v13, a1, v9);
      (*(v5 + 104))(v8, *v15, v4);
      sub_226D6E6FC();
      (*(v10 + 8))(v13, v9);
    }
  }

  else if (!v14)
  {
    v15 = MEMORY[0x277CC7DF8];
    goto LABEL_9;
  }

  sub_226AC47B0(a1, &qword_27D7A68D0, &qword_226D72168);
  return (*(v10 + 56))(a1, 1, 1, v9);
}

void sub_226B19324(uint64_t a1, uint64_t a2)
{
  if (qword_27D7A5EC0 != -1)
  {
    swift_once();
  }

  v3 = off_27D7A68C0;
  v4 = *(*off_27D7A68C0 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27D7A68C0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27D7A68C0 + v5));
  sub_226B190E0(&v3[v4], a2);

  os_unfair_lock_unlock(&v3[v5]);
}

void sub_226B193FC(uint64_t a1, __CFRunLoopSource *a2)
{
  if (qword_27D7A5EC0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = off_27D7A68C0;
  MEMORY[0x28223BE20](a1);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v3[v5]);
  sub_226B19A80(&v3[v4]);
  os_unfair_lock_unlock(&v3[v5]);
  v6 = CFRunLoopGetMain();
  CFRunLoopAddSource(v6, a2, *MEMORY[0x277CBF048]);
}

uint64_t sub_226B1952C(uint64_t a1, uint64_t a2)
{
  sub_226AC47B0(a1, &qword_27D7A68D0, &qword_226D72168);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

unint64_t sub_226B1961C(char a1)
{
  v3 = sub_226D6D1AC();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = 0x444145485F525242;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a1)
  {
    v8 = 0xEA00000000005245;
  }

  else
  {
    v8 = 0x8000000226D7F430;
  }

  v9 = 0x8000000226D7F450;
  sub_226B19A9C();
  v10 = sub_226B18FF8(0xD00000000000004ALL, 0x8000000226D7F450, 0);
  if (v1)
  {

    return v9;
  }

  v11 = v30;
  v28 = v8;
  v29 = v7;
  v27 = v10;
  v12 = [v10 URL];
  sub_226D6D14C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68E0, &qword_226D72178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72140;
  result = *MEMORY[0x277CBF208];
  if (!*MEMORY[0x277CBF208])
  {
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 32) = sub_226D6E39C();
  *(inited + 40) = v15;
  *(inited + 72) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(v11 + 16))(boxed_opaque_existential_1, v6, v3);
  *(inited + 80) = 0xD000000000000025;
  *(inited + 88) = 0x8000000226D7F4A0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(inited + 96) = &unk_283A69C08;
  *(inited + 120) = v17;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000226D7F4D0;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 176) = sub_226D6E39C();
  *(inited + 184) = v18;
  v19 = MEMORY[0x277D837D0];
  *(inited + 216) = MEMORY[0x277D837D0];
  v20 = v28;
  *(inited + 192) = v29;
  *(inited + 200) = v20;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 224) = sub_226D6E39C();
  *(inited + 232) = v21;
  *(inited + 264) = v19;
  *(inited + 240) = 0x5353454D5F525242;
  *(inited + 248) = 0xEB00000000454741;
  result = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 272) = sub_226D6E39C();
  *(inited + 280) = v22;
  *(inited + 312) = v19;
  *(inited + 288) = 0x4F4C4C415F525242;
  *(inited + 296) = 0xE900000000000057;
  result = *MEMORY[0x277CBF218];
  if (!*MEMORY[0x277CBF218])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 320) = sub_226D6E39C();
  *(inited + 328) = v23;
  *(inited + 360) = v19;
  *(inited + 336) = 0x495645525F525242;
  *(inited + 344) = 0xEA00000000005745;
  result = *MEMORY[0x277CBF1E8];
  if (*MEMORY[0x277CBF1E8])
  {
    *(inited + 368) = sub_226D6E39C();
    *(inited + 376) = v24;
    *(inited + 384) = 0x5F544F4E5F525242;
    *(inited + 392) = 0xEB00000000574F4ELL;
    *(inited + 408) = v19;
    *(inited + 416) = 0xD00000000000002ALL;
    v25 = MEMORY[0x277D83B88];
    *(inited + 424) = 0x8000000226D7F4F0;
    *(inited + 432) = 0;
    *(inited + 456) = v25;
    *(inited + 464) = 0xD000000000000022;
    v26 = MEMORY[0x277D83E88];
    *(inited + 472) = 0x8000000226D7F520;
    *(inited + 480) = 32;
    *(inited + 504) = v26;
    *(inited + 512) = 0xD000000000000025;
    *(inited + 520) = 0x8000000226D7F550;
    *(inited + 552) = v19;
    *(inited + 528) = 0xD00000000000004ALL;
    *(inited + 536) = 0x8000000226D7F450;
    v9 = sub_226B22DF0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68E8, &unk_226D76980);
    swift_arrayDestroy();

    (*(v30 + 8))(v6, v3);
    return v9;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_226B19A9C()
{
  result = qword_28105F4A0;
  if (!qword_28105F4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F4A0);
  }

  return result;
}

uint64_t sub_226B19AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D0, &qword_226D72168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B19B74()
{
  sub_226D67F5C();
  result = sub_226D67F3C();
  if (!v0)
  {
    v2 = sub_226D67F4C();

    return v2;
  }

  return result;
}

uint64_t sub_226B19BFC()
{
  v1 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5C0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Deleting all pending objects", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = sub_226D676AC();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_226B1BA18;
  *(v8 + 24) = v7;
  v13[4] = sub_226B1BA20;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_226CAD254;
  v13[3] = &block_descriptor_0;
  v9 = _Block_copy(v13);
  v10 = v1;
  v11 = v6;

  [v11 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_226B19E20(uint64_t a1, void *a2)
{
  v43[1] = *MEMORY[0x277D85DE8];
  sub_226D6AF9C();
  v3 = &selRef_setSortDescriptors_;
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  v5 = 0x277CBE000uLL;
  v6 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F5C0);
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226AB4000, v8, v9, "Deleting all pending orders", v10, 2u);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  v43[0] = 0;
  v11 = [a2 executeRequest:v6 error:v43];
  if (v11)
  {
    v12 = v11;
    v13 = v43[0];
  }

  else
  {
    v14 = v43[0];
    v15 = sub_226D6D04C();

    swift_willThrow();
    v16 = v15;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_226AB4000, v17, v18, "Failed to delete all pending orders with error: %@", v19, 0xCu);
      sub_226AC47B0(v20, &qword_27D7A5FB0, &qword_226D70870);
      v23 = v20;
      v5 = 0x277CBE000;
      MEMORY[0x22AA8BEE0](v23, -1, -1);
      v24 = v19;
      v3 = &selRef_setSortDescriptors_;
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    else
    {
    }
  }

  sub_226D6C8EC();
  v25 = [swift_getObjCClassFromMetadata() v3[19]];
  v26 = [objc_allocWithZone(*(v5 + 864)) initWithFetchRequest_];

  v27 = sub_226D6E05C();
  v28 = sub_226D6E9EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Deleting all pending transaction registrations", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  v43[0] = 0;
  v30 = [a2 executeRequest:v26 error:v43];
  if (v30)
  {
    v31 = v30;
    v32 = v43[0];
  }

  else
  {
    v33 = v43[0];
    v34 = sub_226D6D04C();

    swift_willThrow();
    v35 = v34;
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9CC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v34;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226AB4000, v36, v37, "Failed to delete all pending transaction registrations with error: %@", v38, 0xCu);
      sub_226AC47B0(v39, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_226B1A2E4()
{
  v1 = v0;
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B5EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v12 = sub_226D6B5CC();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F5C0);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v14, v15, "Force consent syncing override enabled. Bank connect objects will not be deleted from the store.", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }
  }

  else
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v33 = v3;
    v17 = sub_226D6E07C();
    v34 = __swift_project_value_buffer(v17, qword_28105F5C0);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v18, v19, "Deleting all non-synced bank connect objects.", v20, 2u);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    v21 = sub_226D676AC();
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v22 = type metadata accessor for WalletMessageUpdater();
    v23 = swift_allocObject();
    v52[3] = v22;
    v52[4] = sub_226B1B7F0();
    v52[0] = v23;
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_226AE532C(v1 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_deletedAccountsApplicationRemover, v49);
    v24 = MEMORY[0x277CC7F68];
    *(&v41 + 1) = v7;
    *&v42[0] = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v40);
    sub_226D6B5AC();
    v25 = sub_226D6A92C();
    v26 = objc_allocWithZone(v25);
    v27 = sub_226D6A91C();
    v48[3] = v25;
    v48[4] = MEMORY[0x277CC7CC8];
    v47[4] = v24;
    v48[0] = v27;
    v47[3] = v7;
    __swift_allocate_boxed_opaque_existential_1(v47);
    sub_226D6B58C();
    *&v42[0] = 0;
    v40 = 0u;
    v41 = 0u;
    sub_226B1B848(v53, &v40);
    sub_226AE532C(v52, v42 + 8);
    sub_226AE532C(v48, v43);
    sub_226AE532C(v47, v44 + 8);
    sub_226B1B8B8(v50, &v35);
    if (v36)
    {
      sub_226AC47B0(v50, &qword_27D7A6918, &unk_226D7BBC0);
      sub_226AC47B0(v53, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      sub_226AC484C(&v35, &v37);
    }

    else
    {
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v33 + 8))(v6, v2);
      v28 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v29 = sub_226D6E36C();

      v30 = [v28 initWithBundleIdentifier_];

      v38 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
      v39 = MEMORY[0x277CC85E8];
      *&v37 = v30;
      sub_226AC47B0(v50, &qword_27D7A6918, &unk_226D7BBC0);
      sub_226AC47B0(v53, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      if (v36)
      {
        sub_226AC47B0(&v35, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    sub_226AC484C(&v37, v45);
    v31 = sub_226AC484C(v49, v46 + 8);
    v55[12] = v46[0];
    v55[13] = v46[1];
    v55[14] = v46[2];
    v55[8] = v44[1];
    v55[9] = v44[2];
    v55[10] = v45[0];
    v55[11] = v45[1];
    v55[4] = v42[2];
    v55[5] = v43[0];
    v55[6] = v43[1];
    v55[7] = v44[0];
    v55[0] = v40;
    v55[1] = v41;
    v55[2] = v42[0];
    v55[3] = v42[1];
    MEMORY[0x28223BE20](v31);
    *(&v32 - 2) = v21;
    *(&v32 - 1) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6920, &unk_226D721D0);
    sub_226D6EB7C();
    ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(*(&v40 + 8), v40);

    sub_226B1B944(v55);
  }
}

void sub_226B1AA40(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v11 = sub_226D678BC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v12 = sub_226D6E91C();
  [v11 setPredicate_];

  v13 = sub_226D6EBBC();
  if (v3)
  {

    goto LABEL_3;
  }

  v15 = v13;
  v56 = 0;
  v57 = v10;
  v53 = v7;
  if (v13 >> 62)
  {
    goto LABEL_43;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v54 = a1;
  v47 = a3;
  v48 = v11;
  if (v16)
  {
    a3 = 0;
    v55 = 0;
    v52 = v15 & 0xC000000000000001;
    v50 = a2;
    v51 = v15 & 0xFFFFFFFFFFFFFF8;
    v17 = MEMORY[0x277D84F90];
    v49 = v15;
    while (1)
    {
      if (v52)
      {
        v18 = MEMORY[0x22AA8AFD0](a3, v15);
        a1 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      else
      {
        if (a3 >= *(v51 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v16 = sub_226D6EDFC();
          goto LABEL_6;
        }

        v18 = *(v15 + 8 * a3 + 32);
        a1 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          goto LABEL_32;
        }
      }

      a2 = v16;
      v15 = v18;
      v19 = [v18 consentID];
      v20 = sub_226D6E39C();
      v22 = v21;

      MEMORY[0x28223BE20](v23);
      *(&v46 - 6) = v20;
      *(&v46 - 5) = v22;
      v24 = v53;
      v25 = v50;
      *(&v46 - 4) = v54;
      *(&v46 - 3) = v25;
      *(&v46 - 16) = 1;
      v26 = v56;
      sub_226D6EB8C();
      if (v26)
      {

        goto LABEL_3;
      }

      v56 = 0;
      if (v55)
      {
        v55 = 1;
        v27 = v57;
      }

      else
      {
        v27 = v57;
        v55 = v57[*(v24 + 24)];
      }

      v28 = *(v24 + 20);
      v29 = *(v27 + v28);
      v30 = *(v29 + 16);
      v11 = v17[2];
      v31 = &v11[v30];
      if (__OFADD__(v11, v30))
      {
        goto LABEL_39;
      }

      v32 = *(v27 + v28);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v34 = v17[3] >> 1, v34 >= v31))
      {
        if (!*(v29 + 16))
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v11 <= v31)
        {
          v35 = &v11[v30];
        }

        else
        {
          v35 = v11;
        }

        v17 = sub_226BBB630(isUniquelyReferenced_nonNull_native, v35, 1, v17);
        v34 = v17[3] >> 1;
        if (!*(v29 + 16))
        {
LABEL_8:

          if (v30)
          {
            goto LABEL_40;
          }

          goto LABEL_9;
        }
      }

      v11 = v17[2];
      v36 = v34 - v11;
      v37 = *(type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0) - 8);
      if (v36 < v30)
      {
        goto LABEL_41;
      }

      v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v39 = *(v37 + 72);
      swift_arrayInitWithCopy();

      if (v30)
      {
        v40 = v17[2];
        v41 = __OFADD__(v40, v30);
        v42 = v40 + v30;
        if (v41)
        {
          goto LABEL_42;
        }

        v17[2] = v42;
      }

LABEL_9:

      sub_226B1B9BC(v57);
      ++a3;
      v16 = a2;
      v15 = v49;
      if (a1 == a2)
      {
        goto LABEL_34;
      }
    }
  }

  v55 = 0;
  v17 = MEMORY[0x277D84F90];
LABEL_34:

  v58[0] = 0;
  if ([v54 save_])
  {
    v43 = v58[0];

    v44 = v47;
    *v47 = v55;
    *(v44 + 1) = v17;
  }

  else
  {
    v45 = v58[0];

    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_3:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B1AF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_userIdentifierProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_userIdentifierProvider), *(v0 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_userIdentifierProvider + 24));
  return sub_226D6BFFC();
}

uint64_t sub_226B1B140(const char *a1)
{
  v3 = v1;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v5, v6, a1, v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v8 = *(v3 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_makeCoreDataStore + 8);
  (*(v3 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_makeCoreDataStore))();
  sub_226B19BFC();
  sub_226B1A2E4();

  return sub_226B1AF0C();
}

id AccountNotificationHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountNotificationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountNotificationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_226B1B4E0()
{
  v0 = sub_226D67F1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6B5EC();
  v20 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_226D6B58C();
  sub_226D67E8C();
  sub_226D67F0C();
  (*(v1 + 8))(v4, v0);
  sub_226D6704C();
  v5 = sub_226D6BE5C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_226D6BE4C();
  v9 = qword_281060130;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_281060138;
  v19 = v5;
  v20 = MEMORY[0x277CC8180];
  v18[0] = v8;
  v17[3] = type metadata accessor for FinancialDataDeletedAccountsRemover();
  v17[4] = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v17[0] = v10;
  v11 = type metadata accessor for AccountNotificationHandler();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_makeCoreDataStore];
  *v13 = sub_226B19B74;
  v13[1] = 0;
  sub_226AE532C(v18, &v12[OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_userIdentifierProvider]);
  sub_226AE532C(v17, &v12[OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_deletedAccountsApplicationRemover]);
  v16.receiver = v12;
  v16.super_class = v11;

  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);

  return v14;
}

unint64_t sub_226B1B7F0()
{
  result = qword_281062070;
  if (!qword_281062070)
  {
    type metadata accessor for WalletMessageUpdater();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062070);
  }

  return result;
}

uint64_t sub_226B1B848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6910, &unk_226D721C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B1B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6918, &unk_226D7BBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B1B9BC(uint64_t a1)
{
  v2 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BankConnectPassKitTransactionsDataSource.__allocating_init(paymentService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BankConnectPassKitTransactionsDataSource.transactions(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6928, &qword_226D721E8);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B1BB4C, 0, 0);
}

uint64_t sub_226B1BB4C()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277D38158]) init];
  v0[24] = v2;
  v3 = [v1 deviceTransactionSourceIdentifiers];
  if (v3)
  {
    v4 = v3;
    sub_226D6E89C();

    v5 = sub_226D6E86C();
  }

  else
  {
    v5 = 0;
  }

  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  [v2 setTransactionSourceIdentifiers_];

  v13 = *(v9 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_226B1BDB0;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6930, &qword_226D721F0);
  sub_226D6E6DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226B1BF1C;
  v0[13] = &block_descriptor_1;
  [v13 transactionsForRequest:v11 completion:v0 + 10];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_226B1BDB0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B1BE90, 0, 0);
}

uint64_t sub_226B1BE90()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_226B1BF1C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_226B1C210();
    sub_226D6E5EC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6928, &qword_226D721E8);
  return sub_226D6E6FC();
}

uint64_t BankConnectPassKitTransactionsDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226B1C000(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD8408;

  return BankConnectPassKitTransactionsDataSource.transactions(for:)(a1);
}

uint64_t dispatch thunk of BankConnectPassKitTransactionsDataSourceProtocol.transactions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226AD8408;

  return v11(a1, a2, a3);
}

unint64_t sub_226B1C210()
{
  result = qword_27D7A6938;
  if (!qword_27D7A6938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6938);
  }

  return result;
}

uint64_t type metadata accessor for Instant()
{
  result = qword_27D7A6940;
  if (!qword_27D7A6940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B1C2D0()
{
  result = sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226B1C33C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_226D6F39C();

  return sub_226D6D3DC();
}

uint64_t sub_226B1C394@<X0>(uint64_t *a1@<X8>)
{
  sub_226D6D47C();
  result = sub_226D6F3AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226B1C420()
{
  sub_226D6F2FC();
  sub_226D6D4AC();
  sub_226B1C650(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226B1C4A8()
{
  sub_226D6D4AC();
  sub_226B1C650(&qword_27D7A6620, MEMORY[0x277CC9578]);

  return sub_226D6E30C();
}

uint64_t sub_226B1C52C()
{
  sub_226D6F2FC();
  sub_226D6D4AC();
  sub_226B1C650(&qword_27D7A6620, MEMORY[0x277CC9578]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226B1C650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B1C69C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectNotificationEventsUnregisterTask();
  sub_226AF265C(v1 + *(v12 + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + *(v12 + 20));
    v15 = v14 < 1;
    v16 = v14 - 1;
    if (!v15)
    {
      exp2(v16);
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

unint64_t sub_226B1C8A8()
{
  sub_226D6EEFC();

  sub_226D6D52C();
  sub_226B2042C(&qword_27D7A6648, MEMORY[0x277CC95F0]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000003CLL;
}

uint64_t sub_226B1C988(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_226D6CB2C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B1CA48, 0, 0);
}

uint64_t sub_226B1CA48()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_226D676AC();
  v0[9] = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  sub_226D6EB8C();

  if (v0[3])
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = __swift_project_boxed_opaque_existential_1(v0[4], v1[3]);
    v10 = v9[5];
    __swift_project_boxed_opaque_existential_1(v9 + 1, v9[4]);
    v11 = sub_226D6C2AC();
    v0[10] = v11;
    sub_226D6CB1C();
    v12 = swift_task_alloc();
    v0[11] = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v7;
    v13 = *(MEMORY[0x277CC7D90] + 4);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_226B1CC64;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282119B28](v14, &unk_226D72478, v12, v15);
  }

  else
  {

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_226B1CC64()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_226B1CE1C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_226B1CD80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226B1CD80()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226B1CE1C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 104);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226B1CEC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BankConnectNotificationEventsUnregisterTask() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B1CF8C, 0, 0);
}

uint64_t sub_226B1CF8C()
{
  v30 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226B1FE34(v3, v2, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  sub_226B1FE34(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  if (!v8)
  {

    sub_226B1FE9C(v10, MEMORY[0x277CC6528]);
    sub_226B1FE9C(v9, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v28 = *(v0 + 40);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v29 = v13;
  *v11 = 136315394;
  sub_226D6D52C();
  sub_226B2042C(&qword_27D7A6648, MEMORY[0x277CC95F0]);
  v14 = sub_226D6F1CC();
  v16 = v15;
  sub_226B1FE9C(v9, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  v17 = sub_226AC4530(v14, v16, &v29);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2112;
  sub_226B2042C(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226B1FE34(v10, v18, MEMORY[0x277CC6528]);
  v19 = _swift_stdlib_bridgeErrorToNSError();
  sub_226B1FE9C(v10, MEMORY[0x277CC6528]);
  *(v11 + 14) = v19;
  *v12 = v19;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to unregister from notification events with subscriptionID %s %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v20 = *(v0 + 32);
    v21 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v22 = sub_226D676AC();
    v23 = swift_task_alloc();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    sub_226D6EB7C();
  }

LABEL_8:
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);

  v26 = *(v0 + 8);

  return v26();
}

void sub_226B1D398(void *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v17];

  if (v6)
  {
    v7 = v17[0];
    v8 = sub_226B1D548(a2);
    if (!v2)
    {
      v9 = v8;
      if (v8)
      {
        v10 = [v8 unregisterRequestAttemptCount];
        if (__OFADD__(v10, 1))
        {
          __break(1u);
        }

        [v9 setUnregisterRequestAttemptCount_];
        v11 = a2 + *(type metadata accessor for BankConnectNotificationEventsUnregisterTask() + 28);
        v12 = sub_226D6D3EC();
        [v9 setLastUnregisterRequestAttemptDate_];

        v17[0] = 0;
        if ([a1 save_])
        {
          v13 = v17[0];
        }

        else
        {
          v16 = v17[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    v14 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B1D548(uint64_t a1)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C5BC();
  result = sub_226D6C56C();
  if (!v1 && !result)
  {
    v18[0] = 0;
    v18[1] = 0;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F710);
    (*(v4 + 16))(v7, a1, v3);
    v10 = sub_226D6E05C();
    v11 = sub_226D6E9CC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      sub_226B2042C(&qword_27D7A6648, MEMORY[0x277CC95F0]);
      v14 = sub_226D6F1CC();
      v16 = v15;
      (*(v4 + 8))(v7, v3);
      v17 = sub_226AC4530(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_226AB4000, v10, v11, "Failed to unregister from notification events. Notification subscription with identifier %s doesn't exist.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return v18[0];
  }

  return result;
}

void sub_226B1D7EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v18[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v18];

  if (v8)
  {
    v9 = v18[0];
    v10 = sub_226B1D548(a2);
    if (!v3)
    {
      if (v10)
      {
        v11 = v10;
        v12 = [v10 subscriptionID];

        if (v12)
        {
          v13 = sub_226D6E39C();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        *a3 = v13;
        a3[1] = v15;
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }
    }
  }

  else
  {
    v16 = v18[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B1D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(MEMORY[0x277CC7DA0] + 4);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return MEMORY[0x282119B38](a3);
}

void sub_226B1D9E4(void *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v14[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v14];

  if (v6)
  {
    v7 = v14[0];
    v8 = sub_226B1D548(a2);
    if (!v2)
    {
      v9 = v8;
      if (v8)
      {
        [a1 deleteObject_];
        v14[0] = 0;
        if ([a1 save_])
        {
          v10 = v14[0];
        }

        else
        {
          v13 = v14[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    v11 = v14[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B1DB4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_226B1DBE4;

  return sub_226B1C988(a1);
}

uint64_t sub_226B1DBE4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226B1DD18, 0, 0);
  }
}

uint64_t sub_226B1DD18()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v4 = sub_226D676AC();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  sub_226D6EB7C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226B1DDF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B1CEC8(a1, a2);
}

uint64_t sub_226B1DE94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6D52C();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B1DF14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v0 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D71840;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4 = sub_226B1ED68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_226B1E0C0(uint64_t a1)
{
  result = sub_226B2042C(&qword_27D7A6978, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectNotificationEventsUnregisterTask()
{
  result = qword_27D7A69E8;
  if (!qword_27D7A69E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B1E164(uint64_t a1)
{
  result = sub_226B2042C(&qword_27D7A6988, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B1E210(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B1D944(a1, v5, v4);
}

uint64_t sub_226B1E2BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69D0, &unk_226D724B0);
  v3 = sub_226D6EECC();
  v4 = 0;
  v5 = v3 + 56;
  v62 = v1;
  v63 = a1 + 32;
  v70 = v3 + 56;
  v71 = v3;
  while (2)
  {
    v13 = v63 + 56 * v4;
    v14 = *(v13 + 8);
    v15 = *(v13 + 24);
    v74 = *(v13 + 16);
    v75 = *(v13 + 32);
    v76 = *(v13 + 40);
    v77 = *v13;
    v16 = *(v13 + 48);
    v17 = *(v3 + 40);
    sub_226D6F2FC();
    v73 = v16;
    if (v16)
    {
      if (v16 != 1)
      {
        MEMORY[0x22AA8B3B0](2);

        sub_226D6E42C();
        sub_226D6E42C();
        goto LABEL_12;
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x22AA8B3B0](v18);

    sub_226D6E42C();
LABEL_12:
    sub_226D6E42C();
    result = sub_226D6F35C();
    v72 = ~(-1 << *(v3 + 32));
    v20 = result & v72;
    v21 = (result & v72) >> 6;
    v22 = *(v5 + 8 * v21);
    v23 = 1 << (result & v72);
    if ((v23 & v22) == 0)
    {
      goto LABEL_62;
    }

    v64 = v4;
    v68 = v14;
    v69 = v15;
    do
    {
      v24 = *(v3 + 48) + 56 * v20;
      v26 = *v24;
      v25 = *(v24 + 8);
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      v29 = *(v24 + 32);
      v30 = *(v24 + 40);
      v31 = *(v24 + 48);
      v78[0] = *v24;
      v78[1] = v25;
      v78[2] = v28;
      v78[3] = v27;
      v78[4] = v29;
      v78[5] = v30;
      v79 = v31;
      v32 = v76;
      v80 = v77;
      v81 = v14;
      v33 = v74;
      v34 = v75;
      v82 = v74;
      v83 = v15;
      v84 = v75;
      v85 = v76;
      v86 = v73;
      v35 = v73;
      if (v31)
      {
        if (v31 == 1)
        {
          if (v73 != 1)
          {
            goto LABEL_15;
          }

          if (v26 != v77 || v25 != v14)
          {
            v37 = sub_226D6F21C();
            v33 = v74;
            v34 = v75;
            v32 = v76;
            if ((v37 & 1) == 0)
            {
              v35 = 1;
              goto LABEL_15;
            }
          }

          if (v28 == v33 && v27 == v15)
          {
            goto LABEL_64;
          }

          v39 = v34;
          v40 = v32;
          v41 = v33;
          v65 = sub_226D6F21C();
          v42 = v41;
          v43 = v39;
          v14 = v68;
          v15 = v69;
          sub_226AFD74C(v77, v68, v42, v69, v43, v40, 1u);
          sub_226AFD74C(v26, v25, v28, v27, v29, v30, 1u);
          result = sub_226AC47B0(v78, &unk_27D7A9640, &qword_226D7A5E0);
          if (v65)
          {
            v7 = v76;
            v6 = v77;
            v8 = v68;
            v9 = v74;
            v10 = v75;
            v11 = v69;
            v12 = 1;
            goto LABEL_3;
          }
        }

        else
        {
          if (v73 != 2)
          {
            goto LABEL_15;
          }

          if (v26 != v77 || v25 != v14)
          {
            v45 = sub_226D6F21C();
            v33 = v74;
            v34 = v75;
            v32 = v76;
            if ((v45 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          if (v28 != v33 || v27 != v15)
          {
            v47 = sub_226D6F21C();
            v33 = v74;
            v34 = v75;
            v32 = v76;
            if ((v47 & 1) == 0)
            {
LABEL_59:
              v35 = 2;
LABEL_15:
              sub_226AFD74C(v77, v14, v33, v15, v34, v32, v35);
              sub_226AFD74C(v26, v25, v28, v27, v29, v30, v31);
              result = sub_226AC47B0(v78, &unk_27D7A9640, &qword_226D7A5E0);
              goto LABEL_16;
            }
          }

          if (v29 == v34 && v30 == v32)
          {

LABEL_66:

            sub_226AC47B0(v78, &unk_27D7A9640, &qword_226D7A5E0);
            goto LABEL_4;
          }

          v49 = v33;
          v50 = v34;
          v51 = v32;
          v66 = sub_226D6F21C();
          v52 = v49;
          v53 = v50;
          v14 = v68;
          v15 = v69;
          sub_226AFD74C(v77, v68, v52, v69, v53, v51, 2u);
          sub_226AFD74C(v26, v25, v28, v27, v29, v30, 2u);
          result = sub_226AC47B0(v78, &unk_27D7A9640, &qword_226D7A5E0);
          if (v66)
          {
            v7 = v76;
            v6 = v77;
            v8 = v68;
            v9 = v74;
            v10 = v75;
            v11 = v69;
            v12 = 2;
            goto LABEL_3;
          }
        }
      }

      else
      {
        if (v73)
        {
          goto LABEL_15;
        }

        if (v26 != v77 || v25 != v14)
        {
          v55 = sub_226D6F21C();
          v33 = v74;
          v34 = v75;
          v32 = v76;
          v35 = 0;
          if ((v55 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v28 == v33 && v27 == v15)
        {
LABEL_64:

          goto LABEL_66;
        }

        v57 = v33;
        v67 = sub_226D6F21C();
        sub_226AFD74C(v77, v14, v57, v15, v75, v76, 0);
        sub_226AFD74C(v26, v25, v28, v27, v29, v30, 0);
        result = sub_226AC47B0(v78, &unk_27D7A9640, &qword_226D7A5E0);
        if (v67)
        {
          v7 = v76;
          v6 = v77;
          v8 = v14;
          v9 = v74;
          v10 = v75;
          v11 = v15;
          v12 = 0;
LABEL_3:
          sub_226AE5134(v6, v8, v9, v11, v10, v7, v12);
LABEL_4:
          v1 = v62;
          v5 = v70;
          v3 = v71;
          v4 = v64;
          goto LABEL_5;
        }
      }

LABEL_16:
      v3 = v71;
      v20 = (v20 + 1) & v72;
      v21 = v20 >> 6;
      v5 = v70;
      v23 = 1 << v20;
    }

    while ((*(v70 + 8 * (v20 >> 6)) & (1 << v20)) != 0);
    v22 = *(v70 + 8 * v21);
    v1 = v62;
    v4 = v64;
LABEL_62:
    *(v5 + 8 * v21) = v22 | v23;
    v58 = *(v3 + 48) + 56 * v20;
    *v58 = v77;
    *(v58 + 8) = v14;
    *(v58 + 16) = v74;
    *(v58 + 24) = v15;
    *(v58 + 32) = v75;
    *(v58 + 40) = v76;
    *(v58 + 48) = v73;
    v59 = *(v3 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (!v60)
    {
      *(v3 + 16) = v61;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B1E8E0(uint64_t a1)
{
  v2 = sub_226D6D6CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69A8, &unk_226D72490);
    v10 = sub_226D6EECC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226B2042C(&qword_27D7A69B0, MEMORY[0x277CC99D0]);
      v18 = sub_226D6E2FC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226B2042C(&qword_27D7A69B8, MEMORY[0x277CC99D0]);
          v25 = sub_226D6E35C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226B1EC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6280, &unk_226D70CC0);
    v3 = sub_226D6EECC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_226D6F2FC();

      sub_226D6E42C();
      result = sub_226D6F35C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_226D6F21C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226B1ED68(uint64_t a1)
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B0, &qword_226D72480);
  v2 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v4 = &v81 - v3;
  v95 = sub_226D6B9BC();
  v5 = *(v95 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v95);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v82 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v81 - v11;
  v12 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v89 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v88 = (&v81 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v87 = &v81 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v91 = (&v81 - v28);
  MEMORY[0x28223BE20](v27);
  v100 = &v81 - v29;
  v30 = *(a1 + 16);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69A0, &qword_226D72488);
    v31 = sub_226D6EECC();
    v32 = 0;
    v98 = v31 + 56;
    v86 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v99 = *(v13 + 72);
    v90 = (v5 + 32);
    v94 = (v5 + 8);
    v33 = v31;
    v92 = v21;
    v85 = v30;
    v97 = v31;
    while (1)
    {
      v34 = v100;
      sub_226B1FE34(v86 + v99 * v32, v100, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v35 = *(v33 + 40);
      sub_226D6F2FC();
      sub_226B1FE34(v34, v91, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v93 = v32;
      if (EnumCaseMultiPayload > 4)
      {
        break;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v44 = *v91;
          v45 = v91[1];
          v39 = 2;
          goto LABEL_20;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v37 = *v91;
          v38 = v91[1];
          v39 = 3;
LABEL_20:
          MEMORY[0x22AA8B3B0](v39);
          sub_226D6E42C();
          v33 = v97;

          goto LABEL_28;
        }

        v40 = 4;
        goto LABEL_27;
      }

      v41 = v81;
      v42 = v95;
      if (EnumCaseMultiPayload)
      {
        (*v90)(v81, v91, v95);
        v43 = 1;
      }

      else
      {
        (*v90)(v81, v91, v95);
        v43 = 0;
      }

      MEMORY[0x22AA8B3B0](v43);
      sub_226B2042C(&qword_27D7A6790, MEMORY[0x277CC8058]);
      sub_226D6E30C();
      (*v94)(v41, v42);
LABEL_28:
      v46 = sub_226D6F35C();
      v47 = ~(-1 << *(v33 + 32));
      v48 = v46 & v47;
      v49 = (v46 & v47) >> 6;
      v50 = *(v98 + 8 * v49);
      v51 = 1 << (v46 & v47);
      if ((v51 & v50) == 0)
      {
LABEL_29:
        *(v98 + 8 * v49) = v50 | v51;
        result = sub_226B1FEFC(v100, *(v33 + 48) + v48 * v99, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v53 = *(v33 + 16);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (!v54)
        {
          *(v33 + 16) = v55;
          goto LABEL_5;
        }

        __break(1u);
        return result;
      }

      while (1)
      {
        sub_226B1FE34(*(v33 + 48) + v48 * v99, v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v56 = &v4[*(v96 + 48)];
        sub_226B1FE34(v26, v4, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        sub_226B1FE34(v100, v56, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v57 = swift_getEnumCaseMultiPayload();
        if (v57 > 4)
        {
          if (v57 <= 6)
          {
            if (v57 == 5)
            {
              sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
              if (swift_getEnumCaseMultiPayload() == 5)
              {
                goto LABEL_4;
              }
            }

            else
            {
              sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
              if (swift_getEnumCaseMultiPayload() == 6)
              {
                goto LABEL_4;
              }
            }
          }

          else if (v57 == 7)
          {
            sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              goto LABEL_4;
            }
          }

          else if (v57 == 8)
          {
            sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            if (swift_getEnumCaseMultiPayload() == 9)
            {
              goto LABEL_4;
            }
          }

          goto LABEL_32;
        }

        if (v57 > 1)
        {
          break;
        }

        if (v57)
        {
          sub_226B1FE34(v4, v21, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v71 = v83;
            v72 = v95;
            (*v90)(v83, v56, v95);
            v73 = MEMORY[0x22AA87A30](v92, v71);
            v74 = *v94;
            v75 = v71;
            v21 = v92;
            (*v94)(v75, v72);
            sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            v74(v21, v72);
            if (v73)
            {
              goto LABEL_4;
            }

            goto LABEL_73;
          }

          sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          (*v94)(v21, v95);
        }

        else
        {
          v63 = v87;
          sub_226B1FE34(v4, v87, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          if (!swift_getEnumCaseMultiPayload())
          {
            v76 = v82;
            v77 = v63;
            v78 = v95;
            (*v90)(v82, v56, v95);
            v84 = MEMORY[0x22AA87A30](v63, v76);
            v79 = *v94;
            v80 = v76;
            v21 = v92;
            (*v94)(v80, v78);
            sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
            v79(v77, v78);
            if (v84)
            {
              goto LABEL_4;
            }

            goto LABEL_73;
          }

          sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          (*v94)(v63, v95);
        }

LABEL_32:
        sub_226AC47B0(v4, &qword_27D7A67B0, &qword_226D72480);
LABEL_33:
        v48 = (v48 + 1) & v47;
        v49 = v48 >> 6;
        v33 = v97;
        v50 = *(v98 + 8 * (v48 >> 6));
        v51 = 1 << v48;
        if ((v50 & (1 << v48)) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v57 != 2)
      {
        if (v57 != 3)
        {
          sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_4;
          }

          goto LABEL_32;
        }

        v58 = v89;
        sub_226B1FE34(v4, v89, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        v60 = *v58;
        v59 = v58[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v61 = *v56;
          v62 = *(v56 + 1);
          if (v60 == v61 && v59 == v62)
          {
            goto LABEL_3;
          }

          goto LABEL_58;
        }

LABEL_31:
        sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);

        goto LABEL_32;
      }

      v64 = v88;
      sub_226B1FE34(v4, v88, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v66 = *v64;
      v65 = v64[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_31;
      }

      v67 = *v56;
      v68 = *(v56 + 1);
      if (v66 != v67 || v65 != v68)
      {
LABEL_58:
        v70 = sub_226D6F21C();

        sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        if (v70)
        {
          goto LABEL_4;
        }

LABEL_73:
        sub_226B1FE9C(v4, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
        goto LABEL_33;
      }

LABEL_3:

      sub_226B1FE9C(v26, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
LABEL_4:
      sub_226B1FE9C(v4, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      sub_226B1FE9C(v100, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v33 = v97;
LABEL_5:
      v32 = v93 + 1;
      if (v93 + 1 == v85)
      {
        return v33;
      }
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v40 = 5;
      }

      else
      {
        v40 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v40 = 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v40 = 8;
    }

    else
    {
      v40 = 9;
    }

LABEL_27:
    MEMORY[0x22AA8B3B0](v40);
    goto LABEL_28;
  }

  return MEMORY[0x277D84FA0];
}

void sub_226B1F8F4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_226D6EDFC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69C8, &unk_226D7E520);
      v3 = sub_226D6EECC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_226D6EDFC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA8AFD0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_226D6EC2C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_226D69F0C();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_226D6EC3C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_226D6EC2C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_226D69F0C();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_226D6EC3C();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_226B1FBC0(uint64_t a1)
{
  v2 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69C0, &unk_226D724A0);
    v11 = sub_226D6EECC();
    v12 = 0;
    v13 = v11 + 56;
    v14 = *(v3 + 80);
    v27 = v10;
    v28 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v3 + 72);
    while (2)
    {
      sub_226B1FE34(v28 + v15 * v12, v9, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      v16 = *(v11 + 40);
      sub_226D6F2FC();
      sub_226CF4780(v29);
      v17 = sub_226D6F35C();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_226B1FE34(*(v11 + 48) + i * v15, v7, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        v21 = sub_226CF5B9C(v7, v9);
        sub_226B1FE9C(v7, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        if (v21)
        {
          sub_226B1FE9C(v9, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_226B1FEFC(v9, *(v11 + 48) + i * v15, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v27)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226B1FE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B1FE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B1FEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B1FF64(uint64_t a1)
{
  v2 = sub_226D680EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69D8, &unk_226D724C0);
    v10 = sub_226D6EECC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226B2042C(&qword_27D7A9690, MEMORY[0x277CC7180]);
      v18 = sub_226D6E2FC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226B2042C(&qword_27D7A69E0, MEMORY[0x277CC7180]);
          v25 = sub_226D6E35C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_226B202AC()
{
  sub_226D6D52C();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      sub_226D6D4AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226B20350()
{
  if (!qword_281062B70)
  {
    sub_226D6D4AC();
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281062B70);
    }
  }
}

uint64_t sub_226B203A8(uint64_t a1)
{
  *(a1 + 8) = sub_226B2042C(&qword_27D7A6780, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  result = sub_226B2042C(&qword_27D7A69F8, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226B2042C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B20478(char **a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A08, &qword_226D72540);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - v14;
  v15 = sub_226D698EC();
  v16 = v15;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  if (!(v15 >> 62))
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = a1;
    v60 = a2;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_23:
    v62 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v18 = sub_226D6EDFC();
  v59 = a1;
  v60 = a2;
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_3:
  v19 = 0;
  v62 = MEMORY[0x277D84F90];
  a1 = &selRef_setSortDescriptors_;
  do
  {
    v20 = v19;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x22AA8AFD0](v20, v16);
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v20 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v21 = *(v16 + 8 * v20 + 32);
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v22 = v21;
      v23 = [v22 messageIDHash];
      if (v23)
      {
        break;
      }

      ++v20;
      if (v19 == v18)
      {
        goto LABEL_24;
      }
    }

    v24 = v23;
    v25 = sub_226D6E39C();
    v53 = v26;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_226BBAB0C(0, *(v62 + 2) + 1, 1, v62);
    }

    a2 = *(v62 + 2);
    v27 = *(v62 + 3);
    if (a2 >= v27 >> 1)
    {
      v62 = sub_226BBAB0C((v27 > 1), a2 + 1, 1, v62);
    }

    v28 = v62;
    *(v62 + 2) = a2 + 1;
    v29 = &v28[16 * a2];
    v30 = v53;
    *(v29 + 4) = v25;
    *(v29 + 5) = v30;
  }

  while (v19 != v18);
LABEL_24:

  v31 = sub_226AE3C28(v62);

  v32 = v59;
  v33 = [v59 orderContent];
  v34 = [v33 sanitizedOrderNumber];

  v35 = sub_226D6E39C();
  v37 = v36;

  sub_226D69D0C();
  v38 = v57;
  v39 = v58;
  v40 = v60;
  sub_226BDCB08(v31, v35, v37, v60, v58);
  if (v38)
  {
  }

  else
  {

    v42 = v54;
    sub_226B209F8(v39, v54);
    v43 = v56;
    if ((*(v55 + 48))(v42, 1, v56) == 1)
    {
      sub_226AC47B0(v39, &qword_27D7A6A08, &qword_226D72540);
      v39 = v42;
    }

    else
    {
      v44 = v52;
      sub_226B20A68(v42, v52);
      v45 = *v44;
      v46 = *(v43 + 48);
      if (v45 != [v32 isMarkedAsComplete])
      {
        v47 = sub_226D6D4AC();
        v48 = *(v47 - 8);
        v49 = &v44[v46];
        v50 = v51;
        (*(v48 + 16))(v51, v49, v47);
        (*(v48 + 56))(v50, 0, 1, v47);
        sub_226D698BC();
        sub_226AC47B0(v50, &qword_27D7A8BE0, &unk_226D718F0);
        memset(v61, 0, 80);
        sub_226B42120(v32, v40);
        sub_226AFD62C(v61);
      }

      sub_226AC47B0(v44, &qword_27D7A6A00, &qword_226D72538);
    }

    return sub_226AC47B0(v39, &qword_27D7A6A08, &qword_226D72540);
  }
}

uint64_t sub_226B209F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A08, &qword_226D72540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B20A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B20AEC()
{
  v1 = *v0;
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](v1);
  return sub_226D6F35C();
}

uint64_t sub_226B20B60()
{
  v1 = *v0;
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](v1);
  return sub_226D6F35C();
}

uint64_t sub_226B20BA4()
{
  v1 = 0x656C62616B6E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6B6E696C20746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D72657465646E75;
  }
}

char *sub_226B20C30()
{
  v72 = v0;
  v3 = v0[15];
  v4 = *__swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v5 = sub_226D676AC();
  v0[16] = v5;
  v64 = v3;
  v6 = __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  sub_226AE532C((v6 + 16), (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  (*(v8 + 8))(&v71, v7, v8);
  v9 = v71;
  v0[17] = v71;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v65 = v9;
  v71 = v9;
  v10 = BankConnectPaymentPassDataSource.paymentPasses()();
  v11 = v10;
  v71 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_72:
    v12 = sub_226D6EDFC();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  v67 = v5;
  v69 = v0;
  if (v12)
  {
    v14 = 0;
    v3 = (v11 & 0xC000000000000001);
    v5 = (v11 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v15 = MEMORY[0x22AA8AFD0](v14, v11);
        v0 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v0 = v69;
          v18 = v71;
          v5 = v67;
          v13 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v15 = *(v11 + 8 * v14 + 32);
        v0 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_21;
        }
      }

      v1 = v15;
      if ([v1 cardType] == 1)
      {
        v16 = [v1 isEMoneyPass] ^ 1;
      }

      else
      {
        v16 = 0;
      }

      v17 = [v1 hasAssociatedPeerPaymentAccount];
      v2 = [v1 associatedAccountServiceAccountIdentifier];

      if (v2)
      {
      }

      else if (v16 && (v17 & 1) == 0)
      {
        sub_226D6EF6C();
        v2 = *(v71 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        goto LABEL_16;
      }

LABEL_16:
      ++v14;
      if (v0 == v12)
      {
        goto LABEL_22;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_24:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = sub_226D6EDFC();
    if (v19)
    {
LABEL_27:
      v71 = v13;
      sub_226D6EF8C();
      if (v19 < 0)
      {
        __break(1u);
        goto LABEL_77;
      }

      v20 = 0;
      v3 = &selRef_setSortDescriptors_;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x22AA8AFD0](v20, v18);
        }

        else
        {
          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        ++v20;
        v1 = [v21 fkPaymentPass];

        sub_226D6EF6C();
        v2 = *(v71 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      while (v19 != v20);

      v0 = v69;
      v23 = v71;
      if (!(v71 >> 62))
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v19 = *(v18 + 16);
    if (v19)
    {
      goto LABEL_27;
    }
  }

  v23 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_34:
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_75:
  v24 = sub_226D6EDFC();
LABEL_35:
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
    goto LABEL_48;
  }

  v71 = MEMORY[0x277D84F90];
  sub_226AE1D68(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v25 = v71;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = 0;
    do
    {
      MEMORY[0x22AA8AFD0](v26, v23);
      v27 = [swift_unknownObjectRetain() serialNumber];
      v28 = sub_226D6E39C();
      v30 = v29;

      swift_unknownObjectRelease_n();
      v71 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226AE1D68((v31 > 1), v32 + 1, 1);
        v25 = v71;
      }

      ++v26;
      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v24 != v26);
  }

  else
  {
    v34 = (v23 + 32);
    do
    {
      v35 = *v34;
      v36 = [v35 serialNumber];
      v37 = sub_226D6E39C();
      v39 = v38;

      v71 = v25;
      v41 = *(v25 + 16);
      v40 = *(v25 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_226AE1D68((v40 > 1), v41 + 1, 1);
        v25 = v71;
      }

      *(v25 + 16) = v41 + 1;
      v42 = v25 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      ++v34;
      --v24;
    }

    while (v24);
  }

  v5 = v67;
  v0 = v69;
LABEL_48:
  v0[18] = v25;
  v43 = v0[15];
  v44 = swift_task_alloc();
  v44[2] = v43;
  v44[3] = v25;
  v44[4] = v5;
  sub_226D6EB7C();

  v2 = MEMORY[0x277D84F90];
  v0[12] = sub_226B23138(MEMORY[0x277D84F90]);
  sub_226B21E80(v25, v0 + 12);
  v45 = swift_task_alloc();
  *(v45 + 16) = v5;
  *(v45 + 24) = v0 + 12;
  sub_226D6EB8C();

  v0[19] = v0[12];
  v47 = swift_task_alloc();
  v47[2] = v25;
  v47[3] = v5;
  v47[4] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A10, &unk_226D72558);
  sub_226D6EB8C();
  v0[20] = 0;

  v1 = v0[13];
  v3 = (v1 >> 62);
  if (v1 >> 62)
  {
LABEL_78:
    if (sub_226D6EDFC())
    {
      goto LABEL_54;
    }

LABEL_79:

    v63 = v0[1];

    return v63();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_79;
  }

LABEL_54:
  __swift_project_boxed_opaque_existential_1(v64 + 2, v64[5]);
  sub_226D1F020(v0 + 7);
  v66 = v0[10];
  v68 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v66);
  if (v3)
  {
    v48 = sub_226D6EDFC();
  }

  else
  {
    v48 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v48)
  {
    v71 = v2;
    result = sub_226AE1D68(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
      __break(1u);
      return result;
    }

    v49 = 0;
    v50 = v71;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x22AA8AFD0](v49, v1);
      }

      else
      {
        v51 = *(v1 + 8 * v49 + 32);
      }

      v52 = v51;
      v53 = [v52 primaryAccountIdentifier];
      v54 = sub_226D6E39C();
      v56 = v55;

      v71 = v50;
      v58 = *(v50 + 16);
      v57 = *(v50 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_226AE1D68((v57 > 1), v58 + 1, 1);
        v50 = v71;
      }

      ++v49;
      *(v50 + 16) = v58 + 1;
      v59 = v50 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
    }

    while (v48 != v49);

    v0 = v69;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v0[21] = v50;
  v60 = *(v68 + 16);
  v70 = (v60 + *v60);
  v61 = v60[1];
  v62 = swift_task_alloc();
  v0[22] = v62;
  *v62 = v0;
  v62[1] = sub_226B21578;

  return v70(v50, v66, v68);
}

uint64_t sub_226B21578()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226B2169C, 0, 0);
}

uint64_t sub_226B2169C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  *(v0 + 112) = sub_226B23138(MEMORY[0x277D84F90]);
  sub_226B21E80(v2, (v0 + 112));
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 112;
  sub_226D6EB8C();
  v5 = *(v0 + 152);
  v6 = *(v0 + 144);
  if (v1)
  {
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);

    v9 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v13 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 144);

    sub_226B24694(v5, *(v0 + 112));
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v13 = *(v0 + 8);
  }

  return v13();
}

void sub_226B21818(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_226B24B10(a2, a3);
  if (!v3)
  {
    v9[0] = 0;
    if ([a3 save_])
    {
      v5 = v9[0];
      v6 = *MEMORY[0x277D85DE8];
      return;
    }

    v7 = v9[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B218E8@<X0>(unint64_t a1@<X2>, unint64_t a2@<X8>)
{
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C06C();
  sub_226D6D46C();
  v10 = sub_226D6C05C();
  v11 = v2;
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v10;
  v54 = a1;
  v55 = a2;
  (*(v6 + 8))(v9, v5);

  v15 = sub_226AE3C28(v14);

  if (v13 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v53[1] = v11;
    v17 = MEMORY[0x277D84F90];
    if (i)
    {
      v59 = MEMORY[0x277D84F90];
      result = sub_226AE1D68(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v58 = v15;
      v18 = v59;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          MEMORY[0x22AA8AFD0](v19, v13);
          v20 = [swift_unknownObjectRetain() passSerial];
          v21 = sub_226D6E39C();
          v23 = v22;
          swift_unknownObjectRelease_n();

          v59 = v18;
          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_226AE1D68((v24 > 1), v25 + 1, 1);
            v18 = v59;
          }

          ++v19;
          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v21;
          *(v26 + 40) = v23;
        }

        while (i != v19);
      }

      else
      {
        v27 = 32;
        do
        {
          v28 = *(v13 + v27);
          v29 = [v28 passSerial];
          v30 = sub_226D6E39C();
          v32 = v31;

          v59 = v18;
          v34 = *(v18 + 16);
          v33 = *(v18 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_226AE1D68((v33 > 1), v34 + 1, 1);
            v18 = v59;
          }

          *(v18 + 16) = v34 + 1;
          v35 = v18 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v27 += 8;
          --i;
        }

        while (i);
      }

      v15 = v58;
      v17 = MEMORY[0x277D84F90];
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v36 = sub_226D54F60(v18, v15);

    v60 = v17;
    v37 = v54;
    v11 = v55;
    if (v54 >> 62)
    {
      break;
    }

    v13 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_45;
    }

LABEL_21:
    v38 = 0;
    v57 = v37 & 0xFFFFFFFFFFFFFF8;
    v58 = v37 & 0xC000000000000001;
    v56 = v37 + 32;
    v39 = v36 + 56;
    while (1)
    {
      if (v58)
      {
        v40 = MEMORY[0x22AA8AFD0](v38, v54);
      }

      else
      {
        if (v38 >= *(v57 + 16))
        {
          goto LABEL_42;
        }

        v40 = *(v56 + 8 * v38);
      }

      v41 = v40;
      if (__OFADD__(v38++, 1))
      {
        break;
      }

      v11 = [v40 serialNumber];
      v43 = sub_226D6E39C();
      v45 = v44;

      if (*(v36 + 16) && (v46 = *(v36 + 40), sub_226D6F2FC(), sub_226D6E42C(), v47 = sub_226D6F35C(), v48 = -1 << *(v36 + 32), v11 = v47 & ~v48, ((*(v39 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v15 = ~v48;
        while (1)
        {
          v49 = (*(v36 + 48) + 16 * v11);
          v50 = *v49 == v43 && v49[1] == v45;
          if (v50 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v11 = (v11 + 1) & v15;
          if (((*(v39 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v11 = &v60;
        sub_226D6EF6C();
        v51 = *(v60 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
LABEL_22:
      }

      if (v38 == v13)
      {
        v52 = v60;
        v11 = v55;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v13 = sub_226D6EDFC();
  if (v13)
  {
    goto LABEL_21;
  }

LABEL_45:
  v52 = MEMORY[0x277D84F90];
LABEL_46:

  *v11 = v52;
  return result;
}

uint64_t sub_226B21DF0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return BankConnectServiceImplementation.reevaluateBankConnectEligibility()();
}

uint64_t sub_226B21E80(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;

    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a2;
    v24 = *a2;
    *a2 = 0x8000000000000000;
    v11 = sub_226C2FDD4(v7, v6);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v10[3] < v16)
    {
      sub_226C31FE4(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_226C2FDD4(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v19 = v24;
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v11;
    sub_226C38320();
    v11 = v23;
    v19 = v24;
    if (v17)
    {
LABEL_3:
      *(v19[7] + v11) = 0;
      goto LABEL_4;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + v11) = 0;
    v21 = v19[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v19[2] = v22;

LABEL_4:
    v5 = *a2;
    *a2 = v19;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

void sub_226B2201C(uint64_t a1, void *a2)
{
  sub_226D6C06C();
  v4 = sub_226D6C03C();
  isUniquelyReferenced_nonNull_native = sub_226D6EBBC();

  if (!v2)
  {
    v36 = a2;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
LABEL_30:
      v6 = sub_226D6EDFC();
      v7 = v36;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v36;
      if (v6)
      {
LABEL_4:
        v8 = 0;
        v34 = isUniquelyReferenced_nonNull_native;
        v35 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v32 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v33 = v6;
        do
        {
          if (v35)
          {
            v11 = MEMORY[0x22AA8AFD0](v8, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            if (v8 >= *(v32 + 16))
            {
              goto LABEL_29;
            }

            v11 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
          }

          v12 = v11;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v37 = v8 + 1;
          v13 = [v11 passSerial];
          v14 = sub_226D6E39C();
          v16 = v15;

          if ([v12 linkable])
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          v18 = *v7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = *v7;
          v38 = *v7;
          *v7 = 0x8000000000000000;
          v21 = sub_226C2FDD4(v14, v16);
          v22 = v19[2];
          v23 = (v20 & 1) == 0;
          v24 = v22 + v23;
          if (__OFADD__(v22, v23))
          {
            goto LABEL_27;
          }

          v25 = v20;
          if (v19[3] >= v24)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v20)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_226C38320();
              if (v25)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_226C31FE4(v24, isUniquelyReferenced_nonNull_native);
            v26 = sub_226C2FDD4(v14, v16);
            if ((v25 & 1) != (v27 & 1))
            {
              sub_226D6F25C();
              __break(1u);
              return;
            }

            v21 = v26;
            if (v25)
            {
LABEL_5:

              v9 = v38;
              *(v38[7] + v21) = v17;

              goto LABEL_6;
            }
          }

          v9 = v38;
          v38[(v21 >> 6) + 8] |= 1 << v21;
          v28 = (v38[6] + 16 * v21);
          *v28 = v14;
          v28[1] = v16;
          *(v38[7] + v21) = v17;

          v29 = v38[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_28;
          }

          v38[2] = v31;
LABEL_6:
          v7 = v36;
          v10 = *v36;
          *v36 = v9;

          ++v8;
          isUniquelyReferenced_nonNull_native = v34;
        }

        while (v37 != v33);
      }
    }
  }
}

unint64_t sub_226B222FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B28, &qword_226D72628);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B30, &qword_226D72630);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6B28, &qword_226D72628);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226C2FDD4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_226D684AC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B224FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A18, &qword_226D77DD0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
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

unint64_t sub_226B22610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A20, &qword_226D72590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A28, &qword_226D72598);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A20, &qword_226D72590);
      v13 = *v6;
      v12 = v6[1];
      result = sub_226C2FD40(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B22808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A38, &qword_226D725A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A40, &unk_226D77E00);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A38, &qword_226D725A0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226C2FD40(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = _s7ChangesV11FulfillmentVMa(0);
      result = sub_226B24AA8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, _s7ChangesV11FulfillmentVMa);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B229F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA8, &qword_226D725E0);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, v13, &qword_27D7A6AB0, &unk_226D79520);
      result = sub_226C2FE4C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_226B24A98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_226B22B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A90, &qword_226D725D0);
    v3 = sub_226D6F10C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_226C2FE90(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_226B22C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A98, &qword_226D725D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AA0, &unk_226D77EE0);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A98, &qword_226D725D8);
      result = sub_226C2FED4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_226D689EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B22DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD0, &qword_226D725F0);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, &v13, &qword_27D7A68E8, &unk_226D76980);
      v5 = v13;
      v6 = v14;
      result = sub_226C2FDD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226B24A98(&v15, (v3[7] + 32 * result));
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

unint64_t sub_226B22F20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A48, &qword_226D725A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C40, &unk_226D7AE70);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A48, &qword_226D725A8);
      result = sub_226C2FFAC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for PermissionIdentifier(0);
      sub_226B24AA8(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PermissionIdentifier);
      v17 = v8[7];
      v18 = type metadata accessor for Permission(0);
      result = sub_226B24AA8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for Permission);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B23138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B20, &unk_226D77FC0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_226B23250@<X0>(unint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_226B218E8(v1[4], a1);
}

unint64_t sub_226B23270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B10, &qword_226D72620);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B18, &qword_226D77EC0);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6B10, &qword_226D72620);
      v12 = *v6;
      result = sub_226C30098(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
      result = sub_226B24AA8(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B23454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC0, &qword_226D77F60);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, &v11, &qword_27D7A6AC8, &unk_226D76970);
      v5 = v11;
      result = sub_226C301A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_226B24A98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_226B2357C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AE8, &qword_226D72600);
    v3 = sub_226D6F10C();
    v4 = a1 + 32;

    while (1)
    {
      sub_226AC40E8(v4, &v11, &qword_27D7A6AF0, &qword_226D72608);
      v5 = v11;
      result = sub_226C30258(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_226B24A98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_226B236A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A88, &unk_226D77ED0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_226C3015C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_226B2379C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD8, &qword_226D725F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AE0, &qword_226D77F90);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6AD8, &qword_226D725F8);
      result = sub_226C302EC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_226D680FC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_226D68CEC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B239BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A78, &qword_226D725C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A78, &qword_226D725C8);
      result = sub_226C2FE4C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6] + 40 * result;
      v16 = *v6;
      v17 = *(v6 + 1);
      *(v15 + 32) = *(v6 + 4);
      *v15 = v16;
      *(v15 + 16) = v17;
      v18 = v8[7];
      v19 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
      result = sub_226B24AA8(&v6[v9], v18 + *(*(v19 - 8) + 72) * v14, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B23BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B08, &qword_226D72618);
    v3 = sub_226D6F10C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_226C301A0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_226B23CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B00, &qword_226D72610);
    v3 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_226B23D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AF8, &unk_226D77FA0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226C2FDD4(v5, v6);
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

unint64_t sub_226B23E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A50, &qword_226D725B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A58, &qword_226D725B8);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A50, &qword_226D725B0);
      result = sub_226C3064C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_226D6B9BC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B24080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AB8, &qword_226D725E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C50, &qword_226D77F50);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6AB8, &qword_226D725E8);
      result = sub_226C3049C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_226D6D52C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_226D67E5C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B242B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_226D6F10C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_226C2FDD4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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

unint64_t sub_226B243B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A68, &unk_226D7C6B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A70, &qword_226D725C0);
    v8 = sub_226D6F10C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226AC40E8(v10, v6, &qword_27D7A6A68, &unk_226D7C6B0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226C2FDD4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_226D66F6C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_226B2459C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
    v3 = sub_226D6F10C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_226C3015C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_226B24694(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0;

  v42 = a2;
  while (v7)
  {
LABEL_9:
    v11 = (v3[6] + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];
    v14 = v3[2];

    if (v14 && (v15 = sub_226C2FDD4(v12, v13), (v16 & 1) != 0))
    {
      v17 = *(v3[7] + v15);
    }

    else
    {
      v17 = 3;
    }

    v44 = v17;
    if (*(a2 + 16) && (v18 = sub_226C2FDD4(v12, v13), (v19 & 1) != 0))
    {
      v20 = *(*(a2 + 56) + v18);
    }

    else
    {
      v20 = 3;
    }

    v43 = v20;
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_27D7A7D10);

    v22 = sub_226D6E05C();
    v23 = sub_226D6E9EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v24 = 136315650;
      v25 = sub_226AC4530(v12, v13, &v45);

      *(v24 + 4) = v25;
      *(v24 + 12) = 2080;
      v26 = 0x6B6E696C20746F6ELL;
      if (v44 != 2)
      {
        v26 = 7104878;
      }

      v27 = 0xEC000000656C6261;
      if (v44 != 2)
      {
        v27 = 0xE300000000000000;
      }

      v28 = 0x656C62616B6E696CLL;
      if (!v44)
      {
        v28 = 0x6D72657465646E75;
      }

      v29 = 0xEC00000064656E69;
      if (v44)
      {
        v29 = 0xE800000000000000;
      }

      if (v44 <= 1)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (v44 <= 1)
      {
        v31 = v29;
      }

      else
      {
        v31 = v27;
      }

      v32 = sub_226AC4530(v30, v31, &v45);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2080;
      v33 = 0x6B6E696C20746F6ELL;
      if (v43 != 2)
      {
        v33 = 7104878;
      }

      v34 = 0xEC000000656C6261;
      if (v43 != 2)
      {
        v34 = 0xE300000000000000;
      }

      v35 = 0x6D72657465646E75;
      if (v43)
      {
        v35 = 0x656C62616B6E696CLL;
      }

      v36 = 0xEC00000064656E69;
      if (v43)
      {
        v36 = 0xE800000000000000;
      }

      if (v43 <= 1)
      {
        v37 = v35;
      }

      else
      {
        v37 = v33;
      }

      if (v43 <= 1)
      {
        v38 = v36;
      }

      else
      {
        v38 = v34;
      }

      v39 = sub_226AC4530(v37, v38, &v45);

      *(v24 + 24) = v39;
      _os_log_impl(&dword_226AB4000, v22, v23, "Finished evaluating engagement event eligibility for pass %s: before (%s), after (%s)", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v41, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);

      v3 = v40;
    }

    else
    {
    }

    a2 = v42;
    v7 &= v7 - 1;
    if (v44 != 1 && v43 == 1)
    {
      sub_226B9E364();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

_OWORD *sub_226B24A98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_226B24AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226B24B10(uint64_t a1, id a2)
{
  sub_226D6C06C();
  v4 = sub_226D6C04C();
  if (!v2)
  {
    v5 = v4;
    if (qword_27D7A5F60 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v6 = sub_226D6E07C();
      __swift_project_value_buffer(v6, qword_27D7A7D10);

      v7 = sub_226D6E05C();
      v8 = sub_226D6E9EC();
      v9 = v5 >> 62;
      if (os_log_type_enabled(v7, v8))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v46 = v11;
        *v10 = 134218242;
        if (v9)
        {
          v12 = sub_226D6EDFC();
        }

        else
        {
          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v10 + 4) = v12;

        *(v10 + 12) = 2080;
        v43 = v11;
        if (v9)
        {
          v13 = sub_226D6EDFC();
        }

        else
        {
          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = v8;
        if (v13)
        {
          v45 = MEMORY[0x277D84F90];
          sub_226AE1D68(0, v13 & ~(v13 >> 63), 0);
          if (v13 < 0)
          {
            __break(1u);
            return;
          }

          v40 = v10;
          v41 = v7;
          v42 = a2;
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = 0;
            do
            {
              MEMORY[0x22AA8AFD0](v14, v5);
              v15 = [swift_unknownObjectRetain() passSerial];
              v16 = sub_226D6E39C();
              v18 = v17;
              swift_unknownObjectRelease_n();

              v20 = *(v45 + 16);
              v19 = *(v45 + 24);
              if (v20 >= v19 >> 1)
              {
                sub_226AE1D68((v19 > 1), v20 + 1, 1);
              }

              ++v14;
              *(v45 + 16) = v20 + 1;
              v21 = v45 + 16 * v20;
              *(v21 + 32) = v16;
              *(v21 + 40) = v18;
            }

            while (v13 != v14);
          }

          else
          {
            v22 = (v5 + 32);
            do
            {
              v23 = *v22;
              v24 = [v23 passSerial];
              v25 = sub_226D6E39C();
              v27 = v26;

              v29 = *(v45 + 16);
              v28 = *(v45 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_226AE1D68((v28 > 1), v29 + 1, 1);
              }

              *(v45 + 16) = v29 + 1;
              v30 = v45 + 16 * v29;
              *(v30 + 32) = v25;
              *(v30 + 40) = v27;
              ++v22;
              --v13;
            }

            while (v13);
          }

          v7 = v41;
          a2 = v42;
          v10 = v40;
          v9 = v5 >> 62;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
        sub_226AE3D6C();
        v31 = sub_226D6E31C();
        v33 = v32;

        v34 = sub_226AC4530(v31, v33, &v46);

        *(v10 + 14) = v34;
        _os_log_impl(&dword_226AB4000, v7, v44, "Removing %ld dangling responses for passes %s", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x22AA8BEE0](v43, -1, -1);
        MEMORY[0x22AA8BEE0](v10, -1, -1);
      }

      else
      {
      }

      if (v9)
      {
        v35 = sub_226D6EDFC();
      }

      else
      {
        v35 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = a2;
      if (!v35)
      {
LABEL_35:

        return;
      }

      v36 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x22AA8AFD0](v36, v5);
        }

        else
        {
          if (v36 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v37 = *(v5 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        [a2 deleteObject_];

        ++v36;
        if (v39 == v35)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226B250F8()
{
  result = qword_27D7A6B40;
  if (!qword_27D7A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B40);
  }

  return result;
}

id sub_226B25164()
{
  result = [objc_opt_self() isWalletVisible];
  byte_281062560 = result;
  return result;
}

uint64_t static WalletInfo.isWalletVisible.getter()
{
  if (qword_281062558 != -1)
  {
    swift_once();
  }

  return byte_281062560;
}

id static WalletInfo.isWalletDeletedRemote.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v1 = [v0 passbookHasBeenDeleted];

  return v1;
}

uint64_t sub_226B25278()
{
  if (qword_281062558 != -1)
  {
    swift_once();
  }

  return byte_281062560;
}

id sub_226B25308()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v1 = [v0 passbookHasBeenDeleted];

  return v1;
}

uint64_t getEnumTagSinglePayload for WalletInfo(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WalletInfo(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_226B25490(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.financed.orders.tasks";
  v4 = 0xD000000000000025;
  if (v2 == 1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.financed.orders.tasks";
  }

  else
  {
    v6 = "ed.bankconnect.reboot";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.springboard";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = "ed.bankconnect.reboot";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "com.apple.springboard";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_226D6F21C();
  }

  return v11 & 1;
}

uint64_t sub_226B25568()
{
  v1 = *v0;
  sub_226D6F2FC();
  sub_226D6E42C();

  return sub_226D6F35C();
}

uint64_t sub_226B25604()
{
  *v0;
  *v0;
  sub_226D6E42C();
}

uint64_t sub_226B2568C()
{
  v1 = *v0;
  sub_226D6F2FC();
  sub_226D6E42C();

  return sub_226D6F35C();
}

uint64_t sub_226B25724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226B299A0();
  *a2 = result;
  return result;
}

void sub_226B25754(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "com.apple.financed.orders.tasks";
  v4 = 0xD000000000000025;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = "ed.bankconnect.reboot";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "com.apple.springboard";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_226B257B0()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

BOOL sub_226B25908(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_226B25938@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_226B25964@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_226B25A58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_226B299EC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_226B25A9C()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000001CLL, 0x8000000226D7F810);
  v2 = "com.apple.financed.orders.tasks";
  v3 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v3 = 0xD000000000000024;
    v2 = "ed.bankconnect.reboot";
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = "com.apple.springboard";
  }

  MEMORY[0x22AA8A510](v4, v5 | 0x8000000000000000);

  MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D7F830);
  v6 = type metadata accessor for ActivityRequest(0);
  v7 = *(v6 + 20);
  sub_226D6D4AC();
  sub_226B2A0DC(&qword_281062B80, MEMORY[0x277CC9578]);
  v8 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v8);

  MEMORY[0x22AA8A510](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v10 = v1[*(v6 + 24)];
  sub_226D6EFBC();
  MEMORY[0x22AA8A510](10528, 0xE200000000000000);
  return 0;
}

void sub_226B25C70()
{
  v1 = v0;
  empty = xpc_dictionary_create_empty();
  v3 = type metadata accessor for ActivityRequest(0);
  v4 = v0 + *(v3 + 20);
  sub_226D6D3BC();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  xpc_dictionary_set_int64(empty, *MEMORY[0x277D86250], v5 & ~(v5 >> 63));
  xpc_dictionary_set_int64(empty, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v6 = *(v1 + *(v3 + 24));
  if ((v6 & 4) == 0)
  {
    goto LABEL_7;
  }

  if (!*MEMORY[0x277D86398])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86398], 1);
LABEL_7:
  if (v6)
  {
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
  }

  if ((v6 & 2) != 0)
  {
    if (*MEMORY[0x277D86328])
    {
      xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86328], 1);
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t sub_226B25DF0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6E1CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_226D6E1DC();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    swift_beginAccess();
    v17 = *(v2 + 24);
    if (*(v17 + 16))
    {
      v18 = sub_226C30098(a1);
      if (v19)
      {
        sub_226B29B78(*(v17 + 56) + *(v6 + 72) * v18, v9, type metadata accessor for XPCActivityScheduler.ActivityInfo);
        sub_226B2A028(v9, a2, type metadata accessor for XPCActivityScheduler.ActivityInfo);
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  swift_endAccess();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_226D6EEFC();

  v24 = 0xD000000000000019;
  v25 = 0x8000000226D7F870;
  if (a1)
  {
    if (a1 == 1)
    {
      v21 = 0xD000000000000025;
    }

    else
    {
      v21 = 0xD000000000000024;
    }

    if (a1 == 1)
    {
      v22 = "com.apple.financed.orders.tasks";
    }

    else
    {
      v22 = "ed.bankconnect.reboot";
    }
  }

  else
  {
    v21 = 0xD00000000000001FLL;
    v22 = "com.apple.springboard";
  }

  MEMORY[0x22AA8A510](v21, v22 | 0x8000000000000000);

  MEMORY[0x22AA8A510](0x67657220746F6E20, 0xEF64657265747369);
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B26120(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  LODWORD(v6) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v71 = *(v11 - 1);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = sub_226D6E1CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + 16);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_226D6E1DC();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v68 = a3;
    v69 = v10;
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = 0xD00000000000001FLL;
  v25 = sub_226D6E07C();
  __swift_project_value_buffer(v25, qword_28105F598);
  v26 = sub_226D6E05C();
  v27 = sub_226D6E9EC();
  v28 = os_log_type_enabled(v26, v27);
  v72 = v6;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73[0] = v30;
    *v29 = 136446210;
    if (v6)
    {
      if (v6 == 1)
      {
        v31 = 0xD000000000000025;
      }

      else
      {
        v31 = 0xD000000000000024;
      }

      if (v6 == 1)
      {
        v32 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v32 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v32 = "com.apple.springboard";
      v31 = 0xD00000000000001FLL;
    }

    v6 = sub_226AC4530(v31, v32 | 0x8000000000000000, v73);

    *(v29 + 4) = v6;
    _os_log_impl(&dword_226AB4000, v26, v27, "%{public}s: Registering activity handler", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    MEMORY[0x22AA8BEE0](v29, -1, -1);

    LOBYTE(v6) = v72;
    v24 = 0xD00000000000001FLL;
  }

  else
  {
  }

  swift_beginAccess();
  v33 = *(v4 + 24);
  if (*(v33 + 16) && (v34 = sub_226C30098(v6), (v35 & 1) != 0))
  {
    sub_226B29B78(*(v33 + 56) + *(v71 + 72) * v34, v67, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    swift_endAccess();
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v73[0] = v39;
      *v38 = 136446210;
      if (v6)
      {
        if (v6 == 1)
        {
          v40 = 0xD000000000000025;
        }

        else
        {
          v40 = 0xD000000000000024;
        }

        if (v6 == 1)
        {
          v41 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v41 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v41 = "com.apple.springboard";
        v40 = 0xD00000000000001FLL;
      }

      v45 = sub_226AC4530(v40, v41 | 0x8000000000000000, v73);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_226AB4000, v36, v37, "%{public}s: Replacing existing activity handler", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);

      v24 = 0xD00000000000001FLL;
    }

    else
    {
    }

    sub_226B2A028(v67, v16, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    v46 = *(v16 + 1);
    v47 = v68;

    *v16 = v70;
    *(v16 + 1) = v47;
  }

  else
  {
    swift_endAccess();
    v42 = v11[5];
    v43 = type metadata accessor for ActivityRequest(0);
    (*(*(v43 - 8) + 56))(&v16[v42], 1, 1, v43);
    v44 = v68;
    *v16 = v70;
    *(v16 + 1) = v44;
    v16[v11[6]] = 0;
    v16[v11[7]] = 0;
  }

  v48 = v11[6];
  v49 = v16[v48];
  v50 = sub_226D6E05C();
  v51 = sub_226D6E9EC();
  v52 = os_log_type_enabled(v50, v51);
  if (v49)
  {
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73[0] = v54;
      *v53 = 136446210;
      v55 = v72;
      if (v72)
      {
        if (v72 == 1)
        {
          v24 = 0xD000000000000025;
        }

        else
        {
          v24 = 0xD000000000000024;
        }

        if (v72 == 1)
        {
          v56 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v56 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v56 = "com.apple.springboard";
      }

      v60 = sub_226AC4530(v24, v56 | 0x8000000000000000, v73);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_226AB4000, v50, v51, "%{public}s: Activity already registering", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x22AA8BEE0](v54, -1, -1);
      MEMORY[0x22AA8BEE0](v53, -1, -1);
    }

    else
    {

      v55 = v72;
    }

    v61 = v69;
    sub_226B29B78(v16, v69, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    (*(v71 + 56))(v61, 0, 1, v11);
    swift_beginAccess();
    sub_226D48A48(v61, v55);
    swift_endAccess();
  }

  else
  {
    if (v52)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73[0] = v58;
      *v57 = 136446210;
      if (v72)
      {
        if (v72 == 1)
        {
          v24 = 0xD000000000000025;
        }

        else
        {
          v24 = 0xD000000000000024;
        }

        if (v72 == 1)
        {
          v59 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v59 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v59 = "com.apple.springboard";
      }

      v62 = sub_226AC4530(v24, v59 | 0x8000000000000000, v73);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_226AB4000, v50, v51, "%{public}s: Registering activity now", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x22AA8BEE0](v58, -1, -1);
      MEMORY[0x22AA8BEE0](v57, -1, -1);
    }

    v16[v48] = 1;
    v63 = v69;
    sub_226B29B78(v16, v69, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    (*(v71 + 56))(v63, 0, 1, v11);
    swift_beginAccess();
    v64 = v63;
    LOBYTE(v63) = v72;
    sub_226D48A48(v64, v72);
    swift_endAccess();
    sub_226B26A08(v63);
  }

  return sub_226B29BE0(v16, type metadata accessor for XPCActivityScheduler.ActivityInfo);
}

void sub_226B26A08(char a1)
{
  v2 = v1;
  if (qword_28105F590 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F598);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0xD000000000000025;
      }

      else
      {
        v9 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v10 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v10 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v10 = "com.apple.springboard";
      v9 = 0xD00000000000001FLL;
    }

    v11 = sub_226AC4530(v9, v10 | 0x8000000000000000, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v5, v6, "%{public}s: Registering activity (check-in)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v12 = *MEMORY[0x277D86238];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v16[4] = sub_226B29C40;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_226B27F7C;
  v16[3] = &block_descriptor_33;
  v14 = _Block_copy(v16);

  v15 = sub_226D6E40C();

  xpc_activity_register((v15 + 32), v12, v14);

  _Block_release(v14);
}

uint64_t sub_226B26CC0(uint64_t a1)
{
  v3 = type metadata accessor for ActivityRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 16);
  sub_226B29B78(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityRequest);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_226B2A028(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ActivityRequest);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_226B29A24;
  *(v9 + 24) = v8;
  aBlock[4] = sub_226B1BA20;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226CAD254;
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226B26ECC(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v79 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v79 - v9;
  v11 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityRequest(0);
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = *(v83 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - v18;
  v20 = sub_226D6E1CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = v1;
  v25 = *(v1 + 16);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_226D6E1DC();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v87 = *a1;
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = sub_226D6E07C();
  __swift_project_value_buffer(v27, qword_28105F598);
  v28 = a1;
  sub_226B29B78(a1, v19, type metadata accessor for ActivityRequest);
  v29 = sub_226D6E05C();
  v30 = sub_226D6E9EC();
  if (os_log_type_enabled(v29, v30))
  {
    v79 = v11;
    v81 = v6;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v88[0] = v32;
    *v31 = 136446466;
    v33 = "com.apple.financed.orders.tasks";
    v34 = 0xD000000000000025;
    if (v87 != 1)
    {
      v34 = 0xD000000000000024;
      v33 = "ed.bankconnect.reboot";
    }

    if (v87)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0xD00000000000001FLL;
    }

    if (v87)
    {
      v36 = v33;
    }

    else
    {
      v36 = "com.apple.springboard";
    }

    v37 = sub_226AC4530(v35, v36 | 0x8000000000000000, v88);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    v38 = sub_226B25A9C();
    v40 = v39;
    sub_226B29BE0(v19, type metadata accessor for ActivityRequest);
    v41 = sub_226AC4530(v38, v40, v88);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_226AB4000, v29, v30, "%{public}s: Submitting activity request %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v32, -1, -1);
    MEMORY[0x22AA8BEE0](v31, -1, -1);

    v6 = v81;
    v11 = v79;
  }

  else
  {

    sub_226B29BE0(v19, type metadata accessor for ActivityRequest);
  }

  v42 = v85;
  sub_226B25DF0(v87, v85);
  v43 = *(v11 + 20);
  sub_226B29AA0(v42 + v43, v10);
  v45 = v83;
  v44 = v84;
  if ((*(v83 + 48))(v10, 1, v84) == 1)
  {
    sub_226B29B10(v10);
    goto LABEL_29;
  }

  v46 = v10;
  v47 = v80;
  sub_226B2A028(v46, v80, type metadata accessor for ActivityRequest);
  if (!sub_226B29870(v28, v47))
  {
    sub_226B29BE0(v47, type metadata accessor for ActivityRequest);
LABEL_29:
    sub_226B29B10(v42 + v43);
    sub_226B29B78(v28, v42 + v43, type metadata accessor for ActivityRequest);
    (*(v45 + 56))(v42 + v43, 0, 1, v44);
    v57 = v11;
    v58 = *(v11 + 24);
    v59 = *(v42 + v58);
    v60 = sub_226D6E05C();
    v61 = sub_226D6E9EC();
    v62 = os_log_type_enabled(v60, v61);
    if (v59)
    {
      if (v62)
      {
        v81 = v6;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v88[0] = v64;
        *v63 = 136446210;
        v65 = "com.apple.financed.orders.tasks";
        v66 = 0xD000000000000025;
        if (v87 != 1)
        {
          v66 = 0xD000000000000024;
          v65 = "ed.bankconnect.reboot";
        }

        if (v87)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0xD00000000000001FLL;
        }

        if (v87)
        {
          v68 = v65;
        }

        else
        {
          v68 = "com.apple.springboard";
        }

        v69 = sub_226AC4530(v67, v68 | 0x8000000000000000, v88);

        *(v63 + 4) = v69;
        _os_log_impl(&dword_226AB4000, v60, v61, "%{public}s: Activity already registering", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        MEMORY[0x22AA8BEE0](v64, -1, -1);
        MEMORY[0x22AA8BEE0](v63, -1, -1);

        v6 = v81;
      }

      else
      {
      }

      *(v42 + v58) = 1;
      sub_226B29B78(v42, v6, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      (*(v82 + 56))(v6, 0, 1, v57);
      swift_beginAccess();
      sub_226D48A48(v6, v87);
      swift_endAccess();
    }

    else
    {
      if (v62)
      {
        v81 = v6;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v88[0] = v71;
        *v70 = 136446210;
        v72 = "com.apple.financed.orders.tasks";
        v73 = 0xD000000000000025;
        if (v87 != 1)
        {
          v73 = 0xD000000000000024;
          v72 = "ed.bankconnect.reboot";
        }

        if (v87)
        {
          v74 = v73;
        }

        else
        {
          v74 = 0xD00000000000001FLL;
        }

        if (v87)
        {
          v75 = v72;
        }

        else
        {
          v75 = "com.apple.springboard";
        }

        v76 = sub_226AC4530(v74, v75 | 0x8000000000000000, v88);

        *(v70 + 4) = v76;
        _os_log_impl(&dword_226AB4000, v60, v61, "%{public}s: Registering activity now", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x22AA8BEE0](v71, -1, -1);
        MEMORY[0x22AA8BEE0](v70, -1, -1);

        v6 = v81;
      }

      else
      {
      }

      *(v42 + v58) = 1;
      sub_226B29B78(v42, v6, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      (*(v82 + 56))(v6, 0, 1, v57);
      swift_beginAccess();
      v77 = v87;
      sub_226D48A48(v6, v87);
      swift_endAccess();
      sub_226B26A08(v77);
    }

    return sub_226B29BE0(v42, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  }

  v48 = sub_226D6E05C();
  v49 = sub_226D6E9EC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v88[0] = v51;
    *v50 = 136446210;
    v52 = "com.apple.financed.orders.tasks";
    v53 = 0xD000000000000025;
    if (v87 != 1)
    {
      v53 = 0xD000000000000024;
      v52 = "ed.bankconnect.reboot";
    }

    if (v87)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0xD00000000000001FLL;
    }

    if (v87)
    {
      v55 = v52;
    }

    else
    {
      v55 = "com.apple.springboard";
    }

    v56 = sub_226AC4530(v54, v55 | 0x8000000000000000, v88);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_226AB4000, v48, v49, "%{public}s: Activity request equals pending request", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x22AA8BEE0](v51, -1, -1);
    MEMORY[0x22AA8BEE0](v50, -1, -1);
  }

  sub_226B29BE0(v47, type metadata accessor for ActivityRequest);
  return sub_226B29BE0(v42, type metadata accessor for XPCActivityScheduler.ActivityInfo);
}

uint64_t sub_226B2795C(char a1)
{
  v3 = sub_226D6E1CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_226D6E1DC();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F598);
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v15 = 0xD000000000000025;
      }

      else
      {
        v15 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v16 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v16 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v16 = "com.apple.springboard";
      v15 = 0xD00000000000001FLL;
    }

    v17 = sub_226AC4530(v15, v16 | 0x8000000000000000, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v11, v12, "%{public}s: Unregistering activity", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  v18 = sub_226D6E40C();

  xpc_activity_unregister((v18 + 32));
}

void sub_226B27C38(_xpc_activity_s *a1, char a2)
{
  LOBYTE(v3) = a2;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
LABEL_5:

    sub_226B29C6C(v3);
    return;
  }

  if (!state)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    *(v7 + 32) = v3;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_226B29FB4;
    *(v3 + 24) = v7;
    aBlock[4] = sub_226B2A194;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_226CAD254;
    aBlock[3] = &block_descriptor_43;
    v8 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    dispatch_sync(v6, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  v10 = state;
  if (qword_28105F590 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F598);
  oslog = sub_226D6E05C();
  v12 = sub_226D6E9EC();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = 0xD00000000000001FLL;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446466;
    if (v3)
    {
      if (v3 == 1)
      {
        v13 = 0xD000000000000025;
      }

      else
      {
        v13 = 0xD000000000000024;
      }

      if (v3 == 1)
      {
        v16 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v16 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v16 = "com.apple.springboard";
    }

    v17 = sub_226AC4530(v13, v16 | 0x8000000000000000, aBlock);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&dword_226AB4000, oslog, v12, "%{public}s: Activity callback with state %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_226B27F7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_226B27FDC(_xpc_activity_s *a1, int a2)
{
  v111 = a1;
  v4 = sub_226D6D4AC();
  v109 = *(v4 - 8);
  v110 = v4;
  v5 = *(v109 + 64);
  MEMORY[0x28223BE20](v4);
  v108 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v106 - v9;
  v11 = type metadata accessor for ActivityRequest(0);
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = *(v113 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6BF0, &qword_226D72B78);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v106 - v18;
  v117 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v115 = *(v117 - 1);
  v20 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_226D6E1CC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = v2;
  v28 = *(v2 + 16);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v29 = v28;
  LOBYTE(v28) = sub_226D6E1DC();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v112 = v10;
    if (qword_28105F590 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v30 = 0xD00000000000001FLL;
  v31 = sub_226D6E07C();
  v32 = __swift_project_value_buffer(v31, qword_28105F598);
  v33 = sub_226D6E05C();
  v34 = sub_226D6E9EC();
  if (os_log_type_enabled(v33, v34))
  {
    v106 = v32;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v119[0] = v36;
    *v35 = 136446210;
    v37 = a2;
    v38 = a2;
    if (a2)
    {
      v39 = v22;
      if (v38 == 1)
      {
        v40 = 0xD000000000000025;
      }

      else
      {
        v40 = 0xD000000000000024;
      }

      if (v38 == 1)
      {
        v41 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v41 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v39 = v22;
      v41 = "com.apple.springboard";
      v40 = 0xD00000000000001FLL;
    }

    v42 = sub_226AC4530(v40, v41 | 0x8000000000000000, v119);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_226AB4000, v33, v34, "%{public}s: Check-in", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x22AA8BEE0](v36, -1, -1);
    MEMORY[0x22AA8BEE0](v35, -1, -1);

    v22 = v39;
    a2 = v37;
    v30 = 0xD00000000000001FLL;
  }

  else
  {
  }

  sub_226B25DF0(a2, v22);
  v43 = v117[6];
  v44 = v22[v43];
  v45 = *(v16 + 48);
  sub_226B29AA0(&v22[v117[5]], &v19[v45]);
  if (v44)
  {
    if ((*(v113 + 48))(&v19[v45], 1, v114) == 1)
    {
      v46 = a2;
      v47 = sub_226D6E05C();
      v48 = sub_226D6E9EC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v119[0] = v50;
        *v49 = 136446210;
        if (v46)
        {
          if (v46 == 1)
          {
            v30 = 0xD000000000000025;
          }

          else
          {
            v30 = 0xD000000000000024;
          }

          if (v46 == 1)
          {
            v51 = "com.apple.financed.orders.tasks";
          }

          else
          {
            v51 = "ed.bankconnect.reboot";
          }
        }

        else
        {
          v51 = "com.apple.springboard";
        }

        v70 = sub_226AC4530(v30, v51 | 0x8000000000000000, v119);

        *(v49 + 4) = v70;
        _os_log_impl(&dword_226AB4000, v47, v48, "%{public}s: No pending request", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        MEMORY[0x22AA8BEE0](v50, -1, -1);
        MEMORY[0x22AA8BEE0](v49, -1, -1);
      }

      v22[v43] = 0;
      v71 = v112;
      sub_226B29B78(v22, v112, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      (*(v115 + 56))(v71, 0, 1, v117);
      swift_beginAccess();
      sub_226D48A48(v71, v46);
      swift_endAccess();
      v72 = v22;
      return sub_226B29BE0(v72, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    }

    LODWORD(v114) = a2;
    v58 = &v19[v45];
    v59 = v116;
    sub_226B2A028(v58, v116, type metadata accessor for ActivityRequest);
    v60 = v107;
    sub_226B29B78(v59, v107, type metadata accessor for ActivityRequest);
    v61 = sub_226D6E05C();
    v62 = sub_226D6E9EC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v119[0] = v64;
      *v63 = 136446466;
      v65 = v64;
      if (v114)
      {
        if (v114 == 1)
        {
          v66 = 0xD000000000000025;
        }

        else
        {
          v66 = 0xD000000000000024;
        }

        if (v114 == 1)
        {
          v67 = "com.apple.financed.orders.tasks";
        }

        else
        {
          v67 = "ed.bankconnect.reboot";
        }
      }

      else
      {
        v67 = "com.apple.springboard";
        v66 = 0xD00000000000001FLL;
      }

      v73 = sub_226AC4530(v66, v67 | 0x8000000000000000, v119);

      *(v63 + 4) = v73;
      *(v63 + 12) = 2080;
      v74 = sub_226B25A9C();
      v75 = v60;
      v77 = v76;
      sub_226B29BE0(v75, type metadata accessor for ActivityRequest);
      v78 = sub_226AC4530(v74, v77, v119);

      *(v63 + 14) = v78;
      _os_log_impl(&dword_226AB4000, v61, v62, "%{public}s: Pending request %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v65, -1, -1);
      MEMORY[0x22AA8BEE0](v63, -1, -1);
    }

    else
    {

      sub_226B29BE0(v60, type metadata accessor for ActivityRequest);
    }

    v22[v43] = 0;
    v79 = v117;
    v80 = v117[7];
    v81 = v22[v80];
    v22[v80] = 1;
    v82 = v112;
    sub_226B29B78(v22, v112, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    (*(v115 + 56))(v82, 0, 1, v79);
    swift_beginAccess();
    sub_226D48A48(v82, v114);
    swift_endAccess();
    v83 = v108;
    sub_226D6D46C();
    sub_226B25C70();
    v85 = v84;
    (*(v109 + 8))(v83, v110);
    if (v81 == 1)
    {
      v86 = xpc_activity_copy_criteria(v111);
      if (v86)
      {
        if (xpc_equal(v86, v85))
        {
          v87 = sub_226D6E05C();
          v88 = sub_226D6E9EC();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v119[0] = v90;
            *v89 = 136446210;
            if (v114)
            {
              if (v114 == 1)
              {
                v91 = "com.apple.financed.orders.tasks";
                v92 = 0xD000000000000025;
              }

              else
              {
                v91 = "ed.bankconnect.reboot";
                v92 = 0xD000000000000024;
              }
            }

            else
            {
              v91 = "com.apple.springboard";
              v92 = 0xD00000000000001FLL;
            }

            v105 = sub_226AC4530(v92, v91 | 0x8000000000000000, v119);

            *(v89 + 4) = v105;
            _os_log_impl(&dword_226AB4000, v87, v88, "%{public}s: Old and new criteria are equal", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v90);
            MEMORY[0x22AA8BEE0](v90, -1, -1);
            MEMORY[0x22AA8BEE0](v89, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_66;
        }

        swift_unknownObjectRelease();
      }
    }

    v93 = MEMORY[0x22AA8C0C0](v85);
    v94 = sub_226D6E47C();
    v96 = v95;
    free(v93);

    v97 = sub_226D6E05C();
    v98 = sub_226D6E9EC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v119[0] = v100;
      *v99 = 136446466;
      if (v114)
      {
        if (v114 == 1)
        {
          v101 = "com.apple.financed.orders.tasks";
          v102 = 0xD000000000000025;
        }

        else
        {
          v101 = "ed.bankconnect.reboot";
          v102 = 0xD000000000000024;
        }
      }

      else
      {
        v101 = "com.apple.springboard";
        v102 = 0xD00000000000001FLL;
      }

      v103 = sub_226AC4530(v102, v101 | 0x8000000000000000, v119);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2080;
      v104 = sub_226AC4530(v94, v96, v119);

      *(v99 + 14) = v104;
      _os_log_impl(&dword_226AB4000, v97, v98, "%{public}s: Updating criteria to %s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v100, -1, -1);
      MEMORY[0x22AA8BEE0](v99, -1, -1);
    }

    else
    {
    }

    xpc_activity_set_criteria(v111, v85);
LABEL_66:
    swift_unknownObjectRelease();
    sub_226B29BE0(v116, type metadata accessor for ActivityRequest);
    v72 = v22;
    return sub_226B29BE0(v72, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  }

  v52 = sub_226D6E05C();
  v53 = sub_226D6E9EC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = a2;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v119[0] = v56;
    *v55 = 136446210;
    if (v54)
    {
      if (v54 == 1)
      {
        v30 = 0xD000000000000025;
      }

      else
      {
        v30 = 0xD000000000000024;
      }

      if (v54 == 1)
      {
        v57 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v57 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v57 = "com.apple.springboard";
    }

    v68 = sub_226AC4530(v30, v57 | 0x8000000000000000, v119);

    *(v55 + 4) = v68;
    _os_log_impl(&dword_226AB4000, v52, v53, "%{public}s: Activity not registering", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x22AA8BEE0](v56, -1, -1);
    MEMORY[0x22AA8BEE0](v55, -1, -1);
  }

  sub_226B29BE0(v22, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  return sub_226B29B10(&v19[v45]);
}

uint64_t sub_226B28DB8@<X0>(char a1@<W1>, uint64_t (**a2)()@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B25DF0(a1, v12);
  v13 = *(v8 + 20);
  sub_226B29B10(&v12[v13]);
  v14 = type metadata accessor for ActivityRequest(0);
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  sub_226B29B78(v12, v7, type metadata accessor for XPCActivityScheduler.ActivityInfo);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_226D48A48(v7, a1);
  swift_endAccess();
  v16 = *v12;
  v15 = *(v12 + 1);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *a2 = sub_226B2A000;
  a2[1] = v17;

  return sub_226B29BE0(v12, type metadata accessor for XPCActivityScheduler.ActivityInfo);
}

uint64_t sub_226B28FE0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_226B2908C()
{
  sub_226B29128();
  if (v0 <= 0x3F)
  {
    sub_226B29178();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_226B29128()
{
  result = qword_28105F3F8;
  if (!qword_28105F3F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28105F3F8);
  }

  return result;
}

void sub_226B29178()
{
  if (!qword_281062440[0])
  {
    type metadata accessor for ActivityRequest(255);
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, qword_281062440);
    }
  }
}

uint64_t getEnumTagSinglePayload for XPCActivityScheduler.ActivityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCActivityScheduler.ActivityState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_226B29374()
{
  result = sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_226B2941C()
{
  result = qword_281062330;
  if (!qword_281062330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062330);
  }

  return result;
}

unint64_t sub_226B29474()
{
  result = qword_27D7A6B58;
  if (!qword_27D7A6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B58);
  }

  return result;
}

unint64_t sub_226B294CC()
{
  result = qword_27D7A6B60;
  if (!qword_27D7A6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B60);
  }

  return result;
}

unint64_t sub_226B29524()
{
  result = qword_27D7A6B68;
  if (!qword_27D7A6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B68);
  }

  return result;
}

unint64_t sub_226B2957C()
{
  result = qword_27D7A6B70;
  if (!qword_27D7A6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B70);
  }

  return result;
}

unint64_t sub_226B295D4()
{
  result = qword_27D7A6B78;
  if (!qword_27D7A6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6B78);
  }

  return result;
}

uint64_t sub_226B29628()
{
  v1 = sub_226D6EA3C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_226D6E1BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_226D6EA4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B2A090();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  sub_226D6E19C();
  v10 = MEMORY[0x277D84F90];
  v12[1] = MEMORY[0x277D84F90];
  sub_226B2A0DC(&qword_28105F478, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226B2A124();
  sub_226D6ED5C();
  *(v0 + 16) = sub_226D6EA8C();
  *(v0 + 24) = sub_226B23270(v10);
  return v0;
}

BOOL sub_226B29870(_BYTE *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = "com.apple.financed.orders.tasks";
  v5 = 0xD000000000000025;
  if (v3 == 1)
  {
    v6 = 0xD000000000000025;
  }

  else
  {
    v6 = 0xD000000000000024;
  }

  if (v3 == 1)
  {
    v7 = "com.apple.financed.orders.tasks";
  }

  else
  {
    v7 = "ed.bankconnect.reboot";
  }

  if (*a1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v9 = v7;
  }

  else
  {
    v9 = "com.apple.springboard";
  }

  if (*a2 != 1)
  {
    v5 = 0xD000000000000024;
    v4 = "ed.bankconnect.reboot";
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v11 = v4;
  }

  else
  {
    v11 = "com.apple.springboard";
  }

  if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
  }

  else
  {
    v13 = sub_226D6F21C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = type metadata accessor for ActivityRequest(0);
  v15 = *(v14 + 20);
  if (sub_226D6D44C())
  {
    return a1[*(v14 + 24)] == a2[*(v14 + 24)];
  }

  return 0;
}

uint64_t sub_226B299A0()
{
  v0 = sub_226D6F13C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_226B299EC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_226B29A24()
{
  v1 = *(type metadata accessor for ActivityRequest(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v3 = *(v0 + 16);
  return sub_226B26ECC(v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B29AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B29B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A6B48, &qword_226D72788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B29B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B29BE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B29C40(_xpc_activity_s *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  sub_226B27C38(a1, v2);
}

uint64_t sub_226B29C6C(char a1)
{
  v2 = v1;
  if (qword_28105F590 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F598);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xD00000000000001FLL;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD000000000000025;
      }

      else
      {
        v7 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v10 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v10 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v10 = "com.apple.springboard";
    }

    v12 = sub_226AC4530(v7, v10 | 0x8000000000000000, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v5, v6, "%{public}s: Run (nudge)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v2 + 16);
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6BF8, &unk_226D72B80);
  sub_226D6EA6C();
  v14 = v23;
  v15 = sub_226D6E05C();
  v16 = sub_226D6E9EC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = 0xD00000000000001FLL;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v17 = 0xD000000000000025;
      }

      else
      {
        v17 = 0xD000000000000024;
      }

      if (a1 == 1)
      {
        v20 = "com.apple.financed.orders.tasks";
      }

      else
      {
        v20 = "ed.bankconnect.reboot";
      }
    }

    else
    {
      v20 = "com.apple.springboard";
    }

    v21 = sub_226AC4530(v17, v20 | 0x8000000000000000, &v23);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v15, v16, "%{public}s: Calling activity handler", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x22AA8BEE0](v19, -1, -1);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
  }

  v14();
}

uint64_t sub_226B29FB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_226B27FDC(v1, v2);
}

uint64_t sub_226B2A000()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_226B2A028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226B2A090()
{
  result = qword_28105F470;
  if (!qword_28105F470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F470);
  }

  return result;
}

uint64_t sub_226B2A0DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226B2A124()
{
  result = qword_28105F518;
  if (!qword_28105F518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6C00, &qword_226D73DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F518);
  }

  return result;
}

uint64_t sub_226B2A1AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226B2A1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226B2A240()
{
  v1 = *v0;
  sub_226D67FDC();
  v2 = sub_226D67FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D72B90;
  sub_226B2A4F4();
  *(v3 + 32) = sub_226D6E91C();
  *(v3 + 40) = sub_226D6E91C();
  *(v3 + 48) = sub_226D6E91C();
  *(v3 + 56) = sub_226D6E91C();
  v4 = sub_226D6E5CC();

  v5 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  v6 = sub_226D6EBBC();

  return v6;
}

void sub_226B2A3E8(unint64_t a1)
{
  v3 = *v1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v8 = v3;
    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA8AFD0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v8 deleteObject_];

      ++v3;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_12:
}

unint64_t sub_226B2A4F4()
{
  result = qword_28105F4B8;
  if (!qword_28105F4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F4B8);
  }

  return result;
}

uint64_t sub_226B2A544()
{
  v1 = v0;
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  MEMORY[0x22AA8B3E0](*v0);
  v11 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v12 = v11[5];
  sub_226D6D52C();
  sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0]);
  sub_226D6E30C();
  sub_226AC40E8(v1 + v11[6], v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    (*(v3 + 8))(v6, v2);
  }

  v13 = *(v1 + v11[7]);
  return sub_226D6EC4C();
}

uint64_t sub_226B2A7EC()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(_s8MetadataV9CloudItemVMa_0(0) + 24));
  v7 = *(v6 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v14 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_226B30080(v9, v5, _s8MetadataV9CloudItemV6ObjectVMa_0);
      v11 = *&v5[*(v1 + 28)];
      sub_226B2FF38(v5, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226D6EF6C();
      v12 = *(v14 + 16);
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      v9 += v10;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_226B2A968@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v38 = sub_226D6D4AC();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C40, &qword_226D72C08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = _s8MetadataV9CloudItemVMa_0(0);
  v21 = *(v1 + *(v20 + 24));
  sub_226B30080(v1 + *(v20 + 20), v19, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v43 = v21;
  sub_226AC40E8(v19, v17, &qword_27D7A6C40, &qword_226D72C08);

  sub_226CED2B8(v17);
  sub_226AC47B0(v19, &qword_27D7A6C40, &qword_226D72C08);
  v22 = *(v43 + 16);
  if (v22)
  {
    v34 = v43;
    v35 = a1;
    v23 = *(v40 + 24);
    v24 = v43 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    v37 = v7;
    v39 = (v7 + 48);
    v40 = v7 + 32;
    v26 = MEMORY[0x277D84F90];
    v27 = v38;
    v36 = v25;
    do
    {
      v28 = v41;
      sub_226B30080(v24, v41, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226AC40E8(v28 + v23, v6, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B2FF38(v28, _s8MetadataV9CloudItemV6ObjectVMa_0);
      if ((*v39)(v6, 1, v27) == 1)
      {
        sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
      }

      else
      {
        v29 = v23;
        v30 = *v40;
        (*v40)(v42, v6, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_226BBB218(0, *(v26 + 2) + 1, 1, v26);
        }

        v32 = *(v26 + 2);
        v31 = *(v26 + 3);
        if (v32 >= v31 >> 1)
        {
          v26 = sub_226BBB218(v31 > 1, v32 + 1, 1, v26);
        }

        *(v26 + 2) = v32 + 1;
        v27 = v38;
        v30(&v26[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32], v42, v38);
        v23 = v29;
        v25 = v36;
      }

      v24 += v25;
      --v22;
    }

    while (v22);

    a1 = v35;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_226B2ADCC(v26, a1);
}

uint64_t sub_226B2ADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_226B300E8(&qword_27D7A66D8, MEMORY[0x277CC9578]);
        v21 = sub_226D6E32C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_226B2B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_226D6D4AC();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v53);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v43 - v10;
  IsMarkedAsCompleteEntryVMa = _s8MetadataV23IsMarkedAsCompleteEntryVMa(0);
  v13 = *(*(IsMarkedAsCompleteEntryVMa - 8) + 64);
  v14 = MEMORY[0x28223BE20](IsMarkedAsCompleteEntryVMa);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = *(a1 + 16);
  if (v19)
  {
    v43 = a2;
    v52 = v17;
    v50 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v54 = &v43 - v18;
    result = sub_226B30080(v50, &v43 - v18, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
    if (v19 == 1)
    {
LABEL_3:
      v21 = v43;
      sub_226B2FFD8(v54, v43, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
      return (*(v52 + 56))(v21, 0, 1, IsMarkedAsCompleteEntryVMa);
    }

    v23 = (v4 + 48);
    v44 = v16;
    v45 = (v4 + 32);
    v48 = (v4 + 8);
    v49 = v19;
    v24 = 1;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return result;
      }

      sub_226B30080(v50 + *(v52 + 72) * v24, v16, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
      v26 = IsMarkedAsCompleteEntryVMa;
      v27 = *(IsMarkedAsCompleteEntryVMa + 20);
      v28 = *(v51 + 48);
      sub_226AC40E8(&v54[v27], v11, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(&v16[v27], &v11[v28], &qword_27D7A8BE0, &unk_226D718F0);
      v29 = *v23;
      v30 = v53;
      LODWORD(v27) = (*v23)(v11, 1, v53);
      v31 = v29(&v11[v28], 1, v30);
      if (v27 == 1)
      {
        if (v31 != 1)
        {
          sub_226AC47B0(&v11[v28], &qword_27D7A8BE0, &unk_226D718F0);
          IsMarkedAsCompleteEntryVMa = v26;
          goto LABEL_21;
        }

        IsMarkedAsCompleteEntryVMa = v26;
        if (*v54)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v31 == 1)
        {
          (*v48)(v11, v53);
          IsMarkedAsCompleteEntryVMa = v26;
          goto LABEL_9;
        }

        v32 = v53;
        v33 = v46;
        v34 = *v45;
        (*v45)(v46, v11, v53);
        v35 = &v11[v28];
        v36 = v47;
        v34(v47, v35, v32);
        if (sub_226D6D40C())
        {
          v37 = v36;
          v38 = *v48;
          (*v48)(v37, v32);
          v38(v33, v32);
          IsMarkedAsCompleteEntryVMa = v26;
          v16 = v44;
LABEL_21:
          v39 = v54;
          sub_226B2FF38(v54, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
          result = sub_226B2FFD8(v16, v39, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
          goto LABEL_10;
        }

        v40 = sub_226D6D3FC();
        v41 = v36;
        v42 = *v48;
        (*v48)(v41, v32);
        v42(v33, v32);
        IsMarkedAsCompleteEntryVMa = v26;
        v16 = v44;
        if (v40 & 1) == 0 && (*v54)
        {
LABEL_15:
          if ((*v16 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_9:
      result = sub_226B2FF38(v16, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
LABEL_10:
      ++v24;
      if (v25 == v49)
      {
        goto LABEL_3;
      }
    }
  }

  v22 = *(v17 + 56);

  return v22(a2, 1, 1, IsMarkedAsCompleteEntryVMa);
}

void sub_226B2B5D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  MEMORY[0x22AA8B3E0](*v1);
  v15 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v16 = v15[5];
  v17 = sub_226D6D52C();
  v31 = sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0]);
  v32 = v17;
  sub_226D6E30C();
  sub_226AC40E8(v2 + v15[6], v14, &qword_27D7A8BE0, &unk_226D718F0);
  v18 = *(v5 + 48);
  v19 = v18(v14, 1, v4);
  v29 = v8;
  v30 = v5;
  if (v19 == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v5 + 32))(v8, v14, v4);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    (*(v5 + 8))(v8, v4);
  }

  v20 = *(v2 + v15[7]);
  sub_226D6EC4C();
  v21 = _s8MetadataV9CloudItemVMa_0(0);
  v22 = (v2 + *(v21 + 20));
  MEMORY[0x22AA8B3E0](*v22);
  v23 = v22 + v15[5];
  sub_226D6E30C();
  v24 = v33;
  sub_226AC40E8(v22 + v15[6], v33, &qword_27D7A8BE0, &unk_226D718F0);
  if (v18(v24, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    v26 = v29;
    v25 = v30;
    (*(v30 + 32))(v29, v24, v4);
    sub_226D6F31C();
    sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
    sub_226D6E30C();
    (*(v25 + 8))(v26, v4);
  }

  v27 = *(v22 + v15[7]);
  sub_226D6EC4C();
  sub_226AF0EDC(a1, *(v2 + *(v21 + 24)));
}

uint64_t sub_226B2B9CC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226B2BA30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226B2BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((sub_226B2A540)() & 1) == 0 || (sub_226B2A540(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_226B2E760(v7, v8);
}

uint64_t sub_226B2BAF4(uint64_t a1)
{
  v3 = sub_226D6D4AC();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - v12;
  v14 = _s8MetadataV9CloudItemVMa_0(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = _s8MetadataV15CloudItemStatusOMa_0(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B30080(v1, v22, _s8MetadataV15CloudItemStatusOMa_0);
  v23 = (*(v15 + 48))(v22, 2, v14);
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }

    return MEMORY[0x22AA8B3B0](v24);
  }

  else
  {
    sub_226B2FFD8(v22, v18, _s8MetadataV9CloudItemVMa_0);
    MEMORY[0x22AA8B3B0](1);
    MEMORY[0x22AA8B3E0](*v18);
    v25 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
    v26 = v25[5];
    v27 = sub_226D6D52C();
    v35[1] = sub_226B300E8(&qword_281062B60, MEMORY[0x277CC95F0]);
    v35[2] = v27;
    sub_226D6E30C();
    sub_226AC40E8(v18 + v25[6], v13, &qword_27D7A8BE0, &unk_226D718F0);
    v28 = v36;
    v35[0] = *(v36 + 48);
    if ((v35[0])(v13, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v28 + 32))(v6, v13, v3);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      (*(v28 + 8))(v6, v3);
    }

    v30 = *(v18 + v25[7]);
    sub_226D6EC4C();
    v31 = (v18 + *(v14 + 20));
    MEMORY[0x22AA8B3E0](*v31);
    v32 = v31 + v25[5];
    sub_226D6E30C();
    sub_226AC40E8(v31 + v25[6], v11, &qword_27D7A8BE0, &unk_226D718F0);
    if ((v35[0])(v11, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v33 = v36;
      (*(v36 + 32))(v6, v11, v3);
      sub_226D6F31C();
      sub_226B300E8(&qword_27D7A6620, MEMORY[0x277CC9578]);
      sub_226D6E30C();
      (*(v33 + 8))(v6, v3);
    }

    v34 = *(v31 + v25[7]);
    sub_226D6EC4C();
    sub_226AF0EDC(a1, *(v18 + *(v14 + 24)));
    return sub_226B2FF38(v18, _s8MetadataV9CloudItemVMa_0);
  }
}