uint64_t sub_2457C2F28()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2459107E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245910814();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_2457809BC();
    v14 = sub_245911034();
    aBlock[4] = sub_2457C5144;
    aBlock[5] = v13;
    v22 = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_52;
    v15 = _Block_copy(aBlock);

    sub_245910804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24579FE68(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    sub_2459113A4();
    v16 = v22;
    MEMORY[0x245D76690](0, v11, v7, v15);
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2458CC378(0xD00000000000001CLL, 0x80000002459263C0, aBlock);
      _os_log_impl(&dword_245767000, v18, v19, "self doesn't exist inside %s's showHSA2Alert closure. Exiting...", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245D77B40](v21, -1, -1);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

void sub_2457C3354(uint64_t a1)
{
  v1 = *(a1 + 64);

  v2 = [v1 navigationController];
  sub_24586CA74();
}

void sub_2457C33D0()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  sub_24590C714();
  v17 = sub_24590F344();
  v18 = sub_245910F54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v2;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245767000, v17, v18, "Checking if the account is in good standing, before proceeding to the next UI", v20, 2u);
    v21 = v20;
    v2 = v19;
    MEMORY[0x245D77B40](v21, -1, -1);
  }

  v22 = *(v3 + 8);
  v22(v16, v2);
  v23 = *(*(v1 + 24) + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPreFetchLivenessConfig);
  if (v23 == 2 || (v23 & 1) == 0)
  {
    sub_24590C714();
    v24 = sub_24590F344();
    v25 = sub_245910F54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v22;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_245767000, v24, v25, "Did not prefetch liveness config, initiating a new one", v27, 2u);
      v28 = v27;
      v22 = v26;
      MEMORY[0x245D77B40](v28, -1, -1);
    }

    v22(v14, v2);

    sub_24587E49C();
  }

  v29 = sub_2457C4B94();
  v30 = v29;
  if (v31)
  {
    sub_24590C714();
    v32 = v30;
    v33 = sub_24590F344();
    v34 = sub_245910F54();
    sub_2457C5040(v30, 1);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v54 = v22;
      v36 = v35;
      v37 = swift_slowAlloc();
      v55 = v2;
      v38 = v37;
      v57 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v39 = sub_2459117D4();
      v41 = sub_2458CC378(v39, v40, &v57);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_245767000, v33, v34, "received an error from the account verification request %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v42 = v38;
      v2 = v55;
      MEMORY[0x245D77B40](v42, -1, -1);
      v43 = v36;
      v22 = v54;
      MEMORY[0x245D77B40](v43, -1, -1);
    }

    v22(v8, v2);
    v44 = *(v1 + 64);
    if (v44)
    {

      v45 = v44;
      sub_24586D6DC(v45);

      v46 = v56;
      sub_24590C714();
      sub_24590C724();
      sub_2457C5040(v30, 1);
      v22(v46, v2);
      return;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (v29)
  {
    v47 = *(v1 + 64);
    if (v47)
    {
      v48 = swift_allocObject();
      swift_weakInit();
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = sub_2457C504C;
      v49[4] = v1;
      swift_retain_n();

      v50 = v47;

      sub_24586DE3C(v50, sub_2457C5098, v49);

      return;
    }

    goto LABEL_21;
  }

  sub_24590C714();
  v51 = sub_24590F344();
  v52 = sub_245910F54();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_245767000, v51, v52, "Account in good standing navigate to next view", v53, 2u);
    MEMORY[0x245D77B40](v53, -1, -1);
  }

  v22(v11, v2);
  sub_2457C2AB4();
  sub_2457C5040(v30, 0);
}

uint64_t sub_2457C3984(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a1)
    {
      v38 = a4;
      v40 = v8;
      v41 = v7;
      v19 = a1;
      sub_24590C714();
      v20 = a1;
      v21 = sub_24590F344();
      v22 = sub_245910F54();

      v23 = os_log_type_enabled(v21, v22);
      v39 = a3;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42 = v25;
        *v24 = 136315138;
        swift_getErrorValue();
        v26 = sub_2459117D4();
        v28 = sub_2458CC378(v26, v27, &v42);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_245767000, v21, v22, "received an error from the hsa2 upgrade flow %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x245D77B40](v25, -1, -1);
        MEMORY[0x245D77B40](v24, -1, -1);
      }

      v29 = v41;
      v30 = *(v40 + 8);
      result = v30(v16, v41);
      v32 = *(v18 + 64);
      if (!v32)
      {
        __break(1u);
        return result;
      }

      v33 = v32;
      sub_24586D6DC(v33);

      sub_24590C714();
      sub_24590C724();
      v30(v14, v29);
      v39(0);
    }

    else
    {
      a3(1);
    }
  }

  else
  {
    sub_24590C714();
    v34 = sub_24590F344();
    v35 = sub_245910F54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2458CC378(0xD00000000000001ALL, 0x8000000245926340, &v42);
      _os_log_impl(&dword_245767000, v34, v35, "self doesn't exist inside %s's showHSA2Alert closure. Exiting...", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x245D77B40](v37, -1, -1);
      MEMORY[0x245D77B40](v36, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

id sub_2457C3D60()
{
  v1 = v0;
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2459109B4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE32B38;
  sub_24590C224();
  sub_245910A54();
  if ((*(*(v0 + 24) + 144) & 2) != 0)
  {

    sub_245910944();
    v6 = v4;
    sub_24590C224();
    v7 = v6;
    sub_245910A54();
    sub_245910944();
    sub_24590C224();
    sub_245910A54();
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v9 = sub_2458935F0();
  v11 = v10;

  v12 = *(v0 + 16);
  v13 = sub_24590D5E4();
  v15 = v14;

  if (v15)
  {

    sub_24586C880(v13, v15);
  }

  v16 = *(v1 + 16);
  v17 = sub_24590D634();
  v19 = v18;

  if (v19)
  {

    sub_24586C880(v17, v19);
  }

  v20 = sub_24590C144();
  v21 = sub_2459109C4();

  v22 = sub_2459109C4();

  v23 = sub_2459109C4();

  if (v5)
  {
    v24 = sub_2459109C4();
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(IdentityHeroViewControllerWrapper) initWithImageData:v20 title:v21 subtitle:v22 primaryButtonTitle:v23 secondaryButtonTitle:v24];

  sub_24578FC28(v9, v11);
  v36 = sub_2457C4B84;
  v37 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2458935A8;
  v35 = &block_descriptor_36;
  v26 = _Block_copy(&aBlock);

  v36 = sub_2457C4B8C;
  v37 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2458935A8;
  v35 = &block_descriptor_39;
  v27 = _Block_copy(&aBlock);

  v28 = [v25 identityHeroViewController:v26 secondaryButtonClicked:v27];

  _Block_release(v27);
  _Block_release(v26);
  v29 = *(v1 + 64);
  *(v1 + 64) = v28;
  v30 = v28;

  return v30;
}

void sub_2457C42D0(uint64_t a1)
{
  if ((~*(*(a1 + 24) + 144) & 3) == 0)
  {
    v1 = sub_24590E3B4();
    v3 = 0x6E41656E6F685069;
    v4 = 0xEE00686374615764;
LABEL_5:
    sub_2457C27CC(v1, v2, v3, v4);

    goto LABEL_6;
  }

  if (*(*(a1 + 24) + 144))
  {
    v1 = sub_24590E3B4();
    v4 = 0x8000000245926320;
    v3 = 0xD00000000000001BLL;
    goto LABEL_5;
  }

LABEL_6:
  sub_2457C33D0();
}

void sub_2457C4364(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 144);
  if ((v2 & 2) != 0)
  {
    *(v1 + 144) = v2 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v3 = sub_24590E3B4();
  sub_2457C27CC(v3, v4, 0xD000000000000018, 0x8000000245926300);

  sub_2457C33D0();
}

void sub_2457C43C8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24590C234();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2459109B4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24590C8C4();
  swift_allocObject();
  sub_24590C8B4();
  v5 = sub_24590C8A4();
  v7 = v6;

  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v8 = qword_27EE32B38;
  sub_24590C224();
  v9 = v8;
  sub_245910A54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29398);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_245916930;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2457BA078();
  *(v10 + 64) = v11;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;

  v12 = sub_245910A24();
  v29 = v13;
  v30 = v12;

  sub_245910944();
  sub_24590C224();
  sub_245910A54();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_245916930;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = v11;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;

  v28 = sub_245910A24();

  sub_245910944();
  sub_24590C224();
  sub_245910A54();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_245916930;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v11;
  *(v15 + 32) = v5;
  *(v15 + 40) = v7;
  sub_245910A24();

  sub_245910944();
  sub_24590C224();
  sub_245910A54();
  v16 = sub_2459109C4();

  v17 = sub_2459109C4();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:{1, v28, v29, v30, "preferencesURLOpener"}];

  v19 = swift_allocObject();
  v19[2] = v31;
  v19[3] = a2;
  v19[4] = a3;

  v20 = sub_2459109C4();

  v39 = sub_2457C4B38;
  v40 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_245823208;
  v38 = &block_descriptor_11;
  v21 = _Block_copy(&aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;

  v25 = sub_2459109C4();

  v39 = sub_2457C4B5C;
  v40 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_245823208;
  v38 = &block_descriptor_33;
  v26 = _Block_copy(&aBlock);

  v27 = [v22 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v18 addAction_];
  [v18 addAction_];
  [a1 presentViewController:v18 animated:1 completion:0];
}

uint64_t sub_2457C4A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2457ACB24(a2 + 80, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24590D304();
  v4 = __swift_destroy_boxed_opaque_existential_1(v6);
  return a3(v4);
}

uint64_t sub_2457C4A88()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  return v0;
}

uint64_t sub_2457C4AE0()
{
  sub_2457C4A88();

  return swift_deallocClassInstance();
}

uint64_t sub_2457C4B94()
{
  v0 = sub_24590F354();
  v6[2] = *(v0 - 8);
  v6[3] = v0;
  MEMORY[0x28223BE20](v0);
  v6[1] = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24590EA74();
  MEMORY[0x28223BE20](v2);
  v3 = sub_24590EA84();
  v6[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24590C954();
  sub_24590C944();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24590D6F4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return 0;
}

void sub_2457C5040(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2457C504C(uint64_t result)
{
  if (result)
  {
    return sub_2457C2AB4();
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_2457C50A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2457C5170(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2457C51B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2457C523C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + 24);
  v5 = a3();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v4)
  {
    if (!v6)
    {
      v5 = 0;
    }

    v4 = sub_24586C880(v5, v7);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_2457C52FC()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

void *sub_2457C543C()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_2457C5464(uint64_t a1, uint64_t a2)
{
  v3 = sub_24590D604();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if (a2)
  {
    if (!v4)
    {
      v3 = 0;
    }

    v6 = sub_24586C880(v3, v5);
    v8 = v7;

    if (v8)
    {
      sub_245778CE8();
      v6 = sub_245911314();
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

id sub_2457C5560()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for IDScanCameraReader();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_245916CE0;
  *(v1 + 32) = sub_245910A04();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_245910A04();
  *(v1 + 56) = v3;
  v4 = sub_245910C34();

  [v0 setOutputObjectTypes_];

  return [v0 setDelegate_];
}

uint64_t sub_2457C58A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = [a1 vertices];
  if (v10)
  {
    v11 = v10;
    v12 = sub_245910C44();

    v13 = sub_2457C5DA8(v12);

    if (v13)
    {
      v14 = [a1 targetVertices];
      if (v14)
      {
        v15 = v14;
        v16 = sub_245910C44();

        v17 = sub_2457C5DA8(v16);

        if (v17)
        {
          if (*(v13 + 16) == 4 && *(v17 + 16) == 4)
          {
            v41 = v17;
            v18 = 0;
            v19 = MEMORY[0x277D84F90];
            do
            {

              v20 = sub_2459109C4();

              v21 = CGPointFromString(v20);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_24580A4D8(0, *(v19 + 2) + 1, 1, v19);
              }

              v23 = *(v19 + 2);
              v22 = *(v19 + 3);
              if (v23 >= v22 >> 1)
              {
                v19 = sub_24580A4D8((v22 > 1), v23 + 1, 1, v19);
              }

              *(v19 + 2) = v23 + 1;
              *&v19[16 * v23 + 32] = v21;
              v18 += 16;
            }

            while (v18 != 64);

            v33 = *(v41 + 16);
            if (v33)
            {
              v34 = v41 + 40;
              v35 = MEMORY[0x277D84F90];
              do
              {

                v36 = sub_2459109C4();

                v37 = CGPointFromString(v36);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v35 = sub_24580A4D8(0, *(v35 + 2) + 1, 1, v35);
                }

                v39 = *(v35 + 2);
                v38 = *(v35 + 3);
                if (v39 >= v38 >> 1)
                {
                  v35 = sub_24580A4D8((v38 > 1), v39 + 1, 1, v35);
                }

                *(v35 + 2) = v39 + 1;
                *&v35[16 * v39 + 32] = v37;
                v34 += 16;
                --v33;
              }

              while (v33);
            }

            goto LABEL_20;
          }
        }
      }
    }
  }

  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F64();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_245767000, v24, v25, "CoreRecognition did not return vertices", v26, 2u);
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  (*(v4 + 8))(v9, v3);
LABEL_20:
  v27 = [a1 capturePath];
  if (v27)
  {
    v28 = v27;
    sub_245910A04();
  }

  else
  {
    sub_24590C714();
    v29 = sub_24590F344();
    v30 = sub_245910F64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245767000, v29, v30, "CoreRecognition did not return a capture path", v31, 2u);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  v43 = 1;
  return sub_24590C444();
}

uint64_t sub_2457C5DA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_24577CCB4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2457816F0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24577CCB4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id sub_2457C5ED4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for IDScanCameraReader();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_2457C5F24(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_timer] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_fallBackTimeInSeconds] = 0x4024000000000000;
  v2 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_didCaptureImage];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_shouldReturnImage];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_detectIDCardCorners];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_onError];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a1)
  {
    v6 = sub_2459108E4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for IDScanCameraReader();
  v7 = objc_msgSendSuper2(&v9, sel_initWithOptions_, v6);

  return v7;
}

id sub_2457C6068(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_timer] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_fallBackTimeInSeconds] = 0x4024000000000000;
  v5 = &v3[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_didCaptureImage];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_shouldReturnImage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_detectIDCardCorners];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_onError];
  *v8 = 0;
  *(v8 + 1) = 0;
  if (a2)
  {
    v9 = sub_2459109C4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IDScanCameraReader();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_2457C61A4(void *a1)
{
  *&v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_timer] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_fallBackTimeInSeconds] = 0x4024000000000000;
  v3 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_didCaptureImage];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_shouldReturnImage];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_detectIDCardCorners];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_onError];
  v7 = type metadata accessor for IDScanCameraReader();
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_2457C6290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDScanCameraReader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2457C6374(void *a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v8 = a1;
  v9 = sub_24590F344();
  v10 = sub_245910F64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_2459117D4();
    v16 = sub_2458CC378(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_245767000, v9, v10, "Scanning failed with error %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D77B40](v13, -1, -1);
    v17 = v12;
    v2 = v20;
    MEMORY[0x245D77B40](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v18 = *&v2[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_onError];
  if (v18)
  {

    v18(a1);
    sub_245771C34(v18);
  }

  return [v2 cancel];
}

uint64_t sub_2457C6594(unint64_t a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_24590C454();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = sub_245911424();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_12;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x245D76B30](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(a1 + 32);
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 imageValue];
    if (v19)
    {
      v20 = v19;
      sub_2457C58A4(v18, v13);
      v21 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_didCaptureImage);
      if (v21)
      {

        v22 = [v18 unpaddedImageValue];
        v21(v20, v13, v22);

        sub_245771C34(v21);
      }

      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      sub_24590C714();
      v26 = sub_24590F344();
      v27 = sub_245910F64();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_245767000, v26, v27, "Unable to scan image", v28, 2u);
        MEMORY[0x245D77B40](v28, -1, -1);
      }

      return (*(v4 + 8))(v9, v3);
    }
  }

LABEL_12:
  sub_24590C714();
  v23 = sub_24590F344();
  v24 = sub_245910F64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_245767000, v23, v24, "CRCameraReader did not return an IDCard object", v25, 2u);
    MEMORY[0x245D77B40](v25, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_2457C6930(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v53 = a1;
  v3 = sub_24590C454();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  if ([v2 enableAltIDCardScan])
  {
    sub_24590C714();
    v20 = sub_24590F344();
    v21 = sub_245910F54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_245767000, v20, v21, "Time has elapsed, shouldReturnIDImage = YES", v22, 2u);
      MEMORY[0x245D77B40](v22, -1, -1);
    }

    (*(v8 + 8))(v19, v7);
    v23 = 1;
    return (v23 & 1);
  }

  v52 = v7;
  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F54();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v51 = v11;
    v27 = v14;
    v28 = v8;
    v29 = v2;
    v30 = v6;
    v31 = v4;
    v32 = v3;
    v33 = v26;
    *v26 = 0;
    _os_log_impl(&dword_245767000, v24, v25, "CameraReader found candidate to evaluate in shouldReturnIDImage", v26, 2u);
    v34 = v33;
    v3 = v32;
    v4 = v31;
    v6 = v30;
    v2 = v29;
    v8 = v28;
    v14 = v27;
    v11 = v51;
    MEMORY[0x245D77B40](v34, -1, -1);
  }

  v35 = *(v8 + 8);
  v35(v17, v52);
  result = [v53 imageValue];
  if (result)
  {
    v37 = result;
    v38 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];

    if (v38)
    {
      sub_2457C58A4(v53, v6);
      v39 = *&v2[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_shouldReturnImage];
      if (v39)
      {

        v23 = v39(v38, v6);
        sub_245771C34(v39);
      }

      else
      {
        v23 = 1;
      }

      sub_24590C714();
      v43 = sub_24590F344();
      v44 = sub_245910F54();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v53 = v35;
        v46 = v4;
        v47 = v3;
        v48 = v45;
        *v45 = 67240192;
        *(v45 + 4) = v23 & 1;
        _os_log_impl(&dword_245767000, v43, v44, "CameraReader shouldReturnImage = %{BOOL,public}d", v45, 8u);
        v49 = v48;
        v3 = v47;
        v4 = v46;
        v35 = v53;
        MEMORY[0x245D77B40](v49, -1, -1);
      }

      v35(v14, v52);
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      sub_24590C714();
      v40 = sub_24590F344();
      v41 = sub_245910F64();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_245767000, v40, v41, "Unable to convert candidate ID image to CIImage", v42, 2u);
        MEMORY[0x245D77B40](v42, -1, -1);
      }

      v35(v11, v52);
      v23 = 0;
    }

    return (v23 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2457C6E48(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v3 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_detectIDCardCorners);
  if (v3)
  {

    v4 = v3(v2);
    sub_245771C34(v3);
    if (*(v4 + 16) == 4)
    {
      v11 = MEMORY[0x277D84F90];
      sub_245911564();
      v5 = objc_opt_self();
      v6 = [v5 valueWithCGPoint_];
      sub_245911544();
      sub_245911574();
      sub_245911584();
      sub_245911554();
      v7 = [v5 valueWithCGPoint_];
      sub_245911544();
      sub_245911574();
      sub_245911584();
      sub_245911554();
      v8 = [v5 valueWithCGPoint_];
      sub_245911544();
      sub_245911574();
      sub_245911584();
      sub_245911554();
      v9 = [v5 valueWithCGPoint_];
      sub_245911544();
      sub_245911574();
      sub_245911584();
      sub_245911554();

      return v11;
    }
  }

  return 0;
}

uint64_t sub_2457C70BC()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

BOOL sub_2457C71F8()
{
  v0 = sub_24590D604();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0xE000000000000000;
  }

  sub_24586C880(v0, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_2457C727C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = sub_24586C880(v3, v5);

  return v6;
}

uint64_t sub_2457C7390()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDScanConfirmationViewController();
  v27.receiver = v0;
  v27.super_class = v6;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  sub_24579D5E0(0, &qword_27EE2B020);
  v7 = sub_24590D964();
  v8 = MEMORY[0x245D76600](v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(*&v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult] + 16);
  if (v9)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBF758]);
    v11 = v9;
    v12 = [v10 initWithImage_];
    if (v12)
    {
      v13 = v12;
      sub_2457C9750(v12);

LABEL_5:
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = &v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
      v16 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
      *v15 = sub_2457CBB58;
      v15[1] = v14;

      sub_245771C34(v16);

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = &v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
      v19 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
      *v18 = sub_2457CBB60;
      v18[1] = v17;

      sub_245771C34(v19);

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = &v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
      v22 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
      *v21 = sub_2457CBBA4;
      v21[1] = v20;

      sub_245771C34(v22);
    }
  }

  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F64();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_245767000, v24, v25, "Internal Setting Inject Front and Back ID Scan Images is turned on, but there was no image in the expected file path that could be injected", v26, 2u);
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2457C76B4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_24590E3B4();
    sub_24590E014();

    if (v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide])
    {
      sub_24590DF84();
      v2 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
      v3 = *(*&v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] + 168);
      if (v3)
      {
        v4 = v3;
        sub_24590DDB4();

        v5 = sub_24590CDE4();
        if (v5 != sub_24590CDE4())
        {
          v6 = *(*&v1[v2] + 168);
          if (v6)
          {
            v7 = v6;
            sub_24590DDB4();

            sub_24590CDA4();
          }
        }
      }
    }

    else
    {
      sub_24590DF94();
    }

    sub_24590E014();
    (*(**&v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper] + 96))();
    sub_24590E1B4();
    sub_24590E484();

    sub_245887AB8(v1, 0xD000000000000012, 0x8000000245926590, 0, 0, 0);
  }

  return result;
}

void sub_2457C7904(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v14 = a4;
    sub_24590E3B4();
    sub_24590E014();

    if (v6[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide])
    {
      sub_24590DF84();
      v7 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
      v8 = *(*&v6[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] + 168);
      if (v8)
      {
        v9 = v8;
        sub_24590DDB4();

        v10 = sub_24590CDE4();
        if (v10 != sub_24590CDE4())
        {
          v11 = *(*&v6[v7] + 168);
          if (v11)
          {
            v12 = v11;
            sub_24590DDB4();

            sub_24590CDA4();
          }
        }
      }
    }

    else
    {
      sub_24590DF94();
    }

    sub_24590E014();
    (*(**&v6[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper] + 96))();
    sub_24590E1B4();
    sub_24590E484();

    v14(v13);
  }
}

uint64_t sub_2457C7B84(char a1)
{
  v2 = v1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IDScanConfirmationViewController();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  sub_2457CB20C();
  sub_24590E3D4();
  sub_24590E014();

  if (v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide])
  {
    sub_24590DF84();
    v4 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
    v5 = *(*&v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] + 168);
    if (v5)
    {
      v6 = v5;
      sub_24590DDB4();

      v7 = sub_24590CDE4();
      if (v7 != sub_24590CDE4())
      {
        v8 = *(*&v2[v4] + 168);
        if (v8)
        {
          v9 = v8;
          sub_24590DDB4();

          sub_24590CDA4();
        }
      }
    }
  }

  else
  {
    sub_24590DF94();
  }

  sub_24590E014();
  (*(**&v2[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper] + 96))();
  sub_24590E1B4();
  sub_24590E484();
}

uint64_t sub_2457C7DD8(char a1)
{
  v2 = v1;
  v4 = sub_2459107E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245910814();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDScanConfirmationViewController();
  v19.receiver = v2;
  v19.super_class = v12;
  objc_msgSendSuper2(&v19, sel_viewDidDisappear_, a1 & 1);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v13 = sub_245911034();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  aBlock[4] = sub_2457CBB50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_146;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2457C80E0()
{
  v1 = v0;
  v2 = sub_24590C474();
  v174 = *(v2 - 8);
  v175 = v2;
  MEMORY[0x28223BE20](v2);
  v173 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  MEMORY[0x28223BE20](v4 - 8);
  v179 = &v153 - v5;
  v6 = sub_24590E9D4();
  v181 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v169 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v168 = &v153 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v176 = &v153 - v12;
  v172 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v153 - v14;
  v16 = sub_24590F354();
  v17 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v180 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v177 = &v153 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v171 = &v153 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v170 = &v153 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v153 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v153 - v29;
  sub_24590C714();
  v31 = sub_24590F344();
  v32 = sub_245910F54();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v17;
    v34 = v16;
    v35 = v15;
    v36 = v1;
    v37 = v28;
    v38 = v6;
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_245767000, v31, v32, "Continue button clicked", v39, 2u);
    v40 = v39;
    v6 = v38;
    v28 = v37;
    v1 = v36;
    v15 = v35;
    v16 = v34;
    v17 = v33;
    MEMORY[0x245D77B40](v40, -1, -1);
  }

  v43 = *(v17 + 8);
  v42 = (v17 + 8);
  v41 = v43;
  v43(v30, v16);
  v44 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult;
  v45 = *(*&v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult] + 16);
  if (!v45)
  {
    goto LABEL_9;
  }

  v178 = v16;
  v46 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v47 = v45;
  v48 = [v46 initWithImage_];
  if (!v48)
  {

    v16 = v178;
LABEL_9:
    v58 = v180;
    sub_24590C714();
    v59 = sub_24590F344();
    v60 = sub_245910F64();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_245767000, v59, v60, "Captured image does not exist", v61, 2u);
      MEMORY[0x245D77B40](v61, -1, -1);
    }

    v62 = v58;
    v63 = v16;
    return v41(v62, v63);
  }

  v49 = v48;
  v180 = v47;
  v50 = *&v1[v44];
  v51 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
  swift_beginAccess();
  v52 = v50 + v51;
  v53 = v179;
  sub_2457CB794(v52, v179);
  if ((*(v181 + 48))(v53, 1, v6) == 1)
  {
    sub_2457CB804(v53);
    v54 = v177;
    sub_24590C714();
    v55 = sub_24590F344();
    v56 = sub_245910F64();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_245767000, v55, v56, "Image quality result does not exist", v57, 2u);
      MEMORY[0x245D77B40](v57, -1, -1);
    }

    else
    {
    }

    v62 = v54;
    v63 = v178;
    return v41(v62, v63);
  }

  v64 = v181 + 32;
  v164 = *(v181 + 32);
  v164(v15, v53, v6);
  if (sub_24590E9C4())
  {
    sub_2457C9750(v49);

    return (*(v181 + 8))(v15, v6);
  }

  else
  {
    v166 = v41;
    v177 = v42;
    sub_24590C714();
    v66 = *(v181 + 16);
    v67 = v28;
    v68 = v176;
    v155 = v181 + 16;
    v154 = v66;
    v66(v176, v15, v6);
    v179 = v67;
    v69 = sub_24590F344();
    v70 = sub_245910F54();
    v71 = os_log_type_enabled(v69, v70);
    v162 = v49;
    v165 = v6;
    v156 = v64;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v72 = 136446210;
      v74 = sub_24590E9B4();
      v75 = v6;
      v77 = v76;
      v161 = *(v181 + 8);
      v161(v68, v75);
      v78 = sub_2458CC378(v74, v77, &aBlock);
      v79 = v1;
      v80 = v78;

      *(v72 + 4) = v80;
      v1 = v79;
      _os_log_impl(&dword_245767000, v69, v70, "ID scan image quality check failed: %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x245D77B40](v73, -1, -1);
      MEMORY[0x245D77B40](v72, -1, -1);
    }

    else
    {

      v161 = *(v181 + 8);
      v161(v68, v6);
    }

    v166(v179, v178);
    v81 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide;
    if (v1[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide])
    {
      v82 = sub_24590E2D4();
    }

    else
    {
      v82 = sub_24590E2E4();
    }

    v163 = v82;
    v84 = v83;
    sub_24590E014();

    v85 = v1;
    v157 = v81;
    v86 = v1[v81];
    v179 = v85;
    v160 = *&v85[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_analyticsReporter];
    v87 = sub_24590E494();
    if (*(v87 + 16) && (v88 = sub_24588C88C(v15), (v89 & 1) != 0))
    {
      v159 = *(*(v87 + 56) + 16 * v88);
    }

    else
    {
      v159 = 0;
    }

    v176 = v84;
    v167 = v15;
    if (v86)
    {
      v90 = sub_24590DF84();
      v91 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
      v92 = *(*&v179[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] + 168);
      v158 = v90;
      if (v92)
      {
        v93 = v92;
        sub_24590DDB4();

        v94 = sub_24590CDE4();
        if (v94 != sub_24590CDE4())
        {
          v124 = *(*&v179[v91] + 168);
          if (v124)
          {
            v125 = v124;
            sub_24590DDB4();

            sub_24590CDA4();
          }
        }
      }
    }

    else
    {
      v158 = sub_24590DF94();
    }

    sub_24590E014();
    v95 = v179;
    (*(**&v179[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper] + 96))();
    sub_24590E1B4();
    sub_24590E484();

    v96 = v167;
    if ((sub_24590E994() & 1) != 0 || *(*(*(*&v95[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_interactor] + 24) + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration) != 1)
    {
      v106 = *&v95[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_docScanConfig];
      v107 = v95;
      v108 = sub_24590D224();
      v110 = v109;

      v111 = v165;
      if ((v110 & 1) != 0 || (v117 = *(*&v107[v44] + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount), (v117 & 0x8000000000000000) != 0) || v117 < v108)
      {
        v112 = v157;
        v113 = v173;
        v114 = v174;
        if (v107[v157])
        {
          v115 = MEMORY[0x277CFF308];
        }

        else
        {
          v115 = MEMORY[0x277CFF318];
        }

        v116 = v175;
        (*(v174 + 13))(v173, *v115, v175);

        sub_24579AC34(v96, v113, 0);

        (*(v114 + 1))(v113, v116);
        v119 = v107[v112];

        sub_245886234(v119, &aBlock);
        v120 = v183;
        v121 = v185;
        v122 = v187;
        v174 = v184;
        v175 = v186;

        if (v120)
        {
          v123 = sub_2459109C4();
        }

        else
        {
          v123 = 0;
        }

        v126 = v165;
        v127 = sub_2459109C4();

        v178 = [objc_opt_self() alertControllerWithTitle:v123 message:v127 preferredStyle:1];

        v128 = v168;
        v154(v168, v167, v126);
        v129 = *(v181 + 80);
        v177 = ~v129;
        v130 = swift_allocObject();
        v131 = v179;
        v132 = v162;
        *(v130 + 2) = v179;
        *(v130 + 3) = v132;
        v133 = v176;
        *(v130 + 4) = v163;
        *(v130 + 5) = v133;
        v164(&v130[(v129 + 48) & ~v129], v128, v126);
        v134 = v131;
        v135 = v132;

        if (v121)
        {
          v136 = sub_2459109C4();
        }

        else
        {
          v136 = 0;
        }

        v186 = sub_2457CBA60;
        v187 = v130;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_245823208;
        v185 = &block_descriptor_134;
        v137 = _Block_copy(&aBlock);

        v138 = objc_opt_self();
        v139 = [v138 actionWithTitle:v136 style:0 handler:v137];
        _Block_release(v137);

        v140 = v169;
        v141 = v165;
        v154(v169, v167, v165);
        v142 = (v129 + 40) & v177;
        v143 = swift_allocObject();
        v144 = v163;
        *(v143 + 2) = v131;
        *(v143 + 3) = v144;
        *(v143 + 4) = v133;
        v164(&v143[v142], v140, v141);
        v145 = v131;
        if (v122)
        {
          v146 = sub_2459109C4();
        }

        else
        {
          v146 = 0;
        }

        v147 = v162;
        v186 = sub_2457CBAD8;
        v187 = v143;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_245823208;
        v185 = &block_descriptor_140;
        v148 = _Block_copy(&aBlock);

        v149 = [v138 actionWithTitle:v146 style:1 handler:v148];
        _Block_release(v148);

        v150 = v167;
        v151 = sub_2457CAFB8(v167);
        v152 = v178;
        if (v151)
        {
          [v178 addAction_];
        }

        [v152 addAction_];
        [v179 presentViewController:v152 animated:1 completion:0];

        v104 = v150;
        v105 = v141;
      }

      else
      {

        v118 = v162;
        sub_2457C9750(v162);

        v104 = v96;
        v105 = v111;
      }
    }

    else
    {

      v97 = v170;
      sub_24590C714();
      v98 = sub_24590F344();
      v99 = sub_245910F54();
      v100 = os_log_type_enabled(v98, v99);
      v101 = v165;
      if (v100)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_245767000, v98, v99, "Exploration set, don't show iq feedback and continuing.", v102, 2u);
        MEMORY[0x245D77B40](v102, -1, -1);
      }

      v166(v97, v178);
      v103 = v162;
      sub_2457C9750(v162);

      v104 = v96;
      v105 = v101;
    }

    return (v161)(v104, v105);
  }
}

uint64_t sub_2457C92B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2457C9750(a3);
  sub_24590E014();

  v8 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide);
  if (*(sub_24590E494() + 16))
  {
    sub_24588C88C(a6);
    if (v9)
    {
    }
  }

  if (v8)
  {
    sub_24590DF84();
    v10 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
    v11 = *(*(a2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager) + 168);
    if (v11)
    {
      v12 = v11;
      sub_24590DDB4();

      v13 = sub_24590CDE4();
      if (v13 != sub_24590CDE4())
      {
        v14 = *(*(a2 + v10) + 168);
        if (v14)
        {
          v15 = v14;
          sub_24590DDB4();

          sub_24590CDA4();
        }
      }
    }
  }

  else
  {
    sub_24590DF94();
  }

  sub_24590E014();
  (*(**(a2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper) + 96))();
  sub_24590E1B4();
  sub_24590E484();
}

uint64_t sub_2457C9504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2457CAEF0();
  sub_24590E014();

  v7 = *(a2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide);
  if (*(sub_24590E494() + 16))
  {
    sub_24588C88C(a5);
    if (v8)
    {
    }
  }

  if (v7)
  {
    sub_24590DF84();
    v9 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
    v10 = *(*(a2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager) + 168);
    if (v10)
    {
      v11 = v10;
      sub_24590DDB4();

      v12 = sub_24590CDE4();
      if (v12 != sub_24590CDE4())
      {
        v13 = *(*(a2 + v9) + 168);
        if (v13)
        {
          v14 = v13;
          sub_24590DDB4();

          sub_24590CDA4();
        }
      }
    }
  }

  else
  {
    sub_24590DF94();
  }

  sub_24590E014();
  (*(**(a2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper) + 96))();
  sub_24590E1B4();
  sub_24590E484();
}

uint64_t sub_2457C9750(void *a1)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_2459107E4();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_245910814();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_24590F354();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v15 = sub_24590F344();
  v16 = sub_245910F54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2458CC378(0xD000000000000014, 0x8000000245926540, aBlock);
    _os_log_impl(&dword_245767000, v15, v16, "%s - enter", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245D77B40](v18, -1, -1);
    MEMORY[0x245D77B40](v17, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v19 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide;
  v73 = v2[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide];
  if (v73)
  {
    v72 = 1;
    v20 = sub_24590E314();
    v67 = v21;
    v68 = v20;
  }

  else
  {
    v22 = sub_24590E354();
    v67 = v23;
    v68 = v22;
    v72 = 0;
  }

  sub_24590E014();

  v24 = v2[v19];
  v69 = v10;
  if (v24)
  {
    sub_24590DF84();
    v25 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager;
    v26 = *(*&v2[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] + 168);
    if (v26)
    {
      v27 = v26;
      sub_24590DDB4();

      v28 = sub_24590CDE4();
      if (v28 != sub_24590CDE4())
      {
        v29 = *(*&v2[v25] + 168);
        if (v29)
        {
          v30 = v29;
          sub_24590DDB4();

          sub_24590CDA4();
        }
      }
    }
  }

  else
  {
    sub_24590DF94();
  }

  sub_24590E014();
  (*(**&v2[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper] + 96))();
  sub_24590E1B4();
  sub_24590E484();

  sub_24590C594();
  v31 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult;
  v32 = *&v2[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult];
  v33 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
  swift_beginAccess();
  v34 = v69;
  sub_2457CB794(v32 + v33, v69);
  sub_24590C514();

  sub_2457CB804(v34);
  v35 = MEMORY[0x277D85700];
  if (v73)
  {
    v36 = sub_245910D64();
    v37 = v71;
    (*(*(v36 - 8) + 56))(v71, 1, 1, v36);
    sub_245910D34();
    v38 = v2;
    v39 = sub_245910D24();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v35;
    v40[4] = v38;
    sub_2458B90EC(0, 0, v37, &unk_245917998, v40);
  }

  sub_245781818(v70, v72);

  v41 = *&v2[v31];
  v42 = *(v41 + 16);
  *(v41 + 16) = 0;

  v43 = *&v2[v31];
  v44 = sub_24590E9D4();
  (*(*(v44 - 8) + 56))(v34, 1, 1, v44);
  v45 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
  swift_beginAccess();

  sub_2457CB86C(v34, v43 + v45);
  swift_endAccess();

  v46 = *&v2[v31];
  *(v46 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_captureTime) = 0;
  *(v46 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount) = 0;
  if (v73)
  {
    sub_24579D5E0(0, &qword_27EE2ABC0);
    v47 = sub_245911034();
    v48 = swift_allocObject();
    *(v48 + 16) = v2;
    aBlock[4] = sub_2457CB8DC;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_112;
    v49 = _Block_copy(aBlock);
    v50 = v2;

    v51 = v61;
    sub_245910804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_245780A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    v52 = v63;
    v53 = v66;
    sub_2459113A4();
    MEMORY[0x245D76690](0, v51, v52, v49);
    _Block_release(v49);

    (*(v65 + 8))(v52, v53);
    (*(v62 + 8))(v51, v64);
    v54 = sub_245910D64();
    v55 = v71;
    (*(*(v54 - 8) + 56))(v71, 1, 1, v54);
    sub_245910D34();
    v56 = v50;
    v57 = sub_245910D24();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = v35;
    v58[4] = v56;
    sub_2458B90EC(0, 0, v55, &unk_245917988, v58);
  }

  else
  {

    v59 = [v2 navigationController];
    sub_24586CA74(v59, 2, 0, 0);
  }

  return sub_2457CA110();
}

uint64_t sub_2457CA110()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2458CC378(0xD000000000000014, 0x8000000245926540, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "%s - exit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2457CA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_24590F354();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  sub_245910D34();
  v4[11] = sub_245910D24();
  v7 = sub_245910CD4();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x2822009F8](sub_2457CA3A8, v7, v6);
}

uint64_t sub_2457CA3A8()
{
  v1 = v0[6];

  sub_24579A384();

  v0[14] = *(v1 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager);

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_2457CA498;

  return sub_24587CF9C(0, 0);
}

uint64_t sub_2457CA498()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2457CA6C8;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2457CA5B4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2457CA5B4()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "successully executed prepareForProofingIdentity", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2457CA6C8()
{
  v20 = v0;
  v1 = *(v0 + 128);

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error during prepareForProofingIdentity. Ignoring the error as it is non fatal. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_2457CA8C0()
{
  v0 = sub_2458A1B04();
  sub_2458B4FCC(1);
}

uint64_t sub_2457CA914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2459107E4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_245910814();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_245910D34();
  v4[16] = sub_245910D24();
  v8 = sub_245910CD4();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](sub_2457CAA64, v8, v7);
}

uint64_t sub_2457CAA64()
{
  v0[19] = *(v0[9] + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_2457CAB10;

  return sub_245882938();
}

uint64_t sub_2457CAB10(void *a1)
{
  v3 = *v1;

  sub_2457CBA4C(a1);

  v4 = *(v3 + 144);
  v5 = *(v3 + 136);

  return MEMORY[0x2822009F8](sub_2457CAC70, v5, v4);
}

uint64_t sub_2457CAC70()
{
  v1 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  sub_24579D5E0(0, &qword_27EE2ABC0);
  v6 = sub_245911034();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v0[6] = sub_2457CBA58;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2458935A8;
  v0[5] = &block_descriptor_127;
  v8 = _Block_copy(v0 + 2);
  v9 = v5;
  sub_245910804();
  v0[8] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v1, v2, v8);
  _Block_release(v8);

  (*(v3 + 8))(v2, v4);
  (*(v12 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

void sub_2457CAE6C(void *a1)
{

  v2 = [a1 navigationController];
  sub_24586CA74(v2, 2, 0, 0);
}

void sub_2457CAEF0()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult];
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount) = v4;
  v5 = *(*&v0[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] + 152);
  v6 = *(v5 + 16);
  v3 = __OFSUB__(v6, 2);
  v7 = v6 - 2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v5 + 16) = v7;

  v8 = [v0 navigationController];
  sub_24586CA74(v8, 0, 0, 0);
}

uint64_t sub_2457CAFB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590E9D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 104);
  v8(v7, *MEMORY[0x277CFF7D0], v4);
  v9 = MEMORY[0x245D73FE0](a1, v7);
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9 & 1) != 0 && (v11 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_docScanConfig), v12 = sub_24590D234(), v11, (v12) && (*(v2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide) & 1) != 0 || (v8(v7, *MEMORY[0x277CFF810], v4), v13 = MEMORY[0x245D73FE0](a1, v7), v10(v7, v4), (v13) && (v14 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_docScanConfig), v15 = sub_24590D254(), v14, (v15) && (*(v2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide))
  {
    v16 = 0;
  }

  else
  {
    v8(v7, *MEMORY[0x277CFF7C8], v4);
    v17 = MEMORY[0x245D73FE0](a1, v7);
    v10(v7, v4);
    if (v17 & 1) != 0 && (v18 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_docScanConfig), v19 = sub_24590D244(), v18, (v19))
    {
      v16 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide) ^ 1;
    }

    else
    {
      v16 = 1;
    }
  }

  return v16 & 1;
}

void sub_2457CB20C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];

    v3 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v4 = [objc_opt_self() whiteColor];
    v5 = [v4 CGColor];

    [v3 setBackgroundColor_];
    [v3 setOpacity_];
    v6 = sub_2458A1E14();
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v3 setFrame_];
    v15 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] layer];
    [v15 addSublayer_];

    v16 = objc_opt_self();
    [v16 begin];
    [v16 setAnimationDuration_];
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    v27[4] = sub_2457CB76C;
    v27[5] = v17;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = sub_2458935A8;
    v27[3] = &block_descriptor_12;
    v18 = _Block_copy(v27);
    v19 = v3;

    [v16 setCompletionBlock_];
    _Block_release(v18);
    v20 = sub_2459109C4();
    v21 = [objc_opt_self() animationWithKeyPath_];

    v22 = sub_245910EB4();
    [v21 setFromValue_];

    v23 = sub_245910EB4();
    [v21 setToValue_];

    v24 = v21;
    [v24 setDuration_];
    v25 = [objc_opt_self() functionWithName_];
    [v24 setTimingFunction_];

    [v24 setFillMode_];
    [v24 setRemovedOnCompletion_];

    v26 = sub_2459109C4();
    [v19 addAnimation:v24 forKey:v26];

    [v16 commit];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2457CB5E8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_configuration);
}

id sub_2457CB678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDScanConfirmationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2457CB794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457CB804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2457CB86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457CB8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457CA914(a1, v4, v5, v6);
}

uint64_t sub_2457CB998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2457CA2A8(a1, v4, v5, v6);
}

uint64_t sub_2457CBA60(uint64_t a1)
{
  v3 = *(sub_24590E9D4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_2457C92B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2457CBAD8(uint64_t a1)
{
  v3 = *(sub_24590E9D4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2457C9504(a1, v4, v5, v6, v7);
}

uint64_t sub_2457CBC58()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_2457CBDB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24577CCD4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    type metadata accessor for CGPoint(0);
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24577CCD4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2457AA3F0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2457CBEB0()
{
  type metadata accessor for IDScanResult(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
  v2 = sub_24590E9D4();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_captureTime) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount) = 0;
  qword_27EE32BC0 = v0;
  return result;
}

uint64_t sub_2457CBF50()
{
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode, &qword_27EE295E8);

  return swift_deallocClassInstance();
}

void sub_2457CBFF4()
{
  sub_2457D34D4(319, &qword_280ADF778, MEMORY[0x277CFF850], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_2457CC0FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_24579D5E0(0, &qword_27EE29668);
  sub_245910444();
  v1 = sub_245911234();
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 layer];
  [v3 setCornerRadius_];

  v4 = [v0 layer];
  [v4 setCornerCurve_];

  [v0 setHidden_];
  return v0;
}

id sub_2457CC22C()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt);
  }

  else
  {
    v4 = sub_2457CC290();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457CC290()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = sub_2457CC0DC();
  [v1 addSubview_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  v4 = sub_2457CC4C0();
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v5 = [v0 layer];
  v6 = [v2 blackColor];
  v7 = [v6 CGColor];

  [v5 setShadowColor_];
  v8 = [v0 layer];
  LODWORD(v9) = 0.75;
  [v8 setShadowOpacity_];

  v10 = [v0 layer];
  [v10 setShadowRadius_];

  v11 = [v0 layer];
  [v11 setShadowOffset_];

  return v0;
}

id sub_2457CC4E0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

CTFontRef sub_2457CC540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916930;
  v1 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29648);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_245916930;
  v3 = *MEMORY[0x277CC4980];
  *(v2 + 32) = *MEMORY[0x277CC4980];
  v4 = *MEMORY[0x277CC4958];
  *(v2 + 40) = *MEMORY[0x277CC4958];
  v5 = v4;
  v6 = v1;
  v7 = v3;
  v8 = sub_2458B8934(v2);
  swift_setDeallocating();
  sub_245778F94(v2 + 32, &qword_27EE29650);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29658);
  *(inited + 40) = v8;
  sub_2458B8A24(inited);
  swift_setDeallocating();
  sub_245778F94(inited + 32, &qword_27EE29660);
  type metadata accessor for CFString(0);
  sub_2457D3108(&qword_27EE28910, type metadata accessor for CFString);
  v9 = sub_2459108E4();

  v10 = CTFontDescriptorCreateWithAttributes(v9);

  v11 = CTFontCreateWithFontDescriptor(v10, 15.0, 0);
  return v11;
}

id sub_2457CC740()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for IDScanViewController(0);
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
    v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
    *v5 = sub_2457D3204;
    v5[1] = v4;

    sub_245771C34(v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
    v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
    *v8 = sub_2457D320C;
    v8[1] = v7;

    sub_245771C34(v9);

    return sub_2457CCE64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2457CC8C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_24590E3B4();
    if (v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide])
    {
      sub_24590DF84();
    }

    else
    {
      sub_24590DF94();
    }

    sub_24590DFC4();
    (*(**&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper] + 96))();
    sub_24590E1B4();
    sub_24590E484();

    sub_245887AB8(v1, 0xD000000000000012, 0x8000000245926590, 0, 0, 0);
  }

  return result;
}

void *sub_2457CCA98()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_2458A1B04();

    sub_2458B4FCC(1);
    v3 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_cameraReader;
    [*&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_cameraReader] setEnableManualIDCapture_];
    [*&v1[v3] setEnableAltIDCardScan_];
    sub_24590E3B4();
    if (v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide])
    {
      sub_24590DF84();
    }

    else
    {
      sub_24590DF94();
    }

    sub_24590DFC4();
    (*(**&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper] + 96))();
    sub_24590E1B4();
    sub_24590E484();
  }

  return result;
}

uint64_t sub_2457CCCAC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for IDScanViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  sub_24590E3D4();
  if (v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide])
  {
    sub_24590DF84();
  }

  else
  {
    sub_24590DF94();
  }

  sub_24590DFC4();
  (*(**&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper] + 96))();
  sub_24590E1B4();
  sub_24590E484();
}

id sub_2457CCE64()
{
  v1 = v0;
  v2 = sub_24590F354();
  v105 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v102 - v6;
  sub_24590C4C4();
  swift_allocObject();
  v104 = sub_24590C4B4();
  v8 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_cameraReader;
  v9 = &off_278E87000;
  result = [*&v0[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_cameraReader] view];
  if (!result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = result;
  v12 = [result layer];
  sub_24579D5E0(0, &qword_27EE2B020);
  v13 = sub_24590D8B4();
  v14 = MEMORY[0x245D76600](v13);

  if (v14)
  {
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245767000, v15, v16, "CALayer internal setting is enabled to allow screen capture on redacted layer", v17, 2u);
      v18 = v17;
      v9 = &off_278E87000;
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    (*(v105 + 8))(v7, v2);
  }

  else
  {
    [v12 setDisableUpdateMask_];
  }

  [*&v1[v8] setEnableUnpaddedIDCapture_];
  [*&v1[v8] setHidePlacementText_];
  result = [*&v1[v8] *(v9 + 433)];
  if (!result)
  {
    goto LABEL_27;
  }

  v19 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  v20 = sub_2458A1E14();
  result = [*&v1[v8] *(v9 + 433)];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = result;
  v103 = v2;
  [v20 addSubview_];

  v22 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView;
  v23 = *&v1[v8];
  v24 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView];
  result = [v23 *(v9 + 433)];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = result;
  [v24 bringSubviewToFront_];

  [*&v1[v22] setClipsToBounds_];
  result = [*&v1[v8] *(v9 + 433)];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = result;
  v27 = sub_2457CC0DC();
  [v26 addSubview_];

  v28 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidanceContainer;
  v29 = *&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidanceContainer];
  v30 = sub_2457CC22C();
  [v29 addSubview_];

  v31 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt;
  [*&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt] setDirectionalLayoutMargins_];
  if ((sub_2457D1018() & 1) == 0)
  {
    v105 = v31;
    [*&v1[v8] start];
    [v1 startManualCaptureTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_245917250;
    result = [*&v1[v8] v9 + 2808];
    if (result)
    {
      v36 = result;
      v37 = [result widthAnchor];

      v38 = [*&v1[v22] widthAnchor];
      v39 = [v37 constraintEqualToAnchor_];

      *(v35 + 32) = v39;
      result = [*&v1[v8] v9 + 2808];
      if (result)
      {
        v40 = result;
        v41 = [result centerXAnchor];

        v42 = [*&v1[v22] centerXAnchor];
        v43 = [v41 constraintEqualToAnchor_];

        *(v35 + 40) = v43;
        result = [*&v1[v8] v9 + 2808];
        if (result)
        {
          v44 = result;
          v45 = [result centerYAnchor];

          v46 = [*&v1[v22] centerYAnchor];
          v47 = [v45 constraintEqualToAnchor_];

          *(v35 + 48) = v47;
          result = [*&v1[v8] v9 + 2808];
          if (result)
          {
            v48 = result;
            v49 = [result heightAnchor];

            v50 = [*&v1[v22] heightAnchor];
            v51 = [v49 constraintEqualToAnchor_];

            *(v35 + 56) = v51;
            v52 = [*&v1[v28] topAnchor];
            result = [*&v1[v8] v9 + 2808];
            if (result)
            {
              v53 = result;
              v54 = [result topAnchor];

              v55 = [v52 constraintEqualToAnchor:v54 constant:20.0];
              *(v35 + 64) = v55;
              v56 = [*&v1[v28] trailingAnchor];
              result = [*&v1[v8] v9 + 2808];
              if (result)
              {
                v57 = result;
                v58 = [result trailingAnchor];

                v59 = [v56 constraintLessThanOrEqualToAnchor:v58 constant:-20.0];
                *(v35 + 72) = v59;
                v60 = [*&v1[v28] leadingAnchor];
                result = [*&v1[v8] v9 + 2808];
                if (result)
                {
                  v61 = result;
                  v62 = [result leadingAnchor];

                  v63 = [v60 constraintGreaterThanOrEqualToAnchor:v62 constant:20.0];
                  *(v35 + 80) = v63;
                  v64 = [*&v1[v28] centerXAnchor];
                  result = [*&v1[v8] v9 + 2808];
                  if (result)
                  {
                    v65 = result;
                    v66 = objc_opt_self();
                    v67 = [v65 &selRef_text + 2];

                    v68 = [v64 constraintEqualToAnchor_];
                    *(v35 + 88) = v68;
                    v69 = v105;
                    v70 = [*&v1[v105] topAnchor];
                    v71 = [*&v1[v28] topAnchor];
                    v72 = [v70 constraintEqualToAnchor:v71 constant:5.0];

                    *(v35 + 96) = v72;
                    v73 = [*&v1[v69] bottomAnchor];
                    v74 = [*&v1[v28] bottomAnchor];
                    v75 = [v73 constraintEqualToAnchor:v74 constant:-5.0];

                    *(v35 + 104) = v75;
                    v76 = [*&v1[v69] trailingAnchor];
                    v77 = [*&v1[v28] trailingAnchor];
                    v78 = [v76 constraintEqualToAnchor:v77 constant:-7.0];

                    *(v35 + 112) = v78;
                    v79 = [*&v1[v69] leadingAnchor];
                    v80 = [*&v1[v28] leadingAnchor];
                    v81 = [v79 constraintEqualToAnchor:v80 constant:7.0];

                    *(v35 + 120) = v81;
                    sub_24579D5E0(0, &qword_27EE291F0);
                    v82 = sub_245910C34();

                    [v66 activateConstraints_];

                    v83 = *&v1[v8];
                    v84 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v85 = swift_allocObject();
                    v86 = v104;
                    *(v85 + 16) = v84;
                    *(v85 + 24) = v86;
                    v87 = &v83[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_didCaptureImage];
                    v88 = *&v83[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_didCaptureImage];
                    *v87 = sub_2457D2E94;
                    v87[1] = v85;
                    v89 = v83;

                    sub_245771C34(v88);

                    v90 = *&v1[v8];
                    v91 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v92 = swift_allocObject();
                    *(v92 + 16) = v91;
                    *(v92 + 24) = v86;
                    v93 = &v90[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_shouldReturnImage];
                    v94 = *&v90[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_shouldReturnImage];
                    *v93 = sub_2457D2E9C;
                    v93[1] = v92;

                    v95 = v90;

                    sub_245771C34(v94);

                    v96 = *&v1[v8];
                    v97 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v98 = swift_allocObject();
                    *(v98 + 16) = v97;
                    *(v98 + 24) = v86;
                    v99 = &v96[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_detectIDCardCorners];
                    v100 = *&v96[OBJC_IVAR____TtC9CoreIDVUI18IDScanCameraReader_detectIDCardCorners];
                    *v99 = sub_2457D2EE4;
                    v99[1] = v98;
                    v101 = v96;

                    sub_245771C34(v100);
                  }

                  goto LABEL_38;
                }

LABEL_37:
                __break(1u);
LABEL_38:
                __break(1u);
                return result;
              }

LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_24590C714();
  v32 = sub_24590F344();
  v33 = sub_245910F54();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_245767000, v32, v33, "Did skip front and back ID scan with successfully injected images. Returning early.", v34, 2u);
    MEMORY[0x245D77B40](v34, -1, -1);
  }

  else
  {
  }

  return (*(v105 + 8))(v5, v103);
}

void sub_2457CDB0C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v105 = a5;
  v104 = a2;
  v7 = sub_2459107E4();
  v114 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245910814();
  v113 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v112 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  MEMORY[0x28223BE20](v12 - 8);
  v111 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v14 - 8);
  v109 = &v99 - v15;
  v110 = sub_24590C474();
  v108 = *(v110 - 1);
  MEMORY[0x28223BE20](v110);
  v107 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v99 - v18;
  v19 = sub_24590E9D4();
  v120 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v117 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24590C454();
  v119 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v118 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_24590F354();
  v121 = *(v116 - 8);
  v23 = MEMORY[0x28223BE20](v116);
  v103 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v99 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  v101 = v10;
  v29 = a3;
  v102 = v7;
  if (!a3)
  {
    v33 = a1;
    a3 = a1;
    goto LABEL_6;
  }

  sub_24579D5E0(0, &qword_27EE29638);
  v29 = a3;
  v30 = sub_245911294();

  if ((v30 & 1) == 0)
  {
LABEL_6:
    v31 = 0xE800000000000000;
    v32 = 0x6465646461706E75;
    goto LABEL_7;
  }

  v31 = 0xE600000000000000;
  v32 = 0x646564646170;
LABEL_7:
  v34 = v29;
  sub_24590C714();

  v35 = sub_24590F344();
  v36 = sub_245910F54();

  v37 = os_log_type_enabled(v35, v36);
  v115 = v19;
  v122 = v28;
  v100 = v9;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = v21;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v38 = 136315138;
    v41 = sub_2458CC378(v32, v31, aBlock);

    *(v38 + 4) = v41;
    _os_log_impl(&dword_245767000, v35, v36, "IDScanViewController: Initializing with %s image", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v42 = v40;
    v21 = v39;
    v28 = v122;
    MEMORY[0x245D77B40](v42, -1, -1);
    MEMORY[0x245D77B40](v38, -1, -1);
  }

  else
  {
  }

  v43 = v121[1];
  v44 = v116;
  v43(v26, v116);
  v45 = [objc_opt_self() standardUserDefaults];
  sub_24590D8D4();
  v46 = sub_245910F94();

  if (v46)
  {
    v47 = sub_2457D151C();
    if (v47)
    {
      v48 = v47;

      a3 = v48;
    }
  }

  v49 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v50 = a3;
  v51 = a3;
  v52 = [v49 initWithImage_];
  if (v52)
  {
    v53 = v119;
    v54 = *(v119 + 16);
    v103 = v51;
    v55 = v118;
    v121 = v52;
    v54(v118, v104, v21);
    sub_24590C4A4();
    v57 = v56;
    LOBYTE(aBlock[0]) = 0;
    sub_24590C414();
    v104 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult;
    sub_24590C434();
    v58 = v106;
    v54(v106, v55, v21);
    v59 = *(v53 + 56);
    v116 = v21;
    v59(v58, 0, 1, v21);
    v60 = *&v122[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docScanConfig];
    v105 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide;
    v61 = v122[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide];
    v99 = v50;
    v62 = v108;
    if (v61)
    {
      v63 = MEMORY[0x277CFF308];
    }

    else
    {
      v63 = MEMORY[0x277CFF318];
    }

    v64 = v107;
    v65 = v110;
    (*(v108 + 104))(v107, *v63, v110);
    v66 = sub_24590C814();
    v67 = v109;
    (*(*(v66 - 8) + 56))(v109, 1, 1, v66);

    v68 = v60;

    v69 = v117;
    sub_245793D94(v121, v58, v67, v60, v64, 0, v117);

    sub_245778F94(v67, &qword_27EE28F98);
    (*(v62 + 8))(v64, v65);
    sub_245778F94(v58, &qword_27EE28FA0);
    v70 = v104;
    v71 = *&v122[v104];
    *(v71 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_captureTime) = v57;
    v72 = *(v71 + 16);
    *(v71 + 16) = v99;
    v110 = v103;

    v73 = *&v122[v70];
    v74 = v120;
    v75 = v111;
    v76 = v115;
    (*(v120 + 16))(v111, v69, v115);
    (*(v74 + 56))(v75, 0, 1, v76);
    v77 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
    swift_beginAccess();

    sub_2457CB86C(v75, v73 + v77);
    swift_endAccess();

    sub_24579D5E0(0, &qword_27EE2ABC0);
    v78 = sub_245911034();
    v79 = swift_allocObject();
    *(v79 + 16) = v122;
    aBlock[4] = sub_2457D3100;
    aBlock[5] = v79;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_203;
    v80 = _Block_copy(aBlock);
    v81 = v122;

    v82 = v112;
    sub_245910804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2457D3108(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    v83 = v100;
    v84 = v102;
    sub_2459113A4();
    MEMORY[0x245D76690](0, v82, v83, v80);
    v85 = v122;
    _Block_release(v80);

    v86 = v105;
    (*(v114 + 8))(v83, v84);
    (*(v113 + 8))(v82, v101);
    if (v85[v86])
    {
      sub_24590E284();
    }

    else
    {
      sub_24590E2A4();
    }

    v114 = v87;
    if (v85[v86] == 1 && (v92 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_proofingFlowManager, (v93 = *(*&v81[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_proofingFlowManager] + 168)) != 0) && (v94 = v93, sub_24590DDB4(), v94, v95 = sub_24590CDE4(), v95 != sub_24590CDE4()) && (v96 = *(*&v81[v92] + 168)) != 0)
    {
      v97 = v96;
      sub_24590DDB4();

      v113 = sub_24590CDA4();
    }

    else
    {
      v113 = 0;
    }

    if (*&v81[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_timeoutTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
      sub_245910DD4();
    }

    if (v85[v86])
    {
      sub_24590DF84();
    }

    else
    {
      sub_24590DF94();
    }

    sub_24590DFC4();
    (*(**&v81[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper] + 96))();
    sub_24590E1B4();
    sub_24590E484();
    v98 = v110;

    (*(v120 + 8))(v117, v115);
    (*(v119 + 8))(v118, v116);
  }

  else
  {
    v88 = v103;
    sub_24590C714();
    v89 = sub_24590F344();
    v90 = sub_245910F64();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_245767000, v89, v90, "IDScanViewController: ciImage does not exist", v91, 2u);
      MEMORY[0x245D77B40](v91, -1, -1);
    }

    else
    {
    }

    v43(v88, v44);
  }
}

uint64_t sub_2457CE9EC(void *a1)
{

  v2 = [a1 navigationController];

  sub_24586CA74(v2, 2, 0, 0);
}

uint64_t sub_2457CEA84(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v118 = a1;
  v3 = sub_24590F354();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v104 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v103 = &v99 - v7;
  MEMORY[0x28223BE20](v6);
  v112 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98);
  MEMORY[0x28223BE20](v11 - 8);
  v117 = &v99 - v12;
  v13 = sub_24590C474();
  v14 = *(v13 - 8);
  v120 = v13;
  v121 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v113 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v99 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v99 - v20;
  v22 = sub_24590E9D4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v124 = &v99 - v26;
  v27 = sub_24590C454();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v116 = v23;
  v31 = *(v28 + 16);
  v31(v30, a2, v27);
  sub_24590C4A4();
  LOBYTE(v125) = 0;
  sub_24590C414();
  v122 = v22;
  v106 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult;
  v105 = v18;
  v32 = Strong;
  sub_24590C434();
  v102 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_interactor;
  v33 = v21;
  v108 = v30;
  v31(v21, v30, v27);
  v109 = v28;
  v34 = *(v28 + 56);
  v110 = v27;
  v34(v21, 0, 1, v27);
  v35 = *(v32 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docScanConfig);
  v107 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide;
  v36 = v120;
  v37 = v121;
  v38 = *(v121 + 104);
  if (*(v32 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide))
  {
    v39 = MEMORY[0x277CFF308];
  }

  else
  {
    v39 = MEMORY[0x277CFF318];
  }

  v40 = *v39;
  v101 = v121 + 104;
  v100 = v38;
  v38(v18, v40, v120);
  v41 = sub_24590C814();
  v42 = v117;
  (*(*(v41 - 8) + 56))(v117, 1, 1, v41);

  v43 = v35;

  v44 = v124;
  v45 = v35;
  v46 = v105;
  sub_245793D94(v118, v33, v42, v45, v105, 1, v124);

  sub_245778F94(v42, &qword_27EE28F98);
  v49 = *(v37 + 8);
  v48 = v37 + 8;
  v47 = v49;
  v49(v46, v36);
  v50 = v33;
  v51 = v116;
  sub_245778F94(v50, &qword_27EE28FA0);
  v52 = *(v32 + v106);
  v53 = v122;
  v54 = *(v51 + 16);
  v55 = v119;
  v54(v119, v44, v122);
  (*(v51 + 56))(v55, 0, 1, v53);
  v56 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
  swift_beginAccess();

  sub_2457CB86C(v55, v52 + v56);
  swift_endAccess();

  v57 = v44;
  if (sub_24590E9C4())
  {
    v125 = 0;
    v126 = 0xE000000000000000;
    v58 = Strong;
    v59 = v107;
    if (*(Strong + v107))
    {
      v60 = 0x6165633538653633;
    }

    else
    {
      v60 = 0x3532356265386636;
    }

    MEMORY[0x245D76160](v60, 0xE800000000000000);

    v125 = 0;
    v126 = 0xE000000000000000;
    sub_2459114D4();
    if (v58[v59])
    {
      v61 = 1801675074;
    }

    else
    {
      v61 = 0x746E6F7246;
    }

    if (v58[v59])
    {
      v62 = 0xE400000000000000;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    MEMORY[0x245D76160](v61, v62);

    MEMORY[0x245D76160](0xD000000000000014, 0x80000002459268B0);
    sub_24590C6C4();

    v63 = 1;
    v64 = v109;
    v65 = v108;
    (*(v51 + 8))(v57, v122);
  }

  else
  {
    v66 = v48;
    v67 = v51;
    v118 = v47;
    v121 = v66;
    v68 = v112;
    sub_24590C714();
    v69 = v122;
    v70 = v111;
    v54(v111, v57, v122);
    v71 = sub_24590F344();
    v72 = sub_245910F54();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v125 = v74;
      *v73 = 136446210;
      v75 = sub_24590E9B4();
      v77 = v76;
      v119 = *(v116 + 8);
      (v119)(v70, v69);
      v78 = sub_2458CC378(v75, v77, &v125);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_245767000, v71, v72, "CR should not return image, failure reason: %{public}s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x245D77B40](v74, -1, -1);
      MEMORY[0x245D77B40](v73, -1, -1);
    }

    else
    {

      v119 = *(v67 + 8);
      (v119)(v70, v69);
    }

    v79 = *(v114 + 8);
    v79(v68, v115);
    v80 = v120;
    v81 = v113;
    v82 = v107;
    v83 = sub_24590E994();
    v84 = Strong;
    if ((v83 & 1) != 0 || *(*(*(*(Strong + v102) + 24) + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration) != 1)
    {
      v92 = MEMORY[0x277CFF308];
      if (!*(Strong + v82))
      {
        v92 = MEMORY[0x277CFF318];
      }

      v100(v81, *v92, v80);

      v91 = v124;
      v93 = v80;
      v94 = sub_24579AC34(v124, v81, 0);
      v96 = v95;
      v97 = v94;

      v118(v81, v93);
      v84[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_shouldPersistIMQError] = 1;
      sub_2457D1A78(v97, v96, v91);

      v63 = 0;
      v64 = v109;
      v65 = v108;
    }

    else
    {
      v85 = v103;
      sub_24590C714();
      v86 = sub_24590F344();
      v87 = sub_245910F54();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_245767000, v86, v87, "Exploration set, don't show iq feedback and continuing.", v88, 2u);
        MEMORY[0x245D77B40](v88, -1, -1);
      }

      v79(v85, v115);
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_2459114D4();
      if (v84[v82])
      {
        v89 = 1801675074;
      }

      else
      {
        v89 = 0x746E6F7246;
      }

      if (v84[v82])
      {
        v90 = 0xE400000000000000;
      }

      else
      {
        v90 = 0xE500000000000000;
      }

      MEMORY[0x245D76160](v89, v90);

      MEMORY[0x245D76160](0xD000000000000026, 0x8000000245926880);
      sub_24590C6C4();

      v63 = 1;
      v64 = v109;
      v65 = v108;
      v91 = v124;
    }

    (v119)(v91, v122);
  }

  (*(v64 + 8))(v65, v110);
  return v63;
}

char *sub_2457CF73C(void *a1)
{
  v128 = a1;
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v104 - v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v104 - v9;
  v10 = sub_2459107E4();
  v121 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v119 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_245910814();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v104 - v14;
  v126 = sub_24590C474();
  v132 = *(v126 - 8);
  v15 = MEMORY[0x28223BE20](v126);
  v123 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v104 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v104 - v20;
  v125 = type metadata accessor for IDCornersResult(0);
  v114 = *(v125 - 8);
  v22 = *(v114 + 64);
  v23 = MEMORY[0x28223BE20](v125);
  v116 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v115 = &v104 - v25;
  MEMORY[0x28223BE20](v24);
  v127 = &v104 - v26;
  v27 = sub_24590C454();
  v130 = *(v27 - 8);
  v131 = v27;
  MEMORY[0x28223BE20](v27);
  v129 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  v30 = *&result[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameCount];
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *&result[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameCount] = v32;
    v33 = *&result[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameRate];
    if (v33 == -1)
    {
      goto LABEL_9;
    }

    if (v33)
    {
      v32 %= v33;
    }

    if (!v32)
    {
LABEL_9:
      v111 = v10;
      v109 = v8;
      v104 = v5;
      v112 = v2;
      v113 = v1;
      LOBYTE(aBlock[0]) = 1;
      v35 = v129;
      v36 = result;
      sub_24590C444();
      sub_24590C4A4();
      LOBYTE(aBlock[0]) = 0;
      sub_24590C414();
      v37 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult;
      sub_24590C434();
      v110 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_interactor;
      v39 = v130;
      v38 = v131;
      (*(v130 + 16))(v21, v35, v131);
      (*(v39 + 56))(v21, 0, 1, v38);
      v105 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide;
      v40 = v132;
      v41 = *(v132 + 104);
      if (v36[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide])
      {
        v42 = MEMORY[0x277CFF328];
      }

      else
      {
        v42 = MEMORY[0x277CFF340];
      }

      v43 = *v42;
      v44 = v126;
      v107 = v132 + 104;
      v106 = v41;
      v41(v18, v43, v126);

      v45 = v127;
      sub_245797B94(v128, v21, v18, v127);

      v46 = *(v40 + 8);
      v132 = v40 + 8;
      v108 = v46;
      v46(v18, v44);
      v47 = v45;
      v48 = v36;
      sub_245778F94(v21, &qword_27EE28FA0);
      v49 = *&v36[v37];
      v50 = v125;
      v51 = *(v125 + 20);
      v52 = sub_24590E9D4();
      v53 = *(v52 - 8);
      v54 = v124;
      (*(v53 + 16))(v124, &v47[v51], v52);
      (*(v53 + 56))(v54, 0, 1, v52);
      v55 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
      swift_beginAccess();

      sub_2457CB86C(v54, v49 + v55);
      swift_endAccess();

      v56 = MEMORY[0x277D84F90];
      v34 = MEMORY[0x277D84F90];
      if (v47[*(v50 + 24)] == 1)
      {
        v34 = *v47;
      }

      v57 = [objc_opt_self() standardUserDefaults];
      sub_24590D8C4();
      v58 = sub_2459109C4();

      v59 = [v57 BOOLForKey_];

      if (v59)
      {
        sub_24579D5E0(0, &qword_27EE2ABC0);
        v124 = sub_245911034();
        v60 = v115;
        sub_2457D2F44(v47, v115);
        v61 = (*(v114 + 80) + 16) & ~*(v114 + 80);
        v62 = (v22 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
        v63 = swift_allocObject();
        sub_2457D3004(v60, v63 + v61);
        *(v63 + v62) = v48;
        v64 = v128;
        *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v128;
        aBlock[4] = sub_2457D3068;
        aBlock[5] = v63;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2458935A8;
        aBlock[3] = &block_descriptor_197;
        v65 = _Block_copy(aBlock);
        v66 = v48;
        v67 = v64;

        v68 = v48;
        v69 = v51;
        v70 = v117;
        sub_245910804();
        aBlock[0] = v56;
        sub_2457D3108(&qword_27EE2A980, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
        sub_245780AA8();
        v71 = v119;
        v72 = v111;
        sub_2459113A4();
        v73 = v124;
        MEMORY[0x245D76690](0, v70, v71, v65);
        _Block_release(v65);

        (*(v121 + 8))(v71, v72);
        v74 = v70;
        v51 = v69;
        v48 = v68;
        (*(v118 + 8))(v74, v120);
      }

      if (sub_24590E9C4())
      {
        if ((v48[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_shouldPersistIMQError] & 1) == 0)
        {
          sub_2457D2488();
        }

        sub_2457D2FA8(v47);
        (*(v130 + 8))(v129, v131);
        return v34;
      }

      v128 = v34;
      v75 = v122;
      sub_24590C714();
      v76 = v116;
      sub_2457D2F44(v47, v116);
      v77 = sub_24590F344();
      v78 = sub_245910F54();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v124 = v48;
        v80 = v51;
        v81 = v76;
        v82 = v79;
        v83 = swift_slowAlloc();
        aBlock[0] = v83;
        *v82 = 136446210;
        v84 = sub_24590E9B4();
        v86 = v85;
        v87 = v81;
        v51 = v80;
        v48 = v124;
        sub_2457D2FA8(v87);
        v88 = sub_2458CC378(v84, v86, aBlock);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_245767000, v77, v78, "Will not return ID corners, iq failure reason: %{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x245D77B40](v83, -1, -1);
        MEMORY[0x245D77B40](v82, -1, -1);
      }

      else
      {

        sub_2457D2FA8(v76);
      }

      v89 = *(v112 + 8);
      v90 = v113;
      v89(v75, v113);
      v91 = v123;
      if (*(*(*(*&v48[v110] + 24) + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration) == 1)
      {
        v92 = v109;
        sub_24590C714();
        v93 = sub_24590F344();
        v94 = sub_245910F54();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_245767000, v93, v94, "Exploration set, skipping iq feedback and continuing.", v95, 2u);
          MEMORY[0x245D77B40](v95, -1, -1);
        }

        v89(v92, v90);
        sub_2457D2FA8(v47);
        (*(v130 + 8))(v129, v131);
        return v128;
      }

      v96 = MEMORY[0x277CFF328];
      if (!v48[v105])
      {
        v96 = MEMORY[0x277CFF340];
      }

      v97 = v126;
      v106(v123, *v96, v126);

      v98 = &v47[v51];
      v99 = v91;
      v100 = sub_24579AC34(v98, v91, 0);
      v102 = v101;

      v108(v99, v97);
      v48[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_shouldPersistIMQError] = 0;
      v103 = v127;
      sub_2457D1A78(v100, v102, &v127[v51]);

      sub_2457D2FA8(v103);
      (*(v130 + 8))(v129, v131);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_2457D05B0(uint64_t *a1, uint64_t a2, void *a3)
{
  result = sub_24590C3E4();
  if (result)
  {
    v6 = result;
    sub_2457CBDB0(*a1);
    v7 = sub_245910C34();

    v8 = sub_2458A1E14();
    v9 = [v8 layer];

    [a3 extent];
    v10 = sub_245911194();
    [v6 drawIDScanDebugUIWith:v7 layer:v9 size:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2457D06B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  if (v8 && (v9 = v8, v10 = [v8 voiceOverEnabled], v9, v10))
  {
    sub_24590C714();
    v11 = sub_24590F344();
    v12 = sub_245910F54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245767000, v11, v12, "VoiceOver is enabled, enabling manual capture button by default", v13, 2u);
      MEMORY[0x245D77B40](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v14 = sub_2458A1B04();
    [v14 setHidden_];
  }

  else
  {
    v15 = sub_245910D64();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    sub_245910D34();
    v16 = v0;
    v17 = sub_245910D24();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    *&v16[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_timeoutTask] = sub_24586CFCC(0, 0, v3, &unk_245917BC8, v18);
  }
}

uint64_t sub_2457D0968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24590F354();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_2459115A4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_245910D34();
  v4[9] = sub_245910D24();
  v8 = sub_245910CD4();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2457D0AB8, v8, v7);
}

uint64_t sub_2457D0AB8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docScanConfig);
  v2 = sub_24590D214();

  sub_2459117A4();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2457D0BD4;

  return sub_2458959E4(1000000000000000000 * v2, ((v2 >> 63) & 0xF21F494C589C0000) + ((v2 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
}

uint64_t sub_2457D0BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_2457D0F58;
  }

  else
  {
    v8 = sub_2457D0D6C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2457D0D6C()
{
  v19 = v0;
  v1 = v0[2];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    if (*(v9 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide))
    {
      v12 = 1801675106;
    }

    else
    {
      v12 = 0x746E6F7266;
    }

    if (*(v9 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_2458CC378(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_245767000, v3, v4, "Timeout duration has elapsed, enabling manual capture button for %s scan", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245D77B40](v11, -1, -1);
    MEMORY[0x245D77B40](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = sub_2458A1B04();
  [v15 setHidden_];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2457D0F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457D1018()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42[-1] - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v42[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42[-1] - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42[-1] - v13;
  sub_24579D5E0(0, &qword_27EE2B020);
  v15 = sub_24590D964();
  v16 = MEMORY[0x245D76600](v15);

  if (v16)
  {
    sub_24590C714();
    v17 = sub_24590F344();
    v18 = sub_245910F54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245767000, v17, v18, "Internal setting Skip Front and Back ID Scan is enabled", v19, 2u);
      MEMORY[0x245D77B40](v19, -1, -1);
    }

    v20 = *(v6 + 8);
    v20(v14, v5);
    v21 = sub_2457D151C();
    if (v21)
    {
      v22 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult;
      v23 = *&v1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult];
      v24 = *(v23 + 16);
      *(v23 + 16) = v21;
      v25 = v21;

      v26 = v25;

      v27 = *&v1[v22];
      v28 = *MEMORY[0x277CFF848];
      v29 = sub_24590E9D4();
      v30 = *(v29 - 8);
      (*(v30 + 104))(v4, v28, v29);
      (*(v30 + 56))(v4, 0, 1, v29);
      v31 = OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_iqCode;
      swift_beginAccess();

      sub_2457CB86C(v4, v27 + v31);
      swift_endAccess();

      v32 = [v1 navigationController];

      sub_24586CA74(v32, 2, 0, 0);

      return 1;
    }

    sub_24590C714();
    v38 = sub_24590F344();
    v39 = sub_245910F54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_245767000, v38, v39, "Internal setting Skip Front and Back ID Scan error; failed to inject proofing image", v40, 2u);
      MEMORY[0x245D77B40](v40, -1, -1);
    }

    v20(v12, v5);
  }

  else
  {
    sub_24590C714();
    v34 = sub_24590F344();
    v35 = sub_245910F54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2458CC378(0xD000000000000010, 0x8000000245926860, v42);
      _os_log_impl(&dword_245767000, v34, v35, "%s was called but Internal setting Skip Front and Back ID Scan is disabled", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x245D77B40](v37, -1, -1);
      MEMORY[0x245D77B40](v36, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

id sub_2457D151C()
{
  v1 = sub_24590C474();
  v2 = *(v1 - 8);
  v59 = v1;
  v60 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - v5;
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  sub_24590C714();
  v13 = v0;
  v14 = sub_24590F344();
  v15 = sub_245910F54();

  v16 = os_log_type_enabled(v14, v15);
  v17 = MEMORY[0x277CFF308];
  v18 = MEMORY[0x277CFF318];
  v56 = v13;
  if (v16)
  {
    v19 = swift_slowAlloc();
    v54 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v55 = v7;
    v22 = v21;
    v61 = v21;
    *v20 = 136315138;
    v23 = v13[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide];
    v24 = v60;
    if (v23)
    {
      v25 = v17;
    }

    else
    {
      v25 = v18;
    }

    v26 = v59;
    (*(v60 + 104))(v6, *v25, v59);
    v27 = sub_24590C464();
    v29 = v28;
    v30 = v6;
    v31 = v26;
    (*(v24 + 8))(v30, v26);
    v32 = sub_2458CC378(v27, v29, &v61);

    *(v20 + 4) = v32;
    _os_log_impl(&dword_245767000, v14, v15, "Internal settings enabled, will inject '%s' ID Image.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v33 = v22;
    v7 = v55;
    MEMORY[0x245D77B40](v33, -1, -1);
    MEMORY[0x245D77B40](v20, -1, -1);

    v34 = *(v54 + 8);
    v34(v12, v7);
    v35 = v24;
    v36 = sub_24590C3E4();
    if (!v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v31 = v59;

    v34 = *(v8 + 8);
    v34(v12, v7);
    v35 = v60;
    v36 = sub_24590C3E4();
    if (!v36)
    {
      goto LABEL_14;
    }
  }

  v37 = v36;
  v38 = v57;
  v39 = MEMORY[0x277CFF308];
  if (!v56[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide])
  {
    v39 = MEMORY[0x277CFF318];
  }

  (*(v35 + 104))(v57, *v39, v31);
  sub_24590C464();
  (*(v35 + 8))(v38, v31);
  v40 = sub_2459109C4();

  v41 = [v37 getReplacementProofingImage_];

  swift_unknownObjectRelease();
  if (v41)
  {
    v42 = v7;
    v43 = sub_24590C154();
    v45 = v44;

    v46 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_24578FB80(v43, v45);
    v47 = sub_24590C144();
    v48 = [v46 initWithData_];

    sub_24578FC28(v43, v45);
    if (v48)
    {
      sub_24590C6C4();
      sub_24578FC28(v43, v45);
      return v48;
    }

    sub_24578FC28(v43, v45);
    v7 = v42;
  }

LABEL_14:
  v50 = v58;
  sub_24590C714();
  v51 = sub_24590F344();
  v52 = sub_245910F64();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_245767000, v51, v52, "Failed to inject ID Image.", v53, 2u);
    MEMORY[0x245D77B40](v53, -1, -1);
  }

  v34(v50, v7);
  return 0;
}

uint64_t sub_2457D1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v51 = a1;
  v6 = sub_2459107E4();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = sub_245910814();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24590E9D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29BF0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v48[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE295E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v61 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v63 = &v48[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v48[-v21];
  v23 = *(v10 + 16);
  v62 = a3;
  v59 = v23;
  v23(&v48[-v21], a3, v9);
  v24 = *(v10 + 56);
  v60 = v10 + 56;
  v64 = v24;
  v24(v22, 0, 1, v9);
  v25 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastResult;
  swift_beginAccess();
  v26 = *(v13 + 56);
  sub_2457CB794(v22, v15);
  sub_2457CB794(&v4[v25], &v15[v26]);
  v27 = *(v10 + 48);
  if (v27(v15, 1, v9) == 1)
  {
    sub_245778F94(v22, &qword_27EE295E8);
    v28 = v27(&v15[v26], 1, v9);
    v29 = v64;
    if (v28 == 1)
    {
      result = sub_245778F94(v15, &qword_27EE295E8);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2457CB794(v15, v63);
  if (v27(&v15[v26], 1, v9) == 1)
  {
    sub_245778F94(v22, &qword_27EE295E8);
    (*(v10 + 8))(v63, v9);
    v29 = v64;
LABEL_6:
    sub_245778F94(v15, &unk_27EE29BF0);
LABEL_7:
    v31 = 1;
    v32 = &unk_280ADF000;
    goto LABEL_10;
  }

  v33 = v50;
  (*(v10 + 32))(v50, &v15[v26], v9);
  sub_2457D3108(&unk_27EE29C00, MEMORY[0x277CFF850]);
  v34 = v63;
  v49 = sub_245910934();
  v35 = *(v10 + 8);
  v35(v33, v9);
  sub_245778F94(v22, &qword_27EE295E8);
  v35(v34, v9);
  result = sub_245778F94(v15, &qword_27EE295E8);
  v29 = v64;
  if ((v49 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v32 = &unk_280ADF000;
  v36 = *&v4[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_resultCount];
  v37 = __OFADD__(v36, 1);
  v31 = v36 + 1;
  if (v37)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  v38 = v32[235];
  *&v4[v38] = v31;
  v39 = v61;
  v59(v61, v62, v9);
  v29(v39, 0, 1, v9);
  swift_beginAccess();
  sub_2457CB86C(v39, &v4[v25]);
  result = swift_endAccess();
  if (*&v4[v38] >= *&v4[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_repeatCount])
  {
    v29(v39, 1, 1, v9);
    swift_beginAccess();
    sub_2457CB86C(v39, &v4[v25]);
    swift_endAccess();
    *&v4[v38] = 0;
    sub_24579D5E0(0, &qword_27EE2ABC0);
    v40 = sub_245911034();
    v41 = swift_allocObject();
    v42 = v51;
    v41[2] = v4;
    v41[3] = v42;
    v41[4] = v52;
    aBlock[4] = sub_2457D2DD4;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_170;
    v43 = _Block_copy(aBlock);
    v44 = v4;

    v45 = v53;
    sub_245910804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2457D3108(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    v46 = v55;
    v47 = v58;
    sub_2459113A4();
    MEMORY[0x245D76690](0, v45, v46, v43);
    _Block_release(v43);

    (*(v57 + 8))(v46, v47);
    return (*(v54 + 8))(v45, v56);
  }

  return result;
}

void sub_2457D2248(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2457CC0DC();
  [v6 setHidden_];

  sub_24579D5E0(0, &qword_27EE29630);
  MEMORY[0x245D75D50](0.5, 1.0, 0.0);
  sub_2459111E4();

  v7 = objc_opt_self();
  v8 = *&a1[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidanceContainer];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  aBlock[4] = sub_2457D2E88;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_177_0;
  v10 = _Block_copy(aBlock);
  v11 = v8;
  v12 = a1;

  [v7 transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.25];

  _Block_release(v10);
  v13 = &v12[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastSpokenAlertMessage];
  v14 = *&v12[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastSpokenAlertMessage + 8];
  if (!v14 || (*v13 != a2 || v14 != a3) && (sub_245911714() & 1) == 0)
  {
    v15 = *MEMORY[0x277D76438];
    v16 = sub_2459109C4();
    UIAccessibilityPostNotification(v15, v16);

    *v13 = a2;
    *(v13 + 1) = a3;
  }
}

uint64_t sub_2457D2488()
{
  v1 = sub_2459107E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245910814();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v9 = sub_245911034();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_2457D2DB0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2457D3108(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2457D274C(uint64_t a1)
{
  v2 = sub_2457CC0DC();
  [v2 setHidden_];

  v3 = sub_2457CC22C();
  v4 = sub_2459109C4();
  [v3 setText_];

  sub_24579D5E0(0, &qword_27EE29630);
  MEMORY[0x245D75D50](0.5, 1.0, 0.0);
  sub_2459111E4();

  *(a1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastSpokenAlertMessage) = xmmword_245917A50;
}

void sub_2457D2858()
{
  v0 = sub_2457CC22C();
  v1 = sub_2459109C4();
  [v0 setText_];
}

void sub_2457D28D4()
{

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docInfo, &qword_27EE28FA0);

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastResult, &qword_27EE295E8);

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePromptFont);
}

id sub_2457D2A0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDScanViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2457D2BB0()
{
  sub_2457D34D4(319, &qword_280ADF780, MEMORY[0x277CFF300], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2457D34D4(319, &qword_280ADF778, MEMORY[0x277CFF850], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_2457D2D5C()
{
  result = qword_27EE29628;
  if (!qword_27EE29628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29628);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2457D2DE0()
{
  v1 = *(v0 + 24);
  v2 = sub_2457CC0DC();
  v4 = v2;
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  [v2 setAlpha_];
}

uint64_t objectdestroy_166Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_182Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2457D2F0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2457D2F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDCornersResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457D2FA8(uint64_t a1)
{
  v2 = type metadata accessor for IDCornersResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2457D3004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDCornersResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457D3068()
{
  v1 = *(type metadata accessor for IDCornersResult(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2457D05B0((v0 + v2), v4, v5);
}

uint64_t sub_2457D3108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2457D3150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457D0968(a1, v4, v5, v6);
}

void sub_2457D3214()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_autoCapturePath);
  *v2 = 0xD000000000000028;
  v2[1] = 0x80000002459268D0;
  v3 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docInfo;
  v4 = sub_24590C454();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = (v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastSpokenAlertMessage);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v7 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v7 + 16) = sub_24590C8B4();
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastResult;
  v9 = sub_24590E9D4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_resultCount) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_repeatCount) = 3;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameCount) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_timeoutTask) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_shouldPersistIMQError) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidanceContainer) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt) = 0;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePromptFont) = 0;
  sub_2459115D4();
  __break(1u);
}

void sub_2457D3418()
{
  sub_2457D34D4(319, &qword_27EE29680, type metadata accessor for CGPoint, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24590E9D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2457D34D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_2457D355C()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingImagePreviewViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingImagePreviewViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingImagePreviewViewController____lazy_storage___imageView);
  }

  else
  {
    v4 = sub_2457D35C0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457D35C0(uint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setContentMode_];
  [v6 setAccessibilityIgnoresInvertColors_];

  v7 = [v6 layer];
  sub_24577FB34();
  v8 = sub_24590D8B4();
  v9 = MEMORY[0x245D76600](v8);

  if (v9)
  {
    sub_24590C714();
    v10 = sub_24590F344();
    v11 = sub_245910F54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245767000, v10, v11, "CALayer internal setting is enabled to allow screen capture on redacted layer", v12, 2u);
      MEMORY[0x245D77B40](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    [v7 setDisableUpdateMask_];
  }

  [v6 setImage_];
  return v6;
}

void sub_2457D3834()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityProofingImagePreviewViewController();
  v21.receiver = v0;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 layer];
  sub_24577FB34();
  v13 = sub_24590D8B4();
  v14 = MEMORY[0x245D76600](v13);

  if (v14)
  {
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245767000, v15, v16, "CALayer internal setting is enabled to allow screen capture on redacted layer", v17, 2u);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    [v12 setDisableUpdateMask_];
  }

  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2457D355C();
    [v19 addSubview_];

    return;
  }

LABEL_12:
  __break(1u);
}

id sub_2457D3C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingImagePreviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2457D3CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  if (!a2)
  {
    goto LABEL_20;
  }

  result = sub_24590D614();
  if (!result)
  {
    goto LABEL_20;
  }

  v18 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v40 = result;
    v35 = sub_245911424();
    result = v40;
    if (v35)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:

LABEL_20:
    sub_24590C714();
    v36 = sub_24590F344();
    v37 = sub_245910F64();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245767000, v36, v37, "Options do not exist in the liveness config. Cannot continue building the UI", v38, 2u);
      MEMORY[0x245D77B40](v38, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x245D76B30](0);
  }

  else
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v19 = *(result + 32);
  }

  v20 = v19;

  v21 = sub_24590E7B4();
  if (v21)
  {
    v22 = v21;
    if (*(v21 + 16))
    {
      v23 = sub_24588C5BC(a3, a4);
      if (v24)
      {
        v25 = (*(v22 + 56) + 16 * v23);
        v26 = *v25;
        v27 = v25[1];

        v28 = sub_24586C880(v26, v27);

        return v28;
      }
    }

    sub_24590C714();
    v29 = sub_24590F344();
    v30 = sub_245910F64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245767000, v29, v30, "Caption do not contain text in the liveness config. Cannot continue building the UI", v31, 2u);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
  }

  else
  {
    sub_24590C714();
    v32 = sub_24590F344();
    v33 = sub_245910F64();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245767000, v32, v33, "Options do not contain caption in the liveness config. Cannot continue building the UI", v34, 2u);
      MEMORY[0x245D77B40](v34, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
  }

  return 0;
}

unint64_t sub_2457D408C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_13;
  }

  result = sub_24590D614();
  if (!result)
  {
    goto LABEL_13;
  }

  v8 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v14 = result;
    v15 = sub_245911424();
    result = v14;
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

LABEL_13:
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F64();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "Options do not exist in the liveness config. Cannot continue building the UI", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x245D76B30](0);
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = *(result + 32);
  }

  v10 = v9;

  v12 = sub_24590E794();
  if (v11)
  {
    v13 = v11;

    v12 = sub_24586C880(v12, v13);
    swift_bridgeObjectRelease_n();
  }

  return v12;
}

unint64_t sub_2457D42B4(uint64_t a1, void *a2)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  if (!a2)
  {
    sub_24590C714();
    v21 = sub_24590F344();
    v22 = sub_245910F54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245767000, v21, v22, "livenessConsentUIConfig doesn't exist, cannot fetch your photo text", v23, 2u);
      MEMORY[0x245D77B40](v23, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  v13 = a2;
  result = sub_24590D614();
  if (!result)
  {
    sub_24590C714();
    v24 = sub_24590F344();
    v25 = sub_245910F54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_245767000, v24, v25, "livenessConsentUIConfig doesn't have options, cannot fetch your photo text", v26, 2u);
      MEMORY[0x245D77B40](v26, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    return 0;
  }

  v15 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v27 = result;
  v28 = sub_245911424();
  result = v27;
  if (v28 < 2)
  {
LABEL_19:

    sub_24590C714();
    v29 = sub_24590F344();
    v30 = sub_245910F54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245767000, v29, v30, "livenessConsentUIConfig doesn't have more than one option, cannot fetch your photo text", v31, 2u);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
    return 0;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x245D76B30](1);
  }

  else
  {
    if (*(v15 + 16) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v16 = *(result + 40);
  }

  v17 = v16;

  v18 = sub_24590E794();
  v20 = v19;

  if (v20)
  {

    v18 = sub_24586C880(v18, v20);
    swift_bridgeObjectRelease_n();
  }

  return v18;
}

uint64_t sub_2457D46AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(v3 + 8))
  {
    return 0;
  }

  result = a3();
  if (v5)
  {
    v6 = sub_24586C880(result, v5);

    return v6;
  }

  return result;
}

unint64_t sub_2457D47A0(uint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (!a1)
  {
    goto LABEL_20;
  }

  result = sub_24590D614();
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v27 = result;
    v28 = sub_245911424();
    result = v27;
    if (v28)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:

LABEL_20:
    sub_24590C714();
    v29 = sub_24590F344();
    v30 = sub_245910F64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245767000, v29, v30, "Options does not exist in the liveness config. Cannot continue building the UI", v31, 2u);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x245D76B30](0);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(result + 32);
  }

  v15 = v14;

  v16 = sub_24590E7B4();
  if (v16)
  {
    v17 = v16;
    if (*(v16 + 16))
    {
      v18 = sub_24588C5BC(0x4C52556B6E696CLL, 0xE700000000000000);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 16 * v18);

        return v20;
      }
    }

    sub_24590C714();
    v21 = sub_24590F344();
    v22 = sub_245910F64();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245767000, v21, v22, "Caption does not contain linkURL in the liveness config. Cannot continue building the UI", v23, 2u);
      MEMORY[0x245D77B40](v23, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
  }

  else
  {
    sub_24590C714();
    v24 = sub_24590F344();
    v25 = sub_245910F64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_245767000, v24, v25, "Options does not contain caption in the liveness config. Cannot continue building the UI", v26, 2u);
      MEMORY[0x245D77B40](v26, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  return 0;
}

id sub_2457D4B28()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = sub_2457D4B88();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457D4B88()
{
  type metadata accessor for SelfSizingTableView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = v0;
  [v1 setAllowsSelection_];
  v2 = [v1 layer];

  [v2 setCornerRadius_];
  [v1 setRowHeight_];
  [v1 setScrollEnabled_];
  [v1 setEstimatedRowHeight_];

  return v1;
}

char *sub_2457D4C7C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewCellIdentifier];
  *v5 = 0xD00000000000002CLL;
  *(v5 + 1) = 0x8000000245926AD0;
  v6 = OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_fileManager;
  *&v2[v6] = [objc_opt_self() defaultManager];
  *&v2[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewItems] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView] = 0;
  v7 = *(a1 + 240);
  v8 = &v2[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_viewConfiguration];
  *v8 = a1;
  v8[1] = v7;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_proofingFlowManager] = a1;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_documentsRepository] = a2;
  v9 = v7;
  swift_retain_n();
  v10 = v9;
  v11 = sub_24588E708(a1, v7, v2);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = &v11[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v14 = *&v11[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v13 = sub_2457D8A44;
  v13[1] = v12;
  v15 = v11;
  sub_245771C34(v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = &v15[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v18 = *&v15[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v17 = sub_2457D8A6C;
  v17[1] = v16;
  v19 = v15;
  sub_245771C34(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = &v19[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  v22 = *&v19[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v21 = sub_2457D8A94;
  v21[1] = v20;
  sub_245771C34(v22);

  return v19;
}

uint64_t sub_2457D4E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_24590C094();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_viewConfiguration + 8);
  if (v10)
  {

    v11 = v10;
    sub_24590D5B4();
    v13 = v12;

    if (v13)
    {
      sub_24590C084();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        return sub_245778F94(v4, &unk_27EE29470);
      }

      else
      {
        (*(v6 + 32))(v9, v4, v5);
        v14 = [objc_opt_self() sharedApplication];
        v15 = sub_24590C034();
        sub_2458B880C(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_2457D8B88(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey);
        v16 = sub_2459108E4();

        [v14 openURL:v15 options:v16 completionHandler:0];

        return (*(v6 + 8))(v9, v5);
      }
    }
  }

  return result;
}

id sub_2457D51FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for IdentityProofingLivenessConsentViewController();
  v19.receiver = v0;
  v19.super_class = v4;
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];

    v8 = sub_2457D4B28();
    sub_2458A6BA0(v8, 0, 1, 0, 1);

    v9 = OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView;
    v10 = *&v0[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView];
    type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = v10;
    v13 = sub_2459109C4();
    [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

    [*&v0[v9] setDelegate_];
    [*&v0[v9] setDataSource_];
    sub_2457D7434();
    v14 = sub_245910D64();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_245910D34();
    v15 = v0;
    v16 = sub_245910D24();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_2458B90EC(0, 0, v3, &unk_245917DB0, v17);

    sub_2457D8E20();
    sub_2459110A4();
    MEMORY[0x245D76610]();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2457D5548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_245910D34();
  v4[4] = sub_245910D24();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2457D55F8;

  return sub_2457D5884();
}

uint64_t sub_2457D55F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_245910CD4();
    v7 = v6;
    v8 = sub_2457D580C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_245910CD4();
    v7 = v9;
    v8 = sub_2457D5778;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_2457D5778()
{
  v1 = v0[7];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewItems) = v1;

  v3 = sub_2457D4B28();
  [v3 reloadData];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2457D580C()
{
  v1 = *(v0 + 48);

  sub_2457D6284(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457D5884()
{
  v1[169] = v0;
  sub_245910D34();
  v1[170] = sub_245910D24();
  v3 = sub_245910CD4();
  v1[171] = v3;
  v1[172] = v2;

  return MEMORY[0x2822009F8](sub_2457D5920, v3, v2);
}

uint64_t sub_2457D5920()
{
  v1 = v0[169];
  v2 = swift_task_alloc();
  v0[173] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A8);
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  v0[174] = v3;
  *(v3 + 16) = v1;
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 2, v0 + 167, sub_2457D5A24, v0 + 162);
}

uint64_t sub_2457D5A24()
{
  v1 = *(v0 + 1336);
  *(v0 + 1400) = v1;
  v2 = v1;

  return MEMORY[0x282200928](v0 + 656, v0 + 1344, sub_2457D5A94, v0 + 1296);
}

uint64_t sub_2457D5AB0()
{
  v1 = *(v0 + 1344);
  v2 = (*(v0 + 1352) + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_viewConfiguration);
  v3 = *v2;
  v4 = v2[1];
  v5 = v4;

  v6 = v1;
  v7 = sub_2457D408C(v3, v4);
  v9 = v8;

  if (v9)
  {
    v10 = *(v0 + 1400);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = v10;
    v13 = sub_24580A5DC(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_24580A5DC((v14 > 1), v15 + 1, 1, v13);
    }

    v16 = *(v0 + 1400);
    *(v13 + 2) = v15 + 1;
    v17 = &v13[40 * v15];
    *(v17 + 4) = v7;
    *(v17 + 5) = v9;
    *(v17 + 6) = v16;
    *(v17 + 7) = sub_2457D8D18;
    *(v17 + 8) = v11;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = v2[1];
  v19 = v18;

  v21 = sub_2457D42B4(v20, v18);
  v23 = v22;

  if (v23)
  {
    if (v1)
    {
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v6;
      v26 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_24580A5DC(0, *(v13 + 2) + 1, 1, v13);
      }

      v28 = *(v13 + 2);
      v27 = *(v13 + 3);
      if (v28 >= v27 >> 1)
      {
        v13 = sub_24580A5DC((v27 > 1), v28 + 1, 1, v13);
      }

      *(v13 + 2) = v28 + 1;
      v29 = &v13[40 * v28];
      *(v29 + 4) = v21;
      *(v29 + 5) = v23;
      *(v29 + 6) = v1;
      *(v29 + 7) = sub_2457D8D10;
      *(v29 + 8) = v25;
    }

    else
    {
      v31 = *(v0 + 1400);
    }
  }

  else
  {
    v30 = *(v0 + 1400);
  }

  *(v0 + 1408) = v13;

  return MEMORY[0x282200920](v0 + 656, v0 + 1344, sub_2457D5D70, v0 + 1296);
}

uint64_t sub_2457D5D8C()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_2457D5DF8, v0 + 656);
}

uint64_t sub_2457D5E14()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1408);

  return v1(v2);
}

uint64_t sub_2457D5E88(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2457D5F1C;

  return sub_2457D7778();
}

uint64_t sub_2457D5F1C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2457D8E6C, 0, 0);
}

uint64_t sub_2457D601C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2457D60B0;

  return sub_2457D7ED0();
}

uint64_t sub_2457D60B0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2457D61B0, 0, 0);
}

void sub_2457D61D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2457D645C();
  }
}

void sub_2457D6228(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2457D68E4(a2);
  }
}

uint64_t sub_2457D6284(void *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = a1;
  v7 = sub_24590F344();
  v8 = sub_245910F64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_245767000, v7, v8, "Failed to setup table view items in the liveness consent screen: %@", v9, 0xCu);
    sub_245778F94(v10, &qword_27EE297C0);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  sub_245883548(a1);
}

void sub_2457D645C()
{
  v1 = sub_24590F354();
  v35 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_24590C094();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = v0;
  sub_2457D7598(v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v34 = v1;
    (*(v11 + 32))(v16, v9, v10);
    v21 = *&v0[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_viewConfiguration + 8];
    v22 = v21;

    sub_2457D408C(v23, v21);
    v25 = v24;

    if (v25)
    {
      (*(v11 + 16))(v14, v16, v10);
      v26 = objc_allocWithZone(type metadata accessor for IdentityProofingLivenessVideoPreviewViewController());
      v27 = sub_2457D8E70(v14);
      v28 = sub_2459109C4();

      [v27 setTitle_];

      v29 = [v17 navigationController];
      if (!v29)
      {
        (*(v11 + 8))(v16, v10);

        return;
      }

      v30 = v29;
      [v29 pushViewController:v27 animated:1];
    }

    else
    {
      sub_24590C714();
      v31 = sub_24590F344();
      v32 = sub_245910F64();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245767000, v31, v32, "Unable to show the preview as the title text is not set", v33, 2u);
        MEMORY[0x245D77B40](v33, -1, -1);
      }

      (*(v35 + 8))(v6, v34);
    }

    (*(v11 + 8))(v16, v10);
    return;
  }

  sub_245778F94(v9, &unk_27EE29470);
  sub_24590C714();
  v18 = sub_24590F344();
  v19 = sub_245910F64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245767000, v18, v19, "Cannot play the video as it doesn't exist", v20, 2u);
    MEMORY[0x245D77B40](v20, -1, -1);
  }

  (*(v35 + 8))(v4, v1);
}

void sub_2457D68E4(void *a1)
{
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_viewConfiguration + 8];
  v8 = v7;

  sub_2457D42B4(v9, v7);
  v11 = v10;

  if (v11)
  {
    v12 = type metadata accessor for IdentityProofingImagePreviewViewController();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingImagePreviewViewController____lazy_storage___imageView] = 0;
    *&v13[OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingImagePreviewViewController_image] = a1;
    v22.receiver = v13;
    v22.super_class = v12;
    v14 = a1;
    v15 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
    v16 = sub_2459109C4();

    [v15 setTitle_];

    v17 = [v1 navigationController];
    if (v17)
    {
      v18 = v17;
      [v17 pushViewController:v15 animated:1];
    }
  }

  else
  {
    sub_24590C714();
    v19 = sub_24590F344();
    v20 = sub_245910F64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245767000, v19, v20, "Unable to show the preview as the title text is not set", v21, 2u);
      MEMORY[0x245D77B40](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_2457D6B40(char a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24590EA74();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590F354();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v37 - v12;
  v14 = sub_24590C094();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v37 - v19;
  v21 = sub_245910D64();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_245910D34();
  v22 = v1;
  v23 = sub_245910D24();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  *(v24 + 32) = v22;
  *(v24 + 40) = a1;
  sub_2458B90EC(0, 0, v20, &unk_245917D78, v24);

  sub_245883548(0);

  sub_2457D7598(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_245778F94(v13, &unk_27EE29470);
    sub_24590C714();
    v26 = sub_24590F344();
    v27 = sub_245910F64();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_245767000, v26, v27, "No liveness video URL to delete", v28, 2u);
      MEMORY[0x245D77B40](v28, -1, -1);
    }

    (*(v41 + 8))(v10, v42);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v29 = *&v22[OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_fileManager];
    v30 = sub_24590C034();
    v43[0] = 0;
    v31 = [v29 removeItemAtURL:v30 error:v43];

    if (v31)
    {
      v32 = *(v15 + 8);
      v33 = v43[0];
      v32(v17, v14);
    }

    else
    {
      v34 = v43[0];
      v35 = sub_24590BFA4();

      swift_willThrow();
      v37[1] = "manualReviewLivenessVideo.mp4";
      (*(v38 + 104))(v40, *MEMORY[0x277CFFD48], v39);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_2457D8B88(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v36 = swift_allocError();
      sub_24590EA94();
      sub_24590C714();
      sub_24590C724();

      (*(v41 + 8))(v8, v42);
      (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t sub_2457D7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_245910D34();
  *(v5 + 24) = sub_245910D24();
  v7 = sub_245910CD4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2457D7230, v7, v6);
}

uint64_t sub_2457D7230()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_proofingFlowManager);

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2457D72F0;
  v2 = *(v0 + 64);
  v3 = MEMORY[0x277D84F90];

  return sub_245871988(v2, v3, 1);
}

uint64_t sub_2457D72F0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2457B3D20, v3, v2);
}

void sub_2457D7434()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    v3 = &selRef_systemGray6Color;
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 != 2)
    {
      return;
    }

    v3 = &selRef_systemGray5Color;
  }

  v6 = sub_2457D4B28();
  v7 = [objc_opt_self() *v3];
  [v6 setBackgroundColor_];
}

uint64_t sub_2457D7598@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24590C094();
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_fileManager) URLsForDirectory:9 inDomains:1];
  v7 = sub_245910C44();

  if (*(v7 + 16))
  {
    (*(v11 + 16))(v5, v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v3);

    sub_24590C044();
    (*(v11 + 8))(v5, v3);
    return (*(v11 + 56))(a1, 0, 1, v3);
  }

  else
  {

    v9 = *(v11 + 56);

    return v9(a1, 1, 1, v3);
  }
}

uint64_t sub_2457D7778()
{
  v1[3] = v0;
  v2 = sub_24590F354();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  v1[7] = swift_task_alloc();
  v3 = sub_24590C094();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_245910D34();
  v1[11] = sub_245910D24();
  v5 = sub_245910CD4();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x2822009F8](sub_2457D7900, v5, v4);
}

uint64_t sub_2457D7900()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_2457D7598(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];

    sub_245778F94(v4, &unk_27EE29470);
    sub_24590C714();
    v5 = sub_24590F344();
    v6 = sub_245910F54();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245767000, v5, v6, "Unable to fetch the liveness video URL. Cannot generate a thumbnail", v11, 2u);
      MEMORY[0x245D77B40](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v14 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v15 = sub_24590C034();
    v0[14] = [v14 initWithURL:v15 options:0];

    v0[15] = sub_2459111A4();
    v0[16] = v16;
    v0[17] = v17;

    return MEMORY[0x2822009F8](sub_2457D7B24, 0, 0);
  }
}

uint64_t sub_2457D7B24()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = [objc_allocWithZone(MEMORY[0x277CE6408]) initWithAsset_];
  v0[18] = v4;
  [v4 setAppliesPreferredTrackTransform_];
  [v4 setMaximumSize_];
  v5 = swift_task_alloc();
  v0[19] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A8);
  *v6 = v0;
  v6[1] = sub_2457D7C9C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000022, 0x8000000245926B00, sub_2457D8AB8, v5, v7);
}

uint64_t sub_2457D7C9C()
{

  return MEMORY[0x2822009F8](sub_2457D7DB4, 0, 0);
}

uint64_t sub_2457D7DB4()
{
  *(v0 + 168) = *(v0 + 16);
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2457D7E20, v1, v2);
}

uint64_t sub_2457D7E20()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[21];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2457D7ED0()
{
  v1[3] = v0;
  v2 = sub_24590F354();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_245910D34();
  v1[7] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457D7FC4, v4, v3);
}

uint64_t sub_2457D7FC4()
{
  v1 = v0[3];

  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_documentsRepository);
  v3 = sub_24580F06C(&unk_285882A60);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A0);
  sub_245911044();

  v5 = v0[2];
  if (v5 && (v6 = sub_24590D774(), v5, v6) && (v7 = sub_24590C8F4(), v9 = v8, v6, v9 >> 60 != 15))
  {
    v20 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v21 = sub_24590C144();
    v17 = [v20 initWithData_];

    sub_245771C44(v7, v9);
  }

  else
  {
    sub_24590C714();
    v10 = sub_24590F344();
    v11 = sub_245910F54();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_245767000, v10, v11, "Unable to fetch the selfie image data. Cannot generate a thumbnail", v16, 2u);
      MEMORY[0x245D77B40](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v17 = 0;
  }

  v18 = v0[1];

  return v18(v17);
}

void sub_2457D81F0()
{

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_viewConfiguration + 8);

  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController____lazy_storage___tableView);
}

id sub_2457D8294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingLivenessConsentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2457D83A8(void *a1)
{
  v3 = sub_2459109C4();
  v4 = sub_24590C244();
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:v4];

  type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    result = sub_24590C264();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewItems);
      if (result < *(v9 + 16))
      {
        v10 = v9 + 40 * result;
        v12 = *(v10 + 48);
        v11 = *(v10 + 56);
        v13 = v12;

        sub_245771BB4(v11);
        v14 = sub_24584FC48();
        v15 = sub_2459109C4();
        [v14 setText_];

        v16 = v13;
        sub_245850694(v12);

        v17 = v5;
        [v7 setAccessoryType_];
        [a1 setAllowsSelection_];

        sub_245771C34(v11);

        return v7;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = objc_allocWithZone(MEMORY[0x277D75B48]);

    return [v18 init];
  }

  return result;
}

unint64_t sub_2457D86B0(void *a1)
{
  v3 = sub_24590C244();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  result = sub_24590C264();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI45IdentityProofingLivenessConsentViewController_tableViewItems);
  if (result >= *(v5 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5 + 40 * result;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *(v6 + 48);

    v9 = sub_245771BB4(v7);
    v7(v9);

    return sub_245771C34(v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_2457D89A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2457D89EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2457D8AC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_2457D7194(a1, v4, v5, v6, v7);
}

uint64_t sub_2457D8B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2457D8BD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2457AA49C;

  return sub_2457D5E88(a1);
}

uint64_t sub_2457D8C70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2457A18F4;

  return sub_2457D601C(a1);
}

uint64_t objectdestroy_109Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457D8D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457D5548(a1, v4, v5, v6);
}

unint64_t sub_2457D8E20()
{
  result = qword_27EE2A9A0;
  if (!qword_27EE2A9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2A9A0);
  }

  return result;
}

id sub_2457D8E70(char *a1)
{
  v2 = v1;
  v4 = sub_24590C094();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible] = 1;
  v8 = &v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_timeObserverToken];
  *v8 = 0u;
  v8[1] = 0u;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_autoHideWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlTimeOutInterval] = 0x4008000000000000;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_animationDuration] = 0x3FD3333333333333;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playPauseImageSize] = 0x403E000000000000;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playPauseButtonSize] = 0x4052C00000000000;
  v9 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_centerPlayPauseButton;
  *&v2[v9] = sub_2457D9134();
  v10 = *(v5 + 16);
  v10(v7, a1, v4);
  v11 = objc_allocWithZone(MEMORY[0x277CE65B0]);
  v12 = sub_24590C034();
  v13 = [v11 initWithURL_];

  v14 = *(v5 + 8);
  v14(v7, v4);
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playerItem] = v13;
  v10(v7, a1, v4);
  v15 = objc_allocWithZone(MEMORY[0x277CE6598]);
  v16 = sub_24590C034();
  v17 = [v15 initWithURL_];

  v14(v7, v4);
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_player] = v17;
  v18 = [objc_opt_self() playerLayerWithPlayer_];
  *&v2[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playerLayer] = v18;
  v19 = type metadata accessor for IdentityProofingLivenessVideoPreviewViewController();
  v22.receiver = v2;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  v14(a1, v4);
  return v20;
}

id sub_2457D9134()
{
  v0 = sub_24590F404();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24590F424();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() buttonWithType_];
  v6 = objc_opt_self();
  v7 = [v6 systemWhiteColor];
  [v5 setTintColor_];

  v8 = v5;
  sub_24590F3F4();
  sub_24590F434();
  v9 = [v6 systemFillColor];
  v12[3] = v1;
  v12[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_24590F414();

  (*(v2 + 8))(v4, v1);
  sub_2459111B4();

  return v8;
}

void sub_2457D9320()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityProofingLivenessVideoPreviewViewController();
  v30.receiver = v0;
  v30.super_class = v6;
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = &off_278E87000;
  v13 = [v10 layer];
  sub_24579D5E0(0, &qword_27EE2B020);
  v14 = sub_24590D8B4();
  v15 = MEMORY[0x245D76600](v14);

  if (v15)
  {
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "CALayer internal setting is enabled to allow screen capture on redacted layer", v18, 2u);
      v19 = v18;
      v12 = &off_278E87000;
      MEMORY[0x245D77B40](v19, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    [v13 setDisableUpdateMask_];
  }

  v20 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playerLayer;
  [*&v1[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playerLayer] setVideoGravity_];
  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v21 v12[427]];

  [v23 insertSublayer:*&v1[v20] atIndex:0];
  sub_2457D9CB4();
  v24 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_toggleControlsVisibility];
  v25 = [v1 view];
  if (v25)
  {
    v26 = v25;
    [v25 addGestureRecognizer_];

    sub_2457DA368();
    v27 = [objc_opt_self() defaultCenter];
    v28 = sub_2459109C4();
    v29 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_player] currentItem];
    [v27 addObserver:v1 selector:sel_playerDidFinishPlayingWithNotification_ name:v28 object:v29];

    return;
  }

LABEL_14:
  __break(1u);
}

void sub_2457D9750()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_player];
  v2 = *(MEMORY[0x277CC08F0] + 16);
  v7 = *MEMORY[0x277CC08F0];
  v8 = *(MEMORY[0x277CC08F0] + 8);
  v9 = v2;
  [v1 seekToTime_];
  sub_2457DA030();
  v3 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible;
  v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible] = (v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible] & 1) == 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v11 = sub_2457DAA3C;
  v12 = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_2458935A8;
  v10 = &block_descriptor_41;
  v6 = _Block_copy(&v7);
  v0;

  [v4 animateWithDuration:v6 animations:0.3];
  _Block_release(v6);
  if (v0[v3] == 1)
  {
    sub_2457DA368();
  }
}

id sub_2457D999C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for IdentityProofingLivenessVideoPreviewViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playerLayer];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    v16 = CGRectOffset(v15, 0.0, 20.0);
    [v1 setFrame_];

    v12 = *&v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_centerPlayPauseButton];
    v13 = [v12 layer];
    [v12 bounds];
    [v13 setCornerRadius_];

    return [v12 setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2457D9B28()
{
  sub_2457DA9C0(&v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_timeObserverToken], &v5);
  if (v6)
  {
    sub_2457AA3F0(&v5, &v7);
    v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_player];
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    v2 = v1;
    [v2 removeTimeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_2457B67E4(&v5);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for IdentityProofingLivenessVideoPreviewViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2457D9CB4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_centerPlayPauseButton];
  [result addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245917DC0;
  v5 = [v3 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v3 centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = objc_opt_self();
  v12 = [v10 centerYAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v13;
  v14 = [v3 widthAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v4 + 48) = v15;
  v16 = [v3 heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v4 + 56) = v17;
  sub_24579D5E0(0, &qword_27EE291F0);
  v18 = sub_245910C34();

  [v11 activateConstraints_];

  v19 = [objc_opt_self() configurationWithPointSize:7 weight:30.0];
  v20 = sub_2459109C4();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  [v3 setImage:v21 forState:0];

  return [v3 addTarget:v0 action:sel_togglePlayPause forControlEvents:64];
}

uint64_t sub_2457DA030()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_player;
  v2 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_player) timeControlStatus];
  v3 = *(v0 + v1);
  if (v2 == 2)
  {
    [v3 pause];
  }

  else
  {
    [v3 play];
  }

  v4 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_centerPlayPauseButton);
  v5 = [objc_opt_self() configurationWithPointSize:7 weight:30.0];
  v6 = sub_2459109C4();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  [v4 setImage:v7 forState:0];

  return sub_2457DA368();
}

void sub_2457DA1F8()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible;
  v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible] = (v0[OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible] & 1) == 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v5[4] = sub_2457DAA3C;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2458935A8;
  v5[3] = &block_descriptor_34;
  v4 = _Block_copy(v5);
  v0;

  [v2 animateWithDuration:v4 animations:0.3];
  _Block_release(v4);
  if (v0[v1] == 1)
  {
    sub_2457DA368();
  }
}

uint64_t sub_2457DA368()
{
  v1 = sub_245910834();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = sub_2459107E4();
  MEMORY[0x28223BE20](v7);
  v8 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_autoHideWorkItem;
  if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_autoHideWorkItem))
  {

    sub_245910854();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2457DA818;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_14;
  _Block_copy(aBlock);
  v19 = MEMORY[0x277D84F90];
  sub_245780A50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  sub_245910864();
  swift_allocObject();
  v10 = sub_245910844();

  *(v0 + v8) = v10;

  sub_24579D5E0(0, &qword_27EE2ABC0);
  v11 = sub_245911034();
  sub_245910824();
  sub_245910874();
  v12 = *(v17 + 8);
  v13 = v4;
  v14 = v18;
  v12(v13, v18);
  sub_245911014();

  return (v12)(v6, v14);
}

void sub_2457DA670()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible;
    *(Strong + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible) = (*(Strong + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible) & 1) == 0;
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = sub_2457DA838;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_27;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v3 animateWithDuration:v5 animations:0.3];
    _Block_release(v5);
    if (*(v2 + v1) == 1)
    {
      sub_2457DA368();
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2457DA83C()
{
  v1 = *(v0 + 16);
  v2 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible))
  {
    v2 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_centerPlayPauseButton) setAlpha_];
}

void sub_2457DA874()
{
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlsVisible) = 1;
  v1 = (v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_timeObserverToken);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_autoHideWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_controlTimeOutInterval) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_animationDuration) = 0x3FD3333333333333;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playPauseImageSize) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_playPauseButtonSize) = 0x4052C00000000000;
  v2 = OBJC_IVAR____TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController_centerPlayPauseButton;
  *(v0 + v2) = sub_2457D9134();
  sub_2459115D4();
  __break(1u);
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

uint64_t sub_2457DA9C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CoreIDVUI::DataGroupIdentifier_optional __swiftcall DataGroupIdentifier.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 117)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 97)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DataGroupIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 117;
  }

  else
  {
    return 97;
  }
}

unint64_t sub_2457DAA90()
{
  result = qword_27EE29820;
  if (!qword_27EE29820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29820);
  }

  return result;
}

uint64_t sub_2457DAAE4()
{
  v1 = *v0;
  sub_245911824();
  if (v1)
  {
    v2 = 117;
  }

  else
  {
    v2 = 97;
  }

  MEMORY[0x245D76E70](v2);
  return sub_245911864();
}

uint64_t sub_2457DAB38()
{
  if (*v0)
  {
    v1 = 117;
  }

  else
  {
    v1 = 97;
  }

  return MEMORY[0x245D76E70](v1);
}

uint64_t sub_2457DAB74()
{
  v1 = *v0;
  sub_245911824();
  if (v1)
  {
    v2 = 117;
  }

  else
  {
    v2 = 97;
  }

  MEMORY[0x245D76E70](v2);
  return sub_245911864();
}

void *sub_2457DABC4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 117)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 97)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2457DABE4(uint64_t *a1@<X8>)
{
  v2 = 97;
  if (*v1)
  {
    v2 = 117;
  }

  *a1 = v2;
}

unint64_t sub_2457DAC04()
{
  result = qword_27EE29828;
  if (!qword_27EE29828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29828);
  }

  return result;
}

uint64_t sub_2457DACEC(char a1)
{
  result = 0x746E656D75636F64;
  switch(a1)
  {
    case 1:
      result = 0x726575737369;
      break;
    case 2:
      result = 0x7265646C6F68;
      break;
    case 3:
      result = 0x65626D754E636F64;
      break;
    case 4:
      result = 0x65626D754E636F64;
      break;
    case 5:
      result = 0x6C616E6F6974616ELL;
      break;
    case 6:
      result = 0x6942664F65746164;
      break;
    case 7:
      result = 0x6B63656843626F64;
      break;
    case 8:
      result = 0x7265646E6567;
      break;
    case 9:
      result = 0x7845664F65746164;
      break;
    case 10:
      result = 0x6843797269707865;
      break;
    case 11:
    case 12:
      result = 0x6C616E6F6974706FLL;
      break;
    case 13:
      result = 0x7469736F706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2457DAEA4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2457DACEC(*a1);
  v5 = v4;
  if (v3 == sub_2457DACEC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_245911714();
  }

  return v8 & 1;
}

uint64_t sub_2457DAF2C()
{
  v1 = *v0;
  sub_245911824();
  sub_2457DACEC(v1);
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_2457DAF90()
{
  sub_2457DACEC(*v0);
  sub_245910AF4();
}

uint64_t sub_2457DAFE4()
{
  v1 = *v0;
  sub_245911824();
  sub_2457DACEC(v1);
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_2457DB044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2457DC9E8();
  *a1 = result;
  return result;
}

uint64_t sub_2457DB074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2457DACEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2457DB0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2457DC9E8();
  *a1 = result;
  return result;
}

uint64_t sub_2457DB100(uint64_t a1)
{
  v2 = sub_2457DD394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2457DB13C(uint64_t a1)
{
  v2 = sub_2457DD394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2457DB178()
{
  v1 = sub_24590BE34();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v27 = v8;
  v28 = v7;
  v25 = 15420;
  v26 = 0xE200000000000000;
  v9 = sub_24590C234();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_245778CE8();

  sub_245911334();
  v11 = v10;
  sub_245778F94(v6, &qword_27EE29850);
  if (v11)
  {
    v27 = v8;
    v28 = v7;
    v25 = 60;
    v26 = 0xE100000000000000;
    v23 = 32;
    v24 = 0xE100000000000000;
  }

  else
  {

    v12 = sub_245910BE4();
    v13 = MEMORY[0x245D76100](v12);
    v15 = v14;

    v27 = v13;
    v28 = v15;
    v25 = 60;
    v26 = 0xE100000000000000;
    v23 = 32;
    v24 = 0xE100000000000000;
  }

  v16 = sub_245911314();
  v18 = v17;

  v27 = v16;
  v28 = v18;
  sub_24590BE24();
  v19 = sub_245911304();
  (*(v21 + 8))(v3, v22);

  return v19;
}

uint64_t sub_2457DB460()
{
  v0 = sub_24590F354();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24590EA74();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590C1C4();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590C234();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590CB04();
  v21 = v35;
  v32 = v2;
  v33 = v5;
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_24590C204();
  v23 = sub_24590C214();
  (*(v9 + 8))(v11, v8);
  [v22 setLocale_];

  v24 = sub_2459109C4();
  [v22 setDateFormat_];

  v25 = sub_2459109C4();

  v26 = [v22 dateFromString_];

  if (v26)
  {
    sub_24590C1A4();

    v27 = sub_2459109C4();
    [v22 setDateFormat_];

    v28 = sub_24590C184();
    v29 = [v22 stringFromDate_];

    v30 = sub_245910A04();
    (*(v34 + 8))(v7, v33);
    return v30;
  }

  else
  {
    (*(v21 + 104))(v4, *MEMORY[0x277CFF920], v32);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    v31 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v12 = v36;
    sub_24590C714();
    v13 = v31;
    v14 = sub_24590F344();
    v15 = sub_245910F84();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v31;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_245767000, v14, v15, "Invalid date of birth: %@ returning nil for dateOfBirthString", v16, 0xCu);
      sub_245778F94(v17, &qword_27EE297C0);
      MEMORY[0x245D77B40](v17, -1, -1);
      MEMORY[0x245D77B40](v16, -1, -1);
    }

    else
    {
    }

    (*(v37 + 8))(v12, v38);
    return 0;
  }
}

uint64_t sub_2457DBA40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29848);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2457DD394();
  sub_245911884();
  v8[15] = 0;
  sub_2459116C4();
  if (!v1)
  {
    v8[14] = 1;
    sub_2459116C4();
    v8[13] = 2;
    sub_2459116C4();
    v8[12] = 3;
    sub_2459116C4();
    v8[11] = 4;
    sub_2459116C4();
    v8[10] = 5;
    sub_2459116C4();
    v8[9] = 6;
    sub_2459116C4();
    v8[8] = 7;
    sub_2459116C4();
    v8[7] = 8;
    sub_2459116C4();
    v8[6] = 9;
    sub_2459116C4();
    v8[5] = 10;
    sub_2459116C4();
    v8[4] = 11;
    sub_2459116C4();
    v8[3] = 12;
    sub_2459116C4();
    v8[2] = 13;
    sub_2459116C4();
  }

  return (*(v4 + 8))(v6, v3);
}

double sub_2457DBD60@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2457DCA34(a1, v12);
  if (!v2)
  {
    v5 = v12[11];
    a2[10] = v12[10];
    a2[11] = v5;
    v6 = v12[13];
    a2[12] = v12[12];
    a2[13] = v6;
    v7 = v12[7];
    a2[6] = v12[6];
    a2[7] = v7;
    v8 = v12[9];
    a2[8] = v12[8];
    a2[9] = v8;
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    v10 = v12[5];
    a2[4] = v12[4];
    a2[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a2 = v12[0];
    a2[1] = v11;
  }

  return result;
}

void sub_2457DBDE4()
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = sub_24590EA74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590C144();
  v7 = objc_opt_self();
  v8 = [v7 recordFromData_];

  if (!v8)
  {
    goto LABEL_8;
  }

  v48 = v1;
  v9 = v8;
  if ([v9 tag] != 97)
  {

LABEL_8:
    (*(v3 + 104))(v5, *MEMORY[0x277CFFC48], v2);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    goto LABEL_9;
  }

  v47 = v9;
  v10 = [v9 value];
  v11 = v5;
  v12 = sub_24590C154();
  v14 = v13;

  v15 = sub_24590C144();
  v16 = [v7 recordFromData_];

  sub_24578FC28(v12, v14);
  if (!v16)
  {
LABEL_11:
    (*(v3 + 104))(v11, *MEMORY[0x277CFFC48], v2);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    v23 = v47;

    return;
  }

  v8 = v16;
  if ([v8 tag] != 24351)
  {

    goto LABEL_11;
  }

  v17 = [v8 value];
  v18 = sub_24590C154();
  v20 = v19;

  v21 = v48;
  sub_2457DD450(v18, v20);
  if (v21)
  {
    sub_24578FC28(v18, v20);
    v22 = v47;

LABEL_9:
    return;
  }

  v24 = v47;

  sub_24578FC28(v18, v20);
  sub_24590BF24();
  swift_allocObject();
  sub_24590BF14();
  v25 = objc_opt_self();
  v26 = sub_2459108E4();

  *&v77[0] = 0;
  v27 = [v25 dataWithPropertyList:v26 format:200 options:0 error:v77];

  v28 = *&v77[0];
  if (v27)
  {
    v29 = sub_24590C154();
    v31 = v30;

    sub_2457DD524();
    sub_24590BF04();

    sub_24578FC28(v29, v31);
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v76 = v62;
    v69 = v55;
    v70 = v56;
    v71 = v57;
    v72 = v58;
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v63 = v49;
    v64 = v50;
    nullsub_1(&v63);
    v33 = v0[15];
    v77[10] = v0[14];
    v77[11] = v33;
    v34 = v0[17];
    v77[12] = v0[16];
    v77[13] = v34;
    v35 = v0[11];
    v77[6] = v0[10];
    v77[7] = v35;
    v36 = v0[13];
    v77[8] = v0[12];
    v77[9] = v36;
    v37 = v0[7];
    v77[2] = v0[6];
    v77[3] = v37;
    v38 = v0[9];
    v77[4] = v0[8];
    v77[5] = v38;
    v39 = v0[5];
    v77[0] = v0[4];
    v77[1] = v39;
    v40 = v74;
    v0[14] = v73;
    v0[15] = v40;
    v41 = v76;
    v0[16] = v75;
    v0[17] = v41;
    v42 = v70;
    v0[10] = v69;
    v0[11] = v42;
    v43 = v72;
    v0[12] = v71;
    v0[13] = v43;
    v44 = v66;
    v0[6] = v65;
    v0[7] = v44;
    v45 = v68;
    v0[8] = v67;
    v0[9] = v45;
    v46 = v64;
    v0[4] = v63;
    v0[5] = v46;
    sub_245778F94(v77, &qword_27EE29860);
  }

  else
  {
    v32 = v28;
    sub_24590BFA4();

    swift_willThrow();
  }
}

unint64_t sub_2457DC458(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_24590EA74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245910A44();
  MEMORY[0x28223BE20](v10 - 8);
  result = *a1;
  if (result > 0xB)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_245918200[result];
  }

  v13 = *a2;
  v14 = __OFADD__(*a2, v12);
  v15 = *a2 + v12;
  if (v14)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a3 + 16) < v15)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CFFC48], v6);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    return swift_willThrow();
  }

  if (v15 < v13)
  {
    goto LABEL_14;
  }

  if (v13 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = (2 * v15) | 1;
  *a2 = v15;
  v17 = sub_2457DACEC(result);
  v19 = v18;
  v23 = a3;
  v24 = a3 + 32;
  v25 = v13;
  v26 = v16;

  sub_245910A34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29868);
  sub_245778BD8(&qword_27EE29870, &qword_27EE29868);
  v20 = sub_245910A14();
  if (v21)
  {
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v25 = 0;
  }

  v23 = v20;
  v24 = v21;
  v26 = v22;
  sub_2457A06A8(&v23, v17, v19);
}

uint64_t sub_2457DC760()
{

  sub_24578FC28(*(v0 + 32), *(v0 + 40));

  v1 = *(v0 + 240);
  v9[10] = *(v0 + 224);
  v9[11] = v1;
  v2 = *(v0 + 272);
  v9[12] = *(v0 + 256);
  v9[13] = v2;
  v3 = *(v0 + 176);
  v9[6] = *(v0 + 160);
  v9[7] = v3;
  v4 = *(v0 + 208);
  v9[8] = *(v0 + 192);
  v9[9] = v4;
  v5 = *(v0 + 112);
  v9[2] = *(v0 + 96);
  v9[3] = v5;
  v6 = *(v0 + 144);
  v9[4] = *(v0 + 128);
  v9[5] = v6;
  v7 = *(v0 + 80);
  v9[0] = *(v0 + 64);
  v9[1] = v7;
  sub_245778F94(v9, &qword_27EE29860);
  return swift_deallocClassInstance();
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_2457DC854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_2457DC89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2457DC924()
{
  v1 = *(*v0 + 32);
  sub_24578FB80(v1, *(*v0 + 40));
  return v1;
}

uint64_t sub_2457DC95C()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_2457DC990()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_2457DC9E8()
{
  v0 = sub_245911644();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2457DCA34@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29838);
  v5 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v7 = &v42 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2457DD394();
  sub_245911874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v68 = a2;
  LOBYTE(v84[0]) = 0;
  v8 = sub_245911684();
  v67 = v9;
  LOBYTE(v84[0]) = 1;
  v10 = sub_245911684();
  v66 = v11;
  v57 = v10;
  LOBYTE(v84[0]) = 2;
  v12 = sub_245911684();
  v65 = a1;
  v56 = v12;
  v64 = v13;
  LOBYTE(v84[0]) = 3;
  v55 = sub_245911684();
  v63 = v14;
  LOBYTE(v84[0]) = 4;
  v54 = sub_245911684();
  v62 = v15;
  LOBYTE(v84[0]) = 5;
  v53 = sub_245911684();
  v61 = v16;
  LOBYTE(v84[0]) = 6;
  v52 = sub_245911684();
  v60 = v17;
  LOBYTE(v84[0]) = 7;
  v51 = sub_245911684();
  v59 = v18;
  LOBYTE(v84[0]) = 8;
  v50 = sub_245911684();
  v58 = v19;
  LOBYTE(v84[0]) = 9;
  v20 = sub_245911684();
  v65 = v21;
  v22 = v20;
  LOBYTE(v84[0]) = 10;
  *&v49 = sub_245911684();
  *(&v49 + 1) = v23;
  LOBYTE(v84[0]) = 11;
  v46 = sub_245911684();
  v48 = v24;
  LOBYTE(v84[0]) = 12;
  v45 = sub_245911684();
  v47 = v25;
  v85 = 13;
  v26 = sub_245911684();
  v43 = v27;
  v44 = v26;
  (*(v5 + 8))(v7, v69);
  v28 = v67;
  *&v70 = v8;
  *(&v70 + 1) = v67;
  v29 = v57;
  *&v71 = v57;
  *(&v71 + 1) = v66;
  v30 = v64;
  *&v72 = v56;
  *(&v72 + 1) = v64;
  v31 = v62;
  *&v73 = v55;
  *(&v73 + 1) = v63;
  *&v74 = v54;
  *(&v74 + 1) = v62;
  *&v75 = v53;
  *(&v75 + 1) = v61;
  *&v76 = v52;
  *(&v76 + 1) = v60;
  *&v77 = v51;
  *(&v77 + 1) = v59;
  *&v78 = v50;
  *(&v78 + 1) = v58;
  v42 = v22;
  *&v79 = v22;
  *(&v79 + 1) = v65;
  v32 = *(&v49 + 1);
  v80 = v49;
  *&v81 = v46;
  *(&v81 + 1) = v48;
  *&v82 = v45;
  *(&v82 + 1) = v47;
  *&v83 = v44;
  *(&v83 + 1) = v43;
  sub_2457DD3E8(&v70, v84);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v84[0] = v8;
  v84[1] = v28;
  v84[2] = v29;
  v84[3] = v66;
  v84[4] = v56;
  v84[5] = v30;
  v84[6] = v55;
  v84[7] = v63;
  v84[8] = v54;
  v84[9] = v31;
  v84[10] = v53;
  v84[11] = v61;
  v84[12] = v52;
  v84[13] = v60;
  v84[14] = v51;
  v84[15] = v59;
  v84[16] = v50;
  v84[17] = v58;
  v84[18] = v42;
  v84[19] = v65;
  v84[20] = v49;
  v84[21] = v32;
  v84[22] = v46;
  v84[23] = v48;
  v84[24] = v45;
  v84[25] = v47;
  v84[26] = v44;
  v84[27] = v43;
  result = sub_2457DD420(v84);
  v34 = v81;
  v35 = v68;
  v68[10] = v80;
  v35[11] = v34;
  v36 = v83;
  v35[12] = v82;
  v35[13] = v36;
  v37 = v77;
  v35[6] = v76;
  v35[7] = v37;
  v38 = v79;
  v35[8] = v78;
  v35[9] = v38;
  v39 = v73;
  v35[2] = v72;
  v35[3] = v39;
  v40 = v75;
  v35[4] = v74;
  v35[5] = v40;
  v41 = v71;
  *v35 = v70;
  v35[1] = v41;
  return result;
}

unint64_t sub_2457DD394()
{
  result = qword_27EE29840;
  if (!qword_27EE29840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29840);
  }

  return result;
}

uint64_t sub_2457DD450(uint64_t a1, unint64_t a2)
{
  v10 = sub_2458B8B4C(MEMORY[0x277D84F90]);
  sub_24578FB80(a1, a2);
  v5 = sub_2457E085C(a1, a2);
  v6 = 0;
  v9 = 0;
  while (1)
  {
    v8 = byte_285882C48[v6 + 32];
    sub_2457DC458(&v8, &v9, v5);
    if (v2)
    {
      break;
    }

    if (++v6 == 14)
    {

      return v10;
    }
  }
}

unint64_t sub_2457DD524()
{
  result = qword_27EE29858;
  if (!qword_27EE29858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DG1Data.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DG1Data.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2457DD710()
{
  result = qword_27EE29888;
  if (!qword_27EE29888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29888);
  }

  return result;
}

unint64_t sub_2457DD768()
{
  result = qword_27EE29890;
  if (!qword_27EE29890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29890);
  }

  return result;
}

unint64_t sub_2457DD7C0()
{
  result = qword_27EE29898;
  if (!qword_27EE29898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29898);
  }

  return result;
}

uint64_t sub_2457DD814(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE298B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2457DFD28();
  sub_245911884();
  v11 = a2;
  v12 = a3;
  sub_24578FB80(a2, a3);
  sub_2457DFDD0();
  sub_2459116D4();
  sub_24578FC28(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2457DD97C()
{
  sub_245911824();
  MEMORY[0x245D76E70](0);
  return sub_245911864();
}

uint64_t sub_2457DD9E8()
{
  sub_245911824();
  MEMORY[0x245D76E70](0);
  return sub_245911864();
}

uint64_t sub_2457DDA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_245911714();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2457DDAD4(uint64_t a1)
{
  v2 = sub_2457DFD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2457DDB10(uint64_t a1)
{
  v2 = sub_2457DFD28();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2457DDB4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2457DFBB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2457DDB94(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_2457DDBF0()
{
  v97 = *MEMORY[0x277D85DE8];
  v94 = sub_24590EA74();
  v0 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v2 = v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C144();
  v8 = objc_opt_self();
  v9 = [v8 recordFromData_];

  if (!v9)
  {
    goto LABEL_17;
  }

  v89 = v4;
  v90 = v6;
  v10 = v9;
  if ([v10 tag] != 117)
  {

LABEL_17:
    (v0)[13](v2, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    return;
  }

  v91 = v2;
  v11 = [v10 value];
  v12 = sub_24590C154();
  v14 = v13;

  v15 = sub_24590C144();
  v16 = [v8 recordFromData_];

  sub_24578FC28(v12, v14);
  if (!v16)
  {
    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
LABEL_19:

    goto LABEL_20;
  }

  sub_24579D5E0(0, &qword_27EE298C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [v16 &selRef_dequeueReusableCellWithIdentifier_forIndexPath_];
  v19 = sub_24590C154();
  v21 = v20;

  v22 = sub_24590C144();
  sub_24578FC28(v19, v21);
  v86 = ObjCClassFromMetadata;
  v23 = [ObjCClassFromMetadata sequenceOfRecordsFromData_];

  if (!v23)
  {
    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    return;
  }

  v24 = sub_24579D5E0(0, &qword_27EE298D0);
  v25 = sub_245910C44();

  v87 = v10;
  v88 = v16;
  v85[0] = v3;
  v85[1] = v24;
  if (v25 >> 62)
  {
    v26 = sub_245911424();
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_64:

    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    v81 = v87;

    return;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_64;
  }

LABEL_7:
  v27 = 0;
  v28 = (v25 & 0xC000000000000001);
  v29 = v25 & 0xFFFFFFFFFFFFFF8;
  v10 = 32608;
  while (1)
  {
    if (v28)
    {
      v30 = MEMORY[0x245D76B30](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v30 = *(v25 + 8 * v27 + 32);
    }

    v31 = v30;
    ObjCClassFromMetadata = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if ([v30 tag] == 32608)
    {
      break;
    }

    ++v27;
    if (ObjCClassFromMetadata == v26)
    {
      goto LABEL_64;
    }
  }

  v10 = v31;
  v32 = [v10 value];
  v33 = sub_24590C154();
  v35 = v34;

  v36 = sub_24590C144();
  sub_24578FC28(v33, v35);
  v37 = [v86 sequenceOfRecordsFromData_];

  if (!v37)
  {
    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    v41 = v87;

    goto LABEL_19;
  }

  v86 = v10;
  v38 = sub_245910C44();

  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_25;
    }

LABEL_68:

    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    v83 = v87;

    v84 = v86;
    return;
  }

  v39 = sub_245911424();
  if (!v39)
  {
    goto LABEL_68;
  }

LABEL_25:
  v26 = 0;
  v28 = (v38 & 0xFFFFFFFFFFFFFF8);
  while (2)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x245D76B30](v26, v38);
    }

    else
    {
      if (v26 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v40 = *(v38 + 8 * v26 + 32);
    }

    ObjCClassFromMetadata = v40;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v94 = v29;
      sub_24578FC28(v39, v38);
      v75 = *(v92 + 64);
      v76 = *(v92 + 72);
      *(v92 + 64) = v96;
      sub_245771C44(v75, v76);
      sub_24590C714();
      v77 = sub_24590F344();
      v78 = sub_245910F84();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_245767000, v77, v78, "Successfully parsed DG2", v79, 2u);
        MEMORY[0x245D77B40](v79, -1, -1);

        sub_245771C44(v26, v10);
        v80 = v87;
      }

      else
      {

        v82 = v87;
        sub_245771C44(v26, v10);
      }

      (*(v89 + 8))(v90, v85[0]);
      return;
    }

    v10 = &selRef_userInfo;
    if ([v40 tag] != 24366 && objc_msgSend(ObjCClassFromMetadata, sel_tag) != 32558)
    {

      ++v26;
      if (v29 == v39)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  v42 = v86;

  v43 = [ObjCClassFromMetadata value];
  v44 = sub_24590C154();
  v46 = v45;

  v47 = sub_2457E085C(v44, v46);
  v48 = *(v47 + 16);
  if (v48 < 0xF)
  {

    v10 = v87;

    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    v57 = ObjCClassFromMetadata;
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    goto LABEL_42;
  }

  v49 = v91;
  if (v48 < 0x23)
  {
LABEL_43:

    v58 = v87;

    (v0)[13](v49, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    return;
  }

  v50 = v47;
  sub_2458277D0(v47, v47 + 32, 14, 0x45uLL);
  if (*(v51 + 16) < 6uLL)
  {
    __break(1u);
  }

  sub_2458277D0(v51, v51 + 32, 4, 0xDuLL);
  v53 = v52;

  v54 = sub_2457E010C(v53);
  v56 = v55;

  if (v56)
  {

    v10 = v87;

    (v0)[13](v91, *MEMORY[0x277CFFC48], v94);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    v57 = ObjCClassFromMetadata;
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

LABEL_42:
    goto LABEL_20;
  }

  v49 = v91;
  if ((v54 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_71;
  }

  v59 = 8 * v54 + 34;
  if (__OFADD__(8 * v54, 34))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (__OFADD__(v59, 12))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (8 * v54 + 46 >= v48)
  {
    goto LABEL_43;
  }

  v60 = *(v50 + 16);
  v28 = v88;
  if (v60 < v59)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v59 < 0)
  {
LABEL_74:
    __break(1u);
    return;
  }

  sub_2458277D0(v50, v50 + 32, v59, (2 * v60) | 1);
  v62 = v61;

  v26 = sub_2457DFE24(v62);
  v10 = v63;

  if (v10 >> 60 != 15)
  {
LABEL_55:
    v0 = ObjCClassFromMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE298D8);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7461446567616D69;
    *(inited + 16) = xmmword_245916930;
    *(inited + 40) = 0xE900000000000061;
    *(inited + 48) = v26;
    *(inited + 56) = v10;
    sub_24578FB80(v26, v10);
    sub_2458B849C(inited);
    swift_setDeallocating();
    sub_2457E05B8(inited + 32);
    sub_24590BF24();
    swift_allocObject();
    v65 = sub_24590BF14();
    v66 = objc_opt_self();
    v67 = sub_2459108E4();

    v95 = 0;
    v68 = [v66 dataWithPropertyList:v67 format:200 options:0 error:&v95];

    v69 = v95;
    if (!v68)
    {
      v73 = v69;
      v74 = v87;

      sub_24590BFA4();
      swift_willThrow();

      sub_245771C44(v26, v10);

      return;
    }

    v39 = sub_24590C154();
    v38 = v70;

    sub_2457E0620();
    v29 = v65;
    v71 = v93;
    sub_24590BF04();
    if (v71)
    {

      v72 = v87;
      sub_245771C44(v26, v10);

      sub_24578FC28(v39, v38);
      return;
    }

    goto LABEL_61;
  }

  v10 = v87;

  (v0)[13](v49, *MEMORY[0x277CFFB50], v94);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

LABEL_20:
}

uint64_t sub_2457DEFFC()
{
  sub_24578FC28(*(v0 + 16), *(v0 + 24));

  sub_245771C44(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2457DF08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2457DF0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2457DF13C()
{
  *(v0 + 16) = sub_2458494E0(&unk_285882CF8);
  *(v0 + 24) = v1;
  *(v0 + 32) = 50;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 3295044;
  *(v0 + 56) = 0xE300000000000000;
  *(v0 + 64) = xmmword_2459169A0;
  *(v0 + 80) = xmmword_245918260;
  *(v0 + 96) = xmmword_245918270;
  return v0;
}

uint64_t sub_2457DF1A0()
{
  v1 = *(*v0 + 16);
  sub_24578FB80(v1, *(*v0 + 24));
  return v1;
}

uint64_t sub_2457DF1D8()
{
  v1 = *(*v0 + 32);

  return v1;
}

unsigned __int8 *sub_2457DF230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_245910BD4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2457DF7BC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_245911534();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}