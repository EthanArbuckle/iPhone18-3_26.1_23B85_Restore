void sub_22979B9D0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v52[-v10];
  v12 = [v1 accessory];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 accessoryServer];
    if (v14)
    {
      v15 = v14;
      [objc_opt_self() chipPairingModeActiveDuration];
      v17 = v16;
      sub_2296F8604();
      v18 = v1;
      v19 = sub_22A4DD05C();
      v20 = sub_22A4DDCCC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v57 = v5;
        v22 = v21;
        v54 = swift_slowAlloc();
        v64 = v54;
        *v22 = 136315394;
        aBlock = 91;
        v59 = 0xE100000000000000;
        v23 = [v18 logIdentifier];
        v53 = v20;
        v24 = v23;
        v25 = sub_22A4DD5EC();
        v55 = a1;
        v56 = v4;
        v26 = v25;
        v28 = v27;

        MEMORY[0x22AAD08C0](v26, v28);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v29 = sub_2295A3E30(aBlock, v59, &v64);

        *(v22 + 4) = v29;
        a1 = v55;
        *(v22 + 12) = 2048;
        *(v22 + 14) = v17;
        _os_log_impl(&dword_229538000, v19, v53, "%s Opening CHIP pairing window for duration: %f", v22, 0x16u);
        v30 = v54;
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x22AAD4E50](v30, -1, -1);
        MEMORY[0x22AAD4E50](v22, -1, -1);

        (*(v57 + 8))(v11, v56);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }

      v48 = swift_allocObject();
      v48[2] = v18;
      v48[3] = a1;
      v48[4] = ObjectType;
      v62 = sub_22979CD34;
      v63 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_2295AAF60;
      v61 = &block_descriptor_10;
      v49 = _Block_copy(&aBlock);
      v50 = v18;
      v51 = a1;

      [v15 openPairingWindowForDuration:v49 completionHandler:v17];
      _Block_release(v49);

      goto LABEL_12;
    }
  }

  v57 = v5;
  sub_2296F8604();
  v31 = v1;
  v32 = a1;
  v33 = sub_22A4DD05C();
  v34 = sub_22A4DDCEC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v64 = v36;
    *v35 = 136315394;
    aBlock = 91;
    v59 = 0xE100000000000000;
    v37 = [v31 logIdentifier];
    v38 = sub_22A4DD5EC();
    v56 = v4;
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v41 = sub_2295A3E30(aBlock, v59, &v64);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = [v32 shortDescription];
    v43 = sub_22A4DD5EC();
    v45 = v44;

    v46 = sub_2295A3E30(v43, v45, &v64);

    *(v35 + 14) = v46;
    _os_log_impl(&dword_229538000, v33, v34, "%s Unable to find accessory server to handle: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);

    (*(v57 + 8))(v9, v56);
  }

  else
  {

    (*(v57 + 8))(v9, v4);
  }

  v47 = [objc_opt_self() hmErrorWithCode_];
  v15 = sub_22A4DB3DC();

  [v32 respondWithError_];
LABEL_12:
}

void sub_22979BFA0(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_2296F8604();
    v12 = a1;
    v13 = a2;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = a3;
      v17 = v16;
      v31 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315394;
      v34 = 91;
      v35 = 0xE100000000000000;
      v36 = v18;
      v19 = [v13 logIdentifier];
      v20 = sub_22A4DD5EC();
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(v34, v35, &v36);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v25;
      v26 = v31;
      *v31 = v25;
      _os_log_impl(&dword_229538000, v14, v15, "%s Failed to open CHIP pairing window: %@", v17, 0x16u);
      sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v27 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      v28 = v17;
      a3 = v33;
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v29 = [objc_opt_self() hmErrorWithCode_];
    v30 = sub_22A4DB3DC();

    [a3 respondWithError_];
  }

  else
  {

    [a3 respondWithSuccess];
  }
}

void sub_22979C2CC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v52[-v10];
  v12 = [v1 accessory];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 accessoryServer];
    if (v14)
    {
      v15 = v14;
      [objc_opt_self() chipPairingModeActiveDuration];
      v17 = v16;
      sub_2296F8604();
      v18 = v1;
      v19 = sub_22A4DD05C();
      v20 = sub_22A4DDCCC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v57 = v5;
        v22 = v21;
        v54 = swift_slowAlloc();
        v64 = v54;
        *v22 = 136315394;
        aBlock = 91;
        v59 = 0xE100000000000000;
        v23 = [v18 logIdentifier];
        v53 = v20;
        v24 = v23;
        v25 = sub_22A4DD5EC();
        v55 = a1;
        v56 = v4;
        v26 = v25;
        v28 = v27;

        MEMORY[0x22AAD08C0](v26, v28);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v29 = sub_2295A3E30(aBlock, v59, &v64);

        *(v22 + 4) = v29;
        a1 = v55;
        *(v22 + 12) = 2048;
        *(v22 + 14) = v17;
        _os_log_impl(&dword_229538000, v19, v53, "%s Opening Matter pairing window with PIN for duration: %f", v22, 0x16u);
        v30 = v54;
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x22AAD4E50](v30, -1, -1);
        MEMORY[0x22AAD4E50](v22, -1, -1);

        (*(v57 + 8))(v11, v56);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }

      v48 = swift_allocObject();
      v48[2] = v18;
      v48[3] = a1;
      v48[4] = ObjectType;
      v62 = sub_22979CD28;
      v63 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_22979CC90;
      v61 = &block_descriptor_33;
      v49 = _Block_copy(&aBlock);
      v50 = v18;
      v51 = a1;

      [v15 openPairingWindowWithPINForDuration:v49 completionHandler:v17];
      _Block_release(v49);

      goto LABEL_12;
    }
  }

  v57 = v5;
  sub_2296F8604();
  v31 = v1;
  v32 = a1;
  v33 = sub_22A4DD05C();
  v34 = sub_22A4DDCEC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v64 = v36;
    *v35 = 136315394;
    aBlock = 91;
    v59 = 0xE100000000000000;
    v37 = [v31 logIdentifier];
    v38 = sub_22A4DD5EC();
    v56 = v4;
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v41 = sub_2295A3E30(aBlock, v59, &v64);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = [v32 shortDescription];
    v43 = sub_22A4DD5EC();
    v45 = v44;

    v46 = sub_2295A3E30(v43, v45, &v64);

    *(v35 + 14) = v46;
    _os_log_impl(&dword_229538000, v33, v34, "%s Unable to find accessory server to handle: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);

    (*(v57 + 8))(v9, v56);
  }

  else
  {

    (*(v57 + 8))(v9, v4);
  }

  v47 = [objc_opt_self() hmErrorWithCode_];
  v15 = sub_22A4DB3DC();

  [v32 respondWithError_];
LABEL_12:
}

void sub_22979C89C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v16 = *MEMORY[0x277CCE838];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v17;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v18 = sub_22A4DD47C();

    v19 = &selRef_respondWithPayload_;
  }

  else
  {
    sub_2296F8604();
    v20 = a4;
    v21 = a3;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v39 = a5;
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315394;
      v40 = 91;
      v41 = 0xE100000000000000;
      v42 = v25;
      v26 = [v20 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(v40, v41, &v42);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2112;
      if (a3)
      {
        v31 = a3;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v24 + 14) = v32;
      v34 = v37;
      *v37 = v33;
      _os_log_impl(&dword_229538000, v22, v23, "%s Failed to open Matter pairing window with PIN with error: %@", v24, 0x16u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      v35 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v11 + 8))(v14, v10);
      a5 = v39;
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    v36 = [objc_opt_self() hmErrorWithCode_];
    v18 = sub_22A4DB3DC();

    v19 = &selRef_respondWithError_;
  }

  [a5 *v19];
}

uint64_t sub_22979CC90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_22A4DD5EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

HMDUserDefaultDataSource __swiftcall HMDUserDefaultDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDUserDefaultDataSource()
{
  result = qword_27D880DF8;
  if (!qword_27D880DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D880DF8);
  }

  return result;
}

uint64_t sub_22979D468(void *a1)
{
  v2 = [a1 home];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 homeManager];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 isCloudKitRequiredForHH2];

      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v7 = [a1 account];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isCurrentAccount];

    if (v9)
    {
LABEL_6:

      return 1;
    }
  }

  if (v3)
  {
    if ([v3 isOwnerUser])
    {
      v11 = [a1 isOwner];

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_22979D56C()
{
  v0 = sub_22A4DB9BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D50 != -1)
  {
    swift_once();
  }

  v5 = (qword_2814050C8 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((qword_2814050C8 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  if ((*(v1 + 48))(v5 + v6, 1, v0))
  {
    v7 = 0;
  }

  else
  {
    (*(v1 + 16))(v4, v5 + v6, v0);
    v7 = sub_22A4DB97C();
    (*(v1 + 8))(v4, v0);
  }

  os_unfair_lock_unlock(v5);
  return v7;
}

uint64_t sub_22979D6FC(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22953ED8C;

  return v5();
}

uint64_t sub_22979D7E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229569B30;

  return v6();
}

uint64_t sub_22979D8CC()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880E10);
  __swift_project_value_buffer(v0, qword_27D880E10);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22979D944()
{
  *(v1 + 264) = v0;
  v2 = *(*(sub_22A4DB7DC() - 8) + 64) + 15;
  *(v1 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22979D9D4, 0, 0);
}

uint64_t sub_22979D9D4()
{
  if (qword_27D87BA80 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  v0[35] = __swift_project_value_buffer(v1, qword_27D880E10);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Start", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[33];

  v6 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer;
  v0[36] = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer;
  v7 = __swift_project_boxed_opaque_existential_0((v5 + v6), *(v5 + v6 + 24));
  v8 = *v7;
  v0[37] = *v7;

  return MEMORY[0x2822009F8](sub_22979DB14, v8, 0);
}

uint64_t sub_22979DB14()
{
  v1 = *(*(v0 + 296) + 120);
  *(v0 + 304) = v1;

  return MEMORY[0x2822009F8](sub_22979DB8C, v1, 0);
}

uint64_t sub_22979DB8C()
{
  v1 = v0[37];
  v2 = *(v0[38] + 120);
  v3 = swift_task_alloc();
  v0[39] = v3;
  *(v3 + 16) = &unk_22A582E78;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[40] = v4;
  *(v4 + 16) = &unk_22A582E80;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_22979DCA8;

  return v8();
}

void sub_22979DCA8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[39];
    v5 = v2[40];
    v7 = v2[38];

    MEMORY[0x2822009F8](sub_22979DDF0, v7, 0);
  }
}

uint64_t sub_22979DDF0()
{
  v1 = *(v0 + 304);

  return MEMORY[0x2822009F8](sub_22979DE58, 0, 0);
}

uint64_t sub_22979DE58()
{
  v1 = *(v0 + 264);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if ([*(*(v0 + 264) + OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_featuresDataSource) isHomeEnergy2025Enabled])
    {
      v4 = *(v0 + 280);
      v5 = sub_22A4DD05C();
      v6 = sub_22A4DDCDC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_229538000, v5, v6, "Home Energy 2025 enabled", v7, 2u);
        MEMORY[0x22AAD4E50](v7, -1, -1);
      }

      v8 = *(v0 + 288);
      v9 = *(v0 + 264);
      v34 = *(v0 + 272);

      v10 = *__swift_project_boxed_opaque_existential_0((v9 + v8), *(v9 + v8 + 24));

      v11 = [v3 spiClientIdentifier];
      sub_22A4DB79C();

      v12 = type metadata accessor for DefaultGuidancePublisherFactoryDataSource();
      v13 = swift_allocObject();
      *(v0 + 120) = v12;
      *(v0 + 128) = &off_283CDD490;
      *(v0 + 96) = v13;
      type metadata accessor for GuidancePublisherFactory();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 96, v12);
      v16 = *(v12 - 8);
      v17 = *(v16 + 64) + 15;
      v18 = swift_task_alloc();
      (*(v16 + 16))(v18, v15, v12);
      v19 = *v18;
      *(v14 + 40) = v12;
      *(v14 + 48) = &off_283CDD490;
      *(v14 + 16) = v19;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));

      v20 = v3;
      v21 = sub_22979FBF0(v10, v34, v14, v20);

      *(v0 + 80) = type metadata accessor for DefaultEnergyGuidanceServerV2(0);
      *(v0 + 88) = &off_283CE2ED0;

      *(v0 + 56) = v21;
      v22 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
      swift_beginAccess();
      sub_22979FAF0(v0 + 56, v9 + v22);
      swift_endAccess();
      sub_22979FA18(v9 + v22, v0 + 136);
      if (*(v0 + 160))
      {
        sub_22957F1C4(v0 + 136, v0 + 176);
        sub_22979FA88(v0 + 136);
        v23 = __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        v24 = *v23;
        *(v0 + 344) = *v23;

        return MEMORY[0x2822009F8](sub_22979E278, v24, 0);
      }

      sub_22979FA88(v0 + 136);
    }

    else
    {
      v29 = *(v0 + 264);

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v30 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
      swift_beginAccess();
      sub_22979FAF0(v0 + 16, v29 + v30);
      swift_endAccess();
    }
  }

  else
  {
    v25 = *(v0 + 280);
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_229538000, v26, v27, "Home is nil", v28, 2u);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }
  }

  v31 = *(v0 + 272);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22979E278()
{
  v1 = *(*(v0 + 344) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 352) = v3;
  *v3 = v0;
  v3[1] = sub_22979E344;
  v4 = *(v0 + 344);

  return v6();
}

void sub_22979E344()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 344);

    MEMORY[0x2822009F8](sub_22979E478, v5, 0);
  }
}

uint64_t sub_22979E494()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22979E678(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2297A0254;

  return sub_22979D944();
}

uint64_t sub_22979E740()
{
  if (qword_27D87BA80 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D880E10);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Stop", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 184);

  v6 = __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer), *(v5 + OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer + 24));
  v7 = *v6;
  *(v0 + 192) = *v6;

  return MEMORY[0x2822009F8](sub_22979E878, v7, 0);
}

uint64_t sub_22979E878()
{
  v1 = *(*(v0 + 192) + 120);
  *(v0 + 200) = v1;

  return MEMORY[0x2822009F8](sub_22979E8F0, v1, 0);
}

uint64_t sub_22979E8F0()
{
  v1 = v0[24];
  v2 = *(v0[25] + 120);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *(v3 + 16) = &unk_22A582E48;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *(v4 + 16) = &unk_22A5824E0;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_22979EA0C;

  return v8();
}

void sub_22979EA0C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[26];
    v5 = v2[27];
    v7 = v2[25];

    MEMORY[0x2822009F8](sub_22979EB54, v7, 0);
  }
}

uint64_t sub_22979EB54()
{
  v1 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_22979EBBC, 0, 0);
}

uint64_t sub_22979EBBC()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
  *(v0 + 232) = OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2;
  swift_beginAccess();
  sub_22979FA18(v1 + v2, v0 + 16);
  if (*(v0 + 40))
  {
    sub_22957F1C4(v0 + 16, v0 + 96);
    sub_22979FA88(v0 + 16);
    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v4[1] = sub_22979ED2C;

    return sub_22972F6D0();
  }

  else
  {
    sub_22979FA88(v0 + 16);
    v6 = *(v0 + 232);
    v7 = *(v0 + 184);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_22979FAF0(v0 + 56, v7 + v6);
    swift_endAccess();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22979ED2C()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22979EE28, 0, 0);
}

uint64_t sub_22979EE28()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_22979FAF0(v0 + 56, v2 + v1);
  swift_endAccess();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22979F048(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22979F0F0;

  return sub_22979E720();
}

uint64_t sub_22979F0F0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

id sub_22979F258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeMatterServicesCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HMDHomeMatterServicesCoordinatorFactory __swiftcall HMDHomeMatterServicesCoordinatorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22979F42C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v9[3] = _s27PrimaryResidentDataProviderCMa();
  v9[4] = &off_283CE4AF8;
  v9[0] = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = MEMORY[0x277D84F90];
  type metadata accessor for PrimaryResidentMatterServer.StateFSM();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  sub_22A4DBA2C();
  *(v5 + 120) = sub_22A4DBA1C();
  *(a2 + 120) = v5;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0;
  sub_22957F1C4(v9, a2 + 128);
  v8.receiver = a2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

id sub_22979F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v7 = type metadata accessor for PrimaryResidentMatterServer();
  v34[3] = v7;
  v34[4] = &off_283CE3CE0;
  v34[0] = a3;
  v8 = type metadata accessor for DefaultHomeMatterServicesFactory();
  v32 = v8;
  v33 = &off_283CE6130;
  v31[0] = a4;
  v9 = type metadata accessor for HomeMatterServicesCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v34, v7);
  v12 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v32;
  v17 = __swift_mutable_project_boxed_opaque_existential_0(v31, v32);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v30[3] = v7;
  v30[4] = &off_283CE3CE0;
  v29[4] = &off_283CE6130;
  v30[0] = v22;
  v29[3] = v8;
  v29[0] = v23;
  swift_unknownObjectWeakInit();
  v24 = &v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_energyGuidanceServerV2];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_featuresDataSource] = a2;
  sub_22957F1C4(v30, &v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServer]);
  swift_unknownObjectWeakAssign();
  sub_22957F1C4(v29, &v10[OBJC_IVAR____TtC13HomeKitDaemon29HomeMatterServicesCoordinator_matterServicesFactory]);
  v28.receiver = v10;
  v28.super_class = v9;
  v25 = objc_msgSendSuper2(&v28, sel_init, v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v25;
}

id sub_22979F7A8(void *a1)
{
  v2 = [objc_allocWithZone(HMDFeaturesDataSource) init];
  v3 = _s27PrimaryResidentDataProviderCMa();
  v4 = swift_allocObject();
  v5 = a1;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v4[16] = 0;
  swift_unknownObjectWeakInit();
  v4[17] = [objc_opt_self() defaultCenter];
  v4[18] = 0;
  swift_unknownObjectWeakAssign();
  v17[3] = v3;
  v17[4] = &off_283CE4AF8;
  v17[0] = v4;
  type metadata accessor for PrimaryResidentMatterServer();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_0(v17, v3);
  v8 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;

  v13 = sub_22979F42C(v12, v6);

  __swift_destroy_boxed_opaque_existential_0(v17);
  type metadata accessor for DefaultHomeMatterServicesFactory();
  v14 = swift_allocObject();
  return sub_22979F510(v5, v2, v13, v14);
}

uint64_t sub_22979F988()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_229777AE8(v0);
}

uint64_t sub_22979FA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D880EC8, &qword_22A582E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22979FA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D880EC8, &qword_22A582E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22979FAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D880EC8, &qword_22A582E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22979FB60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_229777A1C(v0);
}

void *sub_22979FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a4;
  v29 = a1;
  v28 = sub_22A4DDD7C();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DDD5C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_22A4DD29C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for GuidancePublisherFactory();
  v36[3] = v13;
  v36[4] = &off_283CE3F58;
  v36[0] = a3;
  v14 = type metadata accessor for DefaultEnergyGuidanceServerV2(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_0(v36, v13);
  v19 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v34 = v13;
  v35 = &off_283CE3F58;
  *&v33 = v23;
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v17[14] = sub_22A4DBA1C();
  sub_229562F68(0, &qword_281401980, 0x277D85C78);
  sub_22A4DD28C();
  v32 = MEMORY[0x277D84F90];
  sub_2297A0064();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_22955A264();
  sub_22A4DE03C();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v28);
  v17[15] = sub_22A4DDDCC();
  v17[16] = 0;
  *(v17 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherTask) = 0;
  *(v17 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_isConfiguringPublisher) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_notificationHandlerTasks) = MEMORY[0x277D84F90];
  v17[17] = v29;
  v17[18] = &off_283CE3D00;
  v24 = OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_homeSPIClientIdentifier;
  v25 = sub_22A4DB7DC();
  (*(*(v25 - 8) + 32))(v17 + v24, v30, v25);
  sub_229557188(&v33, v17 + OBJC_IVAR____TtC13HomeKitDaemon29DefaultEnergyGuidanceServerV2_guidancePublisherFactory);
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v17;
}

uint64_t sub_22979FFC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229569B30;

  return sub_22972ECB0(a1, v1);
}

unint64_t sub_2297A0064()
{
  result = qword_281401990;
  if (!qword_281401990)
  {
    sub_22A4DDD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401990);
  }

  return result;
}

uint64_t sub_2297A00BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_22979F048(v2, v3);
}

uint64_t objectdestroyTm_6()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2297A01A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22979E678(v2, v3);
}

uint64_t sub_2297A0260(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_22A4DDA5C();
  if (v3 <= 0x3F)
  {
    result = sub_22A4DDA2C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2297A0370(uint64_t a1)
{
  v3 = sub_22A4DB74C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v47 = result;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = *(v1 + 24);
      v46 = a1;
      swift_unknownObjectRetain();
      v19 = [v17 groupName];
      sub_22A4DD5EC();

      v20 = [v17 homeUUID];
      sub_22A4DB79C();

      v21 = [v17 accessoryUUID];
      sub_22A4DB79C();

      v22 = sub_22A4DBFCC();

      v23 = *(v8 + 8);
      v23(v12, v7);
      v23(v14, v7);
      if (v22)
      {

        v24 = [v17 date];
        sub_22A4DB70C();

        v25 = sub_2297C6574(v47, v22, v6);
LABEL_13:
        swift_unknownObjectRelease();

        return v25;
      }

      goto LABEL_18;
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = *(v1 + 24);
      swift_unknownObjectRetain();
      v29 = [v27 groupName];
      sub_22A4DD5EC();

      v30 = [v27 homeUUID];
      sub_22A4DB79C();

      v31 = sub_22A4DBFDC();

      (*(v8 + 8))(v14, v7);
      if (v31)
      {

        v32 = [v27 date];
LABEL_12:
        v37 = v32;
        sub_22A4DB70C();

        v25 = sub_2297C6574(v47, v31, v6);
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (!v33)
      {
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (!v38)
        {
          v48 = 0;
          v49 = 0xE000000000000000;
          sub_22A4DE1FC();
          MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A595F10);
          swift_getObjectType();
          v45 = sub_22A4DE8EC();
          MEMORY[0x22AAD08C0](v45);

          MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A595F30);
          result = sub_22A4DE39C();
          __break(1u);
          return result;
        }

        v39 = v38;
        v40 = v1;
        v41 = *(v1 + 24);
        swift_unknownObjectRetain();
        v42 = [v39 groupName];
        sub_22A4DD5EC();

        v43 = sub_22A4DBFEC();

        if (v43)
        {
          v44 = *(v40 + 32);
          v25 = sub_2297C676C(v47, v43, v44);
          swift_unknownObjectRelease();
          return v25;
        }

        goto LABEL_18;
      }

      v34 = v33;
      v35 = *(v1 + 24);
      swift_unknownObjectRetain();
      v36 = [v34 groupName];
      sub_22A4DD5EC();

      v31 = sub_22A4DBFEC();

      if (v31)
      {

        v32 = [v34 date];
        goto LABEL_12;
      }
    }

LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_2297A09C0()
{
  sub_2296B874C(v0 + 16);
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2297A0A44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, id, uint64_t))
{
  v33 = a7;
  v34 = a5;
  v29[2] = a4;
  v11 = sub_22A4DB74C();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_getObjectType();
  sub_22A4DC00C();
  v15 = a3;
  swift_unknownObjectRetain();
  v16 = v32;
  v17 = v33(a1, a2, v15, a6);
  if (v16)
  {

    swift_unknownObjectRelease();

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v17;
    v29[1] = 0;
    v32 = v14;
    v33 = v11;
    [objc_opt_self() defaultSaveInterval];
    v21 = v20;
    v22 = [objc_opt_self() sharedInstance];
    if (v34)
    {
      sub_22A4DBF8C();
    }

    _s16CoreDataDelegateCMa();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v23 + 24) = v19;
    *(v23 + 32) = v15;
    v24 = objc_allocWithZone(ObjCClassFromObject);
    v25 = v15;

    v26 = [v24 initWithDelegate:v23 saveInterval:v22 uptimeProvider:v21];

    v27 = [v25 startOfCurrentDay];
    v28 = v32;
    sub_22A4DB70C();

    sub_22A4DBF5C();

    (*(v31 + 8))(v28, v33);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return v26;
  }
}

uint64_t sub_2297A0D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, id, uint64_t))
{
  v12 = sub_22A4DD5EC();
  v14 = v13;
  if (a5)
  {
    a5 = sub_22A4DD5EC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4;
  swift_unknownObjectRetain();
  return sub_2297A0A44(v12, v14, v17, a5, v16, a6, a8);
}

id sub_2297A0F64(uint64_t a1, void *a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_22A4DB74C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_22A4DBF8C();
  }

  _s16CoreDataDelegateCMa();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v18 = a2;

  v19 = [v17 initWithDelegate:v16 saveInterval:a6 uptimeProvider:a3];

  v20 = [v18 startOfCurrentDay];
  sub_22A4DB70C();

  sub_22A4DBF5C();

  (*(v12 + 8))(v15, v11);
  return v19;
}

uint64_t sub_2297A1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2297A1290(a3, &v16);
  if (!v18)
  {
    return sub_2297A1300(&v16);
  }

  sub_229557188(&v16, v21);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v16 = *v3;
  v6 = v16;
  v17 = *(v3 + 8);
  v14 = v17;
  v18 = v7;
  v19 = v8;
  v20 = MEMORY[0x277D84F98];
  v9 = v22;
  v10 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v11 = *(v10 + 16);
  sub_22956C148(v6, v14);

  v11(&v16, v9, v10);
  v12 = v20;
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D238, &qword_22A578180);
  v15[4] = &off_283CDFC90;
  v15[0] = v12;

  sub_229890DC4(v15, a1, a2);
  sub_2295798D4(v16, v17);

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_2297A1290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882000, &qword_22A578390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297A1300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882000, &qword_22A578390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2297A1368()
{
  ObjectType = swift_getObjectType();
  sub_2297A2054();
  v2 = sub_22A4DDD8C();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v13 = sub_2297A20A0;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2297A1948;
  v12 = &block_descriptor_34;
  v4 = _Block_copy(&v9);
  v5 = v0;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v4);
  _Block_release(v4);

  v6 = sub_22A4DDD8C();
  v7 = swift_allocObject();
  *(v7 + 16) = ObjectType;
  v13 = sub_2297A20A8;
  v14 = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2297A1948;
  v12 = &block_descriptor_6;
  v8 = _Block_copy(&v9);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v6, v8);
  _Block_release(v8);
}

void sub_2297A1518(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = sub_22A4DD09C();
  if (xpc_dictionary_get_string(a1, v17))
  {
    v39 = v7;
    v18 = sub_22A4DD6FC();
    v20 = v19;
    sub_229541CB0(a3, &off_283CE4848);

    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();

    v23 = os_log_type_enabled(v21, v22);
    v38 = a2;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v37 = v6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;

      v27 = sub_2295A3E30(v18, v20, &v40);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_229538000, v21, v22, "XPC stream handler invoked with com.apple.notifyd.matching with event name: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v28 = v25;
      v6 = v37;
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    v29 = *(v39 + 8);
    v29(v14, v6);
    if (v18 == 0xD00000000000001FLL && 0x800000022A595FF0 == v20)
    {
    }

    else
    {
      v33 = sub_22A4DE60C();

      if ((v33 & 1) == 0)
      {
        return;
      }
    }

    sub_229541CB0(a3, &off_283CE4848);
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCCC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_229538000, v34, v35, "XPC stream handler invoked with com.apple.CascadeSets.DonateNow", v36, 2u);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    v29(v11, v6);
    if (qword_281402BB0 != -1)
    {
      swift_once();
    }

    logAndPostNotification(qword_2814050B8, v38, 0);
  }

  else
  {
    sub_229541CB0(a3, &off_283CE4848);
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_229538000, v30, v31, "com.apple.notifyd.matching XPC stream handler was called with nil event name. Not handling.", v32, 2u);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
  }
}

uint64_t sub_2297A1948(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2297A19A8(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = sub_22A4DD09C();
  if (!xpc_dictionary_get_string(a1, v18))
  {
    v30 = v4;
    sub_229541CB0(a2, &off_283CE4848);
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v5;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_229538000, v31, v32, "Rapport XPC stream: Not handling xpc stream event with nil name", v34, 2u);
      MEMORY[0x22AAD4E50](v34, -1, -1);

      return (*(v33 + 8))(v17, v30);
    }

    else
    {

      return (*(v5 + 8))(v17, v30);
    }
  }

  v54 = a1;
  v19 = sub_22A4DD6FC();
  v21 = v20;
  sub_229541CB0(a2, &off_283CE4848);

  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCCC();

  v24 = os_log_type_enabled(v22, v23);
  v55 = v5;
  v53 = v9;
  if (v24)
  {
    v25 = v4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2295A3E30(v19, v21, &v56);
    _os_log_impl(&dword_229538000, v22, v23, "Rapport XPC stream event handler invoked with : %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    v28 = v26;
    v4 = v25;
    MEMORY[0x22AAD4E50](v28, -1, -1);

    v29 = *(v55 + 8);
    v29(v15, v25);
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v15, v4);
  }

  if (v19 == 0xD000000000000018 && 0x800000022A595FC0 == v21)
  {

    goto LABEL_11;
  }

  v36 = sub_22A4DE60C();

  if (v36)
  {
LABEL_11:
    v37 = [objc_opt_self() productInfo];
    v38 = [v37 productPlatform];

    if (v38 != 3)
    {
      sub_229541CB0(a2, &off_283CE4848);
      v39 = sub_22A4DD05C();
      v40 = sub_22A4DDCCC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_229538000, v39, v40, "Starting Rapport Messaging Discovery Client", v41, 2u);
        MEMORY[0x22AAD4E50](v41, -1, -1);
      }

      v29(v12, v4);
      v42 = [objc_opt_self() sharedInstance];
      v43 = [objc_opt_self() requestIDsToRegister];
      if (!v43)
      {
        sub_22A4DD83C();
        v43 = sub_22A4DD81C();
      }

      [v42 configureDiscoveryClientForRequestIDs:v43 withCompletion:{0, v53}];
    }
  }

  v44 = v54;
  result = xpc_dictionary_get_BOOL(v54, "replyRequired");
  if (result)
  {
    result = xpc_dictionary_create_reply(v44);
    if (result)
    {
      v45 = v53;
      sub_229541CB0(a2, &off_283CE4848);
      v46 = sub_22A4DD05C();
      v47 = sub_22A4DDCCC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v4;
        v50 = swift_slowAlloc();
        v56 = v50;
        *v48 = 136315138;
        *(v48 + 4) = sub_2295A3E30(0xD00000000000001ALL, 0x800000022A595FA0, &v56);
        _os_log_impl(&dword_229538000, v46, v47, "Sending reply to %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AAD4E50](v50, -1, -1);
        MEMORY[0x22AAD4E50](v48, -1, -1);

        v51 = v45;
        v52 = v49;
      }

      else
      {

        v51 = v45;
        v52 = v4;
      }

      v29(v51, v52);
      xpc_dictionary_send_reply();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_2297A2054()
{
  result = qword_281401980;
  if (!qword_281401980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401980);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2297A20CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2297A2114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2297A2164(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_22A4DE60C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_2297A21C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229569B30;

  return sub_2297A2260(a5);
}

uint64_t sub_2297A2260(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_22A4DB7DC();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297A232C, 0, 0);
}

uint64_t sub_2297A232C()
{
  v1 = [*(v0 + 160) dataForKey_];
  if (!v1)
  {
    v35 = *(v0 + 160);
    type metadata accessor for HMError(0);
    *(v0 + 152) = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v36 = *(v0 + 144);
    v37 = sub_22A4DB3DC();

    [v35 respondWithError_];
    goto LABEL_10;
  }

  v2 = *(v0 + 168);
  v3 = v1;
  v4 = sub_22A4DB62C();
  v6 = v5;

  v7 = sub_2297A28AC(v4, v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = v7;
  v10 = v8;
  if (([*(v0 + 160) isEntitledForSPIAccess] & 1) == 0)
  {
    v11 = *(v0 + 160);
    v12 = [v10 vendorInfo];
    LODWORD(v11) = [v11 isEntitledForVendorAccessForAccessoryWithVendorInfo_];

    if (!v11)
    {

LABEL_8:
      [*(v0 + 160) respondWithSuccess];
      v33 = v4;
      v34 = v6;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 200);
  v42 = *(v0 + 192);
  v46 = v4;
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v45 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  v17 = *MEMORY[0x277CD0640];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v18;
  v19 = [v9 uuid];
  v44 = v9;
  v20 = v10;
  v21 = v19;
  sub_22A4DB79C();

  v22 = sub_22A4DB76C();
  v43 = v6;
  v24 = v23;
  v25 = *(v14 + 8);
  v25(v13, v15);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  v26 = *MEMORY[0x277CCF0B0];
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v27;
  v28 = [v20 uuid];
  sub_22A4DB79C();

  v29 = sub_22A4DB76C();
  v31 = v30;
  v25(v42, v15);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v29;
  *(inited + 104) = v31;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v32 = sub_22A4DD47C();

  [v45 respondWithPayload_];

  v33 = v46;
  v34 = v43;
LABEL_9:
  sub_2295798D4(v33, v34);
LABEL_10:
  v39 = *(v0 + 192);
  v38 = *(v0 + 200);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2297A27EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297A21C4(a1, v4, v5, v7, v6);
}

char *sub_2297A28AC(uint64_t a1, unint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = [v2 homes];
  if (!v4)
  {
    goto LABEL_201;
  }

  v5 = v4;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v6 = sub_22A4DD83C();

  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_178;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_179:

    result = 0;
    goto LABEL_180;
  }

  while (1)
  {
    v9 = 0;
    v93 = v7 + 32;
    v94 = v7 & 0xFFFFFFFFFFFFFF8;
    v10 = !a1 && a2 == 0xC000000000000000;
    v11 = !v10;
    v108 = v11;
    v12 = a2 >> 62;
    v13 = __OFSUB__(HIDWORD(a1), a1);
    v103 = v13;
    v102 = v7 & 0xC000000000000001;
    __n = BYTE6(a2);
    v95 = (a1 >> 32) - a1;
    v96 = a1 >> 32;
    v107 = a2;
    v105 = a2 >> 62;
    v101 = v8;
    while (1)
    {
      if (v102)
      {
        v14 = MEMORY[0x22AAD13F0](v9);
        goto LABEL_19;
      }

      if (v9 >= *(v94 + 16))
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
      }

      v14 = *(v93 + 8 * v9);
LABEL_19:
      v15 = v14;
      v16 = __OFADD__(v9, 1);
      v17 = v9 + 1;
      if (v16)
      {
        goto LABEL_175;
      }

      v18 = [v14 accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v19 = sub_22A4DD83C();

      v106 = v15;
      v104 = v17;
      if (v19 >> 62)
      {
        break;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_14:

      v9 = v104;
      if (v104 == v101)
      {
        goto LABEL_179;
      }
    }

    v20 = sub_22A4DE0EC();
    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_22:
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v111 = v20;
LABEL_25:
    if (v22)
    {
      v23 = MEMORY[0x22AAD13F0](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_172;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      break;
    }

    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    v86 = v7;
    v87 = sub_22A4DE0EC();
    v7 = v86;
    v8 = v87;
    if (!v87)
    {
      goto LABEL_179;
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26 || (v27 = v26, ![v26 isPrimary]))
  {

    goto LABEL_24;
  }

  v28 = [v27 publicKey];
  v29 = sub_22A4DB62C();
  v31 = v30;

  v32 = v31 >> 62;
  if (v31 >> 62 != 3)
  {
    if (v32 > 1)
    {
      v22 = v19 & 0xC000000000000001;
      if (v32 != 2)
      {
        v36 = 0;
        if (v12 > 1)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      v16 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v16)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v22 = v19 & 0xC000000000000001;
      if (!v32)
      {
        v36 = BYTE6(v31);
        if (v12 <= 1)
        {
          goto LABEL_56;
        }

LABEL_60:
        if (v12 == 2)
        {
          v41 = *(a1 + 16);
          v40 = *(a1 + 24);
          v16 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v16)
          {
            goto LABEL_174;
          }

          goto LABEL_62;
        }

        if (!v36)
        {
          goto LABEL_166;
        }

        goto LABEL_74;
      }

      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_177;
      }

      v36 = v36;
    }

    if (v12 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (v29)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31 == 0xC000000000000000;
  }

  v35 = !v33 || v12 < 3;
  if (((v35 | v108) & 1) == 0)
  {

    v84 = 0;
    v85 = 0xC000000000000000;
    goto LABEL_168;
  }

  v36 = 0;
  v22 = v19 & 0xC000000000000001;
  if (v12 > 1)
  {
    goto LABEL_60;
  }

LABEL_56:
  v39 = __n;
  if (v12)
  {
    v39 = HIDWORD(a1) - a1;
    if (v103)
    {
      goto LABEL_173;
    }
  }

LABEL_62:
  if (v36 != v39)
  {
LABEL_74:

    sub_2295798D4(v29, v31);
    v20 = v111;
    goto LABEL_24;
  }

  if (v36 < 1)
  {
    goto LABEL_166;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      __s1[0] = v29;
      LOWORD(__s1[1]) = v31;
      BYTE2(__s1[1]) = BYTE2(v31);
      BYTE3(__s1[1]) = BYTE3(v31);
      BYTE4(__s1[1]) = BYTE4(v31);
      BYTE5(__s1[1]) = BYTE5(v31);
      if (v12)
      {
        if (v12 == 1)
        {
          if (v96 < a1)
          {
            goto LABEL_185;
          }

          v42 = sub_22A4DB24C();
          if (!v42)
          {
            goto LABEL_209;
          }

          v43 = v42;
          v44 = sub_22A4DB27C();
          if (__OFSUB__(a1, v44))
          {
            goto LABEL_191;
          }

          v45 = (a1 - v44 + v43);
          v46 = sub_22A4DB26C();
          if (!v45)
          {
            goto LABEL_207;
          }

LABEL_129:
          if (v46 >= v95)
          {
            v69 = (a1 >> 32) - a1;
          }

          else
          {
            v69 = v46;
          }

LABEL_132:
          v73 = memcmp(__s1, v45, v69);
          sub_2295798D4(v29, v31);
          a2 = v107;
          v12 = v105;
          if (!v73)
          {
            goto LABEL_169;
          }

LABEL_163:

          v20 = v111;
          v22 = v19 & 0xC000000000000001;
LABEL_24:
          ++v21;
          if (v25 == v20)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }

        v67 = *(a1 + 16);
        v100 = *(a1 + 24);
        v45 = sub_22A4DB24C();
        if (v45)
        {
          v68 = sub_22A4DB27C();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_196;
          }

          v45 += v67 - v68;
        }

        v16 = __OFSUB__(v100, v67);
        v56 = &v100[-v67];
        if (v16)
        {
          goto LABEL_187;
        }

        v57 = sub_22A4DB26C();
        if (!v45)
        {
          goto LABEL_208;
        }

LABEL_122:
        if (v57 >= v56)
        {
          v69 = v56;
        }

        else
        {
          v69 = v57;
        }

        goto LABEL_132;
      }

LABEL_91:
      v112 = a1;
      v113 = a2;
      v114 = BYTE2(a2);
      v115 = BYTE3(a2);
      v116 = BYTE4(a2);
      v117 = BYTE5(a2);
      v58 = __s1;
      v59 = &v112;
LABEL_144:
      v78 = memcmp(v58, v59, __n);
      sub_2295798D4(v29, v31);
      if (!v78)
      {
        goto LABEL_169;
      }

      goto LABEL_163;
    }

    if (v29 > v29 >> 32)
    {
      goto LABEL_182;
    }

    v51 = sub_22A4DB24C();
    if (v51)
    {
      v52 = v51;
      v53 = sub_22A4DB27C();
      if (__OFSUB__(v29, v53))
      {
        goto LABEL_184;
      }

      v98 = (v29 - v53 + v52);
    }

    else
    {
      v98 = 0;
    }

    sub_22A4DB26C();
    v12 = v105;
    a2 = v107;
    if (v105 != 2)
    {
      if (v105 == 1)
      {
        if (v96 < a1)
        {
          goto LABEL_193;
        }

        v60 = sub_22A4DB24C();
        if (v60)
        {
          v65 = sub_22A4DB27C();
          if (__OFSUB__(a1, v65))
          {
            goto LABEL_200;
          }

          v60 += a1 - v65;
        }

        v66 = sub_22A4DB26C();
        v63 = (a1 >> 32) - a1;
        if (v66 < v95)
        {
          v63 = v66;
        }

        result = v98;
        if (!v98)
        {
          goto LABEL_211;
        }

        if (!v60)
        {
          goto LABEL_210;
        }

LABEL_115:
        if (result == v60)
        {
          goto LABEL_166;
        }

LABEL_162:
        v83 = memcmp(result, v60, v63);
        sub_2295798D4(v29, v31);
        v12 = v105;
        if (v83)
        {
          goto LABEL_163;
        }

LABEL_169:

LABEL_170:
        result = v106;
LABEL_180:
        v88 = *MEMORY[0x277D85DE8];
        return result;
      }

      v58 = v98;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v107;
      *(&__s1[1] + 2) = *(&v107 + 2);
      if (!v98)
      {
        goto LABEL_204;
      }

LABEL_143:
      v59 = __s1;
      goto LABEL_144;
    }

    v90 = *(a1 + 24);
    v92 = *(a1 + 16);
    v60 = sub_22A4DB24C();
    if (v60)
    {
      v76 = sub_22A4DB27C();
      v77 = v92;
      if (__OFSUB__(v92, v76))
      {
        goto LABEL_199;
      }

      v60 += v92 - v76;
    }

    else
    {
      v77 = v92;
    }

    v81 = v90 - v77;
    if (__OFSUB__(v90, v77))
    {
      goto LABEL_194;
    }

    v82 = sub_22A4DB26C();
    if (v82 >= v81)
    {
      v63 = v81;
    }

    else
    {
      v63 = v82;
    }

    result = v98;
    if (!v98)
    {
      goto LABEL_213;
    }

    if (!v60)
    {
      goto LABEL_212;
    }

    goto LABEL_161;
  }

  if (v32 == 2)
  {
    v47 = *(v29 + 16);
    v48 = sub_22A4DB24C();
    if (v48)
    {
      v49 = v48;
      v50 = sub_22A4DB27C();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_183;
      }

      v97 = (v47 - v50 + v49);
    }

    else
    {
      v97 = 0;
    }

    a2 = v107;
    sub_22A4DB26C();
    v12 = v105;
    if (v105 != 2)
    {
      if (v105 == 1)
      {
        if (v96 < a1)
        {
          goto LABEL_189;
        }

        v60 = sub_22A4DB24C();
        if (v60)
        {
          v61 = sub_22A4DB27C();
          if (__OFSUB__(a1, v61))
          {
            goto LABEL_198;
          }

          v60 += a1 - v61;
        }

        v62 = sub_22A4DB26C();
        v63 = (a1 >> 32) - a1;
        if (v62 < v95)
        {
          v63 = v62;
        }

        result = v97;
        if (!v97)
        {
          goto LABEL_215;
        }

        if (!v60)
        {
          goto LABEL_214;
        }

        goto LABEL_115;
      }

      v58 = v97;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v107;
      *(&__s1[1] + 2) = *(&v107 + 2);
      if (!v97)
      {
        goto LABEL_205;
      }

      goto LABEL_143;
    }

    v89 = *(a1 + 24);
    v91 = *(a1 + 16);
    v60 = sub_22A4DB24C();
    if (v60)
    {
      v74 = sub_22A4DB27C();
      v75 = v91;
      if (__OFSUB__(v91, v74))
      {
        goto LABEL_197;
      }

      v60 += v91 - v74;
    }

    else
    {
      v75 = v91;
    }

    v79 = v89 - v75;
    if (__OFSUB__(v89, v75))
    {
      goto LABEL_192;
    }

    v80 = sub_22A4DB26C();
    if (v80 >= v79)
    {
      v63 = v79;
    }

    else
    {
      v63 = v80;
    }

    result = v97;
    if (!v97)
    {
      goto LABEL_217;
    }

    if (!v60)
    {
      goto LABEL_216;
    }

LABEL_161:
    a2 = v107;
    if (result != v60)
    {
      goto LABEL_162;
    }

LABEL_166:

    v84 = v29;
    v85 = v31;
LABEL_168:
    sub_2295798D4(v84, v85);
    goto LABEL_170;
  }

  memset(__s1, 0, 14);
  if (!v12)
  {
    goto LABEL_91;
  }

  if (v12 == 2)
  {
    v54 = *(a1 + 16);
    v99 = *(a1 + 24);
    v45 = sub_22A4DB24C();
    if (v45)
    {
      v55 = sub_22A4DB27C();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_195;
      }

      v45 += v54 - v55;
    }

    v16 = __OFSUB__(v99, v54);
    v56 = &v99[-v54];
    if (v16)
    {
      goto LABEL_188;
    }

    v57 = sub_22A4DB26C();
    if (!v45)
    {
      goto LABEL_206;
    }

    goto LABEL_122;
  }

  if (v96 < a1)
  {
    goto LABEL_186;
  }

  v70 = sub_22A4DB24C();
  if (v70)
  {
    v71 = v70;
    v72 = sub_22A4DB27C();
    if (__OFSUB__(a1, v72))
    {
      goto LABEL_190;
    }

    v45 = (a1 - v72 + v71);
    v46 = sub_22A4DB26C();
    if (!v45)
    {
      goto LABEL_203;
    }

    goto LABEL_129;
  }

  sub_22A4DB26C();
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  result = sub_22A4DB26C();
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
  return result;
}

uint64_t sub_2297A342C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v36 - v12;
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v4;
  sub_229541CB0(v4, &off_283CE49C8);
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = v6;
    v22 = v9;
    v23 = a1;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_229538000, v18, v19, "Registering for primary resident changes", v20, 2u);
    v25 = v24;
    a1 = v23;
    v9 = v22;
    v6 = v21;
    v7 = v37;
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v26 = v2[2];
  v27 = sub_22A4DDE5C();
  v28 = sub_22A4DD9DC();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  sub_2295FE8C0(a1, v9);
  v31 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v27;
  v32[5] = v30;
  sub_2295FE930(v9, v32 + v31);
  *(v32 + ((v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v33 = sub_22957F3C0(0, 0, v29, &unk_22A583028, v32);
  v34 = v2[3];
  v2[3] = v33;
}

uint64_t sub_2297A37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297A3978, 0, 0);
}

uint64_t sub_2297A3978()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];

  sub_22A4DDE3C();
  swift_beginAccess();
  v4 = sub_2295F39B0();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_2297A3A4C;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_2297A3A4C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2295FE7D4;
  }

  else
  {
    v3 = sub_2297A3B60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297A3B7C()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[17];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v24);
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = v0[25];
  sub_229541CB0(v0[19], &off_283CE49C8);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Received HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChange", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v31 = v0[20];
  v32 = v0[26];
  v16 = v0[18];

  (*(v12 + 8))(v10, v11);
  v0[5] = v15;
  v0[6] = &off_283CE49E0;
  v0[2] = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) + 28);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v14 + 8))(v13, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v32);
  v18 = sub_2295F39B0();
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_2297A3A4C;
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];

  return MEMORY[0x282200308](v22, v23, v18);
}

uint64_t sub_2297A3ECC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2297A37B8(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2297A4010(void *a1)
{
  v2 = [a1 isCurrentDevicePrimaryResident];
  v3 = [a1 homeManager];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 capabilitiesController];

  if (v5)
  {
    v6 = [v5 currentResidentCapabilities];

    if (v6)
    {
      LODWORD(v5) = [v6 supportsDistributedExecutionOnPrimary];
      swift_unknownObjectRelease();
      return v2 & v5;
    }

LABEL_5:
    LODWORD(v5) = 0;
  }

  return v2 & v5;
}

uint64_t sub_2297A40D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2297A411C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2297A4178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = _s10SerializerVMa();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = *(v3 + 16);
  v24[0] = *v3;
  v24[1] = v14;
  v25 = *(v3 + 32);
  v15 = sub_2297E3C8C(v24, v20 - v12);
  (*(a3 + 32))(v13, a2, a3, v15);
  v16 = *(v9 + 36);
  v22 = AssociatedTypeWitness;
  v23 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, &v13[v16], AssociatedTypeWitness);
  __swift_project_boxed_opaque_existential_0(v21, v22);
  v20[1] = swift_getDynamicType();
  v20[2] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880FB0, &unk_22A5830F0);
  sub_22A4DD64C();
  v18 = *(v4 + 40);
  sub_22A4DC48C();

  (*(v10 + 8))(v13, v9);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

void sub_2297A43C0()
{
  v1 = v0;
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8C0);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "[STOP]", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = *(v1 + 144);
  if (v6)
  {
    *(v1 + 144) = 0;
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v1 + 136);
      v9 = v6 + 32;
      do
      {
        sub_2295404B0(v9, v11);
        __swift_project_boxed_opaque_existential_0(v11, v11[3]);
        v10 = sub_22A4DE5FC();
        __swift_destroy_boxed_opaque_existential_0(v11);
        [v8 removeObserver_];
        swift_unknownObjectRelease();
        v9 += 32;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t sub_2297A4544()
{
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8C0);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[RETRIEVE]", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 8);
  v6 = MEMORY[0x277D84F90];

  return v5(v6);
}

uint64_t sub_2297A4660()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  sub_2296B874C(v0 + 120);

  v1 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2297A46D4()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2297A4808(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v69 = sub_22A4DD26C();
  v74 = *(v69 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD29C();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v66 = *(v68 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x28223BE20](v68);
  v64 = v14;
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v57 - v15;
  v16 = sub_22A4DD07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  v67 = ObjectType;
  sub_2297A46D4();
  v21 = v3;
  v22 = a1;
  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCCC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v60 = v26;
    *v25 = 136315650;
    v75 = v26;
    aBlock = 91;
    v77 = 0xE100000000000000;
    v27 = [v21 logIdentifier];
    v28 = sub_22A4DD5EC();
    v61 = v21;
    v29 = v28;
    v59 = v16;
    v30 = a2;
    v32 = v31;

    MEMORY[0x22AAD08C0](v29, v32);
    a2 = v30;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v33 = sub_2295A3E30(aBlock, v77, &v75);

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    if (v62)
    {
      v34 = 0x4D2065766974614ELL;
    }

    else
    {
      v34 = 0x7474614D2D504148;
    }

    if (v62)
    {
      v35 = 0xED00007265747461;
    }

    else
    {
      v35 = 0xEA00000000007265;
    }

    v36 = sub_2295A3E30(v34, v35, &v75);
    v21 = v61;

    *(v25 + 14) = v36;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v22;
    v37 = v58;
    *v58 = v22;
    v38 = v22;
    _os_log_impl(&dword_229538000, v23, v24, "%s Converting %s accessory: %@", v25, 0x20u);
    sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v37, -1, -1);
    v39 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);

    (*(v17 + 8))(v20, v59);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v62 = [v21 workQueue];
  aBlock = a2;
  v40 = sub_229562F68(0, &qword_27D881150, off_278666188);
  v41 = a2;
  v42 = v63;
  MEMORY[0x22AACEC10](&aBlock, v40);
  v43 = v65;
  v44 = v66;
  v45 = v68;
  (*(v66 + 16))(v65, v42, v68);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = (v64 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v21;
  *(v48 + 24) = v22;
  (*(v44 + 32))(v48 + v46, v43, v45);
  *(v48 + v47) = v67;
  v80 = sub_2297AD94C;
  v81 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_22953E640;
  v79 = &block_descriptor_72;
  v49 = _Block_copy(&aBlock);
  v50 = v21;
  v51 = v22;
  v52 = v70;
  sub_22A4DD28C();
  v75 = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  v53 = v73;
  v54 = v69;
  sub_22A4DE03C();
  v55 = v62;
  MEMORY[0x22AAD0F80](0, v52, v53, v49);
  _Block_release(v49);

  (*(v74 + 8))(v53, v54);
  (*(v71 + 8))(v52, v72);
  (*(v44 + 8))(v42, v45);
}

id sub_2297A4F88(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD26C();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_userPresenceSubscriptionManager);
  if (v10)
  {
    v46 = v4;
    v11 = *(v10 + OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_messageDispatcher);
    v12 = v2;
    v13 = v7;
    v14 = sub_22A4DD10C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v15 = swift_allocObject();
    v45 = a1;
    v16 = v15;
    v44 = xmmword_22A576190;
    *(v15 + 16) = xmmword_22A576190;
    v17 = objc_opt_self();
    *(v16 + 32) = [v17 policyWithEntitlements_];
    sub_229562F68(0, qword_281401B40, 0x277D0F838);
    v18 = sub_22A4DD81C();

    [v11 registerForMessage:v14 receiver:v10 policies:v18 selector:sel_handleSubscribeMessage_];

    v7 = v13;
    v2 = v12;

    v19 = sub_22A4DD11C();
    v20 = swift_allocObject();
    *(v20 + 16) = v44;
    *(v20 + 32) = [v17 policyWithEntitlements_];
    v21 = sub_22A4DD81C();

    v22 = v11;
    v4 = v46;
    [v22 registerForMessage:v19 receiver:v10 policies:v21 selector:sel_handleUnsubscribeMessage_];

    a1 = v45;
    v23 = [objc_opt_self() defaultCenter];
    [v23 addObserver:v10 selector:sel_handleHomePresenceUpdateNotification_ name:@"HMDHomePresenceUpdateNotification" object:0];
  }

  v24 = [a1 remoteEventRouterClientController];
  if (v24)
  {
    v25 = v24;
    v26 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_accessoryInfoFetchController);
    result = [a1 msgDispatcher];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    sub_229669FAC(result, v25);
  }

  v29 = [objc_msgSend(a1 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (v29)
  {
    v30 = [a1 workQueue];
    v31 = [objc_allocWithZone(type metadata accessor for HindsightCloudShareManagerEnergyKitDataSource()) init];
    v32 = objc_allocWithZone(HMDHomeHindsightCloudShareManager);
    v33 = a1;
    v34 = [v32 initWithHome:v33 workQueue:v30 dataSource:v31];

    v35 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager;
    v36 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager);
    *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager) = v34;

    v37 = [v33 workQueue];
    v38 = *(v2 + v35);
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    aBlock[4] = sub_2297AD934;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_66;
    v40 = _Block_copy(aBlock);
    v41 = v38;
    v42 = v47;
    sub_22A4DD28C();
    v51 = MEMORY[0x277D84F90];
    sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    v43 = v49;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v42, v43, v40);
    _Block_release(v40);

    (*(v50 + 8))(v43, v4);
    (*(v48 + 8))(v42, v7);
  }

  return result;
}

id sub_2297A5708()
{
  v2.receiver = v0;
  v2.super_class = _s22DefaultSwiftExtensionsCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2297A588C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881098, &qword_22A583220);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228);
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  v8 = MEMORY[0x28223BE20](v63);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v52 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A8, &qword_22A583230);
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v52 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238);
  v60 = *(v65 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v65);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_22A4DD2FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = [v0 workQueue];
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v23 = sub_22A4DD31C();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  v25 = v0;
  if (!v24)
  {
    goto LABEL_10;
  }

  v26 = [v0 swiftExtensions];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = *&v27[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask];

  swift_unknownObjectRelease();
  if (v28)
  {
    sub_22A4DDA7C();
  }

  v29 = [v0 swiftExtensions];
  if (!v29)
  {
    goto LABEL_16;
  }

  v54 = v29;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_17:
    __break(1u);
    return;
  }

  v30 = *MEMORY[0x277D85778];
  (*(v10 + 104))(v13, v30, v55);
  v53 = v17;
  sub_22A4DDA6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B8, &qword_22A583240);
  (*(v58 + 104))(v57, v30, v59);
  v31 = v64;
  sub_22A4DDA6C();
  v32 = sub_22A4DD9DC();
  (*(*(v32 - 8) + 56))(v66, 1, 1, v32);
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v60;
  v34 = v56;
  (*(v60 + 16))(v56, v17, v65);
  v35 = v61;
  v36 = v62;
  v37 = v31;
  v38 = v63;
  (*(v61 + 16))(v62, v37, v63);
  v39 = v25;
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = (v14 + *(v35 + 80) + v40) & ~*(v35 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v43 = v42 + v40;
  v25 = v39;
  v44 = v65;
  (*(v33 + 32))(v43, v34, v65);
  (*(v35 + 32))(v42 + v41, v36, v38);
  *(v42 + ((v7 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v45 = sub_22957F3C0(0, 0, v66, &unk_22A583250, v42);
  (*(v35 + 8))(v64, v38);
  (*(v33 + 8))(v53, v44);
  v46 = *&v54[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask];
  *&v54[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask] = v45;
  swift_unknownObjectRelease();

LABEL_10:
  sub_2296F6028();
  v47 = [v25 homeActivityStateManager];
  if (v47)
  {
    v48 = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = v25;
    aBlock[4] = sub_2297AD664;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_37_1;
    v50 = _Block_copy(aBlock);
    v51 = v25;

    [v48 handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion_];
    _Block_release(v50);
  }
}

uint64_t sub_2297A60CC(void *a1)
{
  v2 = sub_22A4DD26C();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22A4DD29C();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 workQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_2297AD910;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_60_0;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_22A4DD28C();
  v18 = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v9, v5, v12);
  _Block_release(v12);

  (*(v17 + 8))(v5, v2);
  (*(v6 + 8))(v9, v16);
}

void sub_2297A63FC()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = [v0 workQueue];
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v6 = sub_22A4DD31C();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_10:
    sub_2296F6A90();
    sub_22973C8B0();
    return;
  }

  v8 = [v0 swiftExtensions];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = *&v9[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask];

  swift_unknownObjectRelease();
  if (v10)
  {
    sub_22A4DDA7C();
  }

  v11 = [v0 swiftExtensions];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v13 = *&v12[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask];
    *&v12[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask] = 0;
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

char *sub_2297A6684()
{
  ObjectType = swift_getObjectType();
  v1 = sub_22A4DD07C();
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &ObjectType - v10;
  v12 = sub_22A4DB7DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [objc_msgSend(v0 featuresDataSource];
  result = swift_unknownObjectRelease();
  if (!v17)
  {
    return result;
  }

  result = [v0 currentAccessory];
  if (!result)
  {
    return result;
  }

  v19 = [objc_opt_self() sharedManager];
  v20 = [v19 device];

  if (!v20)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_9:
    sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
    sub_2297A46D4();
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "Network diagnostics symptom not logged: current device IDS identifier is nil", v24, 2u);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    return (*(v32 + 8))(v4, v1);
  }

  v21 = [v20 idsIdentifier];

  if (v21)
  {
    sub_22A4DB79C();

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_229564B0C(v9, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  (*(v13 + 32))(v16, v11, v12);
  result = [v0 swiftExtensions];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = result;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v26 = *&v25[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_networkDiagnosticsSymptomReporter];

  swift_unknownObjectRelease();
  if (v26)
  {
    v27 = [v0 isCurrentDevicePrimaryResident];
    v28 = [v0 remoteEventRouterClientController];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 primaryResidentClientHasConnectivity];
    }

    else
    {
      v30 = 0;
    }

    sub_2296B9074(v16, v27, v30);
  }

  return (*(v13 + 8))(v16, v12);
}

void sub_2297A6CA0(void *a1, void *a2, uint64_t a3)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v6 = *(v5 - 8);
  v42 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v7;
  v46 = sub_22A4DD07C();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v12 = a1;
  v13 = a2;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  v16 = os_log_type_enabled(v14, v15);
  v45 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315394;
    v47 = v18;
    aBlock = 91;
    v49 = 0xE100000000000000;
    v19 = [v12 logIdentifier];
    v20 = v6;
    v21 = sub_22A4DD5EC();
    v41 = v5;
    v23 = v22;

    v24 = v21;
    v6 = v20;
    v12 = v45;
    MEMORY[0x22AAD08C0](v24, v23);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(aBlock, v49, &v47);

    *(v17 + 4) = v25;
    v5 = v41;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    v26 = v39;
    *v39 = v13;
    v27 = v13;
    _os_log_impl(&dword_229538000, v14, v15, "%s Removing Matter accessory from home's list: %@", v17, 0x16u);
    sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  (*(v8 + 8))(v11, v46);
  [v12 _removeAccessory_];
  v54 = &unk_283F010C8;
  v29 = swift_dynamicCastObjCProtocolConditional();
  if (v29)
  {
    v30 = v29;
    if ([v29 respondsToSelector_])
    {
      v31 = v43;
      (*(v6 + 16))(v43, v44, v5);
      v32 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v33 = swift_allocObject();
      v34 = v45;
      *(v33 + 16) = v45;
      (*(v6 + 32))(v33 + v32, v31, v5);
      v52 = sub_2297AD9E8;
      v53 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50 = sub_22953E640;
      v51 = &block_descriptor_78_0;
      v35 = _Block_copy(&aBlock);
      v36 = v13;
      v37 = v34;
      v38 = v36;

      [v30 unconfigureMatterAccessoryWithCompletion_];
      _Block_release(v35);
    }
  }
}

uint64_t sub_2297A7128(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD26C();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v24 = [a1 workQueue];
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_2297ADAD0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_84_0;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_22A4DD28C();
  v28 = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  v21 = v24;
  MEMORY[0x22AAD0F80](0, v11, v7, v19);
  _Block_release(v19);

  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);
}

void sub_2297A74E0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  sub_22A4DBA4C();
  [a1 newMatterAccessoryFrom:v2 message:0];
}

void sub_2297A7548(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD26C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v148 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v134 - v16;
  v18 = sub_22A4DD07C();
  v151 = *(v18 - 8);
  v152 = v18;
  v19 = *(v151 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v134 - v22;
  v153 = [a1 uuid];
  if (!v153)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v150 = a1;
  v24 = [a1 supportsNativeMatter];
  if (!v24 || (LOBYTE(aBlock) = 2, v25 = v24, MEMORY[0x22AAD0A90](v24, &aBlock), v25, aBlock == 2))
  {
    if (a2)
    {
      v26 = [objc_opt_self() hmErrorWithCode_];
      v27 = sub_22A4DB3DC();

      [a2 respondWithError_];
    }

    v28 = v153;

    return;
  }

  v147 = aBlock;
  v137 = v17;
  v141 = v11;
  v143 = a2;
  v29 = [v3 uuidToHAPAccessoryConfigTable];
  if (!v29)
  {
    goto LABEL_58;
  }

  v30 = v29;
  v142 = v12;
  v31 = [v29 objectForKey_];

  v144 = ObjectType;
  sub_2297A46D4();
  v32 = v3;
  v33 = v153;
  v34 = v31;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCCC();

  v37 = os_log_type_enabled(v35, v36);
  v140 = v10;
  v139 = v7;
  v145 = v34;
  v146 = v32;
  v138 = v31;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v160[0] = v136;
    *v38 = 136315650;
    aBlock = 91;
    v155 = 0xE100000000000000;
    v40 = [v32 logIdentifier];
    v135 = v36;
    v41 = v40;
    v42 = v33;
    v43 = sub_22A4DD5EC();
    v45 = v44;

    v46 = v43;
    v33 = v42;
    MEMORY[0x22AAD08C0](v46, v45);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v47 = sub_2295A3E30(aBlock, v155, v160);

    *(v38 + 4) = v47;
    *(v38 + 12) = 2112;
    *(v38 + 14) = v42;
    *(v38 + 22) = 2112;
    *(v38 + 24) = v34;
    *v39 = v153;
    v39[1] = v31;
    v48 = v42;
    v49 = v34;
    _os_log_impl(&dword_229538000, v35, v135, "%s Creating new matter accessory from model %@ with hap accessory: %@", v38, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v39, -1, -1);
    v50 = v136;
    __swift_destroy_boxed_opaque_existential_0(v136);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  v51 = *(v151 + 8);
  v51(v23, v152);
  v52 = v149;
  if (v147)
  {
    v53 = HMDMatterAccessory;
  }

  else
  {
    v53 = HMDHAPAccessory;
  }

  v54 = objc_allocWithZone(v53);
  v55 = v146;
  v56 = [v54 initWithTransaction:v150 home:v146];
  if (!v56)
  {
    v57 = 0;
LABEL_25:
    sub_2297A46D4();
    v67 = v55;
    v68 = sub_22A4DD05C();
    v69 = sub_22A4DDCEC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v160[0] = v71;
      *v70 = 136315138;
      aBlock = 91;
      v155 = 0xE100000000000000;
      v72 = [v67 logIdentifier];
      v73 = sub_22A4DD5EC();
      v74 = v33;
      v76 = v75;

      MEMORY[0x22AAD08C0](v73, v76);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v77 = sub_2295A3E30(aBlock, v155, v160);

      *(v70 + 4) = v77;
      _os_log_impl(&dword_229538000, v68, v69, "%s Unable to allocate matter accessory", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AAD4E50](v71, -1, -1);
      MEMORY[0x22AAD4E50](v70, -1, -1);

      v78 = v149;
    }

    else
    {

      v78 = v52;
    }

    v51(v78, v152);
    return;
  }

  v57 = v56;
  v58 = [v57 matterAdapter];
  if (!v58)
  {

    goto LABEL_25;
  }

  v59 = v58;
  if (([v57 isPrimary] & 1) == 0)
  {

    return;
  }

  v134 = v33;
  if (!v143)
  {
    v61 = sub_22A4DDC2C();
    v62 = v148;
    goto LABEL_31;
  }

  v60 = [v143 name];
  v61 = sub_22A4DDC2C();
  v62 = v148;
  if (!v60)
  {
LABEL_31:

    goto LABEL_37;
  }

  v63 = sub_22A4DD5EC();
  v65 = v64;
  if (v63 == sub_22A4DD5EC() && v65 == v66)
  {
  }

  else
  {
    v79 = sub_22A4DE60C();

    if ((v79 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v80 = [v150 publicKey];
  if (v80)
  {
    v81 = v80;
    v82 = sub_22A4DB62C();
    v84 = v83;

    v85 = [v150 pairingUsername];
    if (v85)
    {
      v86 = v85;
      v87 = sub_22A4DB61C();
      [v59 savePublicKey:v87 username:v86];
    }

    sub_2295798D4(v82, v84);
  }

LABEL_37:
  v153 = v59;
  v88 = [v55 accessoryBrowser];
  if (!v88)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v89 = v88;
  v90 = v150;
  v91 = [v150 identifier];
  if (!v91)
  {
    sub_22A4DD5EC();
    v91 = sub_22A4DD5AC();
  }

  v92 = [v90 accessorySetupHash];
  if (v92)
  {
    v93 = v92;
    v94 = sub_22A4DB62C();
    v96 = v95;

    v97 = sub_22A4DB61C();
    sub_2295798D4(v94, v96);
  }

  else
  {
    v97 = 0;
  }

  v98 = v143;
  [v89 registerPairedAccessory:v91 transports:1 setupHash:v97 delegate:v55];
  swift_unknownObjectRelease();

  [v55 addAccessory_];
  v99 = [v150 configurationTracker];
  if (!v99)
  {
    v99 = dispatch_group_create();
  }

  v100 = v57;
  v101 = [v55 msgDispatcher];
  if (!v101)
  {
    goto LABEL_60;
  }

  v102 = v101;
  [v100 configureWithHome:v55 msgDispatcher:v101 configurationTracker:v99 initialConfiguration:0];

  if (v98)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_22A576190;
    *(v103 + 32) = v100;
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v104 = v55;
    v105 = v100;
    v106 = v98;
    v107 = sub_22A4DD81C();

    v108 = [v106 identifier];
    v109 = v137;
    sub_22A4DB79C();

    v110 = sub_22A4DB77C();
    (*(v142 + 8))(v109, v141);
    [v104 addNewlyConfiguredAccessories:v107 addSessionIdentifier:v110];

    v55 = v104;
    v62 = v148;
  }

  v111 = [v55 accessoryBrowser];
  if (!v111)
  {
    goto LABEL_61;
  }

  [v111 evaluateAccessoryDiscoveryState];
  swift_unknownObjectRelease();
  v112 = [v55 accessoryBrowser];
  v113 = v142;
  if (!v112)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v114 = [v112 chipAccessoryServerBrowser];
  swift_unknownObjectRelease();
  v115 = v138;
  if (v114)
  {
    v116 = [v55 targetFabricUUID];
    if (v116)
    {
      v117 = v55;
      v118 = v116;
      sub_22A4DB79C();

      v119 = [v100 matterNodeID];
      v120 = [v119 unsignedLongLongValue];

      if (v120)
      {
        v121 = [v100 matterNodeID];
        v122 = sub_22A4DB77C();
        [v114 handleHomeAddedAccessoryWithNodeID:v121 fabricUUID:v122 localControl:{objc_msgSend(v117, sel_isCurrentDevicePrimaryResident)}];

        v55 = v117;
        (*(v113 + 8))(v62, v141);
        v98 = v143;
      }

      else
      {
        (*(v113 + 8))(v62, v141);

        v98 = v143;
        v55 = v117;
      }
    }

    else
    {
    }
  }

  v123 = [v98 transactionResult];
  [v123 markChanged];

  v124 = [v98 transactionResult];
  [v124 markSaveToAssistant];

  v125 = [v55 workQueue];
  v126 = swift_allocObject();
  v126[2] = v55;
  v126[3] = v100;
  v127 = v144;
  v126[4] = v115;
  v126[5] = v127;
  v158 = sub_2297AD658;
  v159 = v126;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = sub_22953E640;
  v157 = &block_descriptor_35;
  _Block_copy(&aBlock);
  v160[0] = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198]);
  v128 = v55;
  v129 = v145;
  v130 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  v131 = sub_22A4DD2EC();
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  swift_allocObject();
  sub_22A4DD2DC();

  sub_22A4DDD4C();
}

id sub_2297A843C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  if ([a1 remoteAccessIsEnabled])
  {
    v66 = v13;
    v62 = a4;
    v63 = v9;
    sub_2297A46D4();
    v16 = a1;
    v17 = a2;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v65 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v61 = v22;
      *v21 = 136315394;
      v67 = 91;
      v68 = 0xE100000000000000;
      v69 = v22;
      v23 = [v16 logIdentifier];
      v24 = sub_22A4DD5EC();
      v64 = v8;
      v26 = v25;

      MEMORY[0x22AAD08C0](v24, v26);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v27 = sub_2295A3E30(v67, v68, &v69);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = [v17 shortDescription];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      v32 = v29;
      v8 = v64;
      v33 = sub_2295A3E30(v32, v31, &v69);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_229538000, v18, v19, "%s Setting remote access enabled for accessory: %s", v21, 0x16u);
      v34 = v61;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      v35 = v21;
      a3 = v65;
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    v9 = v63;
    (*(v63 + 8))(v15, v8);
    [v17 remoteAccessEnabled_];
    v13 = v66;
  }

  [a1 _reachabilityChangedForAccessory_reachable_];
  result = [a2 isPrimary];
  if (result)
  {
    sub_2297A46D4();
    v37 = a1;
    v38 = a2;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = a3;
      v42 = v41;
      v43 = swift_slowAlloc();
      *v42 = 136315394;
      v67 = 91;
      v68 = 0xE100000000000000;
      v69 = v43;
      v44 = [v37 logIdentifier];
      v45 = sub_22A4DD5EC();
      v64 = v8;
      v46 = v45;
      v66 = v13;
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(v67, v68, &v69);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      v50 = [v38 shortDescription];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      v54 = sub_2295A3E30(v51, v53, &v69);

      *(v42 + 14) = v54;
      _os_log_impl(&dword_229538000, v39, v40, "%s Handling added primary accessory: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v43, -1, -1);
      v55 = v42;
      a3 = v65;
      MEMORY[0x22AAD4E50](v55, -1, -1);

      (*(v9 + 8))(v66, v64);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    if (!a3)
    {
      result = [v37 accessoryBrowser];
      if (!result)
      {
        goto LABEL_20;
      }

      v56 = result;
      v57 = [v38 identifier];
      if (!v57)
      {
        sub_22A4DD5EC();
        v57 = sub_22A4DD5AC();
      }

      [v56 handleNewlyPairedAccessory:v57 linkType:0];
      swift_unknownObjectRelease();
    }

    result = [v37 accessoryBrowser];
    if (result)
    {
      v58 = result;
      v59 = [v38 identifier];
      if (!v59)
      {
        sub_22A4DD5EC();
        v59 = sub_22A4DD5AC();
      }

      [v58 removeUnassociatedAccessoryWithIdentifier_];
      swift_unknownObjectRelease();

      logAndPostNotification(@"HMDAccessoryConnectedNotification", v38, 0);
      [v37 notifyOfAddedAccessory_];
      return [v37 reevaluateAccessoryInfo];
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

void sub_2297A8AF4(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v117 = *(v5 - 1);
  v6 = *(v117 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v103 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v103 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v103 - v17;
  v19 = sub_22A4DB7DC();
  v116 = *(v19 - 8);
  v20 = *(v116 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v115 = &v103 - v24;
  if (![v2 isCurrentDeviceConfirmedPrimaryResident])
  {
    sub_2297A46D4();
    v43 = v2;
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v5;
      v48 = swift_slowAlloc();
      *&v118[0] = v48;
      *v46 = 136315138;
      *&v120[0] = 91;
      *(&v120[0] + 1) = 0xE100000000000000;
      v49 = [v43 logIdentifier];
      v50 = sub_22A4DD5EC();
      v52 = v51;

      MEMORY[0x22AAD08C0](v50, v52);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v53 = sub_2295A3E30(*&v120[0], *(&v120[0] + 1), v118);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_229538000, v44, v45, "[%s] presence map fetch error: not primary resident", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);

      (*(v117 + 8))(v9, v47);
    }

    else
    {

      (*(v117 + 8))(v9, v5);
    }

    v72 = [objc_opt_self() hmPrivateErrorWithCode_];
    goto LABEL_37;
  }

  v25 = [a1 setForKey_];
  if (!v25)
  {
LABEL_33:
    sub_2297A46D4();
    v77 = v2;
    v78 = sub_22A4DD05C();
    v79 = sub_22A4DDCEC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = v5;
      v82 = swift_slowAlloc();
      *&v118[0] = v82;
      *v80 = 136315138;
      *&v120[0] = 91;
      *(&v120[0] + 1) = 0xE100000000000000;
      v83 = [v77 logIdentifier];
      v84 = sub_22A4DD5EC();
      v85 = v12;
      v86 = a1;
      v88 = v87;

      MEMORY[0x22AAD08C0](v84, v88);
      a1 = v86;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v89 = sub_2295A3E30(*&v120[0], *(&v120[0] + 1), v118);

      *(v80 + 4) = v89;
      _os_log_impl(&dword_229538000, v78, v79, "[%s] presence map fetch error: HMHomeUserUUIDsMessageKey is not set", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x22AAD4E50](v82, -1, -1);
      MEMORY[0x22AAD4E50](v80, -1, -1);

      (*(v117 + 8))(v85, v81);
    }

    else
    {

      (*(v117 + 8))(v12, v5);
    }

    v72 = [objc_opt_self() hmErrorWithCode_];
LABEL_37:
    v90 = v72;
    v76 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_38;
  }

  v110 = ObjectType;
  v111 = v2;
  v109 = v12;
  v107 = v14;
  v114 = v5;
  v112 = a1;
  v26 = v25;
  v27 = sub_22A4DDB6C();

  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 56);
  v31 = (v28 + 63) >> 6;
  v32 = (v116 + 56);
  v33 = (v116 + 48);
  v108 = (v116 + 32);

  v34 = 0;
  v113 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = v34;
    if (!v30)
    {
      break;
    }

LABEL_10:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    sub_2295403F4(*(v27 + 48) + 40 * (v36 | (v34 << 6)), v120);
    v118[0] = v120[0];
    v118[1] = v120[1];
    v119 = v121;
    v37 = swift_dynamicCast();
    (*v32)(v18, v37 ^ 1u, 1, v19);
    if ((*v33)(v18, 1, v19) == 1)
    {
      sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
    }

    else
    {
      v106 = *v108;
      v106(v115, v18, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_22958B1F0(0, *(v113 + 2) + 1, 1, v113);
      }

      v39 = *(v113 + 2);
      v38 = *(v113 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v105 = v39 + 1;
        v104 = v39;
        v42 = sub_22958B1F0(v38 > 1, v39 + 1, 1, v113);
        v40 = v105;
        v39 = v104;
        v113 = v42;
      }

      v41 = v113;
      *(v113 + 2) = v40;
      v106(&v41[((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v39], v115, v19);
    }
  }

  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 56 + 8 * v34);
    ++v35;
    if (v30)
    {
      goto LABEL_10;
    }
  }

  v54 = v113;
  v55 = *(v113 + 2);
  if (!v55)
  {

    a1 = v112;
    v5 = v114;
    v12 = v109;
    v2 = v111;
    goto LABEL_33;
  }

  v56 = v111;
  v57 = [v111 homePresence];
  v58 = v114;
  if (v57)
  {
    v114 = v57;
    v59 = [v56 usersSupportingPresence];
    sub_229562F68(0, &qword_281401790, off_278666348);
    v117 = sub_22A4DD83C();

    v60 = v116 + 16;
    v116 = *(v116 + 16);
    v61 = v54 + ((*(v60 + 64) + 32) & ~*(v60 + 64));
    v115 = *(v60 + 56);
    v62 = (v60 - 8);
    v63 = MEMORY[0x277D84F98];
    for (i = (v116)(v23, v61, v19); ; i = (v116)(v23, v61, v19))
    {
      MEMORY[0x28223BE20](i);
      *(&v103 - 2) = v23;
      v67 = sub_22968FFF0(sub_2297AD638, (&v103 - 4), v117);
      if (v67)
      {
        v68 = v67;
        v69 = v114;
        if (([v114 isUserAtHome_] & 1) == 0)
        {
          [v69 isUserNotAtHome_];
        }

        v70 = sub_22A4DDFDC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v120[0] = v63;
        sub_2295AC044(v70, v23, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v65 = sub_22A4DDFDC();
        v66 = swift_isUniquelyReferenced_nonNull_native();
        *&v120[0] = v63;
        sub_2295AC044(v65, v23, v66);
      }

      v63 = *&v120[0];
      (*v62)(v23, v19);
      v61 = &v115[v61];
      if (!--v55)
      {
        break;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v74 = *MEMORY[0x277CD1410];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v75;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881088, &unk_22A583210);
    *(inited + 48) = v63;
    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v76 = sub_22A4DD47C();

    [v112 respondWithPayload_];
    swift_unknownObjectRelease();
  }

  else
  {

    v91 = v107;
    sub_2297A46D4();
    v92 = v56;
    v93 = sub_22A4DD05C();
    v94 = sub_22A4DDCEC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v118[0] = v96;
      *v95 = 136315138;
      *&v120[0] = 91;
      *(&v120[0] + 1) = 0xE100000000000000;
      v97 = [v92 logIdentifier];
      v98 = sub_22A4DD5EC();
      v100 = v99;

      MEMORY[0x22AAD08C0](v98, v100);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v101 = sub_2295A3E30(*&v120[0], *(&v120[0] + 1), v118);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_229538000, v93, v94, "[%s] presence map fetch error: homePresence is nil", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x22AAD4E50](v96, -1, -1);
      MEMORY[0x22AAD4E50](v95, -1, -1);
    }

    (*(v117 + 8))(v91, v58);
    v102 = [objc_opt_self() hmErrorWithCode_];
    v76 = sub_22A4DB3DC();

    [v112 respondWithError_];
  }

LABEL_38:
}

uint64_t sub_2297A9870(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

id sub_2297A9A28()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = [v0 homeActivityStateManager];
    if (!v7)
    {
      sub_2297A46D4();
      v12 = v0;
      v13 = sub_22A4DD05C();
      v14 = sub_22A4DDCEC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 136315138;
        v23 = 91;
        v24 = 0xE100000000000000;
        v25 = v16;
        v17 = [v12 logIdentifier];
        v18 = sub_22A4DD5EC();
        v20 = v19;

        MEMORY[0x22AAD08C0](v18, v20);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v21 = sub_2295A3E30(v23, v24, &v25);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_229538000, v13, v14, "[%s] homeActivityStateManager is unexpectedly nil", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AAD4E50](v16, -1, -1);
        MEMORY[0x22AAD4E50](v15, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      return 0;
    }

    v8 = v7;
    v9 = [v7 userActivityStatesDetails];
LABEL_6:
    v11 = v9;

    return v11;
  }

  result = [v0 presenceMonitor];
  if (result)
  {
    v8 = result;
    v9 = [result currentHomePresence];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_2297A9CF8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v32 = a7;
  v34 = sub_22A4DB7DC();
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v34);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2295404B0(a5, v36);
  v17 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v18 = objc_allocWithZone(v17);
  swift_unknownObjectWeakInit();
  v19 = &v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v19 = 0xD00000000000003BLL;
  *(v19 + 1) = 0x800000022A58A010;
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  v20 = v33;
  swift_unknownObjectWeakAssign();
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_nodeId] = a1;
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_endpointId] = a2;
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_clusterId] = a3;
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_attributeId] = a4;
  sub_2295404B0(v36, &v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a6;
  v21 = a6;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = [v20 uuid];
  sub_22A4DB79C();

  v26 = sub_22A4DB77C();
  (*(v13 + 8))(v16, v34);
  v35.receiver = v18;
  v35.super_class = v17;
  v27 = objc_msgSendSuper2(&v35, sel_initWithHomeUUID_, v26);

  __swift_destroy_boxed_opaque_existential_0(v36);
  v28 = [v20 logEventSubmitter];
  if (v28)
  {
    v29 = v28;
    if (v32)
    {
      v30 = sub_22A4DB3DC();
    }

    else
    {
      v30 = 0;
    }

    [v29 submitLogEvent:v27 error:v30];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2297AA198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_22A4DD90C();
  v6[38] = v7;
  v8 = *(v7 - 8);
  v6[39] = v8;
  v9 = *(v8 + 64) + 15;
  v6[40] = swift_task_alloc();
  v10 = sub_22A4DE2CC();
  v6[41] = v10;
  v11 = *(v10 - 8);
  v6[42] = v11;
  v12 = *(v11 + 64) + 15;
  v6[43] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810C0, &qword_22A583258);
  v6[44] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810C8, &qword_22A583260);
  v6[46] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810D0, &qword_22A583268);
  v6[48] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810D8, &qword_22A583270);
  v6[50] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810E0, &qword_22A583278);
  v6[52] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v6[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297AA3E4, 0, 0);
}

uint64_t sub_2297AA3E4()
{
  v1 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 416);
  v10 = *(v0 + 408);
  v11 = *(v0 + 384);
  v2 = *(v0 + 376);
  v8 = *(v0 + 392);
  v9 = *(v0 + 368);
  v14 = *(v0 + 360);
  v15 = *(v0 + 352);
  v16 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228);
  sub_229590C00(&qword_27D8810E8, &qword_27D8810B0, &qword_22A583238);
  sub_229590C00(&qword_27D8810F0, &qword_27D8810A0, &qword_22A583228);
  sub_22A4DC4EC();
  sub_229590C00(&qword_27D8810F8, &qword_27D8810C8, &qword_22A583260);
  sub_22A4DDB1C();
  sub_22953EAE4(v2, &qword_27D8810C8, &qword_22A583260);
  sub_22A4DC4DC();
  sub_229590C00(&qword_27D881100, &qword_27D8810D0, &qword_22A583268);
  sub_22A4DDB2C();
  sub_22953EAE4(v8, &qword_27D8810D0, &qword_22A583268);
  sub_229590C00(&qword_27D881108, &qword_27D8810D8, &qword_22A583270);
  sub_22A4DDB0C();
  sub_22953EAE4(v10, &qword_27D8810D8, &qword_22A583270);
  v3 = v1 + v13[17];
  sub_22A4DE2DC();
  *(v1 + v13[15]) = xmmword_22A583180;
  v4 = v1 + v13[16];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v1 + v13[13]) = 16;
  *(v1 + v13[14]) = 16;
  sub_2297ABCAC(v14);
  *(v0 + 68) = *(v15 + 52);
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_2297AA710, 0, 0);
}

uint64_t sub_2297AA710()
{
  v1 = *(v0 + 360) + *(v0 + 68);
  v2 = sub_2297AC8A8();
  if (v2)
  {
    v4 = *(v0 + 360);
    v5 = *(v4 + 72);
    if (v5 == 1)
    {
      v6 = *(MEMORY[0x277CEF6E0] + 4);
      v7 = swift_task_alloc();
      *(v0 + 440) = v7;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
      *v7 = v0;
      v7[1] = sub_2297AAB58;
      v8 = *(v0 + 360);
      v2 = v0 + 72;
    }

    else
    {
      v23 = *(v4 + 80);
      v24 = *(v4 + 40);
      v25 = *(v4 + 48);
      v26 = *(v4 + 32);
      v31 = *(v4 + 56);
      *(v0 + 16) = v26;
      *(v0 + 24) = v24;
      *(v0 + 32) = v25;
      *(v0 + 40) = v31;
      *(v0 + 56) = v5;
      *(v0 + 64) = v23;
      sub_2295AEF1C(v26, v24);
      sub_2295AEF1C(v25, v31);

      v27 = *(MEMORY[0x277CEF6E0] + 4);
      v28 = swift_task_alloc();
      *(v0 + 456) = v28;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
      *v28 = v0;
      v28[1] = sub_2297AAC6C;
      v29 = *(v0 + 360);
      v2 = v0 + 184;
    }

    return MEMORY[0x282141C00](v2, v3);
  }

  v9 = *(v0 + 360);
  v10 = (v9 + *(v0 + 68));
  if (*v10)
  {
    __break(1u);
    return MEMORY[0x282141C00](v2, v3);
  }

  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881110, &unk_22A583288);
  v16 = *(v15 + 48);
  sub_22953E260(&unk_281401738, MEMORY[0x277D858F8]);
  sub_22A4DE2FC();
  (*(v14 + 40))(&v10[v16], v11, v13);
  v17 = *(v15 + 44);
  v18 = *(v12 + 56);
  v19 = sub_22A4DE2EC();
  v20 = sub_22953E260(&qword_281401730, MEMORY[0x277D85928]);
  v21 = *(MEMORY[0x277D85A58] + 4);
  v22 = swift_task_alloc();
  *(v0 + 432) = v22;
  *v22 = v0;
  v22[1] = sub_2297AAA38;

  return MEMORY[0x2822008C8](&v10[v16], v9 + v18, v19, v20);
}

uint64_t sub_2297AAA38()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 576) = v0;
    v5 = sub_2297AB820;
  }

  else
  {
    v5 = sub_2297ABA1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2297AAB58()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_2297AB7FC;
  }

  else
  {
    v3 = sub_2297AB518;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297AAC6C()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_2297AAF1C;
  }

  else
  {
    v3 = sub_2297AAD80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297AAD80()
{
  v1 = *(v0 + 224);
  if (v1 == 1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    v4 = *(v0 + 56);
    sub_229590D18(*(v0 + 16), *(v0 + 24));
    sub_229590D18(v3, v2);

    v5 = *(v0 + 232);
    sub_2297AD80C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));

    return MEMORY[0x2822009F8](sub_2297AB264, 0, 0);
  }

  else
  {
    v6 = *(v0 + 360);
    v7 = *(v0 + 216);
    v8 = *(v0 + 232);
    v9 = *(v0 + 200);
    *(v0 + 128) = *(v0 + 184);
    *(v0 + 144) = v9;
    *(v0 + 160) = v7;
    *(v0 + 168) = v1;
    *(v0 + 176) = v8;
    v10 = *(v6 + 24);
    v14 = (*(v6 + 16) + **(v6 + 16));
    v11 = *(*(v6 + 16) + 4);
    v12 = swift_task_alloc();
    *(v0 + 472) = v12;
    *v12 = v0;
    v12[1] = sub_2297AAFB0;

    return v14(v0 + 16, v0 + 128);
  }
}

uint64_t sub_2297AAF1C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[7];
  sub_229590D18(v0[2], v0[3]);
  sub_229590D18(v2, v1);

  v0[72] = v0[58];

  return MEMORY[0x2822009F8](sub_2297AB820, 0, 0);
}

uint64_t sub_2297AAFB0(char a1)
{
  v2 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 65) = a1;

  return MEMORY[0x2822009F8](sub_2297AB0B0, 0, 0);
}

uint64_t sub_2297AB0B0()
{
  if (*(v0 + 65) == 1)
  {
    v2 = *(v0 + 144);
    v1 = *(v0 + 152);
    v3 = *(v0 + 168);
    sub_229590D18(*(v0 + 128), *(v0 + 136));
    sub_229590D18(v2, v1);

    v4 = *(MEMORY[0x277CEF6E0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 456) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
    *v5 = v0;
    v5[1] = sub_2297AAC6C;
    v7 = *(v0 + 360);

    return MEMORY[0x282141C00](v0 + 184, v6);
  }

  else
  {
    v8 = *(v0 + 360);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 56);
    sub_229590D18(*(v0 + 16), *(v0 + 24));
    sub_229590D18(v10, v9);

    v12 = *(v8 + 80);
    sub_2297AD80C(*(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    *(v0 + 480) = v13;
    *(v0 + 488) = v14;
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    *(v0 + 496) = v16;
    *(v0 + 504) = v15;
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    *(v0 + 512) = v17;
    *(v0 + 520) = v18;
    v19 = *(v0 + 176);
    *(v0 + 66) = v19;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    *(v8 + 48) = v16;
    *(v8 + 56) = v15;
    *(v8 + 64) = v17;
    *(v8 + 72) = v18;
    *(v8 + 80) = v19;
    sub_2295AEF1C(v13, v14);
    sub_2295AEF1C(v16, v15);

    return MEMORY[0x2822009F8](sub_2297AB350, 0, 0);
  }
}

uint64_t sub_2297AB264()
{
  v1 = v0[45];
  sub_22953EAE4(v0[53], &qword_27D8810E0, &qword_22A583278);
  sub_22953EAE4(v1, &qword_27D8810C0, &qword_22A583258);
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[45];
  v7 = v0[43];
  v8 = v0[40];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2297AB350()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = *(v0 + 480);
  v8 = *(v0 + 296);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_2297ABFB8(v7, v6, v5, v3, v4, v2, v1);

    sub_229590D18(v7, v6);
    sub_229590D18(v5, v3);

    return MEMORY[0x2822009F8](sub_2297AA710, 0, 0);
  }

  else
  {
    v11 = *(v0 + 360);
    sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
    sub_229590D18(v7, v6);
    sub_229590D18(v5, v3);

    sub_22953EAE4(v11, &qword_27D8810C0, &qword_22A583258);
    v12 = *(v0 + 424);
    v13 = *(v0 + 408);
    v14 = *(v0 + 392);
    v15 = *(v0 + 376);
    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 320);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2297AB518()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 528) = v3;
  *(v0 + 536) = v2;
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  *(v0 + 544) = v4;
  *(v0 + 552) = v5;
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *(v0 + 560) = v6;
  *(v0 + 568) = v7;
  v8 = *(v0 + 120);
  *(v0 + 67) = v8;
  v9 = *(v1 + 80);
  sub_2297AD80C(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  sub_2297AD86C(v3, v2, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_2297AB604, 0, 0);
}

uint64_t sub_2297AB604()
{
  v1 = *(v0 + 568);
  if (v1 == 1)
  {
    v2 = *(v0 + 360);
    sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
LABEL_8:
    sub_22953EAE4(v2, &qword_27D8810C0, &qword_22A583258);
    v12 = *(v0 + 424);
    v13 = *(v0 + 408);
    v14 = *(v0 + 392);
    v15 = *(v0 + 376);
    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 320);

    v19 = *(v0 + 8);

    return v19();
  }

  v3 = *(v0 + 67);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 296);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v2 = *(v0 + 360);
    sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
    sub_229590D18(v8, v7);
    sub_229590D18(v6, v5);

    goto LABEL_8;
  }

  v11 = Strong;
  sub_2297ABFB8(v8, v7, v6, v5, v4, v1, v3);

  sub_229590D18(v8, v7);
  sub_229590D18(v6, v5);

  return MEMORY[0x2822009F8](sub_2297AA710, 0, 0);
}

uint64_t sub_2297AB820()
{
  v0[33] = v0[72];
  v0[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2297AB8B4, 0, 0);
}

uint64_t sub_2297AB8B4()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 360);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
  sub_22953EAE4(v3, &qword_27D8810C0, &qword_22A583258);
  *(v0 + 272) = v2;
  v6 = v2;
  v7 = swift_dynamicCast();
  v8 = *(v0 + 576);
  if (v7)
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);

    (*(v10 + 8))(v9, v11);
    v12 = *(v0 + 272);
  }

  else
  {

    v12 = v8;
  }

  v13 = *(v0 + 424);
  v14 = *(v0 + 408);
  v15 = *(v0 + 392);
  v16 = *(v0 + 376);
  v17 = *(v0 + 360);
  v18 = *(v0 + 344);
  v19 = *(v0 + 320);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2297ABA1C()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 72);
  if (v2 == 1)
  {
    v3 = *(MEMORY[0x277CEF6E0] + 4);
    v4 = swift_task_alloc();
    *(v0 + 440) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
    *v4 = v0;
    v4[1] = sub_2297AAB58;
    v6 = *(v0 + 360);
    v7 = v0 + 72;
  }

  else
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v11 = *(v1 + 32);
    v16 = *(v1 + 56);
    *(v0 + 16) = v11;
    *(v0 + 24) = v9;
    *(v0 + 32) = v10;
    *(v0 + 40) = v16;
    *(v0 + 56) = v2;
    *(v0 + 64) = v8;
    sub_2295AEF1C(v11, v9);
    sub_2295AEF1C(v10, v16);

    v12 = *(MEMORY[0x277CEF6E0] + 4);
    v13 = swift_task_alloc();
    *(v0 + 456) = v13;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
    *v13 = v0;
    v13[1] = sub_2297AAC6C;
    v14 = *(v0 + 360);
    v7 = v0 + 184;
  }

  return MEMORY[0x282141C00](v7, v5);
}

uint64_t sub_2297ABB98(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = *(a1 + 32);
  *(v2 + 112) = *(a1 + 48);
  v5 = *a2;
  v6 = a2[1];
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  v7 = a2[2];
  *(v2 + 80) = v6;
  *(v2 + 96) = v7;
  *(v2 + 113) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_2297ABBE0, 0, 0);
}

uint64_t sub_2297ABBE0()
{
  if (!sub_229890738(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88)))
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = (v2 | v1) == 0;
  if (v2 && v1)
  {
    if (*(v0 + 48) == *(v0 + 96) && v2 == v1 || (sub_22A4DE60C() & 1) != 0)
    {
      v3 = *(v0 + 112) ^ *(v0 + 113) ^ 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t sub_2297ABCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DE2EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810D8, &qword_22A583270);
  sub_22A4DC4BC();
  v44 = v47;
  v43 = v48;
  v10 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881130, &unk_22A5832A0) + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810E0, &qword_22A583278);
  v14 = v13[14];
  v45 = *(v1 + v13[13]);
  v15 = *(v1 + v14);
  v16 = v13[16];
  v17 = (v1 + v13[15]);
  v18 = v17[1];
  v41 = *v17;
  v42 = v15;
  v19 = *(v1 + v16);
  v39 = *(v1 + v16 + 8);
  v40 = v19;
  v20 = *(v1 + v16 + 16);
  v21 = v13[17];
  v38 = v4;
  v22 = *(v4 + 16);
  v22(v9, v1 + v21, v3);
  *a1 = v44;
  *(a1 + 8) = v43;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  v23 = v46;
  v44 = v12;
  v24 = v18;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810C0, &qword_22A583258);
  v26 = a1 + *(v25 + 56);
  v27 = v39;
  *v26 = v40;
  *(v26 + 8) = v27;
  *(v26 + 16) = v20;
  v29 = v41;
  v28 = v42;
  result = (v22)(v23, v9, v3);
  v31 = *(v25 + 52);
  v32 = v45;
  v33 = (a1 + v31);
  v33[2] = v29;
  v33[3] = v24;
  if (v28 < v32 || v28 < 1)
  {
    __break(1u);
  }

  else
  {

    sub_22A4DE87C();
    result = sub_22A4DE84C();
    if (result)
    {
      *v33 = v32;
      v33[1] = v28;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881110, &unk_22A583288);
      v22(v33 + *(v34 + 44), v23, v3);
      v35 = *(v34 + 48);
      sub_22953E260(&qword_281401730, MEMORY[0x277D85928]);
      sub_22A4DE68C();
      v36 = *(v38 + 8);
      v36(v23, v3);
      return (v36)(v9, v3);
    }
  }

  __break(1u);
  return result;
}

void sub_2297ABFB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  if ([v7 isCurrentDevicePrimaryResident])
  {
    v16 = [v7 backingStore];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 context];

      v25 = v18;
      if (v18)
      {
        if (a6)
        {
          v19 = sub_22A4DD8AC();
        }

        else
        {
          v19 = 0;
        }

        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        *(v20 + 24) = a1;
        *(v20 + 32) = a2;
        *(v20 + 40) = a3;
        *(v20 + 48) = a4;
        *(v20 + 56) = a5;
        *(v20 + 64) = a6;
        *(v20 + 72) = a7;
        *(v20 + 80) = v19;
        *(v20 + 88) = v18;
        *(v20 + 96) = ObjectType;
        aBlock[4] = sub_2297AD8CC;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22953E640;
        aBlock[3] = &block_descriptor_54;
        v21 = _Block_copy(aBlock);
        v22 = v8;
        sub_2295AEF1C(a1, a2);
        sub_2295AEF1C(a3, a4);
        v23 = v19;
        v24 = v25;

        [v24 performBlock_];
        _Block_release(v21);
      }
    }
  }
}

uint64_t sub_2297AC198(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v65 = a6;
  v66 = a4;
  v67 = a5;
  v14 = sub_22A4DD07C();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v64 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = sub_22A4DB7DC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = objc_opt_self();
  v26 = [a1 uuid];
  sub_22A4DB79C();

  v27 = sub_22A4DB77C();
  (*(v21 + 8))(v24, v20);
  v28 = [v25 findHomeWithModelID_];

  if (v28)
  {
    v29 = [v28 primaryIPv4NetworkSignature];
    if (v29)
    {
      v30 = v29;
      v31 = sub_22A4DB62C();
      v33 = v32;

      if (v33 >> 60 != 15)
      {
        if (a3 >> 60 != 15)
        {
          sub_2295AEF1C(a2, a3);
          sub_2295AEF1C(v31, v33);
          v34 = sub_2297B7550(v31, v33, a2, a3);
          sub_229590D18(v31, v33);
          sub_229590D18(a2, a3);
          sub_229590D18(v31, v33);
          v36 = v66;
          v35 = v67;
          if (v34)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

LABEL_13:
        sub_2295AEF1C(a2, a3);
        sub_229590D18(v31, v33);
        sub_229590D18(a2, a3);
        v36 = v66;
        v35 = v67;
        if (a3 >> 60 == 15)
        {
          v41 = 0;
LABEL_16:
          [v28 setPrimaryIPv4NetworkSignature_];

LABEL_17:
          v42 = [v28 primaryIPv6NetworkSignature];
          if (v42)
          {
            v43 = v42;
            v44 = sub_22A4DB62C();
            v46 = v45;

            if (v46 >> 60 != 15)
            {
              if (v35 >> 60 != 15)
              {
                sub_2295AEF1C(v36, v35);
                sub_2295AEF1C(v44, v46);
                v47 = sub_2297B7550(v44, v46, v36, v35);
                sub_229590D18(v44, v46);
                sub_229590D18(v36, v35);
                sub_229590D18(v44, v46);
                if ((v47 & 1) == 0)
                {
                  goto LABEL_27;
                }

LABEL_29:
                v49 = [v28 primaryWiFiSSID];
                if (v49 && (v50 = v49, v51 = sub_22A4DD5EC(), v53 = v52, v50, v53))
                {
                  if (!a7)
                  {

                    v54 = 0;
                    goto LABEL_38;
                  }

                  if (v51 == v65 && v53 == a7)
                  {

                    goto LABEL_39;
                  }

                  v63 = sub_22A4DE60C();

                  if (v63)
                  {
LABEL_39:
                    v55 = [v28 primaryWiFiRequiresPassword];
                    if (v55)
                    {
                      v56 = v55;
                      if (a9)
                      {
                        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
                        v57 = a9;
                        v58 = sub_22A4DDEDC();

                        if (v58)
                        {
                          goto LABEL_47;
                        }
                      }

                      else
                      {
                      }
                    }

                    else if (!a9)
                    {
LABEL_47:
                      if ([a10 save])
                      {
                        return swift_unknownObjectRelease();
                      }

                      v59 = v64;
                      sub_2297A46D4();
                      v60 = sub_22A4DD05C();
                      v61 = sub_22A4DDCEC();
                      if (os_log_type_enabled(v60, v61))
                      {
                        v62 = swift_slowAlloc();
                        *v62 = 0;
                        _os_log_impl(&dword_229538000, v60, v61, "Failed to save network info to working store", v62, 2u);
                        MEMORY[0x22AAD4E50](v62, -1, -1);
                        swift_unknownObjectRelease();
                      }

                      else
                      {

                        swift_unknownObjectRelease();
                      }

                      return (*(v68 + 8))(v59, v69);
                    }

                    [v28 setPrimaryWiFiRequiresPassword_];
                    goto LABEL_47;
                  }
                }

                else if (!a7)
                {
                  goto LABEL_39;
                }

                v54 = sub_22A4DD5AC();
LABEL_38:
                [v28 setPrimaryWiFiSSID_];

                goto LABEL_39;
              }

              goto LABEL_25;
            }
          }

          else
          {
            v44 = 0;
            v46 = 0xF000000000000000;
          }

          if (v35 >> 60 == 15)
          {
            sub_2295AEF1C(v36, v35);
            sub_229590D18(v44, v46);
            goto LABEL_29;
          }

LABEL_25:
          sub_2295AEF1C(v36, v35);
          sub_229590D18(v44, v46);
          sub_229590D18(v36, v35);
          if (v35 >> 60 == 15)
          {
            v48 = 0;
LABEL_28:
            [v28 setPrimaryIPv6NetworkSignature_];

            goto LABEL_29;
          }

LABEL_27:
          v48 = sub_22A4DB61C();
          goto LABEL_28;
        }

LABEL_15:
        v41 = sub_22A4DB61C();
        goto LABEL_16;
      }
    }

    else
    {
      v31 = 0;
      v33 = 0xF000000000000000;
    }

    if (a3 >> 60 == 15)
    {
      sub_2295AEF1C(a2, a3);
      sub_229590D18(v31, v33);
      v36 = v66;
      v35 = v67;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  sub_2297A46D4();
  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCEC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_229538000, v37, v38, "Failed to find home for network info update", v39, 2u);
    MEMORY[0x22AAD4E50](v39, -1, -1);
  }

  return (*(v68 + 8))(v19, v69);
}

uint64_t sub_2297AC8A8()
{
  v1 = v0;
  v2 = sub_22A4DE2CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881110, &unk_22A583288);
  v8 = *(v7 + 44);
  v9 = *(v7 + 48);
  sub_22A4DE2EC();
  sub_22953E260(&qword_281401730, MEMORY[0x277D85928]);
  sub_22A4DE68C();
  sub_22953E260(&unk_281401738, MEMORY[0x277D858F8]);
  sub_22A4DE30C();
  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 2);
  v11 = *(v1 + 3);
  result = sub_22A4DE83C();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13 & ~(v13 >> 63);
  sub_22A4DE34C();
  sub_22A4DE2FC();
  result = (*(v3 + 40))(&v1[v9], v6, v2);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = __OFSUB__(v16, *v1);
  v18 = v16 - *v1;
  if (v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= v14)
  {
    v18 = v14;
  }

  v17 = __OFADD__(v15, v18);
  v19 = v15 + v18;
  if (!v17)
  {
    result = v19 > 0;
    *v1 = v19 - result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_2297ACB20(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  swift_defaultActor_initialize();
  v14 = MEMORY[0x277D84FA0];
  a5[14] = MEMORY[0x277D84FA0];
  a5[15] = v14;
  a5[16] = 0;
  a5[17] = v14;
  v15 = MEMORY[0x277D84F98];
  a5[18] = MEMORY[0x277D84F98];
  a5[20] = v14;
  a5[21] = v14;
  a5[25] = 0;
  swift_unknownObjectWeakInit();
  a5[25] = &off_283CE8C30;
  a5[26] = v15;
  swift_unknownObjectWeakAssign();
  a5[22] = a3;
  a5[23] = a2;
  a5[19] = a4;
  v16 = type metadata accessor for ActionSetState.Observer();
  v30.receiver = a5;
  v30.super_class = v16;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = v20[19];
  v22 = v20;
  [v21 setDelegate_];
  [v17 addDelegate_];
  [v18 addObserver:v22 selector:sel_handleActionSetAddedWithNotification_ name:@"HMDActionSetAddedNotification" object:a1];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = v22[25];
    ObjectType = swift_getObjectType();
    v25 = (*(v23 + 72))(v22, ObjectType, v23);
    swift_unknownObjectRelease();
    v26 = sub_22A4DD9DC();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v22;
    v27[5] = v25;
    v28 = v22;
    sub_22957F3C0(0, 0, v13, &unk_22A5832D0, v27);
  }

  return v22;
}

id sub_2297ACD98(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask] = 0;
  v9 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresencePublisher];
  *v9 = 0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 5) = 0;
  v10 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_homeStorage];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v52 = v11;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager] = 0;
  v12 = [a1 uuid];
  sub_22A4DB79C();

  v13 = [a1 workQueue];
  Controller = type metadata accessor for AccessoryInfoFetchController();
  v15 = objc_allocWithZone(Controller);
  *&v15[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageDispatcher] = 0;
  *&v15[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController] = 0;
  v50 = v5[2];
  v50(&v15[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageTargetUUID], v8, v4);
  *&v15[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageReceiveQueue] = v13;
  v59.receiver = v15;
  v59.super_class = Controller;
  v16 = objc_msgSendSuper2(&v59, sel_init);
  v51 = v5;
  v49 = v5[1];
  v49(v8, v4);
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_accessoryInfoFetchController] = v16;
  LODWORD(Controller) = [objc_msgSend(a1 localCapabilitiesDataSource)];
  swift_unknownObjectRelease();
  v17 = 0;
  if (Controller)
  {
    v18 = a1;
    v19 = [v18 notificationRegistry];
    v20 = [objc_opt_self() defaultCenter];
    v21 = [objc_allocWithZone(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:2 maximumTimeInterval:0 exponentialFactor:15.0 options:2000.0];
    type metadata accessor for ActionSetState.Observer();
    v22 = swift_allocObject();
    v17 = sub_2297ACB20(v18, v19, v20, v21, v22);
  }

  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_actionSetStateObserver] = v17;
  v23 = _s19SubscriptionManagerCMa();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate];
  *&v24[OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D881158, &qword_22A5832C8);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = MEMORY[0x277D84F98];
  *&v24[v26] = v27;
  *(v25 + 1) = &off_283CE8330;
  swift_unknownObjectWeakAssign();
  v58.receiver = v24;
  v58.super_class = v23;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_actionSetStateSubscriptionManager] = objc_msgSendSuper2(&v58, sel_init);
  v28 = [a1 msgDispatcher];
  if (v28)
  {
    v29 = [a1 uuid];
    sub_22A4DB79C();

    updated = type metadata accessor for UserPresenceUpdateSubscriptionManager();
    v31 = *(updated + 48);
    v32 = *(updated + 52);
    v33 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v33 + 14) = [objc_opt_self() weakObjectsHashTable];
    v50(&v33[OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_uuid], v8, v4);
    *&v33[OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_messageDispatcher] = v28;
    v53.receiver = v33;
    v53.super_class = updated;
    v28 = objc_msgSendSuper2(&v53, &selRef_initWithBase_actionSetUniqueIdentifier_actionSetType_associatedAccessoryUniqueIdentifiers_actionSetName_homeName_);
    v49(v8, v4);
  }

  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_userPresenceSubscriptionManager] = v28;
  v34 = [a1 uuid];
  sub_22A4DB79C();

  v56 = &type metadata for SystemSymptomReporter;
  v57 = &off_283CDE2E8;
  v35 = type metadata accessor for NetworkDiagnosticsSymptomReporter(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_0(v55, &type metadata for SystemSymptomReporter);
  v39 = v38 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_symptomReporter;
  *(v39 + 24) = &type metadata for SystemSymptomReporter;
  *(v39 + 32) = &off_283CDE2E8;
  v40 = OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_lastReportedState;
  v41 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v41 - 8) + 56))(v38 + v40, 1, 1, v41);
  (v51[4])(v38 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_homeUUID, v8, v4);
  __swift_destroy_boxed_opaque_existential_0(v55);
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_networkDiagnosticsSymptomReporter] = v38;
  v42 = type metadata accessor for DefaultHomeStorage();
  swift_allocObject();
  v43 = a1;
  v44 = sub_229657878(v43);

  v56 = v42;
  v57 = &off_283CDEDA8;
  v55[0] = v44;
  v45 = v52;
  swift_beginAccess();
  sub_2297ADB6C(v55, v45);
  swift_endAccess();
  v46 = _s22DefaultSwiftExtensionsCMa_0();
  v54.receiver = v2;
  v54.super_class = v46;
  return objc_msgSendSuper2(&v54, sel_init);
}

void sub_2297AD3C4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a6;
  v30 = a5;
  v31 = sub_22A4DB7DC();
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003ALL;
  *(v18 + 1) = 0x800000022A58ECD0;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_nodeId] = a1;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_endpointId] = a2;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId] = a3;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId] = a4;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source] = v30;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = [v7 uuid];
  sub_22A4DB79C();

  v23 = sub_22A4DB77C();
  (*(v12 + 8))(v15, v31);
  v32.receiver = v17;
  v32.super_class = v16;
  v24 = objc_msgSendSuper2(&v32, sel_initWithHomeUUID_, v23);

  v25 = [v7 logEventSubmitter];
  if (v25)
  {
    v26 = v25;
    if (v29)
    {
      v27 = sub_22A4DB3DC();
    }

    else
    {
      v27 = 0;
    }

    [v26 submitLogEvent:v24 error:v27];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2297AD66C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229586D38;

  return sub_2297AA198(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_2297AD80C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_229590D18(result, a2);
    sub_229590D18(a3, a4);
  }

  return result;
}

uint64_t sub_2297AD86C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_2295AEF1C(result, a2);
    sub_2295AEF1C(a3, a4);
  }

  return result;
}

id sub_2297AD934()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result configure];
  }

  __break(1u);
  return result;
}

void sub_2297AD94C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2297A6CA0(v3, v4, v0 + v2);
}

uint64_t objectdestroy_74Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2297ADAE8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_2297ADB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8804B0, &qword_22A581910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297ADBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_22974E734(a1, v4, v5, v7, v6);
}

uint64_t sub_2297ADCE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_2297ADDDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 - 8);
  v32 = *(v8 + 84);
  if (v32 <= v7)
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (*(v11 + 84) <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v8 + 64) + v15;
  if (a2 > v16)
  {
    v18 = ((v17 + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14)) & ~v15) + *(*(v10 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  v25 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  if (v7 == v16)
  {
    v26 = *(v6 + 48);
    v27 = v7;
    v28 = AssociatedTypeWitness;

    return v26(v25, v27, v28);
  }

  v25 = (v25 + v13 + v14) & ~v14;
  if (v32 == v16)
  {
    v26 = *(v8 + 48);
    v27 = v32;
    v28 = v4;

    return v26(v25, v27, v28);
  }

  v30 = *(v11 + 48);
  v31 = (v17 + v25) & ~v15;

  return v30(v31);
}

void sub_2297AE188(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v33 = v9;
  v32 = *(v9 + 84);
  if (v32 <= v8)
  {
    v10 = *(v7 + 84);
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  if (*(v11 + 84) <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v9 + 80);
  v17 = *(v11 + 80);
  v18 = *(v9 + 64) + v17;
  v19 = ((v18 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & ~v17) + *(v11 + 64);
  if (a3 <= v13)
  {
    v22 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    if (v19 <= 3)
    {
      v25 = ((a3 - v13 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v13 < v21)
  {
    v23 = ~v13 + v21;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(v20, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v20 = v27;
            if (v22 > 1)
            {
LABEL_53:
              if (v22 == 2)
              {
                *&v20[v19] = v24;
              }

              else
              {
                *&v20[v19] = v24;
              }

              return;
            }
          }

          else
          {
            *v20 = v23;
            if (v22 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v20 = v27;
        v20[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(v20, v19);
      *v20 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v22)
    {
      v20[v19] = v24;
    }

    return;
  }

  if (v22 <= 1)
  {
    if (v22)
    {
      v20[v19] = 0;
      if (!v21)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v21)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v22 == 2)
  {
    *&v20[v19] = 0;
    goto LABEL_33;
  }

  *&v20[v19] = 0;
  if (!v21)
  {
    return;
  }

LABEL_34:
  v28 = (((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
  if (v8 == v13)
  {
    v29 = *(v7 + 56);

LABEL_37:
    v29(v28);
    return;
  }

  v28 = (v28 + v15 + v16) & ~v16;
  if (v32 == v13)
  {
    v29 = *(v33 + 56);

    goto LABEL_37;
  }

  v30 = *(v12 + 56);
  v31 = (v18 + v28) & ~v17;

  v30(v31);
}

uint64_t sub_2297AE5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v28 - v16;
  if (a2 < a1 || a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v29 = a1;
    v30 = a2;
    v31 = a4;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(AssociatedConformanceWitness + 8);
    sub_22A4DE3BC();
    v20 = *(AssociatedConformanceWitness + 16);
    LOBYTE(AssociatedConformanceWitness) = sub_22A4DD51C();
    v21 = v17;
    v22 = *(v13 + 8);
    result = v22(v21, AssociatedTypeWitness);
    if (AssociatedConformanceWitness)
    {
      v23 = v30;
      *a6 = v29;
      *(a6 + 1) = v23;
      v24 = type metadata accessor for TokenBucket();
      (*(v13 + 16))(&a6[v24[10]], a3, AssociatedTypeWitness);
      v25 = *(a5 - 8);
      v26 = v31;
      (*(v25 + 16))(&a6[v24[11]], v31, a5);
      v27 = &a6[v24[12]];
      sub_22A4DE68C();
      (*(v25 + 8))(v26, a5);
      return v22(a3, AssociatedTypeWitness);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2297AE858(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v34 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = *(a1 + 48);
  v14 = v1;
  v15 = &v1[*(a1 + 44)];
  sub_22A4DE68C();
  swift_getAssociatedConformanceWitness();
  v37 = v13;
  sub_22A4DE30C();
  v16 = *(v38 + 8);
  v36 = v8;
  v16(v8, AssociatedTypeWitness);
  v17 = *(a1 + 40);
  v35 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v18 = v14;
  sub_22A4DE32C();
  v20 = v19;
  v21 = v19;
  v22 = *(v39 + 8);
  v39 += 8;
  result = v22(v12, v9);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v18;
  sub_22A4DE34C();
  v25 = v22;
  v26 = v36;
  v27 = v37;
  v28 = v35;
  sub_22A4DE2FC();
  v25(v12, v9);
  result = (*(v38 + 40))(&v24[v27], v26, v28);
  v29 = *v24;
  v30 = *(v24 + 1);
  v31 = __OFSUB__(v30, *v24);
  v32 = v30 - *v24;
  if (v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v32 >= (v20 & ~(v20 >> 63)))
  {
    v32 = v20 & ~(v20 >> 63);
  }

  v31 = __OFADD__(v29, v32);
  v33 = v29 + v32;
  if (!v31)
  {
    result = v33 > 0;
    *v24 = v33 - result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2297AEBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v16 - v12;
  if (*v3)
  {
    __break(1u);
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    swift_getAssociatedConformanceWitness();
    sub_22A4DE2FC();
    (*(v9 + 40))(&v3[v14], v13, AssociatedTypeWitness);
    return (*(v9 + 16))(a2, &v3[v14], AssociatedTypeWitness);
  }

  return result;
}

uint64_t HMDHAPAccessory.demoModePath.getter()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = demoModeConfigPath();
  v7 = sub_22A4DD5EC();
  v9 = v8;

  v15 = 47;
  v16 = 0xE100000000000000;
  v10 = [v0 uuid];
  sub_22A4DB79C();

  sub_229586A3C();
  v11 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v11);

  (*(v2 + 8))(v5, v1);
  v12 = v15;
  v13 = v16;
  v15 = v7;
  v16 = v9;

  MEMORY[0x22AAD08C0](v12, v13);

  return v15;
}

uint64_t HMDHAPAccessory.demoModeCameraPath.getter()
{
  v1 = [v0 demoModePath];
  v2 = sub_22A4DD5EC();

  MEMORY[0x22AAD08C0](0x736172656D61432FLL, 0xE800000000000000);

  return v2;
}

void sub_2297AF034(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB4EC();
  v3 = [a1 fileExistsAtURL_];

  if (v3)
  {
    v4 = sub_22A4DB4EC();
    v9[0] = 0;
    v5 = [a1 removeItemAtURL:v4 error:v9];

    if (v5)
    {
      v6 = v9[0];
    }

    else
    {
      v7 = v9[0];
      sub_22A4DB3EC();

      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t static HomeUtilPassCommandHandler.handlePassCommandFor(data:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2297AF1DC;

  return (sub_2297AF7E4)(a1, a2);
}

uint64_t sub_2297AF1DC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2297AF470(void *a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_22A4DB62C();
  v7 = v6;

  v2[3] = v5;
  v2[4] = v7;
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_2297AF550;

  return sub_2297AF7E4(v5, v7);
}

uint64_t sub_2297AF550(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *v3;

  sub_2295798D4(v9, v8);
  if (v4)
  {
    a2 = sub_22A4DB3DC();

    v11 = a2;
LABEL_3:
    v12 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v11 = 0;
    goto LABEL_3;
  }

  v13 = sub_22A4DD5AC();

  v12 = v13;
  v11 = 0;
  a2 = v13;
LABEL_6:
  v14 = *(v6 + 16);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

id HomeUtilPassCommandHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeUtilPassCommandHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUtilPassCommandHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HomeUtilPassCommandHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUtilPassCommandHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2297AF7E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2297AF804, 0, 0);
}

uint64_t sub_2297AF804()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = sub_22A4DB0BC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22A4DB0AC();
  sub_2297B0D10();
  sub_22A4DB09C();

  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 64) = v7;
  *(v0 + 72) = v6;
  v8 = *(v0 + 32);
  *(v0 + 80) = v8;
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      if (v6)
      {
        v9 = qword_281402DF8;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = swift_task_alloc();
        *(v0 + 208) = v10;
        *v10 = v0;
        v10[1] = sub_2297B07D4;

        return sub_229844D8C(v7, v6);
      }

      else
      {
        if (qword_281402DF8 != -1)
        {
          swift_once();
        }

        v15 = swift_task_alloc();
        *(v0 + 240) = v15;
        *v15 = v0;
        v15[1] = sub_2297B0984;

        return runHomeUtilOnDeviceTests(_:)(&unk_283CDBA00);
      }
    }

    if (qword_281402DF8 != -1)
    {
      swift_once();
    }

    v12 = static PassUpdater.shared;
    *(v0 + 88) = static PassUpdater.shared;
    v13 = sub_2297AFBC0;
  }

  else if (v8)
  {
    if (qword_281402DF8 != -1)
    {
      swift_once();
    }

    v12 = static PassUpdater.shared;
    *(v0 + 112) = static PassUpdater.shared;
    v13 = sub_2297AFDF0;
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      if (qword_281402DF8 != -1)
      {
        swift_once();
      }

      v16 = static PassUpdater.shared;
      *(v0 + 168) = static PassUpdater.shared;
      *(v0 + 176) = [objc_opt_self() untrackedPlaceholderFlow];
      v14 = sub_2297B0480;
      v12 = v16;
      goto LABEL_17;
    }

    if (qword_281402DF8 != -1)
    {
      swift_once();
    }

    v12 = static PassUpdater.shared;
    *(v0 + 144) = static PassUpdater.shared;
    v13 = sub_2297B0170;
  }

  v14 = v13;
LABEL_17:

  return MEMORY[0x2822009F8](v14, v12, 0);
}

uint64_t sub_2297AFBC0()
{
  v1 = *(*(v0 + 88) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2297AFC8C;
  v4 = *(v0 + 88);

  return v6();
}

uint64_t sub_2297AFC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_2297AFDD8;
  }

  else
  {
    v6 = sub_2297AFDB8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2297AFDF0()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_2297AFEE8;

  return v9();
}

uint64_t sub_2297AFEE8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_2297B009C;
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);

    v5 = sub_2297B000C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2297B0028()
{
  sub_2297B0D64(v0[8], v0[9], v0[10], 0);
  v1 = v0[1];

  return v1(0, 0);
}

uint64_t sub_2297B009C()
{
  v1 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_2297B0104, 0, 0);
}

uint64_t sub_2297B0104()
{
  sub_2297B0D64(v0[8], v0[9], v0[10], 0);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2297B0170()
{
  v1 = *(*(v0 + 144) + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_2297B023C;
  v4 = *(v0 + 144);

  return v6();
}

uint64_t sub_2297B023C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_2297B03F8;
  }

  else
  {
    v6 = sub_2297B0368;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2297B0384()
{
  sub_2297B0D64(v0[8], v0[9], 0, 0);
  v1 = v0[1];

  return v1(0, 0);
}

uint64_t sub_2297B0414()
{
  sub_2297B0D64(v0[8], v0[9], 0, 0);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2297B0480()
{
  v1 = swift_task_alloc();
  v2 = *(v0 + 168);
  v3 = *(*(v0 + 168) + 112);
  *(v0 + 184) = v1;
  *(v1 + 16) = v2;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_2297B0568;

  return v7();
}

uint64_t sub_2297B0568()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = sub_2297B06F8;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 168);

    v5 = sub_2297B0690;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2297B0690()
{

  return MEMORY[0x2822009F8](sub_2297B0F70, 0, 0);
}

uint64_t sub_2297B06F8()
{
  v1 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_2297B0768, 0, 0);
}

uint64_t sub_2297B0768()
{
  sub_2297B0D64(v0[8], v0[9], 0, 0);
  v1 = v0[25];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2297B07D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 208);
  v13 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {
    v8 = sub_2297B0BA4;
  }

  else
  {
    v9 = v6[9];
    v10 = v6[10];
    v11 = v6[8];
    v6[28] = a2;
    v6[29] = a1;
    sub_2297B0D64(v11, v9, v10, 1u);
    v8 = sub_2297B090C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2297B090C()
{
  v1 = v0[28];
  sub_2297B0D64(v0[8], v0[9], v0[10], 1u);
  v2 = v0[29];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2297B0984(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 240);
  v8 = *v3;
  *(*v3 + 248) = v2;

  if (v2)
  {
    v9 = sub_2297B0B34;
  }

  else
  {
    *(v6 + 256) = a2;
    *(v6 + 264) = a1;
    v9 = sub_2297B0AB8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2297B0AB8()
{
  v1 = v0[32];
  sub_2297B0D64(v0[8], 0, v0[10], 1u);
  v2 = v0[33];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2297B0B34()
{
  sub_2297B0D64(v0[8], 0, v0[10], 1u);
  v1 = v0[31];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2297B0BA4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_2297B0D64(v3, v1, v2, 1u);
  sub_2297B0D64(v3, v1, v2, 1u);
  v4 = v0[27];
  v5 = v0[1];

  return v5();
}

uint64_t sub_2297B0C5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_2297AF470(v2, v3);
}

unint64_t sub_2297B0D10()
{
  result = qword_27D8811E0;
  if (!qword_27D8811E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8811E0);
  }

  return result;
}

uint64_t sub_2297B0D64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2297B0D84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_229858414(a1, v1);
}

uint64_t sub_2297B0E20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229858E7C(a1, v4, v5, v6);
}

uint64_t sub_2297B0ED4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2298570B4(a1, v1);
}

id sub_2297B0F74(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 uuid];
  sub_22A4DB79C();

  LOBYTE(v9) = sub_22A4DB78C();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    swift_unknownObjectRetain();
    return v2;
  }

  v11 = sub_22A4DB77C();
  v12 = [v2 roomWithUUID_];

  if (v12)
  {
    return v12;
  }

  v13 = [v2 zones];
  sub_229562F68(0, &qword_281401788, off_278666398);
  v14 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v15);
  *(&v33 - 2) = a1;
  v12 = sub_22968FFF0(sub_2297B1ECC, (&v33 - 4), v14);

  if (v12)
  {
    return v12;
  }

  result = [v2 actionSets];
  if (result)
  {
    v17 = result;
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v18 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v19);
    *(&v33 - 2) = a1;
    v12 = sub_22968FFF0(sub_2297B1FF8, (&v33 - 4), v18);

    if (v12)
    {
      return v12;
    }

    v20 = sub_2297B14B0(a1);
    if (v20)
    {
      return v20;
    }

    v20 = sub_2297B1878(a1);
    if (v20)
    {
      return v20;
    }

    result = [v2 mediaSystems];
    if (result)
    {
      v21 = result;
      sub_229562F68(0, &qword_27D880220, off_278666288);
      v22 = sub_22A4DD83C();

      if (v22 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v24 = 0;
        v36 = v22 & 0xFFFFFFFFFFFFFF8;
        v37 = v22 & 0xC000000000000001;
        v34 = i;
        v35 = v22;
        while (1)
        {
          if (v37)
          {
            v25 = MEMORY[0x22AAD13F0](v24, v22);
          }

          else
          {
            if (v24 >= *(v36 + 16))
            {
              goto LABEL_32;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v26 = v25;
          v39 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v27 = [v25 messageTargetUUID];
          sub_22A4DB79C();

          LOBYTE(v27) = sub_22A4DB78C();
          v10(v8, v4);
          if (v27)
          {

            return v26;
          }

          v28 = [v26 settingsController];
          if (v28)
          {
            v38 = v26;
            v29 = v28;
            v2 = [v29 messageHandler];
            v30 = [v2 messageTargetUUID];
            sub_22A4DB79C();

            LOBYTE(v30) = sub_22A4DB78C();
            v10(v8, v4);
            if (v30)
            {

              v32 = v38;
LABEL_30:

              return v2;
            }

            v31 = sub_22A4DB77C();
            v32 = [v29 settingForUUID_];

            if (v32)
            {
              goto LABEL_30;
            }

            swift_unknownObjectRelease();
            i = v34;
            v22 = v35;
          }

          else
          {
          }

          ++v24;
          if (v39 == i)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_34:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2297B14B0(void (**a1)(char *, uint64_t))
{
  v25 = sub_22A4DB7DC();
  v3 = *(v25 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 triggers];
  if (!result)
  {
    goto LABEL_25;
  }

  v8 = result;
  sub_229562F68(0, &qword_27D8811E8, off_278666340);
  v9 = sub_22A4DD83C();

  if (v9 >> 62)
  {
    goto LABEL_23;
  }

  v26 = v9 & 0xFFFFFFFFFFFFFF8;
  v28 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = 0;
  v27 = v9 & 0xC000000000000001;
  v24 = (v3 + 8);
  while (1)
  {
    if (v28 == v10)
    {

      return 0;
    }

    if (v27)
    {
      v14 = MEMORY[0x22AAD13F0](v10, v9);
    }

    else
    {
      if (v10 >= *(v26 + 16))
      {
        goto LABEL_22;
      }

      v14 = *(v9 + 8 * v10 + 32);
    }

    v15 = v14;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v26 = v9 & 0xFFFFFFFFFFFFFF8;
      v28 = sub_22A4DE0EC();
      goto LABEL_4;
    }

    v16 = [v14 messageTargetUUID];
    sub_22A4DB79C();

    LOBYTE(v16) = sub_22A4DB78C();
    (*v24)(v6, v25);
    if (v16)
    {

      return v15;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      break;
    }

LABEL_5:
    v11 = [v15 actionSets];
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v12 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v13);
    *(&v24 - 2) = a1;
    v3 = sub_22968FFF0(sub_2297B1FF8, (&v24 - 4), v12);

    ++v10;
    if (v3)
    {

      return v3;
    }
  }

  v18 = v17;
  v19 = v15;
  result = [v18 events];
  if (result)
  {
    v20 = result;
    sub_229562F68(0, &qword_27D8811F0, off_278666128);
    v21 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v22);
    *(&v24 - 2) = a1;
    v23 = sub_22968FFF0(sub_2297B1FF8, (&v24 - 4), v21);

    if (v23)
    {

      return v23;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_2297B1878(void *a1)
{
  v2 = v1;
  v50 = sub_22A4DB7DC();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v8 = sub_22A4DD83C();

  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v10 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v48 = (v4 + 8);
    v44 = v8;
    v45 = i;
    while (1)
    {
      if (v47)
      {
        v12 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        if (v10 >= *(v46 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 uuid];
      v16 = v49;
      sub_22A4DB79C();

      v4 = sub_22A4DB78C();
      v17 = *v48;
      (*v48)(v16, v50);
      if (v4)
      {

        return v13;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = v13;
        v21 = a1;
        v22 = [v19 services];
        sub_229562F68(0, &unk_27D87D360, off_278666310);
        v23 = sub_22A4DD83C();

        MEMORY[0x28223BE20](v24);
        *(&v42 - 2) = v21;
        v25 = sub_22968FFF0(sub_2297B1FF8, (&v42 - 4), v23);

        if (v25)
        {

          return v25;
        }

        v4 = sub_229786B3C(v21);

        a1 = v21;
        v8 = v44;
        if (v4)
        {

LABEL_27:

          return v4;
        }
      }

      else
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v4 = v30;
          v31 = v13;
          v32 = [v4 settingsController];
          if (v32)
          {
            v43 = v31;
            v33 = a1;
            v34 = v32;
            v42 = [v34 messageHandler];
            v35 = [v42 messageTargetUUID];
            v36 = v49;
            sub_22A4DB79C();

            LOBYTE(v35) = sub_22A4DB78C();
            v17(v36, v50);
            if (v35)
            {

              v40 = v43;

              return v42;
            }

            v37 = v33;
            v38 = sub_22A4DB77C();
            v4 = [v34 settingForUUID_];

            v39 = v43;
            if (v4)
            {

              return v42;
            }

            swift_unknownObjectRelease();
            a1 = v37;
            v8 = v44;
          }

          else
          {
          }
        }
      }

      v26 = [v13 accessoryProfiles];
      if (v26)
      {
        v27 = v26;
        sub_229562F68(0, &qword_27D87D950, off_278665FF0);
        v28 = sub_22A4DD83C();

        MEMORY[0x28223BE20](v29);
        *(&v42 - 2) = a1;
        v4 = sub_22968FFF0(sub_2297B1FF8, (&v42 - 4), v28);

        v11 = v45;
        if (v4)
        {
          goto LABEL_27;
        }
      }

      else
      {

        v11 = v45;
      }

      ++v10;
      if (v14 == v11)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  return 0;
}

uint64_t sub_2297B1EEC(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 messageTargetUUID];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_2297B2038(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v52 = *(v5 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = v50 - v9;
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v50 - v16;
  v59 = v4;
  sub_229541CB0(v4, &off_283CE4F78);
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_229538000, v18, v19, "Registering for add current accessory notifications", v20, 2u);
    MEMORY[0x22AAD4E50](v20, -1, -1);
  }

  v21 = *(v11 + 8);
  v21(v17, v10);
  v22 = v2[2];
  v56 = sub_22A4DDE5C();
  sub_229541CB0(v59, &off_283CE4F78);
  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCCC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_229538000, v23, v24, "Registering for remove current accessory notifications", v25, 2u);
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  v21(v15, v10);
  v54 = sub_22A4DDE5C();
  v26 = sub_22A4DD9DC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v57;
  v50[1] = v27 + 56;
  v51 = v28;
  v28(v57, 1, 1, v26);
  v30 = swift_allocObject();
  swift_weakInit();
  v55 = a1;
  v31 = v58;
  sub_2295FE8C0(a1, v58);
  v32 = (*(v52 + 80) + 48) & ~*(v52 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v56;
  v34[5] = v30;
  sub_2295FE930(v31, v34 + v32);
  *(v34 + v33) = v59;

  v35 = sub_22957F3C0(0, 0, v29, &unk_22A5833D0, v34);
  swift_beginAccess();
  v36 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_22958A8B4(0, v36[2] + 1, 1, v36);
    v2[3] = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_22958A8B4((v38 > 1), v39 + 1, 1, v36);
  }

  v36[2] = v39 + 1;
  v36[v39 + 4] = v35;
  v2[3] = v36;
  swift_endAccess();
  v40 = v57;
  v51(v57, 1, 1, v26);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v58;
  sub_2295FE8C0(v55, v58);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v54;
  v43[5] = v41;
  sub_2295FE930(v42, v43 + v32);
  *(v43 + v33) = v59;

  v44 = sub_22957F3C0(0, 0, v40, &unk_22A5833E0, v43);
  swift_beginAccess();
  v45 = v2[3];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v45;
  if ((v46 & 1) == 0)
  {
    v45 = sub_22958A8B4(0, v45[2] + 1, 1, v45);
    v2[3] = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    v45 = sub_22958A8B4((v47 > 1), v48 + 1, 1, v45);
  }

  v45[2] = v48 + 1;
  v45[v48 + 4] = v44;
  v2[3] = v45;
  swift_endAccess();
}

uint64_t sub_2297B2698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B2858, 0, 0);
}

uint64_t sub_2297B2858()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];

  sub_22A4DDE3C();
  swift_beginAccess();
  v4 = sub_2295F39B0();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_2297B292C;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_2297B292C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2295FED88;
  }

  else
  {
    v3 = sub_2297B2A40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297B2A5C()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[17];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v24);
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = v0[25];
  sub_229541CB0(v0[19], &off_283CE4F78);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Received NSNotification.Name.HMDHomeManagerDidAddCurrentAccessory", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v31 = v0[20];
  v32 = v0[26];
  v16 = v0[18];

  (*(v12 + 8))(v10, v11);
  v0[5] = v15;
  v0[6] = &off_283CE4F90;
  v0[2] = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) + 28);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v14 + 8))(v13, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v32);
  v18 = sub_2295F39B0();
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_2297B292C;
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];

  return MEMORY[0x282200308](v22, v23, v18);
}

uint64_t sub_2297B2D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B2F28, 0, 0);
}

uint64_t sub_2297B2F28()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];

  sub_22A4DDE3C();
  swift_beginAccess();
  v4 = sub_2295F39B0();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_2297B2FFC;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_2297B2FFC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2295FE7D4;
  }

  else
  {
    v3 = sub_2297B3110;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297B312C()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[17];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v24);
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = v0[25];
  sub_229541CB0(v0[19], &off_283CE4F78);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Received NSNotification.Name.HMDHomeManagerDidRemoveCurrentAccessory", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v31 = v0[20];
  v32 = v0[26];
  v16 = v0[18];

  (*(v12 + 8))(v10, v11);
  v0[5] = v15;
  v0[6] = &off_283CE4F90;
  v0[2] = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) + 28);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v14 + 8))(v13, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v32);
  v18 = sub_2295F39B0();
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_2297B2FFC;
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];

  return MEMORY[0x282200308](v22, v23, v18);
}

BOOL sub_2297B3438(void *a1)
{
  v1 = [a1 currentAccessory];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_2297B34BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2297B2698(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2297B3600(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2297B2D68(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2297B3744()
{
  if ([v0 discoveryController])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for DiscoveryController(0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_229609094(v5);
    return 0;
  }
}

id sub_2297B37F8()
{
  v1 = [v0 lock];
  [v1 lock];

  if ([v0 delayedHomeManagerStorage])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_229543C5C(v6, v7);
    sub_229543C5C(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2C0, &unk_22A583410);
LABEL_5:
    swift_dynamicCast();
    v4 = [v0 lock];
    [v4 unlock];

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2C0, &unk_22A583410);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = 0;
  [v0 setDelayedHomeManagerStorage_];

  result = [v0 delayedHomeManagerStorage];
  if (result)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_229543C5C(v6, v7);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static MainDriverUtilities.mainDriver(_:finishDelayedHomeManager:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_0(a2, v6);

  return sub_2297B3F04(v5, v7, v2, v4, v6);
}

uint64_t sub_2297B3A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_2297B3A40, 0, 0);
}

uint64_t sub_2297B3A40()
{
  v1 = v0[13];
  sub_2295404B0(v0[12], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401C00, off_278666240);
  swift_dynamicCast();
  v2 = v0[10];
  v3 = sub_2297B37F8();
  v0[14] = v3;

  sub_2295404B0(v1, (v0 + 6));
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  swift_dynamicCast();
  v0[15] = v0[11];

  return MEMORY[0x2822009F8](sub_2297B3B54, v3, 0);
}

uint64_t sub_2297B3B54()
{
  v1 = *(v0 + 120);
  sub_2297B3D70(v1);

  v2 = *(v0 + 8);

  return v2();
}

id MainDriverUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MainDriverUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainDriverUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MainDriverUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainDriverUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2297B3D70(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D428, &qword_22A5785A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = *(v2 + 120);
  *(v2 + 120) = a1;
  v10 = a1;

  v11 = *(v2 + 112);
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = 0;
    while (v14 < *(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14++, v4);
      v17[1] = v10;
      v15 = v10;
      sub_22A4DD8FC();
      result = (*(v5 + 8))(v8, v4);
      if (v12 == v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v16 = *(v2 + 112);
    *(v2 + 112) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2297B3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - v11;
  v21[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v20[3] = a5;
  v14 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 16))(v14, a2, a5);
  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_2295404B0(v21, v19);
  sub_2295404B0(v20, v18);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_229543C5C(v19, (v16 + 32));
  sub_229543C5C(v18, (v16 + 64));
  sub_22957F3C0(0, 0, v12, &unk_22A583428, v16);

  __swift_destroy_boxed_opaque_existential_0(v21);
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_2297B40F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2297B3A20(a1, v4, v5, v1 + 32, v1 + 64);
}

BOOL static HasAliroAccessory.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t sub_2297B4244(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2297B7550(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_2297B7550(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[4];
  v7 = a2[5];

  return sub_2297B7550(v4, v5, v6, v7);
}

uint64_t sub_2297B42B4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_2297B7550(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_2297B7550(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_2297B7550(v4, v5, v8, v9);
}

uint64_t sub_2297B4364(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 1035) = a5;
  *(v5 + 1034) = a4;
  *(v5 + 616) = a3;
  *(v5 + 608) = a2;
  *(v5 + 600) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 640) = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  *(v5 + 648) = v9;
  v10 = *(v9 - 8);
  *(v5 + 656) = v10;
  *(v5 + 664) = *(v10 + 64);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();
  *(v5 + 688) = swift_task_alloc();
  *(v5 + 696) = swift_task_alloc();
  *(v5 + 704) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881200, &qword_22A5837A8);
  *(v5 + 712) = v11;
  v12 = *(v11 - 8);
  *(v5 + 720) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 728) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881208, qword_22A5837B0);
  *(v5 + 736) = v14;
  v15 = *(v14 - 8);
  *(v5 + 744) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 752) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B45A4, 0, 0);
}

uint64_t sub_2297B45A4()
{
  v1 = [*(v0 + 608) walletKeyManager];
  *(v0 + 760) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 752);
    v4 = *(v0 + 744);
    v5 = *(v0 + 736);
    v6 = sub_22A4DBCDC();
    *(v0 + 768) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 568;
    *(v0 + 24) = sub_2297B4794;
    swift_continuation_init();
    *(v0 + 328) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_2297B6744;
    *(v0 + 296) = &block_descriptor_36;
    [v2 fetchWalletKeyColorOptionWithFlow:v6 completion:?];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2297B4794()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297B4874, 0, 0);
}

uint64_t sub_2297B4874()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v0 + 72;
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[89];
  v9 = v1[76];
  v1[97] = v1[71];

  v10 = [v9 nfcReaderKeyManager];
  v1[98] = v10;
  v11 = sub_22A4DBCDC();
  v1[99] = v11;
  v1[10] = v1;
  v1[15] = v3;
  v1[11] = sub_2297B4A98;
  swift_continuation_init();
  v1[49] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 46);
  sub_229562F68(0, &unk_281401948, off_2786661E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v1[42] = MEMORY[0x277D85DD0];
  v1[43] = 1107296256;
  v1[44] = sub_2297B67A4;
  v1[45] = &block_descriptor_40_0;
  [v10 fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:0 flow:v11 completion:?];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2297B4A98()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 800) = v2;
  if (v2)
  {
    v3 = sub_2297B64E4;
  }

  else
  {
    v3 = sub_2297B4BA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297B4BA8()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 704);
  v4 = *(v0 + 608);
  v5 = *(v0 + 576);
  *(v0 + 808) = v5;

  v6 = [v5 publicKeyExternalRepresentation];
  v7 = sub_22A4DB62C();
  v9 = v8;

  *(v0 + 816) = v7;
  *(v0 + 824) = v9;
  v10 = [v5 identifier];
  v11 = sub_22A4DB62C();
  v13 = v12;

  *(v0 + 832) = v11;
  *(v0 + 840) = v13;
  v14 = objc_opt_self();
  v15 = [v5 publicKey];
  v16 = sub_22A4DB62C();
  v18 = v17;

  v19 = sub_22A4DB61C();
  sub_2295798D4(v16, v18);
  v20 = [v14 identifier16BytesForKey_];

  v21 = sub_22A4DB62C();
  v23 = v22;

  *(v0 + 848) = v21;
  *(v0 + 856) = v23;
  v24 = [v4 spiClientIdentifier];
  sub_22A4DB79C();

  v25 = [objc_opt_self() sharedRegistry];
  v26 = HMDBulletinBundleIdentifier();
  if (v26)
  {
    v27 = v26;
    v28 = [v25 applicationInfoForBundleIdentifier_];
    *(v0 + 864) = v28;

    if (v28)
    {
    }

    v29 = [objc_opt_self() sharedBulletinBoard];
    *(v0 + 872) = v29;
    if (v29)
    {
      v30 = v29;
      v31 = (v0 + 208);
      v32 = *(v0 + 640);
      v33 = *(v0 + 632);
      v34 = *(v0 + 624);
      *(v0 + 208) = v0;
      *(v0 + 248) = v0 + 1032;
      *(v0 + 216) = sub_2297B507C;
      swift_continuation_init();
      *(v0 + 520) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
      sub_22A4DD8DC();
      (*(v33 + 32))(boxed_opaque_existential_1, v32, v34);
      *(v0 + 464) = MEMORY[0x277D85DD0];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_229862C18;
      *(v0 + 488) = &block_descriptor_49_0;
      [v30 fetchAreUserNotificationsEnabledWithCompletion_];
      (*(v33 + 8))(boxed_opaque_existential_1, v34);
    }

    else
    {
      v31 = (v0 + 144);
      *(v0 + 1036) = 0;
      v36 = *(v0 + 640);
      v37 = *(v0 + 632);
      v38 = *(v0 + 624);
      v39 = [objc_allocWithZone(HMDHomeWalletDataSource) init];
      *(v0 + 880) = v39;
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 1033;
      *(v0 + 152) = sub_2297B5330;
      swift_continuation_init();
      *(v0 + 456) = v38;
      v40 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
      sub_22A4DD8DC();
      (*(v37 + 32))(v40, v36, v38);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_229862C18;
      *(v0 + 424) = &block_descriptor_43_0;
      [v39 canNotifyAboutExpressModeWithCompletion_];
      (*(v37 + 8))(v40, v38);
    }

    v26 = v31;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v26);
}

uint64_t sub_2297B507C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297B515C, 0, 0);
}

uint64_t sub_2297B515C()
{
  v1 = *(v0 + 1032);

  *(v0 + 1036) = v1;
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = [objc_allocWithZone(HMDHomeWalletDataSource) init];
  *(v0 + 880) = v5;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 1033;
  *(v0 + 152) = sub_2297B5330;
  swift_continuation_init();
  *(v0 + 456) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  sub_22A4DD8DC();
  (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
  *(v0 + 400) = MEMORY[0x277D85DD0];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_229862C18;
  *(v0 + 424) = &block_descriptor_43_0;
  [v5 canNotifyAboutExpressModeWithCompletion_];
  (*(v3 + 8))(boxed_opaque_existential_1, v4);

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_2297B5330()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297B5410, 0, 0);
}

id sub_2297B5410()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 608);
  *(v0 + 1037) = *(v0 + 1033);

  *(v0 + 1038) = [v2 isOwnerUser];
  v3 = [v2 currentUser];
  *(v0 + 888) = v3;
  if (v3)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 608);
    v6 = [v3 uuid];
    sub_22A4DB79C();

    result = [v5 walletKeyManager];
    if (result)
    {
      v8 = result;
      v9 = [result shouldRollWalletKeyAfterMigration];

      if (!v9)
      {
        v11 = 2;
        goto LABEL_10;
      }

      result = [*(v0 + 608) walletKeyManager];
      if (result)
      {
        v10 = result;
        v11 = [result shouldEnableExpressModeAfterMigration];

LABEL_10:
        *(v0 + 1039) = v11;
        v29 = [*(v0 + 608) homeManager];
        if (v29)
        {
          v30 = *(v0 + 648);
          v31 = v29;
          v32 = [v29 homeUUIDsWithAutoAddWalletKeySuppressed];

          sub_2295EF000();
          v33 = sub_22A4DDB6C();
        }

        else
        {
          v33 = 0;
        }

        *(v0 + 896) = v33;
        v34 = [objc_opt_self() sharedManager];
        *(v0 + 1040) = [v34 isLostOrNeedsExitAuth];

        v35 = [objc_opt_self() systemStore];
        *(v0 + 904) = [v35 getPreferredHH2ControllerKey];

        if (qword_281402D28 != -1)
        {
          swift_once();
        }

        v36 = *(v0 + 688);
        v37 = [*(v0 + 608) uuid];
        sub_22A4DB79C();

        v38 = swift_task_alloc();
        *(v0 + 912) = v38;
        *v38 = v0;
        v38[1] = sub_2297B5840;
        v39 = *(v0 + 688);

        return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 528, v39);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v42 = *(v0 + 848);
  v43 = *(v0 + 856);
  v12 = *(v0 + 840);
  v13 = *(v0 + 832);
  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v16 = *(v0 + 808);
  v17 = *(v0 + 776);
  v18 = *(v0 + 656);
  v40 = *(v0 + 648);
  v41 = *(v0 + 704);
  sub_2297B8424();
  swift_allocError();
  *v19 = xmmword_22A583430;
  swift_willThrow();

  sub_2295798D4(v15, v14);
  sub_2295798D4(v13, v12);
  sub_2295798D4(v42, v43);
  (*(v18 + 8))(v41, v40);
  v20 = *(v0 + 752);
  v21 = *(v0 + 728);
  v22 = *(v0 + 704);
  v23 = *(v0 + 696);
  v24 = *(v0 + 688);
  v25 = *(v0 + 680);
  v26 = *(v0 + 672);
  v27 = *(v0 + 640);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2297B5840()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v16 = *v1;
  *(v2 + 920) = v0;
  v4 = *(v2 + 544);
  *(v2 + 928) = *(v2 + 528);
  *(v2 + 944) = v4;

  if (v0)
  {
    v5 = *(v2 + 896);
    v6 = *(v2 + 688);
    v7 = *(v2 + 656);
    v8 = *(v2 + 648);
    v9 = *(v7 + 8);
    *(v2 + 1016) = v9;
    *(v2 + 1024) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);

    v10 = sub_2297B65DC;
  }

  else
  {
    v11 = *(v2 + 688);
    v12 = *(v2 + 656);
    v13 = *(v2 + 648);
    v14 = *(v12 + 8);
    *(v2 + 960) = v14;
    *(v2 + 968) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v13);
    v10 = sub_2297B59C0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2297B59C0()
{
  v1 = *(v0 + 608);
  v2 = [v1 hasAnyAccessoryWithUnifiedAccessWalletKeySupport];
  v3 = [v1 hasAnyAccessoryWithAliroNFCSupport];
  v4 = [v1 hasAnyAccessoryWithAliroUWBSupport];
  v5 = [v1 hasAnyAccessoryWithWalletKeyAndAccessCodeSupport];
  v6 = [objc_opt_self() sharedConnection];
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = v6;
  v15 = *(v0 + 920);
  v16 = *(v0 + 608);
  v17 = [v6 isPasscodeSet];

  v104 = [v16 backingStore];
  *(v0 + 592) = v104;
  v68 = sub_229562F68(0, &unk_281401B80, off_278666058);
  sub_22A4DBD4C();
  v107 = *(v0 + 928);
  v108 = *(v0 + 936);
  v106 = *(v0 + 904);
  if (!v15)
  {
    if (v3)
    {
      v37 = 0;
    }

    else
    {
      v37 = 2;
    }

    v102 = *(v0 + 944);
    v103 = *(v0 + 952);
    if (v4)
    {
      v37 = 1;
    }

    v100 = v37;
    v98 = *(v0 + 1040);
    v82 = *(v0 + 896);
    v80 = *(v0 + 1038);
    v81 = *(v0 + 1039);
    v83 = *(v0 + 1037);
    v79 = *(v0 + 1036);
    v94 = v2;
    v38 = *(v0 + 864);
    v88 = *(v0 + 840);
    v89 = *(v0 + 848);
    v85 = *(v0 + 824);
    v86 = *(v0 + 832);
    v84 = *(v0 + 816);
    v90 = *(v0 + 776);
    v92 = *(v0 + 856);
    v96 = v17;
    v39 = *(v0 + 704);
    v40 = *(v0 + 696);
    v41 = *(v0 + 680);
    v42 = *(v0 + 672);
    v72 = *(v0 + 664);
    v74 = v42;
    v43 = *(v0 + 656);
    v87 = v5;
    v44 = *(v0 + 648);
    v76 = *(v0 + 1034);
    v77 = *(v0 + 1035);
    v75 = *(v0 + 616);
    v45 = *(v0 + 608);
    v69 = v41;
    v70 = v45;

    v78 = v38 != 0;
    v46 = *(v0 + 584);
    v105 = [v46 context];
    *(v0 + 976) = v105;

    v47 = *(v43 + 16);
    v47(v41, v40, v44);
    v47(v42, v39, v44);
    v48 = *(v43 + 80);
    v49 = (v48 + 24) & ~v48;
    v50 = (v49 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 19) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v48 + v51 + 10) & ~v48;
    v53 = (v52 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v53 + 75) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v0 + 984) = v54;
    *(v54 + 16) = v45;
    v55 = *(v43 + 32);
    v55(v54 + v49, v69, v44);
    v56 = v54 + v50;
    *v56 = v82;
    *(v56 + 8) = v81;
    *(v56 + 9) = v80;
    *(v56 + 10) = v79;
    *(v56 + 11) = v83;
    v57 = v54 + v51;
    *v57 = v75;
    *(v57 + 8) = v76 & 1;
    *(v57 + 9) = v77;
    v55(v54 + v52, v74, v44);
    v58 = v54 + v53;
    *v58 = v84;
    *(v58 + 8) = v85;
    *(v58 + 16) = v86;
    *(v58 + 24) = v88;
    *(v58 + 32) = v89;
    *(v58 + 40) = v92;
    *(v58 + 48) = v78;
    *(v58 + 49) = v98;
    v59 = v54 + ((v53 + 57) & 0xFFFFFFFFFFFFFFF8);
    *v59 = v90;
    *(v59 + 8) = v94;
    *(v59 + 9) = v100;
    *(v59 + 10) = v87;
    *(v54 + v73) = v106;
    v60 = (v54 + v71);
    *v60 = v107;
    v60[1] = v108;
    v61 = v54 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v61 = v102;
    *(v61 + 8) = v103;
    *(v61 + 16) = v96;
    v62 = v70;
    sub_22956C148(v84, v85);
    sub_22956C148(v86, v88);
    sub_22956C148(v89, v92);
    v63 = v90;
    v64 = v106;
    sub_2295AEF1C(v107, v108);
    v65 = swift_task_alloc();
    *(v0 + 992) = v65;
    v65[2] = v105;
    v65[3] = sub_2297B8478;
    v65[4] = v54;
    v66 = *(MEMORY[0x277D85A40] + 4);
    v67 = swift_task_alloc();
    *(v0 + 1000) = v67;
    v13 = type metadata accessor for HomePassState(0);
    *v67 = v0;
    v67[1] = sub_2297B6080;
    v6 = *(v0 + 600);
    v11 = sub_2297B8604;
    v10 = 0x800000022A58A7E0;
    v7 = 0;
    v8 = 0;
    v9 = 0xD000000000000016;
    v12 = v65;

    return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  v21 = *(v0 + 896);
  v22 = *(v0 + 888);
  v99 = *(v0 + 856);
  v93 = *(v0 + 840);
  v95 = *(v0 + 848);
  v91 = *(v0 + 832);
  v23 = *(v0 + 824);
  v24 = *(v0 + 816);
  v25 = *(v0 + 776);
  v101 = *(v0 + 704);
  v97 = *(v0 + 696);
  v26 = *(v0 + 648);

  sub_229590D18(v107, v108);

  sub_2295798D4(v24, v23);
  sub_2295798D4(v91, v93);
  sub_2295798D4(v95, v99);

  v19(v97, v26);
  v19(v101, v26);
  v27 = *(v0 + 752);
  v28 = *(v0 + 728);
  v29 = *(v0 + 704);
  v30 = *(v0 + 696);
  v31 = *(v0 + 688);
  v32 = *(v0 + 680);
  v33 = *(v0 + 672);
  v34 = *(v0 + 640);

  v35 = *(v0 + 8);

  return v35();
}